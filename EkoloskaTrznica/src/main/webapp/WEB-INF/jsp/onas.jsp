<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="sl">
<head>
    <title>O nas</title>
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



<!--
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
-->

<div  class="body">
<div class="row">

    <div class=container>
    <div class="column left">
        <img src="slike/eko2.png" class="onas" height="100px" width="300px" align="right">
    </div>
    <div class="column middle">
        <p>Vizija podjetja EKO Hiška je približati <b>ekološke</b> pridelke vsakemu kupcu na čim <b>preprostejši</b> in <b>cenovno ugoden</b> način. </p>
        Z namenom spodbujanja lokalne pridelave in povečevanjem samooskrbe s hrano v domačem okolju ter tudi širše po celotni Sloveniji, smo soustvarili
        spletno stran, ki potencialnim strankam ponuja informacije glede ekoloških kmetij pri nas.
        V EKO Hiški najdete kmetije po celotni Sloveniji, ki se ukvarjajo izključno s pridelavo ter prodajo ekoloških izdelkov in pridelkov.
        Omogočamo vam izbiro ter nakup izdelkov preko naše spletne strani, ali rezervacijo teh izdelkov ter lasten prevzem na določeni kmetiji.
        Prav tako smo izdelali tudi nekaj posebnih zabojčkov, ki jih lahko mesečno prejemate na dom, ponujamo opcijo zelenjavnih, sadnih ali mešanih zabojčkov.
        Vsem sodelujočim pri EKO Hiški je skupen interes povezan nastop na trgu ter skupna promocija ekoloških kmetij ter njihovih pridelkov.

    </div>
    <div class="column right barva">
        <p> <b>Avtorji: </b></p></br>
        <p><img src="slike/teja3.jpg" class="avtor" height="60px" width="60px">Teja Boršić </p></br>
        <p><img src="slike/natasa.jpg" class="avtor" height="60px" width="60px"> Nataša Feher </p></br>
        <p><img src="slike/pina.jpg" class="avtor" height="60px" width="60px"> Pina Gornik </p></br>
        <p><img src="slike/maja.jpg" class="avtor" height="60px" width="60px"> Maja Kitek </p></br>
    </div>
</div>

</div>

</br>
</br></br></br>

</div>
<footer class="container-fluid text-center footer">
</footer>

</body>
</html>