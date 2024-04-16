-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 apr 2024 om 15:52
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
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productID` varchar(50) NOT NULL,
  `title` varchar(25) NOT NULL,
  `artist` varchar(20) NOT NULL,
  `picture` varchar(255) NOT NULL DEFAULT 'No image found',
  `description` text NOT NULL DEFAULT 'No description found',
  `category` varchar(50) NOT NULL,
  `price` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `productID`, `title`, `artist`, `picture`, `description`, `category`, `price`) VALUES
(1, 'abce83e6-9ff1-435f-9189-0e93dcf14829', 'Stone Cold Killer - Dustt', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b27337f7b15671c5778cf0a24408', 'A sharaX original. Created for the purpose of practicing more with using vocals in their music.', 'Original', 17.99),
(2, '57327307-f429-423e-b79a-6026299923f9', 'V.I.P. - Dreamtale Origin', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b2735eeb8bef2852830aca370ecc', 'A sharaX original. A try at phonk along with ethnic instrument elements, first aiming for agressive phonk, but settling for more of a \'chill phonky club vibe\'.', 'Original', 17.99),
(3, 'd1167f65-0fe7-4166-a452-4849953271f0', 'Disbelief - Undertale Rem', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b273edc69ca99ecaa858859916d6', 'A undertale au remix. Gotten from the fan made disbelief track, this is more based off of the 3rd phase of the fan made battle, chosen from the parts they liked best.', 'Undertale AU', 14.99),
(4, 'aac18fa2-52da-4ccc-87bb-5c8a541e4dc8', 'Infamous - Dusttale Origi', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b27393e217d47ab46afb24e2add4', 'A SharaX original. Created whilst working on their frenchcore skills, but with SharaX\'s style.', 'Original', 16.99),
(5, '425e6bec-8d30-491b-9e0a-92d3563a6a63', 'Defiance - Underfell Orig', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b27361c527fbc1d9bd0b09ef7da1', 'A SharaX original. One with a special drop, with a little bit of Redlight\'s main melody mixed in.', 'Original', 13.99),
(6, 'a2c4dea8-d91f-4fde-8d13-76421fac6792', 'Psychostasia - Errortale ', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b273ffbee89074df18aeb7b61c58', 'A SharaX original. A similar track to electrostatic, but with a new melody, but still the same fun vibe!', 'Original', 13.99),
(7, '6cf71701-9b8d-4735-86a3-35f32eae52e4', 'Attack of the Killer Quee', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b27390929a488d253121a9e8a2d6', 'A Deltarune Remix. SharaX\'s favourite Deltarune\'s battle theme, so of course they remixed it!', 'Deltarune Remix', 10.99),
(8, '5a26fd65-ef05-431c-b42e-02f019f9123d', 'Obsession - Dusttale Orig', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b2736a487b8ee6230dceba4725f2', 'A SharaX original. Vocals brought back for this track after a long time.', 'Original', 14.99),
(9, '16d815a0-6fcf-4f96-8b3e-d78eedef7286', 'BIG SHOT - Deltarune Remi', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b27344c914f478ca06b3fe8076a2', 'A Deltarune remix. Another one of SharaX\'s favourite characters alongside Queen. Made not shortly after Deltarune chapter 2 it\'s release.', 'Deltarune Remix', 11.99),
(10, 'e2b9efa7-64b4-4958-89d3-25b3524bc4de', 'Hysterical - Deltarune Re', 'SharaX', 'https://i.scdn.co/image/ab67616d0000b273bce6b3d91965fe4b8fa47ed6', 'A Deltarune remix. Quickly made within 3 hours for your listening fun!', 'Deltarune Remix', 10.99);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
