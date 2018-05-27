<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<html lang="sl">
<head>
    <title>Registracija</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/Boot.css" type="text/css" />
    <link href='https://www.fonts.com/font/exljbris/museo-slab?QueryFontType=Web&src=GoogleWebFonts' rel='stylesheet' type='text/css'>

</head>
<body class="ozadje">

<nav class="container header">
    <div class="container-fluid text-center">
	<span class="align-text-top spanheader">
		<a class="tekst" href="vpis.html">Vpis</a>
		<a class="tekst" href="registracija.html">Registracija</a>
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
        <br/>
        <div class="row ">
            <div class="col-sm-3">
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="domov.html">Domov</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="onas.html">O nas</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="#">Kmetije</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="#">Produkti</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="kontakt.html#">Kontakt</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="#">Košarica</a>
            </div>
            <div class="col-sm-3 ">
            </div>
        </div>
        <hr>
    </div>
</nav><br/>

<h2>Dodaj</h2>







<form method="POST" action="/bla">
    <p> Ime: <input type="text" name="Ime" /> </p><br />
    <p> Priimek: <input type="text" name="Priimek" /> </p><br />
    <p> Email: <input type="text" name="Email" /> </p><br />
    <p> UporabniskoIme: <input type="text" name="UporabniskoIme" /> </p><br />
    <p> Geslo: <input type="text" name="Geslo" /> </p><br />
    <input type="submit" value="OK" />
</form>



</div>
</body>
</html>