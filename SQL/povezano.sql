CREATE TABLE IF NOT EXISTS`ekohiska`.`Uporabnik` (
  `idUporabnik` INT NOT NULL AUTO_INCREMENT,
  `ime` VARCHAR(45) NOT NULL,
  `priimek` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `uporabniskoIme` VARCHAR(9) NOT NULL,
  `geslo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUporabnik`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `ekohiska`.`Kraj` (
  `idKraj` INT NOT NULL AUTO_INCREMENT,
  `obcina` VARCHAR(45) NOT NULL,
  `regija` VARCHAR(45) NOT NULL,
  `postnaStevilka` INT NOT NULL,
  PRIMARY KEY (`idKraj`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `ekohiska`.`Naslov` (
  `idNaslov` INT NOT NULL AUTO_INCREMENT,
  `imeUlice` VARCHAR(45) NOT NULL,
  `hisnaStevilka` VARCHAR(45) NOT NULL,
  `tk_idKraj` INT NOT NULL,
  PRIMARY KEY (`idNaslov`),
  INDEX `fk_Naslov_Kraj_idx` (`tk_idKraj` ASC),
  CONSTRAINT `fk_Naslov_Kraj`
    FOREIGN KEY (`tk_idKraj`)
    REFERENCES `ekohiska`.`Kraj` (`idKraj`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `ekohiska`.`Kmetija` (
  `idKmetija` INT NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(45) NOT NULL,
  `opis` VARCHAR(500) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefonskaStevilka` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`idKmetija`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `ekohiska`.`Ponudba` (
  `idPonudba` INT NOT NULL AUTO_INCREMENT,
  `tk_idKmetija` INT NOT NULL,
  `tk_idTipPonudbe` INT NOT NULL,
  PRIMARY KEY (`idPonudba`),
  INDEX `fk_Ponudba_Kmetija_idx` (`tk_idKmetija` ASC),
  CONSTRAINT `fk_Ponudba_Kmetija`
    FOREIGN KEY (`tk_idKmetija`)
    REFERENCES `ekohiska`.`Kmetija` (`idKmetija`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    INDEX `fk_Ponudba_TipPonudbe_idx` (`tk_idTipPonudbe` ASC),
  CONSTRAINT `fk_Ponudba_TipPonudbe`
    FOREIGN KEY (`tk_idTipPonudbe`)
    REFERENCES `ekohiska`.`TipPonudbe` (`idTipPonudbe`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `ekohiska`.`TipUporabnika` (
  `idTipUporabnika` INT NOT NULL AUTO_INCREMENT,
  `kmetija` BOOLEAN NOT NULL,
  `opis` VARCHAR(500) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefonskaStevilka` VARCHAR(9) NOT NULL,
  `tk_idPonudba` INT NOT NULL,
  PRIMARY KEY (`idKmetija`),
  INDEX `fk_TipUporabnika_Ponudba_idx` (`tk_idPonudba` ASC),
  CONSTRAINT `fk_TipUporabnika_Ponudba`
    FOREIGN KEY (`tk_idPonudba`)
    REFERENCES `ekohiska`.`Ponudba` (`idPonudba`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
