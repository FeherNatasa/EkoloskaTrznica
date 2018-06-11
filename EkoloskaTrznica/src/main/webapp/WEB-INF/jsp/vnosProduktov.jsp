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
    <div class="row main">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-6">
            <div class="main-login main-center">
                 <form method="post" action="/dodajanjeProduktov" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="naziv" class="cols-sm-2 control-label">Naziv produkta:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-tag"><i class="fa fa-tag fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="Naziv" id="naziv" placeholder="Vnesite naziv produkta" >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="masa" class="cols-sm-2 control-label">Masa:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"><i class="fa fa-pencil fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="Masa" id="masa"  placeholder="Vnesite maso" required pattern="([0-9]{1,})">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cena" class="cols-sm-2 control-label">Cena:</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-euro"><i class="fa fa-euro fa" aria-hidden="true"></i></span></span>
                                <input type="text" class="form-control" name="Cena" id="cena"  placeholder="Vnesite ceno" required pattern="^\d+(?:\.\d{1,2})?$">
                            </div>
                        </div>
                    </div>
                     <div class="form-group">
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <p class="text-left">Dodajte fotografijo:<input type="file" name="files" accept=".jpg, .jpeg, .png" multiple></p>
                            </div>
                        </div>
                    </div>
                    <div class="form-group ">
                        <button type="submit" class="btn btn-primary btn-lg btn-block login-button gumbDodajProdukt">Dodaj produkt</button>
                    </div>

                </form>
            </div>
        </div>
        <div class="col-sm-3">
        </div>
    </div>
</div><br>

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
</body>
</html>
