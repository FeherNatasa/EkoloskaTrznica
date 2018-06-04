<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<html lang="sl">
<head>
    <title>Vnos kmetije</title>
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


<div class="container">
    <br>
    <div class="row main">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
            <div class="main-login main-center">
                <form method="POST" action="/dodajanjeKmetije">
                    <div class="form-group">
                        <label for="naziv" class="cols-sm-2 control-label">Naziv kmetije:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-leaf"><i class="fa fa-leaf fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="Naziv" id="naziv" placeholder="Vnesite naziv kmetije" required >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="cols-sm-2 control-label">E-naslov:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"><i class="fa fa-envelope fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="Email" id="email"  placeholder="Vnesite e-naslov" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="cols-sm-2 control-label">Telefonska številka:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-earphone"><i class="fa fa-earphone fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="TelefonskaStevilka" id="phone"  placeholder="Vnesite telefonsko številko" required pattern="[0-9]{9}">
                            </div>
                        </div>
                    </div>
                    <!--
                    <div class="form-group">
                        <label for="email" class="cols-sm-2 control-label">Naslov:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"><i class="fa fa-map-marker fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="naslov" id="naslov"  placeholder="Vnesite naslov kmetije" required pattern="[a-zA-Z0-9 ]{2,35}]">
                            </div>
                        </div>
                    </div>
                    -->
                    <div class="form-group">
                        <label for="prevzem" class="cols-sm-2 control-label">Možnost prevzema:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"><i class="fa fa-pencil fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="Prevzem" id="prevzem"  placeholder="Vnesite dan in čas možnosti prevzema na kmetiji">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="cols-sm-2 control-label">Opis kmetije:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"><i class="fa fa-pencil fa" aria-hidden="true"></i></span></span>
                                <textarea name="Opis" rows="7" cols="69"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="imeUlice" class="cols-sm-2 control-label">Ulica:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-home"><i class="fa fa-pencil fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="imeUlice" id="imeUlice"  placeholder="Vnesite ime ulice">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="hisnaStevilka" class="cols-sm-2 control-label">Hišna številka:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-home"><i class="fa fa-pencil fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="hisnaStevilka" id="hisnaStevilka"  placeholder="Vnesite hišno številko">
                            </div>
                        </div>
                    </div>



                    <div class="form-group">
                        <label for="postnaStevilka" class="cols-sm-2 control-label">Postna številka:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"><i class="fa fa-pencil fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="postnaStevilka" id="postnaStevilka"  placeholder="Vnesite poštno številko">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="obcina" class="cols-sm-2 control-label">Občina:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"><i class="fa fa-pencil fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="obcina" id="obcina"  placeholder="Vnesite občino">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="regija" class="cols-sm-2 control-label">Regija:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-tree-deciduous"><i class="fa fa-pencil fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="regija" id="regija"  placeholder="Vnesite regijo">
                            </div>
                        </div>
                    </div>


                    <div class="form-group ">
                        <button type="submit" class="btn btn-primary btn-lg btn-block login-button gumbRegistracija">Dodaj kmetijo</button>
                    </div>

                </form>
            </div>
        </div>
        <div class="col-sm-3">
        </div>
    </div>
</div><br>

</body>
</html>
