"use strict";
(function (window, document, $) {
    $().ready(function () {
        /*
        Initialize chosen library
        */
        $('.chosen-select').chosen();

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
        $(".new-entry-form-wrapper form").on('submit', function (ev) {
            ev.preventDefault();
            //make an ajax request to insert the new entry
            const url = $(this).prop('action');
            let entityName = _.last(url.split('/'));
            entityName = Pluralize(entityName);
            let ajaxObject = {
                type: 'POST',
                data: $(this).serialize(),
                dataType: 'json',
                url: '/api/' + entityName,
                success: function (response) {
                    createNewOption(response.data, entityName);
                },
                error: function (jqXHR, textStatus) {

                }
            };

            $.ajax(ajaxObject);
        })
    });

    /**
     * Hide the forms when modal is dismissed.
     */
    $('#newEntryModal').on('hidden.bs.modal', function (e) {
        $(".new-entry-form-wrapper").hide();
    })

    function attachNewEntryButton(entityName, chosenParams) {
        /**
         * Get the user input to set as default input
         */
        let inputValue = chosenParams.search_container.find('input').val();
        inputValue = _.upperFirst(inputValue);

        let newEntryButton = `<div class="new-entry-wrapper"><button data-toggle="modal" data-target="#newEntryModal" class="new-entry-button btn btn-success btn-sm" type="button" data-entity-name="${entityName}"} data-input-value="${inputValue}"}>Add ${entityName}</button></div>`
        $(".no-results").append(newEntryButton);

        chosen-search-input
        /**
         * Set the input value
         */
        let inputFields = $("#" + entityName + "-form").find("input[type='text']");
        $(inputFields[0]).val(inputValue);


        $("#" + entityName + "-form").show();
    }

    function createNewOption(optionData, entityName) {
        let value = '';
        /**
         * Set the option value depending on its type.
         */
        switch (entityName) {
            case 'authors':
                value = optionData.first_name + ' ' + optionData.last_name;
                break;
            case 'categories':
                value = optionData.name;
                break;
        }

        /**
         * Create the new option, append to the select and trigger the update method
         */
        let option = `<option value="${optionData.id}" selected >${value}</option>`
        $("." + entityName + "-select").append(option).trigger('chosen:updated');
        /**
         * Hide the modal
         */
        $("#newEntryModal").modal('hide');
        /**
         * Finally reset the form
         */
        $(".new-entry-form-wrapper form").trigger("reset");
    }
})(window, document, jQuery)
