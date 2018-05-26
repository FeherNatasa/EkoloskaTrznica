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


<div class ="body"> <!-- body -->

    <div class=container>

        <h2>Kmetija ime</h2>
        <br>
        <div class="row">
            <div class="col-sm-4 text-center">
                <img class="slikaProdukt img-responsive rounded" src="https://www.regiovitalis.si/img/w800-c4x3/upload/gallery/70/turisticna-kmetija-ferencovi.jpg">
            </div>

            <div class="col-sm-1 text-left">
            </div>
            <div class="col-sm-7 text-left">
                <h4>O nas</h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                    and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                </p>
            </div>
        </div>

        <br>
        <div class="row">
            <div class="col-sm-4 text-left">
                <h4>Nalov</h4>
                <h4>Kontakt</h4>
                <h4>Prevzem</h4>
            </div>
        </div>
        <br><br><br>

        <h3>Naša ponudba:</h3>
        <div class="row">
            <div class="col-sm-3 text-center">
                <img class="slikaProdukt img-responsive rounded" src="http://www.apiturizem.si/wp-content/uploads/2014/10/6.jpg">
                <h5>Cena</h5>
            </div>

            <div class="col-sm-3 text-center">
                <img class="slikaProdukt img-responsive rounded" src=http://www.palomahotels.com/PalomaHotels.AdminWeb/Public/Images/Experiences/concept-organic-farm.jpg>
                <h5>Cena</h5>
            </div>

            <div class="col-sm-3 text-center">
                <img class="slikaProdukt img-responsive rounded" src=http://www.turisticna-zveza.si/Ocenjevanje/71/image018.jpg>
                <h5>Cena</h5>
            </div>

            <div class="col-sm-3 text-center">
                <img class="slikaProdukt img-responsive rounded" src=http://www.turisticna-zveza.si/Ocenjevanje/71/image018.jpg>
                <h5>Cena</h5>
            </div>
        </div>

    </div> <!-- container -->
</div> <!-- body -->
</body>
</html>