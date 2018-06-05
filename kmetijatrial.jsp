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
 <link rel="stylesheet" type="text/css" href="koda/css_praktikum.css">
  <link href='https://www.fonts.com/font/exljbris/museo-slab?QueryFontType=Web&src=GoogleWebFonts' rel='stylesheet' type='text/css'>
  <style>
  </style>
</head>
<body>

<nav class="container header">
  <div class="container-fluid text-center">
	<span class="align-text-top spanheader">
		<a class="tekst" href="vpis.html">Vpis</a>&nbsp&nbsp
		<a class="tekst"href="registracija.html">Registracija</a>
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
			<li><a class="tekst" href="domov.html">Domov</a></li>
			<li><a class="tekst" href="onas.html">O nas</a></li>	
			<li class="dropdown dropdown-large">
				<a href="#" class="dropdown-toggle tekst" data-toggle="dropdown">Kmetije<b class="caret"></b></a>
				
				<ul class="dropdown-menu dropdown-menu-large  row">
					<li class="col-sm-4">
						<ul>
							<li class="dropdown-header text-center">POMURSKA REGIJA</li>
							<li class="divider"></li>
							<li class="dropdown-header text-center">KOROŠKA REGIJA</li>
							<li><a href="#">kmetija1</a></li>
						</ul>
					</li>
					<li class="col-sm-4">
						<ul>
							<li class="dropdown-header text-center">GORENJSKA REGIJA</li>
							<li><a href="#">kmetija1</a></li>
							<li class="dropdown-header text-center">PODRAVSKA REGIJA</li>
							<li><a href="#">kmetija1</a></li>
						</ul>
					</li>
					<li class="col-sm-4">
						<ul>
							<li class="dropdown-header text-center">DOLENJSKA REGIJA</li>
							<li><a href="#">kmetija1</a></li>
							<li class="divider"></li>
							<li class="dropdown-header text-center">OSREDNJESLOVENSKA <br/>REGIJA</li>
							<li><a href="#">kmetija1</a></li>
						</ul>
					</li>

				</ul>
			</li>
			<li><a class="tekst" href="produkti.html">Produkti</a></li>
			<li><a class="tekst" href="kontakt.html">Kontakt</a></li>
			<li><a class="tekst" href="košarica.html">Košarica</a></li>
		</ul>	
	</div><!-- /.nav-collapse -->
	</nav>
	<hr>
	</div>
</nav>

<div class ="body"> <!-- body -->

<div class=container>

<h2>EKO kmetija RUS</h2>
<br>
<div class="row">
<div class="col-sm-4 text-center">
<img class="slikaProdukt img-responsive rounded" src="https://www.regiovitalis.si/img/w800-c4x3/upload/gallery/70/turisticna-kmetija-ferencovi.jpg">
</div>

<div class="col-sm-8 text-left">
<h4>O nas</h4> 
<p>Ekološka kmetija RUS je vključena v Združenje za razvoj miroljubnega kmetijstva, 
ki se trudi ta dober način kmetovanje uveljavljati v praksi. Kmetje se v Miroljubnem kmetijstvu spet učijo začutiti potrebe rastlin in polj, 
spoštovati vse življenjske oblike in tako delati skupaj z naravo.
Kmetija ponuja rastline in pridelke rastlinskega izvora, kot so: poljščine (rž, pira, proso, koruza, ajda, lan, ječmen). 
Ponujajo tudi predelane proizvode: moko, zdrobe, kaše in olja.  
</p>

</div>
</div>

<br>
<div class="row">
<div class="col-sm-4 text-left">
<img class="img-fluid rating" src="slike/tomato.png">
<img class="img-fluid rating" src="slike/tomato.png">
<img class="img-fluid rating" src="slike/tomato.png">
<img class="img-fluid rating" src="slike/tomato.png">
<img class="img-fluid rating" src="slike/tomato.png">
<br/><br/>
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
				<c:forEach  items="${Izdelki}" var ="i">
					<tr class="text-center">
						<td>slika<br/>
						${i.naziv}<br/>
						${i.masa}<br/>
						${i.cena} </td>
					</tr>
				</c:forEach>
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
	<script>
		$(document).ready(function(){
			$("#prikazi").click(function(){
				$("#formaKomentar").show();
			});
		});
	</script>
</body>
</html>
