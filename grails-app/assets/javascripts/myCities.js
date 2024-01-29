//= require jquery-3.5.1.min.js
//= require bootstrap.bundle.min.js
//= require jquery.dataTables.min.js
//= require dataTables.bootstrap4.min.js
//= require_self

let MyCities = (function () {
    let button='<button class="close" type="button" title="Remove this page">×</button>';
    let tabID = 1;
    function resetTab(){
        let tabs=$("#tab-list li:not(:first)");
        let len=1
        $(tabs).each(function(k,v){
            len++;
            $(this).find('a').html('Tab ' + len + button);
        })
        tabID--;
    }

    $('#tab-list').on('click', '.close', function() {
        let tabID = $(this).parents('a').attr('href');
        $(this).parents('li').remove();
        $(tabID).remove();

        //display first tab
        let tabFirst = $('#tab-list a:first');
        resetTab();
        tabFirst.tab('show');
    });

    let editHandler = function() {
        let t = $(this);
        t.css("visibility", "hidden");
        $(this).prev().attr("contenteditable", "true").focusout(function() {
            $(this).removeAttr("contenteditable").off("focusout");
            t.css("visibility", "visible");
        });
    };

    $(".edit").click(editHandler);

    function init(params) {
        params.ajax.data = customParams;
        params.columns[0].render = function (data, type, row, meta) {
            return meta.row + meta.settings._iDisplayStart + 1;
        };

        let table = $('#example').DataTable(params);

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

        $('#example tbody').on('dblclick', 'tr', function () {
            let data = table.row( this ).data();

            tabID++;

            let navItem = `
                <li class="nav-item active">
                    <a href="#tab${tabID}" role="tab" class="nav-link"  data-toggle="tab">
                        <span>Tab ${tabID}</span>
                        <span class="glyphicon glyphicon-pencil text-muted edit"></span>
                        <button class="close  closeTab" type="button" title="Remove this page">×</button>
                    </a>
                </li>`;

            $('#tab-list').append($(navItem));

            let tabContent = `
                <div class="tab-pane fade" id="tab${tabID}">Tab ${tabID} content</div>
            `;

            $('#tab-content').append($(tabContent));

            let url = `/myCities/getDetailedData/${data.id}`;

            $(`#tab${tabID}`).load(url, function (result) {
                $(`#tab${tabID}`).tab('show');
            });

            $(".edit").click(editHandler);
            $("#tab-list a:last").tab('show');
        } );

        $("#tab-list a:last").tab('show');
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