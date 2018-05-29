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
    <div class="row">
        <div class="col-sm-2">
        </div>
        <div class="col-sm-8">
            <div id="myCarousel" class="carousel slide velikostSlider" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="img-fluid" src="slike/miklKmetija.png" alt="kmetija meseca">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>...</h5>
                            <p>...</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="slike/zelenjava.png" alt="zelenjava">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>...</h5>
                            <p>...</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="slike/polje.png" alt="polje">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>...</h5>
                            <p>...</p>
                        </div>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div class="container-fluid">
            </div>
        </div>
        <div class="col-sm-2">
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-sm-2">
        </div>
        <div class="col-sm-8">
            <hr>
        </div>
        <div class="col-sm-2">
        </div>
    </div>
    <br/>
    <div class="container">
        <div class="row">
            <div class="col-sm-3 text-center">
                <img class="slikaProdukt img-responsive rounded" src="https://www.thompson-morgan.com/product_images/100/zoom/z-TOMA-TM54735-A_h.jpg">
                <br/>
                <p><b>artikel 1</b></p>
                <p>Opis artikla</p>
                <br/>
            </div>
            <div class="col-sm-3 text-center">
                <img class="slikaProdukt img-responsive rounded" src="http://pseno.hr/wp-content/uploads/2015/02/paprika-nemezis-f1-zaden2.jpg">
                <br/>
                <p><b>artikel 1</b></p>
                <p>Opis artikla</p>
                <br/>
            </div>
            <div class="col-sm-3 text-center">
                <img class="slikaProdukt img-responsive rounded" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGw3juOC1jnNZdIm9qIgZyGY0R1I3YNQEr1TRYmVYIYp_rcb687A">
                <br/>
                <p><b>artikel 1</b></p>
                <p>Opis artikla</p>
                <br/>
            </div>
            <div class="col-sm-3 text-center">
                <img class="slikaProdukt img-responsive rounded" src="http://vinsullivan.com/image/cache/data/Products/cheese3/Beaufort-500x500.jpg">
                <br/>
                <p><b>artikel 1</b></p>
                <p>Opis artikla</p>
                <br/>
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