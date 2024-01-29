<%--
  Created by IntelliJ IDEA.
  User: sbortman
  Date: 1/25/24
  Time: 7:02 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Test 5</title>
    <asset:stylesheet src="test5.css"/>
</head>
<table id="example" class="display" style="width:100%">
    <thead>
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Position</th>
        <th>Office</th>
        <th>Start date</th>
        <th>Salary</th>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Position</th>
        <th>Office</th>
        <th>Start date</th>
        <th>Salary</th>
    </tr>
    </tfoot>
</table>

<body>
<asset:javascript src="test5.js"/>
<asset:script>
    $(document).ready(function() {
        Test5.init();
    } );
</asset:script>
<asset:deferredScripts/>
</body>
</html>