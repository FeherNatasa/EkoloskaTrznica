
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html; charset=UTF-8" %>


<html>
<head>
    <title>Domov</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/Boot.css" type="text/css" />

    <link href='https://www.fonts.com/font/exljbris/museo-slab?QueryFontType=Web&src=GoogleWebFonts' rel='stylesheet' type='text/css'>
    <style> </style>
</head>
<body>

<nav class="container header">
    <div class="container-fluid text-center">
	<span class="align-text-top spanheader">
        <a class="tekst" href="/profil">Profil</a>&nbsp&nbsp
        <c:choose>
            <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==true}">
                <a class="tekst" href='<c:url value="/logout" />'>Logout</a>
            </c:when>
            <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==false}">
                <a class="tekst" href="/vpis">Vpis</a>&nbsp&nbsp
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>

		<a class="tekst"href="/registracija">Registracija</a>
	</span><br/>
        <div class="row">
            <div class="col-sm-3">
            </div>
            <div class="col-sm-6">
                <img  type="image/png" class="logo img-fluid" src="../images/eko2.png">
            </div>
            <div class="col-sm-3">
            </div>
        </div>
        <br/><br/>
        <nav class="navbar navbar-default navbar-justified">
            <div class="collapse navbar-collapse js-navbar-collapse">
                <ul class="nav navbar-nav " role="tablist">
                    <li><a class="tekst" href="/domov">Domov</a></li>
                    <li><a class="tekst" href="/onas">O nas</a></li>
                    <li class="dropdown dropdown-large">
                        <a href="/kmetije" class="dropdown-toggle tekst" data-toggle="dropdown">Kmetije<b class="caret"></b></a>

                        <ul class="dropdown-menu dropdown-menu-large  row">
                            <li class="col-sm-4">
                                <ul>
                                    <li class="dropdown-header text-center">POMURSKA REGIJA</li>
                                    <c:forEach items="${pomurska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                    <li class="divider"></li>
                                    <li class="dropdown-header text-center">KOROŠKA REGIJA</li>
                                    <c:forEach items="${koroska}" var="o">
                                        <li><a  href="kmetija/${o.idKmetija}"><p>${o.naziv}</p></a></li>
                                    </c:forEach>

                                </ul>
                            </li>
                            <li class="col-sm-4">
                                <ul>
                                    <li class="dropdown-header text-center">GORENJSKA REGIJA</li>
                                    <c:forEach items="${gorenjska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                    <li class="divider"></li>
                                    <li class="dropdown-header text-center">PODRAVSKA REGIJA</li>
                                    <c:forEach items="${podravska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                </ul>
                            </li>
                            <li class="col-sm-4">
                                <ul>
                                    <li class="dropdown-header text-center">DOLENJSKA REGIJA</li>
                                    <c:forEach items="${dolenjska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                    <li class="divider"></li>
                                    <li class="dropdown-header text-center">OSREDNJESLOVENSKA <br/>REGIJA</li>
                                    <c:forEach items="${osrednjeslovenska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li><a class="tekst" href="/vnosProduktov">Produkti</a></li>
                    <li><a class="tekst" href="/kontakt">Kontakt</a></li>
                    <li><a class="tekst" href="/kosarica">Košarica</a></li>
                </ul>

            </div><!-- /.nav-collapse -->
        </nav>

        <c:choose>
        <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==true}">
        <h1>Pozdravljen nazaj
            <c:if test="${pageContext.request.userPrincipal.name != null }">
                ${pageContext.request.userPrincipal.name }
            </c:if> </h1>
        </c:when>
        <c:otherwise>
        </c:otherwise>
        </c:choose>

        <div class ="body"> <!-- body -->
            <div class="row">
                <div class="col-sm-2">
                </div>
                <div class="col-sm-8">
                    <div id="myCarousel" class="carousel slide velikostSlider" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-fluid" src="images/miklKmetija.png" alt="kmetija meseca">
                                <div class="carousel-caption d-none d-md-block">
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/zelenjava.png" alt="zelenjava">
                                <div class="carousel-caption d-none d-md-block">
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/polje.png" alt="polje">
                                <div class="carousel-caption d-none d-md-block">
                                </div>
                            </div>

                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <div class="container-fluid">
                    </div>
                </div>
                <div class="col-sm-2">
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-sm-2">
                </div>
                <div class="col-sm-8">
                    <hr>
                </div>
                <div class="col-sm-2">
                </div>
            </div>
            <br/>
            <div class="container">
                <div class="row">



                    <div>
                        <!-- Slideshow container -->
                        <div class="slideshow-container">
                            <c:forEach  items="${sli}" var ="slika">
                                <!-- Full-width images with number and caption text -->
                                <div class="mySlides">
                                    <img src="data:image/jpeg;base64,${slika.URLSlike}" style=" width: 100%" />
                                </div>
                            </c:forEach>

                            <!-- Next and previous buttons -->
                            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                            <a class="next" onclick="plusSlides(1)">&#10095;</a>
                        </div>
                    </div>







                    <div class="col-sm-3 text-center">
                        <img class="slikaProdukt img-responsive rounded">
                        <br/>
                        <p><b>artikel 1</b></p>
                        <p>Opis artikla</p>
                        <br/>
                    </div>



















                    <div class="col-sm-3 text-center">
                        <img class="slikaProdukt img-responsive rounded" src="http://pseno.hr/wp-content/uploads/2015/02/paprika-nemezis-f1-zaden2.jpg">
                        <br/>
                        <p><b>artikel 1</b></p>
                        <p>Opis artikla</p>
                        <br/>
                    </div>
                    <div class="col-sm-3 text-center">
                        <img class="slikaProdukt img-responsive rounded" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGw3juOC1jnNZdIm9qIgZyGY0R1I3YNQEr1TRYmVYIYp_rcb687A">
                        <br/>
                        <p><b>artikel 1</b></p>
                        <p>Opis artikla</p>
                        <br/>
                    </div>
                    <div class="col-sm-3 text-center">
                        <img class="slikaProdukt img-responsive rounded" src="http://vinsullivan.com/image/cache/data/Products/cheese3/Beaufort-500x500.jpg">
                        <br/>
                        <p><b>artikel 1</b></p>
                        <p>Opis artikla</p>
                        <br/>
                    </div>
                </div>
            </div>
        </div>

        <footer class="container-fluid text-center footer">
            <div class="row">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-3">
                    <p class="font"><b> Kontakt </b><p>
                    <hr class="crta">
                    1-800-000-0000
                </div>
                <div class="col-sm-3">
                    <p class="font"><b> Informacije </b><p>
                    <hr class="crta">
                    info@mysite.com
                </div>
                <div class="col-sm-3">
                </div>
            </div>
        </footer>

</body>
</html>