<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<html lang="sl">
<head>
    <title>EKO kmetija</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="koda/css_praktikum.css">
    <link href='https://www.fonts.com/font/exljbris/museo-slab?QueryFontType=Web&src=GoogleWebFonts' rel='stylesheet' type='text/css'>
    <style>
    </style>
</head>
<body>

<nav class="container header">
<div class="container-fluid text-center">
	<span class="align-text-top spanheader">
		<a class="tekst" href="vpis">Vpis</a>&nbsp&nbsp
		<a class="tekst"href="registracija">Registracija</a>
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
                <li><a class="tekst" href="domov">Domov</a></li>
                <li><a class="tekst" href="onas">O nas</a></li>
                <li class="dropdown dropdown-large">
                    <a href="#" class="dropdown-toggle tekst" data-toggle="dropdown">Kmetije<b class="caret"></b></a>

                    <ul class="dropdown-menu dropdown-menu-large  row">
                        <li class="col-sm-4">
                            <ul>
                                <li class="dropdown-header text-center">POMURSKA REGIJA</li>
                                <li><a href="ekomilanrus">EKO Kmetija Milan Rus</a></li>
                                <li><a href="ekomatejzadravec">EKO kmetija Matej Zadravec</a></li>
                                <li><a href="ekozel">EKO kmetija Zel</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header text-center">KOROŠKA REGIJA</li>
                                <li><a href="ekomikl">EKO turistična kmetija Mikl</a></li>
                                <li><a href="ekolešnik">EKO turistična kmetija Lešnik</a></li>
                                <li><a href="ekomežner">EKO kmetija Mežner</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-4">
                            <ul>
                                <li class="dropdown-header text-center">GORENJSKA REGIJA</li>
                                <li><a href="ekopavlič">EKO kmetija Pavlič</a></li>
                                <li><a href="ekošuštar">Pri Šuštarju</a></li>
                                <li><a href="ekokokalj">EKO kmetija Kokalj </a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header text-center">PODRAVSKA REGIJA</li>
                                <li><a href="ekostergar">EKO kmetija Stergar</a></li>
                                <li><a href="ekokvar">EKO kmetija Kvas</a></li>
                                <li><a href="ekokoren">EKO Kmetija Koren</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-4">
                            <ul>
                                <li class="dropdown-header text-center">DOLENJSKA REGIJA</li>
                                <li><a href="ekokastelic">Ekološka kmetija Kastelic</a></li>
                                <li><a href="ekoziherl">Ekološka kmetija Ziherl</a></li>
                                <li><a href="ekoraztresen">Turistična ekološka kmetija Raztresen</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header text-center">OSREDNJESLOVENSKA <br/>REGIJA</li>
                                <li><a href="ekofabjan">EKO kmetija Fabjan</a></li>
                                <li><a href="ekoleskovgaj">EKO kmetija Leskov Gaj </a></li>
                            </ul>
                        </li>

                    </ul>
                </li>
                <li><a class="tekst" href="produkti">Produkti</a></li>
                <li><a class="tekst" href="kontakt">Kontakt</a></li>
                <li><a class="tekst" href="košarica">Košarica</a></li>
            </ul>

        </div><!-- /.nav-collapse -->
    </nav>
    </nav>
</div>
    <div class ="body"> <!-- body -->

        <div class=container>
			<table class="table">
				<thead>
					<tr>
						<th>Naziv</th>
						<th>Cena</th>
						<th>Masa</th>
					</tr>
				</thead>
				<tbody>
				<c:foreach items="${najdeno} var="n"
					<tr>
						<td>slika</td>
						<td>${n.naziv}</td>
						<td>${n.cena}</td>
						<td>${n.kolicina}</td>
					</tr>
				</c:foreach>
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
