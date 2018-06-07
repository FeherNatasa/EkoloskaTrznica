CREATE TABLE IF NOT EXISTS 'ekohiska'.'komentar'(
	'idKomentar' INT NOT NULL AUTO_INCREMENT,
	'vsebina' VARCHAR(200) NOT NULL,
	PRIMARY KEY ('idKomentar'),
	INDEX 'fk_komentar_kmetija_idx'('tk_idKmetija' ASC),
	CONSTRAINT 'fk_komentar_kmetija'
		FOREIGN KEY('tk_idKmetija')
		REFERENCES 'ekohiska'.'kmetija'('idKmetija')
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	INDEX 'fk_komentar_uporabnik_idx'('tk_idUporabnik' ASC)
	CONSTRAINT 'fk_komentar_uporabnik'
		FOREIGN KEY('tk_idUporabnik')
		REFERENCES 'ekohiska'.'uporabnik'('idUporabnik')
		ON DELETE CASCADE
		ON UPDATE NO ACTION
		)
	ENGINE = InnoDB;
 
 CREATE TABLE IF NOT EXISTS 'ekohiska'.'ocena'(
	'id' INT NOT NULL AUTO_INCREMENT,
	'kmetija_ocena' INT NOT NULL,
	PRIMARY KEY ('id'),
	INDEX 'fk_ocena_kmetija_idx'('tk_idKmetija' ASC),
	CONSTRAINT 'fk_ocena_kmetija'
		FOREIGN KEY('tk_idKmetija')
		REFERENCES 'ekohiska'.'kmetija'('idKmetija')
		ON DELETE CASCADE
		ON UPDATE NO ACTION
	)
	ENGINE = InnoDB;
