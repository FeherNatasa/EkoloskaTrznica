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
        <a href="profil">Moj profil</a>&nbsp&nbsp
        <a href="dodajanjeKmetije">Dodaj kmetijo</a>&nbsp&nbsp
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



                    <form id="posodobi" action="/posodobiProfil" method="POST" class="">
                        <div class="container ">

                            <div class="row  align-items-center justify-content-center ">
                                <label class="col-lg-5 col-md-7 col-sm-10 col-xs-12 text-left " for="novoIme">
                                    <strong>Ime:</strong>
                                </label>
                            </div>
                            <div class="row  align-items-center justify-content-center" >
                                <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                    <div class="input-group">
                                        <input type="text" name="novoIme" value="${ime}"
                                               id="novoIme"
                                               required class="single-input">
                                    </div>
                                </div>
                            </div>

                            <div class="row  align-items-center justify-content-center ">
                                <label class="col-lg-5 col-md-7 col-sm-10 col-xs-12 text-left " for="novPriimek">
                                    <strong>Priimek:</strong>
                                </label>
                            </div>
                            <div class="row  align-items-center justify-content-center" >
                                <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                    <div class="input-group">
                                        <input type="text" name="novPriimek" value="${priimek}"
                                               id="novPriimek"
                                               required class="single-input">
                                    </div>
                                </div>
                            </div>

                            <div class="row  align-items-center justify-content-center ">
                                <label class="col-lg-5 col-md-7 col-sm-10 col-xs-12 text-left " for="novMail">
                                    <strong>Mail:</strong>
                                </label>
                            </div>
                            <div class="row  align-items-center justify-content-center" >
                                <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                    <div class="input-group">
                                        <input type="email" name="novMail" value="${email}"
                                               id="novMail"
                                               required class="single-input">
                                    </div>
                                </div>
                            </div>


                            <div class="row  align-items-center justify-content-center ">
                                <label class="col-lg-5 col-md-7 col-sm-10 col-xs-12 text-left " for="uporabiskoIme">
                                    <strong>Uporabnisko ime:</strong>
                                </label>
                            </div>
                            <div class="row  align-items-center justify-content-center" >
                                <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                    <div class="input-group">
                                        <input type="text" name="uporabniskoIme" value="${uporabniskoIme}"
                                               id="uporabiskoIme"
                                               class="single-input">
                                    </div>
                                </div>
                            </div>

                        </div>
                        <br>
                        <div class="row  align-items-center justify-content-center" >
                            <div class="banner-content col-lg-5 col-md-7 col-sm-10 col-xs-12">
                                <button type="submit" class="genric-btn primary">
                                    Posodobi profil
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