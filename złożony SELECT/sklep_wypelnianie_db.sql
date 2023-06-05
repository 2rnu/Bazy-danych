-- uzupełnianie tabeli Klient
INSERT INTO `sklep`.`Klient`
  (`Imie`,`Imie2`,`Nazwisko`,`Kod_pocz`,`Miejscowosc`,`Ulica`,`Nr_domu`,`Nr_mieszkania`)
  VALUES
  ('Jan','Marian','Pospieszalski',25600,'Kielce','Dziwna','152A','15');
INSERT INTO `sklep`.`Klient`
  (`Imie`,`Imie2`,`Nazwisko`,`Kod_pocz`,`Miejscowosc`,`Ulica`,`Nr_domu`,`Nr_mieszkania`)
  VALUES
  ('Andrzej','','Pospieszalski',25600,'Kielce','Dziwna','152A','16');
INSERT INTO `sklep`.`Klient`
  (`Imie`,`Imie2`,`Nazwisko`,`Kod_pocz`,`Miejscowosc`,`Ulica`,`Nr_domu`,`Nr_mieszkania`)
  VALUES
  ('Marcin','Marian','Niewadzki',01500,'Warszawa','Świętokrzyska','1','');
INSERT INTO `sklep`.`Klient`
  (`Imie`,`Imie2`,`Nazwisko`,`Kod_pocz`,`Miejscowosc`,`Ulica`,`Nr_domu`,`Nr_mieszkania`)
  VALUES
  ('Henryk','Arkadiusz','Kowalski',01610,'Warszawa','Puławska','320','10');
INSERT INTO `sklep`.`Klient`
  (`Imie`,`Imie2`,`Nazwisko`,`Kod_pocz`,`Miejscowosc`,`Ulica`,`Nr_domu`,`Nr_mieszkania`)
  VALUES
  ('Juliusz','','Wern','','','','','');
INSERT INTO `sklep`.`Klient`
  (`Imie`,`Imie2`,`Nazwisko`,`Kod_pocz`,`Miejscowosc`,`Ulica`,`Nr_domu`,`Nr_mieszkania`)
  VALUES
  ('Alfred','Manfred','Kozacki',40123,'Kraków','Kielecka','15','');


-- uzupełnianie tabeli Towar
INSERT INTO `sklep`.`Towar`
  (`Nazwa`,`Opis`,`Cena_zakupu`,`Cena_sprzedazy`)
  VALUES
  ('Uszczelka','Uszczelka do rury',1.5,2.5);
INSERT INTO `sklep`.`Towar`
  (`Nazwa`,`Opis`,`Cena_zakupu`,`Cena_sprzedazy`)
  VALUES
  ('Pudło kartonowe','Do pakowania lub mieszkania',15.7,30.0);
INSERT INTO `sklep`.`Towar`
  (`Nazwa`,`Opis`,`Cena_zakupu`,`Cena_sprzedazy`)
  VALUES
  ('Pudło kartonowe małe','Do pakowania',5.0,10.0);
INSERT INTO `sklep`.`Towar`
  (`Nazwa`,`Opis`,`Cena_zakupu`,`Cena_sprzedazy`)
  VALUES
  ('Taśma klejąca przezroczysta','Do zaklejania buzi',3.0,5.0);
INSERT INTO `sklep`.`Towar`
  (`Nazwa`,`Opis`,`Cena_zakupu`,`Cena_sprzedazy`)
  VALUES
  ('Taśma klejąca srebrna','Prawie do wszystkiego','','');
INSERT INTO `sklep`.`Towar`
  (`Nazwa`,`Opis`,`Cena_zakupu`,`Cena_sprzedazy`)
  VALUES
  ('Uszczelka wzmocniona','Uszczelka do rury',1.5,2.5);



-- uzupełnianie tabeli Magazyn
INSERT INTO `sklep`.`Magazyn`
  (`Id_towaru`,`Ilosc`)
  VALUES
  (1,15);
INSERT INTO `sklep`.`Magazyn`
  (`Id_towaru`,`Ilosc`)
  VALUES
  (2,1);
INSERT INTO `sklep`.`Magazyn`
  (`Id_towaru`,`Ilosc`)
  VALUES
  (3,5);
