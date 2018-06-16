<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Registracija</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/Boot.css" type="text/css" />

    <link rel="stylesheet" type="text/css" href="<c:url value="/css/Boot.css"/></link>
    <link href='https://www.fonts.com/font/exljbris/museo-slab?QueryFontType=Web&src=GoogleWebFonts' rel='stylesheet' type='text/css'>

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
                                        <li class="dropdown-header text-center">KORO?KA REGIJA</li>
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
                                <li><a class="tekst" href="/kosarica">Ko?arica</a></li>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                    <div class="col-sm-3 col-md-3 pull-right">
                        <form action="/isci" method="post">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Iskanje" name="freeText">
                                <div class="input-group-btn">
                                    <button id="search-field-btn" class="btn btn-default">I??i
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div><!-- /.nav-collapse -->
            </nav>
        </div>
    </nav>

    <div class="container">
            <br>
            <div class="row main">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-6">
                    <div class="main-login main-center">
                        <spring:url value="/registracija" var="registerURL" />
                        <form:form action="${registerURL}" modelAttribute="userForm" method="post" >
                            <div class="form-group">
                                <label for="ime" class="cols-sm-2 control-label">Ime</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"><i class="fa fa-user fa" aria-hidden="true"></i></span></span>
                                        <form:input path="Ime" type="text"  class="form-control" name="Ime" id="ime" placeholder="Vnesite ime"/>
                                        <form:errors path="Ime" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ime" class="cols-sm-2 control-label">Priimek</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"><i class="fa fa-user fa" aria-hidden="true"></i></span></span>
                                        <form:input path="Priimek" type="text" class="form-control" name="Priimek" id="priimek" placeholder="Vnesite priimek"/>
                                        <form:errors path="Priimek" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="cols-sm-2 control-label">E-naslov</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"><i class="fa fa-envelope fa" aria-hidden="true"></i></span></span>
                                        <form:input path="Email" type="text" class="form-control" name="Email" id="email"  placeholder="Vnesite e-naslov"/>
                                        <form:errors path="Email" />
                                    </div>
                                </div>
                            </div>
                            <!--
                            <div class="form-group">
                            <label for="tip" class="cols-sm-2 control-label">Tip uporabnika:</label>
                            <div class="cols-sm-10">
                            <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-star-empty"><i class="fa fa-users fa" aria-hidden="true"></i></span></span>
                            <select class="form-control" name="tip" id="tip" required>
                            <option>Kupec</option>
                            <option>Prodajalec</option>
                            </select>
                            </div>
                            </div>
                            </div>
                            -->
                            <div class="form-group">
                                <label for="UporabniskoIme" class="cols-sm-2 control-label">Uporabni?ko ime</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"><i class="fa fa-users fa" aria-hidden="true"></i></span></span>
                                        <form:input path="UporabniskoIme" type="text" class="form-control" name="UporabniskoIme" id="UporabniskoIme"  placeholder="Vnesite uporanbi?ko ime"/> <!-- male crke, stevilke, podcrtaji, 3-15 znakov -->
                                        <form:errors path="UporabniskoIme" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="geslo" class="cols-sm-2 control-label">Geslo</label>
                                <div class="cols-sm-10">
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span></span>
                                        <form:password path="Geslo" class="form-control" name="Geslo" id="geslo"  placeholder="Vnesite geslo"/>
                                        <form:errors path="Geslo" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="potrdiGeslo" class="cols-sm-2 control-label">Ponovite geslo</label>
                                <div class="cols-sm-10">
                                    <div class="input-group"> <!-- ta glyphicon se mora ob pravilnem ponovnem vnosu gesla spremenit v kljukico -->
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span></span>
                                        <form:password path="PotrdiGeslo" class="form-control" name="potrdiGeslo" id="potrdiGeslo"  placeholder="Ponoven vnos gesla"/>
                                        <form:errors path="PotrdiGeslo" />

                                    </div>
                                </div>
                            </div>

                            <div class="form-group ">
                                <button type="submit" class="btn btn-primary btn-lg btn-block login-button gumbRegistracija">Registriraj se</button>
                            </div>
                        </form:form>
                    </div>
                </div>
                <div class="col-sm-3">
                </div>
            </div>
        </div><br>



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
<script>
    var geslo = document.getElementById("geslo")
        , potrdi = document.getElementById("potrdiGeslo");
    function validatePassword(){
        if(geslo.value != potrdi.value) {
            potrdi.setCustomValidity("Gesli se ne ujemata");
        } else {
            potrdi.setCustomValidity('');
        }
    }
    geslo.onchange = validatePassword;
    potrdi.onkeyup = validatePassword;
</script>
</html>