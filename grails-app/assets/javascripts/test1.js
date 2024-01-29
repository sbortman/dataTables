//= require jquery-3.5.1.js
//= require jquery.dataTables.min.js
//= require bootstrap.min.js
//= require_self

let Test1 = (function () {
    function init(params) {
        new DataTable('#example');
    }

    return {
        init: init
    }
})();