<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<html lang="sl">
<head>
    <title>Kmetije</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/Boot.css" type="text/css" />


    <link href='https://www.fonts.com/font/exljbris/museo-slab?QueryFontType=Web&src=GoogleWebFonts' rel='stylesheet' type='text/css'>
    <style>
    </style>
</head>

<body class="ozadje">
<nav class="container header">
    <div class="container-fluid text-center">
	<span class="align-text-top spanheader">
         <c:choose>
             <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==true}">
                 <a class="tekst" href="/profil">Profil</a>&nbsp&nbsp
             </c:when>
             <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==false}">
                 <a class="tekst"href="/registracija">Registracija</a>
             </c:when>
             <c:otherwise>
             </c:otherwise>
         </c:choose>
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
                    <li><a class="tekst" href="/kmetije">Ponudniki</a></li>
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
                    <li><a class="tekst" href="/kontakt">Kontakt</a></li>
                    <c:choose>
                        <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==true}">
                            <li><a class="tekst" href="/kosarica">Košarica</a></li>
                        </c:when>
                        <c:otherwise>
                        </c:otherwise>
                    </c:choose>
                </ul>
                <div class="col-sm-3 col-md-3 pull-right">
                    <form action="isci" method="post">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Iskanje" name="freeText">
                            <div class="input-group-btn">
                                <button id="search-field-btn" class="btn btn-default">Išči
                                </button>
                            </div>
                        </div>
                    </form>
                </div>

            </div><!-- /.nav-collapse -->
        </nav>
    </div>
</nav>


<div class="text-center" style="margin-top: 50px">
    <h1>Posodobi osebne podatke</h1>

    <div class="container">
        <div class="row"><br>
            <div class="container">
                <div class="col-sm-1">
                </div>
                <div class="col-sm-3">
                    <img class="logo img-thumbnail img-fluid" src="http://humor-mania.com/wp-content/uploads/2017/09/who_am_I.png">
                </div>
                <div class="col-sm-7">
                    <nav class="navbar navbar-inverse">
                        <div class="container-fluid">
                            <ul class="nav navbar-nav ">
                                <li class="active"><a href="/profil">Moji podatki</a></li>
                                <li><a href="/mojaNarocila">Narocila</a></li>
                                <li><a href="/priljubljeno">Priljubljeno</a></li>
                                <li><a href="/mojamnenja">Mnenja</a></li>

                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                            </ul>
                        </div>
                    </nav>



                    <form id="posodobi" action="/kmetija/update">
                        <div class="container ">

                            <div class="row  align-items-center justify-content-center ">
                                <label class="col-lg-5 col-md-7 col-sm-10 col-xs-12 text-left " for="naziv">
                                    <strong>Ime:</strong>
                                </label>
                            </div>
                            <div class="row  align-items-center justify-content-center" >
                                <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                    <div class="input-group">
                                        <input type="text" name="naziv" value="${naziv}"
                                               id="naziv"
                                               required class="single-input">
                                    </div>
                                </div>
                            </div>

                            <div class="row  align-items-center justify-content-center ">
                                <label class="col-lg-5 col-md-7 col-sm-10 col-xs-12 text-left " for="email">
                                    <strong>email:</strong>
                                </label>
                            </div>
                            <div class="row  align-items-center justify-content-center" >
                                <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                    <div class="input-group">
                                        <input type="text" name="email" value="${email}"
                                               id="email"
                                               required class="single-input">
                                    </div>
                                </div>
                            </div>

                            <div class="row  align-items-center justify-content-center ">
                                <label class="col-lg-5 col-md-7 col-sm-10 col-xs-12 text-left " for="telefonskaStevilka">
                                    <strong>telefonskaStevilka</strong>
                                </label>
                            </div>
                            <div class="row  align-items-center justify-content-center" >
                                <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                    <div class="input-group">
                                        <input type="telefonskaStevilka" name="telefonskaStevilka" value="${telefonskaStevilka}"
                                               id="telefonskaStevilka"
                                               required class="single-input">
                                    </div>
                                </div>
                            </div>


                            <div class="row  align-items-center justify-content-center ">
                                <label class="col-lg-5 col-md-7 col-sm-10 col-xs-12 text-left " for="prevzem">
                                    <strong>prevzem:</strong>
                                </label>
                            </div>
                            <div class="row  align-items-center justify-content-center" >
                                <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                    <div class="input-group">
                                        <input type="text" name="prevzem" value="${prevzem}"
                                               id="prevzem"
                                               class="single-input">
                                    </div>
                                </div>
                            </div>

                            <div class="row  align-items-center justify-content-center ">
                                <label class="col-lg-5 col-md-7 col-sm-10 col-xs-12 text-left " for="opis">
                                    <strong>opis:</strong>
                                </label>
                            </div>
                            <div class="row  align-items-center justify-content-center" >
                                <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                    <div class="input-group">
                                        <input type="text" name="opis" value="${opis}"
                                               id="opis"
                                               class="single-input">
                                    </div>
                                </div>
                            </div>


                        </div>
                        <br>
                        <div class="row  align-items-center justify-content-center" >
                            <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                <button type="submit" class="genric-btn primary">
                                    Posodobi kmetijo
                                </button>
                            </div>
                        </div>
                    </form>

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