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
         <c:choose>
             <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==true}">
                 <a class="tekst" href="/profil">Profil</a>&nbsp&nbsp
             </c:when>
             <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==false}">
                 <a class="tekst"href="/registracija">Registracija</a>
             </c:when>
             <c:otherwise>
             </c:otherwise>
         </c:choose>
        <c:choose>
            <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==true}">
                <a class="tekst" href='<c:url value="/logout" />'>Logout</a>
            </c:when>
            <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==false}">
                <a class="tekst" href="/vpis">Vpis</a>&nbsp&nbsp
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>

	</span><br/>
        <div class="row">
            <div class="col-sm-3">
            </div>
            <div class="col-sm-6">
                <img  type="image/png" class="logo img-fluid" src="../images/eko2.png">
            </div>
            <div class="col-sm-3">
            </div>
        </div>
        <br/><br/>
        <nav class="navbar navbar-default navbar-justified">
            <div class="collapse navbar-collapse js-navbar-collapse">
                <ul class="nav navbar-nav " role="tablist">
                    <li><a class="tekst" href="/domov">Domov</a></li>
                    <li><a class="tekst" href="/onas">O nas</a></li>
                    <li><a class="tekst" href="/kmetije">Ponudniki</a></li>
                    <li class="dropdown dropdown-large">
                        <a href="/kmetije" class="dropdown-toggle tekst" data-toggle="dropdown">Kmetije<b class="caret"></b></a>

                        <ul class="dropdown-menu dropdown-menu-large  row">
                            <li class="col-sm-4">
                                <ul>
                                    <li class="dropdown-header text-center">POMURSKA REGIJA</li>
                                    <c:forEach items="${pomurska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                    <li class="divider"></li>
                                    <li class="dropdown-header text-center">KOROŠKA REGIJA</li>
                                    <c:forEach items="${koroska}" var="o">
                                        <li><a  href="kmetija/${o.idKmetija}"><p>${o.naziv}</p></a></li>
                                    </c:forEach>

                                </ul>
                            </li>
                            <li class="col-sm-4">
                                <ul>
                                    <li class="dropdown-header text-center">GORENJSKA REGIJA</li>
                                    <c:forEach items="${gorenjska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                    <li class="divider"></li>
                                    <li class="dropdown-header text-center">PODRAVSKA REGIJA</li>
                                    <c:forEach items="${podravska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                </ul>
                            </li>
                            <li class="col-sm-4">
                                <ul>
                                    <li class="dropdown-header text-center">DOLENJSKA REGIJA</li>
                                    <c:forEach items="${dolenjska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                    <li class="divider"></li>
                                    <li class="dropdown-header text-center">OSREDNJESLOVENSKA <br/>REGIJA</li>
                                    <c:forEach items="${osrednjeslovenska}" var="k">
                                        <li><a  href="kmetija/${k.idKmetija}">${k.naziv}</a></li>
                                    </c:forEach>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li><a class="tekst" href="/kontakt">Kontakt</a></li>
                    <c:choose>
                        <c:when test = "${pageContext.request.isUserInRole('ROLE_USER')==true}">
                            <li><a class="tekst" href="/kosarica">Košarica</a></li>
                        </c:when>
                        <c:otherwise>
                        </c:otherwise>
                    </c:choose>
                </ul>
                <div class="col-sm-3 col-md-3 pull-right">
                    <form action="isci" method="post">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Iskanje" name="freeText">
                            <div class="input-group-btn">
                                <button id="search-field-btn" class="btn btn-default">Išči
                                </button>
                            </div>
                        </div>
                    </form>
                </div>

            </div><!-- /.nav-collapse -->
        </nav>
    </div>
</nav>


<div class="container">
    <br>
    <div class="row main">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
            <div class="main-login main-center">
                <form method="POST" action="/dodajanjeKmetije" enctype="multipart/form-data">
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
                                <input type="text" class="form-control" name="TelefonskaStevilka" id="telefonskaStevilka"  placeholder="Vnesite telefonsko številko" required pattern="[0-9]{9}">
                            </div>
                        </div>
                    </div>
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
                                <textarea name="Opis" id="opis"  rows="7" cols="69"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="file" class="cols-sm-2 control-label">Dodajte fotografijo:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <p class="text-left"><input type="file" name="files" accept=".jpg, .jpeg, .png" multiple></p>
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
                        <label for="postnaStevilka" class="cols-sm-2 control-label">Poštna številka:</label>
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
                                <select class="form-control" name="regija" id="regija"  placeholder="Izberite regijo regijo">
                                    <option value="Pomurska">Pomurska</option>
                                    <option value="Podravska">Podravska</option>
                                    <option value="Koroška">Koroška</option>
                                    <option value="Dolenjska">Dolenjska</option>
                                    <option value="Gorenjska">Gorenjska</option>
                                    <option value="Osrednjeslovenska">Osredjeslovenska</option>
                                </select>

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
<script>
    var fileTypes = [
        'image/jpeg',
        'image/pjpeg',
        'image/png'
    ]
    var input = document.querySelector('#image_uploads');
    var preview = document.querySelector('#predogled');
    input.style.visibility = 'hidden';
    input.addEventListener('change', posodobiPregledSlik);
    function  posodobiPregledSlik() {
        while(preview.firstChild) {
            preview.removeChild(preview.firstChild);
        }
        var curFiles = input.files;
        if(curFiles.length !== 0) {
            var list = document.createElement('ol');
            preview.appendChild(list);
            for(var i = 0; i < curFiles.length; i++) {
                if(validFileType(curFiles[i])) {
                    var listItem = document.createElement('li');
                    listItem.setAttribute("class","list-group-item");
                    var para = document.createElement('span');
                    para.textContent = '' + curFiles[i].name+' ';
                    var image = document.createElement('img');
                    list.setAttribute("class","slikaZaFotografije");
                    image.src = window.URL.createObjectURL(curFiles[i]);
                    listItem.appendChild(para);
                    listItem.appendChild(image);
                    list.appendChild(document.createElement('BR'));
                }
                list.appendChild(listItem);
            }
        }
    }
    function validFileType(file) {
        for(var i = 0; i < fileTypes.length; i++) {
            if(file.type === fileTypes[i]) {
                return true;
            }
        }
        return false;
    }
</script>
</html>