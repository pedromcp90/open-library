"use strict";
(function (window, document, $) {
    $().ready(function () {
        /*
        Initialize chosen library
        */
        $('.chosen-select').chosen();

        $('.authors-select').on('chosen:no_results', function () {
            attachNewEntryButton('author');

        });
        $('.categories-select').on('chosen:no_results', function () {
            attachNewEntryButton('category');
        });
        $("body").on('click', '.new-entry-button', function () {
            const formName = $(this).data('table');
            $("#newEntryModal .modal-title").html('Create ' + formName);
        });
        $(".new-entry-form-wrapper form").on('submit', function (ev) {
            ev.preventDefault();
            //make an ajax request to insert the new entry
            const url = $(this).prop('action');
            let table = _.last(url.split('/'));
            table = Pluralize(table);
            let ajaxObject = {
                type: 'POST',
                data: $(this).serialize(),
                dataType: 'json',
                url: '/api/' + table,
                success: function (data) {
                    console.log(data);
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

    function attachNewEntryButton(table) {
        let btn = `<div class="new-entry-wrapper"><button data-toggle="modal" data-target="#newEntryModal" class="new-entry-button btn btn-success btn-sm" type="button" data-table="${table}"}>Add ${table}</button></div>`
        $(".no-results").append(btn);
        $("#" + table + "-form").show();
    }
})(window, document, jQuery)
