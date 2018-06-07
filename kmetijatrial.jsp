<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<html lang="sl">
<head>
    <title>EKO kmetija</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type ="text/javascript" src="css/script.js"></script>
    <script type ="text/javascript" src="css/jquerycolor.js"></script>

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
		<a class="tekst"href="registracija">Registracija</a>
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
    <nav class="navbar navbar-default navbar-justified">
        <div class="collapse navbar-collapse js-navbar-collapse">
            <ul class="nav navbar-nav " role="tablist">
                <li><a class="tekst" href="domov">Domov</a></li>
                <li><a class="tekst" href="onas">O nas</a></li>
                <li class="dropdown dropdown-large">
                    <a href="#" class="dropdown-toggle tekst" data-toggle="dropdown">Kmetije<b class="caret"></b></a>

                    <ul class="dropdown-menu dropdown-menu-large  row">
                        <li class="col-sm-4">
                            <ul>
                                <li class="dropdown-header text-center">POMURSKA REGIJA</li>
                                <li><a href="ekomilanrus">EKO Kmetija Milan Rus</a></li>
                                <li><a href="ekomatejzadravec">EKO kmetija Matej Zadravec</a></li>
                                <li><a href="ekozel">EKO kmetija Zel</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header text-center">KOROŠKA REGIJA</li>
                                <li><a href="ekomikl">EKO turistična kmetija Mikl</a></li>
                                <li><a href="ekolešnik">EKO turistična kmetija Lešnik</a></li>
                                <li><a href="ekomežner">EKO kmetija Mežner</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-4">
                            <ul>
                                <li class="dropdown-header text-center">GORENJSKA REGIJA</li>
                                <li><a href="ekopavlič">EKO kmetija Pavlič</a></li>
                                <li><a href="ekošuštar">Pri Šuštarju</a></li>
                                <li><a href="ekokokalj">EKO kmetija Kokalj </a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header text-center">PODRAVSKA REGIJA</li>
                                <li><a href="ekostergar">EKO kmetija Stergar</a></li>
                                <li><a href="ekokvar">EKO kmetija Kvas</a></li>
                                <li><a href="ekokoren">EKO Kmetija Koren</a></li>
                            </ul>
                        </li>
                        <li class="col-sm-4">
                            <ul>
                                <li class="dropdown-header text-center">DOLENJSKA REGIJA</li>
                                <li><a href="ekokastelic">Ekološka kmetija Kastelic</a></li>
                                <li><a href="ekoziherl">Ekološka kmetija Ziherl</a></li>
                                <li><a href="ekoraztresen">Turistična ekološka kmetija Raztresen</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header text-center">OSREDNJESLOVENSKA <br/>REGIJA</li>
                                <li><a href="ekofabjan">EKO kmetija Fabjan</a></li>
                                <li><a href="ekoleskovgaj">EKO kmetija Leskov Gaj </a></li>
                            </ul>
                        </li>

                    </ul>
                </li>
                <li><a class="tekst" href="produkti">Produkti</a></li>
                <li><a class="tekst" href="kontakt">Kontakt</a></li>
                <li><a class="tekst" href="košarica">Košarica</a></li>
            </ul>

        </div><!-- /.nav-collapse -->
    </nav>
    </nav>
