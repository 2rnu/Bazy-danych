-- START -----------------------------------------------------------------


-- Dropy -----------------------------------------------------------------

-- 6 Zamowienie
DROP TABLE IF EXISTS `sklep`.`Zamowienie`;

-- 5 Szeczoly
DROP TABLE IF EXISTS `sklep`.`Szczegoly`;

-- 4 Kodkreskowy
DROP TABLE IF EXISTS `sklep`.`Kodkreskowy`;

-- 3 Magazyn
DROP TABLE IF EXISTS `sklep`.`Magazyn`;

-- 2 Towar
DROP TABLE IF EXISTS `sklep`.`Towar`;

-- 1 Klient
DROP TABLE IF EXISTS `sklep`.`Klient`;

-- Baza ;)
DROP DATABASE IF EXISTS `sklep`;


-- Tworzenie -------------------------------------------------------------

-- Baza ;)
CREATE SCHEMA IF NOT EXISTS `sklep` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci ;

-- 1 Klient
CREATE TABLE IF NOT EXISTS `sklep`.`Klient` (
  `Id_klienta` BIGINT(12) NOT NULL AUTO_INCREMENT,
  `Imie` VARCHAR(50) NOT NULL DEFAULT 'nieznane',
  `Imie2` VARCHAR(50) NULL DEFAULT '-----',
  `Nazwisko` VARCHAR(100) NOT NULL DEFAULT 'nieznane',
  `Kod_pocz` INT(5) NOT NULL DEFAULT 00000,
  `Miejscowosc` VARCHAR(100) NOT NULL DEFAULT 'nieznane',
  `Ulica` VARCHAR(150) NOT NULL DEFAULT 'nieznane',
  `Nr_domu` VARCHAR(5) NOT NULL DEFAULT '00000',
  `Nr_mieszkania` VARCHAR(5) NULL DEFAULT '-----',
  `NIP` BIGINT(12) NULL DEFAULT 000000000000,
  UNIQUE INDEX `Id_klienta_UNIQUE` (`Id_klienta` ASC),
  PRIMARY KEY (`Id_klienta`));

-- 2 Towar
CREATE TABLE IF NOT EXISTS `sklep`.`Towar` (
  `Id_towaru` INT(7) NOT NULL AUTO_INCREMENT,
  `Nazwa` VARCHAR(150) NOT NULL DEFAULT 'nieznane',
  `Opis` VARCHAR(255) NULL DEFAULT 'brak',
  `Cena_zakupu` DECIMAL(10,2) NOT NULL DEFAULT 0.0,
  `Cena_sprzedazy` DECIMAL(10,2) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`Id_towaru`),
  UNIQUE INDEX `Id_towaru_UNIQUE` (`Id_towaru` ASC));

-- 3 Magazyn
CREATE TABLE IF NOT EXISTS `sklep`.`Magazyn` (
  `Id_towaru` INT NOT NULL,
  `Ilosc` INT(10) NOT NULL DEFAULT 0,
  INDEX `fk_new_table_1_idx` (`Id_towaru` ASC),
  CONSTRAINT `fk_id_towaru_magazyn`
    FOREIGN KEY (`Id_towaru`)
    REFERENCES `sklep`.`Towar` (`Id_towaru`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- 4 Kodkreskowy
CREATE TABLE IF NOT EXISTS `sklep`.`Kodkreskowy` (
  `Id_kodkreskowy` VARCHAR(15) NOT NULL DEFAULT 'nieznany',
  `Id_towaru` INT(7) NOT NULL,
  PRIMARY KEY (`Id_kodkreskowy`),
  INDEX `fk_kodkreskowy_idx` (`Id_towaru` ASC),
  CONSTRAINT `fk_id_towaru_kodkreskowy`
    FOREIGN KEY (`Id_towaru`)
    REFERENCES `sklep`.`Towar` (`Id_towaru`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- 5 Szczegoly
CREATE TABLE IF NOT EXISTS `sklep`.`Szczegoly` (
  `Id_szczegoly` BIGINT(15) NOT NULL AUTO_INCREMENT,
  `Id_klienta` BIGINT(12) NOT NULL,
  `Data_zamowienia` DATETIME NOT NULL,
  `Data_sprzedazy` DATETIME NULL,
  `Kwota` DECIMAL(12,2) NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`Id_szczegoly`),
  UNIQUE INDEX `Id_szczegoly_UNIQUE` (`Id_szczegoly` ASC),
  INDEX `fk_id_klienta_szczegoly` (`Id_klienta` ASC),
  CONSTRAINT `fk_id_klienta_szczegoly`
    FOREIGN KEY (`Id_klienta`)
    REFERENCES `sklep`.`Klient` (`Id_klienta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- 6 Zamowienie
CREATE TABLE IF NOT EXISTS `sklep`.`Zamowienie` (
  `Id_szczegoly` BIGINT(15) NOT NULL,
  `Id_towaru` INT(7) NOT NULL,
  `Ilosc` INT(10) NOT NULL DEFAULT 1,
  INDEX `fk_id_szczegoly_zamowienie` (`Id_szczegoly` ASC),
  INDEX `fk_id_towaru_zamowienie` (`Id_towaru` ASC),
  CONSTRAINT `fk_id_szczegoly_zamowienie`
    FOREIGN KEY (`Id_szczegoly`)
    REFERENCES `sklep`.`Szczegoly` (`Id_szczegoly`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_towaru_zamowienie`
    FOREIGN KEY (`Id_towaru`)
    REFERENCES `sklep`.`Towar` (`Id_towaru`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- KONIEC ----------------------------------------------------------------