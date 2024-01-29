<%--
  Created by IntelliJ IDEA.
  User: scottbortman
  Date: 1/29/24
  Time: 1:22 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Accordian Test</title>
    <asset:stylesheet src="accordian.css"/>
%{--    <link href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" rel="stylesheet">--}%
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <div id="accordion" class="myaccordion">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="d-flex align-items-center justify-content-between btn btn-link collapsed"
                                    data-toggle="collapse" data-target="#collapseOne" aria-expanded="false"
                                    aria-controls="collapseOne">
                                Undergraduate Studies
                                <span class="fa-stack fa-sm">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
                                </span>
                            </button>
                        </h2>
                    </div>

                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne">
                        <div class="card-body">
                            <ul>
                                <li>Computer Science</li>
                                <li>Economics</li>
                                <li>Sociology</li>
                                <li>Nursing</li>
                                <li>English</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="d-flex align-items-center justify-content-between btn btn-link collapsed"
                                    data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false"
                                    aria-controls="collapseTwo">
                                Postgraduate Studies
                                <span class="fa-stack fa-2x">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
                                </span>
                            </button>
                        </h2>
                    </div>

                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo">
                        <div class="card-body">
                            <ul>
                                <li>Informatics</li>
                                <li>Mathematics</li>
                                <li>Greek</li>
                                <li>Biostatistics</li>
                                <li>English</li>
                                <li>Nursing</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                            <button class="d-flex align-items-center justify-content-between btn btn-link collapsed"
                                    data-toggle="collapse" data-target="#collapseThree" aria-expanded="false"
                                    aria-controls="collapseThree">
                                Research
                                <span class="fa-stack fa-2x">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
                                </span>
                            </button>
                        </h2>
                    </div>

                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree">
                        <div class="card-body">
                            <ul>
                                <li>Astrophysics</li>
                                <li>Informatics</li>
                                <li>Criminology</li>
                                <li>Economics</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<asset:javascript src="accordian.js"/>
<asset:script>

</asset:script>
<asset:deferredScripts/>
</body>
</html>