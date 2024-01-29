<%--
  Created by IntelliJ IDEA.
  User: sbortman
  Date: 1/28/24
  Time: 1:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My Cities</title>
    <asset:stylesheet src="myCities.css"/>
</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <form id="filter-form">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" aria-describedby="" placeholder="">
                </div>

                <div class="form-group">
                    <label for="country">Country</label>
                    <input type="text" class="form-control" id="country" aria-describedby="" placeholder="">
                </div>

                <div class="form-group">
                    <label for="population">Population</label>
                    <input type="text" class="form-control" id="population" aria-describedby="" placeholder="">
                </div>

                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="capital">
                    <label class="form-check-label" for="capital">Capital</label>
                </div>
                <button type="submit" class="btn btn-primary">Apply Filter</button>

            </form>
        </div>


        <div class="col-md-9">
%{--            <p>--}%
%{--                <button id="btn-add-tab" type="button" class="btn btn-primary pull-right">Add Tab</button>--}%
%{--            </p>--}%
            <!-- Nav tabs -->
            <ul id="tab-list" class="nav nav-tabs" role="tablist">
                <li class="nav-item active">
                    <a href="#tab1" class="nav-link" role="tab" data-toggle="tab">
                        <span>Results</span>
                        <span class="glyphicon glyphicon-pencil text-muted edit"></span>
                    </a>
                </li>
            </ul>

            <!-- Tab panes -->
            <div id="tab-content" class="tab-content">
                <div class="tab-pane fade in active" id="tab1">
                    <table id="example" class="table table-striped table-bordered table-hover"
                           style="width:100%">
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<asset:javascript src="myCities.js"/>
<asset:script>
    $(document).ready(function() {
        let params = <%=raw( tableParams?.encodeAsJSON() as String )%>;
        MyCities.init(params);
    } );
</asset:script>
<asset:deferredScripts/>
</body>
</html>