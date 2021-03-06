
/*brisanje tabel*/

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS TIP_UPORABNIKA;
DROP TABLE IF EXISTS UPORABNIK;
DROP TABLE IF EXISTS KMETIJA;
DROP TABLE IF EXISTS BIVANJE;
DROP TABLE IF EXISTS NASLOV;
DROP TABLE IF EXISTS KRAJ;
DROP TABLE IF EXISTS PONUDBA; 
DROP TABLE IF EXISTS TIP_PONUDBE; 
DROP TABLE IF EXISTS IZDELEK; 
DROP TABLE IF EXISTS PAKET; 
DROP TABLE IF EXISTS CENA;
DROP TABLE IF EXISTS CENIKI;
DROP TABLE IF EXISTS KOSARICA;
DROP TABLE IF EXISTS RACUN;
SET FOREIGN_KEY_CHECKS = 1;


/*ustvarjanje tabel*/
/*uporabnik*/
CREATE TABLE UPORABNIK (
ID_UPORABNIK INTEGER NOT NULL,
IME VARCHAR(4) NOT NULL,
PRIIMEK VARCHAR(30) NOT NULL,
EMAIL VARCHAR(30) NOT NULL,
UPORABNISKO_IME VARCHAR(30) NOT NULL,
GESLO VARCHAR(30) NOT NULL,
TK_ID_TIP_UPORABNIKA INT NOT NULL
);

ALTER TABLE UPORABNIK
ADD CONSTRAINT PK_UPORABNIK PRIMARY KEY (ID_UPORABNIK); 

/*tip uporabnika*/
CREATE TABLE TIP_UPORABNIKA (
ID_TIP_UPORABNIKA INTEGER NOT NULL,
KMETIJA BOOLEAN NOT NULL,
TK_ID_PONUDBA INT NOT NULL
);

ALTER TABLE TIP_UPORABNIKA
ADD CONSTRAINT PK_TIP_UPORABNIKA PRIMARY KEY (ID_TIP_UPORABNIKA); 

ALTER TABLE UPORABNIK
ADD CONSTRAINT TK_UPORABNIK_ID_TIP_UPORABNIKA FOREIGN KEY
(TK_ID_TIP_UPORABNIKA) REFERENCES TIP_UPORABNIKA(ID_TIP_UPORABNIKA);

/*kraj*/
CREATE TABLE KRAJ (
ID_KRAJ INTEGER NOT NULL,
POSTNA_STEVILKA VARCHAR(4) NOT NULL,
OBCINA VARCHAR(30) NOT NULL,
REGIJA VARCHAR(30) NOT NULL,
TK_ID_NASLOV INTEGER NOT NULL
);

ALTER TABLE KRAJ 
ADD CONSTRAINT PK_KRAJ PRIMARY KEY (ID_KRAJ); 

/*naslov*/
CREATE TABLE NASLOV (
ID_NASLOV INTEGER NOT NULL,
IME_ULICE VARCHAR(45) NOT NULL,
HISNA_STEVILKA VARCHAR (6) NOT NULL,
TK_ID_BIVANJE INTEGER NOT NULL
);

ALTER TABLE NASLOV
ADD CONSTRAINT PK_NASLOV PRIMARY KEY (ID_NASLOV);

ALTER TABLE KRAJ
ADD CONSTRAINT TK_KRAJ_ID_NASLOV FOREIGN KEY
(TK_ID_NASLOV) REFERENCES NASLOV(ID_NASLOV);

/*bivanje*/
CREATE TABLE BIVANJE (
ID_BIVANJE INTEGER NOT NULL,
STEVILO_STRANK INTEGER NOT NULL,
TK_ID_KMETIJA INTEGER NOT NULL
);

ALTER TABLE BIVANJE
ADD CONSTRAINT PK_BIVANJE PRIMARY KEY (ID_BIVANJE);

ALTER TABLE NASLOV
ADD CONSTRAINT TK_NASLOV_ID_BIVANJE FOREIGN KEY
(TK_ID_BIVANJE) REFERENCES BIVANJE(ID_BIVANJE);

/*kmetija*/
CREATE TABLE KMETIJA(
ID_KMETIJA INTEGER NOT NULL,
NAZIV VARCHAR(30) NOT NULL,
OPIS VARCHAR(300) NOT NULL,
EMAIL VARCHAR(30) NOT NULL,
TELEFONSKA_STEVILKA VARCHAR(30) NOT NULL
);

ALTER TABLE KMETIJA
ADD CONSTRAINT PK_KMETIJA PRIMARY KEY (ID_KMETIJA);

ALTER TABLE BIVANJE
ADD CONSTRAINT TK_BIVANJE_ID_KMETIJA FOREIGN KEY
(TK_ID_KMETIJA) REFERENCES KMETIJA(ID_KMETIJA);

/*ponudba*/
CREATE TABLE PONUDBA (
ID_PONUDBA INTEGER NOT NULL,
TK_ID_KMETIJA INTEGER NOT NULL,
TK_ID_TIP_PONUDBE INTEGER NOT NULL
);

