-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 16. lis 2020, 12:14
-- Verze serveru: 10.4.11-MariaDB
-- Verze PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `knihy_os`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kategorie` int(11) NOT NULL,
  `kategorie` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `kategorie`
--

INSERT INTO `kategorie` (`id_kategorie`, `kategorie`) VALUES
(1, 'Světová a česká literatura do konce 18. stole'),
(2, 'Světová a česká 19. století'),
(3, 'Světová literatura 20. a 21. století'),
(4, 'Česká literatura 20. a 21. století');

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE `knihy` (
  `id_knihy` int(11) NOT NULL,
  `nazev_knihy` varchar(45) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `anotace` varchar(250) DEFAULT NULL,
  `kategorie_id_kategorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`id_knihy`, `nazev_knihy`, `autor`, `anotace`, `kategorie_id_kategorie`) VALUES
(1, ' Robinson Crusoe ', 'Defoe, Daniel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 1),
(2, ' Médea ', 'Euripides', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 1),
(3, ' Pýcha a předsudek ', 'Austenová, Jane', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 2),
(4, ' Nový epochální výlet pana Broučka, tentokrát', 'Čech, Svatopluk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 2),
(5, ' Oliver Twist ', 'Dickens, Charles', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 2),
(6, ' Svatý Xaverius ', 'Arbes, Jakub', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 2),
(7, ' Sbohem, armádo ', 'Hemingway, Ernest', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 3),
(8, ' Proměna ', 'Kafka, Franz', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 3),
(9, ' Cesta ', 'McCarthy, Cormac', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 3),
(10, ' Pianistka ', 'Jelinek, Elfriede', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 3),
(11, '1984', 'Orwell, George', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 3),
(12, ' Na západní frontě klid ', 'Remarque, Erich Maria', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 3),
(13, ' Bílá nemoc ', 'Čapek, Karel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 4),
(14, ' Povídky z jedné kapsy ', 'Čapek, Karel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 4),
(15, ' Válka s mloky ', 'Čapek, Karel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 4),
(16, ' Krysař ', 'Dyk, Viktor', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 4),
(17, ' K moři ', 'Soukupová, Petra', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 4),
(18, ' Kníška Karla Kryla ', 'Kryl, Karel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pulvinar. Duis condimentum augue id magna semper rutrum. Phasellus rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ex', 4);

-- --------------------------------------------------------

--
-- Struktura tabulky `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `polozka_menu` varchar(45) DEFAULT NULL,
  `displej_nazev` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `menu`
--

INSERT INTO `menu` (`id_menu`, `polozka_menu`, `displej_nazev`) VALUES
(1, 'home', 'Domů'),
(2, 'autori', 'Autoři'),
(3, 'dila', 'Díla');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kategorie`);

--
-- Klíče pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD PRIMARY KEY (`id_knihy`);

--
-- Klíče pro tabulku `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id_kategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `knihy`
--
ALTER TABLE `knihy`
  MODIFY `id_knihy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pro tabulku `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
