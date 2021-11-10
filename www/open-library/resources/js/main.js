"use strict";

const { initial } = require("lodash");

(function (window, document, $) {
    $().ready(function () {
        initialize();
        attachEvents();
    });


    function initialize() {
        /*
        * Initialize tooltip
        */
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        });

        /**
         * Init datatables
         */
        $('table').DataTable({
            "language": {
                "paginate": {
                    "previous": "<",
                    "next": ">"
                }
            }
        });
        $('.dataTables_length').addClass('bs-select');

        /**
         * initializa datepicker
         */
        $('#yearDatepicker').datepicker({
            format: "yyyy",
            viewMode: "years",
            minViewMode: "years",
            autoclose: true //to close picker once year is selected
        });

        /*
        Initialize chosen library
        */
        $('.chosen-select').chosen();
    }

    function attachNewEntryButton(entityName, chosenParams) {
        /**
         * Get the user input to set as default input
         */
        let inputValue = chosenParams.search_container.find('input').val();
        inputValue = _.upperFirst(inputValue);

        let newEntryButton = `<div class="new-entry-wrapper"><button data-toggle="modal" data-target="#newEntryModal" class="new-entry-button btn btn-success btn-sm" type="button" data-entity-name="${entityName}"} data-input-value="${inputValue}"}>Add ${entityName}</button></div>`
        $(".no-results").append(newEntryButton);

        /**
         * Set the input value
         */
        let inputFields = $("#" + entityName + "-form").find("input[type='text']");
        $(inputFields[0]).val(inputValue);

        $("#" + entityName + "-form").show();
    }

    function attachEvents() {
        $('.authors-select').on('chosen:no_results', function (ev, params) {
            attachNewEntryButton('author', params.chosen);
        });

        $('.categories-select').on('chosen:no_results', function (ev, params) {
            attachNewEntryButton('category', params.chosen);
        });

        $("body").on('click', '.new-entry-button', function () {
            const formName = $(this).data('entity_name');
            $("#newEntryModal .modal-title").html('Create ' + formName);
        });

        $(".new-entry-form-wrapper form").on('submit', newEntryFromSubmit);

        $(".btn-form-submit").on('click', function (ev) {
            if (window.confirm("Are you sure of deleting this element?")) {
                $(this).parents("form").submit();
            }
        });

        /**
         * Hide the forms when modal is dismissed.
         */
        $('#newEntryModal').on('hidden.bs.modal', function (e) {
            $(".new-entry-form-wrapper").hide();
        })
    }

    function newEntryFromSubmit(ev) {
        const that = this;
        //Prevent the form to be submitted normally
        ev.preventDefault();

        //Get the form action to perform the same one over the rest API
        const url = $(this).prop('action');

        //Get the entity name
        let entityName = _.last(url.split('/'));
        entityName = Pluralize(entityName);

        //Serialize the form data
        let serializedFormData = $(this).serialize();

        //Generate ajax call object
        let ajaxObject = {
            type: 'POST',
            data: serializedFormData,
            dataType: 'json',
            url: '/api/' + entityName,
            success: function (response) {
                createNewSelectOption(response, entityName);
            },
            error: ajaxError
        };
        //Send the request
        $.ajax(ajaxObject);
    }

    /**
     * Generates the returned select option that has been created
     * @param {*} response
     */
    function createNewSelectOption(response, entityName) {
        const optionData = response.data;
        let value = '';

        //Set the option value depending on its type.
        switch (entityName) {
            case 'authors':
                value = optionData.first_name + ' ' + optionData.last_name;
                break;
            case 'categories':
                value = optionData.name;
                break;
        }

        //Create the new option, append to the select and trigger the update method
        let option = `<option value="${optionData.id}" selected >${value}</option>`
        $("." + entityName + "-select").append(option).trigger('chosen:updated');

        //Hide the modal
        $("#newEntryModal").modal('hide');

        //Finally reset the form
        $(".new-entry-form-wrapper form").trigger("reset");
    }

    function ajaxError(jqXHR, textStatus) {
        alert("Error inserting new element");
        console.error('Error' + textStatus);
    }
})(window, document, jQuery)
