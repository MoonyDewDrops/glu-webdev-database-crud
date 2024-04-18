-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 apr 2024 om 12:25
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `receptenboek`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ingredienten`
--

CREATE TABLE `ingredienten` (
  `id` int(10) UNSIGNED NOT NULL,
  `ingredient` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ingredienten`
--

INSERT INTO `ingredienten` (`id`, `ingredient`) VALUES
(1, 'Kruimige aardappels'),
(2, 'Rookworst'),
(3, 'spekblokjes/reepjes'),
(4, 'zout'),
(5, 'pepper'),
(6, 'azijn'),
(7, 'spaghetti'),
(8, 'Verse peterselie'),
(9, 'Parmezaanse kaas (geraspt)'),
(10, 'Eieren'),
(11, 'Grote tortilla wraps'),
(12, 'bonen'),
(13, 'stukjes kip (vegetarisch)'),
(14, 'kropje sla'),
(15, 'tomatensaus'),
(16, 'knoflook'),
(17, 'Ui'),
(18, 'Maïs'),
(19, 'Paprika'),
(20, 'geraspte kaas'),
(21, 'Burrito/Mexicaanse kruiden'),
(22, 'Rijst'),
(23, 'Zure room');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `receptenboek`
--

CREATE TABLE `receptenboek` (
  `id` int(10) UNSIGNED NOT NULL,
  `titel` varchar(50) NOT NULL,
  `aangemaakt_recept_datum` datetime NOT NULL,
  `recept_voor_aantal_personen` tinyint(4) NOT NULL,
  `bereidingstijd_recept` time NOT NULL,
  `gemiddelde_review_score_recept` decimal(4,2) NOT NULL,
  `schrijver_id` int(10) UNSIGNED NOT NULL,
  `stappen_id` int(10) UNSIGNED NOT NULL,
  `foto_id` int(10) UNSIGNED NOT NULL,
  `ingredienten_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `receptenboek`
--

INSERT INTO `receptenboek` (`id`, `titel`, `aangemaakt_recept_datum`, `recept_voor_aantal_personen`, `bereidingstijd_recept`, `gemiddelde_review_score_recept`, `schrijver_id`, `stappen_id`, `foto_id`, `ingredienten_id`) VALUES
(1, 'Boerenkool met worst.\r\n', '2007-05-17 15:10:36', 2, '00:30:00', 4.00, 1, 1, 1, 1),
(2, 'Pasta Carbonara', '2019-08-21 17:45:00', 2, '00:25:00', 6.00, 2, 2, 2, 2),
(3, 'Burrito met kip.', '2024-04-15 16:30:00', 2, '00:30:00', 4.00, 1, 3, 3, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `recept_foto's`
--

CREATE TABLE `recept_foto's` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto_1` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `recept_foto's`
--

INSERT INTO `recept_foto's` (`id`, `foto_1`) VALUES
(1, 'https://gluwebdev.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F0216a67a-859e-4730-996f-5d51b31fa395%2Fb6256955-2151-4ca7-a1f7-af708afe91ba%2FUntitled.png?table=block&id=aec15ea0-d9f9-473e-87d6-bcb113befe06&spaceId=0216a67a-859e-4730-996f-5d51b31fa395&width=1030&userId=&cache=v2'),
(2, 'https://gluwebdev.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F0216a67a-859e-4730-996f-5d51b31fa395%2Fd44e1f68-a4b0-4a86-b1b9-88486923c566%2FUntitled.png?table=block&id=daa4506b-a432-422b-92b7-f527314c4391&spaceId=0216a67a-859e-4730-996f-5d51b31fa395&width=1720&userId=&cache=v2'),
(3, 'https://gluwebdev.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F0216a67a-859e-4730-996f-5d51b31fa395%2F8ee84253-2904-4d97-ad95-23b989e89a54%2FUntitled.png?table=block&id=aa407839-433c-4a61-8c67-17a02197e7bd&spaceId=0216a67a-859e-4730-996f-5d51b31fa395&width=2000&userId=&cache=v2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `recept_ingredienten_specificaties`
--

CREATE TABLE `recept_ingredienten_specificaties` (
  `id` int(10) NOT NULL,
  `recipe_id` int(10) NOT NULL,
  `ingredient_id` int(10) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `unit_of_measurement` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `recept_ingredienten_specificaties`
--

INSERT INTO `recept_ingredienten_specificaties` (`id`, `recipe_id`, `ingredient_id`, `amount`, `unit_of_measurement`) VALUES
(1, 1, 1, '500', 'gram'),
(2, 1, 2, '1', ''),
(3, 1, 3, '100', 'gram'),
(4, 1, 4, 'snufje', ''),
(5, 1, 5, 'snufje', ''),
(6, 1, 6, 'scheutje', ''),
(7, 2, 7, '400', 'gram'),
(8, 2, 8, '', ''),
(9, 2, 9, '100', 'gram'),
(10, 2, 10, '3', ''),
(11, 2, 4, 'snuf', ''),
(12, 2, 5, 'snuf', ''),
(13, 3, 11, '4', ''),
(14, 3, 12, '200', 'gram'),
(15, 3, 13, '160', 'gram'),
(16, 3, 14, '1', ''),
(17, 3, 15, '100', 'ml'),
(18, 3, 16, '1', 'teen'),
(19, 3, 17, '1', ''),
(20, 3, 18, '70', 'gram'),
(21, 3, 19, '1', ''),
(22, 3, 20, 'handje', ''),
(23, 3, 21, '0.5', 'eetlepel'),
(24, 3, 22, '100', 'gram'),
(25, 3, 23, '125', 'ml');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `schrijvers`
--

CREATE TABLE `schrijvers` (
  `id` int(10) UNSIGNED NOT NULL,
  `schrijver` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `schrijvers`
--

INSERT INTO `schrijvers` (`id`, `schrijver`) VALUES
(1, 'Herman den Blijker'),
(2, 'RON BLAAUW');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `stappen`
--

CREATE TABLE `stappen` (
  `id` int(10) UNSIGNED NOT NULL,
  `recept_stap_1` varchar(350) NOT NULL,
  `recept_stap_2` varchar(350) NOT NULL,
  `recept_stap_3` varchar(350) NOT NULL,
  `recept_stap_4` varchar(350) NOT NULL,
  `recept_stap_5` varchar(350) NOT NULL,
  `recept_stap_6` varchar(350) NOT NULL,
  `recept_stap_7` varchar(350) NOT NULL DEFAULT 'Geen stap',
  `recept_stap_8` varchar(350) NOT NULL DEFAULT 'Geen stap'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `stappen`
--

INSERT INTO `stappen` (`id`, `recept_stap_1`, `recept_stap_2`, `recept_stap_3`, `recept_stap_4`, `recept_stap_5`, `recept_stap_6`, `recept_stap_7`, `recept_stap_8`) VALUES
(1, 'Schil de aardappels en snijd grote aardappels in tweeën.', 'Doe de boerenkool en aardappels in een pan en voeg water toe totdat alles goed onderstaat. Breng het geheel aan de kook en kook de aardappels en boerenkool ongeveer 20 minuten totdat de aardappels gaar zijn.', 'Bereid de rookworst volgens de verpakking. Zelf kook ik de rookworst mee in de pan met de aardappels en boerenkool.', 'Bak ondertussen in een andere pan de spekblokjes bruin en krokant, zonder olie toe te voegen.', 'Na ongeveer 20 minuten zijn de aardappels gaar, en giet je het geheel af. Stamp de aardappels met de boerenkool, een snufje zout en peper, azijn en de boter fijn (evt. kun je de azijn ook weglaten). Als de stamppot nog wat te droog is, voeg je een beetje extra boter of wat melk toe.', 'Schep als laatste de spekblokjes (met het vet) door de boerenkool stamppot en serveer het geheel met de rookworst.\r\n\r\nSchep als laatste de spekblokjes (met het vet) door de boerenkool stamppot en serveer het geheel met de rookworst.', 'Geen stap', 'Geen stap'),
(2, 'Doe de spekblokjes in een pan en bak ze mooi krokant. Ze hoeven niet helemaal uitgebakken te worden.', 'Zet ondertussen een grote pan water met een snufje zout op het vuur en als het water kookt voeg je de spaghetti toe. Kook de spaghetti in ongeveer 10 min al dente (of check de verpakking voor de bereidingswijze).', 'Voeg de pasta direct uit de pan waarin je het hebt gekookt toe aan de pan met spekjes toe en schep er doorheen. Zet het vuur uit van de pan met spekjes en spaghetti.', 'Voeg de geraspte Parmezaanse kaas toe en voeg er een klein beetje pasta kookvocht aan toe, zodat de kaas smelt.', 'Kluts ondertussen de eieren en voeg ze daarna al roerend toe. Blijf roeren totdat het een romige saus.', 'Garneer de pasta carbonara eventueel met een beetje kaas en peterselie. Pasta carbonara is lekker met een frisse salade.', 'Let op: Als de spaghetti te veel is afgekoeld, bindt de saus niet, maar als de spaghetti te heet is gaan de eieren stollen. Zet de pan daarom niet meer terug op het vuur.', 'Tip: voor een vegetarische variant kun je vegetarische spekjes gebruiken of ze vervangen door champignons of gezouten cashewnoten.'),
(3, 'Stap 1: Bereid de rijst\r\n\r\nSpoel de rijst grondig af onder koud water.\r\nBreng 200 ml water aan de kook in een pan.\r\nVoeg de rijst toe aan het kokende water en laat het sudderen op laag vuur tot al het water is opgenomen en de rijst gaar is, volg de instructies op de verpakking.\r\nHaal de pan van het vuur en laat de rijst afgedekt rusten.', 'Stap 2: Bereid de vulling\r\n\r\nSnijd de ui, knoflook en paprika fijn.\r\nVerhit wat olie in een pan op middelhoog vuur en voeg de gesneden ui en knoflook toe. Bak tot ze zacht en lichtbruin zijn.\r\nVoeg de paprika toe en bak deze tot hij zacht wordt.\r\nVoeg de stukjes kip (of vegetarische kip) toe aan de pan en bak ze tot ze gaar zijn.\r\nVoeg vervolgens d', 'Stap 3: Bereid de wraps\r\n\r\nVerwarm de tortilla wraps kort in een droge koekenpan of magnetron om ze zachter te maken.\r\nVerdeel de bereide rijst gelijkmatig over de wraps.\r\nSchep het bonen-kipmengsel op de rijst.', 'Stap 4: Monteer de burrito\'s\r\n\r\nLeg een paar blaadjes sla bovenop het bonen-kipmengsel.\r\nLepel wat tomatensaus en zure room over de vulling.\r\nBestrooi elk burrito met een beetje geraspte kaas.', 'Stap 5: Vouw de burrito\'s\r\n\r\nVouw eerst de zijkanten van de tortilla naar binnen en rol deze vervolgens strak op vanaf de onderkant, zodat de vulling goed is ingesloten.', 'Stap 6: Serveer\r\n\r\nSnijd de burrito\'s doormidden en serveer ze warm.\r\nJe kunt ze serveren met extra zure room, salsa, guacamole of verse kruiden naar keuze.\r\nGeniet van je zelfgemaakte burrito\'s!', 'Geen stap', 'Geen stap');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `ingredienten`
--
ALTER TABLE `ingredienten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `receptenboek`
--
ALTER TABLE `receptenboek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Constraint_FK_Schrijvers` (`schrijver_id`),
  ADD KEY `Constraint_FK_foto's` (`foto_id`),
  ADD KEY `Constraint_FK_stappen` (`stappen_id`);

--
-- Indexen voor tabel `recept_foto's`
--
ALTER TABLE `recept_foto's`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `recept_ingredienten_specificaties`
--
ALTER TABLE `recept_ingredienten_specificaties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `schrijvers`
--
ALTER TABLE `schrijvers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `stappen`
--
ALTER TABLE `stappen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `ingredienten`
--
ALTER TABLE `ingredienten`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `receptenboek`
--
ALTER TABLE `receptenboek`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `recept_foto's`
--
ALTER TABLE `recept_foto's`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `recept_ingredienten_specificaties`
--
ALTER TABLE `recept_ingredienten_specificaties`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT voor een tabel `schrijvers`
--
ALTER TABLE `schrijvers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `stappen`
--
ALTER TABLE `stappen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `receptenboek`
--
ALTER TABLE `receptenboek`
  ADD CONSTRAINT `Constraint_FK_Schrijvers` FOREIGN KEY (`schrijver_id`) REFERENCES `schrijvers` (`id`),
  ADD CONSTRAINT `Constraint_FK_foto's` FOREIGN KEY (`foto_id`) REFERENCES `recept_foto's` (`id`),
  ADD CONSTRAINT `Constraint_FK_stappen` FOREIGN KEY (`stappen_id`) REFERENCES `stappen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
