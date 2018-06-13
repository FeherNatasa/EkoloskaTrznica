<p align="center"><img src="eko.png" alt="EkoHiska" title="EkoHiska" width="500" height="150"/></p>


## Kdo smo 
[<img alt="BorsicTeja" src="https://avatars1.githubusercontent.com/u/33715799?s=460&v=4" width="100">](https://github.com/BorsicTeja) |[<img alt="FeherNatasa" src="https://avatars3.githubusercontent.com/u/33715929?s=460&v=4" width="100">](https://github.com/FeherNatasa) |[<img alt="Gornikpina" src="https://avatars2.githubusercontent.com/u/33715956?s=460&v=4" width="100">](https://github.com/Gornikpina) |[<img alt="KitekMaja" src="https://avatars2.githubusercontent.com/u/33865439?s=460&v=4" width="100">](https://github.com/KitekMaja) |
:---: |:---: |:---: |:---: |
[BorsicTeja](https://github.com/BorsicTeja) |[FeherNatasa](https://github.com/FeherNatasa) |[Gornikpina](https://github.com/Gornikpina) |[KitekMaja](https://github.com/KitekMaja) |

Projekt je bil izveden v sklopu predmeta Praktikum 1, FERI ITK UN.
Mentor: Mitja Gradišnik


## Naš projekt 
Sistem v pomoč pri trženju ekoloških izdelkov, ki jih pridelujejo ekološke kmetije.
Vzpostavili smo spletno stran, ki obiskovalcem omogoča pregled ekoloških kmetij ter pregled produktov, ki jih le te ponujajo.
Funkcionalnosti:
* pregled kmetij po regijah, pregled njihovih produktov
* nakup produktov
* dodajanje novih kmetij ter njihovih izdelkov (z obveznimi podatki)
* registracija ter prijava uporabnikov, urejanje profila 
* uporabniki imajo možnost ocenitve ter dodajanja komentarja kmetijam
* iskanje po produktih


## Navodila za namestitev 
Za namestitev našega projekta boste potrebovali nameščen IntelliJ ter MySQL Workbench, ki je nujno potreben za uspešno delovanje projekta. 
Inštalacija MySQL: namestite si uporabniško ime ter geslo za strežnik. 
Ustvarite lokalni strežnik ter na njem novo shemo, v katero vstavite skripto: "povezano.sql" (najdete jo v: EkoloskaTrzniza/SQL/povezano.sql).
Za odprtje projekta: 
1. na našem repozitoriju pri opciji Clone or download, izberite Download.zip. Zip datoteko nato razširite na poljubno mesto v vašem računalniku.
2. v IntelliJ odprite file -> Open -> izberite razširjeno mapo na lokaciji kamor ste jo shranili 
3. omogočiti morate tudi avtomatski izvoz vseh Maven odvisnosti 
3. v apllicationproperties nastavite vaše ime ter geslo za povezavo z bazo (isto kot imate nastavljeno v MySQL), pomembno je tudi da se ujemajo tudi vrata (port) ter ime baze
4. za zagon projekta: view -> Tool Windows -> Maven Project -> izberete datoteko pom.xml
5. Med Plugins izberete Spring-boot, ter nato spring-boot:run
V izbranem brskalniku nato dostopate do spletne aplikacije.


<p align="center"><img src="Nata-a/applicationp.PNG" alt="EkoHiska" title="EkoHiska"/></p>
<p align="center"><img src="Nata-a/maven.PNG" alt="EkoHiska" title="EkoHiska" width="300" height="350"/></p>



