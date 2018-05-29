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
                        <li class="active"><a href="profil">Moji podatki</a></li>
                        <li><a href="mojaNarocila">Naročila</a></li>
                        <li><a href="priljubljeno">Priljubljeno</a></li>
                        <li><a href="mojamnenja">Mnenja</a></li>

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
                    <td>Jana Novak</td>
                </tr>
                <tr>
                    <th scope="row">Naslov</th>
                    <td>Izmišljena ulica 13a</td>
                </tr>
                <tr>
                    <th scope="row">Pošta</th>
                    <td>Izmišljeno mesto 1234</td>
                </tr>
                <tr>
                    <th scope="row">Tel. št.</th>
                    <td>070-123-456</td>
                </tr>
                <tr>
                    <th scope="row">E-naslov</th>
                    <td>jana.novak@gmail.com</td>
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