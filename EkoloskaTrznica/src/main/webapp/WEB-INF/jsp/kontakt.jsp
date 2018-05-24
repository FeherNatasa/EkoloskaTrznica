<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="sl">
<head>
    <title>Kontakt</title>
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

<div class="container">
    <div class="row main">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
            <div class="main-login main-center">
                <form class="" method="post" action="mailto:someone@example.com">

                    <div class="form-group">
                        <label for="ime" class="cols-sm-2 control-label">Ime</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"><i class="fa fa-user fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="ime" id="ime"  placeholder="Vnesite ime in priimek"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="cols-sm-2 control-label">E-naslov</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"><i class="fa fa-envelope fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="email" id="email"  placeholder="Vnesite e-naslov"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="vzdevek" class="cols-sm-2 control-label">Sporočilo:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"><i class="fa fa-users fa" aria-hidden="true"></i></span></span>
                                <textarea rows="7" cols="69"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group ">
                        <a type="button" id="button" class="btn btn-primary btn-lg btn-block login-button gumbRegistracija">Pošlji</a>
                    </div></br>
                    </br>
                    <p class="kontakt"> EKO Hiška <p>
                    <p class="kontakt"> ekohiska@info.com</p>
                    <p class="kontakt">000000000

                </form>
                <div class="col-sm-3">
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="container-fluid text-center footer">
</footer>

</body>
</html>