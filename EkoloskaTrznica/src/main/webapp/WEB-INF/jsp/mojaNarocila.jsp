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
</br>
    <div class="row">
        <div class="col-sm-1">
        </div>
        <div class="col-sm-3">
            <img class="logo img-thumbnail img-fluid" src="http://humor-mania.com/wp-content/uploads/2017/09/who_am_I.png">
        </div>
        <div class="col-sm-7">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <ul class="nav navbar-nav ">
                        <li><a href="#">Moji podatki</a></li>
                        <li  class="active"><a href="#">Naročila</a></li>
                        <li><a href="#">Priljubljeno</a></li>
                        <li><a href="#">Mnenja</a></li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                    </ul>
                </div>
            </nav>
            <div class="card">
                <div class="card-body">
                    <div class="table-wrapper-2">
                        <table class="table table-bordered table-responsive-md">
                            <thead>
                            <tr>
                                <th>Artikel</th>
                                <th>Količina</th>
                                <th>Cena</th>
                                <th>Kmetija</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Artikel 1</td>
                                <td>2</td>
                                <td>10,99€</td>
                                <td>Kmetija 1</td>
                            </tr>
                            <tr>
                                <td>Artikel 2</td>
                                <td>5</td>
                                <td>32,12€</td>
                                <td>Kmetija 2</td>
                            </tr>
                            <tr>
                                <td>Artikel 3</td>
                                <td>8</td>
                                <td>77,21€</td>
                                <td>Kmetija 3</td>
                            </tr>
                            <tr>
                                <td>Artikel 4</td>
                                <td>1</td>
                                <td>46,22€</td>
                                <td>Kmetija 4</td>
                            </tr>
                            <tr>
                                <td>Artikel 5</td>
                                <td>1</td>
                                <td>46,22€</td>
                                <td>Kmetija 5</td>
                            </tr>
                            <tr>
                                <td>Artikel 6</td>
                                <td>1</td>
                                <td>46,22€</td>
                                <td>Kmetija 6</td>
                            </tr>
                            <tr>
                                <td>Artikel 7</td>
                                <td>1</td>
                                <td>46,22€</td>
                                <td>Kmetija 7</td>
                            </tr>
                            <tr>
                                <td>Artikel 8</td>
                                <td>1</td>
                                <td>46,22€</td>
                                <td>Kmetija 8</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-1">
        </div>
    </div>
</div>
<br>

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