INSERT INTO `sklep`.`Magazyn`
  (`Id_towaru`,`Ilosc`)
  VALUES
  (4,6);
INSERT INTO `sklep`.`Magazyn`
  (`Id_towaru`,`Ilosc`)
  VALUES
  (5,21);
INSERT INTO `sklep`.`Magazyn`
  (`Id_towaru`,`Ilosc`)
  VALUES
  (6,3);


-- uzupełnianie tabeli Kodkreskowy
INSERT INTO `sklep`.`Kodkreskowy`
  (`Id_towaru`,`Id_kodkreskowy`)
  VALUES
  (1,'123456789012345');
INSERT INTO `sklep`.`Kodkreskowy`
  (`Id_towaru`,`Id_kodkreskowy`)
  VALUES
  (2,'BBBBBBBBBBBBBBB');
INSERT INTO `sklep`.`Kodkreskowy`
  (`Id_towaru`,`Id_kodkreskowy`)
  VALUES
  (3,'CCCCCCCCCCCCCCC');
INSERT INTO `sklep`.`Kodkreskowy`
  (`Id_towaru`,`Id_kodkreskowy`)
  VALUES
  (4,'AAAAAAAAAAAAAAA');
INSERT INTO `sklep`.`Kodkreskowy`
  (`Id_towaru`,`Id_kodkreskowy`)
  VALUES
  (5,'333333333333333');
INSERT INTO `sklep`.`Kodkreskowy`
  (`Id_towaru`,`Id_kodkreskowy`)
  VALUES
  (6,'111111111111111');



-- uzupełnianie tabeli Szczegoly
INSERT INTO `sklep`.`Szczegoly`
  (`Id_klienta`,`Data_zamowienia`,`Data_sprzedazy`,`Kwota`)
  VALUES
  (1,'2015-09-01 10:00:00','2015-09-23 10:31:39',39.0);
INSERT INTO `sklep`.`Szczegoly`
  (`Id_klienta`,`Data_zamowienia`,`Data_sprzedazy`,`Kwota`)
  VALUES
  (1,'2015-09-10 11:59:28','',1928.0);
INSERT INTO `sklep`.`Szczegoly`
  (`Id_klienta`,`Data_zamowienia`,`Data_sprzedazy`,`Kwota`)
  VALUES
  (2,'2015-09-10 12:01:10','2015-09-13 17:37:01',13.5);
INSERT INTO `sklep`.`Szczegoly`
  (`Id_klienta`,`Data_zamowienia`,`Data_sprzedazy`,`Kwota`)
  VALUES
  (2,'2015-09-10 12:07:10','2015-09-13 17:37:01',38.2);
INSERT INTO `sklep`.`Szczegoly`
  (`Id_klienta`,`Data_zamowienia`,`Data_sprzedazy`,`Kwota`)
  VALUES
  (3,'2015-09-11 10:07:00','',90.0);
INSERT INTO `sklep`.`Szczegoly`
  (`Id_klienta`,`Data_zamowienia`,`Data_sprzedazy`,`Kwota`)
  VALUES
  (4,'2015-09-11 10:28:00','2015-09-12 13:28:09',139.1);
INSERT INTO `sklep`.`Szczegoly`
  (`Id_klienta`,`Data_zamowienia`,`Data_sprzedazy`,`Kwota`)
  VALUES
  (5,'2015-09-14 20:37:10','2015-09-17 13:02:00',7589.38);
INSERT INTO `sklep`.`Szczegoly`
  (`Id_klienta`,`Data_zamowienia`,`Data_sprzedazy`,`Kwota`)
  VALUES
  (6,'2015-09-14 22:02:38','2015-09-17 17:37:01',1320.2);


-- uzupełnianie tabeli Zamowienie
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (1,1,7);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (1,3,5);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (2,2,20);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (2,6,30);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (3,2,1);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (3,3,7);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (4,5,10);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (4,4,2);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (5,2,2);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (5,3,3);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (5,5,38);
INSERT INTO `sklep`.`Zamowienie`
  (`Id_szczegoly`,`Id_towaru`,`Ilosc`)
  VALUES
  (6,6,3);
