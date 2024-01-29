//= require jquery-3.5.1
//= require jquery.dataTables.min
//= require_self

let Test5 = (function (){
    function init(params) {
        $('#example').DataTable({
//            ajax: 'https://datatables.net/examples/server_side/scripts/server_processing.php',
            ajax: '/test5/getData',
            processing: true,
            serverSide: true
        });
    }
    return {
        init: init
    }
})();