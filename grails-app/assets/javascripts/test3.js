//= require jquery-3.5.1.js
//= require bootstrap.bundle.js
//= require jquery.dataTables.min.js
//= require dataTables.bootstrap4.min.js
//= require_self

let Test3 = (function () {
    function init(initParams) {
        $('#example').DataTable(initParams);
    }

    return {
        init: init
    }
})();