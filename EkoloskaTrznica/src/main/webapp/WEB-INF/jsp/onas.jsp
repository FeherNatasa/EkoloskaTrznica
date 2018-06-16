<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="sl">
<head>
    <title>O nas</title>
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
<body>

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



        <!--
        <nav class="container header">
            <div class="container-fluid text-center">
            <span class="align-text-top spanheader">
                <a class="tekst" href="vpis">Vpis</a>&nbsp&nbsp
                <a class="tekst" href="registracija">Registracija</a>
            </span><br/>
                <div class="row">
                    <div class="col-sm-3">
                    </div>
                    <div class="col-sm-6">
                        <img class="logo img-fluid" src="slike/eko2.png" alt="help"/>
                    </div>
                    <div class="col-sm-3">
                    </div>
                </div>
                <br/>
                <div class="row ">
                    <div class="col-sm-3">
                    </div>
                    <div class="col-sm-1">
                        <a href="domov" class="gumbIzbira tekst btn btn-info " role="button">Domov</a>
                    </div>
                    <div class="col-sm-1">
                        <a href="onas" class="gumbIzbira tekst btn btn-info" role="button">O nas</a>
                    </div>
                    <div class="col-sm-1">
                        <div class="dropdown">
                            <button class="tekst gumbIzbira btn btn-default dropdown-toggle " type="button" data-toggle="dropdown">Kmetije
                            </button>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">Dropdown header 1</li>
                                <li><a href="#">HTML</a></li>
                                <li><a href="#">CSS</a></li>
                                <li><a href="#">JavaScript</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Dropdown header 2</li>
                                <li><a href="#">About Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-1">
                        <a href="onas" class="gumbIzbira tekst btn btn-info" role="button">Produkti</a>
                    </div>
                    <div class="col-sm-1">
                        <a href="kontakt" class="gumbIzbira tekst btn btn-info" role="button">Kontakt</a>
                    </div>
                    <div class="col-sm-1">
                        <a href="#" class="gumbIzbira tekst btn btn-info" role="button">Košarica</a>
                    </div>
                    <div class="col-sm-3 ">
                    </div>
                </div>
                <hr>
            </div>
        </nav>
        -->

<div  class="body">
<div class="row">

    <div class=container>
    <div class="column left">
        <img src="images/eko2.png" class="onas" height="100px" width="300px" align="right">
    </div>
    <p class="column middle">
        <p>Vizija podjetja EKO Hiška je približati <b>ekološke</b> pridelke vsakemu kupcu na cim <b>preprostejši</b> in <b>cenovno ugoden</b> nacin. </p>
        Z namenom spodbujanja lokalne pridelave in povecevanjem samooskrbe s hrano v domacem okolju ter tudi širše po celotni Sloveniji, smo soustvarili
        spletno stran, ki potencialnim strankam ponuja informacije glede ekoloških kmetij pri nas.
        V EKO Hiški najdete kmetije po celotni Sloveniji, ki se ukvarjajo izkljucno s pridelavo ter prodajo ekoloških izdelkov in pridelkov.
        Omogocamo vam izbiro ter nakup izdelkov preko naše spletne strani, kmetije pa imajo zabeležene tudi dneve, ko si lahko izdelke poišcete na njihovem naslovu.
        Vsem sodelujocim pri EKO Hiški je skupen interes povezan nastop na trgu ter skupna promocija ekoloških kmetij ter njihovih pridelkov.</p>

    </div>
    <div class="column right barva">
        <p> <b>Avtorji: </b></p></br>
        <p><img src="images/teja3.jpg" class="avtor" height="60px" width="60px">Teja Boršić </p></br>
        <p><img src="images/natasa.jpg" class="avtor" height="60px" width="60px"> Nataša Feher </p></br>
        <p><img src="images/pina.jpg" class="avtor" height="60px" width="60px"> Pina Gornik </p></br>
        <p><img src="images/maja.jpg" class="avtor" height="60px" width="60px"> Maja Kitek </p></br>
    </div>
</div>

</div>

</br>
</br></br></br>

</div>
<footer class="container-fluid text-center footer">
</footer>

</body>
</html>