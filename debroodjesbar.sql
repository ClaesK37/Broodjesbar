-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 26 okt 2020 om 14:16
-- Serverversie: 10.4.14-MariaDB
-- PHP-versie: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `debroodjesbar`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `broodjes`
--

CREATE TABLE `broodjes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `naam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `omschrijving` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prijs` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `broodjes`
--

INSERT INTO `broodjes` (`id`, `created_at`, `updated_at`, `naam`, `omschrijving`, `prijs`) VALUES
(1, NULL, NULL, 'Kaas', 'Broodje met jonge kaas', '1.90'),
(2, NULL, NULL, 'Ham', 'Broodje met natuurham', '1.90'),
(3, NULL, NULL, 'Kaas en Ham', 'Broodje met kaas en ham', '2.10'),
(4, NULL, NULL, 'Fitness Kip', 'Kip natuur, yoghurtdressing, perzik, tuinkers, tomaat en komkommer', '3.00'),
(5, NULL, NULL, 'Sombrero', 'Kip natuur, andalousesaus, rode paprika, mais, sla, komkommer, tomaat, ei en ui', '3.00'),
(6, NULL, NULL, 'Americain-Tartaar', 'Americain, tartaarsaus, ui, komkommer, ei en tuinkers', '3.00'),
(7, NULL, NULL, 'Indian Kip', 'Kip natuur, ananas, tuinkers, komkommer en curry dressing', '4.00'),
(8, NULL, NULL, 'Grieks', 'Feta, tuinkers, komkommer, tomaat, olijventapenade', '3.00'),
(9, NULL, NULL, 'Tonijntino', 'Tonijn pikant, ui, augurk, martinosaus en tobasco', '2.00'),
(10, NULL, NULL, 'Wrap exotisch', 'Kip natuur, cocktailsaus, sla, tomaat, komkommer, ei en ananas', '3.00'),
(11, NULL, NULL, 'Wrap kip/spek', 'Kip natuur, spek, BBQ saus, sla, tomaat en komkommer', '4.00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_23_131116_create_broodjes_table', 1),
(5, '2020_10_26_083126_create_bestellingen_table', 2),
(6, '2020_10_26_092159_create_bestellingen_table', 3),
(7, '2020_10_26_092854_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `naam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `omschrijving` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prijs` decimal(8,2) NOT NULL,
  `voornaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `naam`, `omschrijving`, `prijs`, `voornaam`) VALUES
(4, '2020-10-26 09:55:35', '2020-10-26 09:55:35', 'kaas en ham', 'Broodje met kaas en ham', '2.10', 'bert'),
(5, '2020-10-26 09:56:44', '2020-10-26 09:56:44', 'ham', 'Broodje met natuurhaml', '1.90', 'davy'),
(8, '2020-10-26 10:24:58', '2020-10-26 10:24:58', 'Wrap Exotisch', 'Kip natuur, cocktailsaus, sla, tomaat, komkommer, ei en ananas', '3.00', 'donald'),
(11, '2020-10-26 11:12:27', '2020-10-26 11:12:27', 'Tonijntino', 'Tonijntino', '3.00', 'gertie'),
(13, '2020-10-26 11:17:16', '2020-10-26 11:17:16', 'Americain-Tartaar', 'americain, tartaarsaus, ui, komkommer, ei en tuinkers', '3.00', 'bert'),
(15, '2020-10-26 11:41:01', '2020-10-26 11:41:01', 'Grieks', 'feta, tuinkers, komkommer, tomaat en olijventapenade', '3.00', 'annelies'),
(16, '2020-10-26 11:46:07', '2020-10-26 11:46:07', 'Kaas', 'Broodje met jonge kaas', '1.90', 'olijfje'),
(18, '2020-10-26 11:56:59', '2020-10-26 11:56:59', 'Fitness Kip', 'Kip natuur, yoghurtdressing, perzik, tuinkers, tomaat en komkommer', '3.00', 'albert'),
(19, '2020-10-26 11:59:39', '2020-10-26 11:59:39', 'Grieks', 'feta, tuinkers, komkommer, tomaat en olijventapenade', '3.00', 'Dieter'),
(20, '2020-10-26 12:11:01', '2020-10-26 12:11:01', 'Tonijntino', 'tonijn pikant, ui, augurk, martinosaus en (tabasco)', '2.00', 'robert'),
(21, '2020-10-26 12:15:08', '2020-10-26 12:15:08', 'Indian Kip', 'kip natuur, ananas, tuinkers, komkommer en curry dressing', '4.00', 'harold');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kim', 'kim@test.com', NULL, '$2y$10$68Njjm/s7/tOTC7uNrPEoOJHdfG.6KFpoTAMhQQJqzbMQRgAI7kB6', NULL, '2020-10-26 11:26:41', '2020-10-26 11:26:41'),
(2, 'bruno', 'bruno@broodjesbar.com', NULL, '$2y$10$QpSjjWkfn3WoOQ5nvCGoxe6Owr/SOukOSS.PHYyLqfkx0A2i75byq', NULL, '2020-10-26 11:42:08', '2020-10-26 11:42:08');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `broodjes`
--
ALTER TABLE `broodjes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `broodjes`
--
ALTER TABLE `broodjes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
