-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 09:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `texteditor`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, NULL),
(2, 'Spanish', 'es', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_01_160001_create_texts_table', 2),
(5, '2024_06_01_162141_create_languages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7DN2szhLNtBVM7CTrO5HsNpIh1Sd5zy7yHkHBI5h', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidTdncWtkMEdwOTR6WnBOc1VPYzZxQksyeVRqQTVJNlZEOWZ1cjZkdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lbiI7fXM6NjoibG9jYWxlIjtzOjI6ImVuIjt9', 1717684037),
('9CACFPsjXPOp08ABCQwk4HgpqFmBVcwkYd8ZhSIP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT1h5WDltRmNyQ3FxM0s1eVBhRU0zcUlITWQySTk2QktmTzBrWU9zUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lcyI7fXM6NjoibG9jYWxlIjtzOjI6ImVzIjt9', 1717952228),
('NMfoO8gTrljwqJD1UyDVwTkJAha56MUHVEnCHyc0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZWpFSE9QTnRnbUdXY05vZVRRcVowTDFkYWUySm5EdWZsVURIcloxdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lcy90ZXh0LWVkaXRvci84Ijt9czo2OiJsb2NhbGUiO3M6MjoiZXMiO30=', 1718001327);

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(8, '{\"en\":\"William Shakespeare\",\"es\":\"William Shakespeare\"}', '{\"en\":\"<!DOCTYPE html PUBLIC \\\"-//W3C//DTD HTML 4.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/REC-html40/loose.dtd\\\">\\n<html><body><p><img data-filename=\\\"William_Shakespeare_by_John_Taylor,_edited.jpg\\\" style=\\\"width: 132.8px; height: 169.416px; float: left;\\\" class=\\\"note-float-left\\\" src=\\\"/storage/uploads/HkLcoFZrW9.jpeg\\\"><b style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">William Shakespeare</b><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;(</span><abbr title=\\\"circa\\\" style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">c.</abbr><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;23</span><sup id=\\\"cite_ref-3\\\" class=\\\"reference\\\" style=\\\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://en.wikipedia.org/wiki/William_Shakespeare#cite_note-3\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">[a]</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;April 1564 &ndash; 23 April 1616)</span><sup id=\\\"cite_ref-5\\\" class=\\\"reference\\\" style=\\\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://en.wikipedia.org/wiki/William_Shakespeare#cite_note-5\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">[b]</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;was an English&nbsp;</span><a href=\\\"https://en.wikipedia.org/wiki/Playwright\\\" title=\\\"Playwright\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">playwright</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">, poet, and actor. He is widely regarded as the greatest writer in the English language and the world\'s pre-eminent dramatist.</span><sup id=\\\"cite_ref-FOOTNOTEGreenblatt200511_6-0\\\" class=\\\"reference\\\" style=\\\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://en.wikipedia.org/wiki/William_Shakespeare#cite_note-FOOTNOTEGreenblatt200511-6\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">[4]</a></sup><sup id=\\\"cite_ref-FOOTNOTEBevington20021&ndash;3_7-0\\\" class=\\\"reference\\\" style=\\\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://en.wikipedia.org/wiki/William_Shakespeare#cite_note-FOOTNOTEBevington20021%E2%80%933-7\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">[5]</a></sup><sup id=\\\"cite_ref-FOOTNOTEWells1997399_8-0\\\" class=\\\"reference\\\" style=\\\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://en.wikipedia.org/wiki/William_Shakespeare#cite_note-FOOTNOTEWells1997399-8\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">[6]</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;He is often called England\'s&nbsp;</span><a href=\\\"https://en.wikipedia.org/wiki/National_poet\\\" title=\\\"National poet\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">national poet</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;and the \\\"</span><a href=\\\"https://en.wikipedia.org/wiki/Bard\\\" title=\\\"Bard\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">Bard</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;of&nbsp;</span><a href=\\\"https://en.wikipedia.org/wiki/River_Avon,_Warwickshire\\\" title=\\\"River Avon, Warwickshire\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">Avon</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">\\\" (or simply \\\"the Bard\\\"). His extant works, including&nbsp;</span><a href=\\\"https://en.wikipedia.org/wiki/William_Shakespeare%27s_collaborations\\\" title=\\\"\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">collaborations</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">, consist of some&nbsp;</span><a href=\\\"https://en.wikipedia.org/wiki/Shakespeare%27s_plays\\\" title=\\\"Shakespeare\'s plays\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">39 plays</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">,&nbsp;</span><a href=\\\"https://en.wikipedia.org/wiki/Shakespeare%27s_sonnets\\\" title=\\\"Shakespeare\'s sonnets\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">154 sonnets</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">, three long&nbsp;</span><a href=\\\"https://en.wikipedia.org/wiki/Narrative_poem\\\" class=\\\"mw-redirect\\\" title=\\\"Narrative poem\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">narrative poems</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">, and a few other verses, some of uncertain authorship. His plays have been&nbsp;</span><a href=\\\"https://en.wikipedia.org/wiki/List_of_translations_of_works_by_William_Shakespeare\\\" title=\\\"List of translations of works by William Shakespeare\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">translated</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;into every major&nbsp;</span><a href=\\\"https://en.wikipedia.org/wiki/Modern_language\\\" title=\\\"Modern language\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\\\">living language</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;and are performed more often than those of any other playwright.</span><sup id=\\\"cite_ref-FOOTNOTECraig20033_9-0\\\" class=\\\"reference\\\" style=\\\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://en.wikipedia.org/wiki/William_Shakespeare#cite_note-FOOTNOTECraig20033-9\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">[7]</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\">&nbsp;Shakespeare remains arguably the most influential writer in the English language, and his works continue to be studied and reinterpreted.</span></p><p><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\\\"><br></span><br></p></body></html>\\n\",\"es\":\"<!DOCTYPE html PUBLIC \\\"-//W3C//DTD HTML 4.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/REC-html40/loose.dtd\\\">\\n<html><body><p><img data-filename=\\\"William_Shakespeare_by_John_Taylor,_edited.jpg\\\" style=\\\"width: 158.8px; float: left; height: 202.586px;\\\" class=\\\"note-float-left\\\" src=\\\"/storage/uploads/0cjTxZfaCs.jpeg\\\"><b style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">William Shakespeare</b><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&nbsp;(</span><a href=\\\"https://es.wikipedia.org/wiki/Stratford-upon-Avon\\\" title=\\\"Stratford-upon-Avon\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 16px;\\\">Stratford-upon-Avon</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">, bautizado el 26 de abril de 1565&nbsp;</span><sup style=\\\"line-height: 1em; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://es.wikipedia.org/wiki/Calendario_juliano\\\" title=\\\"Calendario juliano\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">jul.</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">/6 de mayo&nbsp;</span><sup style=\\\"line-height: 1em; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://es.wikipedia.org/wiki/Calendario_gregoriano\\\" title=\\\"\\\" style=\\\"text-decoration-line: underline; color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">greg.</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&ndash;23 de abril de 1616&nbsp;</span><sup style=\\\"line-height: 1em; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://es.wikipedia.org/wiki/Calendario_juliano\\\" title=\\\"Calendario juliano\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">jul.</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">/3 de mayo&nbsp;</span><sup style=\\\"line-height: 1em; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://es.wikipedia.org/wiki/Calendario_gregoriano\\\" title=\\\"Calendario gregoriano\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">greg.</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">)</span><sup id=\\\"cite_ref-1\\\" class=\\\"reference separada\\\" style=\\\"line-height: 1em; unicode-bidi: isolate; text-wrap: nowrap; margin-right: 0.6ch; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://es.wikipedia.org/wiki/William_Shakespeare#cite_note-1\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">1</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&#8203; fue un&nbsp;</span><a href=\\\"https://es.wikipedia.org/wiki/Dramaturgo\\\" title=\\\"Dramaturgo\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 16px;\\\">dramaturgo</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">,&nbsp;</span><a href=\\\"https://es.wikipedia.org/wiki/Poeta\\\" title=\\\"Poeta\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 16px;\\\">poeta</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&nbsp;y&nbsp;</span><a href=\\\"https://es.wikipedia.org/wiki/Actor\\\" title=\\\"Actor\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 16px;\\\">actor</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&nbsp;</span><a href=\\\"https://es.wikipedia.org/wiki/Inglaterra\\\" title=\\\"Inglaterra\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 16px;\\\">ingl&eacute;s</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">. Conocido en ocasiones como&nbsp;</span><i style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">el Bardo de Avon (o el Bardo)</i><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">, se le considera el escritor m&aacute;s importante en&nbsp;</span><a href=\\\"https://es.wikipedia.org/wiki/Lengua_inglesa\\\" class=\\\"mw-redirect\\\" title=\\\"Lengua inglesa\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 16px;\\\">lengua inglesa</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">, uno de los m&aacute;s c&eacute;lebres de la literatura universal.</span><sup id=\\\"cite_ref-2\\\" class=\\\"reference separada\\\" style=\\\"line-height: 1em; unicode-bidi: isolate; text-wrap: nowrap; margin-right: 0.6ch; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://es.wikipedia.org/wiki/William_Shakespeare#cite_note-2\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">2</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&#8203;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\"><br></span><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&nbsp; &nbsp; &nbsp; Shakespeare fue poeta y dramaturgo venerado ya en su tiempo, pero su reputaci&oacute;n no alcanz&oacute; las alt&iacute;simas cotas actuales hasta el siglo&nbsp;</span><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-caps: small-caps; font-variant-alternates: normal; font-variant-position: normal; text-transform: lowercase;\\\">xix</span><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">. Los&nbsp;</span><a href=\\\"https://es.wikipedia.org/wiki/Rom%C3%A1ntico\\\" class=\\\"mw-redirect\\\" title=\\\"Rom&aacute;ntico\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 16px;\\\">rom&aacute;nticos</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">, particularmente, aclamaron su genio, y los&nbsp;</span><a href=\\\"https://es.wikipedia.org/wiki/%C3%89poca_victoriana\\\" title=\\\"&Eacute;poca victoriana\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 16px;\\\">victorianos</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&nbsp;adoraban a Shakespeare con una devoci&oacute;n que&nbsp;</span><a href=\\\"https://es.wikipedia.org/wiki/George_Bernard_Shaw\\\" title=\\\"George Bernard Shaw\\\" style=\\\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 16px;\\\">George Bernard Shaw</a><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&nbsp;denomin&oacute; \'bardolatr&iacute;a\'.</span><sup id=\\\"cite_ref-6\\\" class=\\\"reference separada\\\" style=\\\"line-height: 1em; unicode-bidi: isolate; text-wrap: nowrap; margin-right: 0.6ch; color: rgb(32, 33, 34); font-family: sans-serif;\\\"><a href=\\\"https://es.wikipedia.org/wiki/William_Shakespeare#cite_note-6\\\" style=\\\"color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\\\">6</a></sup><span style=\\\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 16px;\\\">&#8203;</span><br></p></body></html>\\n\"}', '2024-06-09 12:34:05', '2024-06-09 12:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_locale_unique` (`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
