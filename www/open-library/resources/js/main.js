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
        $("body").on('click', '.new-entry-button', function(){
            const formName = $(this).data('table');
            $("#newEntryModal .modal-title").html('Create ' + formName);
        });
        $(".new-entry-form-wrapper form").on('submit', function(ev){
            ev.preventDefault();
            alert("AAA");
        })
    });

    function attachNewEntryButton(table) {
        let btn = `<div class="new-entry-wrapper"><button data-toggle="modal" data-target="#newEntryModal" class="new-entry-button btn btn-success btn-sm" type="button" data-table="${table}"}>Add ${table}</button></div>`
        $(".no-results").append(btn);
        $("#"+table+"-form").show();
    }
})(window, document, jQuery)
