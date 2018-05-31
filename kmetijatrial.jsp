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
                    <li><a href="produkti">Produkti</a></li>
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
        <table class="table produkti">
				<c:forEach  items="${Izdelki}" var ="i">
					<tr class="text-center">
						<td>slika<br/>
						${i.naziv}<br/>
						${i.masa}<br/>
						${i.cena} </td>
					</tr>
				</c:forEach>
		</table>

    </div> <!-- container -->
</div> <!-- body -->
</body>
</html>
