-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Mar 2023, 15:02
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
-- Baza danych: `ksiegarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `idklienta` int(11) NOT NULL,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`idklienta`, `imie`, `nazwisko`, `miejscowosc`) VALUES
(1, 'Łukasz', 'Lewandowski', 'Poznań'),
(2, 'Jan', 'Nowak', 'Katowice'),
(3, 'Maciej', 'Wójcik', 'Bydgoszcz'),
(4, 'Agnieszka', 'Psikuta', 'Lublin'),
(5, 'Tomasz', 'Mazur', 'Jelenia Góra'),
(6, 'Michał', 'Zieliński', 'Kraków'),
(7, 'Artur', 'Rutkowski', 'Kielce'),
(8, 'Mateusz', 'Skorupa', 'Gdańsk'),
(9, 'Jerzy', 'Rutkowski', 'Rybnik'),
(10, 'Joanna', 'Dostejewska', 'Pułtusk'),
(11, 'Franciszek', 'Janowski', 'Chorzów'),
(12, 'Andrzej', 'Grabowski', ':Krakowa'),
(13, 'Piotr', 'Salak', 'Miechowa'),
(14, 'Lukas', 'Kułak', 'Bilcza'),
(15, 'Gabriel', 'Achler', 'Morawica'),
(16, 'Kackper', 'Gołuchowksi', 'Kielce'),
(17, 'Mateusz', 'Mikołajczyk', 'Kielce'),
(18, 'Michał', 'Kumor', 'Morawica');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kontrahenci`
--

CREATE TABLE `kontrahenci` (
  `id_kontrahenta` int(11) DEFAULT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `id_zamowienia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `idksiazki` int(11) NOT NULL,
  `imieautora` text COLLATE utf8_polish_ci NOT NULL,
  `nazwiskoautora` text COLLATE utf8_polish_ci NOT NULL,
  `tytul` text COLLATE utf8_polish_ci NOT NULL,
  `cena` float NOT NULL,
  `cena_zakupu` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`idksiazki`, `imieautora`, `nazwiskoautora`, `tytul`, `cena`, `cena_zakupu`) VALUES
(1, 'Jan', 'Michalak', 'Zaawansowane programowanie w PHP', 25, NULL),
(2, 'Andrzej', 'Krawczyk', 'Windows 8 PL. Zaawansowana administracja systemem', 54.99, NULL),
(3, 'Paweł', 'Jakubowski', 'HTML5. Tworzenie witryn', 49.02, NULL),
(4, 'Tomasz', 'Kowalski', 'Urządzenia techniki komputerowej', 37.57, NULL),
(5, 'Łukasz', 'Pasternak', 'PHP. Tworzenie nowoczesnych stron WWW', 32.99, NULL),
(6, '', 'Grzębosz', 'Symfonia C++', 0, NULL),
(7, 'Cyprian', 'Achler', 'Psychoza', 66, NULL),
(8, 'Lunard', 'Hoherek', 'Ataki terrorystyczne i co robić w takich sytuacjach', 89, NULL),
(9, 'Mateusz', 'Kułak', 'Być przedsięborczy', 155, NULL),
(10, 'Luna', 'Laza', 'Moda i jej mroczne strony w sieci', 22, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `idzamowienia` int(11) NOT NULL,
  `idklienta` int(11) NOT NULL,
  `idksiazki` int(11) NOT NULL,
  `data` date NOT NULL,
  `status` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`idzamowienia`, `idklienta`, `idksiazki`, `data`, `status`) VALUES
(1, 2, 4, '2014-10-08', 'oczekiwanie'),
(2, 7, 1, '2014-09-05', 'wyslano'),
(3, 9, 1, '2014-10-11', 'wyslano'),
(4, 2, 2, '2014-10-15', 'oczekiwanie'),
(5, 2, 5, '2014-08-12', 'oczekiwanie'),
(6, 3, 2, '2014-10-20', 'wyslano'),
(7, 4, 3, '2014-08-14', 'wyslano'),
(8, 8, 1, '2014-08-19', 'wyslano'),
(9, 3, 5, '2014-11-19', 'wyslano'),
(10, 9, 2, '2014-12-28', 'oczekiwanie'),
(11, 7, 3, '0000-00-00', ''),
(12, 15, 6, '2022-02-28', 'wyslano'),
(13, 15, 7, '2022-06-12', 'oczekiwanie'),
(14, 17, 10, '2021-12-26', 'wyslano'),
(15, 8, 1, '2022-06-12', 'wyslano');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`idklienta`),
  ADD KEY `id` (`idklienta`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`idksiazki`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`idzamowienia`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `idklienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `idksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `idzamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
