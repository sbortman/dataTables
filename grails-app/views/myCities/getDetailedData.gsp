<%--
  Created by IntelliJ IDEA.
  User: scottbortman
  Date: 1/29/24
  Time: 11:38 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Details</title>
    <asset:stylesheet src="detailsView.css"/>
</head>

<body>
<h1>Show Details:</h1>

<div id="myForm" class="container-fluid">
    <div class="row">
        <div class="col">
            <form>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" aria-describedby="" placeholder=""
                           value="${city?.name}">
                </div>

                <div class="form-group">
                    <label for="country">Country</label>
                    <input type="text" class="form-control" id="country" aria-describedby="" placeholder=""
                           value="${city?.country}">
                </div>

                <div class="form-group">
                    <label for="population">Population</label>
                    <input type="text" class="form-control" id="population" aria-describedby="" placeholder=""
                           value="${city.population}">
                </div>

                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="capital" <%=( city.capital ) ? 'checked' : ''%>>
                    <label class="form-check-label" for="capital">Capital</label>
                </div>

                <div class="form-group">
                    <label for="longitude">Longitude</label>
                    <input type="text" class="form-control" id="longitude" aria-describedby="" placeholder=""
                           value="${city.longitude}">
                </div>

                <div class="form-group">
                    <label for="latitude">Latitude</label>
                    <input type="text" class="form-control" id="latitude" aria-describedby="" placeholder=""
                           value="${city.latitude}">
                </div>
            </form>
        </div>
    </div>
</div>
<div id="myImage" class="container-fluid">
    <div class="col">
        <div id="sat-image" class="card">
            <asset:image  class="card-img-top" src="satellite-67718_1280.jpg" alt="Card image cap"/>

            <div class="card-body">
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
        </div>
    </div>
</div>

<asset:javascript src="detailsView.js"/>
<asset:script>
    $(document).ready(function() {
        DetailsView.init();
     } );
</asset:script>
<asset:deferredScripts/>
</body>
</html>