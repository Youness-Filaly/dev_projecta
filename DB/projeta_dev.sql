-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 15 avr. 2020 à 03:37
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projeta_dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rabat', '2020-04-14 17:13:55', '2020-04-14 17:13:55'),
(2, 'Casa', '2020-04-14 17:13:55', '2020-04-14 17:13:55'),
(3, 'Tangier', '2020-04-14 17:13:55', '2020-04-14 17:13:55'),
(4, 'agadir', '2020-04-14 18:24:22', '2020-04-14 18:24:22'),
(5, 'marrakesh', '2020-04-14 18:28:00', '2020-04-14 18:28:00'),
(6, 'safi', '2020-04-14 19:45:45', '2020-04-14 19:45:45');

-- --------------------------------------------------------

--
-- Structure de la table `cities_partners`
--

DROP TABLE IF EXISTS `cities_partners`;
CREATE TABLE IF NOT EXISTS `cities_partners` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `partners_id` int(10) UNSIGNED NOT NULL,
  `cities_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_partners_partners_id_foreign` (`partners_id`),
  KEY `cities_partners_cities_id_foreign` (`cities_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cities_partners`
--

INSERT INTO `cities_partners` (`id`, `partners_id`, `cities_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `delivery_times`
--

DROP TABLE IF EXISTS `delivery_times`;
CREATE TABLE IF NOT EXISTS `delivery_times` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `delivery_times`
--

INSERT INTO `delivery_times` (`id`, `delivery_time`, `created_at`, `updated_at`) VALUES
(1, '14->18', '2020-04-14 18:42:06', '2020-04-14 18:42:06'),
(2, '9->12', '2020-04-14 19:18:01', '2020-04-14 19:18:01'),
(3, '10->13', '2020-04-14 19:18:45', '2020-04-14 19:18:45'),
(4, '15->19', '2020-04-14 19:19:03', '2020-04-14 19:19:03'),
(5, '9->13', '2020-04-14 19:19:17', '2020-04-14 19:19:17'),
(6, '14->18', '2020-04-14 19:19:42', '2020-04-14 19:19:42'),
(7, '18-20', '2020-04-14 19:20:26', '2020-04-14 19:20:26');

-- --------------------------------------------------------

--
-- Structure de la table `delivery_times_cities`
--

DROP TABLE IF EXISTS `delivery_times_cities`;
CREATE TABLE IF NOT EXISTS `delivery_times_cities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deliveryTime_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_times_cities_deliverytime_id_foreign` (`deliveryTime_id`),
  KEY `delivery_times_cities_city_id_foreign` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `delivery_times_cities`
--

INSERT INTO `delivery_times_cities` (`id`, `deliveryTime_id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-04-14 19:53:43', '2020-04-14 19:53:43'),
(2, 2, 1, '2020-04-14 19:55:14', '2020-04-14 19:55:14'),
(3, 3, 2, '2020-04-14 19:56:05', '2020-04-14 19:56:05'),
(4, 4, 2, '2020-04-14 19:56:09', '2020-04-14 19:56:09'),
(5, 5, 3, '2020-04-14 19:56:18', '2020-04-14 19:56:18'),
(6, 6, 3, '2020-04-14 19:56:21', '2020-04-14 19:56:21'),
(7, 7, 3, '2020-04-14 19:56:25', '2020-04-14 19:56:25');

-- --------------------------------------------------------

--
-- Structure de la table `excluding_delivery_times`
--

DROP TABLE IF EXISTS `excluding_delivery_times`;
CREATE TABLE IF NOT EXISTS `excluding_delivery_times` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `Time_Off` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `excluding_delivery_times_city_id_foreign` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `excluding_delivery_times`
--

INSERT INTO `excluding_delivery_times` (`id`, `day`, `Time_Off`, `city_id`, `created_at`, `updated_at`) VALUES
(1, '2020-04-15', 'All', 1, '2020-04-14 22:31:13', '2020-04-14 22:31:13'),
(2, '2020-04-15', '10->13', 2, '2020-04-14 22:32:23', '2020-04-14 22:32:23'),
(3, '2020-04-15', '9->13', 3, '2020-04-15 02:35:53', '2020-04-15 02:35:53'),
(4, '2020-04-15', '18-20', 3, '2020-04-15 02:36:34', '2020-04-15 02:36:34');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_14_143610_create_cities_table', 1),
(5, '2020_04_14_143728_create_partners_table', 1),
(6, '2020_04_14_143856_create_delivery_times_table', 1),
(7, '2020_04_14_151546_create_delivery_times_cities_table', 1),
(8, '2020_04_14_154558_create_foreign_key_for_delivery_times_cities_table', 1),
(9, '2020_04_14_171603_create_partners_cities_table', 1),
(10, '2020_04_14_172644_create_foreing_for_partners_cities_table', 1),
(11, '2020_04_14_211939_create_excluding_delivery_times_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_partner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partners`
--

INSERT INTO `partners` (`id`, `name_partner`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', '2020-04-14 17:13:55', '2020-04-14 17:13:55'),
(2, 'Hassan', '2020-04-14 17:13:55', '2020-04-14 17:13:55'),
(3, 'Nada', '2020-04-14 17:13:55', '2020-04-14 17:13:55');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
