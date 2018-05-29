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
<body>


<nav class="container header">
    <div class="container-fluid text-center">
	<span class="align-text-top spanheader">
        <a href="profil">Moj profil</a>&nbsp&nbsp
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

<div class ="body"> <!-- body -->

    <div class=container>

        <div class="row">
            <div class="col-sm-3 text-center">
                <p>slika</p>
            </div>

            <div class="col-sm-6 text-center">
                <p>naziv</p>
            </div>

            <div class="col-sm-3 text-center">
                <p>cena</p>
            </div>
        </div>

        <hr>


        <div class="row">
            <div class="col-sm-3 text-center">
                <p>slika</p>
            </div>

            <div class="col-sm-6 text-center">
                <p>naziv</p>
            </div>

            <div class="col-sm-3 text-center">
                <p>cena</p>
            </div>
        </div>

        <hr>


        <div class="row">
            <div class="col-sm-3 text-center">
                <p>slika</p>
            </div>

            <div class="col-sm-6 text-center">
                <p>naziv</p>
            </div>

            <div class="col-sm-3 text-center">
                <p>cena</p>
            </div>
        </div>

        <hr>


        <div class="row">
            <div class="col-sm-3 text-center">
                <p>slika</p>
            </div>

            <div class="col-sm-6 text-center">
                <p>naziv</p>
            </div>

            <div class="col-sm-3 text-center">
                <p>cena</p>
            </div>
        </div>

        <hr>


        <div class="row">
            <div class="col-sm-3 text-center">
                <p>slika</p>
            </div>

            <div class="col-sm-6 text-center">
                <p>naziv</p>
            </div>

            <div class="col-sm-3 text-center">
                <p>cena</p>
            </div>
        </div>

        <hr>


        <div class="row">
            <div class="col-sm-3 text-center">
                <p>slika</p>
            </div>

            <div class="col-sm-6 text-center">
                <p>naziv</p>
            </div>

            <div class="col-sm-3 text-center">
                <p>cena</p>
            </div>
        </div>
        <br><br><br>

        <!--
        <div class="row">
        <div class="col-sm-6 text-center">
         <button type="button" class="btn btn-default gumbKupi ">Prekliči</button>
         </div>
         <div class="col-sm-6 text-center">
          <button type="button" class="btn btn-default gumbKupi">Kupi</button>

        </div>
        </div>
         -->

        <div class="row">
            <div class="col-sm-6 text-center">

            </div>
            <div class="col-sm-6 text-right">
                <button type="button" class="btn btn-default gumbPreklici ">Prekliči</button>
                <button type="button" class="btn btn-default gumbKupi">Kupi</button>

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