</div>
    <div class ="body"> <!-- body -->

        <div class=container>
            <script>
                $(document).ready(function(){
                    $("#prikazi").click(function(){
                        $("#formaKomentar").show();
                    });
                });
            </script>
            <h2>EKO kmetija RUS</h2>
            <br>
            <div class="row">
                <div class="col-sm-4 text-center">
                    <img class="img-responsive rounded" src="slike/milan_rus.jpg">
                </div>

                <div class="col-sm-8 text-left">
                    <h3>O nas</h3>
                    <p>
                        Ekološka kmetija RUS je vključena v Združenje za razvoj miroljubnega kmetijstva, ki se trudi ta dober način kmetovanje uveljavljati v praksi. Kmetje se v Miroljubnem kmetijstvu spet učijo začutiti potrebe rastlin in polj, spoštovati vse življenjske oblike in tako delati skupaj z naravo.
                        Kmetija ponuja rastline in pridelke rastlinskega izvora, kot so: poljščine (rž, pira, proso, koruza, ajda, lan, ječmen). Ponujajo tudi predelane proizvode: moko, zdrobe, kaše in olja.

                    </p>

                </div>
            </div>

            <br>
            <div class="row">
                <div class="col-sm-4 text-left">
                    <ul class="rate-area">
                        <input type="radio" id="5-star" name="rating" value="5" /><label for="5-star" title="Odlično">5 stars</label>
                        <input type="radio" id="4-star" name="rating" value="4" /><label for="4-star" title="Dobro">4 stars</label>
                        <input type="radio" id="3-star" name="rating" value="3" /><label for="3-star" title="Povprečno">3 stars</label>
                        <input type="radio" id="2-star" name="rating" value="2" /><label for="2-star" title="Slabo">2 stars</label>
                        <input type="radio" id="1-star" name="rating" value="1" /><label for="1-star" title="Zelo slabo">1 star</label>
                    </ul>
                    <br/><br/><br/>
                    <h4>Mota 25, 9240 Ljutomer</h4>
                    <h4>+386 41914247 ali<br/>
                        mir.grunt@gmail.com
                    </h4>
                    <h4>Pon-sre 09:00-12:00 </h4>
                </div>
            </div>
            <br><br>

            <h3>Naša ponudba:</h3>
            <table class="table produkti">
               <%-- <c:forEach  items="${Izdelki}" var ="i">
                    <tr class="text-center">
                        <td>slika<br/>
                                ${i.naziv}<br/>
                                ${i.masa}<br/>
                                ${i.cena} <br/>
                            <input type="button" class="btn" value="+"/></td>
                    </tr>
                    <td>

                    </td>
                </c:forEach>--%>
                <tr>
                    <td class="text-center">
                        <img class="img-fluid slikaProdukt" src="../../slike/produkt_kasa.jpg">

                        <h4>Prosena kaša &nbsp<a><span class="glyphicon glyphicon-plus"></a></h4>
                        <h5>1kg</h5>
                        <h5>2,99€</h5>
                    </td>
                    <td class="text-center">
                        <img class="img-fluid slikaProdukt" src="../../slike/produkt_moka.jpg">
                        <h4>Koruzna moka &nbsp <a><span class="glyphicon glyphicon-plus"></a></h4>
                        <h5>1kg</h5>
                        <h5>3,99€</h5>
                    </td>
                    <td class="text-center">
                        <img class="img-fluid slikaProdukt" src="../../slike/produkt_olje.jpg">
                        <h4>Bučno olje  &nbsp<a><span class="glyphicon glyphicon-plus"></a></h4>
                        <h5>1kg</h5>
                        <h5>1,99€</h5>
                    </td>
                    <td class="text-center">
                        <img class="img-fluid slikaProdukt" src="../../slike/produkt_zdrob.jpg">
                        <h4>Koruzni zdrob &nbsp <a><span class="glyphicon glyphicon-plus"></a></h4>
                        <h5>1kg</h5>
                        <h5>3,99€</h5>
                    </td>
                </tr>
            </table>

            <!-- container -->
            <div class="row">
                <h3>Kaj pravijo kupci?</h3>
                <hr>
                <div class="col-sm-1">

                </div>
                <div class="col-sm-10">

                    <div class="table-responsive">
                        <table class="table">

                            <tbody>
                            <c:forEach items="${Komentar}" var="comment">
                                <c:forEach items="${Uporabniki}" var="user">
                                    <tr>
                                        <td>slika</td><!-- tu je uporabniška slika -->
                                        <td>${user.UporabniskoIme}</td><!-- tu more bit za uporabnika -->
                                        <td>${comment.vsebinaKomentar}</td>
                                    </tr>
                                </c:forEach>
                            </c:forEach>
                            </tbody>
                        </table>
                        <br/>

                        <form>
                            <div class="form-group" id="formaKomentar" style="display: none;" method="POST" action="/kmetija1">
                                <textarea class="form-control" id="dodajKomentar" rows="2" value="Dodajte komentar ..." name="vsebinaKomentar"></textarea>
                                <br/>
                            </div>
                            <button type="button" class="btn" id="prikazi">Dodaj komentar</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-1">
            </div>
        </div>
    </div>
</div> <!-- body -->
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
