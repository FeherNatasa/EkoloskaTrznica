<!DOCTYPE html>
<html>
<head>
  <title>Kmetija ime</title>
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
<h4>Mota 25, 9240 Ljutomer</h4>
<h4>+386 41914247 ali<br/>
mir.grunt@gmail.com
</h4>
<h4>Pon-sre 09:00-12:00 </h4>
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
