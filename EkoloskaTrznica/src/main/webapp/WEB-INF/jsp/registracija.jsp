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
		<a class="tekst" href="vpis">Vpis</a>
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
                <a class="tekst" href="domov">Domov</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="onas">O nas</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="#">Kmetije</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="#">Produkti</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="kontakt">Kontakt</a>
            </div>
            <div class="col-sm-1">
                <a class="tekst" href="#">Košarica</a>
            </div>
            <div class="col-sm-3 ">
            </div>
        </div>
        <hr>
    </div>
</nav><br/>

<div class="container">
    <form>
    <div class="row main">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
            <div class="main-login main-center">
                <form method="POST" action="/registracija">
                    <div class="form-group">
                        <label for="ime" class="cols-sm-2 control-label">Ime</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"><i class="fa fa-user fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="Ime" id="ime" placeholder="Vnesite ime" required pattern="^([a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ime" class="cols-sm-2 control-label">Priimek</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"><i class="fa fa-user fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="Priimek" id="priimek" placeholder="Vnesite priimek" required pattern="^([a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="cols-sm-2 control-label">E-naslov</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"><i class="fa fa-envelope fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="Email" id="email"  placeholder="Vnesite e-naslov" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
                            </div>
                        </div>
                    </div>
                    <!--
                    <div class="form-group">
                        <label for="tip" class="cols-sm-2 control-label">Tip uporabnika:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-star-empty"><i class="fa fa-users fa" aria-hidden="true"></i></span></span>
                                <select class="form-control" name="tip" id="tip" required>
                                    <option>Kupec</option>
                                    <option>Prodajalec</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    -->
                    <div class="form-group">
                        <label for="UporabniskoIme" class="cols-sm-2 control-label">Uporabniško ime</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"><i class="fa fa-users fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="UporabniskoIme" id="UporabniskoIme"  placeholder="Vnesite uporanbiško ime" required pattern="^[a-z0-9_-]{3,15}$"/> <!-- male crke, stevilke, podcrtaji, 3-15 znakov -->
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="geslo" class="cols-sm-2 control-label">Geslo</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span></span>
                                <input type="password" class="form-control" name="Geslo" id="geslo"  placeholder="Vnesite geslo" required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"/> <!-- velika, mala, stevilke -->
                            </div>
                        </div>
                    </div>
                    <!--
                    <div class="form-group">
                        <label for="potrdiGeslo" class="cols-sm-2 control-label">Ponovite geslo</label>
                        <div class="cols-sm-10">
                            <div class="input-group"> <!-- ta glyphicon se mora ob pravilnem ponovnem vnosu gesla spremenit v kljukico
                                <span class="input-group-addon"><span class="glyphicon glyphicon-remove"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span></span>
                                <input type="password" class="form-control" name="potrdiGeslo" id="potrdiGeslo"  placeholder="Ponoven vnos gesla" required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"/> <!-- velika, mala, stevilke
                            </div>
                        </div>
                    </div>
        -->
                    <div class="form-group ">
                        <button type="submit" class="btn btn-primary btn-lg btn-block login-button gumbRegistracija">Registriraj se</button>
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
<script>
    var geslo = document.getElementById("geslo")
        , potrdi = document.getElementById("potrdiGeslo");
    function validatePassword(){
        if(geslo.value != potrdi.value) {
            potrdi.setCustomValidity("Gesli se ne ujemata");
        } else {
            potrdi.setCustomValidity('');
        }
    }
    geslo.onchange = validatePassword;
    potrdi.onkeyup = validatePassword;
</script>
</html>