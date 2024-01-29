//= require jquery-3.5.1.min.js
//= require bootstrap.bundle.min.js
//= require jquery.dataTables.min.js
//= require dataTables.bootstrap4.min.js
//= require_self

let MyCities = (function () {
    function init(params) {
        params.ajax.data = customParams;
        params.columns[0].render = function (data, type, row, meta) {
            return meta.row + meta.settings._iDisplayStart + 1;
        };

        let table = $('#example').DataTable(params);

        // table.on('order.dt search.dt', function () {
        //     let i = 1;
        //
        //     table.cells(null, 0, { search: 'applied', order: 'applied' })
        //         .every(function (cell) {
        //             this.data(i++);
        //         });
        // }).draw();

        $('#name').blur(function() {
            table.draw();
        });

        $('#country').blur(function() {
            table.draw();
        });

        $( "#capital" ).on( "change", function() {
            table.draw();
        } );

        $("#filter-form").submit(function(e){
            e.preventDefault();
            table.draw();
        });
    }

    function customParams(d) {
        d.name = $('#name').val();
        d.country = $('#country').val();
        d.population = $('#population').val();
        d.capital = $('#capital').is(':checked');
    }

    return {
        init: init
    };
})();