<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<html lang="sl">
<head>
    <title>Moj profil</title>
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
        <a class="tekst" href="/profil">Profil</a>&nbsp&nbsp
        <c:choose>
            <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==true}">
                <a class="tekst" href='<c:url value="/logout" />'>Logout</a>
            </c:when>
            <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==false}">
                <a class="tekst" href="/vpis">Vpis</a>
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test = "${pageContext.request.isUserInRole('ROLE_KMET')==true}">
            </c:when>
            <c:when test = "${pageContext.request.isUserInRole('ROLE_KMET')==false}">
                <a class="tekst" href="/dodajanjeKmetije">Dodaj kmetijo</a>
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>
          <c:choose>
            <c:when test = "${pageContext.request.isUserInRole('ROLE_KMET')==true}">
                <a class="tekst" href="/dodajanjeProduktov">Dodaj produkt</a>
            </c:when>
              <c:otherwise>
              </c:otherwise>
          </c:choose>

	</span><br/>
        <div class="row">
            <div class="col-sm-3">
            </div>
            <div class="col-sm-6">
                <img type="image/png" class="logo img-fluid" src="../images/eko2.png">
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
    </div>
</nav>

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
                        <li><a href="/mojaNarocila">Naročila</a></li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                    </ul>
                </div>
            </nav>


            <table class="table table-bordered">
                <tbody>
                <tr>
                    <th scope="row">Ime in priimek</th>
                    <td>${ime} ${priimek}</td>
                </tr>

                <tr>
                    <th scope="row">E-naslov</th>
                    <td>${email}</td>
                </tr>
                </tbody>
            </table>

        </div>
        <div class="col-sm-1">
        </div>
    </div>
</div>
<br>
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