ALTER TABLE PONUDBA
ADD CONSTRAINT PK_PONUDBA PRIMARY KEY (ID_PONUDBA);

ALTER TABLE PONUDBA
ADD CONSTRAINT TK_PONUDBA_ID_KMETIJA FOREIGN KEY
(TK_ID_KMETIJA) REFERENCES KMETIJA(ID_KMETIJA);

ALTER TABLE TIP_UPORABNIKA
ADD CONSTRAINT TK_TIP_UPORABNIKA_ID_PONUDBA FOREIGN KEY
(TK_ID_PONUDBA) REFERENCES PONUDBA(ID_PONUDBA);

/*tip poudbe*/
CREATE TABLE TIP_PONUDBE (
ID_TIP_PONUDBE INTEGER NOT NULL,
KOLICINA INTEGER NOT NULL
);

ALTER TABLE TIP_PONUDBE
ADD CONSTRAINT PK_TIP_PONUDBE PRIMARY KEY (ID_TIP_PONUDBE);

ALTER TABLE PONUDBA
ADD CONSTRAINT TK_PONUDBA_ID_TIP_PONUDBE FOREIGN KEY
(TK_ID_TIP_PONUDBE) REFERENCES TIP_PONUDBE(ID_TIP_PONUDBE);

/*izdelek*/
CREATE TABLE IZDELEK(
ID_IZDELEK INTEGER NOT NULL,
NAZIV VARCHAR(30) NOT NULL,
TK_ID_TIP_PONUDBE INTEGER NOT NULL
);

ALTER TABLE IZDELEK
ADD CONSTRAINT PK_IZDELEK PRIMARY KEY (ID_IZDELEK);

ALTER TABLE IZDELEK
ADD CONSTRAINT TK_IZDELEK_ID_TIP_PONUDBE FOREIGN KEY
(TK_ID_TIP_PONUDBE) REFERENCES TIP_PONUDBE(ID_TIP_PONUDBE);

/*paket*/
CREATE TABLE PAKET(
ID_PAKET INTEGER NOT NULL,
NAZIV VARCHAR(30) NOT NULL,
TK_ID_TIP_PONUDBE INTEGER NOT NULL
);

ALTER TABLE PAKET
ADD CONSTRAINT PK_PAKET PRIMARY KEY (ID_PAKET);

ALTER TABLE PAKET
ADD CONSTRAINT TK_PAKET_ID_TIP_PONUDBE FOREIGN KEY
(TK_ID_TIP_PONUDBE) REFERENCES TIP_PONUDBE(ID_TIP_PONUDBE);

/*cenik*/
CREATE TABLE CENIK(
ID_CENIK INTEGER NOT NULL,
IME_CENIKA VARCHAR(30) NOT NULL,
DATUM_VELJAVNOSTI DATE NOT NULL,
TK_PONUDBA INTEGER NOT NULL,
TK_CENA INTEGER NOT NULL
);

ALTER TABLE CENIK
ADD CONSTRAINT PK_CENIK PRIMARY KEY (ID_CENIK);

ALTER TABLE CENIK
ADD CONSTRAINT TK_CENIK_ID_PONUDBA FOREIGN KEY
(TK_ID_PONUDBA) REFERENCES PONUDBA(ID_PONUDBA);

/*cena*/
CREATE TABLE CENA(
ID_CENA INTEGER NOT NULL,
CENA DOUBLE NOT NULL,
DATUM_VELJAVNOSTI DATE NOT NULL
);

ALTER TABLE CENA
ADD CONSTRAINT PK_CENA PRIMARY KEY (ID_CENA);

ALTER TABLE CENIK
ADD CONSTRAINT TK_CENIK_ID_CENA FOREIGN KEY
(TK_ID_CENA) REFERENCES CENA(ID_CENA);

/*kosarica*/
CREATE TABLE KOSARICA(
ID_KOSARICA INTEGER NOT NULL,
STEVILO_ARTIKLOV INTEGER NOT NULL,
TK_PONUDBA INTEGER NOT NULL,
TK_RACUN INTEGER NOT NULL
);

ALTER TABLE KOSARICA
ADD CONSTRAINT PK_KOSARICA PRIMARY KEY (ID_KOSARICA);

ALTER TABLE KOSARICA
ADD CONSTRAINT TK_KOSARICA_ID_PONUDBA FOREIGN KEY
(TK_ID_PONUDBA) REFERENCES PONUDBA(ID_PONUDBA);

/*racun*/
CREATE TABLE RACUN(
ID_RACUN INTEGER NOT NULL,
STEVILKA_RQACUNA VARCHAR(30) NOT NULL,
DATUM_VEJAVNOSTI DATE NOT NULL
);

ALTER TABLE RACUN
ADD CONSTRAINT PK_RACUN PRIMARY KEY (ID_RACUN);

ALTER TABLE KOSARICA
ADD CONSTRAINT TK_KOSARICA_ID_RACUN FOREIGN KEY
(TK_ID_RACUN) REFERENCES RACUN(ID_RACUN);


















