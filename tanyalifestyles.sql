-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2024 at 07:51 PM
-- Server version: 5.7.44
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spiderhitin_tanyalifestyles`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `mobile`, `profile_pic`, `otp`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@tanyalifestyles.com', '7411122189', NULL, NULL, '$2y$12$QBctH0Z7iW4KNQSSZQKs0eU8MbFiX8gAh6Xcek1waMvSHY29l7WtG', NULL, '2024-07-10 04:35:53', '2024-07-09 23:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT 'Show',
  `is_feature` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `category_slug`, `title`, `slug`, `banner`, `thumbnail`, `short_description`, `description`, `status`, `is_feature`, `author`, `created_at`, `updated_at`) VALUES
(2, 5, 'women\'s__wear', 'Blouse', 'blouse1', 'media/ARezn0SFHd6CSBL0OJuS62ZKC9mrUAh12rJwulOP.jpg', 'media/0Hf6N5A76AiXGAlRb3PDrrIWWCpzjp2r8FX34nV4.jpg', 'The word blouse generally refers to a women’s shirt that “blouses” over the body. Traditional blouses are loose-fitting shirts that hang on the body but gather around the waist.', '<p><span style=\"box-sizing: inherit; color: rgb(34, 34, 34); font-family: \"DM Sans\", sans-serif; font-size: 16px; letter-spacing: 0.32px;\"> You can wear a blouse over any sort of bottoms, from pants to skirts. Because of the billowy style, blouses do not create a defined waist, which makes them very forgiving garments.</span><br></p>', 'Show', 'Yes', 'Tanya', '2024-07-10 05:50:55', '2024-07-10 07:23:24'),
(3, 5, 'women\'s__wear', 'Shorts', 'shorts', 'media/hDwk4ijocXupd8OphqM5OcC3O06GnWsACOTBdSrl.jpg', 'media/lsDdZR0mV0a47XGAwKNklhnQuvXJifkNSsIEavhl.jpg', 'They cover the body from the waist downwards, just like trousers. However, shorts do not extend down all the way to the ankles. Shorts fall somewhere in-between.', '<p>Knee-length shorts that offer a more tailored and polished appearance.Very short shorts that often fit tightly to the body.Characterized by multiple pockets, often used for practical purposes and a more relaxed style.Stretchy, form-fitting shorts typically used for exercise but also worn as a fashion statement.<br></p>', 'Show', 'Yes', 'Tanya', '2024-07-10 06:32:22', '2024-07-10 06:32:22'),
(4, 5, 'women\'s__wear', 'Jeans', 'jeans', 'media/Wh43RV6gSg6IwiPV1McGtXY4okVRvcZnmN32lB67.webp', 'media/NhQmOZ0KmBRQaGvBZnUtB2CPbFOaRDvNI20MaDHU.webp', 'jeans are a type of trousers typically made from denim or a denim-like fabric.', '<p>Traditionally made from denim, a sturdy cotton twill fabric. Modern variations may include stretchy materials like spandex or elastane for added comfort and fit. Available in various fits, such as skinny, straight-leg, bootcut, flare, boyfriend, and mom jeans, each offering a different silhouette and level of comfort.</p>', 'Show', 'Yes', 'Tanya', '2024-07-10 07:37:13', '2024-07-10 07:37:13'),
(5, 7, 'women\'s_party_wear', 'A-line Dresses', 'a-line_dresses', 'media/X4xMzM8BOGPc6PTfuckOgd35Hgy1osGyEEmzAlPr.webp', 'media/rZkaBg9knAOLhUIRzXXCVqidqqRk52DUnF6GnTKY.webp', 'An A-line dress refers to a style of dress that is fitted at the hips and gradually widens towards the hem, resembling the shape of the capital letter \"A\".', '<p>The top part of the dress is tailored to fit closely to the body, often with darts or seams to shape the bust and waist.A-line dresses can come in various lengths, from mini to midi to maxi, and can be designed for casual, work, or formal wear.A-line dresses are beloved for their timeless appeal and ability to suit various occasions, making them a staple in many women\'s wardrobes.<br></p>', 'Show', 'Yes', 'Tanya', '2024-07-10 07:43:12', '2024-07-10 07:43:12'),
(6, 7, 'women\'s_party_wear', 'Bodycon', 'bodycon', 'media/91IrP79b4wKQvCChDi82nlEsaxPtNdyBw6PJrUr3.webp', 'media/yd6SomzHzkubaTDI34YjxtMyTUoMi7h21nD1lP0B.webp', 'Bodycon dresses are a popular style choice for women\'s party wear and special occasions.', '<p>1. Bodycon dresses are known for their sleek, close-fitting silhouette, designed to accentuate the curves and contours of the body. The dresses typically have a snug, stretchy fit that molds to the wearer\'s shape. Bodycon dresses come in various lengths, including mini, midi, and maxi. The mini bodycon dress is shorter and ends above the knee, while the midi and maxi versions are longer, providing different styling options for various occasions.</p><div><br></div>', 'Show', 'Yes', 'Tanya', '2024-07-10 08:37:19', '2024-07-10 08:37:19'),
(7, 7, 'women\'s_party_wear', 'Two-Piece Set', 'two-piece_set', 'media/PQT7pBw2vczY59ENd8XCZSNcgymLQkr6DOIW95vE.jpg', 'media/H74YqOdXZhfGGfM93Q6LzKCAKkcFL62xWMIv6yri.jpg', 'A two-piece set refers to a coordinated ensemble consisting of a matching top and bottom, typically designed to be worn together', '<p>Two-piece sets come in a wide array of styles, including matching top and skirt sets, top and pant sets, or top and shorts sets. The coordinated pieces often feature complementary patterns, colors, or textures, creating a harmonious outfit.&nbsp;The pieces within a two-piece set are intentionally designed to complement each other, often featuring the same fabric, print, or color scheme. This creates a cohesive and put-to<br></p>', 'Show', 'Yes', 'Tanya', '2024-07-10 08:41:23', '2024-07-10 08:41:23'),
(8, 8, 'men\'s_party_wear', 'Tuxedo', 'tuxedo', 'media/4JCdHViAjwWctMlTh85Ruf3XOlmI8SK7HMbLL8iN.jpg', 'media/TqL8JAyet0F9V8PiUKD62ifaNNUpALRFC2bKMl2C.jpg', 'A tuxedo, also known as a dinner suit, is a formal ensemble worn for special occasions and black-tie events.', '<p>The tuxedo jacket is typically black or midnight blue and is characterized by satin or grosgrain detailing along the lapels, buttons, and pockets. The lapels can be either a shawl collar, peak lapel, or notch lapel, each offering a distinct look.&nbsp;The tuxedo trousers match the color and material of the jacket and often feature a satin or grosgrain stripe along the outer seam. This stripe adds a formal and elegant touch to the trousers.<br></p>', 'Show', 'Yes', 'Tanya', '2024-07-10 08:43:32', '2024-07-10 08:43:32'),
(9, 8, 'men\'s_party_wear', 'Blazer and Dress Pants', 'blazer_and_dress_pants', 'media/bMA7BkOPRfxMIpBxpK5qrRZ8Rjq71fERlow4tN4J.jpg', 'media/nywDuq2B49wnvetPCYSVTxsVByBO3qUNeC4fR6zN.jpg', 'A blazer and dress pants combination is a versatile and stylish option that can be worn for various occasions, from semi-formal events to professional settings.', '<p>A blazer is a tailored jacket that can add a polished touch to a variety of outfits. It is typically structured and can come in different styles, such as single-breasted or double-breasted, with various lapel options like notch, peak, or shawl lapels.&nbsp;It is often made from materials like wool, linen, cotton, or blends, with colors ranging from classic navy and black to more contemporary shades like grey, camel, or even patterns like checks or pinstripes.<br></p>', 'Show', 'Yes', 'Tanya', '2024-07-10 08:46:31', '2024-07-10 08:46:31'),
(10, 8, 'men\'s_party_wear', 'Dress Shirt and Chinos', 'dress_shirt_and_chinos', 'media/Kwi4CmAZkBK83MtMNPvMfMrfW514e9euDh7Yb2oA.jpg', 'media/Sxx738sHk5GqxfK9v5YwlQZXiecmPM5f4SmvJh7H.jpg', 'Dressing with a dress shirt and chinos creates a smart-casual look that strikes a balance between polished and relaxed.', '<p>&nbsp;A dress shirt is a button-up shirt with a pointed collar and long sleeves, typically made from cotton or a cotton blend. It comes in a variety of colors and patterns, with classic options including white, light blue, and subtle stripes or checks.&nbsp;<span style=\"text-align: var(--bs-body-text-align);\">The dress shirt should fit well, with the collar sitting comfortably around the neck and the sleeves ending at the wrist. It can be worn tucked into the chinos for a more polished look, or left untucked for a more casual vibe.</span><br></p><div><span style=\"text-align: var(--bs-body-text-align);\"><br></span></div>', 'Show', 'Yes', 'Tanya', '2024-07-10 08:48:45', '2024-07-10 08:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Show','Hide') COLLATE utf8mb4_unicode_ci DEFAULT 'Show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'women\'s  wear', 'women\'s__wear', 'media/VVSCi8MK45qRR79MavpeiSHV4jsFfuez2eVMWwGE.jpg', 'Show', '2024-07-10 05:31:12', '2024-07-10 07:17:14', NULL),
(6, 'men\'s wear', 'men\'s_wear', 'media/tZ34yDXPndPMwK5UqE0VWIkouWjEpC829zk1SePX.jpg', 'Show', '2024-07-10 05:36:40', '2024-07-10 07:20:00', NULL),
(7, 'women\'s party wear', 'women\'s_party_wear', 'media/VGGi8493BpD2EWg3cr4pKEjo7mBNCA20w1V1eVhB.jpg', 'Show', '2024-07-10 05:43:47', '2024-07-10 07:21:55', NULL),
(8, 'men\'s party wear', 'men\'s_party_wear', 'media/2s529NzY5azT9PsdRcGuA03Y99iDxAVRDDJzMr2L.jpg', 'Show', '2024-07-10 05:46:43', '2024-07-10 07:22:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_21_025443_create_admins_table', 1),
(5, '2024_05_21_162606_create_site_settings_table', 1),
(6, '2024_07_10_043305_create_oauth_auth_codes_table', 1),
(7, '2024_07_10_043306_create_oauth_access_tokens_table', 1),
(8, '2024_07_10_043307_create_oauth_refresh_tokens_table', 1),
(9, '2024_07_10_043308_create_oauth_clients_table', 1),
(10, '2024_07_10_043309_create_oauth_personal_access_clients_table', 1),
(11, '2024_07_10_045645_create_categories_table', 2),
(12, '2024_07_10_060428_create_blogs_table', 3),
(13, '2024_07_10_061430_add_author_to_blogs', 4),
(14, '2024_07_10_065539_add_category_slug_to_blogs', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'vzcXRDpqm7wBz3ED7ScbGbrt5Sf7HmiS6cWkpLpL', NULL, 'http://localhost', 1, 0, 0, '2024-07-09 23:03:38', '2024-07-09 23:03:38'),
(2, NULL, 'Laravel Password Grant Client', 'RQzRi6TKMl6jC9V2bk9OOgAEK5kNzrUfv1lXbbif', 'users', 'http://localhost', 0, 1, 0, '2024-07-09 23:03:38', '2024-07-09 23:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-07-09 23:03:38', '2024-07-09 23:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('E0Z7DjK9mrVdXegoEQGL0EOtGWVzdu0qmOMo2MpC', NULL, '49.37.133.251', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMEFZb0dVNzY4eEJSVGJFR2Z4UlRLdThFSVAyYXNZWFdURmNKM1ZvayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vdGFueWFsaWZlc3R5bGVzLnNwaWRlcmhpdC5pbi9hZG1pbi9wdWJsaWMvYWRtaW4vc2l0ZXNldHRpbmdzLzEvZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1720620690),
('ep0Yi8Z0sKwAB97RFXJPGnI6Ha2zKkdPBnNihYjo', NULL, '52.112.74.60', 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5 skype-url-preview@microsoft.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVlvYTdhdnFoVFd2NWZkSGszRWV3TmkxeTlGcjRDeXVDMEFmcmtFUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vdGFueWFsaWZlc3R5bGVzLnNwaWRlcmhpdC5pbi9hZG1pbi9wdWJsaWMvYWRtaW4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720613892),
('ipuJjsCVdgukMjEkAzUVWPRfM2XGqSRGLChlZY5i', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUF1NlpLT0VNamVJV0wzclhKU1ludDVVZzJaWFRITEF5RmUyR0lFciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vdGFueWFsaWZlc3R5bGVzLnNwaWRlcmhpdC5pbi9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1720617030),
('Ne3tRMxuYuw69SuQ9GLn50i1PhsK0xBqoutWbegM', NULL, '49.37.133.251', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidEIwaHZTd2xwaU0xaGs1c0hmNmZvVlY3RW5tMEdqcmdKdHJ2dlFQUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vdGFueWFsaWZlc3R5bGVzLnNwaWRlcmhpdC5pbi9hZG1pbi9wdWJsaWMvYWRtaW4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJhbGVydCI7YTowOnt9fQ==', 1720614197),
('Pe4regFDMobdX7KzyI34ofYMhC6lttWoH7FCHm5z', NULL, '49.37.133.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoib0dNOEtkb2FMcFVxcWd6TW9nZFdIbUxSR1dyWWM3YWJmSTNmMWM0QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHBzOi8vdGFueWFsaWZlc3R5bGVzLnNwaWRlcmhpdC5pbi9hZG1pbi9wdWJsaWMvYWRtaW4vYmxvZy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJhbGVydCI7YTowOnt9fQ==', 1720621190),
('xlncrkYk221jQzjtZEMBtGwA18Q9tAGrtttBn2Xk', NULL, '49.37.133.251', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHdwUHJtWWR1Z3UxeE5Wa1FTYWx5VlVvSGZqNEdzRG5zUnBKQTdveiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vdGFueWFsaWZlc3R5bGVzLnNwaWRlcmhpdC5pbi9hZG1pbi9wdWJsaWMvYWRtaW4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720614179);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `desgination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_care_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `help_line_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` double DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_services` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_app_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_app_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `franchise_app_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `city_id`, `logo`, `site_logo`, `favicon`, `site_name`, `description`, `short_description`, `desgination`, `experience`, `admin_logo`, `image`, `address`, `email`, `phone`, `customer_care_no`, `help_line_no`, `gst`, `delivery_charge`, `company`, `no_of_services`, `site_url`, `android_url`, `ios_url`, `customer_app_url`, `store_app_url`, `franchise_app_url`, `facebook`, `linkedin`, `youtube`, `pinterest`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, NULL, 'site/mNb95X45XEQ2NxgC1jH5ZBzKpCTvbJJuR6hglqcd.jpg', 'site/BRvES8pBCRAS64BXQ7TOvftMzcQDVpjlsUuQrOd3.jpg', NULL, 'Blog Application', NULL, 'Blog Application', NULL, NULL, NULL, NULL, NULL, 'blogapplication@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-10 04:37:30', '2024-07-09 23:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` double DEFAULT '0',
  `new_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_mobile_number` bigint(20) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_verified` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `email_verified` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `firebase_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_new_email_unique` (`new_email`),
  ADD UNIQUE KEY `users_new_mobile_number_unique` (`new_mobile_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
