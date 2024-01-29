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
</head>

<body>
<h1>Show City</h1>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <form>
                <div class="form-group">
                    <label for="name">Name</span></label>
                    <input type="text" class="form-control" id="name" aria-describedby="" placeholder=""
                           value="${city?.name}">
                </div>

                <div class="form-group">
                    <label for="">Country</label>
                    <input type="text" class="form-control" id="country" aria-describedby="" placeholder=""
                           value="${city?.country}">
                </div>

                <div class="form-group">
                    <label for="">Population</label>
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
</body>
</html>