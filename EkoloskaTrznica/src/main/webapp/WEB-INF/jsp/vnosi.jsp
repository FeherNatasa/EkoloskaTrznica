<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="sl">
<head>
    <title>Vnosi</title>
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
        <a href="profil">Moj profil</a>&nbsp&nbsp </br>
        <a href="vpis">Vpis</a>&nbsp&nbsp
		<a href="registracija">Registracija</a>
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
        <nav class="navbar-default">
            <div class="container-fluid">
                <ul class="nav navbar-nav" role="tablist">
                    <li><a href="domov">Domov</a></li>
                    <li><a href="onas">O nas</a></li>
                    <li><a href="kmetije">Kmetije</a></li>
                    <li><a href="dodajanjeProduktov">Produkti</a></li>
                    <li><a href="kontakt">Kontakt</a></li>
                    <li><a href="kosarica">Košarica</a></li>
                </ul>
            </div>
        </nav>
        <hr>
    </div>
</nav>
<div  class="body">

    <h2>VNOSI</h2>

    <h3>DODAJANJE OSEB</h3>

    <table border="1" style="width:100%; padding:50px;">
        <tr>
            <th>Ime</th>
            <th>Priimek</th>
            <th>Email</th>
            <th>Uporabnisko ime</th>
            <th>Geslo</th>
        <tr>

            <c:forEach  items="${Uporabniki}" var ="u">
        <tr>
            <td>${u.ime} </td>
            <td>${u.priimek} </td>
            <td>${u.email} </td>
            <td>${u.uporabniskoIme} </td>
            <td>${u.geslo} </td>
        </tr>
        </c:forEach>
    </table>

    <h3>DODAJANJE KMETIJ</h3>

    <table border="1" style="width:100%; padding:50px;">
        <tr>
            <th>Naziv</th>
            <th>Email</th>
            <th>Telefonska stevilka</th>
            <th>Prevzem</th>
            <th>Opis</th>
        <tr>

            <c:forEach  items="${Kmetije}" var ="k">
        <tr>
            <td>${k.naziv} </td>
            <td>${k.email} </td>
            <td>${k.telefonskaStevilka} </td>
            <td>${k.prevzem} </td>
            <td>${k.opis} </td>
        </tr>
        </c:forEach>
    </table>

    <h3>DODAJANJE PRODUKTOV</h3>

    <table border="1" style="width:100%; padding:50px;">
        <tr>
            <th>Naziv</th>
            <th>Masa</th>
            <th>Cena</th>
        <tr>

            <c:forEach  items="${Izdelki}" var ="i">
        <tr>
            <td>${i.naziv} </td>
            <td>${i.masa} </td>
            <td>${i.cena} </td>
        </tr>
        </c:forEach>
    </table>

	
	 <h3>Dodajanje naslovov</h3>
    <table border="1" style="width:100%; padding:50px;">
        <tr>
            <th>Ulica</th>
            <th>Hisna stevilka</th>
        <tr>

            <c:forEach  items="${Naslovi}" var ="i">
     <tr>
        <td>${i.imeUlice}</td>
        <td>${i.hisnaStevilka}</td>
    </tr>
        </c:forEach>
    </table>
	
	
    <h3>Dodajanje krajev</h3>
    <table border="1" style="width:100%; padding:50px;">
        <tr>
            <th>Posta</th>
            <th>obcina/th>
            <th>regija</th>
        <tr>

            <c:forEach  items="${Kraji}" var ="i">
        <tr>
            <td>${i.postnaStevilka}</td>
            <td>${i.obcina}</td>
        <td>${i.regija}</td>
        </tr>
        </c:forEach>


    </table>
	
	<h3> Regije </h3>
    <c:forEach  items="${Regije}" var ="i">
        <tr>
            ${Regije}

        </tr>
    </c:forEach>
    </table>
	
</div>
<footer class="container-fluid text-center footer">
</footer>

</body>
</html>
