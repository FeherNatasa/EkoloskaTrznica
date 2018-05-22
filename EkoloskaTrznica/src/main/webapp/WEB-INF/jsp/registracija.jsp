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
		<a class="tekst" href="vpis">Vpis</a>&nbsp&nbsp
		<a class="tekst" href="registracija">Registracija</a>
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
</nav><br/>

<div class="container">
    <div class="row main">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
            <div class="main-login main-center">
                <form class="" method="post" action="#">
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
                        <label for="tip" class="cols-sm-2 control-label">Tip uporabnika:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-star-empty"><i class="fa fa-users fa" aria-hidden="true"></i></span></span>
                                <select class="form-control" name="tip" id="tip">
                                    <option>Kupec</option>
                                    <option>Prodajalec</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="vzdevek" class="cols-sm-2 control-label">Uporabniško ime</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"><i class="fa fa-users fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="vzdevek" id="vzdevek"  placeholder="Vnesite uporanbiško ime"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="geslo" class="cols-sm-2 control-label">Geslo</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span></span>
                                <input type="password" class="form-control" name="geslo" id="geslo"  placeholder="Vnesite geslo"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="potrdiGeslo" class="cols-sm-2 control-label">Ponovite geslo</label>
                        <div class="cols-sm-10">
                            <div class="input-group"> <!-- ta glyphicon se mora ob pravilnem ponovnem vnosu gesla spremenit v kljukico -->
                                <span class="input-group-addon"><span class="glyphicon glyphicon-remove"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span></span>
                                <input type="password" class="form-control" name="potrdiGeslo" id="potrdiGeslo"  placeholder="Ponoven vnos gesla"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group ">
                        <a href="#" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button gumbRegistracija">Registriraj se</a>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-sm-3">
        </div>
    </div>
</div><br>

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