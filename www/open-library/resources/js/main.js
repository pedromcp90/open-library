"use strict";
(function (window, document, $) {
    $().ready(function () {
        /*
        Initialize select2 library
        */
        $('select.select2').select2();
        alert("initialize select2");
    });
})(window, document, jQuery)

