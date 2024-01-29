<%--
  Created by IntelliJ IDEA.
  User: sbortman
  Date: 1/24/24
  Time: 6:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Test 3</title>
    <asset:stylesheet src="test3.css"/>
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <div class="container-fluid">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
            </div>
        </div>
    </div>

</div>

<asset:javascript src="test3.js"/>
<asset:script>
    $(document).ready(function(){
        var initParams = ${raw( initParams?.encodeAsJSON()?.toString() )};
        Test3.init(initParams);
    } );
</asset:script>
<asset:deferredScripts/>
</body>
</html>