-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Kwi 2023, 16:01
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towar`
--

CREATE TABLE `towar` (
  `Id_towaru` int(7) NOT NULL,
  `Nazwa` varchar(150) COLLATE utf8_polish_ci NOT NULL DEFAULT 'nieznane',
  `Opis` varchar(255) COLLATE utf8_polish_ci DEFAULT 'brak',
  `Cena_zakupu` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Cena_sprzedazy` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `towar`
--

INSERT INTO `towar` (`Id_towaru`, `Nazwa`, `Opis`, `Cena_zakupu`, `Cena_sprzedazy`) VALUES
(1, 'Uszczelka', 'Uszczelka do rury', '1.50', '2.50'),
(2, 'Pudło kartonowe', 'Do pakowania lub mieszkania', '15.70', '30.00'),
(3, 'Pudło kartonowe małe', 'Do pakowania', '5.00', '10.00'),
(4, 'Taśma klejąca przezroczysta', 'Do zaklejania buzi', '3.00', '5.00'),
(5, 'Taśma klejąca srebrna', 'Prawie do wszystkiego', '0.00', '0.00'),
(6, 'Uszczelka wzmocniona', 'Uszczelka do rury', '1.50', '2.50');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `towar`
--
ALTER TABLE `towar`
  ADD PRIMARY KEY (`Id_towaru`),
  ADD UNIQUE KEY `Id_towaru_UNIQUE` (`Id_towaru`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `towar`
--
ALTER TABLE `towar`
  MODIFY `Id_towaru` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
