CREATE TABLE IF NOT EXISTS `ekohiska`.`Uporabnik` (
  `idUporabnik` INT NOT NULL AUTO_INCREMENT,
  `ime` VARCHAR(45) NOT NULL,
  `priimek` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefonskaStevilka` VARCHAR(9) NULL,
  `geslo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUporabnik`))
ENGINE = InnoDB;

insert into Uporabnik (ime,priimek,email,telefonskaStevilka,geslo) values('Bla', 'Bla', 'Bla', '256', 'haa');
