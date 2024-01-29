//= require jquery-3.5.1.js
//= require jquery.dataTables.min.js
//= require dataTables.bootstrap4.min.js
//= require bootstrap.bundle.js
//= require_self
let Test2 = (function () {
    function init(initParams) {
        $('#example').DataTable(initParams);
    }

    return {
        init: init
    }
})();