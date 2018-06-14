
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<html lang="sl">
<head>
    <title>Domov</title>
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
		<a class="tekst" href="vpis.html">Vpis</a>&nbsp&nbsp
		<a class="tekst"href="registracija.html">Registracija</a>
	</span><br/>
        <div class="row">
            <div class="col-sm-3">
            </div>
            <div class="col-sm-6">
                <img class="logo img-fluid" src="slike/eko2.png">
            </div>
            <div class="col-sm-3">
            </div>
        </div>
        <br/><br/>
        <nav class="navbar navbar-default navbar-justified">
            <div class="collapse navbar-collapse js-navbar-collapse">
                <ul class="nav navbar-nav " role="tablist">
                    <li><a class="tekst" href="domov.html">Domov</a></li>
                    <li><a class="tekst" href="onas.html">O nas</a></li>
                    <li class="dropdown dropdown-large">
                        <a href="#" class="dropdown-toggle tekst" data-toggle="dropdown">Kmetije<b class="caret"></b></a>

                        <ul class="dropdown-menu dropdown-menu-large  row">
                            <li class="col-sm-4">
                                <ul>
                                    <li class="dropdown-header text-center">POMURSKA REGIJA</li>
                                    <li><a href="ekomilanrus.html">EKO Kmetija Milan Rus</a></li>
                                    <li><a href="ekomatejzadravec.html">EKO kmetija Matej Zadravec</a></li>
                                    <li><a href="ekozel.html">EKO kmetija Zel</a></li>
                                    <li class="divider"></li>
                                    <li class="dropdown-header text-center">KOROŠKA REGIJA</li>
                                    <li><a href="ekomikl.html">EKO turistična kmetija Mikl</a></li>
                                    <li><a href="ekolešnik.html">EKO turistična kmetija Lešnik</a></li>
                                    <li><a href="ekomežner.html">EKO kmetija Mežner</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-4">
                                <ul>
                                    <li class="dropdown-header text-center">GORENJSKA REGIJA</li>
                                    <li><a href="ekopavlič.html">EKO kmetija Pavlič</a></li>
                                    <li><a href="ekošuštar.html">Pri Šuštarju</a></li>
                                    <li><a href="ekokokalj.html">EKO kmetija Kokalj </a></li>
                                    <li class="divider"></li>
                                    <li class="dropdown-header text-center">PODRAVSKA REGIJA</li>
                                    <li><a href="ekostergar.html">EKO kmetija Stergar</a></li>
                                    <li><a href="ekokvar.html">EKO kmetija Kvas</a></li>
                                    <li><a href="ekokoren.html">EKO Kmetija Koren</a></li>
                                </ul>
                            </li>
                            <li class="col-sm-4">
                                <ul>
                                    <li class="dropdown-header text-center">DOLENJSKA REGIJA</li>
                                    <li><a href="ekokastelic.html">Ekološka kmetija Kastelic</a></li>
                                    <li><a href="ekoziherl.html">Ekološka kmetija Ziherl</a></li>
                                    <li><a href="ekoraztresen.html">Turistična ekološka kmetija Raztresen</a></li>
                                    <li class="divider"></li>
                                    <li class="dropdown-header text-center">OSREDNJESLOVENSKA <br/>REGIJA</li>
                                    <li><a href="ekofabjan.html">EKO kmetija Fabjan</a></li>
                                    <li><a href="ekoleskovgaj.html">EKO kmetija Leskov Gaj </a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li><a class="tekst" href="produkti.html">Produkti</a></li>
                    <li><a class="tekst" href="kontakt.html">Kontakt</a></li>
                    <li><a class="tekst" href="košarica.html">Košarica</a></li>

                </ul>
                <!-- iskanje -->
                <div class="col-sm-3 col-md-3 pull-right">
                    <form action="isci" method="post">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Iskanje" name="freeText">
                            <div class="input-group-btn">
                                <button id="search-field-btn" class="btn btn-default">Iskanje
                                </button>
                            </div>
                        </div>
                    </form>
                </div>

            </div><!-- /.nav-collapse -->
        </nav>

</div>
<div class ="body"> <!-- body -->

    <div class=container>
        <table class="table">
            <thead>
            <tr>
                <!--<th>Slika</th>-->
                <th>Naziv</th>
                <th>Cena</th>
                <th>Masa</th>
                <th>TK</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${najdeno}" var ="n">
					<tr>

						<td>${n.naziv}</td>
						<td>${n.cena}</td>
						<td>${n.masa}</td>
                        <td>${n.tk_idKmetija}</td>
                            <td>${kmetija}</td>

					</tr>

            </c:forEach>
				</body>
			</table>
		</div>
</div> <!-- body -->
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
