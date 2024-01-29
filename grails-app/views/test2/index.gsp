<%--
  Created by IntelliJ IDEA.
  User: sbortman
  Date: 1/24/24
  Time: 6:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Test 2</title>
    <asset:stylesheet src="test2.css"/>
</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col">
            <table id="example" class="table table-striped table-bordered" style="width:100%">
        </div>
    </div>
</div>
<asset:javascript src="test2.js"/>
<asset:script>
    $(document).ready(function(){
        var initParams = ${raw( initParams?.encodeAsJSON()?.toString() )};
        Test2.init(initParams);
    } );
</asset:script>
<asset:deferredScripts/>
</body>
</html>