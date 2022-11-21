-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 01:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `axample`
--

CREATE TABLE `axample` (
  `TOTAL` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `OK` int(11) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `ERRORS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enums`
--

CREATE TABLE `enums` (
  `TYPE` varchar(45) NOT NULL,
  `KEY_NAME` varchar(128) NOT NULL,
  `SHORT_KEY_NAME` varchar(4) NOT NULL,
  `LABEL` varchar(45) NOT NULL,
  `DESCRIPTION` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '48e4f45f93b48c98ab7f5ee3981c38e4c7ed19a94c336bb8252f203f6de97c4a', '[\"*\"]', NULL, '2022-02-02 06:17:04', '2022-02-02 06:17:04'),
(2, 'App\\Models\\User', 1, 'MyApp', '22f1f50384972a1861daa52c652cbb346696b441030d80980b3edaa154f50288', '[\"*\"]', NULL, '2022-02-02 06:18:39', '2022-02-02 06:18:39'),
(3, 'App\\Models\\User', 1, 'MyApp', 'dd5048bac8d8c51b7676ce42315ff875e5bf3bcd1311d43cbf9347755d778f28', '[\"*\"]', NULL, '2022-02-02 06:19:22', '2022-02-02 06:19:22'),
(4, 'App\\Models\\User', 1, 'MyApp', 'f112ec66f8042141ade7ad6a5f6c2f67789adacf747c01ef2b05c7c3e9fcca4f', '[\"*\"]', NULL, '2022-02-02 06:20:10', '2022-02-02 06:20:10'),
(5, 'App\\Models\\User', 1, 'MyApp', 'c8c4f2dc41acda63386f0f8f731d97dbd93c2fd12471fd956f88508d298c11a8', '[\"*\"]', NULL, '2022-02-02 06:20:30', '2022-02-02 06:20:30'),
(6, 'App\\Models\\User', 1, 'MyApp', 'fbb0d836ba45adf97c752b9e7df6270bb5b039827a248a8cdb852271cc4ef672', '[\"*\"]', NULL, '2022-02-02 06:32:11', '2022-02-02 06:32:11'),
(7, 'App\\Models\\User', 1, 'MyApp', '593ca164e98f47ba64550455ab37ee5c35914cb50096ad2d090f718b80a4711c', '[\"*\"]', NULL, '2022-02-02 06:37:32', '2022-02-02 06:37:32'),
(8, 'App\\Models\\User', 1, 'MyApp', '58391c7043c9cfddba5ce76d9765fd06d2b8380ec85fe198b20747bac8fba6ff', '[\"*\"]', NULL, '2022-02-02 06:42:51', '2022-02-02 06:42:51'),
(9, 'App\\Models\\User', 1, 'MyApp', 'a36bbf38e16e0d21099ea8d8a675ed79d3297d89fb015ccb2034ee1671f45a5e', '[\"*\"]', NULL, '2022-02-07 03:18:44', '2022-02-07 03:18:44'),
(10, 'App\\Models\\User', 1, 'MyApp', '110d02e98f0d413ca1c64ca7f5ce1748460baefc4535f1fb2dba0edd5e96e2c5', '[\"*\"]', NULL, '2022-02-07 06:24:31', '2022-02-07 06:24:31'),
(11, 'App\\Models\\User', 1, 'MyApp', 'c5bbe0e8fe1d0115e00b30e172befb866d2adb540977292e90b9867d4b06b532', '[\"*\"]', NULL, '2022-02-07 06:40:40', '2022-02-07 06:40:40'),
(12, 'App\\Models\\User', 1, 'MyApp', '16474a19086811ae7181a69d1b4749e5ae4c1e2ee4cc81f145d007f3c08f6377', '[\"*\"]', NULL, '2022-02-07 06:58:35', '2022-02-07 06:58:35'),
(13, 'App\\Models\\User', 1, 'MyApp', '74f490ae4ae3158f298d0f467f20ae7e8bf3267765a6568e06bc36a829aea1b8', '[\"*\"]', NULL, '2022-02-07 07:00:36', '2022-02-07 07:00:36'),
(14, 'App\\Models\\User', 1, 'MyApp', '6224342c2d11956f1045fe6e0108f4fbefd7ebbc9d134bb1f72632026249164a', '[\"*\"]', NULL, '2022-02-07 07:28:08', '2022-02-07 07:28:08'),
(15, 'App\\Models\\User', 1, 'MyApp', '2899ad3875617989e2babccbe11396b264223a9903aa52d31f86383f7daa600e', '[\"*\"]', NULL, '2022-02-07 07:32:50', '2022-02-07 07:32:50'),
(16, 'App\\Models\\User', 1, 'MyApp', '27d79091e135eefdf0372598bbf6c386e599290cab4392251ce6f6405d7d498e', '[\"*\"]', NULL, '2022-02-07 07:36:36', '2022-02-07 07:36:36'),
(17, 'App\\Models\\User', 1, 'MyApp', '851822a4e9dacbae8053bc9a1b574c8f9db663c98179bb482a6a418e5408f794', '[\"*\"]', NULL, '2022-02-07 07:40:48', '2022-02-07 07:40:48'),
(18, 'App\\Models\\User', 1, 'MyApp', '4d1d384577d69f9f702db1660f853c4caac8599aac208d6f3524189b43ccdd0d', '[\"*\"]', NULL, '2022-02-07 07:44:16', '2022-02-07 07:44:16'),
(19, 'App\\Models\\User', 1, 'MyApp', '64d326adee9a0957e00e345e271334001f5bdd9dc6903e6d5157cd9709b16d24', '[\"*\"]', NULL, '2022-02-07 08:00:08', '2022-02-07 08:00:08'),
(20, 'App\\Models\\User', 1, 'MyApp', '8677de1bf130b6f8b56d38dedf4016725ac8ee1aff76972a33c8d23635c9bcae', '[\"*\"]', NULL, '2022-02-08 04:46:50', '2022-02-08 04:46:50'),
(21, 'App\\Models\\User', 1, 'MyApp', '7e1b19961d1a09eaa9bb8c3d04f64e0ea95960900aba647ee0bbf437c8675195', '[\"*\"]', NULL, '2022-02-08 05:16:31', '2022-02-08 05:16:31'),
(22, 'App\\Models\\User', 1, 'MyApp', 'bee15246547bb98be60267af34f42b251069f3ec83ee04e3e734c72670144643', '[\"*\"]', NULL, '2022-02-08 06:16:24', '2022-02-08 06:16:24'),
(23, 'App\\Models\\User', 1, 'MyApp', '91b5eee3a98b308171ecf31e01462c4aadad643f00686944dfd6cfef15f98486', '[\"*\"]', NULL, '2022-02-09 06:57:06', '2022-02-09 06:57:06'),
(24, 'App\\Models\\User', 1, 'MyApp', '44e36447a5b1579e32893e5b032ff03f482d5325dfc59277e1dc311139016f0b', '[\"*\"]', NULL, '2022-02-09 06:57:06', '2022-02-09 06:57:06'),
(25, 'App\\Models\\User', 1, 'MyApp', 'e185822e20cba62b5652182d4bad6fed3c0c00a04db41028f77992c031f4955e', '[\"*\"]', NULL, '2022-02-09 07:21:23', '2022-02-09 07:21:23'),
(26, 'App\\Models\\User', 1, 'MyApp', 'ca9d7466673a11bbcd5b5ffd7efe8992daa2de46a596504347093cc7dcd8777f', '[\"*\"]', NULL, '2022-02-09 07:23:05', '2022-02-09 07:23:05'),
(27, 'App\\Models\\User', 1, 'MyApp', 'ef61f0bcdf9bce20bc77ef79123dae6b400c9e7f321d9339572d3f6090038a12', '[\"*\"]', NULL, '2022-02-09 07:24:26', '2022-02-09 07:24:26'),
(28, 'App\\Models\\User', 1, 'MyApp', '797493c8bca9de3dcd289beee6abfdbb62336d9c655753e8494c2aa748a7690e', '[\"*\"]', NULL, '2022-02-09 07:24:55', '2022-02-09 07:24:55'),
(29, 'App\\Models\\User', 1, 'MyApp', '32cce13da2b3066115315ff89b8f7bdd1583bb60cb7156881a5e4ea78733cc20', '[\"*\"]', NULL, '2022-02-09 07:26:01', '2022-02-09 07:26:01'),
(30, 'App\\Models\\User', 1, 'MyApp', '1cb61a798bc15cade1e9393e404fda18b4c946da289cd29b824d4bbca70c8f8b', '[\"*\"]', NULL, '2022-02-09 07:26:56', '2022-02-09 07:26:56'),
(31, 'App\\Models\\User', 1, 'MyApp', '143fc5bc937a355cce3fabf104b61867638e5d70e20a0ad87da970793fa12736', '[\"*\"]', NULL, '2022-02-09 07:28:38', '2022-02-09 07:28:38'),
(32, 'App\\Models\\User', 1, 'MyApp', '698e23ab8d0ba9d23247c36ac3dacdfed6aa49364ee562451191fe19133eb5ce', '[\"*\"]', NULL, '2022-02-09 07:45:05', '2022-02-09 07:45:05'),
(33, 'App\\Models\\User', 1, 'MyApp', '1dc0f6e85872a84febc28a238bb9b1a52d583d45807a207bd836ae84335cfdac', '[\"*\"]', NULL, '2022-02-09 07:47:01', '2022-02-09 07:47:01'),
(34, 'App\\Models\\User', 1, 'MyApp', '3573826a7b5c45fe5f67b22dd9ee7774b6739a5806f9fe4051346dcf664c86c3', '[\"*\"]', NULL, '2022-02-09 07:49:41', '2022-02-09 07:49:41'),
(35, 'App\\Models\\User', 1, 'MyApp', 'e2080e08168009a26a1e3c1ae67e5f3a6ff1f3d0f6de842190a1828d6e601650', '[\"*\"]', NULL, '2022-02-14 23:35:00', '2022-02-14 23:35:00'),
(36, 'App\\Models\\User', 1, 'MyApp', '186da77c6bff980f4db6065e64cb0d8a1caab0ddbfff7bbb65e330bde94c7819', '[\"*\"]', NULL, '2022-02-15 00:22:58', '2022-02-15 00:22:58'),
(37, 'App\\Models\\User', 1, 'MyApp', '1bce45660071cf9ddfe195d3a8d71442d3965d0b0eacd719872f814afc838e47', '[\"*\"]', NULL, '2022-02-15 00:24:15', '2022-02-15 00:24:15'),
(38, 'App\\Models\\User', 1, 'MyApp', '4bec19c99b515491bd8e95b913d30d47276b10bc8c267104e227fef17018729a', '[\"*\"]', NULL, '2022-02-15 00:30:29', '2022-02-15 00:30:29'),
(39, 'App\\Models\\User', 1, 'MyApp', 'dcfb044c4a4e9a4c4ba782a138bc02fc2c51863b7319f2153369cc4748c07ab9', '[\"*\"]', NULL, '2022-02-15 00:31:34', '2022-02-15 00:31:34'),
(40, 'App\\Models\\User', 1, 'MyApp', '298c16795e205327e0e5ff4a93e44b8b481e1244fc96b53e6b59d436afe458b3', '[\"*\"]', NULL, '2022-02-15 00:32:43', '2022-02-15 00:32:43'),
(41, 'App\\Models\\User', 1, 'MyApp', '0a564921a2a62545cfd45eb9dff2f33937334c8d2ea1597d05b4e701f6796763', '[\"*\"]', NULL, '2022-02-15 00:35:24', '2022-02-15 00:35:24'),
(42, 'App\\Models\\User', 1, 'MyApp', '9038277194a3eaf1ccc2d94209833b22b0eea031353cf563fa22e63089b8a5e8', '[\"*\"]', NULL, '2022-02-15 00:39:17', '2022-02-15 00:39:17'),
(43, 'App\\Models\\User', 1, 'MyApp', 'bcd92233042a968e040aa4c7a427b411331946eca928e1843f1e4bbc8b7343a1', '[\"*\"]', NULL, '2022-02-15 00:41:25', '2022-02-15 00:41:25'),
(44, 'App\\Models\\User', 1, 'MyApp', 'c25a788d5555064a344334df5e62999e90dc5ddbff764cb31ed66f00aa278ab4', '[\"*\"]', NULL, '2022-02-15 00:42:06', '2022-02-15 00:42:06'),
(45, 'App\\Models\\User', 1, 'MyApp', '06b9e06c7b04b3d9ee58b41ecd3d19beeaf94600f4b11c059fb55c4195452c3a', '[\"*\"]', NULL, '2022-02-15 00:43:04', '2022-02-15 00:43:04'),
(46, 'App\\Models\\User', 1, 'MyApp', 'c08ad67c8d9e1da7b1d654011bc7220955081a77738152febd0d56d57ba2e245', '[\"*\"]', NULL, '2022-02-15 00:45:06', '2022-02-15 00:45:06'),
(47, 'App\\Models\\User', 1, 'MyApp', '3145445a2da978fa8e187b6638bf09c8f5d28daab8c442e19dbe53e17b420f29', '[\"*\"]', NULL, '2022-02-15 00:45:49', '2022-02-15 00:45:49'),
(48, 'App\\Models\\User', 1, 'MyApp', '2bb27b5db0c8ced6295307019ae773280e59e2e3fbd4a820ed91a5217e77a792', '[\"*\"]', NULL, '2022-02-15 00:51:27', '2022-02-15 00:51:27'),
(49, 'App\\Models\\User', 1, 'MyApp', '7f9ebb628bf364d59be544d2f95e262f89f02a1072c93d1122be5904a4360144', '[\"*\"]', NULL, '2022-02-15 01:00:14', '2022-02-15 01:00:14'),
(50, 'App\\Models\\User', 1, 'MyApp', 'f749d070a1856bb8a21b1359e01beb98d94647607ac8860b4dab2880836ce1e7', '[\"*\"]', NULL, '2022-02-15 03:22:24', '2022-02-15 03:22:24'),
(51, 'App\\Models\\User', 1, 'MyApp', '267eb2193397cf6db11bb9f9b91fc2f5329f0890fdbb25ce251d1f0ad5232507', '[\"*\"]', NULL, '2022-02-15 03:25:11', '2022-02-15 03:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `t_blockchain`
--

CREATE TABLE `t_blockchain` (
  `BLOCKCHAIN_ID` char(36) NOT NULL,
  `ACC_ID` char(36) DEFAULT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `PUBLIC_KEY` varchar(50) NOT NULL,
  `PRIVATE_KEY` varchar(100) NOT NULL,
  `STATUS` char(1) DEFAULT 'A' COMMENT 'A=Active I=Inactive',
  `URL_PUBLIC` varchar(200) DEFAULT NULL,
  `URL_REVOKATION` varchar(200) DEFAULT NULL,
  `MAINNET` tinyint(1) NOT NULL DEFAULT 0,
  `EMAIL` varchar(50) DEFAULT NULL,
  `TARGET_ADDRESS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_blockchain`
--

INSERT INTO `t_blockchain` (`BLOCKCHAIN_ID`, `ACC_ID`, `DESCRIPTION`, `PUBLIC_KEY`, `PRIVATE_KEY`, `STATUS`, `URL_PUBLIC`, `URL_REVOKATION`, `MAINNET`, `EMAIL`, `TARGET_ADDRESS`) VALUES
('7fa7505d-f3ff-425e-911e-b4acd2899db0', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Xertify', '0x9f9Fb50C133D1C750aB47bD5272759c1E00AB286', 'cac2a6fc5fcdf1fcf3bc24c64729e06871a9770ced62ce342116d6977aabb34b', 'A', 'https://xertifycloud.s3.amazonaws.com/xertify/xertifytest.json', 'https://xertifycloud.s3.amazonaws.com/xertify/xertifytestrevokationlist.json', 0, 'admin@xertify.co', '0x0135946FF2Fb3379E5175fE45538e26DE062E5D4');

-- --------------------------------------------------------

--
-- Table structure for table `t_certificates_generation`
--

CREATE TABLE `t_certificates_generation` (
  `CERTIFICATES_GENERATION_ID` char(36) NOT NULL,
  `DATE` timestamp NULL DEFAULT current_timestamp(),
  `OK_RECORDS` int(11) DEFAULT 0,
  `PENDING_RECORDS` int(11) DEFAULT 0,
  `ERROR_RECORDS` int(11) DEFAULT 0,
  `FOLDER_NAME` varchar(100) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `DATE_EXECUTION` timestamp NULL DEFAULT NULL,
  `COMPANY_STAFF_ACCOUNT` char(36) DEFAULT NULL,
  `DATE_CREATION` datetime DEFAULT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `NAME` varchar(500) DEFAULT NULL,
  `PROD_ID` char(36) DEFAULT NULL,
  `TEMPLATE_ID` char(36) DEFAULT NULL,
  `SOURCE` char(1) NOT NULL DEFAULT 'D' COMMENT 'D=Default, A=Via API',
  `PATH_BLOCKCERTS` text DEFAULT NULL,
  `TYPE` char(1) DEFAULT 'R',
  `NOTIFICATIONS` tinyint(1) DEFAULT 1,
  `EMAIL_COPY` longtext DEFAULT NULL,
  `NOTIFICATIONS_NEW` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`NOTIFICATIONS_NEW`)),
  `TEMPLATE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`TEMPLATE`))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_certificates_generation`
--

INSERT INTO `t_certificates_generation` (`CERTIFICATES_GENERATION_ID`, `DATE`, `OK_RECORDS`, `PENDING_RECORDS`, `ERROR_RECORDS`, `FOLDER_NAME`, `STATUS`, `DATE_EXECUTION`, `COMPANY_STAFF_ACCOUNT`, `DATE_CREATION`, `DATE_UPDATE`, `NAME`, `PROD_ID`, `TEMPLATE_ID`, `SOURCE`, `PATH_BLOCKCERTS`, `TYPE`, `NOTIFICATIONS`, `EMAIL_COPY`, `NOTIFICATIONS_NEW`, `TEMPLATE`) VALUES
('115e3363-c45d-499f-9662-1821927e9918', '2022-02-01 22:33:50', 10, 0, 0, NULL, 'E', '2022-02-01 22:33:50', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 22:33:50', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('1b431aec-1c95-48c0-8b93-aaa3a8aa0996', '2022-02-02 00:21:37', 10, 0, 0, NULL, 'E', '2022-02-02 00:21:37', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-02 00:21:37', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('1b47e6de-184a-4f6f-90de-8362f7a41f1b', '2022-01-18 18:51:38', 10, 0, 0, NULL, 'E', '2022-01-18 18:51:38', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-18 18:51:38', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('298b7833-94dd-429f-97c7-1ad3e9249a77', '2022-02-01 22:17:43', 10, 0, 0, NULL, 'E', '2022-02-01 22:17:43', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 22:17:43', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('2a21dde6-232a-4d36-9658-17de969c60a0', '2022-01-18 19:54:44', 8, 2, 0, NULL, 'R', '2022-01-18 19:54:44', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-18 19:54:44', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('2ba6474a-6912-45eb-809a-5f7461d0635e', '2021-10-30 16:07:42', 0, 10, 0, NULL, 'S', '2021-10-30 16:07:42', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-30 16:07:42', '2022-01-31 20:13:22', 'Principal Global - Art group 2021', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 0}', NULL),
('2feb16a7-94cb-4214-b9b7-d3282be09bd7', '2022-01-18 16:03:49', 5, 5, 0, NULL, 'P', '2022-01-18 16:03:49', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-18 16:03:49', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('31ffaebf-0252-4da4-8549-7c0df96482fb', '2022-01-18 15:34:32', 10, 0, 0, NULL, 'E', '2022-01-18 15:34:32', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-18 15:34:32', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('56c28f6a-93af-4ad3-889b-90fd16bcb3c2', '2022-02-01 17:43:48', 10, 0, 0, NULL, 'E', '2022-02-01 17:43:48', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 17:43:48', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('5f0b2779-bf84-4859-bdc6-c1b9c4fe5f88', '2022-02-01 14:29:33', 1, 0, 0, NULL, 'E', '2022-02-01 14:30:22', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 14:29:33', NULL, 'Principal Global - Art Group 2021', '9940ddff-79d7-4b55-ab82-3972975dd93c', NULL, 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 0}', '[{\"QR\": {\"h\": 120, \"w\": 120, \"x\": 100, \"y\": 200, \"replace\": \"qr_xertify_120_120\"}, \"T_ID\": \"14b38e15-59cf-4492-ad94-09c839492868\"}, {\"QR\": {\"h\": 120, \"w\": 120, \"x\": 100, \"y\": 200, \"replace\": \"qr_xertify_120_120\"}, \"T_ID\": \"f744bbff-4b6b-4a67-959d-164e79072383\"}]'),
('6118f794-d873-4d2e-9b42-ba6b1b2f2b14', '2022-02-01 22:44:46', 10, 0, 0, NULL, 'E', '2022-02-01 22:44:46', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 22:44:46', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('627a0437-6891-453b-a0c9-4d879276278d', '2022-02-01 16:25:32', 10, 0, 0, NULL, 'E', '2022-02-01 16:25:32', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 16:25:32', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('786e5df4-447d-4330-8251-29a39f634a6a', '2022-02-01 18:40:18', 10, 0, 0, NULL, 'E', '2022-02-01 18:40:18', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 18:40:18', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('8b90f90e-92e9-46ad-9fc6-e629fc86f3fb', '2022-02-01 15:45:22', 0, 1, 0, NULL, 'R', '2022-02-01 15:46:07', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 15:45:22', NULL, 'Principal Global - Art Group 2021', '9940ddff-79d7-4b55-ab82-3972975dd93c', NULL, 'D', NULL, 'R', 1, NULL, '{\"sms\": 0, \"email\": 1, \"whatsapp\": 0}', '[{\"QR\": {\"h\": 120, \"w\": 120, \"x\": 100, \"y\": 200, \"replace\": \"qr_xertify_120_120\"}, \"T_ID\": \"14b38e15-59cf-4492-ad94-09c839492868\"}]'),
('9ae33072-379c-4579-9abe-a78a29f74f30', '2022-02-01 16:09:41', 10, 0, 0, NULL, 'E', '2022-02-01 16:09:41', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 16:09:41', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('ac42a569-ae0c-4a8f-aec5-be555af0f1b3', '2022-02-01 19:22:25', 10, 0, 0, NULL, 'E', '2022-02-01 19:22:25', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 19:22:25', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('ca2171f4-1183-48bb-91c4-cd004a5fb3d0', '2022-01-24 21:27:38', 8, 2, 0, NULL, 'R', '2022-01-24 21:27:38', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-24 21:27:38', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('d9e453b6-def4-4969-89aa-a05b322f4e41', '2022-02-01 18:55:49', 10, 0, 0, NULL, 'E', '2022-02-01 18:55:49', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 18:55:49', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', '2022-01-18 20:23:30', 10, 0, 0, NULL, 'E', '2022-01-18 20:23:30', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-18 20:23:30', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('e08ab365-21ae-4dee-b430-135531ba8934', '2022-02-01 19:59:38', 10, 0, 0, NULL, 'E', '2022-02-01 19:59:38', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 19:59:38', NULL, 'TESTING', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'd95c4a86-175c-482d-b79b-52eae06160bb', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 1}', NULL),
('f8a044cf-1134-4499-9197-191d7cb9d52b', '2021-10-30 15:59:27', 0, 1, 0, NULL, 'R', '2021-10-30 15:59:28', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-30 15:59:27', NULL, 'Principal Global - Art group 2021', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'D', NULL, 'R', 1, NULL, '{\"sms\": 1, \"email\": 1, \"whatsapp\": 0}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_certificates_generation_children`
--

CREATE TABLE `t_certificates_generation_children` (
  `T_CERTIFICATES_GENERATION_CHILDREN_ID` char(36) NOT NULL,
  `T_CERTIFICATES_GENERATION_ID` char(36) NOT NULL,
  `STATUS` char(1) DEFAULT 'P',
  `CV_ID` char(36) NOT NULL,
  `requestApiId` varchar(50) DEFAULT NULL,
  `TEMPLATE_ID` char(36) DEFAULT NULL,
  `CODECERTIFICATE` varchar(45) DEFAULT NULL,
  `DATE_GENERATION` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_certificates_generation_children`
--

INSERT INTO `t_certificates_generation_children` (`T_CERTIFICATES_GENERATION_CHILDREN_ID`, `T_CERTIFICATES_GENERATION_ID`, `STATUS`, `CV_ID`, `requestApiId`, `TEMPLATE_ID`, `CODECERTIFICATE`, `DATE_GENERATION`) VALUES
('00867812-375c-4f93-abea-f84dcd2a67b3', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA259', '2022-02-01 17:44:11'),
('0394a870-c45d-4620-92a9-136f7688cfbb', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A245', '2022-01-18 18:51:59'),
('07a1e570-b93a-49fe-99ee-c0ee5b96f1d9', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA255', '2022-02-01 16:09:49'),
('086082d4-d4cc-402a-b4da-14d04e73f12f', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A254', '2022-02-01 18:56:01'),
('0990249d-0afd-4d2e-88fd-1bb8ae60acb4', '5f0b2779-bf84-4859-bdc6-c1b9c4fe5f88', 'P', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'f744bbff-4b6b-4a67-959d-164e79072383', NULL, NULL),
('0a475ed4-f292-4cb2-9227-49e3e9781bec', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA269', '2022-02-01 22:17:59'),
('0bc22185-5bd7-4c5d-adc7-b5219a04d9cd', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A259', '2022-02-01 19:59:59'),
('0d55b8af-e2e1-4b39-b5ee-a59834f029b9', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A247', '2022-02-01 16:10:05'),
('0ef5bc91-e852-4f2e-ac6c-c2a6d550ce6c', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA261', '2022-02-01 18:40:37'),
('0f111bbf-2721-4434-9901-4c880089c095', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA246', '2022-01-18 18:51:48'),
('1', '2ba6474a-6912-45eb-809a-5f7461d0635e', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'A45F8B2BA001', '2021-10-30 16:08:06'),
('1181a5de-1eca-4bd0-9582-ad111e6ba39a', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA253', '2022-01-24 21:27:56'),
('1242b4b9-3f1f-452e-b130-cc7734c986bc', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA273', '2022-02-01 22:45:06'),
('1353a8f9-c4e2-481b-8034-d5509a98897f', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A257', '2022-02-01 17:44:11'),
('1363387e-874d-4dc5-b383-400589e1e55d', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA265', '2022-02-01 19:22:36'),
('13645143-df5d-46d7-9fa0-1a193f1e70bd', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA262', '2022-02-01 18:40:35'),
('17e5bead-f658-419c-8358-df107d6cf56d', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA250', '2022-01-18 20:23:39'),
('1e9a1ba4-e51e-430a-88cb-1e785c721c49', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A267', '2022-02-02 00:21:55'),
('1f00d6cc-deff-424f-ab7f-890011ce736e', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A248', '2022-01-18 20:23:44'),
('1fe30b79-a25c-4355-8b22-37c0b2a36a1a', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A256', '2022-02-01 17:44:01'),
('2', 'f8a044cf-1134-4499-9197-191d7cb9d52b', 'P', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', NULL, NULL),
('205dc312-537f-44a3-9466-3809f4a414c3', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA269', '2022-02-01 22:17:51'),
('22450744-1f86-451d-b6a7-06a70beecf39', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A250', '2022-01-24 21:28:01'),
('24e0633b-2fab-49c9-9c41-cce907278de9', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA267', '2022-02-01 19:59:53'),
('28c0c374-cf57-4cdc-b6c6-89655a9f2c90', '627a0437-6891-453b-a0c9-4d879276278d', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA256', '2022-02-01 16:25:39'),
('2a8439b0-98d3-4cb0-9558-e5ac62d0bb02', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA270', '2022-02-01 22:17:55'),
('2e26493f-0d14-4e71-a89a-218ba2f15f36', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA263', '2022-02-01 18:56:04'),
('3022cc33-3b59-4f35-b158-5cdb6272ae26', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA264', '2022-02-01 18:56:02'),
('30b8b18e-2938-4d50-b1a7-057e6bb60bfa', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA261', '2022-02-01 18:40:25'),
('3223228d-5501-4dcd-8ef6-288a187d1395', '627a0437-6891-453b-a0c9-4d879276278d', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA257', '2022-02-01 16:25:50'),
('32c4283c-3d8c-4b5f-a13c-71239ac7c7a1', '2a21dde6-232a-4d36-9658-17de969c60a0', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A246', '2022-01-18 19:55:04'),
('32f5f7aa-5ae6-4c3f-9dec-a109f424ed35', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A271', '2022-02-01 22:45:08'),
('33030743-b1b3-44a4-b573-979b7f7276e5', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA272', '2022-02-01 22:44:55'),
('337b1808-fe1a-4dcb-8fb2-bb8a058d3fe3', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA265', '2022-02-01 19:22:32'),
('355d4e83-8381-43eb-ab75-b2b329cad407', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA273', '2022-02-01 22:45:03'),
('3574d19a-11ef-4f1c-b331-67acd99d39ee', '627a0437-6891-453b-a0c9-4d879276278d', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA256', '2022-02-01 16:25:40'),
('37466bf5-a695-403d-8e50-bb43cd40c179', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA254', '2022-02-01 16:09:50'),
('3f4b03cb-54ed-4dfd-ac06-9c989402c416', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA250', '2022-01-18 20:23:38'),
('4005cb5a-24ec-488f-aa45-868aae522a02', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A246', '2022-02-01 16:09:50'),
('45b6bdc6-ecb4-4649-a5e7-483b739b96d2', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA253', '2022-01-24 21:27:57'),
('4625e926-495d-4681-8df8-cf990b4d4aaf', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA253', '2022-01-24 21:27:47'),
('464e7d43-970b-4bca-b013-e9b544b6ea4a', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA255', '2022-02-01 16:09:59'),
('4d855f8d-7565-4d18-85dc-33d3e73e6555', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA267', '2022-02-01 19:59:57'),
('4e175647-1f50-4517-9489-36a1b9d091c8', '115e3363-c45d-499f-9662-1821927e9918', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA272', '2022-02-01 22:34:02'),
('4e9ce01d-fb7d-46c0-868b-e5123c34babd', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA247', '2022-01-18 18:51:57'),
('50abf9cb-214b-4059-b56c-90517bbecfd3', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A258', '2022-02-01 18:40:32'),
('50f05fa9-6eb1-42db-a944-51f5cebeaaa1', '627a0437-6891-453b-a0c9-4d879276278d', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A248', '2022-02-01 16:25:40'),
('5455b779-cb9f-4d9e-aed2-4aeedd178549', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA267', '2022-02-01 19:59:46'),
('54a96e0c-8506-471e-afd8-806ba6b7b619', '627a0437-6891-453b-a0c9-4d879276278d', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A254', '2022-02-01 16:25:41'),
('55b05a54-5556-429e-b9bb-629893e87c55', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A255', '2022-02-01 18:56:08'),
('567a333b-ac9c-4a92-b343-b0e2996ac08e', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA252', '2022-01-24 21:27:48'),
('5938bbae-e376-49a1-9913-2e316240643a', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA268', '2022-02-01 22:17:55'),
('5ac03e86-b0ac-4de4-be83-b735c71830be', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A256', '2022-02-01 19:22:33'),
('5bcc7c16-263e-4d82-b602-a858e6f9eab3', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA276', '2022-02-02 00:21:53'),
('5c688ebb-9833-45ae-96ee-5f5a61d6441e', '627a0437-6891-453b-a0c9-4d879276278d', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA257', '2022-02-01 16:25:39'),
('5c9c9f5a-b399-4008-98b4-994a68640a3c', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A266', '2022-02-01 22:18:09'),
('5dfd1529-0b97-49c9-92d1-01ee0ecf5ce3', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA272', '2022-02-01 22:44:55'),
('60755956-feca-46f7-b7ed-9806f9dd7031', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA260', '2022-02-01 18:40:27'),
('61a1c369-3441-4444-bdd0-9e6088d4dfd9', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A253', '2022-02-01 18:40:38'),
('625ce1d1-c972-44b6-9eda-e6ee7aa6e73b', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA264', '2022-02-01 19:22:32'),
('64935e7f-ca8a-4c4f-ab99-6c341cecff74', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A244', '2022-01-18 18:51:50'),
('64c92ae8-a161-4fd3-80a1-db6b71d9d418', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A245', '2022-01-18 20:24:01'),
('659facb8-bffc-484e-b6c5-ef165c078731', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A272', '2022-02-02 00:21:49'),
('65e1d406-edb2-4153-975e-e0c920ce4f09', '115e3363-c45d-499f-9662-1821927e9918', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A269', '2022-02-01 22:34:04'),
('662a99d4-7ecd-4ef8-8b28-b755d9e5aafd', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA275', '2022-02-02 00:21:54'),
('66d0ac30-f6e3-4255-be6d-fee1697e753b', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA274', '2022-02-02 00:21:45'),
('685f65b3-5707-457a-b26a-03885c0338c2', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A253', '2022-02-01 16:10:03'),
('6d788df6-b7a1-4fb0-a424-0c0ef4ace382', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA254', '2022-02-01 16:09:49'),
('6f301419-df21-4c36-881c-2151668d1b1b', '115e3363-c45d-499f-9662-1821927e9918', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA271', '2022-02-01 22:33:58'),
('7824a9f8-7771-433d-af80-dda6c3092d8f', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA255', '2022-02-01 16:10:00'),
('7c473494-5d10-4885-af97-91c0e9ff3f80', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA248', '2022-01-18 18:51:57'),
('7fe5572e-0a7d-4056-bbf7-d90e794333c8', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A273', '2022-02-02 00:21:56'),
('82629198-679a-47a4-abe8-6f4c2fad6ced', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA269', '2022-02-01 22:17:57'),
('85bcb6e1-25d0-4074-93c2-78992fa223ac', '2feb16a7-94cb-4214-b9b7-d3282be09bd7', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA246', '2022-01-18 16:03:57'),
('85ebc008-0498-4ddc-819b-81fff3f3e11e', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A243', '2022-01-18 18:51:58'),
('86a73f6f-8eea-4f7a-8ba1-69052c5e389e', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA247', '2022-01-18 18:51:59'),
('874f035b-0887-48ba-8e3a-536dc323dfdb', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA254', '2022-01-24 21:27:56'),
('88ed3999-cc9e-463a-ba00-4efec90e3cc4', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A262', '2022-02-01 19:22:33'),
('8b9d1f3c-113c-4ae1-b4f7-e055c63a8df5', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA251', '2022-01-18 20:23:58'),
('8ccad9dc-eec3-4e1e-ba89-68d3bb461b6a', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA251', '2022-01-18 20:23:49'),
('8f7b439d-6176-4335-aa89-b0c415832259', '115e3363-c45d-499f-9662-1821927e9918', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A262', '2022-02-01 22:34:01'),
('973f7832-d1cf-40c6-9a9f-e26d5264503e', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A270', '2022-02-01 22:44:57'),
('983011a2-94bc-418c-86ea-4d20c2586711', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA252', '2022-01-24 21:27:47'),
('9844e798-3242-416b-bd3f-d12796fc9427', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA264', '2022-02-01 19:22:32'),
('98e2d453-d6a6-4309-8361-91aea7013f4f', '2a21dde6-232a-4d36-9658-17de969c60a0', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA249', '2022-01-18 19:55:00'),
('9b053443-e264-4e04-bf3a-d3401197a442', '115e3363-c45d-499f-9662-1821927e9918', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA271', '2022-02-01 22:34:03'),
('9f0671f3-4fb9-4792-a7f6-effb2a1a19f0', '2a21dde6-232a-4d36-9658-17de969c60a0', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA248', '2022-01-18 19:54:51'),
('9fe0a377-a9df-45ab-a169-5fe4cf8f24d8', '2a21dde6-232a-4d36-9658-17de969c60a0', 'P', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A245', '2022-01-18 19:55:02'),
('9ff04042-55ea-426b-93ec-aac4c256429e', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA263', '2022-02-01 18:55:58'),
('a0da9a60-6b3d-41cf-802c-085007db6256', '115e3363-c45d-499f-9662-1821927e9918', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA270', '2022-02-01 22:33:59'),
('a2142515-e1a9-4382-8ce7-ec8070a8b381', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A265', '2022-02-01 22:45:06'),
('a2652e80-5971-4c87-a687-c56da8eea724', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A264', '2022-02-01 22:44:57'),
('a54db9b9-d4c9-493a-88e1-d8662851068a', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA262', '2022-02-01 18:56:00'),
('a63fefb9-94e6-4fa8-b8d4-33bd11da408e', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A251', '2022-02-01 17:44:10'),
('a7ce5e61-dda3-4c96-8233-e030a5f3a2c9', '2feb16a7-94cb-4214-b9b7-d3282be09bd7', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A244', '2022-01-18 16:03:58'),
('a7d6b22c-ad48-4295-a7b9-1ab56dbf660f', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA258', '2022-02-01 17:43:58'),
('a910918d-823a-4914-97f7-bd410f64dcd2', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'P', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A246', '2022-01-24 21:27:53'),
('a9a8c2d2-25e3-4cd6-862b-da420d3c8342', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA246', '2022-01-18 18:51:49'),
('aa183207-dd59-4b72-afa0-bdec1da22a05', '2a21dde6-232a-4d36-9658-17de969c60a0', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A247', '2022-01-18 19:55:11'),
('aa56f94d-5108-4ac9-baca-12b0aaa607b3', '2a21dde6-232a-4d36-9658-17de969c60a0', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA249', '2022-01-18 19:54:59'),
('aaffddc9-f160-4161-bf65-e33ae9557c6d', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A261', '2022-02-01 18:56:06'),
('ad7a8a4c-5190-4a2b-9c41-95f3fc11ac18', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA274', '2022-02-01 22:45:04'),
('af591259-8d3e-42b0-9627-8762c89efeed', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A244', '2022-01-18 20:23:44'),
('b14f96f6-bba7-4046-9384-101691d3baef', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA247', '2022-01-18 18:51:48'),
('b28b27fa-6a99-4fbe-9319-99ae36bc979f', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA268', '2022-02-01 22:17:57'),
('b339eb7b-7704-45d4-be4a-8d7df1bd039f', '1b47e6de-184a-4f6f-90de-8362f7a41f1b', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A242', '2022-01-18 18:51:49'),
('b9f4f606-ef23-447d-90d0-35f786a0b504', '2a21dde6-232a-4d36-9658-17de969c60a0', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA248', '2022-01-18 19:54:51'),
('bc462b38-fa4f-4336-b693-4bb970bf4f67', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA275', '2022-02-02 00:21:54'),
('bd06889a-d15f-4b6e-8ae6-fe1766e61656', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA256', '2022-02-01 16:10:03'),
('be6dc583-99c3-4ecf-ac00-93339bc83beb', '2feb16a7-94cb-4214-b9b7-d3282be09bd7', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA246', '2022-01-18 16:03:57'),
('beea222c-70be-4c82-bbbb-960aefb7b7d3', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A250', '2022-02-01 17:44:00'),
('bf60be1b-2bdf-40c6-8eac-4bc801a2805a', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A266', '2022-02-02 00:21:48'),
('c2edb387-063e-47af-bb1d-0e35b93615b0', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A260', '2022-02-01 22:18:06'),
('c5cd95ca-cd6f-49c1-971b-798f8a55bfa5', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA259', '2022-02-01 17:43:57'),
('c62627b9-25a1-46ca-a4ee-45498b04ec96', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA261', '2022-02-01 18:40:40'),
('c7aebe4a-1b30-4873-8451-274bae5d37f8', '627a0437-6891-453b-a0c9-4d879276278d', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A249', '2022-02-01 16:25:54'),
('c84ba5f2-b221-44ff-8d48-84b224452c5a', '2feb16a7-94cb-4214-b9b7-d3282be09bd7', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A242', '2022-01-18 16:03:57'),
('c8c631ae-aac5-4cf1-9605-d9f94f6b0af9', '115e3363-c45d-499f-9662-1821927e9918', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A268', '2022-02-01 22:34:02'),
('c8fd4d83-e3e3-4baf-86c7-fcf2973f7099', '627a0437-6891-453b-a0c9-4d879276278d', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA257', '2022-02-01 16:25:48'),
('c9ff64ab-1237-4eca-90e8-9eea91f753a4', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A251', '2022-01-24 21:28:08'),
('caeadc61-9691-4718-b2f1-7f87973fff4a', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA263', '2022-02-01 18:56:02'),
('cb312f70-be43-41c2-ae95-a5e15a870ac4', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A264', '2022-02-01 19:59:50'),
('cbc09376-6a84-438c-8b12-4c870588b63a', '115e3363-c45d-499f-9662-1821927e9918', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A4D88C5BA271', '2022-02-01 22:34:02'),
('cbdf9da4-037e-40d4-9e2a-9ef92927914b', '115e3363-c45d-499f-9662-1821927e9918', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A263', '2022-02-01 22:34:05'),
('cd74f4b9-001f-439d-b297-0e90063777be', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA260', '2022-02-01 17:44:10'),
('cecca7b1-4870-4b3d-b07b-004ecd4ad6f2', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A258', '2022-02-01 19:59:53'),
('d035cb31-9177-40e7-8cb9-fabb81e5c9b4', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A263', '2022-02-01 19:22:37'),
('d308104e-a4cb-408e-9c18-21a223196c91', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA266', '2022-02-01 19:22:40'),
('d3bd950c-6012-4ede-a35a-9dd84e3cecb6', '627a0437-6891-453b-a0c9-4d879276278d', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA258', '2022-02-01 16:25:50'),
('d40ad24e-dc35-498b-9044-1ae4222fb4e8', '8b90f90e-92e9-46ad-9fc6-e629fc86f3fb', 'P', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '14b38e15-59cf-4492-ad94-09c839492868', NULL, NULL),
('d4e17278-d4e9-4d80-931d-6000a881e561', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA258', '2022-02-01 17:43:57'),
('d7414391-0a7d-43b8-b4d1-499a9e79ebd6', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA268', '2022-02-01 19:59:58'),
('d788b7ad-58dd-43d7-b5b4-8e0d88088fe8', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A257', '2022-02-01 19:22:38'),
('d8b81847-95f5-490e-b6c6-a93ceb4c0ba8', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA251', '2022-01-18 20:23:38'),
('d9e13b05-a683-49d9-ba28-1cac08d930f4', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A249', '2022-01-18 20:24:01'),
('da7cff49-7f6f-4723-92a1-60141daa51b9', 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA252', '2022-01-18 20:24:00'),
('deb3df27-1c51-42b9-966e-3b6696869bd0', '2a21dde6-232a-4d36-9658-17de969c60a0', 'P', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A244', '2022-01-18 19:54:54'),
('e0d20363-4682-4468-8566-90655a62edc7', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA275', '2022-02-02 00:21:44'),
('e1243e99-7312-436e-a2b2-3c57bfab65a1', '115e3363-c45d-499f-9662-1821927e9918', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA270', '2022-02-01 22:33:59'),
('e3a36434-3455-4fe5-a42b-be6bbc2a1332', 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA265', '2022-02-01 19:22:36'),
('e45ea162-c081-471f-bddf-cf04d5c343cb', '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA273', '2022-02-01 22:44:54'),
('e9ac0951-fc8d-46f1-8ded-ce21728741d2', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA266', '2022-02-01 19:59:48'),
('e9e00621-1205-482c-b521-3481b88e649f', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5FB09C2A252', '2022-02-01 18:40:31'),
('ed2815e5-023a-431c-8a6f-b3d4874276e3', '2a21dde6-232a-4d36-9658-17de969c60a0', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A684730EA250', '2022-01-18 19:55:00'),
('ef332a28-1467-4ac4-912f-d1d021fc5839', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA266', '2022-02-01 19:59:49'),
('f0246c7d-49d9-41fa-b7ea-215b43805e9a', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A267', '2022-02-01 22:18:11'),
('f398508c-6da4-471e-a59f-1f7e041a4c38', '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA274', '2022-02-02 00:21:45'),
('f43855e1-d847-4949-964b-aad953d45aa8', 'e08ab365-21ae-4dee-b430-135531ba8934', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A265', '2022-02-01 19:59:52'),
('f509d09c-0e9c-4108-addc-b21a21d5ec8c', 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', 'P', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A247', '2022-01-24 21:28:00'),
('f594453a-1fad-4e2f-8976-313b179066f8', '2feb16a7-94cb-4214-b9b7-d3282be09bd7', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA247', '2022-01-18 16:03:56'),
('f85c9da2-ba12-4f8d-b70c-dff98f0ab5ba', '2a21dde6-232a-4d36-9658-17de969c60a0', 'E', '01b7276e-5a42-4bd5-981b-0930bc77008c', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A684730EA249', '2022-01-18 19:54:51'),
('f8e6ebe4-a0a7-4417-8be3-0b08f437fde5', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A45F8B2BA260', '2022-02-01 18:40:27'),
('f9342fdd-99e6-4e02-be51-5bb05729bc05', '9ae33072-379c-4579-9abe-a78a29f74f30', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A252', '2022-02-01 16:09:51'),
('f9ac5544-b337-4b43-b4a2-c5e1f347d3a1', '298b7833-94dd-429f-97c7-1ad3e9249a77', 'E', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5FB09C2A261', '2022-02-01 22:18:08'),
('fa5eb5d3-9108-488d-9af7-35e3f4c441b2', '786e5df4-447d-4330-8251-29a39f634a6a', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A259', '2022-02-01 18:40:34'),
('fb6d2e0a-f14c-46c7-98fd-7745a80be936', '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', 'E', '0709949c-b7c5-40da-860a-087c4e60ef96', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A45F8B2BA259', '2022-02-01 17:44:10'),
('fc5fbe1b-5c53-4c05-8352-cb484cc1ec5f', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', '06313bf9-c47a-41c8-aed1-a900f185e02e', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A4D88C5BA262', '2022-02-01 18:55:59'),
('fcd779de-3c76-474a-bb47-a2ce7061db04', '5f0b2779-bf84-4859-bdc6-c1b9c4fe5f88', 'P', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '14b38e15-59cf-4492-ad94-09c839492868', NULL, NULL),
('ff26f55a-baaf-4bd1-830a-154a6add470a', 'd9e453b6-def4-4969-89aa-a05b322f4e41', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 'A5628813A260', '2022-02-01 18:56:01'),
('ffb6e632-3b56-4b0f-875c-9ebccd8e5be8', '627a0437-6891-453b-a0c9-4d879276278d', 'E', 'f25da24f-994a-4411-9b03-62362914d0f0', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 'A5628813A255', '2022-02-01 16:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `t_code`
--

CREATE TABLE `t_code` (
  `COD_ID` char(36) NOT NULL,
  `COD_ISSUE_DATE` timestamp NULL DEFAULT NULL,
  `COD_STATE` varchar(1) DEFAULT NULL,
  `COD_ROOT` varchar(50) DEFAULT NULL,
  `COUNT_LABORAL` decimal(10,0) DEFAULT NULL,
  `COUNT_ACADEMIC` decimal(10,0) DEFAULT NULL,
  `COUNT_CERTIFICATION` decimal(10,0) DEFAULT NULL,
  `COUNT_HEALTH` decimal(10,0) DEFAULT NULL,
  `COUNT_EVENT` decimal(10,0) DEFAULT NULL,
  `COUNT_CURRICULUM` decimal(10,0) DEFAULT NULL,
  `ACC_ID` char(36) DEFAULT NULL,
  `UPDATE_DATE` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_code`
--

INSERT INTO `t_code` (`COD_ID`, `COD_ISSUE_DATE`, `COD_STATE`, `COD_ROOT`, `COUNT_LABORAL`, `COUNT_ACADEMIC`, `COUNT_CERTIFICATION`, `COUNT_HEALTH`, `COUNT_EVENT`, `COUNT_CURRICULUM`, `ACC_ID`, `UPDATE_DATE`) VALUES
('a45f923b-3996-11ec-a595-16aa0443c0bb', '2021-10-30 15:32:50', 'A', 'A45F8B2B', '200', '275', '200', '200', '200', '200', '1c0db742-b6d2-42a1-ae11-fbafb3200916', '2022-02-02 00:21:56'),
('a4d892da-3996-11ec-a595-16aa0443c0bb', '2021-10-30 15:32:51', 'A', 'A4D88C5B', '200', '275', '200', '200', '200', '200', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', '2022-02-02 00:21:55'),
('a5628e95-3996-11ec-a595-16aa0443c0bb', '2021-10-30 15:32:52', 'A', 'A5628813', '200', '273', '200', '200', '200', '200', '04b2a22e-c037-418a-987b-64b28894ce06', '2022-02-02 00:21:57'),
('a5fb1015-3996-11ec-a595-16aa0443c0bb', '2021-10-30 15:32:53', 'A', 'A5FB09C2', '200', '267', '200', '200', '200', '200', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', '2022-02-02 00:21:56'),
('a68479d7-3996-11ec-a595-16aa0443c0bb', '2021-10-30 15:32:54', 'A', 'A684730E', '200', '276', '200', '200', '200', '200', 'b8368d69-03d3-49cf-aadf-2c37769bd371', '2022-02-02 00:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `t_company_branch`
--

CREATE TABLE `t_company_branch` (
  `CBR_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `CBR_DES` varchar(150) NOT NULL,
  `PARAM_A` varchar(100) DEFAULT NULL,
  `PARAM_B` varchar(100) DEFAULT NULL,
  `PARAM_C` varchar(100) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT current_timestamp(),
  `DELETED` int(11) NOT NULL DEFAULT 0 COMMENT 'deleted 0 false 1 true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company_branch`
--

INSERT INTO `t_company_branch` (`CBR_ID`, `ACC_ID`, `CBR_DES`, `PARAM_A`, `PARAM_B`, `PARAM_C`, `DATE_CREATED`, `DELETED`) VALUES
('2bfbcc2a-a199-41ca-8d20-cd23c65de593', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Headquarters', NULL, NULL, NULL, '2021-10-30 14:57:05', 0),
('fd9b5376-3671-4ee7-81b3-0b8fb3f2a6a9', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Principal Global', NULL, NULL, NULL, '2021-10-30 14:21:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_company_branch_template`
--

CREATE TABLE `t_company_branch_template` (
  `ID` char(36) NOT NULL,
  `TEMPLATE_ID` char(36) DEFAULT NULL,
  `CBR_ID` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_company_dept`
--

CREATE TABLE `t_company_dept` (
  `CDEPT_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `CDEPT_DES` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company_dept`
--

INSERT INTO `t_company_dept` (`CDEPT_ID`, `ACC_ID`, `CDEPT_DES`) VALUES
('2710b978-6f03-4f90-88ad-343659c297e5', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Departamento Xertify');

-- --------------------------------------------------------

--
-- Table structure for table `t_company_directory`
--

CREATE TABLE `t_company_directory` (
  `ACC_ID_COMPANY` char(36) NOT NULL,
  `ACC_ID_CUSTOMER` char(36) NOT NULL,
  `COU_ID` char(3) DEFAULT NULL,
  `ID_ID` decimal(10,0) DEFAULT NULL,
  `CV_PNAME` varchar(200) DEFAULT NULL,
  `CV_SNAME` varchar(50) DEFAULT NULL,
  `CV_PLAST` varchar(150) DEFAULT NULL,
  `CV_SLAST` varchar(50) DEFAULT NULL,
  `CV_MPHONE` varchar(50) DEFAULT NULL,
  `CV_SPHONE` varchar(50) DEFAULT NULL,
  `CV_ADDRESS` varchar(100) DEFAULT NULL,
  `CV_MMAIL` text DEFAULT NULL,
  `CV_SMAIL` text DEFAULT NULL,
  `CV_COMMENT` text DEFAULT NULL,
  `CV_DELETE` decimal(1,0) DEFAULT NULL,
  `CV_PER_NUMBER` varchar(50) DEFAULT NULL,
  `CV_BORN_DATE` datetime DEFAULT NULL,
  `CV_ISSUE_DATE` datetime DEFAULT NULL,
  `CV_EXP_DATE` datetime DEFAULT NULL,
  `CV_TPHONE` varchar(50) DEFAULT NULL,
  `CV_TMAIL` text DEFAULT NULL,
  `CV_CITY_REF` varchar(50) DEFAULT NULL,
  `DATE_CREATION` timestamp NULL DEFAULT NULL,
  `CV_PROGRESS` decimal(36,0) DEFAULT NULL,
  `CV_PER_EXP` varchar(50) DEFAULT NULL,
  `CV_TYPE` varchar(1) DEFAULT NULL,
  `CV_GENDER` varchar(1) DEFAULT NULL,
  `CV_FILE` varchar(36) DEFAULT NULL,
  `COMPANY_NAME` varchar(150) DEFAULT NULL,
  `COMPANY_LEGAL_NUMBER` varchar(30) DEFAULT NULL,
  `COMPANY_LEGAL_ID` decimal(10,0) DEFAULT NULL,
  `SOURCE` char(1) DEFAULT NULL,
  `COU_ID_COMPANY` char(3) DEFAULT NULL,
  `DATE_UPDATE` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta tabla tiene una primary key compuesta';

--
-- Dumping data for table `t_company_directory`
--

INSERT INTO `t_company_directory` (`ACC_ID_COMPANY`, `ACC_ID_CUSTOMER`, `COU_ID`, `ID_ID`, `CV_PNAME`, `CV_SNAME`, `CV_PLAST`, `CV_SLAST`, `CV_MPHONE`, `CV_SPHONE`, `CV_ADDRESS`, `CV_MMAIL`, `CV_SMAIL`, `CV_COMMENT`, `CV_DELETE`, `CV_PER_NUMBER`, `CV_BORN_DATE`, `CV_ISSUE_DATE`, `CV_EXP_DATE`, `CV_TPHONE`, `CV_TMAIL`, `CV_CITY_REF`, `DATE_CREATION`, `CV_PROGRESS`, `CV_PER_EXP`, `CV_TYPE`, `CV_GENDER`, `CV_FILE`, `COMPANY_NAME`, `COMPANY_LEGAL_NUMBER`, `COMPANY_LEGAL_ID`, `SOURCE`, `COU_ID_COMPANY`, `DATE_UPDATE`) VALUES
('8082dfbe-d4e0-4e03-901a-02dac72333dd', '04b2a22e-c037-418a-987b-64b28894ce06', 'TKM', '121', 'Jhezir', NULL, 'Canela', NULL, '+584245159599', '54524', NULL, '', '', 'testing 2-6-2022', '1', 'SHDubiywef', NULL, NULL, NULL, '24545', '', NULL, '2021-10-30 15:32:52', NULL, '1424354', 'C', 'M', NULL, NULL, NULL, NULL, 'F', 'VEN', '2022-06-01 23:14:49'),
('8082dfbe-d4e0-4e03-901a-02dac72333dd', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'COL', '1', 'Danny', NULL, 'Suarez', NULL, '+573005750500', NULL, NULL, 'dannyxertify@yopmail.com', NULL, NULL, NULL, 'wuiefbwuieg', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 15:32:50', NULL, NULL, 'C', 'M', NULL, NULL, NULL, NULL, 'F', 'COL', NULL),
('8082dfbe-d4e0-4e03-901a-02dac72333dd', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'VEN', '121', 'Leonardo', NULL, 'Alvarado', NULL, '+584145200715', NULL, NULL, 'leonardoxertify@yopmail.com', NULL, NULL, NULL, 'SHDubiywef', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 15:32:51', NULL, NULL, 'C', 'M', NULL, NULL, NULL, NULL, 'F', 'VEN', NULL),
('8082dfbe-d4e0-4e03-901a-02dac72333dd', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'IRL', '214', 'Felipe', NULL, 'Arenas', NULL, '+573106805129', NULL, NULL, 'felipexertify@yopmail.com', NULL, NULL, NULL, 'IBGFYEg', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 15:32:53', NULL, NULL, 'C', 'M', NULL, NULL, NULL, NULL, 'F', 'IRL', NULL),
('8082dfbe-d4e0-4e03-901a-02dac72333dd', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'AUS', '16', 'Cesar', NULL, 'Suarez', NULL, '+46704356485', NULL, NULL, 'cesarxertify@yopmail.com', NULL, NULL, NULL, 'BUWGF/UWFB(UWF', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 15:32:54', NULL, NULL, 'C', 'M', NULL, NULL, NULL, NULL, 'F', 'AUS', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_company_directory_xertify`
--

CREATE TABLE `t_company_directory_xertify` (
  `ACC_ID_COMPANY` char(36) NOT NULL,
  `ACC_ID_CUSTOMER` char(36) NOT NULL,
  `COU_ID` char(3) DEFAULT NULL,
  `ID_ID` decimal(10,0) DEFAULT NULL,
  `CV_PNAME` varchar(200) DEFAULT NULL,
  `CV_SNAME` varchar(50) DEFAULT NULL,
  `CV_PLAST` varchar(150) DEFAULT NULL,
  `CV_SLAST` varchar(50) DEFAULT NULL,
  `CV_MPHONE` varchar(50) DEFAULT NULL,
  `CV_SPHONE` varchar(50) DEFAULT NULL,
  `CV_ADDRESS` varchar(100) DEFAULT NULL,
  `CV_MMAIL` text DEFAULT NULL,
  `CV_SMAIL` text DEFAULT NULL,
  `CV_COMMENT` text DEFAULT NULL,
  `CV_DELETE` decimal(1,0) DEFAULT NULL,
  `CV_PER_NUMBER` varchar(50) DEFAULT NULL,
  `CV_BORN_DATE` datetime DEFAULT NULL,
  `CV_ISSUE_DATE` datetime DEFAULT NULL,
  `CV_EXP_DATE` datetime DEFAULT NULL,
  `CV_TPHONE` varchar(50) DEFAULT NULL,
  `CV_TMAIL` text DEFAULT NULL,
  `CV_CITY_REF` varchar(50) DEFAULT NULL,
  `DATE_CREATION` timestamp NULL DEFAULT NULL,
  `CV_PROGRESS` decimal(36,0) DEFAULT NULL,
  `CV_PER_EXP` varchar(50) DEFAULT NULL,
  `CV_TYPE` varchar(1) DEFAULT NULL,
  `CV_GENDER` varchar(1) DEFAULT NULL,
  `CV_FILE` varchar(36) DEFAULT NULL,
  `COMPANY_NAME` varchar(150) DEFAULT NULL,
  `COMPANY_LEGAL_NUMBER` varchar(30) DEFAULT NULL,
  `COMPANY_LEGAL_ID` decimal(10,0) DEFAULT NULL,
  `SOURCE` char(1) DEFAULT NULL,
  `COU_ID_COMPANY` char(3) DEFAULT NULL,
  `DATE_UPDATE` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta tabla tiene una primary key compuesta';

-- --------------------------------------------------------

--
-- Table structure for table `t_company_group`
--

CREATE TABLE `t_company_group` (
  `PROD_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `METARECORD_TYPE` char(2) DEFAULT 'EV',
  `DESCRIPTION` text DEFAULT NULL COMMENT 'DESCRIPTION',
  `PROS_REQUEST_BY` varchar(50) DEFAULT NULL,
  `DATE_START` datetime DEFAULT NULL,
  `DATE_END` datetime DEFAULT NULL,
  `TITLE` varchar(300) NOT NULL,
  `AREA` varchar(50) DEFAULT NULL COMMENT 'NAME',
  `STATE` varchar(2) DEFAULT NULL,
  `TYPE` varchar(1) DEFAULT NULL,
  `LOCATION` varchar(50) DEFAULT NULL,
  `URL` varchar(500) DEFAULT NULL,
  `COMPANY` int(11) DEFAULT 0,
  `EXPIRATION_DATE` timestamp NULL DEFAULT NULL,
  `EXPIRATION_DAYS` int(11) DEFAULT NULL,
  `APPROBATION_REQUIRED` int(11) DEFAULT 0,
  `PRICE` decimal(7,2) DEFAULT NULL,
  `PERCENTAGE_ATTENDANCE` decimal(10,0) DEFAULT NULL,
  `SESSIONS_NUMBER` int(11) DEFAULT NULL,
  `URL_REGISTRATION` varchar(100) DEFAULT NULL,
  `URL_IMG` varchar(150) DEFAULT NULL,
  `GRADE_FIRST` decimal(10,0) DEFAULT 0,
  `GRADE_LAST` decimal(10,0) DEFAULT 0,
  `REGISTRATION_DEADLINE` timestamp NULL DEFAULT NULL,
  `REGISTRATION_CODE` varchar(20) DEFAULT NULL,
  `BLOCKCHAIN` varchar(70) DEFAULT '0',
  `LANG` varchar(2) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT current_timestamp(),
  `DATE_CREATION` datetime DEFAULT current_timestamp(),
  `TEMPLATE_ID` char(36) DEFAULT NULL,
  `CBR_ID` char(36) DEFAULT NULL,
  `CDEPT_ID` char(36) DEFAULT NULL,
  `ALLOW_DUPLICATES` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company_group`
--

INSERT INTO `t_company_group` (`PROD_ID`, `ACC_ID`, `METARECORD_TYPE`, `DESCRIPTION`, `PROS_REQUEST_BY`, `DATE_START`, `DATE_END`, `TITLE`, `AREA`, `STATE`, `TYPE`, `LOCATION`, `URL`, `COMPANY`, `EXPIRATION_DATE`, `EXPIRATION_DAYS`, `APPROBATION_REQUIRED`, `PRICE`, `PERCENTAGE_ATTENDANCE`, `SESSIONS_NUMBER`, `URL_REGISTRATION`, `URL_IMG`, `GRADE_FIRST`, `GRADE_LAST`, `REGISTRATION_DEADLINE`, `REGISTRATION_CODE`, `BLOCKCHAIN`, `LANG`, `DATE_CREATED`, `DATE_CREATION`, `TEMPLATE_ID`, `CBR_ID`, `CDEPT_ID`, `ALLOW_DUPLICATES`) VALUES
('9940ddff-79d7-4b55-ab82-3972975dd93c', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'AC', 'Art group 2021', 'Admin Crypto', NULL, NULL, 'Art Group 2021', 'XX', 'A', 'E', 'Tokyo, Japan', 'https://xertify.co', 0, NULL, 0, 0, '7000.00', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '2021-10-30 14:58:10', '2021-10-30 14:58:10', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'fd9b5376-3671-4ee7-81b3-0b8fb3f2a6a9', '2710b978-6f03-4f90-88ad-343659c297e5', 1),
('a99908eb-771a-4461-a607-e7699f03d1d9', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'LR', NULL, 'Admin Crypto', NULL, NULL, 'Prueba Jhezir', 'XX', 'A', 'E', 'Global', 'xertify.co', 0, NULL, 0, 0, '7000.00', NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '2022-01-19 18:35:02', '2022-01-19 18:35:02', 'd5979310-9683-4f48-9686-736ca01c41d9', 'fd9b5376-3671-4ee7-81b3-0b8fb3f2a6a9', '2710b978-6f03-4f90-88ad-343659c297e5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_company_group_customer`
--

CREATE TABLE `t_company_group_customer` (
  `CV_ID` char(36) NOT NULL,
  `PROD_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `CV_COMMENT` text DEFAULT NULL,
  `CV_DELETE` decimal(1,0) DEFAULT NULL,
  `DATE_CREATION` timestamp NULL DEFAULT NULL,
  `SOURCE` char(1) DEFAULT NULL,
  `DATE_UPDATE` timestamp NULL DEFAULT NULL,
  `REQUEST_STATE` int(11) DEFAULT NULL,
  `EMAIL_COPY` varchar(300) DEFAULT NULL COMMENT 'Campo auxiliar para enviar copias de correo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company_group_customer`
--

INSERT INTO `t_company_group_customer` (`CV_ID`, `PROD_ID`, `ACC_ID`, `CV_COMMENT`, `CV_DELETE`, `DATE_CREATION`, `SOURCE`, `DATE_UPDATE`, `REQUEST_STATE`, `EMAIL_COPY`) VALUES
('01b7276e-5a42-4bd5-981b-0930bc77008c', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'b8368d69-03d3-49cf-aadf-2c37769bd371', NULL, '0', '2021-10-30 15:32:54', 'F', NULL, NULL, NULL),
('06313bf9-c47a-41c8-aed1-a900f185e02e', '9940ddff-79d7-4b55-ab82-3972975dd93c', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', NULL, '0', '2021-10-30 15:32:51', 'F', NULL, NULL, NULL),
('0709949c-b7c5-40da-860a-087c4e60ef96', '9940ddff-79d7-4b55-ab82-3972975dd93c', '1c0db742-b6d2-42a1-ae11-fbafb3200916', NULL, '0', '2021-10-30 15:32:50', 'F', NULL, NULL, NULL),
('8b81ddb5-bcb9-4868-be74-2ea59c198d3b', '9940ddff-79d7-4b55-ab82-3972975dd93c', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', NULL, '0', '2021-10-30 15:32:53', 'F', NULL, NULL, NULL),
('f25da24f-994a-4411-9b03-62362914d0f0', '9940ddff-79d7-4b55-ab82-3972975dd93c', '04b2a22e-c037-418a-987b-64b28894ce06', NULL, '0', '2021-10-30 15:32:52', NULL, '2021-12-11 05:59:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_company_group_dynamic_properties`
--

CREATE TABLE `t_company_group_dynamic_properties` (
  `ID_COMPANY_GROUP_DYNAMIC_PROPERTIES` char(36) NOT NULL,
  `PROD_ID` char(36) NOT NULL,
  `CUST_PREF_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company_group_dynamic_properties`
--

INSERT INTO `t_company_group_dynamic_properties` (`ID_COMPANY_GROUP_DYNAMIC_PROPERTIES`, `PROD_ID`, `CUST_PREF_ID`) VALUES
('0de5ac77-a991-457a-b652-2923cd4ccbe4', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'cc72cd19-4b6c-411f-a20e-9a7904eda681'),
('1c377440-4f1a-4262-851d-e8c2ec6c9c62', '9940ddff-79d7-4b55-ab82-3972975dd93c', '88a0308b-e1b8-4ed6-bb39-dcdb411a15cc'),
('55b094cc-2924-4f52-ba8a-af2bc9ef9be6', '9940ddff-79d7-4b55-ab82-3972975dd93c', '773f59cb-383c-417c-8a04-509f7c4cb0ef'),
('67713c9b-4c73-4608-a185-be8269cacd3b', '9940ddff-79d7-4b55-ab82-3972975dd93c', '199664e7-b8d5-4396-9900-c5450d6f6821'),
('900be0fb-8472-48e5-88da-2ffd571dbbfb', '9940ddff-79d7-4b55-ab82-3972975dd93c', '5eefba5f-76ae-4c34-994d-3a14de7ab98f'),
('a346b0f8-56ec-4329-97c9-9898024acb4f', '9940ddff-79d7-4b55-ab82-3972975dd93c', '9467a0ac-c2a6-457c-806e-7fb73212e2e4'),
('ab37b8a5-7928-4b9f-814a-d18d5f832833', '9940ddff-79d7-4b55-ab82-3972975dd93c', 'c3352b27-2572-4509-8b49-890c643e9db7'),
('b586a756-11a2-4ddc-97dc-32a6c28d8e54', '9940ddff-79d7-4b55-ab82-3972975dd93c', '341618fe-5918-4a44-a36d-928ad1ed9f39'),
('e32f06b8-b614-4f9c-a06d-315953eacbf0', 'a99908eb-771a-4461-a607-e7699f03d1d9', '88a0308b-e1b8-4ed6-bb39-dcdb411a15cc');

-- --------------------------------------------------------

--
-- Table structure for table `t_company_group_media`
--

CREATE TABLE `t_company_group_media` (
  `ID_GROUP_MEDIA` char(36) NOT NULL,
  `TYPE` char(1) DEFAULT NULL COMMENT 'V=Video I=Imagen F=File',
  `CONTENT_TYPE` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `CATEGORY` varchar(50) NOT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL COMMENT 'A=Active I=Inactive',
  `PROD_ID` varchar(100) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_company_group_teacher`
--

CREATE TABLE `t_company_group_teacher` (
  `COMPANY_GROUP_TEACHER_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `PROD_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `ACC_ID` char(36) CHARACTER SET latin1 DEFAULT NULL COMMENT 'EVERY TEACHER HAS HIS OWN ACC_ID',
  `FIRST_NAME` varchar(100) DEFAULT NULL,
  `LAST_NAME` varchar(100) DEFAULT NULL,
  `URL_LINKEDIN` varchar(200) DEFAULT NULL,
  `URL_TWITTER` varchar(200) DEFAULT NULL,
  `URL_FACEBOOK` varchar(200) DEFAULT NULL,
  `URL_IMG` varchar(200) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `STATUS` char(1) NOT NULL COMMENT 'A=Publicado I=Sin publicar',
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DATE_UPDATE` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_company_jobtitle`
--

CREATE TABLE `t_company_jobtitle` (
  `ACC_ID` char(36) NOT NULL,
  `CBT_NAME` varchar(100) NOT NULL,
  `CBT_FUNC` text DEFAULT NULL,
  `CBT_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company_jobtitle`
--

INSERT INTO `t_company_jobtitle` (`ACC_ID`, `CBT_NAME`, `CBT_FUNC`, `CBT_ID`) VALUES
('8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Admin AEP', 'Admin Xertify', 'a7aa000c-fcc0-44bb-915a-972ca1e23db2');

-- --------------------------------------------------------

--
-- Table structure for table `t_company_pre_register`
--

CREATE TABLE `t_company_pre_register` (
  `id` int(11) NOT NULL,
  `COU_ID` char(3) DEFAULT NULL,
  `TYPE_ID` varchar(45) DEFAULT NULL,
  `COM_ID` varchar(45) DEFAULT NULL,
  `COM_NAME` varchar(150) DEFAULT NULL,
  `COM_EMAIL` varchar(100) DEFAULT NULL,
  `CREATED` timestamp NULL DEFAULT current_timestamp(),
  `COM_PER_NAME` varchar(150) DEFAULT NULL,
  `COM_PER_LNAME` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_company_rep_legal`
--

CREATE TABLE `t_company_rep_legal` (
  `REP_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `COU_ID` int(11) DEFAULT NULL,
  `ID_ID` int(11) DEFAULT NULL,
  `REP_DOC_ID` varchar(20) DEFAULT NULL,
  `REP_NAME_LEGAL_MAN` varchar(100) DEFAULT NULL,
  `REP_EMAIL_LEGAL_MAN` varchar(100) DEFAULT NULL,
  `REP_TEL_LEGAL_MAN` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_company_role`
--

CREATE TABLE `t_company_role` (
  `CROL_ID` char(36) NOT NULL,
  `CROL_NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company_role`
--

INSERT INTO `t_company_role` (`CROL_ID`, `CROL_NAME`) VALUES
('ADMIN80bd-fac5-11e6-8ff8-396e7d2648f', 'ADMINISTRADOR'),
('ANALISTA-fac5-11e6-8ff8-396e7d2648f5', 'ANALISTA'),
('AUTO8781-fac5-11e6-8ff8-396e7d2648f5', 'AUTORIZADOR'),
('COOR7ae8-fac5-11e6-8ff8-396e7d2648f5', 'COORDINADOR'),
('MASTER81-fac5-11e6-8ff8-396e7d2648f5', 'MASTER');

-- --------------------------------------------------------

--
-- Table structure for table `t_company_staff`
--

CREATE TABLE `t_company_staff` (
  `STAFF_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `TMZ_ID` char(36) DEFAULT NULL,
  `CUSR_FNAME` text DEFAULT NULL,
  `CUSR_LNAME` text DEFAULT NULL,
  `CUSR_EMAIL` text DEFAULT NULL,
  `CUSR_EMAIL_A` varchar(50) DEFAULT NULL,
  `CUSR_EMAIL_B` varchar(50) DEFAULT NULL,
  `CUSR_PHONE` varchar(20) DEFAULT NULL,
  `CUSR_PHONE_A` varchar(20) DEFAULT NULL,
  `CUSR_PHONE_B` varchar(20) DEFAULT NULL,
  `CUSR_CDATE` datetime DEFAULT NULL,
  `CUSR_UDATE` datetime DEFAULT NULL,
  `CUSR_STATE` varchar(2) DEFAULT NULL,
  `COMPANY_EMAIL` varchar(50) DEFAULT NULL,
  `CBR_ID` char(36) DEFAULT NULL,
  `CDEPT_ID` char(36) DEFAULT NULL,
  `CBT_ID` char(36) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company_staff`
--

INSERT INTO `t_company_staff` (`STAFF_ID`, `ACC_ID`, `TMZ_ID`, `CUSR_FNAME`, `CUSR_LNAME`, `CUSR_EMAIL`, `CUSR_EMAIL_A`, `CUSR_EMAIL_B`, `CUSR_PHONE`, `CUSR_PHONE_A`, `CUSR_PHONE_B`, `CUSR_CDATE`, `CUSR_UDATE`, `CUSR_STATE`, `COMPANY_EMAIL`, `CBR_ID`, `CDEPT_ID`, `CBT_ID`, `status`) VALUES
('31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'f26d9029-83e3-400d-8cc0-c035f5f5c080', 'hello  testing111', 'testing 2', 'testing@gmail.com', NULL, NULL, '11111111111', NULL, NULL, '2021-10-30 14:21:19', NULL, 'AC', NULL, '2bfbcc2a-a199-41ca-8d20-cd23c65de593', '2710b978-6f03-4f90-88ad-343659c297e5', 'a7aa000c-fcc0-44bb-915a-972ca1e23db2', 0),
('33f2186d-7a13-4464-9de7-b0db9eaf0585', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'f26d9029-83e3-400d-8cc0-c035f5f5c080', 'hello  testing111', 'testing 2', 'testing@gmail.com', NULL, NULL, '11111111111', NULL, NULL, '2022-04-07 07:22:09', '2022-04-07 07:22:09', 'AC', NULL, '2bfbcc2a-a199-41ca-8d20-cd23c65de593', '2710b978-6f03-4f90-88ad-343659c297e5', NULL, 0),
('65ef0a93-c607-44d5-9f43-e03bcbe071df', '774362e8-f260-4897-a6db-a4a877dda314', 'f26d9029-83e3-400d-8cc0-c035f5f5c080', 'hello 26', 'testing 2', 'testing@gmail.com', NULL, NULL, '11111111111', NULL, NULL, '2022-05-25 11:11:16', '2022-05-25 11:11:16', 'AC', NULL, '2bfbcc2a-a199-41ca-8d20-cd23c65de593', '2710b978-6f03-4f90-88ad-343659c297e5', NULL, 0),
('68e9ea3a-c177-4550-9078-c80fca5c86a2', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'f26d9029-83e3-400d-8cc0-c035f5f5c080', 'hello  testing111', 'testing 2', 'testing@gmail.com', NULL, NULL, '11111111111', NULL, NULL, '2022-02-25 09:43:20', '2022-02-25 09:43:20', 'AC', NULL, '2bfbcc2a-a199-41ca-8d20-cd23c65de593', '2710b978-6f03-4f90-88ad-343659c297e5', NULL, 0),
('75ce0a03-19c4-49fe-81f8-79e4cc7ed56a', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'f26d9029-83e3-400d-8cc0-c035f5f5c080', 'hello  testing111', 'testing 2', 'testing@gmail.com', NULL, NULL, '11111111111', NULL, NULL, '2022-02-25 09:38:31', '2022-02-25 09:38:31', 'AC', NULL, '2bfbcc2a-a199-41ca-8d20-cd23c65de593', '2710b978-6f03-4f90-88ad-343659c297e5', NULL, 0),
('df2a8f50-2674-4f4e-9557-26305319cd5c', 'caf28cd9-b362-48df-9750-001f5bdf135c', 'f26d9029-83e3-400d-8cc0-c035f5f5c080', 'hello  testing111', 'testing 2', 'testing@gmail.com', NULL, NULL, '11111111111', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'AC', NULL, '2bfbcc2a-a199-41ca-8d20-cd23c65de593', '2710b978-6f03-4f90-88ad-343659c297e5', NULL, 0),
('f0914cd4-6e98-4d2e-b5d0-ab1076dfb75b', 'a3984a66-9a01-492d-80e1-75c402d50ea5', 'f26d9029-83e3-400d-8cc0-c035f5f5c080', 'hello  testing111', 'testing 2', 'testing@gmail.com', NULL, NULL, '11111111111', NULL, NULL, '2022-05-25 11:18:58', '2022-05-25 11:18:58', 'AC', NULL, '2bfbcc2a-a199-41ca-8d20-cd23c65de593', '2710b978-6f03-4f90-88ad-343659c297e5', NULL, 0),
('ffefbb37-d93c-4a00-938b-c29438637b98', '774362e8-f260-4897-a6db-a4a877dda314', 'f26d9029-83e3-400d-8cc0-c035f5f5c080', 'hello  testing111', 'testing 2', 'testing@gmail.com', NULL, NULL, '11111111111', NULL, NULL, '2022-05-25 11:07:14', '2022-05-25 11:07:14', 'AC', NULL, '2bfbcc2a-a199-41ca-8d20-cd23c65de593', '2710b978-6f03-4f90-88ad-343659c297e5', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_company_staff_role`
--

CREATE TABLE `t_company_staff_role` (
  `CUT_ID` char(36) NOT NULL,
  `CROL_ID` char(36) NOT NULL,
  `STAFF_ID` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company_staff_role`
--

INSERT INTO `t_company_staff_role` (`CUT_ID`, `CROL_ID`, `STAFF_ID`) VALUES
('0b9ac133-ea82-484f-9e87-0c84e633009c', 'MASTER81-fac5-11e6-8ff8-396e7d2648f5', 'f0914cd4-6e98-4d2e-b5d0-ab1076dfb75b'),
('1747a947-8af5-4b83-9b89-287d47b8eb43', 'AUTO8781-fac5-11e6-8ff8-396e7d2648f5', 'f0914cd4-6e98-4d2e-b5d0-ab1076dfb75b'),
('1ca02bea-8ea6-485e-83a6-27b669a4dfb0', 'COOR7ae8-fac5-11e6-8ff8-396e7d2648f5', '65ef0a93-c607-44d5-9f43-e03bcbe071df'),
('23bb7f78-4f21-4793-b37c-e9e198db7092', 'ANALISTA-fac5-11e6-8ff8-396e7d2648f5', 'f0914cd4-6e98-4d2e-b5d0-ab1076dfb75b'),
('2bfe3b55-a767-4623-96a7-7f5b85e13260', 'AUTO8781-fac5-11e6-8ff8-396e7d2648f5', '33f2186d-7a13-4464-9de7-b0db9eaf0585'),
('3b13d42f-91c2-4b61-8b7d-284391aaa89e', 'COOR7ae8-fac5-11e6-8ff8-396e7d2648f5', '33f2186d-7a13-4464-9de7-b0db9eaf0585'),
('47c69d89-423d-49e6-985a-80d6f674b591', 'ANALISTA-fac5-11e6-8ff8-396e7d2648f5', '33f2186d-7a13-4464-9de7-b0db9eaf0585'),
('4832209b-db3b-4de6-ab6f-b702b05499a9', 'MASTER81-fac5-11e6-8ff8-396e7d2648f5', '33f2186d-7a13-4464-9de7-b0db9eaf0585'),
('af86481e-dae8-4f21-9857-80d3776c5fc6', 'COOR7ae8-fac5-11e6-8ff8-396e7d2648f5', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249'),
('b3ed2ede-4502-4abb-9a03-249ccfe9a124', 'ANALISTA-fac5-11e6-8ff8-396e7d2648f5', '75ce0a03-19c4-49fe-81f8-79e4cc7ed56a'),
('bd0c8dbb-f654-4a98-a90c-60cc4d89fcbb', 'ADMIN80bd-fac5-11e6-8ff8-396e7d2648f', 'ffefbb37-d93c-4a00-938b-c29438637b98'),
('c0e49938-0243-4357-a10b-9aba655f116b', 'ADMIN80bd-fac5-11e6-8ff8-396e7d2648f', '68e9ea3a-c177-4550-9078-c80fca5c86a2'),
('d53590ed-41df-426a-92d1-ec526168d1ea', 'ADMIN80bd-fac5-11e6-8ff8-396e7d2648f', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249'),
('d6d80606-4d87-44d7-8234-490b23e50587', 'AUTO8781-fac5-11e6-8ff8-396e7d2648f5', '65ef0a93-c607-44d5-9f43-e03bcbe071df'),
('eb03b830-577b-4185-8e79-241562fcd52a', 'ADMIN80bd-fac5-11e6-8ff8-396e7d2648f', '65ef0a93-c607-44d5-9f43-e03bcbe071df'),
('f022cb90-ebbb-42f9-9db9-75a31c92d6cf', 'ADMIN80bd-fac5-11e6-8ff8-396e7d2648f', 'df2a8f50-2674-4f4e-9557-26305319cd5c');

-- --------------------------------------------------------

--
-- Table structure for table `t_contract`
--

CREATE TABLE `t_contract` (
  `ID_SIGN_TEMPLATE` char(36) NOT NULL,
  `TEMPLATE_ID` char(36) NOT NULL DEFAULT 'e05527e9-35bf-4365-943d-5340041cf0f4',
  `STATUS` varchar(1) DEFAULT NULL,
  `DATE_CONFIRM` datetime DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `AGENT` text DEFAULT NULL,
  `PDF_S3_URL` varchar(150) NOT NULL,
  `PDF_PROCESSED_S3_URL` varchar(150) NOT NULL,
  `ACC_ID` varchar(36) DEFAULT NULL,
  `REAL_STATE_ID` varchar(36) DEFAULT NULL,
  `FEED` char(1) DEFAULT NULL,
  `VALID_DATE` date DEFAULT NULL,
  `VALID_DAYS` int(11) DEFAULT NULL,
  `METADATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`METADATA`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_contract_log`
--

CREATE TABLE `t_contract_log` (
  `ID_CONTRACT_LOG` char(36) NOT NULL,
  `DATE_ACTION` datetime DEFAULT NULL,
  `COMMENT` text DEFAULT NULL,
  `ACTION` varchar(45) DEFAULT NULL,
  `ID_CONTRACT` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `AGENT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_contract_share`
--

CREATE TABLE `t_contract_share` (
  `SHARE_ID` char(36) NOT NULL,
  `CONTRACT_ID` char(36) NOT NULL,
  `SHARE_EMAIL` varchar(100) NOT NULL,
  `TOKEN` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_contract_signature`
--

CREATE TABLE `t_contract_signature` (
  `CONTRACT_SIGNATURE_ID` char(36) NOT NULL,
  `CONTRACT_ID` char(36) NOT NULL,
  `SIGNATURE_ID` char(36) DEFAULT NULL,
  `SIGNATURE_STATE` char(2) NOT NULL DEFAULT 'U',
  `COMMENT` varchar(150) DEFAULT NULL,
  `SIGNER_ID` char(36) NOT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `SIGNATURE_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_contract_signer`
--

CREATE TABLE `t_contract_signer` (
  `CONTRACT_SIGNER_ID` char(36) NOT NULL,
  `CONTRACT_ID` char(36) NOT NULL,
  `SIGNER_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `APPROVAL_STATE` char(1) NOT NULL COMMENT 'R for rejected, A for approved',
  `REASON` text DEFAULT NULL,
  `TOKEN` char(6) DEFAULT NULL,
  `TOKEN_USED` smallint(6) NOT NULL DEFAULT 0,
  `ORDER` int(11) DEFAULT 0,
  `DPER_ID` varchar(36) NOT NULL,
  `ACTIVE` smallint(6) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_country_plan`
--

CREATE TABLE `t_country_plan` (
  `PLA_ID` char(36) NOT NULL,
  `COU_ID` char(3) NOT NULL,
  `PLA_INTERVAL` char(36) NOT NULL,
  `PLA_TRIAL` char(36) NOT NULL,
  `PLA_COST` decimal(9,2) NOT NULL,
  `PLA_TRIES` char(36) NOT NULL,
  `PLA_DUE` char(36) NOT NULL,
  `PLA_QNT` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_country_plan`
--

INSERT INTO `t_country_plan` (`PLA_ID`, `COU_ID`, `PLA_INTERVAL`, `PLA_TRIAL`, `PLA_COST`, `PLA_TRIES`, `PLA_DUE`, `PLA_QNT`) VALUES
('06a7f57a-87c8-4ca7-b805-def8e124e894', 'COL', '', '', '20000.00', '', '', '200'),
('37109c8d-a6d5-4bc3-9eaa-1996a2801ae3', 'COL', '30', '30', '2000.00', 'Tries', 'Dues plan', '1000'),
('37109c8d-a6d5-4bc3-9eaa-1996a2801ae4', 'COL', '30', '30', '2000.00', 'Tries', 'Dues plan', '10487'),
('f57599d0-9a20-4749-8654-25c2c191241c', 'COL', '30', '30', '1000.00', 'Ejemplo de prueba', 'Due Plan', '500'),
('f57599d0-9a20-4749-8654-25c2c191248c', 'COL', '30', '30', '1000.00', 'Euros Frances', 'Due Plan', '310'),
('f57599d0-9a20-ff49-8654-25c2c191241c', 'COL', '30', '30', '2000.00', 'Tries', 'MX', '1973'),
('fa4eeedc-0e11-4250-a1a0-42f8ff1c8134', 'COL', '', '', '500000.00', '', '', '210'),
('fa4eeedc-0e11-4250-a1a0-42f8ff1c813x', 'COL', '', '', '500000.00', '', '', '210'),
('fa4eeedc-0e11-4250-a1a0-42f8ff1c8152', 'COL', '', '', '500000.00', '', '', '120');

-- --------------------------------------------------------

--
-- Table structure for table `t_country_plan_tax`
--

CREATE TABLE `t_country_plan_tax` (
  `CPT_ID` char(36) NOT NULL,
  `COU_ID` int(11) NOT NULL,
  `TMZ_ID` char(36) NOT NULL,
  `CPT_DES` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_currency`
--

CREATE TABLE `t_currency` (
  `CUR_ID` char(36) NOT NULL,
  `CUR_NAME` varchar(65) NOT NULL,
  `CUR_ALPHA` varchar(3) NOT NULL,
  `CUR_NUM` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer`
--

CREATE TABLE `t_customer` (
  `ACC_ID` char(36) NOT NULL,
  `PAY_ID` char(36) DEFAULT NULL,
  `COU_ID` char(3) DEFAULT NULL,
  `LAN_ID` char(36) DEFAULT NULL,
  `ACC_STATE` varchar(10) NOT NULL,
  `ACC_TYPE` varchar(1) NOT NULL,
  `CREATION_DATE` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `COM_NAME` varchar(150) DEFAULT NULL,
  `COM_NAME_LEGAL` varchar(100) DEFAULT NULL,
  `COM_ADDRESS` varchar(100) DEFAULT NULL,
  `COM_PHONE` varchar(15) DEFAULT NULL,
  `COM_IMG` varchar(2083) DEFAULT NULL,
  `COM_EMAIL` varchar(100) DEFAULT NULL,
  `COM_TYPE` char(1) DEFAULT NULL,
  `PER_NAME` varchar(300) DEFAULT NULL,
  `PER_LASTNAME` varchar(200) DEFAULT NULL,
  `PER_BORN_DATE` datetime DEFAULT NULL,
  `PER_PHONE` varchar(50) DEFAULT NULL,
  `PER_ADDRESS` varchar(100) DEFAULT NULL,
  `PER_MAIL` varchar(100) DEFAULT NULL,
  `PER_SPHONE` varchar(50) DEFAULT NULL,
  `PER_TPHONE` varchar(50) DEFAULT NULL,
  `PER_SMAIL` varchar(50) DEFAULT NULL,
  `PER_TMAIL` varchar(50) DEFAULT NULL,
  `PER_PRINCIPAL_MAIL` varchar(15) DEFAULT NULL,
  `PER_CITY_REF` varchar(50) DEFAULT NULL,
  `PER_CREATION_DATE` timestamp NULL DEFAULT NULL,
  `PER_UPDATE_DATE` timestamp NULL DEFAULT NULL,
  `PER_ACTIVITY` decimal(1,0) DEFAULT NULL,
  `PER_PROF` decimal(2,0) DEFAULT NULL,
  `PER_INST` varchar(50) DEFAULT NULL,
  `PER_GENDER` varchar(1) DEFAULT NULL,
  `TMZ_ID` char(36) DEFAULT NULL,
  `PER_IMG` varchar(128) DEFAULT NULL,
  `PER_OPTIONS` text DEFAULT NULL,
  `COM_URL` varchar(128) DEFAULT NULL,
  `COM_BANNER` longtext DEFAULT NULL,
  `COM_STYLE` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_customer`
--

INSERT INTO `t_customer` (`ACC_ID`, `PAY_ID`, `COU_ID`, `LAN_ID`, `ACC_STATE`, `ACC_TYPE`, `CREATION_DATE`, `UPDATE_DATE`, `COM_NAME`, `COM_NAME_LEGAL`, `COM_ADDRESS`, `COM_PHONE`, `COM_IMG`, `COM_EMAIL`, `COM_TYPE`, `PER_NAME`, `PER_LASTNAME`, `PER_BORN_DATE`, `PER_PHONE`, `PER_ADDRESS`, `PER_MAIL`, `PER_SPHONE`, `PER_TPHONE`, `PER_SMAIL`, `PER_TMAIL`, `PER_PRINCIPAL_MAIL`, `PER_CITY_REF`, `PER_CREATION_DATE`, `PER_UPDATE_DATE`, `PER_ACTIVITY`, `PER_PROF`, `PER_INST`, `PER_GENDER`, `TMZ_ID`, `PER_IMG`, `PER_OPTIONS`, `COM_URL`, `COM_BANNER`, `COM_STYLE`, `status`) VALUES
('04b2a22e-c037-418a-987b-64b28894ce06', NULL, 'VEN', NULL, 'TBD', 'P', '2021-10-30 15:32:52', '2022-06-01 11:39:27', '', '', '', '', '', '', '', 'Jhezir', 'Canela', NULL, '+584245159599', NULL, 'jhezirxertify@yopmail.com', '', '', '', '', NULL, NULL, NULL, '2021-12-11 05:59:46', NULL, NULL, NULL, 'M', NULL, NULL, NULL, '', NULL, NULL, 0),
('0a4f2132-524d-480c-80e9-fbca06630b32', NULL, 'AGO', 'e36ae9b7-8eb1-440c-a2e1-9ec89f808a5e', 'A', 'C', NULL, NULL, 'R-com 23', NULL, NULL, '7894561230', 'http://localhost/fasttrackadminapi/public/upload/Company/1645531986.jpg', 'com.mail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '048334bf-03bb-4f8e-a452-ae2c1eca1c29', NULL, NULL, 'R-com', 'http://localhost/fasttrackadminapi/public/upload/Company/1645531986Banner.png', 'zxgffdg', 0),
('1c0db742-b6d2-42a1-ae11-fbafb3200916', NULL, 'COL', NULL, 'TBD', 'P', '2021-10-30 15:32:50', '2022-06-01 12:46:46', '', '', '', '', '', '', '', 'Danny', 'Suarez', NULL, '+573005750500', NULL, 'dannyxertify@yopmail.com', '', '', 'dannyxertify@.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M', NULL, NULL, NULL, '', NULL, NULL, 0),
('1f8a7aaa-a564-40f9-b0a3-4aafde6a7eb7', NULL, 'AIA', 'ed949685-e068-4680-b57e-fc4b7028802', 'A', 'C', NULL, NULL, 'Rtesting', NULL, NULL, '1111010100', 'http://localhost:3000/publicuploadCompany1652345221021.jpg', 'rksonkar99991@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ed949685-e068-4680-b57e-fc4b7028802', NULL, NULL, 'xyz.com', 'http://localhost:3000/publicuploadComBanner1652345221024.jpg', 'sandkjhsfh', 0),
('38cf81b7-4ae9-44e7-be7b-9502ebb28efd', NULL, 'VEN', NULL, 'TBD', 'P', '2021-10-30 15:32:51', NULL, '', '', '', '', '', '', '', 'Leonardo', 'Alvarado', NULL, '+584145200715', NULL, 'leonardoxertify@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M', NULL, NULL, NULL, '', NULL, NULL, 0),
('49bc4a74-ef7a-4391-ae83-d5d5b57116c9', NULL, 'AIA', NULL, 'A', 'C', NULL, NULL, 'test-Final', NULL, NULL, '1234567899', 'http://localhost/fasttrackadminapi/public/upload/Company/1645534015.jpg', 'com.mail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0274be6f-60ce-4494-96d3-1c62160a4b32', NULL, NULL, 'admin@admin.com', 'http://localhost/fasttrackadminapi/public/upload/Company/1645534015Banner.jpg', 'to good', 0),
('5c55b45a-7c5f-4123-8ef2-032c17348878', NULL, 'AIA', 'ed949685-e068-4680-b57e-fc4b7028802', 'A', 'C', '2022-05-12 10:26:43', '2022-05-12 10:26:43', 'Rtesting tesing2', NULL, NULL, '1111010100', '1652351203920.jpg', 'rksonkar99991@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ed949685-e068-4680-b57e-fc4b7028802', NULL, NULL, 'xyz.com', '1652351203930.jpg', 'sandkjhsfh', 0),
('60fc8a6b-a420-416a-8e7d-b37424896dc8', NULL, 'AIA', 'ed949685-e068-4680-b57e-fc4b7028802', 'adf', 'C', NULL, NULL, 'wrd', NULL, NULL, '5456485', 'C:\\xampp\\tmp\\php43C5.tmp', 'dagf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Choose...', NULL, NULL, 'wfeqe', 'C:\\xampp\\tmp\\php43C6.tmp', 'sedgf', 0),
('774362e8-f260-4897-a6db-a4a877dda314', NULL, 'AIA', 'ed949685-e068-4680-b57e-fc4b7028802', 'A', 'C', '2022-05-12 09:09:23', '2022-05-12 09:09:23', 'Rtesting tesing2', NULL, NULL, '1111010100', 'http://localhost:3000/publicuploadCompany1652346563918.jpg', 'rksonkar99991@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ed949685-e068-4680-b57e-fc4b7028802', NULL, NULL, 'xyz.com', 'http://localhost:3000/publicuploadComBanner1652346563922.jpg', 'sandkjhsfh', 0),
('8082dfbe-d4e0-4e03-901a-02dac72333dd', '4879b30e-fab1-11e6-8ff8-396e7d2648f5', 'COL', '15d171a0-0287-4f49-b85d-0b4499f1f594', 'A', 'C', '2021-10-30 14:21:19', '2022-04-01 04:27:04', 'Testing Company', NULL, 'Global', 'NO APLICA', 'https://xertifycloud.s3.amazonaws.com/hillcomx/hillco_new.png', NULL, 'W', NULL, NULL, NULL, '+584245159599', NULL, 'jhezirxertify@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7ea7c900-a5db-46d8-aaea-b80f53936215', NULL, NULL, 'xertify.co', NULL, NULL, 0),
('83c21021-bc2a-4c29-856e-e17da7bd6d5d', NULL, 'IRL', NULL, 'TBD', 'P', '2021-10-30 15:32:53', NULL, '', '', '', '', '', '', '', 'Felipe', 'Arenas', NULL, '+573106805129', NULL, 'felipexertify@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M', NULL, NULL, NULL, '', NULL, NULL, 0),
('a14067d1-e2b1-4a72-ada0-ac1c2f3d725d', NULL, 'GBR', 'e36ae9b7-8eb1-440c-a2e1-9ec89f808a5e', 'A', 'C', NULL, NULL, 'R-Company', NULL, NULL, '123456987', 'http://localhost/fasttrackadminapi/public/upload/Company/1645530639.jpg', 'rcompany', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '341f08a2-ebe6-4c7a-9c00-b1e9abce0ff6', NULL, NULL, 'com.rCompany', 'http://localhost/fasttrackadminapi/public/upload/Company/1645530639Banner.png', 'sandkjhsfh', 0),
('a3984a66-9a01-492d-80e1-75c402d50ea5', NULL, 'AGO', 'ed949685-e068-4680-b57e-fc4b70288023', 'A', 'C', '2022-05-21 07:48:33', '2022-05-20 11:50:31', 'hello  ', NULL, NULL, '123456', '1653047431510.jpg', 'afesfewqgf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4f515912-c7ed-4908-92e0-3c695f4b9b96', NULL, NULL, 'skmfl;m;l', '1653047431521.jpg', 's', 0),
('b8368d69-03d3-49cf-aadf-2c37769bd371', NULL, 'AUS', NULL, 'TBD', 'P', '2021-10-30 15:32:54', NULL, '', '', '', '', '', '', '', 'Cesar', 'Suarez', NULL, '+46704356485', NULL, 'cesarxertify@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M', NULL, NULL, NULL, '', NULL, NULL, 0),
('caf28cd9-b362-48df-9750-001f5bdf135c', NULL, 'ABW', 'ed949685-e068-4680-b57e-fc4b70288024', 'A', 'C', '2022-05-25 04:25:23', '2022-05-20 12:49:27', 'testing25Rakesh', NULL, NULL, '123456789', '1653452723481.png', 'https://getbootstrap.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4f515912-c7ed-4908-92e0-3c695f4b9b96', NULL, NULL, 'https://getbootstrap.com/docs/4', '1653452723498.jpg', 'sss', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_account_verification`
--

CREATE TABLE `t_customer_account_verification` (
  `VER_ID` varchar(36) NOT NULL,
  `ACC_ID` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `TYPE_ACC` varchar(1) NOT NULL,
  `VER_PHONE_CODE` varchar(100) DEFAULT NULL,
  `VER_PHONE_MESSAGE_ID` varchar(100) DEFAULT NULL,
  `VER_PHONE_STATE` varchar(10) DEFAULT NULL COMMENT 'Posible options: A,TBD,ARV,AAV,AEV',
  `VER_MAIL` varchar(128) DEFAULT NULL,
  `VER_MAIL_TYPE` varchar(15) DEFAULT NULL,
  `VER_MAIL_CODE` varchar(100) NOT NULL,
  `VER_MAIL_CODE_MAIL_SENDED` varchar(100) NOT NULL,
  `VER_MAIL_STATE` varchar(10) DEFAULT NULL COMMENT 'Posible options: A,TBD,ARV,AAV,AEV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_api_request`
--

CREATE TABLE `t_customer_api_request` (
  `REQUEST_ID` char(36) NOT NULL,
  `TOKEN_ID` char(36) DEFAULT NULL,
  `CREATED` timestamp NULL DEFAULT current_timestamp(),
  `REQUEST` text DEFAULT NULL,
  `SUCCESS` smallint(6) DEFAULT 1,
  `ERROR` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_api_token`
--

CREATE TABLE `t_customer_api_token` (
  `CUSTOMER_TOKEN_ID` char(36) NOT NULL,
  `ACC_ID` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `ALLOWED_ORIGIN` varchar(50) DEFAULT NULL,
  `WEBHOOK_URL` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_credential`
--

CREATE TABLE `t_customer_credential` (
  `CCRED_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `CCRED_PWD` text NOT NULL,
  `CCRED_TYPE` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_credential_staff`
--

CREATE TABLE `t_customer_credential_staff` (
  `CCRED_ID` char(36) NOT NULL,
  `STAFF_ID` char(36) NOT NULL,
  `CCRED_PWD` text NOT NULL,
  `CCRED_PIN` text NOT NULL,
  `CCRED_TYPE` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_customer_credential_staff`
--

INSERT INTO `t_customer_credential_staff` (`CCRED_ID`, `STAFF_ID`, `CCRED_PWD`, `CCRED_PIN`, `CCRED_TYPE`) VALUES
('27eebd06-c38a-4c9a-ad28-1a3c1d4adfaf', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '##rad#s30xh', '##rad#s30xh', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_domain`
--

CREATE TABLE `t_customer_domain` (
  `DOMAIN_ID` char(36) NOT NULL,
  `ACC_ID` char(36) DEFAULT NULL,
  `DOMAIN_NAME` varchar(200) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  `CREATED` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_firebase_token`
--

CREATE TABLE `t_customer_firebase_token` (
  `FCM_ID` char(36) NOT NULL,
  `ACC_ID` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `FCM_TOKEN` varchar(255) DEFAULT NULL COMMENT 'FCM registration token.',
  `CREATED` timestamp NOT NULL DEFAULT current_timestamp(),
  `CHANGED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table for registration tokens from Firebase Cloud Messaging.';

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_legal_id`
--

CREATE TABLE `t_customer_legal_id` (
  `DPER_ID` char(36) NOT NULL,
  `ID_ID` decimal(10,0) DEFAULT NULL,
  `ACC_ID` char(36) DEFAULT NULL,
  `DPER_NUMBER` varchar(50) DEFAULT NULL,
  `DPER_ISSUE_DATE` datetime DEFAULT NULL,
  `DPER_EXPIRED_DATE` datetime DEFAULT NULL,
  `DPER_STATE` varchar(1) DEFAULT NULL,
  `DPER_CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_customer_legal_id`
--

INSERT INTO `t_customer_legal_id` (`DPER_ID`, `ID_ID`, `ACC_ID`, `DPER_NUMBER`, `DPER_ISSUE_DATE`, `DPER_EXPIRED_DATE`, `DPER_STATE`, `DPER_CITY`) VALUES
('6e3bd052-bf50-4956-b150-fb47a32f7916', '16', '04b2a22e-c037-418a-987b-64b28894ce06', 'testing add', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'A', 'noida'),
('71cd9d9b-9716-4997-bda2-4088f4ed8f70', '16', '04b2a22e-c037-418a-987b-64b28894ce06', 'rakesh testing', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'B', ''),
('a45f8721-3996-11ec-a595-16aa0443c0bb', '1', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'wuiefbwuieg', '2021-10-30 15:32:50', NULL, 'A', NULL),
('a4d88846-3996-11ec-a595-16aa0443c0bb', '121', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'SHDubiywef', '2021-10-30 15:32:51', NULL, 'A', NULL),
('a5628460-3996-11ec-a595-16aa0443c0bb', '121', '04b2a22e-c037-418a-987b-64b28894ce06', '12334556rrr', '2022-06-10 00:00:00', '2022-06-10 00:00:00', 'A', ''),
('a5fb062a-3996-11ec-a595-16aa0443c0bb', '214', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'IBGFYEg', '2021-10-30 15:32:53', NULL, 'A', NULL),
('a6846f69-3996-11ec-a595-16aa0443c0bb', '16', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'BUWGF/UWFB(UWF', '2021-10-30 15:32:54', NULL, 'A', NULL),
('a9959255-584f-4e3e-b0be-f425b84d62a2', '121', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'rakee11111', '2022-04-13 00:00:00', '2022-04-21 00:00:00', 'D', 'noida'),
('c7bb12dc-52bb-4724-a55f-e8be4474e384', '16', '04b2a22e-c037-418a-987b-64b28894ce06', 'rtest', '2022-04-22 00:00:00', '2022-04-27 00:00:00', 'A', '4444');

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_notification`
--

CREATE TABLE `t_customer_notification` (
  `N_ID` char(36) NOT NULL,
  `ACC_ID` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `FCM_ID` char(36) DEFAULT NULL COMMENT 'FCM user token.',
  `N_FCM_ID` char(128) DEFAULT NULL COMMENT 'FCM message ID',
  `N_TYPE` char(1) NOT NULL COMMENT 'I=input, O=output',
  `N_FCM_DATA` text DEFAULT NULL,
  `N_FCM_NOTIFICATION` text DEFAULT NULL,
  `N_STATUS` char(1) NOT NULL COMMENT 'Notification status. C=created, R=read',
  `CREATED` timestamp NOT NULL DEFAULT current_timestamp(),
  `CHANGED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_reset_password`
--

CREATE TABLE `t_customer_reset_password` (
  `R_ID` char(36) NOT NULL,
  `ACC_ID` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `R_STATE` char(1) NOT NULL,
  `R_CODE` varchar(100) NOT NULL,
  `R_SMS_ID` varchar(100) DEFAULT NULL,
  `R_MAIL_ID` varchar(100) DEFAULT NULL,
  `CREATED` timestamp NOT NULL DEFAULT current_timestamp(),
  `CHANGED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table for reset password of users.';

-- --------------------------------------------------------

--
-- Table structure for table `t_customer_subscription`
--

CREATE TABLE `t_customer_subscription` (
  `SUB_ID` char(36) NOT NULL,
  `PLA_ID` char(36) NOT NULL,
  `SUB_DURATION` decimal(10,0) DEFAULT NULL,
  `SUB_START_DATE` datetime NOT NULL,
  `SUB_END_DATE` datetime DEFAULT NULL,
  `SUB_STATE` varchar(1) DEFAULT NULL,
  `SUB_TYPE_PAYMENT` varchar(36) DEFAULT NULL,
  `SUB_USE` decimal(6,0) DEFAULT 0,
  `SUB_TOTAL` int(11) DEFAULT 0,
  `ACC_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_customer_subscription`
--

INSERT INTO `t_customer_subscription` (`SUB_ID`, `PLA_ID`, `SUB_DURATION`, `SUB_START_DATE`, `SUB_END_DATE`, `SUB_STATE`, `SUB_TYPE_PAYMENT`, `SUB_USE`, `SUB_TOTAL`, `ACC_ID`) VALUES
('aeb0b9eb-df6d-439f-87b7-f38e36efded9', 'fa4eeedc-0e11-4250-a1a0-42f8ff1c8152', '180', '2021-10-30 14:21:19', '2021-10-30 14:21:19', 'A', '4879b30e-fab1-11e6-8ff8-396e7d2648f5', '0', 0, '8082dfbe-d4e0-4e03-901a-02dac72333dd');

-- --------------------------------------------------------

--
-- Table structure for table `t_cust_pref`
--

CREATE TABLE `t_cust_pref` (
  `T_CUST_PREF_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `TYPE` char(1) NOT NULL COMMENT 'P=Participant, B=Branch, C=Course',
  `NAME` varchar(50) DEFAULT NULL,
  `KEY_PREF` varchar(10) DEFAULT NULL,
  `STATUS` char(2) DEFAULT 'A',
  `DATE_CREATED` timestamp NULL DEFAULT NULL,
  `DATE_MODIFIED` timestamp NULL DEFAULT NULL,
  `DATA_TYPE` char(1) NOT NULL DEFAULT 'T',
  `ORDER_COLUMN` int(11) DEFAULT NULL,
  `DEFAULT_VALUE` varchar(3000) DEFAULT NULL,
  `FATHER_ID` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_cust_pref`
--

INSERT INTO `t_cust_pref` (`T_CUST_PREF_ID`, `ACC_ID`, `TYPE`, `NAME`, `KEY_PREF`, `STATUS`, `DATE_CREATED`, `DATE_MODIFIED`, `DATA_TYPE`, `ORDER_COLUMN`, `DEFAULT_VALUE`, `FATHER_ID`) VALUES
('006009c4-5fb4-4554-b9f1-7460a23f0210', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'nombre 2', 'nombre2', 'A', '2021-12-22 22:00:52', NULL, 'T', 1, 'nombre 2', 'f55eeb24-17e6-47db-9d9f-ab794db82da5'),
('199664e7-b8d5-4396-9900-c5450d6f6821', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'children', 'children', 'A', '2021-10-30 15:16:46', NULL, 'T', NULL, NULL, NULL),
('341618fe-5918-4a44-a36d-928ad1ed9f39', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'nationality', 'nationalit', 'A', '2021-10-30 15:13:54', NULL, 'T', NULL, NULL, NULL),
('475bd0c6-c76f-4f2e-9fbc-a73b5c0fd2fe', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'selection multiple', 'multiple', 'A', '2021-12-22 22:10:32', NULL, 'L', NULL, NULL, NULL),
('5eefba5f-76ae-4c34-994d-3a14de7ab98f', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'preferences', 'preference', 'A', '2021-12-11 05:38:16', NULL, 'S', NULL, NULL, NULL),
('773f59cb-383c-417c-8a04-509f7c4cb0ef', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'sex', 'sex', 'A', '2021-12-11 05:55:54', NULL, 'L', NULL, NULL, NULL),
('88a0308b-e1b8-4ed6-bb39-dcdb411a15cc', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'average', 'average', 'A', '2021-10-30 15:15:57', NULL, 'T', NULL, NULL, NULL),
('9467a0ac-c2a6-457c-806e-7fb73212e2e4', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'dategrad', 'dategrad', 'A', '2021-10-30 15:24:41', NULL, 'T', NULL, NULL, NULL),
('9fed52c3-6bfd-49d6-8ff3-59dfa6e7ad6a', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'nombre 1', 'nombre1', 'A', '2021-12-22 22:00:13', NULL, 'T', 1, 'Nombre 1', 'f55eeb24-17e6-47db-9d9f-ab794db82da5'),
('c3352b27-2572-4509-8b49-890c643e9db7', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'location', 'location', 'A', '2021-10-30 15:10:00', NULL, 'T', NULL, NULL, NULL),
('cc72cd19-4b6c-411f-a20e-9a7904eda681', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'salary', 'salary', 'A', '2021-10-30 15:15:21', NULL, 'T', NULL, NULL, NULL),
('f55eeb24-17e6-47db-9d9f-ab794db82da5', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'P', 'lista', 'lista', 'A', '2021-12-22 21:58:52', NULL, 'X', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_cust_pref_branch`
--

CREATE TABLE `t_cust_pref_branch` (
  `CUST_PREFB_ID` char(36) NOT NULL,
  `T_CUST_PREF_ID` char(36) NOT NULL,
  `CBR_ID` char(36) NOT NULL,
  `VALUE` varchar(200) DEFAULT NULL,
  `STATUS` char(2) DEFAULT 'A',
  `DATE_CREATED` timestamp NULL DEFAULT NULL,
  `DATE_MODIFIED` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_cust_pref_course`
--

CREATE TABLE `t_cust_pref_course` (
  `CUST_PREFC_ID` char(36) NOT NULL,
  `T_CUST_PREF_ID` char(36) NOT NULL,
  `PROD_ID` char(36) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8 DEFAULT NULL,
  `STATUS` char(2) DEFAULT 'AC',
  `DATE_CREATED` timestamp NULL DEFAULT NULL,
  `DATE_MODIFIED` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_cust_pref_participant`
--

CREATE TABLE `t_cust_pref_participant` (
  `CUST_PREFP_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `T_CUST_PREF_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `CV_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `VALUE` varchar(3000) DEFAULT NULL,
  `STATUS` char(2) CHARACTER SET latin1 DEFAULT 'A',
  `DATE_CREATED` timestamp NULL DEFAULT NULL,
  `DATE_MODIFIED` timestamp NULL DEFAULT NULL,
  `ROW_ID` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `FATHER_ID` char(36) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_cust_pref_participant`
--

INSERT INTO `t_cust_pref_participant` (`CUST_PREFP_ID`, `T_CUST_PREF_ID`, `CV_ID`, `VALUE`, `STATUS`, `DATE_CREATED`, `DATE_MODIFIED`, `ROW_ID`, `FATHER_ID`) VALUES
('09a44f23-1b59-405d-bc28-c03f283d3a06', '199664e7-b8d5-4396-9900-c5450d6f6821', '0709949c-b7c5-40da-860a-087c4e60ef96', 'YES', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('09e25e19-f2c8-4e17-bd1a-0c1512abfd7c', 'cc72cd19-4b6c-411f-a20e-9a7904eda681', '06313bf9-c47a-41c8-aed1-a900f185e02e', '7 milions', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('0b587db0-68db-4259-91da-2a197189592a', '199664e7-b8d5-4396-9900-c5450d6f6821', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'YES', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('0d0495b9-74d4-490a-b9ef-13d614ec3af1', '341618fe-5918-4a44-a36d-928ad1ed9f39', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'California', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('0d45128c-0ac1-4bc7-9f66-b588a2a83231', 'c3352b27-2572-4509-8b49-890c643e9db7', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'Santo Domingo', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('27b6ba02-ef23-43e4-90a2-ab20a74be20e', 'cc72cd19-4b6c-411f-a20e-9a7904eda681', '0709949c-b7c5-40da-860a-087c4e60ef96', '7 milions', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('2aa913ee-dc6b-4139-a0ea-2a11cbd31f38', '773f59cb-383c-417c-8a04-509f7c4cb0ef', 'f25da24f-994a-4411-9b03-62362914d0f0', 'LISTXXXXX', 'AC', '2021-12-11 05:57:51', NULL, NULL, NULL),
('2c397a8a-124e-4be6-8052-92a53f1015fb', '9467a0ac-c2a6-457c-806e-7fb73212e2e4', '0709949c-b7c5-40da-860a-087c4e60ef96', 'November 25th, 2020', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('2f218878-9171-44f8-8636-8770c9f84559', '88a0308b-e1b8-4ed6-bb39-dcdb411a15cc', '0709949c-b7c5-40da-860a-087c4e60ef96', '10', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('2fab56bc-48fa-463b-9fc3-847786472d46', '341618fe-5918-4a44-a36d-928ad1ed9f39', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'Domincan Republic', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('30834fdc-682d-40e8-ae20-e60885567bb9', 'cc72cd19-4b6c-411f-a20e-9a7904eda681', '01b7276e-5a42-4bd5-981b-0930bc77008c', '7 milions', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('359823db-cb3a-4d9a-a174-2dc86165f5a8', '341618fe-5918-4a44-a36d-928ad1ed9f39', 'f25da24f-994a-4411-9b03-62362914d0f0', 'Italy', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('39a502d8-2275-45e9-9e82-5ab236ce1bb1', '199664e7-b8d5-4396-9900-c5450d6f6821', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'YES', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('43cddaef-dff3-4ada-bee3-f4fbc016f9d4', 'c3352b27-2572-4509-8b49-890c643e9db7', 'f25da24f-994a-4411-9b03-62362914d0f0', 'Milan', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('4562cf79-1648-4fd2-8bde-b0f90e6b44a3', 'cc72cd19-4b6c-411f-a20e-9a7904eda681', 'f25da24f-994a-4411-9b03-62362914d0f0', '7 milions', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('48565297-220a-4da1-9417-0bdaf9baae3e', 'c3352b27-2572-4509-8b49-890c643e9db7', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'San Diego', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('72dcb7f5-1b2a-4418-9443-b7b718e05bf9', '9467a0ac-c2a6-457c-806e-7fb73212e2e4', 'f25da24f-994a-4411-9b03-62362914d0f0', 'November 25th, 2020', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('75eef9b6-8008-4144-ae47-a996c5382c83', 'c3352b27-2572-4509-8b49-890c643e9db7', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'Lund', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('77c61fb6-b7f9-4d26-be73-1a8abb9d464c', '88a0308b-e1b8-4ed6-bb39-dcdb411a15cc', '01b7276e-5a42-4bd5-981b-0930bc77008c', '15', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('84ed5747-712a-4823-9bd5-c7cb46e6f537', '9467a0ac-c2a6-457c-806e-7fb73212e2e4', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'August 10th, 2022', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('a95c32d0-e299-4395-a67e-f3c23777941f', '9467a0ac-c2a6-457c-806e-7fb73212e2e4', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'February 18th, 1987', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('ac0ffed9-56c6-4842-817c-cfdec39c7008', '88a0308b-e1b8-4ed6-bb39-dcdb411a15cc', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', '14', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('add22547-c650-4288-b583-463fd5ee2827', '88a0308b-e1b8-4ed6-bb39-dcdb411a15cc', '06313bf9-c47a-41c8-aed1-a900f185e02e', '12', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('b9fbc63a-3775-4764-8fe2-f8478dd26bef', '199664e7-b8d5-4396-9900-c5450d6f6821', 'f25da24f-994a-4411-9b03-62362914d0f0', 'YES', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('bbd6b8ed-33e0-4de6-bfac-2b330e232361', 'c3352b27-2572-4509-8b49-890c643e9db7', '0709949c-b7c5-40da-860a-087c4e60ef96', 'Tokyo', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('d7ff9ba4-a610-4cb4-b9d1-99c214fb58d5', 'cc72cd19-4b6c-411f-a20e-9a7904eda681', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', '7 milions', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('ddf12f58-ea47-4f98-8377-4b55075ca995', '341618fe-5918-4a44-a36d-928ad1ed9f39', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'Sweden', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('defbef6a-5ca8-4985-bc41-600f549328b7', '88a0308b-e1b8-4ed6-bb39-dcdb411a15cc', 'f25da24f-994a-4411-9b03-62362914d0f0', '13', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('efce4e2f-9724-4ca4-8d53-4440d8e11e82', '9467a0ac-c2a6-457c-806e-7fb73212e2e4', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'July 30,2037', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('f46a5441-c304-4554-b7cc-9fe3e0285676', '199664e7-b8d5-4396-9900-c5450d6f6821', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'YES', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL),
('fb9bd02f-5ec5-44d8-8a4f-657a853a6c0f', '341618fe-5918-4a44-a36d-928ad1ed9f39', '0709949c-b7c5-40da-860a-087c4e60ef96', 'Japan', 'AC', '2021-10-30 15:32:50', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_cust_pref_participant_children`
--

CREATE TABLE `t_cust_pref_participant_children` (
  `CUST_PREF_PART_ID` char(36) NOT NULL,
  `CUST_PREFP_ID` char(36) NOT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `STATUS` char(2) DEFAULT 'A',
  `DATE_CREATED` timestamp NULL DEFAULT NULL,
  `DATE_MODIFIED` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_cust_pref_participant_children`
--

INSERT INTO `t_cust_pref_participant_children` (`CUST_PREF_PART_ID`, `CUST_PREFP_ID`, `VALUE`, `STATUS`, `DATE_CREATED`, `DATE_MODIFIED`) VALUES
('2d694371-de07-4c62-ba6a-a132ca3ce980', '2aa913ee-dc6b-4139-a0ea-2a11cbd31f38', 'Masculino', 'AC', '2021-12-11 05:58:50', NULL),
('b43bc0c9-0fb4-4292-a54f-24f000837d80', '2aa913ee-dc6b-4139-a0ea-2a11cbd31f38', 'Femenino', 'AC', '2021-12-11 05:58:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_cust_pref_participant_image`
--

CREATE TABLE `t_cust_pref_participant_image` (
  `CUST_PREF_PART_IMG_ID` char(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `STATUS` char(2) DEFAULT 'A',
  `DATE_CREATED` timestamp NULL DEFAULT NULL,
  `DATE_MODIFIED` timestamp NULL DEFAULT NULL,
  `ROW_ID` char(36) DEFAULT NULL,
  `T_CUST_PREF_ID` char(36) NOT NULL,
  `FATHER_ID` char(36) DEFAULT NULL,
  `CV_ID` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_digital_signature`
--

CREATE TABLE `t_digital_signature` (
  `T_DIGITAL_SIG_ID` char(36) NOT NULL,
  `JKS` varchar(3000) DEFAULT NULL,
  `DATE_ISSUE` timestamp NULL DEFAULT NULL,
  `DATE_EXPIRED` timestamp NULL DEFAULT NULL,
  `SECRET` varchar(50) NOT NULL,
  `DEFAULT_LOCATION` varchar(50) NOT NULL,
  `DEFAULT_USER` varchar(50) NOT NULL,
  `DEFAULT_REASON` varchar(100) NOT NULL,
  `ACC_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_digital_signature`
--

INSERT INTO `t_digital_signature` (`T_DIGITAL_SIG_ID`, `JKS`, `DATE_ISSUE`, `DATE_EXPIRED`, `SECRET`, `DEFAULT_LOCATION`, `DEFAULT_USER`, `DEFAULT_REASON`, `ACC_ID`) VALUES
('c6ead839-b8a8-4e46-a5a9-9832065ad010', 'aaaaaaaaaa/xertify_co.p12', '2019-02-13 05:00:00', '2020-02-27 05:00:00', 'hola22', 'Bogotá, Colombia', 'Xertify', 'Xertify Certificate', '8082dfbe-d4e0-4e03-901a-02dac72333dd');

-- --------------------------------------------------------

--
-- Table structure for table `t_event_class`
--

CREATE TABLE `t_event_class` (
  `T_EVENT_CL_ID` char(36) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `DURATION` int(11) NOT NULL DEFAULT 0,
  `PROD_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_event_class_checkin`
--

CREATE TABLE `t_event_class_checkin` (
  `EVENT_CLASS_CHECK_ID` char(36) NOT NULL,
  `T_EVENT_CL_ID` char(36) NOT NULL,
  `DATE` timestamp NULL DEFAULT NULL,
  `DATE_ANSWER` timestamp NULL DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL COMMENT 'EnumCourseRequestStatus',
  `CV_ID` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_event_registration`
--

CREATE TABLE `t_event_registration` (
  `EVENT_REG_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `DATE_PROCESSED` timestamp NULL DEFAULT NULL,
  `IP_ADDRESS` varchar(20) DEFAULT NULL,
  `IP_INFO` varchar(150) DEFAULT NULL,
  `PROD_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_form`
--

CREATE TABLE `t_form` (
  `ID_FORM` char(36) CHARACTER SET latin1 NOT NULL,
  `TEMPLATES_ID` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`TEMPLATES_ID`)),
  `PARAMETERS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`PARAMETERS`)),
  `STYLES_URL` longtext DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `URL_SUCCES` longtext NOT NULL,
  `URL_ERROR` longtext NOT NULL,
  `PRE_REGISTER` tinyint(4) NOT NULL,
  `AUTOMATIC` tinyint(4) NOT NULL,
  `ALLOWED_ORIGIN` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ALLOWED_ORIGIN`)),
  `PAYMENT_TOKEN` varchar(512) DEFAULT NULL,
  `PAYMENT_SECRET` varchar(512) DEFAULT NULL,
  `TITLE` varchar(250) DEFAULT NULL,
  `URL_IMAGE` varchar(1000) DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `ACC_ID` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_generation_signature`
--

CREATE TABLE `t_generation_signature` (
  `ID_GENERATION_SIGNATURE` char(36) NOT NULL,
  `ID_SIGNATURE` char(36) CHARACTER SET utf8mb4 DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `SIGNATURE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `TEMPLATE_ID` char(36) NOT NULL,
  `ORDER` int(11) DEFAULT NULL,
  `ACC_ID_COMPANY` char(36) NOT NULL,
  `ACC_ID_SIGNER` char(36) NOT NULL,
  `ID_CERTIFICATE_GENERATION` char(36) NOT NULL,
  `EXPIRATION` date DEFAULT NULL,
  `TYPE_SIGNER` varchar(1) DEFAULT NULL COMMENT 'Possible Values:\n- P: Primary Validator\n- S: Scondary Validator',
  `NUMBER_VAR` int(11) NOT NULL,
  `IP` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_generation_signature_records`
--

CREATE TABLE `t_generation_signature_records` (
  `ID_GENERATION_SIGNATURE_RECORD` char(36) NOT NULL,
  `ACC_ID_SIGNER` char(36) CHARACTER SET latin1 NOT NULL,
  `CV_ID_PARTICIPANT` char(36) CHARACTER SET latin1 NOT NULL,
  `CODE` char(30) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `COMMENTS` longtext DEFAULT NULL,
  `DATE_RECORD` timestamp NOT NULL DEFAULT current_timestamp(),
  `ID_GENERATION_SIGNATURE` char(36) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_geo_country`
--

CREATE TABLE `t_geo_country` (
  `COU_ID` int(11) NOT NULL,
  `COU_AREA` varchar(30) DEFAULT NULL,
  `COU_ISO2` varchar(2) DEFAULT NULL,
  `COU_ISO_ALPHA` char(3) NOT NULL,
  `COU_ISO_UN` varchar(4) DEFAULT NULL,
  `TMZ_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_geo_country`
--

INSERT INTO `t_geo_country` (`COU_ID`, `COU_AREA`, `COU_ISO2`, `COU_ISO_ALPHA`, `COU_ISO_UN`, `TMZ_ID`) VALUES
(533, '297', 'AW', 'ABW', '533', '7ea7c900-a5db-46d8-aaea-b80f53936226'),
(4, '93', 'AF', 'AFG', '4', '7ea7c900-a5db-46d8-aaea-b80f53936466'),
(24, '244', 'AO', 'AGO', '24', '7ea7c900-a5db-46d8-aaea-b80f53936220'),
(660, '1-264', 'AI', 'AIA', '660', '7ea7c900-a5db-46d8-aaea-b80f53936221'),
(248, NULL, 'AX', 'ALA', '248', '7ea7c900-a5db-46d8-aaea-b80f53936215'),
(8, '355', 'AL', 'ALB', '8', '7ea7c900-a5db-46d8-aaea-b80f53936216'),
(20, '376', 'AD', 'AND', '20', '7ea7c900-a5db-46d8-aaea-b80f53936219'),
(530, '599', 'AN', 'ANT', '530', '7ea7c900-a5db-46d8-aaea-b80f53936370'),
(784, '971', 'AE', 'ARE', '784', '7ea7c900-a5db-46d8-aaea-b80f53936450'),
(32, '54', 'AR', 'ARG', '32', '7ea7c900-a5db-46d8-aaea-b80f53936224'),
(51, '374', 'AM', 'ARM', '51', '7ea7c900-a5db-46d8-aaea-b80f53936225'),
(16, '1-684', 'AS', 'ASM', '16', '7ea7c900-a5db-46d8-aaea-b80f53936218'),
(10, '672', 'AQ', 'ATA', '10', '7ea7c900-a5db-46d8-aaea-b80f53936222'),
(260, NULL, 'TF', 'ATF', '260', '7ea7c900-a5db-46d8-aaea-b80f53936292'),
(28, '1-268', 'AG', 'ATG', '28', '7ea7c900-a5db-46d8-aaea-b80f53936223'),
(36, '61', 'AU', 'AUS', '36', '7ea7c900-a5db-46d8-aaea-b80f53936227'),
(40, '43', 'AT', 'AUT', '40', '7ea7c900-a5db-46d8-aaea-b80f53936228'),
(31, '994', 'AZ', 'AZE', '31', '7ea7c900-a5db-46d8-aaea-b80f53936229'),
(108, '257', 'BI', 'BDI', '108', '7ea7c900-a5db-46d8-aaea-b80f53936250'),
(56, '32', 'BE', 'BEL', '56', '7ea7c900-a5db-46d8-aaea-b80f53936235'),
(204, '229', 'BJ', 'BEN', '204', '7ea7c900-a5db-46d8-aaea-b80f53936237'),
(854, '226', 'BF', 'BFA', '854', '7ea7c900-a5db-46d8-aaea-b80f53936249'),
(50, '880', 'BD', 'BGD', '50', '7ea7c900-a5db-46d8-aaea-b80f53936232'),
(100, '359', 'BG', 'BGR', '100', '7ea7c900-a5db-46d8-aaea-b80f53936248'),
(48, '973', 'BH', 'BHR', '48', '7ea7c900-a5db-46d8-aaea-b80f53936231'),
(44, '1-242', 'BS', 'BHS', '44', '7ea7c900-a5db-46d8-aaea-b80f53936230'),
(70, '387', 'BA', 'BIH', '70', '7ea7c900-a5db-46d8-aaea-b80f53936241'),
(652, '590', 'BL', 'BLM', '652', '7ea7c900-a5db-46d8-aaea-b80f53936400'),
(112, '375', 'BY', 'BLR', '112', '7ea7c900-a5db-46d8-aaea-b80f53936234'),
(84, '501', 'BZ', 'BLZ', '84', '7ea7c900-a5db-46d8-aaea-b80f53936236'),
(60, '1-441', 'BM', 'BMU', '60', '7ea7c900-a5db-46d8-aaea-b80f53936238'),
(68, '591', 'BO', 'BOL', '68', '7ea7c900-a5db-46d8-aaea-b80f53936240'),
(76, '55', 'BR', 'BRA', '76', '7ea7c900-a5db-46d8-aaea-b80f53936244'),
(52, '1-246', 'BB', 'BRB', '52', '7ea7c900-a5db-46d8-aaea-b80f53936233'),
(96, '673', 'BN', 'BRN', '96', '7ea7c900-a5db-46d8-aaea-b80f53936247'),
(64, '975', 'BT', 'BTN', '64', '7ea7c900-a5db-46d8-aaea-b80f53936239'),
(74, NULL, 'BV', 'BVT', '74', '7ea7c900-a5db-46d8-aaea-b80f53936243'),
(72, '267', 'BW', 'BWA', '72', '7ea7c900-a5db-46d8-aaea-b80f53936242'),
(140, '236', 'CF', 'CAF', '140', '7ea7c900-a5db-46d8-aaea-b80f53936256'),
(124, '1', 'CA', 'CAN', '124', '7ea7c900-a5db-46d8-aaea-b80f53936253'),
(166, '61', 'CC', 'CCK', '166', '7ea7c900-a5db-46d8-aaea-b80f53936261'),
(756, '41', 'CH', 'CHE', '756', '7ea7c900-a5db-46d8-aaea-b80f53936432'),
(152, '56', 'CL', 'CHL', '152', '7ea7c900-a5db-46d8-aaea-b80f53936258'),
(156, '86', 'CN', 'CHN', '156', '7ea7c900-a5db-46d8-aaea-b80f53936259'),
(384, NULL, 'CI', 'CIV', '384', '7ea7c900-a5db-46d8-aaea-b80f53936267'),
(120, '237', 'CM', 'CMR', '120', '7ea7c900-a5db-46d8-aaea-b80f53936252'),
(180, '243', 'CD', 'COD', '180', '7ea7c900-a5db-46d8-aaea-b80f53936264'),
(178, '242', 'CG', 'COG', '178', '7ea7c900-a5db-46d8-aaea-b80f53936395'),
(184, '682', 'CK', 'COK', '184', '7ea7c900-a5db-46d8-aaea-b80f53936265'),
(170, '57', 'CO', 'COL', '170', '7ea7c900-a5db-46d8-aaea-b80f53936262'),
(174, '269', 'KM', 'COM', '174', '7ea7c900-a5db-46d8-aaea-b80f53936263'),
(132, '238', 'CV', 'CPV', '132', '7ea7c900-a5db-46d8-aaea-b80f53936254'),
(188, '506', 'CR', 'CRI', '188', '7ea7c900-a5db-46d8-aaea-b80f53936266'),
(192, '53', 'CU', 'CUB', '192', '7ea7c900-a5db-46d8-aaea-b80f53936269'),
(162, '61', 'CX', 'CXR', '162', '7ea7c900-a5db-46d8-aaea-b80f53936260'),
(136, '1-345', 'KY', 'CYM', '136', '7ea7c900-a5db-46d8-aaea-b80f53936255'),
(196, '357', 'CY', 'CYP', '196', '7ea7c900-a5db-46d8-aaea-b80f53936283'),
(203, '420', 'CZ', 'CZE', '203', '7ea7c900-a5db-46d8-aaea-b80f53936272'),
(276, '49', 'DE', 'DEU', '276', '7ea7c900-a5db-46d8-aaea-b80f53936296'),
(262, '253', 'DJ', 'DJI', '262', '7ea7c900-a5db-46d8-aaea-b80f53936274'),
(212, '1-767', 'DM', 'DMA', '212', '7ea7c900-a5db-46d8-aaea-b80f53936275'),
(208, '45', 'DK', 'DNK', '208', '7ea7c900-a5db-46d8-aaea-b80f53936273'),
(214, '1-809, 1-829, 1-849', 'DO', 'DOM', '214', '7ea7c900-a5db-46d8-aaea-b80f53936276'),
(12, '213', 'DZ', 'DZA', '12', '7ea7c900-a5db-46d8-aaea-b80f53936217'),
(218, '593', 'EC', 'ECU', '218', '7ea7c900-a5db-46d8-aaea-b80f53936278'),
(818, '20', 'EG', 'EGY', '818', '7ea7c900-a5db-46d8-aaea-b80f53936279'),
(232, '291', 'ER', 'ERI', '232', '7ea7c900-a5db-46d8-aaea-b80f53936282'),
(732, '212', 'EH', 'ESH', '732', '7ea7c900-a5db-46d8-aaea-b80f53936462'),
(724, '34', 'ES', 'ESP', '724', '7ea7c900-a5db-46d8-aaea-b80f53936425'),
(233, '372', 'EE', 'EST', '233', '7ea7c900-a5db-46d8-aaea-b80f53936283'),
(231, '251', 'ET', 'ETH', '231', '7ea7c900-a5db-46d8-aaea-b80f53936284'),
(246, '358', 'FI', 'FIN', '246', '7ea7c900-a5db-46d8-aaea-b80f53936288'),
(242, '679', 'FJ', 'FJI', '242', '7ea7c900-a5db-46d8-aaea-b80f53936287'),
(238, '500', 'FK', 'FLK', '238', '7ea7c900-a5db-46d8-aaea-b80f53936285'),
(250, '33', 'FR', 'FRA', '250', '7ea7c900-a5db-46d8-aaea-b80f53936289'),
(234, '298', 'FO', 'FRO', '234', '7ea7c900-a5db-46d8-aaea-b80f53936286'),
(583, '691', 'FM', 'FSM', '583', '7ea7c900-a5db-46d8-aaea-b80f53936357'),
(266, '241', 'GA', 'GAB', '266', '7ea7c900-a5db-46d8-aaea-b80f53936293'),
(826, '44', 'GB', 'GBR', '826', '7ea7c900-a5db-46d8-aaea-b80f53936451'),
(268, '995', 'GE', 'GEO', '268', '7ea7c900-a5db-46d8-aaea-b80f53936295'),
(831, '44-1481', 'GG', 'GGY', '831', '7ea7c900-a5db-46d8-aaea-b80f53936305'),
(288, '233', 'GH', 'GHA', '288', '7ea7c900-a5db-46d8-aaea-b80f53936297'),
(292, '350', 'GI', 'GIB', '292', '7ea7c900-a5db-46d8-aaea-b80f53936298'),
(324, '224', 'GN', 'GIN', '324', '7ea7c900-a5db-46d8-aaea-b80f53936306'),
(312, NULL, 'GP', 'GLP', '312', '7ea7c900-a5db-46d8-aaea-b80f53936302'),
(270, '220', 'GM', 'GMB', '270', '7ea7c900-a5db-46d8-aaea-b80f53936294'),
(624, '245', 'GW', 'GNB', '624', '7ea7c900-a5db-46d8-aaea-b80f53936307'),
(226, '240', 'GQ', 'GNQ', '226', '7ea7c900-a5db-46d8-aaea-b80f53936281'),
(300, '30', 'GR', 'GRC', '300', '7ea7c900-a5db-46d8-aaea-b80f53936299'),
(308, '1-473', 'GD', 'GRD', '308', '7ea7c900-a5db-46d8-aaea-b80f53936301'),
(304, '299', 'GL', 'GRL', '304', '7ea7c900-a5db-46d8-aaea-b80f53936300'),
(320, '502', 'GT', 'GTM', '320', '7ea7c900-a5db-46d8-aaea-b80f53936304'),
(254, NULL, 'GF', 'GUF', '254', '7ea7c900-a5db-46d8-aaea-b80f53936290'),
(316, '1-671', 'GU', 'GUM', '316', '7ea7c900-a5db-46d8-aaea-b80f53936303'),
(328, '592', 'GY', 'GUY', '328', '7ea7c900-a5db-46d8-aaea-b80f53936308'),
(344, '852', 'HK', 'HKG', '344', '7ea7c900-a5db-46d8-aaea-b80f53936312'),
(334, NULL, 'HM', 'HMD', '334', '7ea7c900-a5db-46d8-aaea-b80f53936310'),
(340, '504', 'HN', 'HND', '340', '7ea7c900-a5db-46d8-aaea-b80f53936311'),
(191, '385', 'HR', 'HRV', '191', '7ea7c900-a5db-46d8-aaea-b80f53936268'),
(332, '509', 'HT', 'HTI', '332', '7ea7c900-a5db-46d8-aaea-b80f53936309'),
(348, '36', 'HU', 'HUN', '348', '7ea7c900-a5db-46d8-aaea-b80f53936313'),
(360, '62', 'ID', 'IDN', '360', '7ea7c900-a5db-46d8-aaea-b80f53936316'),
(833, '44-1624', 'IM', 'IMN', '833', '7ea7c900-a5db-46d8-aaea-b80f53936320'),
(356, '91', 'IN', 'IND', '356', '7ea7c900-a5db-46d8-aaea-b80f53936315'),
(86, '246', 'IO', 'IOT', '86', '7ea7c900-a5db-46d8-aaea-b80f53936245'),
(372, '353', 'IE', 'IRL', '372', '7ea7c900-a5db-46d8-aaea-b80f53936319'),
(364, '98', 'IR', 'IRN', '364', '7ea7c900-a5db-46d8-aaea-b80f53936317'),
(368, '964', 'IQ', 'IRQ', '368', '7ea7c900-a5db-46d8-aaea-b80f53936318'),
(352, '354', 'IS', 'ISL', '352', '7ea7c900-a5db-46d8-aaea-b80f53936314'),
(376, '972', 'IL', 'ISR', '376', '7ea7c900-a5db-46d8-aaea-b80f53936321'),
(380, '39', 'IT', 'ITA', '380', '7ea7c900-a5db-46d8-aaea-b80f53936322'),
(388, '1-876', 'JM', 'JAM', '388', '7ea7c900-a5db-46d8-aaea-b80f53936324'),
(832, '44-1534', 'JE', 'JEY', '832', '7ea7c900-a5db-46d8-aaea-b80f53936326'),
(400, '962', 'JO', 'JOR', '400', '7ea7c900-a5db-46d8-aaea-b80f53936327'),
(392, '81', 'JP', 'JPN', '392', '7ea7c900-a5db-46d8-aaea-b80f53936325'),
(398, '7', 'KZ', 'KAZ', '398', '7ea7c900-a5db-46d8-aaea-b80f53936328'),
(404, '254', 'KE', 'KEN', '404', '7ea7c900-a5db-46d8-aaea-b80f53936329'),
(417, '996', 'KG', 'KGZ', '417', '7ea7c900-a5db-46d8-aaea-b80f53936333'),
(116, '855', 'KH', 'KHM', '116', '7ea7c900-a5db-46d8-aaea-b80f53936251'),
(296, '686', 'KI', 'KIR', '296', '7ea7c900-a5db-46d8-aaea-b80f53936330'),
(659, '1-869', 'KN', 'KNA', '659', '7ea7c900-a5db-46d8-aaea-b80f53936402'),
(410, '82', 'KR', 'KOR', '410', '7ea7c900-a5db-46d8-aaea-b80f53936423'),
(414, '965', 'KW', 'KWT', '414', '7ea7c900-a5db-46d8-aaea-b80f53936332'),
(418, '856', 'LA', 'LAO', '418', '7ea7c900-a5db-46d8-aaea-b80f53936334'),
(422, '961', 'LB', 'LBN', '422', '7ea7c900-a5db-46d8-aaea-b80f53936336'),
(430, '231', 'LR', 'LBR', '430', '7ea7c900-a5db-46d8-aaea-b80f53936338'),
(434, '218', 'LY', 'LBY', '434', '7ea7c900-a5db-46d8-aaea-b80f53936339'),
(662, '1-758', 'LC', 'LCA', '662', '7ea7c900-a5db-46d8-aaea-b80f53936403'),
(438, '423', 'LI', 'LIE', '438', '7ea7c900-a5db-46d8-aaea-b80f53936340'),
(144, '94', 'LK', 'LKA', '144', '7ea7c900-a5db-46d8-aaea-b80f53936426'),
(426, '266', 'LS', 'LSO', '426', '7ea7c900-a5db-46d8-aaea-b80f53936337'),
(440, '370', 'LT', 'LTU', '440', '7ea7c900-a5db-46d8-aaea-b80f53936341'),
(442, '352', 'LU', 'LUX', '442', '7ea7c900-a5db-46d8-aaea-b80f53936342'),
(428, '371', 'LV', 'LVA', '428', '7ea7c900-a5db-46d8-aaea-b80f53936335'),
(446, '853', 'MO', 'MAC', '446', '7ea7c900-a5db-46d8-aaea-b80f53936343'),
(663, '590', 'MF', 'MAF', '663', '7ea7c900-a5db-46d8-aaea-b80f53936404'),
(504, '212', 'MA', 'MAR', '504', '7ea7c900-a5db-46d8-aaea-b80f53936363'),
(492, '377', 'MC', 'MCO', '492', '7ea7c900-a5db-46d8-aaea-b80f53936359'),
(498, '373', 'MD', 'MDA', '498', '7ea7c900-a5db-46d8-aaea-b80f53936358'),
(450, '261', 'MG', 'MDG', '450', '7ea7c900-a5db-46d8-aaea-b80f53936345'),
(462, '960', 'MV', 'MDV', '462', '7ea7c900-a5db-46d8-aaea-b80f53936348'),
(484, '52', 'MX', 'MEX', '484', '7ea7c900-a5db-46d8-aaea-b80f53936356'),
(584, '692', 'MH', 'MHL', '584', '7ea7c900-a5db-46d8-aaea-b80f53936351'),
(807, '389', 'MK', 'MKD', '807', '7ea7c900-a5db-46d8-aaea-b80f53936344'),
(466, '223', 'ML', 'MLI', '466', '7ea7c900-a5db-46d8-aaea-b80f53936349'),
(470, '356', 'MT', 'MLT', '470', '7ea7c900-a5db-46d8-aaea-b80f53936350'),
(104, '95', 'MM', 'MMR', '104', '7ea7c900-a5db-46d8-aaea-b80f53936365'),
(499, '382', 'ME', 'MNE', '499', '7ea7c900-a5db-46d8-aaea-b80f53936361'),
(496, '976', 'MN', 'MNG', '496', '7ea7c900-a5db-46d8-aaea-b80f53936360'),
(580, '1-670', 'MP', 'MNP', '580', '7ea7c900-a5db-46d8-aaea-b80f53936379'),
(508, '258', 'MZ', 'MOZ', '508', '7ea7c900-a5db-46d8-aaea-b80f53936364'),
(478, '222', 'MR', 'MRT', '478', '7ea7c900-a5db-46d8-aaea-b80f53936353'),
(500, '1-664', 'MS', 'MSR', '500', '7ea7c900-a5db-46d8-aaea-b80f53936362'),
(474, NULL, 'MQ', 'MTQ', '474', '7ea7c900-a5db-46d8-aaea-b80f53936352'),
(480, '230', 'MU', 'MUS', '480', '7ea7c900-a5db-46d8-aaea-b80f53936354'),
(454, '265', 'MW', 'MWI', '454', '7ea7c900-a5db-46d8-aaea-b80f53936346'),
(458, '60', 'MY', 'MYS', '458', '7ea7c900-a5db-46d8-aaea-b80f53936347'),
(175, '262', 'YT', 'MYT', '175', '7ea7c900-a5db-46d8-aaea-b80f53936355'),
(516, '264', 'NA', 'NAM', '516', '7ea7c900-a5db-46d8-aaea-b80f53936366'),
(540, '687', 'NC', 'NCL', '540', '7ea7c900-a5db-46d8-aaea-b80f53936371'),
(562, '227', 'NE', 'NER', '562', '7ea7c900-a5db-46d8-aaea-b80f53936374'),
(574, NULL, 'NF', 'NFK', '574', '7ea7c900-a5db-46d8-aaea-b80f53936377'),
(566, '234', 'NG', 'NGA', '566', '7ea7c900-a5db-46d8-aaea-b80f53936375'),
(558, '505', 'NI', 'NIC', '558', '7ea7c900-a5db-46d8-aaea-b80f53936373'),
(570, '683', 'NU', 'NIU', '570', '7ea7c900-a5db-46d8-aaea-b80f53936376'),
(528, '31', 'NL', 'NLD', '528', '7ea7c900-a5db-46d8-aaea-b80f53936369'),
(578, '47', 'NO', 'NOR', '578', '7ea7c900-a5db-46d8-aaea-b80f53936380'),
(524, '977', 'NP', 'NPL', '524', '7ea7c900-a5db-46d8-aaea-b80f53936368'),
(520, '674', 'NR', 'NRU', '520', '7ea7c900-a5db-46d8-aaea-b80f53936367'),
(554, '64', 'NZ', 'NZL', '554', '7ea7c900-a5db-46d8-aaea-b80f53936372'),
(512, '968', 'OM', 'OMN', '512', '7ea7c900-a5db-46d8-aaea-b80f53936381'),
(586, '92', 'PK', 'PAK', '586', '7ea7c900-a5db-46d8-aaea-b80f53936382'),
(591, '507', 'PA', 'PAN', '591', '7ea7c900-a5db-46d8-aaea-b80f53936385'),
(612, '64', 'PN', 'PCN', '612', '7ea7c900-a5db-46d8-aaea-b80f53936390'),
(604, '51', 'PE', 'PER', '604', '7ea7c900-a5db-46d8-aaea-b80f53936388'),
(608, '63', 'PH', 'PHL', '608', '7ea7c900-a5db-46d8-aaea-b80f53936389'),
(585, '680', 'PW', 'PLW', '585', '7ea7c900-a5db-46d8-aaea-b80f53936383'),
(598, '675', 'PG', 'PNG', '598', '7ea7c900-a5db-46d8-aaea-b80f53936386'),
(616, '48', 'PL', 'POL', '616', '7ea7c900-a5db-46d8-aaea-b80f53936391'),
(630, '1-787, 1-939', 'PR', 'PRI', '630', '7ea7c900-a5db-46d8-aaea-b80f53936393'),
(408, '850', 'KP', 'PRK', '408', '7ea7c900-a5db-46d8-aaea-b80f53936378'),
(620, '351', 'PT', 'PRT', '620', '7ea7c900-a5db-46d8-aaea-b80f53936392'),
(600, '595', 'PY', 'PRY', '600', '7ea7c900-a5db-46d8-aaea-b80f53936387'),
(275, '970', 'PS', 'PSE', '275', '7ea7c900-a5db-46d8-aaea-b80f53936384'),
(258, '689', 'PF', 'PYF', '258', '7ea7c900-a5db-46d8-aaea-b80f53936291'),
(634, '974', 'QA', 'QAT', '634', '7ea7c900-a5db-46d8-aaea-b80f53936394'),
(638, '262', 'RE', 'REU', '638', '7ea7c900-a5db-46d8-aaea-b80f53936396'),
(642, '40', 'RO', 'ROU', '642', '7ea7c900-a5db-46d8-aaea-b80f53936397'),
(643, '7', 'RU', 'RUS', '643', '7ea7c900-a5db-46d8-aaea-b80f53936398'),
(646, '250', 'RW', 'RWA', '646', '7ea7c900-a5db-46d8-aaea-b80f53936399'),
(682, '966', 'SA', 'SAU', '682', '7ea7c900-a5db-46d8-aaea-b80f53936410'),
(736, '249', 'SD', 'SDN', '736', '7ea7c900-a5db-46d8-aaea-b80f53936427'),
(686, '221', 'SN', 'SEN', '686', '7ea7c900-a5db-46d8-aaea-b80f53936411'),
(702, '65', 'SG', 'SGP', '702', '7ea7c900-a5db-46d8-aaea-b80f53936415'),
(239, NULL, 'GS', 'SGS', '239', '7ea7c900-a5db-46d8-aaea-b80f53936422'),
(654, '290', 'SH', 'SHN', '654', '7ea7c900-a5db-46d8-aaea-b80f53936401'),
(744, '47', 'SJ', 'SJM', '744', '7ea7c900-a5db-46d8-aaea-b80f53936429'),
(90, '677', 'SB', 'SLB', '90', '7ea7c900-a5db-46d8-aaea-b80f53936419'),
(694, '232', 'SL', 'SLE', '694', '7ea7c900-a5db-46d8-aaea-b80f53936414'),
(222, '503', 'SV', 'SLV', '222', '7ea7c900-a5db-46d8-aaea-b80f53936280'),
(674, '378', 'SM', 'SMR', '674', '7ea7c900-a5db-46d8-aaea-b80f53936408'),
(706, '252', 'SO', 'SOM', '706', '7ea7c900-a5db-46d8-aaea-b80f53936420'),
(666, '508', 'PM', 'SPM', '666', '7ea7c900-a5db-46d8-aaea-b80f53936405'),
(688, '381', 'RS', 'SRB', '688', '7ea7c900-a5db-46d8-aaea-b80f53936412'),
(728, '211', 'SS', 'SSD', '728', '7ea7c900-a5db-46d8-aaea-b80f53936424'),
(678, '239', 'ST', 'STP', '678', '7ea7c900-a5db-46d8-aaea-b80f53936409'),
(740, '597', 'SR', 'SUR', '740', '7ea7c900-a5db-46d8-aaea-b80f53936428'),
(703, '421', 'SK', 'SVK', '703', '7ea7c900-a5db-46d8-aaea-b80f53936417'),
(705, '386', 'SI', 'SVN', '705', '7ea7c900-a5db-46d8-aaea-b80f53936418'),
(752, '46', 'SE', 'SWE', '752', '7ea7c900-a5db-46d8-aaea-b80f53936431'),
(748, '268', 'SZ', 'SWZ', '748', '7ea7c900-a5db-46d8-aaea-b80f53936430'),
(690, '248', 'SC', 'SYC', '690', '7ea7c900-a5db-46d8-aaea-b80f53936413'),
(760, '963', 'SY', 'SYR', '760', '7ea7c900-a5db-46d8-aaea-b80f53936433'),
(796, '1-649', 'TC', 'TCA', '796', '7ea7c900-a5db-46d8-aaea-b80f53936446'),
(148, '235', 'TD', 'TCD', '148', '7ea7c900-a5db-46d8-aaea-b80f53936257'),
(768, '228', 'TG', 'TGO', '768', '7ea7c900-a5db-46d8-aaea-b80f53936439'),
(764, '66', 'TH', 'THA', '764', '7ea7c900-a5db-46d8-aaea-b80f53936437'),
(762, '992', 'TJ', 'TJK', '762', '7ea7c900-a5db-46d8-aaea-b80f53936435'),
(772, '690', 'TK', 'TKL', '772', '7ea7c900-a5db-46d8-aaea-b80f53936440'),
(795, '993', 'TM', 'TKM', '795', '7ea7c900-a5db-46d8-aaea-b80f53936445'),
(626, NULL, 'TL', 'TLS', '626', '7ea7c900-a5db-46d8-aaea-b80f53936438'),
(776, '676', 'TO', 'TON', '776', '7ea7c900-a5db-46d8-aaea-b80f53936441'),
(780, '1-868', 'TT', 'TTO', '780', '7ea7c900-a5db-46d8-aaea-b80f53936442'),
(788, '216', 'TN', 'TUN', '788', '7ea7c900-a5db-46d8-aaea-b80f53936443'),
(792, '90', 'TR', 'TUR', '792', '7ea7c900-a5db-46d8-aaea-b80f53936444'),
(798, '688', 'TV', 'TUV', '798', '7ea7c900-a5db-46d8-aaea-b80f53936447'),
(158, '886', 'TW', 'TWN', '158', '7ea7c900-a5db-46d8-aaea-b80f53936434'),
(834, '255', 'TZ', 'TZA', '834', '7ea7c900-a5db-46d8-aaea-b80f53936436'),
(800, '256', 'UG', 'UGA', '800', '7ea7c900-a5db-46d8-aaea-b80f53936448'),
(804, '380', 'UA', 'UKR', '804', '7ea7c900-a5db-46d8-aaea-b80f53936449'),
(581, NULL, 'UM', 'UMI', '581', '7ea7c900-a5db-46d8-aaea-b80f53936452'),
(858, '598', 'UY', 'URY', '858', '7ea7c900-a5db-46d8-aaea-b80f53936454'),
(840, '1', 'US', 'USA', '840', '7ea7c900-a5db-46d8-aaea-b80f53936453'),
(860, '998', 'UZ', 'UZB', '860', '7ea7c900-a5db-46d8-aaea-b80f53936455'),
(336, '379', 'VA', 'VAT', '336', '7ea7c900-a5db-46d8-aaea-b80f53936457'),
(670, '1-784', 'VC', 'VCT', '670', '7ea7c900-a5db-46d8-aaea-b80f53936406'),
(862, '58', 'VE', 'VEN', '862', '7ea7c900-a5db-46d8-aaea-b80f53936458'),
(92, '1-284', 'VG', 'VGB', '92', '7ea7c900-a5db-46d8-aaea-b80f53936246'),
(850, '1-340', 'VI', 'VIR', '850', '7ea7c900-a5db-46d8-aaea-b80f53936460'),
(704, '84', 'VN', 'VNM', '704', '7ea7c900-a5db-46d8-aaea-b80f53936459'),
(548, '678', 'VU', 'VUT', '548', '7ea7c900-a5db-46d8-aaea-b80f53936456'),
(876, '681', 'WF', 'WLF', '876', '7ea7c900-a5db-46d8-aaea-b80f53936461'),
(882, '685', 'WS', 'WSM', '882', '7ea7c900-a5db-46d8-aaea-b80f53936407'),
(-1, 'NO_COUNTRY', 'XX', 'XXX', '-1', '7ea7c900-a5db-46d8-aaea-b80f53936466'),
(887, '967', 'YE', 'YEM', '887', '7ea7c900-a5db-46d8-aaea-b80f53936463'),
(710, '27', 'ZA', 'ZAF', '710', '7ea7c900-a5db-46d8-aaea-b80f53936421'),
(894, '260', 'ZM', 'ZMB', '894', '7ea7c900-a5db-46d8-aaea-b80f53936464'),
(716, '263', 'ZW', 'ZWE', '716', '7ea7c900-a5db-46d8-aaea-b80f53936465');

-- --------------------------------------------------------

--
-- Table structure for table `t_geo_country_copy`
--

CREATE TABLE `t_geo_country_copy` (
  `COU_ID` int(11) NOT NULL,
  `COU_AREA` varchar(30) DEFAULT NULL,
  `COU_ISO2` varchar(2) DEFAULT NULL,
  `COU_ISO_ALPHA` varchar(3) DEFAULT NULL,
  `COU_ISO_UN` varchar(4) DEFAULT NULL,
  `TMZ_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_geo_language`
--

CREATE TABLE `t_geo_language` (
  `LAN_ID` char(36) NOT NULL,
  `LAN_CODE` varchar(5) NOT NULL,
  `LAN_DES` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_geo_state`
--

CREATE TABLE `t_geo_state` (
  `STA_ID` char(36) NOT NULL,
  `T_G_COU_ID` decimal(10,0) NOT NULL,
  `STA_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_geo_timezone`
--

CREATE TABLE `t_geo_timezone` (
  `TMZ_ID` char(36) NOT NULL,
  `TMZ_OFFSET` decimal(10,0) NOT NULL,
  `TMZ_DES` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_geo_timezone`
--

INSERT INTO `t_geo_timezone` (`TMZ_ID`, `TMZ_OFFSET`, `TMZ_DES`) VALUES
('00688b77-a906-4ea3-94ff-016a089cb2f2', '-3', 'America/Fortaleza'),
('010a5274-7fb0-4d01-8377-81511ad09207', '3', 'Asia/Qatar'),
('0274be6f-60ce-4494-96d3-1c62160a4b32', '1', 'Atlantic/Madeira'),
('0363f1ed-51b0-478d-80fb-ee8ac384a51b', '10', 'Pacific/Guam'),
('037fce93-f654-4c67-98fb-30db49e2d5d1', '8', 'Asia/Harbin'),
('0451ca5c-d43f-46bd-8b3e-b98fdd5f8236', '3', 'Asia/Beirut'),
('048334bf-03bb-4f8e-a452-ae2c1eca1c29', '1', 'Africa/Libreville'),
('07835934-424d-40b6-a06c-85f71153ac03', '12', 'Pacific/Kwajalein'),
('08216ee1-6ca9-4d09-9f5e-8e1d4808f3a9', '-5', 'America/Lima'),
('086c454a-a22f-4c2f-8bd0-e38bb6581c72', '10', 'Asia/Khandyga'),
('090fa502-4402-4b4c-b495-a01ee0d70de0', '5', 'Asia/Kathmandu'),
('096c0415-9199-42dc-b07f-8d108354cacb', '2', 'Europe/Copenhagen'),
('097a5658-c646-4ca2-ab35-8f5ad7eb01c3', '5', 'Asia/Kolkata'),
('09a46105-07ae-4033-99de-70f7de8e4f18', '3', 'Antarctica/Syowa'),
('09e7170b-d4a2-4903-8133-d302ecc0f02b', '-10', 'Pacific/Rarotonga'),
('0a9c2444-a467-44e9-bddd-0d4289c4bbb2', '-7', 'America/Santa_Isabel'),
('0acb7b28-aa42-467d-8179-af2fcce5855c', '-5', 'America/Eirunepe'),
('0c40fd66-061a-42c9-b131-6a587807e139', '-3', 'America/Argentina/Salta'),
('0c665194-558a-40a3-9805-b0bda2054a03', '6', 'Indian/Cocos'),
('0d4f0b43-0b23-4358-8f51-b5ba3d597173', '12', 'Pacific/Funafuti'),
('0d5b2708-9265-49ec-bcc8-ebb1993f36e8', '10', 'Australia/Hobart'),
('0e218926-b07c-45d8-922f-5ee5a846af6e', '4', 'Asia/Yerevan'),
('0e85dbc2-10e8-45e9-8fa0-0d9cce88f93e', '3', 'Asia/Damascus'),
('0ecf63d0-cb22-4098-8a9c-4446566b1f7d', '-4', 'America/Caracas'),
('0efc26ec-ec1a-495d-8c6b-0cfd71a72fea', '7', 'Asia/Jakarta'),
('10539bd9-fb54-4e98-aed0-b9a43a477ad9', '-3', 'America/Maceio'),
('1067a6a1-f3cf-4db3-944b-2d57a9b14b30', '-8', 'Pacific/Pitcairn'),
('10768a31-7b2e-48d1-b949-b8c1ef162ca2', '8', 'Asia/Singapore'),
('1198c078-79e1-4789-9952-720ff8b1f01e', '3', 'Europe/Athens'),
('12e6d105-a5b0-4baf-b7e9-c758e47fbf44', '2', 'Africa/Lusaka'),
('136fa929-4ebf-4645-b94a-d9237e5a83e5', '9', 'Asia/Jayapura'),
('13b8b1ca-62fd-453d-821c-98fd60bd1ff6', '-5', 'America/North_Dakota/Beulah'),
('13b9c0d1-1a0c-41f4-9665-3f1dc69052df', '11', 'Asia/Sakhalin'),
('13c24c49-8333-477d-a8a6-55c4b014ce4c', '3', 'Asia/Baghdad'),
('1605e31e-8895-486d-8b2d-d57603347946', '-8', 'America/Metlakatla'),
('160b2498-3d79-44b8-9bf4-17b7fce41a14', '-4', 'America/Dominica'),
('1640c55d-7d57-450e-a62a-92f2bafc07b1', '3', 'Africa/Dar_es_Salaam'),
('169398ab-ba43-417f-8bd2-4de92ba4f06c', '-4', 'America/Porto_Velho'),
('18943e43-e033-4b31-97ee-ce6fb62cce9b', '8', 'Asia/Taipei'),
('196ab2e7-d738-4cca-b254-834a02e60223', '10', 'Pacific/Saipan'),
('1a5bf4de-3e10-454c-a9fa-0f3cd2356b62', '12', 'Pacific/Auckland'),
('1b03a379-5920-46f0-b69f-c51d537f90f2', '1', 'Europe/Isle_of_Man'),
('1b97e8d5-e0f7-4e41-88fe-e1343d48fc9f', '-4', 'America/Aruba'),
('1bd11d53-947e-4795-8a32-2ffd21eedd47', '1', 'Africa/Kinshasa'),
('1bfb9ec4-ff57-4657-8ff0-6e0033b67ce0', '-3', 'Atlantic/Bermuda'),
('1c06274b-f46e-4d8e-9ecf-ddfbb1ad50d7', '14', 'Pacific/Kiritimati'),
('1c9ba1f8-e88b-4db6-a6a6-63a7c00a25a5', '-4', 'America/Montserrat'),
('1cba22ad-83f4-4b30-857d-f77e77e425b9', '1', 'Europe/Lisbon'),
('1d20e762-7007-48fd-8c67-19bf5a99f0ce', '12', 'Asia/Kamchatka'),
('1d2a6257-c871-42b4-9dd4-4eb597719a6a', '2', 'Europe/Vaduz'),
('1d2f9df4-ceb6-4bbc-ab73-59edf77b7d82', '-4', 'America/St_Lucia'),
('1d86d672-7b27-4489-bc72-8ebf9854d34d', '3', 'Asia/Gaza'),
('1d8ca23a-c2c9-4a52-b1bd-fec7a4355b10', '3', 'Asia/Aden'),
('1dac51f3-d7a4-4b3e-a9f4-6c8c1154dea8', '-8', 'America/Sitka'),
('1e44da46-b604-4591-b112-52d86d42d6b7', '5', 'Asia/Aqtau'),
('1e9c7516-2ad5-4846-8a30-a86edc9010aa', '-4', 'America/La_Paz'),
('1ebc5f1a-3bac-4536-8d87-0edaa689196a', '-6', 'America/Mazatlan'),
('1fdb8a72-fd3a-4d86-872a-460af2e2fdf7', '-5', 'America/Jamaica'),
('20d966df-337e-458f-9730-ad27299c3289', '-11', 'Pacific/Midway'),
('2166a88f-d4c3-4a72-a1c5-586538bcf84f', '-7', 'America/Creston'),
('21708f0c-4d38-4ded-97c5-40fc66d8ba90', '-3', 'America/Argentina/San_Juan'),
('2246afc1-8b78-4f71-bdfa-10cbcae858c6', '1', 'Atlantic/Faroe'),
('22740ec4-2b2d-4b85-a82f-cd9cf280b32c', '-4', 'America/Guadeloupe'),
('22b211b9-48aa-4ac7-8bc1-42114517ff54', '2', 'Europe/Vatican'),
('23f269a5-b440-4396-a0d5-9f4c47081830', '4', 'Europe/Samara'),
('2511919e-8fd5-47ff-ada0-561e795802d4', '-6', 'America/Guatemala'),
('252bfed9-ca3c-4895-9bcc-43c628cc1197', '-3', 'America/Argentina/San_Luis'),
('2600ff18-95c1-41e9-bfe1-6d72c0170e84', '-6', 'America/Regina'),
('26447e62-2d8a-4953-a3d0-7c42c9f91846', '2', 'Europe/Luxembourg'),
('2685c0d9-9a18-4288-a1ee-31b0ad6e713f', '-4', 'America/Curacao'),
('26af0df9-02bb-4fbf-8770-aa7d54bb0a25', '6', 'Asia/Qyzylorda'),
('26eb236c-122b-4a39-8393-0e5a9410675e', '-4', 'America/St_Barthelemy'),
('27203ba0-b53d-4ba0-96fb-749da780c2be', '8', 'Australia/Perth'),
('275ce1ba-ab3c-4e9a-8327-eb10b1d4219e', '2', 'Europe/Brussels'),
('279e0398-0f02-4631-ba6a-f34ccefa1751', '2', 'Europe/Warsaw'),
('285c5c98-5581-40a6-af75-090a4116e54e', '-5', 'America/Guayaquil'),
('28a4b26c-749a-484f-84f8-ababcd65ba59', '-7', 'America/Dawson'),
('29237b82-e7ab-41b7-bfbf-f838e5c8d35d', '12', 'Asia/Anadyr'),
('293f54ca-55f2-4072-b227-940de8e97140', '-6', 'America/El_Salvador'),
('2968beff-03b9-4f23-b591-88a9526b7fd9', '-2', 'America/Miquelon'),
('297d7cd0-05d9-476e-aa2a-8fbc84afb8a5', '1', 'Europe/Guernsey'),
('2aaf0c68-acbc-4f34-a265-ef0e3835fee0', '-4', 'America/Marigot'),
('2b752b1f-17bd-400c-bb7e-27ea501620d5', '-2', 'America/St_Johns'),
('2ba28f6c-0ea9-4fd2-9a4b-ea8d60e434e0', '4', 'Asia/Kabul'),
('2c117887-d8b9-4fe6-a258-ae8feee4cf15', '11', 'Antarctica/Macquarie'),
('2dfe8d10-1ce8-4ea2-9ce0-553db5ce0de1', '-4', 'America/Lower_Princes'),
('2f2891b6-6c86-4ad6-8aca-f9e7e9409cfb', '-4', 'America/Indiana/Indianapolis'),
('2faf154a-0bfe-4a3d-ac12-f259960c01e3', '-4', 'America/St_Thomas'),
('2ffc8ba1-1aa5-4afe-a2fc-f76e1a3bc017', '9', 'Asia/Pyongyang'),
('307fc5e7-dceb-443e-b9ca-e1d5feeedede', '-4', 'America/Indiana/Marengo'),
('317eee68-5e5f-4120-9c85-5129fc1ee309', '-6', 'America/Swift_Current'),
('327a1d44-b17f-4a12-8c09-2a942844899c', '-6', 'America/Yellowknife'),
('327aae0e-2a6e-4e73-9826-378633158c3a', '12', 'Pacific/Wallis'),
('32cf8800-f569-45f6-bd6d-60e097aebd27', '-3', 'America/Bahia'),
('332c8445-d407-4ff6-b521-dedf39579459', '-4', 'America/Tortola'),
('341f08a2-ebe6-4c7a-9c00-b1e9abce0ff6', '3', 'Indian/Mayotte'),
('3472415a-74c5-44df-bb8f-7588e04e48ac', '-4', 'Antarctica/Palmer'),
('36317c43-b865-42bd-ad76-210e27f7920e', '6', 'Asia/Thimphu'),
('38988675-3613-47f4-b955-9a09f3935109', '0', 'UTC'),
('3a4d1fe3-caab-4451-b2d6-e8278c635e65', '3', 'Africa/Nairobi'),
('3b2f364b-f459-4a16-9205-b52ee5f2cb4f', '-4', 'America/Pangnirtung'),
('3ba10f6d-ec85-45c0-8fab-e1d3eeb33c65', '2', 'Africa/Harare'),
('3bb40250-df1f-4265-bb48-2eb521d676c6', '1', 'Africa/Porto-Novo'),
('3c339eea-df65-44af-a056-9a166a83fa5c', '-8', 'America/Yakutat'),
('3c76f1b2-6d5c-4a5b-89b1-d9437d51eeaf', '3', 'Africa/Djibouti'),
('3d616479-bc67-42e9-b4b5-d80c519a8e31', '2', 'Europe/Rome'),
('3db097fe-e635-4810-92f6-aff4eea5c717', '-4', 'America/St_Kitts'),
('3dc971ff-f1e4-4bb0-a559-a971b7507b10', '-4', 'America/Toronto'),
('3e0a1154-9717-4db6-9d4d-d8e17eed068a', '-3', 'America/Argentina/Catamarca'),
('3e78ecaa-4502-4a29-a363-7adcf6d9719b', '-3', 'America/Argentina/Cordoba'),
('3ecea47d-04a6-451e-861b-cbf1b6ada308', '3', 'Europe/Kaliningrad'),
('3ee97858-1cc3-4fb3-93be-a7315d155e6b', '12', 'Pacific/Fiji'),
('3f979cae-9148-4b00-aaab-4981b464dfcb', '3', 'Asia/Riyadh'),
('40466fb7-3ef5-44a4-9240-76d3c6c41768', '10', 'Australia/Melbourne'),
('4062c012-7dc5-4cc2-afa9-3072517dd1a7', '10', 'Pacific/Chuuk'),
('41195752-a115-483f-bef0-200513a48266', '-5', 'America/Winnipeg'),
('414c202f-69f3-45c1-bc57-32d270855645', '2', 'Europe/Paris'),
('42037d6b-bcea-498e-b0a2-60516e507ea8', '9', 'Asia/Tokyo'),
('4341443b-7df5-4eb1-ba42-3ff1d5266120', '0', 'Africa/Freetown'),
('436aadd4-d25d-4a3c-9015-95a665285328', '7', 'Asia/Ho_Chi_Minh'),
('438e002e-e574-41dc-a4e0-f1388bf08209', '3', 'Africa/Cairo'),
('44584784-d721-41cd-b28d-70b836fb2d75', '-3', 'America/Argentina/Rio_Gallegos'),
('44873e8a-74e5-4510-b6eb-e863c56c3962', '7', 'Asia/Phnom_Penh'),
('47194074-c110-45be-a300-066d6aabab43', '11', 'Pacific/Efate'),
('479eb10b-af02-4d85-90e5-f52382361d47', '2', 'Europe/San_Marino'),
('47b51d9a-a2f8-4950-bb7d-e0bba28b92f9', '3', 'Indian/Comoro'),
('482ec29a-f526-4fd5-97c3-e376927c5e09', '-4', 'America/Port-au-Prince'),
('49175c48-2091-4b65-a67e-99393bf6495b', '2', 'Africa/Ceuta'),
('4a396e6c-0088-4386-a284-391d047d38f8', '-4', 'America/Nipigon'),
('4a4be2c8-0ccd-471f-957f-c27bde77547d', '5', 'Asia/Baku'),
('4b1489da-a2e3-48db-8b2b-a06f2fb36fff', '-4', 'America/Boa_Vista'),
('4b4d6fa9-203c-455b-8af2-7349926b2c8a', '13', 'Pacific/Fakaofo'),
('4cd56761-8d76-4d06-ba4a-7a5fa2b026fc', '-5', 'America/Menominee'),
('4ce3cb70-5f2f-4b65-aa88-f0bfc122fa03', '11', 'Pacific/Kosrae'),
('4ce7e1d8-355e-44c7-a824-ed668bd688db', '-7', 'America/Whitehorse'),
('4f515912-c7ed-4908-92e0-3c695f4b9b96', '3', 'Africa/Addis_Ababa'),
('4f5c9939-453c-4805-853d-55c206a53991', '-5', 'America/Matamoros'),
('5070387b-64b5-4575-86c1-e81dec97ad43', '10', 'Antarctica/DumontDUrville'),
('5173dc70-1b5c-47f6-9aa2-ae26615edbd7', '2', 'Europe/Budapest'),
('51a7a04e-5cb3-4af9-865c-2367b2eba8ec', '0', 'Africa/Nouakchott'),
('522a8385-b22d-4a6e-afd8-10e2eac13ceb', '4', 'Asia/Muscat'),
('523e8b35-8b1a-445b-9710-d81cc6b7305b', '13', 'Pacific/Enderbury'),
('534367b8-50d1-4411-afe9-a84934305da9', '1', 'Africa/Windhoek'),
('535c33ca-51d2-46dd-a733-b6a34f24fce0', '-4', 'America/Guyana'),
('53f0f97e-3fb3-48a7-9669-3ef3f34c4eeb', '3', 'Asia/Amman'),
('54778afd-dddf-4fb8-9e6e-a7f7d609b4f1', '-4', 'America/St_Vincent'),
('54e2ddfb-b777-4f44-843d-a0ef81a88204', '1', 'Africa/Tunis'),
('54eede56-9de4-4eab-b482-83a41bd779a9', '10', 'Australia/Lord_Howe'),
('555c5d6d-0eb7-4d1f-a02e-c0c448749833', '-3', 'America/Argentina/La_Rioja'),
('55990a88-1b83-4e7c-8d5e-9e851623a0b6', '6', 'Asia/Bishkek'),
('55c2ef5f-cc73-4c15-8e46-084c2df20d72', '1', 'Africa/Algiers'),
('56276359-de64-46f7-b013-b3dc1c080c49', '-7', 'America/Hermosillo'),
('56ab8ee0-1616-4dda-a76c-48d1b8ef06e5', '-4', 'America/Cuiaba'),
('57ea9fde-27be-49b8-b4bd-97deb946c76d', '12', 'Pacific/Tarawa'),
('58fcc2ed-f3f1-4f7c-a8e5-3650ec716b9e', '-4', 'America/Campo_Grande'),
('59972c69-bfa7-459d-b5ba-f94fec96bbf0', '2', 'Europe/Stockholm'),
('59e9781b-0d7e-46d6-a69e-a67e7ceae709', '1', 'Atlantic/Canary'),
('5ac8cbb2-632c-4b32-a7b3-a5e02a472fe5', '8', 'Asia/Kuching'),
('5bcf1d2e-ef9a-4720-934e-4c59b8c7e9f0', '4', 'Indian/Mahe'),
('5c1d22e8-e0ad-432c-81a0-5c0c34e8a73b', '11', 'Pacific/Pohnpei'),
('5c42f383-a029-427e-9851-7f511dadb3cf', '-3', 'America/Halifax'),
('5f165988-dc69-47e7-995c-26515b2b334a', '-3', 'America/Glace_Bay'),
('5f254f79-cf99-41ba-8996-24e0be93928e', '10', 'Pacific/Port_Moresby'),
('5fb2dbe4-a23b-4047-9a5c-234dcae3a9e3', '3', 'Indian/Antananarivo'),
('5fc4ee84-9a88-4876-a8bf-c036e6fef219', '-5', 'America/Panama'),
('6056c236-79b4-4ae7-b682-3cdcf0c9828a', '1', 'Europe/London'),
('607b5847-919e-4e39-8bba-4e1d15b5c378', '4', 'Europe/Volgograd'),
('6179e1e0-1622-47a5-889b-20aea3dd48ac', '4', 'Indian/Reunion'),
('61d26d52-74a4-4b59-8a48-044feef86d5d', '2', 'Europe/Andorra'),
('61ef8040-1191-4b56-bbbc-f50e3b8a5f20', '3', 'Africa/Khartoum'),
('62445930-08e4-4a2e-a11b-c58f60b3886b', '4', 'Europe/Moscow'),
('6666b7b7-2913-4fa5-a660-abc18e4d3d3c', '-2', 'America/Noronha'),
('6788af9b-de9b-4e2a-9c69-0170ba13a025', '2', 'Europe/Podgorica'),
('6846a0fb-cf8f-4b46-a84d-f4198c2127ab', '2', 'Europe/Vienna'),
('6849c2f2-0a07-4495-9080-8d078820a6f7', '3', 'Asia/Nicosia'),
('694c26fe-16d1-4a12-a41e-a14197de8b38', '-6', 'America/Chihuahua'),
('6a2a6345-ca69-406c-86f7-69bb2c948aa1', '-3', 'America/Santarem'),
('6a382fb0-813e-4617-a3b9-ee75d117ae98', '2', 'Europe/Madrid'),
('6a422eaa-3ffe-4d04-bc85-04701da99797', '2', 'Europe/Sarajevo'),
('6a610c82-11dd-41e0-b1af-1b9470958025', '7', 'Antarctica/Davis'),
('6ab653b3-f8b2-4cce-b58a-e65dd3e4a689', '-5', 'America/Rankin_Inlet'),
('6b4900c9-9e26-4562-b9b6-a885f131429f', '9', 'Asia/Irkutsk'),
('6b777c9a-b937-4110-bfed-cbb8eddf44c9', '3', 'Europe/Istanbul'),
('6c8affdf-9484-4d86-b404-81f7265ce480', '9', 'Asia/Dili'),
('6cb95ad5-082e-4043-b01a-df416985f9ff', '-3', 'Antarctica/Rothera'),
('6d524f4b-8f1c-4530-9fbd-3834f33ff12a', '-4', 'America/Blanc-Sablon'),
('703bbac6-d94e-4e0e-bc8c-c4819d6e90ec', '-4', 'America/Havana'),
('70a3240c-c77a-4e8b-b836-3f8f4bf7bb41', '7', 'Asia/Hovd'),
('716c988c-332c-4465-b264-aa9a9670265c', '1', 'Africa/Ndjamena'),
('71fc1ea7-7617-415d-b177-7f1c3ecc1137', '2', 'Africa/Bujumbura'),
('72777525-672a-4a5d-a0dc-329f5184f8f3', '2', 'Europe/Zurich'),
('73ad93f8-488f-47f0-a6f9-4da1793f2861', '5', 'Asia/Aqtobe'),
('73e2a3a9-d32b-4d55-a7af-be270ac84ebb', '-4', 'America/Martinique'),
('73f3c3bc-105e-4b64-b849-102421033051', '-2', 'Atlantic/South_Georgia'),
('745768e6-0fd4-44e6-b7e8-c86d37374d25', '2', 'Europe/Bratislava'),
('745f0e19-8173-41b0-b787-8fbde0b7191a', '-4', 'America/Asuncion'),
('74cfa191-9613-4b48-8bce-614718e3b472', '12', 'Pacific/Majuro'),
('74e0c305-acd0-4fa4-9528-0ae48c49e4e4', '-10', 'Pacific/Johnston'),
('75137560-bd16-4c88-8ac9-e375ebc79d62', '4', 'Europe/Simferopol'),
('75689486-4efb-4bab-a83e-9baf5341bc19', '-5', 'America/Rainy_River'),
('75d5650a-1abe-439e-adec-124e8da0bb97', '11', 'Asia/Vladivostok'),
('7659809b-6625-44c9-a4dd-fa64a1cbd68d', '2', 'Europe/Monaco'),
('765aaabc-b2e8-4b84-81b1-c753968f4ce1', '-3', 'America/Argentina/Buenos_Aires'),
('76fb9f71-4266-40af-af8f-9abea48ba35f', '-3', 'America/Moncton'),
('77396d50-df04-40d6-8a03-4bc8b3be3452', '7', 'Asia/Pontianak'),
('77596fe4-9455-4fdd-beb5-80a89748b6d6', '-8', 'America/Juneau'),
('778b0f47-9562-433b-85c9-562fdcf6bfa2', '8', 'Asia/Macau'),
('77a616b6-28e9-4925-ba44-1aed0b526801', '-4', 'America/Indiana/Winamac'),
('77bc1f9c-cf71-4645-940d-92cc885edd92', '-7', 'America/Phoenix'),
('782b04d7-c68c-4861-ba4b-7836b4fabc0c', '2', 'Europe/Oslo'),
('7a5f2e06-d227-4664-a5ae-4b0bb58567ad', '5', 'Asia/Ashgabat'),
('7a649df6-bb1e-49d1-b6c0-09a06ed2e330', '3', 'Asia/Bahrain'),
('7ab40657-5a16-48a9-974e-9a544464ad1c', '5', 'Asia/Tashkent'),
('7abf06b1-48d6-4fc1-9d23-7f96be66d984', '-5', 'America/Cancun'),
('7c4325bd-957f-44d7-95f0-c54b42f174af', '3', 'Europe/Bucharest'),
('7c8bab4e-fcb2-49ed-83ff-96730c31e2a9', '-4', 'America/Kentucky/Monticello'),
('7d137a31-700f-4d88-91c4-ee03a0955031', '-3', 'America/Araguaina'),
('7e3ee947-084c-4be3-a6a7-ec8ec0fc7042', '10', 'Australia/Lindeman'),
('7e6667cb-b29a-45bf-995a-9a92403a77b0', '1', 'Africa/Douala'),
('7e7191a7-a154-483d-a1d8-60baed443ab9', '1', 'Africa/El_Aaiun'),
('7ea7c900-a5db-46d8-aaea-b80f53936215', '-5', 'America/Bogota'),
('7ecbc84a-33b4-46b6-855e-22e600a69d84', '0', 'Atlantic/St_Helena'),
('7f5f6fdd-8473-4460-9370-bf3877b7495b', '8', 'Asia/Shanghai'),
('817af824-1bd6-4993-b5c3-270df27c3b01', '3', 'Europe/Mariehamn'),
('823b9c07-c85d-4bbe-a673-042a03c8491a', '2', 'Europe/Busingen'),
('83313753-4480-4b27-bebd-f78357bab083', '-4', 'America/Port_of_Spain'),
('835c7866-5e58-45ea-bea8-201d4776d8b1', '11', 'Pacific/Norfolk'),
('837526a8-a1c7-4d6b-8919-c3c198413b93', '-6', 'America/Inuvik'),
('83ba4d05-2609-41c6-a08c-8fac0e325a7e', '1', 'Africa/Niamey'),
('8422ecaf-4c76-4925-8712-4b5f5f781298', '1', 'Europe/Dublin'),
('84358f7c-7178-4a6b-8310-f0da7b97d47c', '-4', 'America/Indiana/Vevay'),
('845490ea-1053-4f7d-ad47-9ae0da0ab5c3', '0', 'Africa/Ouagadougou'),
('84801ef2-a3c3-4947-911e-7116a892ca70', '3', 'Europe/Vilnius'),
('8497cab5-cbde-4d6d-8dcd-a32fe80b8c78', '-4', 'America/Manaus'),
('84bd3913-4671-4769-812d-30cf60707e25', '0', 'Africa/Monrovia'),
('84d7f96b-94a3-4539-9190-87c58b16a1ae', '3', 'Europe/Zaporozhye'),
('8502ac35-9edd-498b-94c4-44f5d5f0fcb9', '-6', 'America/Denver'),
('8592f464-de46-4446-9241-f6ac1bdea75b', '13', 'Pacific/Apia'),
('861f5388-4ef4-4758-840c-a26ee59ff65a', '9', 'Asia/Seoul'),
('86c0afca-4779-4988-9879-e16ee64a929a', '-5', 'America/North_Dakota/Center'),
('87133aba-8d9d-4c48-84c2-024725f53739', '3', 'Europe/Uzhgorod'),
('88265174-31dd-4174-a5d4-13c61620ffa8', '0', 'Atlantic/Azores'),
('8890dca0-d98f-46a9-8add-6acf9a100c75', '9', 'Australia/Darwin'),
('8a8537df-467c-45e3-a014-c8419fae9772', '-5', 'America/Resolute'),
('8ad72e6b-425d-4d5c-8711-2a8320de0aec', '8', 'Asia/Choibalsan'),
('8ae45523-8ccd-467b-9031-4202aaa08e69', '2', 'Africa/Mbabane'),
('8bef651d-c209-4da8-a82f-aeed65544a1b', '2', 'Africa/Blantyre'),
('8da7bd90-d82d-466b-b8ea-281daf29e02d', '-6', 'America/Belize'),
('8def0f02-579a-469a-a627-1a257b43689b', '10', 'Asia/Yakutsk'),
('8e05eade-732c-4901-8235-524e32af0f64', '3', 'Europe/Tallinn'),
('8f332a4e-9b97-4deb-a907-217b74eb1ec0', '-7', 'America/Dawson_Creek'),
('8f3b18ca-5fef-43d0-897d-0ceab2b9c75d', '8', 'Antarctica/Casey'),
('9025e91e-1123-47c0-9cd6-86ad31dcc099', '8', 'Asia/Kuala_Lumpur'),
('90b3b2bf-adda-4314-8505-448d903bbb4e', '3', 'Asia/Kuwait'),
('90c4b8da-070a-4a0d-86d4-eb4688733c45', '0', 'Africa/Conakry'),
('932fef90-5ea6-4812-82b3-5519da88328c', '-4', 'America/Puerto_Rico'),
('939b6dcf-6d96-47fb-b3c5-224a94872f35', '-3', 'America/Argentina/Ushuaia'),
('943c5d68-4716-4915-b4da-d91b781e29e8', '-5', 'America/Chicago'),
('948daf92-d2e9-4c2d-b9bf-5c86724c8496', '7', 'Asia/Novokuznetsk'),
('951d2102-12be-4177-8618-39cd92a4ab08', '-11', 'Pacific/Pago_Pago'),
('960b9d47-b4fd-45b8-a18f-7bef74866261', '0', 'America/Scoresbysund'),
('96899bd7-7669-46d6-b599-9c694aafe718', '-3', 'America/Sao_Paulo'),
('9690c1af-e338-431a-bbf6-99fd2ea1c336', '5', 'Asia/Samarkand'),
('96d916af-dfb9-4404-86b0-ebf4e99129f5', '0', 'Africa/Bamako'),
('97981748-6f9f-4c8f-bc33-7849382940b5', '13', 'Pacific/Tongatapu'),
('97d780dc-87f2-418c-82d1-dd67013cc4f6', '0', 'Africa/Sao_Tome'),
('99532ecb-82ad-47e8-8b68-ad4c93901be3', '9', 'Australia/Adelaide'),
('999a5dc7-f656-4def-a88e-bb7f9bd14818', '-3', 'America/Argentina/Mendoza'),
('9b75aaf0-3c72-4dc0-914e-0e733a30059e', '6', 'Asia/Dhaka'),
('9c0c56fa-0f28-4019-9685-e073dfe41a1a', '2', 'Europe/Amsterdam'),
('9c0d4174-cda6-4140-bfb5-9b8965bba2e6', '12', 'Pacific/Wake'),
('9c8f672a-adb6-4c40-9c3f-9c77e463d83f', '-9', 'America/Adak'),
('9dab753b-61ac-42de-987d-f6f1e1061690', '-4', 'America/Kentucky/Louisville'),
('9eac38eb-74ec-43b6-a908-acf5a0346d5d', '4', 'Indian/Mauritius'),
('a01bbed1-d3c5-4c3a-bacc-b2c6ccc9b47a', '-6', 'America/Edmonton'),
('a129492e-9f67-4ea8-81f2-3937aa8b7c3c', '-3', 'America/Goose_Bay'),
('a15fa073-bb00-478d-90a8-f7c5476542c8', '-4', 'America/Anguilla'),
('a201df53-f4b3-4ebc-bf3d-1f56adaf2c87', '3', 'Europe/Riga'),
('a348de7d-b46a-4430-8d41-0740f6d4d2e2', '-10', 'Pacific/Tahiti'),
('a356c116-eda1-4be7-ba3a-48ea76aa37f0', '-7', 'America/Tijuana'),
('a370859b-8231-4dd0-989f-ab83787163d0', '-4', 'America/Thunder_Bay'),
('a3f33e87-1a0f-453e-9623-4174412e1eca', '2', 'Europe/Zagreb'),
('a51cdf41-33ca-4579-887a-f4d127c00f45', '2', 'Africa/Johannesburg'),
('a56f1735-2533-48a7-b9ab-2ce58930b018', '-5', 'America/North_Dakota/New_Salem'),
('a69aa8c6-3221-4d2e-9383-b25dff590bfa', '1', 'Europe/Jersey'),
('a952714f-532a-4619-9660-82b0c9cc1954', '-4', 'America/Santiago'),
('aa2eaea7-40ed-4209-97ba-86d0f8f382c0', '-4', 'America/Grand_Turk'),
('aab28464-37f4-4e9d-a7f1-59f99537d733', '8', 'Asia/Urumqi'),
('ab5eea86-67ff-4e6c-8a1d-45ef43031597', '-9', 'Pacific/Marquesas'),
('aba04a72-de6a-40ac-bd8c-bbac43d94c5b', '-10', 'Pacific/Honolulu'),
('abbfa372-87b2-41f7-978c-1389112f382f', '8', 'Australia/Eucla'),
('abc73bae-ee6f-46ae-8e22-0cd519f1a9f8', '6', 'Asia/Rangoon'),
('ac75b729-2b55-4d61-9f7c-f85d2ea1d91d', '0', 'Africa/Banjul'),
('ac84152a-4594-4a80-a8f0-b1fac276c9a9', '1', 'Africa/Lagos'),
('ad088c14-50aa-4329-8022-0ad0a3bd6c55', '8', 'Asia/Krasnoyarsk'),
('adbd65b1-e967-48de-8e37-e4c0c415249c', '-7', 'America/Los_Angeles'),
('ae78ab46-b704-4fe8-94ce-8976775f6299', '-3', 'Atlantic/Stanley'),
('b084f8ff-1445-44a8-9a8b-15738fe525a9', '-5', 'America/Indiana/Tell_City'),
('b10a1fe7-048e-42cb-a3d8-97e8c206b25a', '-3', 'America/Cayenne'),
('b21d8055-95b9-4822-b6c3-4fe392f5cd2a', '8', 'Asia/Brunei'),
('b29bebf2-275d-4764-8623-33d0ebd7efe0', '-4', 'America/Indiana/Petersburg'),
('b4454b48-80e6-4f56-98a3-e11d27acda84', '2', 'Africa/Maseru'),
('b475f667-0a43-46f5-8626-0e38ca3867ad', '6', 'Antarctica/Vostok'),
('b6480f91-ee14-4bc3-8e76-ef302883afe8', '4', 'Asia/Tehran'),
('b6c67dea-ffd9-411c-a1cd-9469ff586f9e', '6', 'Asia/Almaty'),
('b8633ade-6f5b-474f-b608-ab80d1e35d20', '1', 'Africa/Brazzaville'),
('b96e2ad9-f384-4736-88b7-daf17c25cc26', '-5', 'America/Atikokan'),
('ba189215-4816-41b7-bea8-483a33dd9782', '7', 'Asia/Vientiane'),
('ba5de11f-963f-4ad0-8a67-7857edf25907', '-7', 'America/Vancouver'),
('bbadf0f5-27f6-4f7b-9724-017d7a9f865a', '11', 'Pacific/Noumea'),
('bc86d98b-dd5d-4910-92f6-10ef30f8689a', '11', 'Pacific/Guadalcanal'),
('bcd2ed9c-c0da-4e60-9b1d-11ec1d3b4149', '-3', 'America/Thule'),
('bde334f0-7b60-4773-b2f3-a749a5b629c8', '-11', 'Pacific/Niue'),
('bdeac1a2-6aaa-4182-bbe0-a3a92dd29b4b', '7', 'Asia/Novosibirsk'),
('bf2f2a2f-e8b1-4aa3-a228-528b24b8a3ce', '-5', 'America/Cayman'),
('bffb9d4c-7112-445e-905d-69ac16a9553a', '3', 'Europe/Helsinki'),
('c06775fc-552a-4963-b6f7-29297bb1c0ca', '10', 'Australia/Sydney'),
('c0bfc3ae-b542-4702-a42f-b7cb8e4918ba', '2', 'Africa/Maputo'),
('c14a21c3-d190-4f68-a58b-d48670c16fc1', '0', 'America/Danmarkshavn'),
('c17fbe11-fd4f-46e0-927e-d2f8637f0857', '-6', 'Pacific/Easter'),
('c4c2420e-d24d-4f43-9584-5700182dcc45', '-5', 'Bogota'),
('c4eff64f-65d2-481b-b73b-b88fd21662e9', '-8', 'America/Anchorage'),
('c55e82ab-35ee-41d5-923f-d21d8891bd37', '3', 'Asia/Jerusalem'),
('c905b159-1d89-4e31-acc9-da3a0b0b38f6', '-3', 'America/Argentina/Tucuman'),
('ca0efb96-1d0d-4a1b-863f-9be6d1a782fc', '3', 'Europe/Kiev'),
('ca6a2083-fd51-4f02-bea1-1898db639538', '5', 'Asia/Colombo'),
('ca8cdbf3-32e5-42b4-93fd-8bd511ffb64e', '-4', 'America/Kralendijk'),
('caac4632-477e-4a85-9598-cf201a4b0b37', '8', 'Asia/Chongqing'),
('cbc0e7d8-635f-4590-abf7-906aff397ebc', '1', 'Africa/Bangui'),
('cbce446c-947c-461f-8ef8-0d234301a457', '5', 'Asia/Oral'),
('cc66f0d9-771c-4044-aa5b-d6aad9a253e4', '-3', 'America/Recife'),
('cc965ec1-6a1c-4314-9489-087603505011', '3', 'Africa/Kampala'),
('cd0dcdc5-a34b-4a34-bbe0-32dcc883c2bf', '1', 'Africa/Malabo'),
('cd25ccfc-3ede-44bc-a5ab-ecb024866ace', '12', 'Antarctica/McMurdo'),
('cf207e81-c90c-42c7-9741-6c41878e05ba', '0', 'Africa/Bissau'),
('cf59867f-7ea9-4570-b136-bf0b78eb4d87', '3', 'Europe/Sofia'),
('d1e64ad7-1355-4db8-9a05-325835a9a11f', '5', 'Asia/Dushanbe'),
('d1ff7dc8-a3e8-4409-8c00-2e84e728b737', '-6', 'America/Managua'),
('d249050f-814b-4ab0-832b-56a9aeb5c105', '1', 'Africa/Casablanca'),
('d2667dc0-b3b5-4c08-a31e-cb117a688b85', '-4', 'America/Antigua'),
('d3c47b32-9951-4750-a44b-75096df81f3f', '10', 'Australia/Currie'),
('d42fda2c-163c-40c4-b5d1-a862aa70f88c', '12', 'Pacific/Nauru'),
('d449bb20-c3c1-443d-b26c-758faf4d053d', '-9', 'Pacific/Gambier'),
('d501dbd7-5eb9-457b-abca-53aa41bd54e7', '4', 'Asia/Dubai'),
('d5a0ea16-6d2d-4dad-a244-5d4772311518', '2', 'Antarctica/Troll'),
('d6289819-02cd-4f0e-b24d-f8e6a03fb1de', '8', 'Asia/Ulaanbaatar'),
('d6938b33-5133-43ef-8ea9-e3298316fe49', '2', 'Europe/Prague'),
('d72c8a63-0951-4a89-b586-bf31c794f9fd', '2', 'Africa/Tripoli'),
('d7668ea3-2728-4a37-a93a-bf896d2e4cae', '-5', 'America/Bahia_Banderas'),
('d76aa775-be73-42d6-bb1e-07cb167b24d9', '2', 'Europe/Tirane'),
('d91087df-a4f7-4c87-9a9e-80d86d239a05', '3', 'Africa/Asmara'),
('d9151cd1-8253-4ddc-bafc-b966d8d97018', '-5', 'America/Rio_Branco'),
('dbae566e-f82a-4272-931d-d26d27fbdb88', '-4', 'America/Detroit'),
('dbbd803b-dbd4-4887-84f3-8ca8407b2d8b', '-4', 'America/Santo_Domingo'),
('dd43009c-dde9-48e2-af5e-eda39b49d27e', '3', 'Asia/Hebron'),
('dd94b0bb-dafd-4503-bdcf-b25bdae6f06c', '3', 'Africa/Mogadishu'),
('ddb4b2d3-ae0b-4a3b-a90e-36037b6fcb41', '6', 'Asia/Yekaterinburg'),
('ddf046c1-89b4-4911-8212-20519a707184', '-6', 'America/Ojinaga'),
('de244e46-f19f-46ea-a3a9-e0f2418e875f', '-1', 'Atlantic/Cape_Verde'),
('dec6f09a-6116-4b73-b0e6-dd78f249e0b7', '-3', 'America/Paramaribo'),
('dee8758e-51a6-4c0d-8cd1-d59ce7103fa3', '-6', 'Pacific/Galapagos'),
('dfc80cb5-4ed7-4018-af88-cd8239febbfe', '-5', 'America/Merida'),
('e17e1164-dd69-4934-807d-4991c6582825', '5', 'Asia/Karachi'),
('e1f8e3b7-2137-4f1d-88b7-71f271595fc7', '-4', 'America/Nassau'),
('e2ce888b-672a-448a-8664-cb1658a8e882', '0', 'Africa/Lome'),
('e31b4ff7-ad86-49d7-8241-e6954aa8749a', '2', 'Africa/Lubumbashi'),
('e4486319-560c-473d-9091-8d59a5640e0b', '3', 'Europe/Chisinau'),
('e50fd3ab-e7f0-43c6-aa1f-03e35d997d51', '9', 'Pacific/Palau'),
('e522632f-f081-4e57-a4b1-311dea90ac4a', '1', 'Africa/Luanda'),
('e5599c8b-4279-4403-af53-64bfd749e07e', '7', 'Asia/Bangkok'),
('e65315b1-1493-40e3-a52a-48c8aa408a21', '-2', 'America/Godthab'),
('e7df3338-5c2e-4351-997d-67d0762655e8', '-8', 'America/Nome'),
('e7fb9bde-bd5d-4bea-b2d8-e66eb0a2cc7b', '-3', 'America/Argentina/Jujuy'),
('e89f6a9d-b265-41e3-8439-93deb537afe3', '8', 'Asia/Kashgar'),
('e8a6dfc1-0e83-428b-97a9-ece8265d7ad3', '-4', 'America/Iqaluit'),
('e8d0c16b-2aba-45e5-b023-abbb554cfa62', '-4', 'America/Indiana/Vincennes'),
('e8fa797a-c086-424f-b169-db4989a85df4', '0', 'Atlantic/Reykjavik'),
('e98fa72d-2850-41f9-8e0b-b37d163ad4f4', '0', NULL),
('e9acd800-eddb-4c17-9491-b98d37dc675b', '7', 'Asia/Omsk'),
('eace084b-e640-4e95-b272-8d039c035169', '2', 'Africa/Gaborone'),
('eb4473d6-8db5-45c1-99d3-f11bbbc22947', '5', 'Antarctica/Mawson'),
('eb8012fa-fc3d-42d5-ab67-d5a30a502f5a', '3', 'Africa/Juba'),
('ec931b27-bf08-43f3-8908-62fa9f44f5d4', '-6', 'America/Tegucigalpa'),
('ece7bb87-7940-4fcc-a693-54dc57bfc55b', '-5', 'America/Indiana/Knox'),
('ed4f9379-5ac7-447c-bd98-a8baa47a3bfb', '12', 'Pacific/Chatham'),
('ee1136b2-ac92-4450-8013-b918e89ab0ab', '-6', 'America/Costa_Rica'),
('ee4474c8-9d0c-409e-ab58-4bf81a1bba12', '8', 'Asia/Manila'),
('ef59cbfe-0748-47f3-a214-f3b6ff21bac1', '2', 'Europe/Malta'),
('efc9f4bf-dd6c-4111-9c98-e3075029f9f5', '8', 'Asia/Hong_Kong'),
('efd51b0c-7864-4922-aef4-b9ba177d6234', '-3', 'America/Montevideo'),
('f0877fd4-0434-432a-9db5-14583bd50c83', '-4', 'America/New_York'),
('f0b76d95-1812-4a6e-9387-8be39a3a5281', '12', 'Asia/Magadan'),
('f13b9da7-714c-4999-a423-dda48a8fddb5', '-6', 'America/Cambridge_Bay'),
('f184a485-8a2d-4303-a9f6-f9c7b6a6285d', '11', 'Asia/Ust-Nera'),
('f18a02a0-4132-435c-837f-46ba3bceff7f', '4', 'Asia/Tbilisi'),
('f26d9029-83e3-400d-8cc0-c035f5f5c080', '0', 'Africa/Accra'),
('f380ca58-f0a9-42af-ab05-c519e85235f5', '2', 'Europe/Berlin'),
('f400dacd-0656-4bbb-b060-3bf5911bc3db', '0', 'Africa/Dakar'),
('f424d6bf-ab77-4486-ab1d-3e8233a7caf4', '3', 'Europe/Minsk'),
('f43a1454-f42b-448c-af01-2d622922181e', '-4', 'America/Barbados'),
('f43f3114-c71e-41d6-a4dc-1464541e0a24', '5', 'Indian/Maldives'),
('f5d2d77b-23c9-415e-b3dc-c3d5c77c89e2', '-5', 'America/Monterrey'),
('f5e36a1b-07ac-4c0d-9846-34fbc871045d', '-6', 'America/Boise'),
('f626475a-e662-412a-b3d2-3bc6eadc0f17', '6', 'Indian/Chagos'),
('f6274973-3b5e-44ca-acf0-85be9a334ef6', '-4', 'America/Grenada'),
('f67526a6-c402-4a3d-8fff-bf5e1683cc19', '0', 'Africa/Abidjan'),
('f6dd7348-7f7d-40a8-a12c-8fb6133bfae4', '-5', 'America/Mexico_City'),
('f72a154e-cf75-46f1-bf4c-df0778ea4683', '-3', 'America/Belem'),
('f75661c5-7c8a-4925-be24-cc881b6a59a9', '5', 'Indian/Kerguelen'),
('f76e51f5-5f2d-4460-a8de-400cd192c097', '2', 'Arctic/Longyearbyen'),
('f79a1bcf-2602-4ba5-993e-fc70e4215fc3', '7', 'Indian/Christmas'),
('f807ca31-2de4-4c3c-8c29-bed0ce821cde', '9', 'Australia/Broken_Hill'),
('f8d5569c-922c-4de4-b0c8-276104d5db79', '2', 'Europe/Ljubljana'),
('f95e87a4-fea3-447a-8a4f-d30ee9ef317b', '2', 'Europe/Gibraltar'),
('f9d488fa-8a99-4f3e-9b06-b89407a6b63c', '8', 'Asia/Makassar'),
('fa1c9960-73bd-4dc1-a66b-7c84ec8906a8', '2', 'Europe/Skopje'),
('fb24197d-3598-4b3a-afcf-324385aa022c', '2', 'Africa/Kigali'),
('fd72e025-0bd5-4bd2-a9ee-dc66931d8ffe', '10', 'Australia/Brisbane'),
('ff69698d-1b56-44e7-a38a-6a7659f31b8d', '2', 'Europe/Belgrade'),
('TMZ_ID', '0', 'TMZ_DES');

-- --------------------------------------------------------

--
-- Table structure for table `t_id_type`
--

CREATE TABLE `t_id_type` (
  `ID_ID` decimal(10,0) NOT NULL,
  `TYPE` char(1) DEFAULT 'P' COMMENT 'P=PERSON C=COMPANY',
  `NAME` varchar(50) DEFAULT NULL,
  `COU_ID` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_id_type`
--

INSERT INTO `t_id_type` (`ID_ID`, `TYPE`, `NAME`, `COU_ID`) VALUES
('-1', 'P', 'No Doc', 'XXX'),
('1', 'P', 'Cédula de ciudadanía', 'COL'),
('2', 'P', 'Pasaporte', 'COL'),
('3', 'P', 'Cédula de extranjería', 'COL'),
('4', 'C', 'NIT', 'COL'),
('10', 'P', 'DNI', 'ARG'),
('12', 'P', 'CUIL', 'ARG'),
('13', 'C', 'CUIT', 'ARG'),
('15', 'P', 'Passport', 'AUS'),
('16', 'C', 'ABN', 'AUS'),
('21', 'P', 'CPF', 'BRA'),
('22', 'P', 'RG', 'BRA'),
('23', 'P', 'Passport', 'BRA'),
('32', 'P', 'Pasaporte', 'CHL'),
('33', 'P', 'RUN', 'CHL'),
('34', 'C', 'RUT', 'CHL'),
('51', 'P', 'Cédula de ciudadanía', 'CRI'),
('52', 'P', 'Pasaporte', 'CRI'),
('53', 'P', 'NITE', 'CRI'),
('61', 'P', 'Cédula de ciudadanía', 'ECU'),
('62', 'P', 'Pasaporte', 'ECU'),
('71', 'P', 'CURP', 'MEX'),
('72', 'P', 'Pasaporte', 'MEX'),
('73', 'P', 'Credencial para votar', 'MEX'),
('81', 'P', 'Passport', 'NZL'),
('82', 'C', 'IRD', 'NZL'),
('91', 'P', 'Cédula de identidad personal', 'PAN'),
('92', 'P', 'Pasaporte', 'PAN'),
('93', 'C', 'NIT', 'PAN'),
('101', 'P', 'DNI', 'PER'),
('102', 'P', 'Pasaporte', 'PER'),
('103', 'C', 'RUC', 'PER'),
('111', 'P', 'National Id', 'USA'),
('112', 'P', 'SSN', 'USA'),
('113', 'P', 'TIN', 'USA'),
('114', 'P', 'PASSPORT', 'USA'),
('121', 'P', 'Cédula de identidad', 'VEN'),
('122', 'P', 'Pasaporte', 'VEN'),
('123', 'P', 'Cédula de residente', 'VEN'),
('124', 'C', 'RIF', 'VEN'),
('200', 'P', 'id', 'BEL'),
('201', 'P', 'Passport', 'BEL'),
('203', 'P', 'id', 'BGR'),
('204', 'P', 'Passport', 'BGR'),
('205', 'P', 'id', 'CZE'),
('206', 'P', 'Passport', 'CZE'),
('207', 'P', 'id', 'DNK'),
('208', 'P', 'Passport', 'DNK'),
('209', 'P', 'id', 'DEU'),
('210', 'P', 'Passport', 'DEU'),
('211', 'P', 'id', 'EST'),
('212', 'P', 'Passport', 'EST'),
('213', 'P', 'id', 'IRL'),
('214', 'P', 'Passport', 'IRL'),
('215', 'P', 'id', 'GRC'),
('216', 'P', 'Passport', 'GRC'),
('217', 'P', 'id', 'ESP'),
('218', 'P', 'Passport', 'ESP'),
('219', 'P', 'id', 'FRA'),
('220', 'P', 'Passport', 'FRA'),
('221', 'P', 'id', 'HRV'),
('222', 'P', 'Passport', 'HRV'),
('223', 'P', 'id', 'ITA'),
('224', 'P', 'Passport', 'ITA'),
('225', 'P', 'id', 'CYP'),
('226', 'P', 'Passport', 'CYP'),
('227', 'P', 'id', 'LVA'),
('228', 'P', 'Passport', 'LVA'),
('229', 'P', 'id', 'LTU'),
('230', 'P', 'Passport', 'LTU'),
('231', 'P', 'id', 'LUX'),
('232', 'P', 'Passport', 'LUX'),
('233', 'P', 'id', 'HUN'),
('234', 'P', 'Passport', 'HUN'),
('235', 'P', 'id', 'MLT'),
('236', 'P', 'Passport', 'MLT'),
('237', 'P', 'id', 'NLD'),
('238', 'P', 'Passport', 'NLD'),
('239', 'P', 'id', 'AUT'),
('240', 'P', 'Passport', 'AUT'),
('241', 'P', 'id', 'POL'),
('242', 'P', 'Passport', 'POL'),
('243', 'P', 'id', 'PRT'),
('244', 'P', 'Passport', 'PRT'),
('245', 'P', 'id', 'ROU'),
('246', 'P', 'Passport', 'ROU'),
('247', 'P', 'id', 'SVN'),
('248', 'P', 'Passport', 'SVN'),
('249', 'P', 'id', 'SVK'),
('250', 'P', 'Passport', 'SVK'),
('251', 'P', 'id', 'FIN'),
('252', 'P', 'Passport', 'FIN'),
('253', 'P', 'id', 'SWE'),
('254', 'P', 'Passport', 'SWE'),
('255', 'P', 'id', 'ISL'),
('256', 'P', 'Passport', 'ISL'),
('257', 'P', 'id', 'LIE'),
('258', 'P', 'Passport', 'LIE'),
('259', 'P', 'id', 'NOR'),
('260', 'P', 'Passport', 'NOR'),
('261', 'P', 'id', 'CHE'),
('262', 'P', 'Passport', 'CHE'),
('263', 'P', 'id', 'MNE'),
('264', 'P', 'Passport', 'MNE'),
('265', 'P', 'id', 'MKD'),
('266', 'P', 'Passport', 'MKD'),
('267', 'P', 'id', 'ALB'),
('268', 'P', 'Passport', 'ALB'),
('269', 'P', 'id', 'SRB'),
('270', 'P', 'Passport', 'SRB'),
('271', 'P', 'id', 'TUR'),
('272', 'P', 'Passport', 'TUR'),
('273', 'P', 'id', 'DZA'),
('274', 'P', 'Passport', 'DZA'),
('275', 'P', 'id', 'EGY'),
('276', 'P', 'Passport', 'EGY'),
('277', 'P', 'id', 'JOR'),
('278', 'P', 'Passport', 'JOR'),
('279', 'P', 'id', 'LBN'),
('280', 'P', 'Passport', 'LBN'),
('281', 'P', 'id', 'LBY'),
('282', 'P', 'Passport', 'LBY'),
('283', 'P', 'id', 'MAR'),
('284', 'P', 'Passport', 'MAR'),
('285', 'P', 'id', 'PSE'),
('286', 'P', 'Passport', 'PSE'),
('287', 'P', 'id', 'SYR'),
('288', 'P', 'Passport', 'SYR'),
('289', 'P', 'id', 'TUN'),
('290', 'P', 'Passport', 'TUN'),
('291', 'P', 'id', 'RUS'),
('292', 'P', 'Passport', 'RUS'),
('293', 'P', 'id', 'GBR'),
('294', 'P', 'Passport', 'GBR'),
('295', 'P', 'id', 'UKR'),
('296', 'P', 'Passport', 'UKR'),
('297', 'P', 'id', 'CAN'),
('298', 'P', 'Passport', 'CAN'),
('299', 'P', 'id', 'JPN'),
('300', 'P', 'Passport', 'JPN'),
('301', 'P', 'ID', 'GTM'),
('302', 'P', 'Pasaporte', 'ECU'),
('303', 'P', 'id', 'SGP'),
('304', 'P', 'Passport', 'SGP'),
('305', 'P', 'ID', 'BOL'),
('306', 'P', 'Pasaporte', 'BOL'),
('307', 'P', 'id', 'KOR'),
('308', 'P', 'Passport', 'KOR'),
('309', 'P', 'id', 'TWN'),
('310', 'P', 'Cédula de ciudadanía', 'SLV'),
('311', 'P', 'Pasaporte', 'SLV'),
('312', 'P', 'Passport', 'TWN'),
('313', 'P', 'id', 'CHN'),
('314', 'P', 'Passport', 'CHN'),
('315', 'P', 'id', 'HKG'),
('316', 'P', 'Passport', 'HKG'),
('401', 'P', 'id', 'NGA'),
('402', 'P', 'Passport', 'NGA'),
('405', 'P', 'id', 'ZAF'),
('406', 'P', 'Passport', 'ZAF'),
('475', 'P', 'id', 'ISR'),
('476', 'P', 'Passport', 'ISR'),
('477', 'P', 'Resident Card', 'ISR'),
('480', 'P', 'Cédula de identidad', 'CHL'),
('481', 'P', 'Pasaporte', 'ARG'),
('482', 'P', 'Pasaporte', 'URY'),
('483', 'P', 'Cédula de identidad', 'URY'),
('484', 'C', 'id', 'URY'),
('486', 'P', 'Cédula de identidad', 'NIC'),
('487', 'P', 'Pasaporte', 'NIC'),
('488', 'P', 'id', 'NIC'),
('490', 'P', 'Carné de Identidad', 'CUB'),
('491', 'P', 'Pasaporte', 'CUB'),
('492', 'C', 'id', 'CUB'),
('494', 'P', 'DNI', 'HND'),
('495', 'P', 'Pasaporte', 'HND'),
('496', 'C', 'id', 'HND'),
('555', 'P', 'Tarjeta de identidad', 'COL'),
('556', 'P', 'Registro civil', 'COL'),
('557', 'P', 'Clave Única Registro Población', 'COL'),
('634', 'P', 'ID', 'QAT'),
('635', 'P', 'Passport', 'QAT'),
('636', 'P', 'Resident Card', 'QAT'),
('780', 'P', 'Id', 'TTO'),
('781', 'P', 'Passport', 'TTO'),
('782', 'C', 'ID Company', 'TTO'),
('784', 'P', 'ID', 'ARE'),
('785', 'P', 'Passport', 'ARE'),
('786', 'P', 'Resident Card', 'ARE'),
('801', 'C', 'id', 'BEL'),
('802', 'C', 'id', 'BGR'),
('803', 'C', 'id', 'CZE'),
('804', 'C', 'id', 'DNK'),
('805', 'C', 'id', 'DEU'),
('806', 'C', 'id', 'EST'),
('807', 'C', 'id', 'IRL'),
('808', 'C', 'id', 'GRC'),
('809', 'C', 'id', 'ESP'),
('810', 'C', 'id', 'FRA'),
('811', 'C', 'id', 'HRV'),
('812', 'C', 'id', 'ITA'),
('813', 'C', 'id', 'CYP'),
('814', 'C', 'id', 'LVA'),
('815', 'C', 'id', 'LTU'),
('816', 'C', 'id', 'LUX'),
('817', 'C', 'id', 'HUN'),
('818', 'C', 'id', 'MLT'),
('819', 'C', 'id', 'NLD'),
('820', 'C', 'id', 'AUT'),
('821', 'C', 'id', 'POL'),
('822', 'C', 'id', 'PRT'),
('823', 'C', 'id', 'ROU'),
('824', 'C', 'id', 'SVN'),
('825', 'C', 'id', 'SVK'),
('826', 'C', 'id', 'FIN'),
('827', 'C', 'id', 'SWE'),
('828', 'C', 'id', 'ISL'),
('829', 'C', 'id', 'LIE'),
('830', 'C', 'id', 'NOR'),
('831', 'C', 'id', 'CHE'),
('832', 'C', 'id', 'MNE'),
('833', 'C', 'id', 'MKD'),
('834', 'C', 'id', 'ALB'),
('835', 'C', 'id', 'SRB'),
('836', 'C', 'id', 'TUR'),
('837', 'C', 'id', 'DZA'),
('838', 'C', 'id', 'EGY'),
('839', 'C', 'id', 'ISR'),
('840', 'C', 'id', 'JOR'),
('841', 'C', 'id', 'LBN'),
('842', 'C', 'id', 'LBY'),
('843', 'C', 'id', 'MAR'),
('844', 'C', 'id', 'PSE'),
('845', 'C', 'id', 'SYR'),
('846', 'C', 'id', 'TUN'),
('847', 'C', 'id', 'RUS'),
('848', 'C', 'id', 'GBR'),
('849', 'C', 'id', 'UKR'),
('850', 'C', 'id', 'CAN'),
('851', 'C', 'id', 'JPN'),
('852', 'C', 'id', 'NGA'),
('853', 'C', 'id', 'SGP'),
('854', 'C', 'id', 'ZAF'),
('855', 'C', 'id', 'KOR'),
('856', 'C', 'id', 'TWN'),
('857', 'C', 'id', 'CHN'),
('858', 'C', 'id', 'HKG'),
('967', 'P', 'Cédula de ciudadanía', 'DOM'),
('968', 'P', 'Passport', 'DOM'),
('969', 'P', 'ID', 'DOM');

-- --------------------------------------------------------

--
-- Table structure for table `t_inconsistency`
--

CREATE TABLE `t_inconsistency` (
  `INCONSISTENCY_ID` char(36) NOT NULL,
  `CODE` char(30) CHARACTER SET latin1 DEFAULT NULL,
  `TYPE` varchar(100) NOT NULL,
  `ERROR_VALUE` varchar(100) NOT NULL,
  `CORRECT_VALUE` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(355) DEFAULT NULL,
  `STATUS` char(1) NOT NULL DEFAULT 'O',
  `DATE` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_language`
--

CREATE TABLE `t_language` (
  `L_ID` char(36) NOT NULL,
  `L_ISO_1` varchar(2) DEFAULT NULL COMMENT 'ISO 639-1 CODE',
  `L_ISO_2` varchar(3) DEFAULT NULL COMMENT 'ISO 639-2 CODE',
  `L_FULL_NAME` varchar(50) DEFAULT NULL COMMENT 'Full language name',
  `CREATED` timestamp NOT NULL DEFAULT current_timestamp(),
  `CHANGED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table for languages codes.';

--
-- Dumping data for table `t_language`
--

INSERT INTO `t_language` (`L_ID`, `L_ISO_1`, `L_ISO_2`, `L_FULL_NAME`, `CREATED`, `CHANGED`) VALUES
('e36ae9b7-8eb1-440c-a2e1-9ec89f808a5e', 'es', 'spa', 'Spanish', '2020-06-05 11:50:39', '2020-06-05 11:50:39'),
('ed949685-e068-4680-b57e-fc4b7028802', 'pt', 'por', 'Portuguese', '2020-06-05 11:50:39', '2020-06-05 11:50:39'),
('ed949685-e068-4680-b57e-fc4b70288023', 'en', 'eng', 'English', '2020-06-05 11:50:39', '2020-06-05 11:50:39'),
('ed949685-e068-4680-b57e-fc4b70288024', 'de', 'ger', 'German', '2020-06-05 11:50:39', '2020-06-05 11:50:39'),
('ed949685-e068-4680-b57e-fc4b70288025', 'fr', 'fra', 'French', '2020-06-05 11:50:39', '2020-06-05 11:50:39'),
('ed949685-e068-4680-b57e-fc4b70288026', 'sv', 'swe', 'Swedish', '2020-06-05 11:50:39', '2020-06-05 11:50:39'),
('ed949685-e068-4680-b57e-fc4b70288027', 'it', 'ita', 'Italy', '2020-06-05 11:50:39', '2020-06-05 11:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

CREATE TABLE `t_order` (
  `T_ORDER_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `NUMBER` int(11) DEFAULT NULL,
  `CONSUMPTION` int(11) DEFAULT 0,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `MEDIUM` varchar(20) DEFAULT NULL,
  `SMART_CODE` tinyint(1) DEFAULT 0,
  `CUSTOMIZATION` varchar(20) DEFAULT NULL,
  `ADD_SIGNATURE` tinyint(1) DEFAULT NULL,
  `ADD_TIMESTAMP` tinyint(1) DEFAULT NULL,
  `ADD_BLOCKCHAIN` tinyint(1) DEFAULT NULL,
  `STORAGE` int(11) DEFAULT NULL,
  `DATE` timestamp NULL DEFAULT current_timestamp(),
  `BROWSER_IP` varchar(20) DEFAULT NULL,
  `BROWSER_INFO` varchar(180) DEFAULT NULL,
  `STATUS` int(11) DEFAULT 1,
  `PAYMENT_STATUS` int(11) DEFAULT NULL,
  `PAYMENT_REFERENCE` varchar(40) DEFAULT NULL,
  `PAY_MET_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_participant_validation`
--

CREATE TABLE `t_participant_validation` (
  `ID_VALIDATION` varchar(36) NOT NULL,
  `TOKEN` varchar(50) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT NULL,
  `ID_PREREGISTER` varchar(36) NOT NULL,
  `DATE_CREATION` timestamp NULL DEFAULT NULL,
  `DATE_ACTIVATION` timestamp NULL DEFAULT NULL,
  `DATE_EXPIRATION` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_payment_data`
--

CREATE TABLE `t_payment_data` (
  `T_PAYM_ID` char(36) NOT NULL,
  `T_ORDER_ID` char(36) DEFAULT NULL,
  `T_REQUEST_ID` char(36) DEFAULT NULL,
  `PLATFORM_INFO` longtext DEFAULT NULL COMMENT 'Payment Platform JSON',
  `PLATFORM_ID` varchar(128) NOT NULL,
  `STATUS_XERTIFY` char(2) NOT NULL,
  `STATUS_PLATFORM` char(2) DEFAULT NULL,
  `DATE_CREATION` datetime NOT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `PLATFORM` char(20) DEFAULT NULL COMMENT 'Stripe, Epayco, PayU',
  `IP_ADDRESS` varchar(100) DEFAULT NULL,
  `IP_INFO` varchar(500) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_payment_method`
--

CREATE TABLE `t_payment_method` (
  `PAY_MET_ID` char(36) NOT NULL,
  `PAY_NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_plan`
--

CREATE TABLE `t_plan` (
  `ID_PLAN` char(5) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `TYPE_A` int(11) NOT NULL COMMENT 'Constancias',
  `TYPE_B` int(11) NOT NULL COMMENT 'Diplomas',
  `TYPE_C` int(11) DEFAULT NULL COMMENT 'Insignias',
  `TYPE_D` int(11) DEFAULT NULL COMMENT 'Contratos',
  `PRICE` decimal(10,2) NOT NULL,
  `CURRENCY` char(3) NOT NULL,
  `ID_COUNTRY` char(3) DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  `TYPE_A_PRICE` decimal(10,2) DEFAULT NULL,
  `TYPE_B_PRICE` decimal(10,2) DEFAULT NULL,
  `TYPE_C_PRICE` decimal(10,2) DEFAULT NULL,
  `TYPE_D_PRICE` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_plan_customer`
--

CREATE TABLE `t_plan_customer` (
  `ID_PLAN_CUSTOMER` char(36) NOT NULL,
  `ACC_ID` char(36) DEFAULT NULL,
  `TYPE_A_SPENT` int(11) DEFAULT NULL,
  `TYPE_A_TOTAL` int(11) DEFAULT NULL,
  `TYPE_B_SPENT` int(11) DEFAULT NULL,
  `TYPE_B_TOTAL` int(11) DEFAULT NULL,
  `TYPE_C_SPENT` int(11) DEFAULT NULL,
  `TYPE_C_TOTAL` int(11) DEFAULT NULL,
  `TYPE_D_SPENT` int(11) DEFAULT NULL,
  `TYPE_D_TOTAL` int(11) DEFAULT NULL,
  `LAST_CREDITS` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_CONSUMPTION` timestamp NULL DEFAULT NULL,
  `ON_DEMAND` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_plan_customer`
--

INSERT INTO `t_plan_customer` (`ID_PLAN_CUSTOMER`, `ACC_ID`, `TYPE_A_SPENT`, `TYPE_A_TOTAL`, `TYPE_B_SPENT`, `TYPE_B_TOTAL`, `TYPE_C_SPENT`, `TYPE_C_TOTAL`, `TYPE_D_SPENT`, `TYPE_D_TOTAL`, `LAST_CREDITS`, `LAST_CONSUMPTION`, `ON_DEMAND`) VALUES
('00b1cb49-e18c-42cf-b3dd-a7729791045c', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 0, 5000, 1549, 5000, 0, 5000, 0, 5000, '2021-05-18 17:22:32', '2022-02-02 00:21:57', 1),
('64971912-37f9-4603-a3cd-af570f8816a0', '0a4f2132-524d-480c-80e9-fbca06630b32', 111, 111, 222, 222, 22, 22, 22, 22, '2022-05-27 04:28:31', '2022-05-27 04:28:31', 1),
('686de39e-5f76-4bde-886f-b6dc587f57d3', 'a14067d1-e2b1-4a72-ada0-ac1c2f3d725d', 111, 111, 11, 11, 110, 11, 11, 111, '2022-05-27 03:41:08', '2022-05-27 03:41:08', 0),
('7ac68be3-f5be-42fc-b5dc-3b11fa1239ee', 'caf28cd9-b362-48df-9750-001f5bdf135c', 50, 100, 60, 100, 20, 100, 40, 1200, '2022-05-27 10:34:23', '2022-05-27 05:04:23', 1),
('b1b88dcb-1333-4080-a275-034d20dd5d24', '774362e8-f260-4897-a6db-a4a877dda314', 1, 10, 10, 10, 11, 0, 10, 0, '2022-05-27 03:31:41', '2022-05-27 03:31:41', 0),
('be588110-aced-453c-9eb8-98998489cf6b', 'a3984a66-9a01-492d-80e1-75c402d50ea5', 10, 400, 20, 400, 30, 400, 40, 400, '2022-05-27 03:16:48', '2022-05-27 03:16:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_plan_purchase`
--

CREATE TABLE `t_plan_purchase` (
  `ID_PLAN_PURCHASE` char(36) NOT NULL,
  `ID_PLAN` char(1) DEFAULT NULL,
  `TYPE_A` int(11) DEFAULT NULL,
  `TYPE_B` int(11) DEFAULT NULL,
  `TYPE_C` int(11) DEFAULT NULL,
  `TYPE_D` int(11) DEFAULT NULL,
  `DATE` timestamp NULL DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `CURRENCY` char(3) DEFAULT NULL,
  `TYPE_A_PRICE` decimal(10,2) DEFAULT NULL,
  `TYPE_B_PRICE` decimal(10,2) DEFAULT NULL,
  `TYPE_C_PRICE` decimal(10,2) DEFAULT NULL,
  `TYPE_D_PRICE` decimal(10,2) DEFAULT NULL,
  `ACC_ID` char(36) NOT NULL,
  `COMMENTS` varchar(200) DEFAULT NULL,
  `TYPE_A_USED` int(11) DEFAULT 0,
  `TYPE_B_USED` int(11) DEFAULT 0,
  `TYPE_C_USED` int(11) DEFAULT 0,
  `TYPE_D_USED` int(11) DEFAULT 0,
  `STATUS` char(1) DEFAULT NULL,
  `DATE_BEGIN` timestamp NULL DEFAULT NULL,
  `DATE_END` timestamp NULL DEFAULT NULL,
  `deleted_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_plan_purchase`
--

INSERT INTO `t_plan_purchase` (`ID_PLAN_PURCHASE`, `ID_PLAN`, `TYPE_A`, `TYPE_B`, `TYPE_C`, `TYPE_D`, `DATE`, `PRICE`, `CURRENCY`, `TYPE_A_PRICE`, `TYPE_B_PRICE`, `TYPE_C_PRICE`, `TYPE_D_PRICE`, `ACC_ID`, `COMMENTS`, `TYPE_A_USED`, `TYPE_B_USED`, `TYPE_C_USED`, `TYPE_D_USED`, `STATUS`, `DATE_BEGIN`, `DATE_END`, `deleted_at`) VALUES
('02ec6c62-b7fe-11eb-83a2-162da8ec4ee7', NULL, 5000, 5000, 5000, 5000, '2021-05-18 17:25:16', '0.00', 'USD', '0.00', '0.00', '0.00', '0.00', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '', 0, 826, 0, 0, 'A', '2021-05-18 17:25:16', '2021-05-18 17:25:16', 0),
('2fb1531a-bf0c-4ea5-a808-1f90411d81eb', NULL, 111, 11, 11, 1, '2022-05-27 00:17:39', '1011.00', 'USD', '11.00', '11.00', '11.00', '1.00', 'caf28cd9-b362-48df-9750-001f5bdf135c', 'RAKESH  TESTING 3', 0, 0, 0, 0, 'A', '2022-05-21 18:30:00', '2022-05-23 18:30:00', 1),
('56c437fd-b1fb-4819-8d05-c3e1c113824b', NULL, 111, 11, 11, 1, '2022-05-27 00:21:33', '1011.00', 'USD', '11.00', '11.00', '11.00', '1.00', 'caf28cd9-b362-48df-9750-001f5bdf135c', 'RAKESH  TESTING 2', 0, 0, 0, 0, 'A', '2022-05-19 18:30:00', '2022-05-21 18:30:00', 1),
('5d087fc8-40d0-43c6-b26d-d8d892a405f6', NULL, 111, 11, 11, 1, '2022-05-27 00:06:52', '10.00', 'USD', '11.00', '11.00', '11.00', '1.00', 'caf28cd9-b362-48df-9750-001f5bdf135c', 'RAKESH  TESTING', 0, 0, 0, 0, 'A', '2022-05-24 18:30:00', '2022-05-26 18:30:00', 0),
('6644dc6d-4dd5-470a-9c1c-5b38a12b864f', NULL, 111, 11, 11, 1, '2022-05-26 04:40:16', '10.00', 'USD', '11.00', '11.00', '11.00', '1.00', 'caf28cd9-b362-48df-9750-001f5bdf135c', 'hello gvjnmsvjd', 0, 0, 0, 0, 'A', '2022-05-25 18:30:00', '2022-05-27 18:30:00', 0),
('7c26a92d-c021-4f38-9d65-ac3fcee7ad9c', NULL, 111, 11, 11, 1, '2022-05-27 00:16:19', '1011.00', 'USD', '11.00', '11.00', '11.00', '1.00', 'caf28cd9-b362-48df-9750-001f5bdf135c', 'RAKESH  TESTING 1', 0, 0, 0, 0, 'A', '2022-05-23 18:30:00', '2022-05-25 18:30:00', 0),
('9e03681a-9e49-472f-b347-ccec78e7df23', NULL, 111, 11, 11, 1, '2022-05-27 00:04:52', '10.00', 'USD', '11.00', '11.00', '11.00', '1.00', 'caf28cd9-b362-48df-9750-001f5bdf135c', 'RAKESH  TESTING', 0, 0, 0, 0, 'A', '2022-05-24 18:30:00', '2022-05-26 18:30:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_prefix_certificates`
--

CREATE TABLE `t_prefix_certificates` (
  `ID_PREF_CERT` char(36) NOT NULL,
  `PREFIX` varchar(20) NOT NULL,
  `ACC_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_pre_register`
--

CREATE TABLE `t_pre_register` (
  `ID_PREREGISTER` varchar(36) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `ACC_ID_COMPANY` varchar(36) DEFAULT NULL,
  `ID_FORM` varchar(36) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT 'I',
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_prod_blockchain`
--

CREATE TABLE `t_prod_blockchain` (
  `CONTENT` mediumtext NOT NULL,
  `IMAGE` longtext NOT NULL,
  `PROD_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_push_notification`
--

CREATE TABLE `t_push_notification` (
  `T_PUSH_ID` char(36) NOT NULL,
  `DATE` timestamp NULL DEFAULT NULL,
  `DATE_END` timestamp NULL DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `ACC_ID` char(36) NOT NULL,
  `SUBSCRIPTION_ID` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_record_certificate`
--

CREATE TABLE `t_record_certificate` (
  `STATE` char(15) DEFAULT NULL,
  `STAFF_ID` char(36) DEFAULT NULL,
  `CV_ID` char(36) DEFAULT NULL,
  `CODE` char(30) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `HASH` varchar(100) DEFAULT NULL,
  `HASH_IPFS` varchar(50) DEFAULT NULL,
  `HASH_ADDRESS` varchar(50) DEFAULT NULL,
  `METARECORD_ID` char(36) DEFAULT NULL,
  `PATH_BLOCKCHAIN_JSON_AWS` varchar(200) DEFAULT NULL,
  `BLOCKCHAIN_FILE_PATH` varchar(200) DEFAULT NULL,
  `SMS_ID` varchar(60) DEFAULT NULL COMMENT 'Aws SNS ID',
  `EMAIL_ID` varchar(80) DEFAULT NULL COMMENT 'Sedinblue ID',
  `DATE_EXPIRATION` date DEFAULT NULL,
  `TEMPLATE_ID` char(36) DEFAULT NULL,
  `COUNT_BLOCKCERTS` int(11) DEFAULT 0,
  `COUNT_DOWNLOAD` int(11) DEFAULT 0,
  `COUNT_FACEBOOK` int(11) DEFAULT 0,
  `COUNT_TWITTER` int(11) DEFAULT 0,
  `COUNT_EMAIL` int(11) DEFAULT 0,
  `COUNT_WHATSAPP` int(11) DEFAULT 0,
  `COUNT_LINKEDIN` int(11) DEFAULT 0,
  `TYPE` char(5) DEFAULT NULL COMMENT 'Certificate type It can be laboral, academic ..',
  `STATUS` char(2) DEFAULT NULL,
  `PATH_PDF_AZURE` char(50) DEFAULT NULL,
  `PAGES` int(11) DEFAULT NULL,
  `PRIVACY` char(1) DEFAULT NULL,
  `PATH_IMAGE_AWS` varchar(100) DEFAULT NULL,
  `CERTIFICATES_GENERATION_ID` char(36) DEFAULT NULL,
  `DATE_REVOKED` timestamp NULL DEFAULT NULL,
  `ACC_ID_ISSUER` char(36) DEFAULT NULL,
  `AUX` char(1) DEFAULT NULL,
  `HAS_TOKEN` smallint(6) DEFAULT 0,
  `COUNT_VISITS` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_record_certificate`
--

INSERT INTO `t_record_certificate` (`STATE`, `STAFF_ID`, `CV_ID`, `CODE`, `DATE`, `HASH`, `HASH_IPFS`, `HASH_ADDRESS`, `METARECORD_ID`, `PATH_BLOCKCHAIN_JSON_AWS`, `BLOCKCHAIN_FILE_PATH`, `SMS_ID`, `EMAIL_ID`, `DATE_EXPIRATION`, `TEMPLATE_ID`, `COUNT_BLOCKCERTS`, `COUNT_DOWNLOAD`, `COUNT_FACEBOOK`, `COUNT_TWITTER`, `COUNT_EMAIL`, `COUNT_WHATSAPP`, `COUNT_LINKEDIN`, `TYPE`, `STATUS`, `PATH_PDF_AZURE`, `PAGES`, `PRIVACY`, `PATH_IMAGE_AWS`, `CERTIFICATES_GENERATION_ID`, `DATE_REVOKED`, `ACC_ID_ISSUER`, `AUX`, `HAS_TOKEN`, `COUNT_VISITS`) VALUES
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA001', '2021-10-30 16:08:19', 'c5d79e3ea5ca738e1cacd456b13507f94a24c7f8d9ac39b314ff25813bbc2bad', '', '', '', 'certificates_jsons/8082dfbe-d4e0-4e03-901a-02dac72333dd/A45F8B2BA001.json', 'certificates_jsons/8082dfbe-d4e0-4e03-901a-02dac72333dd/A45F8B2BA001.json', NULL, NULL, NULL, 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA001', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA002', '2021-12-21 02:00:56', 'a8de6e2b494f285c3cd93d40c2b08f256ad7decbac88ff51dd482b4c9650c1c6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA002.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA002.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA002', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '1c0db742-b6d2-42a1-ae11-fbafb3200916', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA003', '2021-12-21 02:00:56', '673539beeb1a53872776807043d406e06365807ed2dbf03d85d2864fc2086ac0', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA003.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA003.json', '47588d5c-f677-5112-aeda-d767c9362d55', '<202112210333.16998459177@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA003', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '1c0db742-b6d2-42a1-ae11-fbafb3200916', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA201', '2021-12-21 20:33:36', '686ca22a3ba0a4bc514199f1f0988527951e5ef7e81587330f4dc8a891491eef', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA201.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA201.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA201', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA202', '2021-12-21 20:33:36', 'd68864c067a1838ab405595d0d1f398ffc27bd49034e44c6bad56018c23e3aaf', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA202.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA202.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA202', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA203', '2021-12-21 20:46:41', '8474e2a912d0bb74836a594dd30372560eafef87c7309ce221e880ac031d03fa', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA203.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA203.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA203', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA204', '2021-12-21 20:46:41', '20d40e0049b163a22fb88ca8c42f58a26a4ccea5e9eb2ba76bb0ca6160af8cb7', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA204.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA204.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA204', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA205', '2021-12-21 20:54:18', '7064ad6d000a16c7c6174b47a065d9d92368b508cfcb115be18de356f42ce66c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA205.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA205.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA205', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA206', '2021-12-21 20:54:18', '33075934258884dd2babab3528944c45324272434f2710cb8152d127c3667af6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA206.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA206.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA206', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA207', '2021-12-21 22:13:04', '41706b2a0ae38b5474257928fc43f6cc87e29b900cacc1d8a82eb376d34d0c85', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA207.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA207.json', 'ba0f5932-a6c7-5a2f-bf17-030cb36f3e8a', '<202112230712.57603983551@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA207', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA208', '2021-12-21 22:13:04', '868bc1176a244efcdcc53df52da0d29c412f5e30782baf38a3a51469d46ea12c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA208.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA208.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA208', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA209', '2021-12-23 21:08:04', '2d71cc1115f0ddc7bd1a08507e4eb41a1be851b45be79696c2fa52b4e1d8a8e3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA209.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA209.json', 'e9796c82-f4a5-503f-b00a-36bc13d96534', '<202112232208.23246335859@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA209', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA210', '2021-12-23 21:08:04', '21cef45e40bdee2aff788fefa790f8c075b5431ac8a8bf396abfd991a18643dd', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA210.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA210.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA210', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA211', '2021-12-23 21:21:47', 'e6f01769909469e9258b9ec94f97f1f3524ebbf8a6d3a50a3fd6bdb4e279fa07', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA211.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA211.json', 'ed400f3c-e208-5a54-8034-550208be4458', '<202112232221.46673101415@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA211', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA212', '2021-12-23 21:21:47', '3c8b1a07df98abc5a053180ca5af2615bd0f5539644eab057fb42053effb36dd', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA212.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA212.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA212', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA213', '2021-12-23 21:35:47', '5e9635db943152a40a5fbd6704eb0fc438fcef279fb376a56942f124b579e6ab', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA213.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA213.json', '0f9b9635-c602-5f53-906e-cc0b2bff268b', '<202112232235.18409835213@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA213', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA214', '2021-12-23 21:35:47', '224f8477e840bcee674f5c0905b2b0fac37471865c1a0d0bf9e07c2cc77a785b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA214.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA214.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA214', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA215', '2021-12-23 21:45:46', '628ae60280fdcb86d793ac8a8f4a018131c1e08e05234fa13ebcfcdcc6b7c646', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA215.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA215.json', '15843410-1e0a-57da-aca9-6e2eee58cd6d', '<202112232245.10442439799@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA215', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA216', '2021-12-23 21:45:46', '0b67c31a33b5a346efc58565d6f468e87086624bd10577d7ee73e843d2dcda86', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA216.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA216.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA216', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA217', '2021-12-23 21:57:25', 'b5b72d148bb44cc386fd2bb76f13ab283b3bf68421fbeaba4d3cb1b49d68bcd0', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA217.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA217.json', '9f402742-cab4-506c-9d3e-7d7c39a4d5ee', '<202112232257.49701759718@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA217', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA218', '2021-12-23 21:57:25', '4753f6d758bc5f6aa92e0dd75d4cefd71cacaed9003a071665fe4aaeeb7a59ac', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA218.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA218.json', 'a393aa9a-0aa8-5869-b9aa-f0a4f9b8af2a', '<202112232257.31114818459@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA218', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA219', '2021-12-23 22:09:25', '2c2498338fe156750a27a0edd508f89acc5fa1d96db71d96547a698840e8aaa8', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA219.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA219.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA219', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA220', '2021-12-23 22:09:25', '05925613cea21292f1f5940824c3520ba49bbe6c1c0b521eefd63114471a8b17', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA220.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA220.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA220', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA221', '2021-12-23 22:15:56', '4d3ca0686c54eb7a2a4f34adb7cb4845351573ff49ee8e0997325e0ea2c155da', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA221.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA221.json', NULL, NULL, NULL, '26910c13-ceaf-47d8-8af3-903503ce0df7', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA221', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA222', '2021-12-23 22:15:56', 'b412e570f8ee63416b2592483bd146a7f752e60760ae42d93aa8d7b647206a33', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA222.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA222.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA222', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA223', '2021-12-23 22:15:56', '63965f93e412a35aaaae63f29a97f2813084103f1e5639eb103907c3befc4aed', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA223.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA223.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA223', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA224', '2022-01-10 18:44:34', '350cd81db10555ac748b8deed05cd13d40e224e6d24052150a1b8c34f4770bcc', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA224.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA224.json', 'ac16d631-e811-5cd2-bb2b-8c6768c99457', '<202201101944.95009856355@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA224', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA225', '2022-01-10 18:44:34', '0c7ec7370f315cad53ce8cd60c70acc627cb0864d9c683bddbe4514490cc5e4c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA225.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA225.json', '713189b1-ae8f-5d99-a8ba-d3e72e56629f', '<202201101944.36940792005@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA225', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA226', '2022-01-10 18:48:50', 'd701f2f7366dd5ac8e853c376aeebecb1df8584c4756c45a85185ba03c8d53bb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA226.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA226.json', 'f6c91422-f60c-5191-a3f7-4e7477db73d4', '<202201101948.57837905563@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA226', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA227', '2022-01-10 18:48:50', 'f61410786e46d1e9e4f2009cbf85483bae1cc82f57af1fe2ac974c7bcf4d071e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA227.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA227.json', '468ca4c2-88f8-500e-8420-fe94092013e4', '<202201101948.38770259558@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA227', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA228', '2022-01-10 18:52:08', '138098c0a6f3e0802bcb068af345894b0c71845598f74c7db051e24941f22eac', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA228.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA228.json', '660b5ec5-556c-5f64-94d6-0493d7f2c945', '<202201101952.22152208862@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA228', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA229', '2022-01-10 18:52:08', '1be61a575373b8d3eaaf62b9ee1bb24b1b9a3147f67fe79d9fac5aeeab3e649c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA229.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA229.json', '23598df3-5603-5f0e-900f-d7a5d49da5c0', '<202201101952.17877125708@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA229', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA230', '2022-01-12 16:37:46', '382580286ec4d6bdd2e26943dbe460c7dd772cfaac4c56ce740b9955d1e168d0', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA230.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA230.json', '73b186c6-546f-50e6-83ca-dc9f524e9bb9', '<202201121737.41839288019@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA230', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA231', '2022-01-12 16:46:11', '4bbfb462422cbe8ddd8d68f5227c196a783a2be0ee7bd354a81fe5b67d1a2888', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA231.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA231.json', '038e0786-62c8-5324-a05a-5ddf6ad2aa25', '<202201121746.51723093840@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA231', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA232', '2022-01-12 17:01:50', '56f0d97762c177fb7cdf282630349da8a9beb7f2110c8322db8601534cac0f0a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA232.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA232.json', 'add3a683-23bb-553d-86ef-fcda287f5ddb', '<202201121801.39169234713@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA232', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA233', '2022-01-12 17:01:50', '2d45b6a6ec4b6b76ad52606de432446ce816bbea555a74c669743dc6f051bf7f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA233.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA233.json', '7ed09271-caef-526f-b7c6-c828c12aeaab', '<202201121801.45790680643@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA233', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA234', '2022-01-12 17:02:02', 'ff956e139aa1b4be2e05631a10592ec5672a9b1b39f1a7c55627a227c48dd6e4', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA234.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA234.json', '904a0288-f4c1-58bf-8320-58d1ff106897', '<202201121802.83706667005@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA234', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA235', '2022-01-12 17:02:02', 'b6f0cdfe7e53e1d94d1ee661e47d79ef8cf4f95847bc2a2b9b304a3ba7e6b91d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA235.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA235.json', '2ecda853-b5fc-59af-aa40-f20abe2e52df', '<202201121802.55155430290@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA235', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA236', '2022-01-12 20:26:39', '6b90dd5a2f13a62017f78e9bfe3b8b529c64bd9cda5b63368bbdf2d937bbbe8d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA236.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA236.json', '604dd633-b1fc-58b7-a713-8c6a8a394d6b', '<202201122126.17928841982@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA236', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA237', '2022-01-12 20:26:39', 'e31493e55bf52e6ae335ec01631752859d0ec48c3b62aaefd8604843d479e566', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA237.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA237.json', '321f2488-779e-5971-874b-7ed14c5bdb87', '<202201122126.41978002954@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA237', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA238', '2022-01-12 20:29:46', 'dc19804647d1468cc9988b87205dfffa993437c568a332e58d101e6968c1479f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA238.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA238.json', '89e2c332-afea-5da7-9c1f-996b9395876d', '<202201122129.89230164590@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA238', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA239', '2022-01-12 20:29:46', 'e04deaa0ff6d1be802ee737f1d53531a660b411e5edce1d4d42d0b96cefd2d2d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA239.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA239.json', '3c86ad88-72e6-5f11-be8d-f7d14e660bb4', '<202201122129.95891730435@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA239', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA240', '2022-01-12 20:51:54', '71e46e3868d5300e5f365aca3b78d1acee8b82c9033047612a57467e336bb0ee', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA240.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA240.json', '613e9765-56a0-542d-bc22-cd3c170f0a47', '<202201122151.20105050326@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA240', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA241', '2022-01-12 20:51:54', '3093d0aaddf118cc1c8218d25f1de6dafbc3dc1088b152998c234575852f5de4', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA241.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA241.json', '7a302318-de99-5acb-8b45-79419f299526', '<202201122152.88275141463@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA241', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA242', '2022-01-12 21:07:48', 'e231485aefd64e076d293b7f7c845dae82a41bdc21fcd19a39164b6b1c302b04', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA242.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA242.json', '66cee28e-5ab6-5b30-9b03-b8d71fddc6bc', '<202201122207.51300606739@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA242', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA243', '2022-01-12 21:07:48', 'de603d244f69a01e97ac48c2fc225855c34884cebf8ba0d8ca2d3e60759c380e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA243.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A45F8B2BA243.json', '2f9b29b5-e4e6-50ad-b2ea-73eca18af2a7', '<202201122207.20445351323@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA243', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA244', '2022-01-18 15:34:52', 'd7763ae750e9ec81f4eab2b4ea5f05e06d906044f2ca16dd0c50fc7b29d9c85d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A45F8B2BA244.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A45F8B2BA244.json', 'e590a8f1-f6b8-5006-891a-f29116db9e7c', '<202201181634.34340542158@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA244', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA245', '2022-01-18 15:34:52', '2bc4fa23974a1413ceabc671f2f8d128837653db56366e5df5a3c274a319386c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A45F8B2BA245.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A45F8B2BA245.json', 'd694bba8-b2f2-54be-9581-e1c85296bec6', '<202201181635.11794169501@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA245', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA246', '2022-01-18 18:52:00', 'cbb27d8af075ebe846c3f5c92b5544ed09b1d953d14257e0dabffd6441d17ec4', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A45F8B2BA246.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A45F8B2BA246.json', '8953da05-5908-583a-9362-80645790b94c', '<202201181952.64180650964@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA246', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA247', '2022-01-18 18:52:00', 'f8209873205caf504bb171f5748b12baad81a167f3b05c1c6c419ce6018b31b3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A45F8B2BA247.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A45F8B2BA247.json', '877426f5-643e-520e-ac41-7c946aa66a12', '<202201181952.90794141484@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA247', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA248', '2022-01-18 19:55:01', '20a2d9aaa3193062bc7cfdb96604e063734bdaa837ea494d21b18b1ce3b57b2c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A45F8B2BA248.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A45F8B2BA248.json', 'cd78db24-3306-527c-88dd-81452e5aef34', '<202201182055.19357647897@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA248', NULL, 'U', NULL, '2a21dde6-232a-4d36-9658-17de969c60a0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA249', '2022-01-18 19:55:01', 'fbe699ead812b25e2c8d2989ba208a4d83c4525c7c87a0b4a85dd9604dc328be', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A45F8B2BA249.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A45F8B2BA249.json', '6fab9314-ce8f-58cc-b331-c975d3d2dfab', '<202201182055.37057590885@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA249', NULL, 'U', NULL, '2a21dde6-232a-4d36-9658-17de969c60a0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA250', '2022-01-18 20:23:59', '968a47e64f5edc1519b0513fda79d38076c5ff837332f64b4710193c21cd9740', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A45F8B2BA250.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A45F8B2BA250.json', '9a9d29f7-5bca-52e4-9cd1-73967feeecae', '<202201182124.28445826002@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA250', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA251', '2022-01-18 20:23:59', '506efccb31e2cc3757c4ad6e4b840b042c181dc8a1dce93ae0a2c97020413824', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A45F8B2BA251.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A45F8B2BA251.json', '03e907af-5e3d-5969-a181-5dce7a180e28', '<202201182124.99188927309@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA251', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA252', '2022-01-24 21:27:58', '738137ad00c3de16ee6d4d905a0d721b3a7cb9d4c8d1e8c29cadb37f99ae1c62', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A45F8B2BA252.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A45F8B2BA252.json', '397c5cb8-b22f-5998-ac24-06d1ae0a8fe5', '<202201242228.25117931194@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA252', NULL, 'U', NULL, 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA253', '2022-01-24 21:27:58', '4beac930762950d3cc841fd8cec6907d7e3e00f17978196276e7d29d66fba3c5', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A45F8B2BA253.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A45F8B2BA253.json', '65e3b238-7ac9-5ac0-bf76-e85166ef9b1d', '<202201242228.68640805114@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA253', NULL, 'U', NULL, 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA254', '2022-02-01 16:10:01', '784fc2885a2dc8c0865eb99955e7b06b1980fe05afcac63a4c3c11712b44b420', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A45F8B2BA254.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A45F8B2BA254.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA254', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA255', '2022-02-01 16:10:01', '208ac5e4cb1e93d5e1d7ec38288e56de0256498eedc2c7b240917e9cb37b35e2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A45F8B2BA255.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A45F8B2BA255.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA255', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA256', '2022-02-01 16:25:50', 'bd99b4d21da0636fcd1f983ec6b7f805e559565038d083a4de8ae484df844371', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A45F8B2BA256.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A45F8B2BA256.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA256', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA257', '2022-02-01 16:25:50', '3504b60cdda421039da0b9d4d613f4a3d59e9c4e81168a31c4eb66c69c602fb3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A45F8B2BA257.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A45F8B2BA257.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA257', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA258', '2022-02-01 17:44:14', 'baa2ad9810ca833e71af663cad6247b9960f356eb7da6b638aa8580d1384fe6e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A45F8B2BA258.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A45F8B2BA258.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA258', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA259', '2022-02-01 17:44:14', '87ec75c6cf3f75082933290554cf3e058e807408bc18055abe66c8d884f4433d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A45F8B2BA259.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A45F8B2BA259.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA259', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA260', '2022-02-01 18:40:39', '21894fc8bc2fe87af97c3791eb393669dd047d53a8b6f3377ea2dad0c057026d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A45F8B2BA260.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A45F8B2BA260.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA260', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA261', '2022-02-01 18:40:39', '5a4bab46bbc9c542cd2760820b4dbbe0f6e58bcab8aff3138a66a4468b417d1f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A45F8B2BA261.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A45F8B2BA261.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA261', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA262', '2022-02-01 18:56:05', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A45F8B2BA262.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A45F8B2BA262.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA262', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA263', '2022-02-01 18:56:05', '454ee38ae5927d4fa76eaa2c06f84d5dd626bc9d06e4068350b73bc43644d0c3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A45F8B2BA263.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A45F8B2BA263.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA263', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA264', '2022-02-01 19:22:38', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A45F8B2BA264.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A45F8B2BA264.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA264', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA265', '2022-02-01 19:22:38', 'b4db5d547e6580487850b808f641619df6e2f9da44fb68373198fa8df492c55c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A45F8B2BA265.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A45F8B2BA265.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA265', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA266', '2022-02-01 19:59:54', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A45F8B2BA266.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A45F8B2BA266.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA266', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA267', '2022-02-01 19:59:54', '21c0baa0ffae50bb243bed6658e7585e65c3fed5218be7fff49b627a244f409f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A45F8B2BA267.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A45F8B2BA267.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA267', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0);
INSERT INTO `t_record_certificate` (`STATE`, `STAFF_ID`, `CV_ID`, `CODE`, `DATE`, `HASH`, `HASH_IPFS`, `HASH_ADDRESS`, `METARECORD_ID`, `PATH_BLOCKCHAIN_JSON_AWS`, `BLOCKCHAIN_FILE_PATH`, `SMS_ID`, `EMAIL_ID`, `DATE_EXPIRATION`, `TEMPLATE_ID`, `COUNT_BLOCKCERTS`, `COUNT_DOWNLOAD`, `COUNT_FACEBOOK`, `COUNT_TWITTER`, `COUNT_EMAIL`, `COUNT_WHATSAPP`, `COUNT_LINKEDIN`, `TYPE`, `STATUS`, `PATH_PDF_AZURE`, `PAGES`, `PRIVACY`, `PATH_IMAGE_AWS`, `CERTIFICATES_GENERATION_ID`, `DATE_REVOKED`, `ACC_ID_ISSUER`, `AUX`, `HAS_TOKEN`, `COUNT_VISITS`) VALUES
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA268', '2022-02-01 22:18:00', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A45F8B2BA268.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A45F8B2BA268.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA268', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA269', '2022-02-01 22:18:00', '82c34cb69876b65700edb182726836e60ac1e237a692c186f9cfe982f238783b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A45F8B2BA269.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A45F8B2BA269.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA269', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA270', '2022-02-01 22:34:04', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A45F8B2BA270.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A45F8B2BA270.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA270', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA271', '2022-02-01 22:34:04', '2f2219db11e4356312a24ac81f56351da76eac06ca76f948ec9ba7b25efd6088', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A45F8B2BA271.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A45F8B2BA271.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA271', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA272', '2022-02-01 22:45:09', '915a3699d923ca7818b86e7adc392603292aa886a082b66f6471d3ebecdd85f5', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A45F8B2BA272.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A45F8B2BA272.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA272', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA273', '2022-02-01 22:45:09', '20dca4c035ca1f22c2e528fbfcd750c9b65d609871e743fee47e706ee5b862a3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A45F8B2BA273.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A45F8B2BA273.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA273', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA274', '2022-02-02 00:21:56', 'c3c5d598e2eb3612bab0cb73bac44e2ca7df887d4f6d75b3f7f02f49e49ccbed', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A45F8B2BA274.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A45F8B2BA274.json', 'a5e2616c-d344-5aef-9544-3b1f03af5403', '<202202020122.38893417170@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA274', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '0709949c-b7c5-40da-860a-087c4e60ef96', 'A45F8B2BA275', '2022-02-02 00:21:56', '7067a4a7026054eb6d0f4983a94773a2d4ee5bbee8c3456f4c7e29e93ba028fb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A45F8B2BA275.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A45F8B2BA275.json', '22119ae6-11ce-5b11-8f26-c095c1252294', '<202202020122.38893417170@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A45F8B2BA275', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA001', '2021-12-21 02:00:56', '8465453549c83649cf066ca74bc9e8cdf846631da9bd453ac955c4071aa3bd11', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA001.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA001.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA001', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA002', '2021-12-21 02:00:56', '4ad23edcfd7fd30a8efd4956d90b74a658cfdb115630ceec0ef84df3e9a982b9', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA002.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA002.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA002', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA003', '2021-12-21 02:19:54', '544eb241b8227a3e98ee74795b7300e35a89fd171b1222f7afe33be3a45bbe97', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA003.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA003.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA003', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA004', '2021-12-21 02:19:54', '1d1cd5e3cf6103e0400b11a553d80e572d7e1489e0a28aa8f450fdb13df883b3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA004.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA004.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA004', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA005', '2021-12-21 20:23:46', '6f7018cc3b46eb0652e5ac7f60490f2ba0104e5c40e874b33c695b7d125bbf23', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA005.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA005.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA005', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA006', '2021-12-21 20:23:46', '8b6888ab2b5e0b4308135b99812b011587f680678c51c9574314db2ac04e60c5', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA006.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA006.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA006', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA201', '2021-12-21 20:33:35', '343b7e182de76cae732b379c2ae7fc6b39451ba6de841d38382ade7b7051cd99', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA201.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA201.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA201', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA202', '2021-12-21 20:33:35', '612a351c3cda2aea01e64d533d0dae9d7fda1b3965cb032dbb8c961b09f81e27', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA202.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA202.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA202', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA203', '2021-12-21 20:46:40', '4dc988a8c4975b876c39ae8989bd827acff66cb0904864c59696b869f4114546', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA203.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA203.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA203', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA204', '2021-12-21 20:46:40', '20f394328da87f946c30896421c289e238834f101d350783f27e2bdc6b2bda81', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA204.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA204.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA204', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA205', '2021-12-21 20:54:14', 'fdeb433b326ccf21cb0dcbe9429c85d73cc7380229de34ae678b3a5c8ced5045', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA205.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA205.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA205', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA206', '2021-12-21 20:54:14', 'd2df33d50d3cd22b2feb0590172c56afe1411d261b2a5cfba0d85f10becc5b09', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA206.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA206.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA206', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA207', '2021-12-21 22:13:03', 'bade725e1db4dcbca9e09b5566344e37351e1675b0b9a848e2aed10f79948552', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA207.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA207.json', '23c240d0-aea5-51ec-85a4-1aeebb075589', '<202112230712.87876367888@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA207', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA208', '2021-12-21 22:13:03', '485283645bf6a0e2e3c70cd182ea5c32a507c285fdc922e0707c0701170d5411', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA208.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA208.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA208', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA209', '2021-12-23 21:08:05', '74dfa6ad4c3a0d6b6e3f1eaca2281806ffba2cbc82b01fa97779fdc6c532d0c7', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA209.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA209.json', '2693994a-d9be-5a88-8e18-c3743ec38361', '<202112232208.28322285317@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA209', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA210', '2021-12-23 21:08:05', '27bb3ca9e093d8870f2b2629832000e1de9ec42d789f1b2af37a3305c737ed56', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA210.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA210.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA210', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA211', '2021-12-23 21:21:43', '8311cb98e4581e6c555bc9c20a7bf1fbf44cf9ad962e3c34b803ed07fac4bddb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA211.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA211.json', 'ff18c398-ed4e-5c14-a2e7-99a607ff014b', '<202112232221.35782259529@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA211', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA212', '2021-12-23 21:21:43', '08ef791a9553e8a04597059ae2a0fa4c489693aab8b164f6d00a3a6c9d497349', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA212.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA212.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA212', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA213', '2021-12-23 21:35:46', '31f7f4e011453d0aad26ecfd40e2358be099b1310b1a7b67d4721a118d2439d3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA213.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA213.json', '5bbce054-2924-5d90-bce6-ba6ac4d8b65d', '<202112232235.27725613162@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA213', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA214', '2021-12-23 21:35:46', 'fa256fc3fefcd71ad5e68abb13d073b682dfd567f406c60144dc2f3cf90dae68', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA214.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA214.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA214', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA215', '2021-12-23 21:45:46', '3fc6629682ccf8c7827fc530be9dbd7cd4198fcb2b1bed7d19b6559ca5d62269', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA215.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA215.json', '2cd474b8-8aa4-5844-9b7c-2e867af790c5', '<202112232245.31706585020@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA215', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA216', '2021-12-23 21:45:46', '79786dff54fc084b6945371d9eaca26c0f70696f5e9a3880ddf562eeae32d7d3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA216.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA216.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA216', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA217', '2021-12-23 21:57:26', '37520bfc60ec102331b8a136c8a77cd9670e003b4156d88732f36e05de00805e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA217.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA217.json', '23d2b582-67b6-5ce2-99ce-efbc94a6da46', '<202112232257.22296987440@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA217', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA218', '2021-12-23 21:57:26', '9d3915ab01f108e2006c55b39468ad79507e7589bbea28fac7ffafda098aa6ef', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA218.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA218.json', '3e94394c-d870-5958-ba16-63722b60bbfe', '<202112232257.17430469337@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA218', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA219', '2021-12-23 22:09:25', 'edf695bdf139f16cf355d8661b46ca09d6aede7d1b89a2ad132c7a5b76eac59f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA219.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA219.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA219', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA220', '2021-12-23 22:09:25', '12703aa9d6499f285277edbb9a7d2e9736f08ba7adb72170587bf73e1c2cf943', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA220.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA220.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA220', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA221', '2021-12-23 22:16:00', 'abc5beff0952b7dc1e428a20bb26403c6c5c88eefea21b79515659f91170d71d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA221.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA221.json', NULL, NULL, NULL, '26910c13-ceaf-47d8-8af3-903503ce0df7', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA221', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA222', '2021-12-23 22:16:00', 'e79a2d0176fe966508469798fa1e4f3098f3ab70f041b5ab0a0767ac2b31b95b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA222.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA222.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA222', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA223', '2021-12-23 22:16:00', '3e7eebfca41fff92e03d5428adc56ea346bc9d3da6133f3a9c8dff3d20143589', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA223.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA223.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA223', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA224', '2022-01-10 18:44:32', '5212340ca85961493967a8d9183bccfd74fe25e69415b3b868c703e046f9faf0', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA224.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA224.json', '2e08b1cc-071c-52ca-809a-eb9a87cbace2', '<202201101944.75918999608@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA224', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA225', '2022-01-10 18:44:32', 'e4942919b876a9861e16345e2a8d1601fa1a55af437395dd5fd7a23a06a599b2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA225.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA225.json', 'd5a42c4d-04f8-58ac-80d7-761b842fdaa4', '<202201101944.65968975793@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA225', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA226', '2022-01-10 18:48:44', 'a82c4ed69788daaf402bc347a6ab3c2e9a03949a6e129c7f43e0bbfcc69a5dcc', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA226.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA226.json', '0b62ad49-4819-5a6e-ab12-f71fc9cb006d', '<202201101948.23944520349@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA226', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA227', '2022-01-10 18:48:44', '44f87d97ec2fdd35447358c7394282927e2029112f99ba6b421ea97a8efef278', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA227.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA227.json', '820b1b4e-2506-57ea-a3df-4118a4d4964b', '<202201101948.15950023314@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA227', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA228', '2022-01-10 18:52:06', '1489c9d7ab64e761eaf93df3bce50be3601a9d8a78ba6d1869ea739a78e57986', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA228.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA228.json', 'dc9f8a41-a97d-5799-a106-d0172be11a3e', '<202201101952.44415569204@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA228', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA229', '2022-01-10 18:52:06', '88df3a5d12b569dcaa18fd815098b1225abba98a2bf7ed771cd437bbcc2f4ee3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA229.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA229.json', 'c9763eb7-e063-50b5-8800-64e162fec431', '<202201101952.77460170098@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA229', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA230', '2022-01-12 16:37:44', 'a5e4912c276d27be549c5beac10a15257722f2a2f58c584079afc32ad9517f7b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA230.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA230.json', 'a1d02530-a558-5866-b769-7f69a3478c57', '<202201121737.22315125541@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA230', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA231', '2022-01-12 16:46:10', '755d0b187dfc02df585780f1bb2be0a1038ec003d1ea94aa3ef8278e51e5b137', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA231.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA231.json', 'd79f4d75-b42c-5f82-b0b2-172cbc3555be', '<202201121746.72019932348@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA231', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA232', '2022-01-12 17:01:49', '2b3adad2ce9f6f2820e64335bb4e1f845a5bb788dbf6e78bd9b39d679ffa435d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA232.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA232.json', '94658ca9-903e-563d-9368-d6f09bf4dedb', '<202201121802.71374798774@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA232', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA233', '2022-01-12 17:01:49', 'd38260e86a2fdec8c93d6216fa00e020f4996007a9de58f3d5068471845b8c39', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA233.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA233.json', '2a0692f6-f40f-5b04-9d47-c8afffc5aa43', '<202201121802.27177634252@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA233', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA234', '2022-01-12 17:02:26', '0d0081501694234f2d9e36e0efc31529ce8e819bd7eeb3c863284e34afc650ac', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA234.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA234.json', 'bbfb069f-9113-5720-ae6f-5cc69afab04d', '<202201121802.43842737175@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA234', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA235', '2022-01-12 17:02:26', '7b3af836b2c446e176e3ca7f2b9daa1a309548b7353320025a45b09c854ebddb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA235.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA235.json', '4134fb0a-b4e1-5950-b8e3-a153bf0c1ad8', '<202201121802.86789519686@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA235', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA236', '2022-01-12 20:26:37', '34e29c403671ad70474a7424db9198b84fff1227a3db1edd02dafd90d342a129', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA236.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA236.json', '882ced4a-ad9a-563b-aa13-b713965eb9c4', '<202201122126.76297091285@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA236', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA237', '2022-01-12 20:26:37', 'f1e4fb4a9583bd5b8422198d55cc643a4db261400b0f1a6e84f78f9f46b9bbd9', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA237.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA237.json', '5ab95568-70e2-5eaa-8d5d-0f314b2749c9', '<202201122126.15422341184@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA237', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA238', '2022-01-12 20:29:43', 'e4762d4d63377ec0a9dd4094bc4aa38bd0a017a538b034c155616ef3ee1270d6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA238.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA238.json', '56e7175b-6035-5c6c-8a4f-4d025c4bd642', '<202201122129.72351507626@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA238', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA239', '2022-01-12 20:29:43', '2d8708fe07f055475070684f74ba43e01db09113e5a0207915590d03afd10ad7', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA239.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA239.json', '4fd31f09-66e0-5c3e-8e6f-45505a9ffc97', '<202201122129.65660280088@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA239', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA240', '2022-01-12 20:51:53', '4fb8cad8861f506e36e1eaf8bca86149d7fb84aea440eaf7a8aac5b97c755a27', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA240.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA240.json', '0123068c-3d31-500c-8e62-5cd57c9fed4d', '<202201122151.10463618094@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA240', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA241', '2022-01-12 20:51:53', 'c78d83059d8b7d62cec1bd57411bab027d6ae98f3d004e98d98bf2898e72cbb4', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA241.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA241.json', 'd0f4678b-16d6-559e-9e5c-3dd25779755b', '<202201122151.80584489938@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA241', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA242', '2022-01-12 21:07:49', '0f402a69e89e0d27f70eddb179ae917bd996b6b2abd341002b32c98ca9040759', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA242.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA242.json', 'b6f1da27-7803-5ca6-aff1-807e3d6fc954', '<202201122207.33930999597@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA242', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA243', '2022-01-12 21:07:49', '19a85c4123a7643d09ebd9249b30156ea36b13d64a6046415d01c519d707c676', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA243.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A4D88C5BA243.json', '51155671-60a8-5511-a655-0c2825c428a1', '<202201122207.54944539740@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA243', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA244', '2022-01-18 15:34:52', 'e8ca722860afdccae7cc5b22a9a273f522b82a49dcb5ae54875d7e799784eddb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A4D88C5BA244.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A4D88C5BA244.json', '692f603b-9b49-53c3-8f7f-3a5b7b2aa9ab', '<202201181634.29672493302@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA244', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA245', '2022-01-18 15:34:52', '4c95ed26d3b6b09671c72bc42980c0b45e20b51f6a5b725a48d739fc25f45074', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A4D88C5BA245.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A4D88C5BA245.json', 'f9d4da1b-0322-59c2-9e49-807be3467d21', '<202201181635.12785517711@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA245', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA246', '2022-01-18 18:51:59', '8f897a4a198506804c76d9af96baac279f7bee40804a6a5cf93d897187771042', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A4D88C5BA246.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A4D88C5BA246.json', '9a551328-9b2d-52d7-acdd-494995ba71b3', '<202201181952.39952761082@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA246', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA247', '2022-01-18 18:51:59', '13600766efca818b23d9e03cb414baffbbdab71ac23dc2dcadeafe20f830d7b0', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A4D88C5BA247.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A4D88C5BA247.json', '194989a2-52df-56c9-a5ce-d3c35c474cca', '<202201181952.87848525269@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA247', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA248', '2022-01-18 19:55:00', 'ba616d3c6bd15fe245132227c60e0e9eb12b8f06193a1aa3a5c713094bd67320', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A4D88C5BA248.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A4D88C5BA248.json', '2472a169-529a-5b48-b89a-fb084fc65a85', '<202201182055.49616844941@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA248', NULL, 'U', NULL, '2a21dde6-232a-4d36-9658-17de969c60a0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA249', '2022-01-18 19:55:00', 'fd1c219789d28fe4dfb45f206d22adcaa5bec155c4c8bb0cf2e45716e24f335e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A4D88C5BA249.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A4D88C5BA249.json', '40a8833d-9b24-5410-b653-d95c86784414', '<202201182055.37938938869@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA249', NULL, 'U', NULL, '2a21dde6-232a-4d36-9658-17de969c60a0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA250', '2022-01-18 20:23:50', '78484c27e9a049600988300a76db0a263d6d56ff3d8488fc2d503bde3216af4e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A4D88C5BA250.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A4D88C5BA250.json', '83d2a0d2-15cb-5ea8-95af-fab331d69b06', '<202201182123.12503131740@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA250', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA251', '2022-01-18 20:23:50', '96cecd29e6d963d0916622b8f095d50ff955167485fdf710e2ba1533e5c46d8f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A4D88C5BA251.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A4D88C5BA251.json', 'f0fbe8ad-2c38-51fc-8fab-b2cc0826ed03', '<202201182123.65125388824@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA251', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA252', '2022-01-24 21:27:58', 'b3b3226b7d60a8c080d62714bd9dd342b0b4404eccce7c044aa7a60545ca62a9', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A4D88C5BA252.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A4D88C5BA252.json', '5afe9592-795d-521d-9307-cffb657a7e81', '<202201242228.50216710392@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA252', NULL, 'U', NULL, 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA253', '2022-01-24 21:27:58', '8efb69ac2d38c4bf18396a051140d4c207e82cae859183dd7bc5fdd82ec23d9e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A4D88C5BA253.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A4D88C5BA253.json', '23fa0bc8-76a3-50cb-8bce-51a16a84f38b', '<202201242228.44117690657@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA253', NULL, 'U', NULL, 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA254', '2022-02-01 16:10:02', 'ec02d655561f1a3adb369fe059eb2c00e6189f73fab21f43d7b9f0d301bd93a4', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A4D88C5BA254.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A4D88C5BA254.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA254', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA255', '2022-02-01 16:10:02', '896cf9460e986160e886a3e935e7ced3e890b358047e1b44ae0061230f76400a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A4D88C5BA255.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A4D88C5BA255.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA255', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA256', '2022-02-01 16:25:52', '45165032e78cd7040affdf0bb7e550309d99536498b2b38b9f6f29273ea38e62', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A4D88C5BA256.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A4D88C5BA256.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA256', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0);
INSERT INTO `t_record_certificate` (`STATE`, `STAFF_ID`, `CV_ID`, `CODE`, `DATE`, `HASH`, `HASH_IPFS`, `HASH_ADDRESS`, `METARECORD_ID`, `PATH_BLOCKCHAIN_JSON_AWS`, `BLOCKCHAIN_FILE_PATH`, `SMS_ID`, `EMAIL_ID`, `DATE_EXPIRATION`, `TEMPLATE_ID`, `COUNT_BLOCKCERTS`, `COUNT_DOWNLOAD`, `COUNT_FACEBOOK`, `COUNT_TWITTER`, `COUNT_EMAIL`, `COUNT_WHATSAPP`, `COUNT_LINKEDIN`, `TYPE`, `STATUS`, `PATH_PDF_AZURE`, `PAGES`, `PRIVACY`, `PATH_IMAGE_AWS`, `CERTIFICATES_GENERATION_ID`, `DATE_REVOKED`, `ACC_ID_ISSUER`, `AUX`, `HAS_TOKEN`, `COUNT_VISITS`) VALUES
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA257', '2022-02-01 16:25:52', 'bace7161b01753ce295d3489e7bf797ebecbf7023ae825497de9d70d23baf512', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A4D88C5BA257.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A4D88C5BA257.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA257', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA258', '2022-02-01 17:44:14', '2472cf4e0292bbee5aa51acbb9abc7787f9a4e7c308cacd37a51abcf71493d61', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A4D88C5BA258.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A4D88C5BA258.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA258', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA259', '2022-02-01 17:44:14', '7bc535df7b22a4ef910515fdfbb2a4bbf7acc5863f55374e2153dd33b8dba3d5', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A4D88C5BA259.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A4D88C5BA259.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA259', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA260', '2022-02-01 18:40:41', '88f8c06a201aac3657c5de0b399fc091205db726e5428275cb3ddff65920d0e0', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A4D88C5BA260.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A4D88C5BA260.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA260', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA261', '2022-02-01 18:40:41', '23cdb6520cce5e04c863b09d4e14354ddc0a0a8c386021201e19fe9eaaa6976b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A4D88C5BA261.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A4D88C5BA261.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA261', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA262', '2022-02-01 18:56:04', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A4D88C5BA262.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A4D88C5BA262.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA262', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA263', '2022-02-01 18:56:04', '4069d8ac4790fc39bec79edfffcd6a563e8e0ce92f5369e7b1dd8d66136ab94b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A4D88C5BA263.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A4D88C5BA263.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA263', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA264', '2022-02-01 19:22:38', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A4D88C5BA264.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A4D88C5BA264.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA264', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA265', '2022-02-01 19:22:38', '0fed4efc8671cf1af43e122c8b7d3e7bb67c7152d4d41cab90cb12d34f23f6e2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A4D88C5BA265.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A4D88C5BA265.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA265', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA266', '2022-02-01 19:59:58', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A4D88C5BA266.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A4D88C5BA266.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA266', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA267', '2022-02-01 19:59:58', 'afcbac1e7731898cd00995b0baa3540bbb09a0219761a73c629a6b593b6537ef', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A4D88C5BA267.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A4D88C5BA267.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA267', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA268', '2022-02-01 22:17:58', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A4D88C5BA268.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A4D88C5BA268.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA268', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA269', '2022-02-01 22:17:58', 'fdea30d2c31af47407776beda389cebbf7debd3e158933d402b579344626fe92', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A4D88C5BA269.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A4D88C5BA269.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA269', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA270', '2022-02-01 22:34:04', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A4D88C5BA270.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A4D88C5BA270.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA270', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA271', '2022-02-01 22:34:04', '577ef5e3f23d00834feffd1cd90f50fdd6ab2506f07598674309fe06ee383b30', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A4D88C5BA271.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A4D88C5BA271.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA271', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA272', '2022-02-01 22:45:05', '629844d6a6de5bf51ee815ffff821db7bc753db2e6193613b571f87219d3143b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A4D88C5BA272.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A4D88C5BA272.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA272', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA273', '2022-02-01 22:45:05', '6a0ff9d401f6c21c126cafb6369658016f88e2ba1697c348ab36069ea96d7ce6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A4D88C5BA273.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A4D88C5BA273.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA273', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA274', '2022-02-02 00:21:55', '27a0a27890ed58ca08d50dfe5d0cb20d43e7bd11b10106c12fbd9c39ccef2604', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A4D88C5BA274.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A4D88C5BA274.json', '2befc19a-0111-5e61-ab5a-9be9d1fbaf1c', '<202202020122.15922012339@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA274', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '06313bf9-c47a-41c8-aed1-a900f185e02e', 'A4D88C5BA275', '2022-02-02 00:21:55', '382402d64d0817155b534513d9f0c6086ed42fe432b2d385b9257d0b5b76f787', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A4D88C5BA275.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A4D88C5BA275.json', '559698e7-ddd6-5c87-aec0-c2940d3cdf39', '<202202020122.15922012339@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A4D88C5BA275', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A001', '2021-12-21 02:00:56', 'ad210270141d6a551e328e5997412856e41c1bfd0ec258e0d8725879a031e323', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A001.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A001.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A001', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '04b2a22e-c037-418a-987b-64b28894ce06', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A002', '2021-12-21 02:00:56', '08bff5b4d192e08b8a6b9e698a57926901ac67f7a755aaa7b8913ffcee5ce1e2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A002.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A002.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A002', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '04b2a22e-c037-418a-987b-64b28894ce06', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A003', '2021-12-21 02:20:08', '179b2419a9eef74901dd34f644fc981159d652d20c0e506568a75ba12cfc6b18', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A003.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A003.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A003', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '04b2a22e-c037-418a-987b-64b28894ce06', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A004', '2021-12-21 02:20:08', '0ebf8dfee8093bc8b359bd036b31fece98469df483ed0a5b2ea78c833e5808c9', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A004.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A004.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A004', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '04b2a22e-c037-418a-987b-64b28894ce06', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A005', '2021-12-21 20:23:49', 'ccb8c3ddc886ec3cd51e0033796b1f923c6c330df075717fef604d71d743f9c3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A005.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A005.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A005', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A006', '2021-12-21 20:23:49', '9e8095f7f3de1e199f0ba80913c459e472af5ff01159ae72bca5ecc39a2e55ca', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A006.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A006.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A006', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A201', '2021-12-21 20:33:38', '25c36e82893e4947c4e9bd2232620e989d770afafae7507d64d2683a6e197c0b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A201.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A201.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A201', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A202', '2021-12-21 20:33:38', 'f0cb0aa8b17efaf04c70202861eb88c5f844ee9ad3243a309f897f00b6fca2bd', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A202.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A202.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A202', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A203', '2021-12-21 20:46:42', 'f83d8db55c2bd68abd614360477d05d862a9dfc99288859a46ab8a2a54d44edf', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A203.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A203.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A203', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A204', '2021-12-21 20:46:42', 'ff0cc38e6912c09c1199d3228b13f033c25962de9456709ccbf28cf8abd05e6a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A204.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A204.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A204', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A205', '2021-12-21 20:54:21', '7761e15db7d33a6748238cd968387277113ea7a0c12e6971128763e59bc753aa', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A205.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A205.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A205', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A206', '2021-12-21 20:54:21', '919e330281d15bc8a59be73c8804d5ea2f6ef74861341288aa4f9a7aa536b84d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A206.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A206.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A206', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A207', '2021-12-21 22:13:09', '3663eb6b3e7b3c1a98d4075d197aae65165e5697069343c9a8e70bda45d1d1bd', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A207.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A207.json', '76e2e215-471c-518e-b256-b82b52afbf2a', '<202112230713.60311041361@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A207', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A208', '2021-12-21 22:13:09', 'b46b9ba8ba831289c15f7fcd7d606428f2eaa2e9e54806b4059b8a9e3cf74edd', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A208.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A208.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A208', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A209', '2021-12-23 21:08:06', '0a1ca4535d71602976e89681b99c590ca9283e33e12a58e0d3039b7b8449cd42', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A209.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A209.json', '078b8f4b-66c4-5346-b332-d57581ba3f60', '<202112232208.34568550977@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A209', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A210', '2021-12-23 21:08:06', '16afba9ebdb584597834f5fddbae8ed35d18682abcfffa4ca8eb4ab1343b5d67', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A210.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A210.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A210', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A211', '2021-12-23 21:21:49', '51e80a8ea9bfef9ff470369bf049fbbaa0425708bec2dafa6348964702a5d081', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A211.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A211.json', 'e09e7aeb-f7c2-5b1a-9071-20d51d75ed5e', '<202112232221.79342626875@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A211', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A212', '2021-12-23 21:21:49', '278abb41ceb2cad1ebbf275282dc5dd8547f4161f2d967a8a6808c12e891e30d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A212.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A212.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A212', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A213', '2021-12-23 21:35:51', '5b6cfbcfdcce9fdc3e86a8addc372073c0002102dd47be724ca66ffa70919555', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A213.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A213.json', '4ef8c969-6206-5926-a149-93578c063c6a', '<202112232236.70610994233@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A213', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A214', '2021-12-23 21:35:51', 'dd37d99eb377690c50e2e08bc85975a3ea4ca5523255c57c6229c6b3d26e9cf6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A214.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A214.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A214', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A215', '2021-12-23 21:45:53', 'a06f0fcca1501fc7fec8323404b965e5612ba6549717aacfccb0e136e9bbccf6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A215.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A215.json', 'effc5069-2ea3-5491-9a05-0a57def8c16c', '<202112232246.83251945635@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A215', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A216', '2021-12-23 21:45:53', '2391bf9a6eb06887c3bc9c79a190cfb6c67dbc0c748e50d3d1df8f6ea637a74f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A216.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A216.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A216', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A217', '2021-12-23 21:57:38', 'fe92179d47366dd81fd1f81a3cf75a563c7a6e085c3101f8697460c409d02a04', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A217.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A217.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A217', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A218', '2021-12-23 21:57:38', 'c17db81405bbc1183f700e5f2dca14835a6b7a99954d791205978ba1513f453a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A218.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A218.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A218', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A219', '2021-12-23 22:09:27', 'c100132be68015c79366fa370f5d47bc833a584007ca010d593c01b9b50912ca', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A219.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A219.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A219', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A220', '2021-12-23 22:09:27', 'c316b94be326ae60eb3ca8362eb48d240674b10a28ab7174511abb189c526634', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A220.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A220.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A220', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A221', '2021-12-23 22:16:01', '6605a48e64faabeaee58bf867a10f26f42d27f1187320af4735c853fb072ab68', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A221.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A221.json', NULL, NULL, NULL, '26910c13-ceaf-47d8-8af3-903503ce0df7', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A221', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A222', '2021-12-23 22:16:01', '6b8bcca998cb19dda4be8d995b2fb07b0e1b22f4d7100b2b61c7ea4ea61d352c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A222.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A222.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A222', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A223', '2021-12-23 22:16:01', '328d73631ce14003e20f0c03b5277c4362192c4f31d1eddbdbe0f12c1ebfaf5e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A223.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A223.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A223', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A224', '2022-01-10 18:44:39', 'dfcea5abbfc7fc85cc0322a8371afc5f179ed3a25c167d25f99ae5f7beb885fd', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A224.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A224.json', 'eeb38a13-6999-565b-a464-d045e945a033', '<202201101944.61111057147@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A224', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A225', '2022-01-10 18:44:39', '258aa0369e43a3e7d7f466148d40296916f3a27ad82c8887b27ed9940025e4b8', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A225.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A225.json', '2e84e9ad-0498-57fb-935b-b3fb84453d3d', '<202201101944.67903957346@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A225', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A226', '2022-01-10 18:48:51', '02eab40cee361dd9d76c327de0308ffabf97dcd2971e3406fe69f504ffe07aa6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A226.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A226.json', 'f8ff1084-ec0c-5e39-8c5b-4ad26dd6ecb3', '<202201101948.53653650728@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A226', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A227', '2022-01-10 18:48:51', '6338a834c036150ab24bc5ec012689da229f03dbd1d1ce8afe15a60bd5f9f956', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A227.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A227.json', 'b75bd35d-64e1-58d7-ae36-890be53b4f1c', '<202201101948.70903770727@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A227', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A228', '2022-01-12 16:37:47', '8a98022f95a8599e1d43e4c8b197cef5d87d689d388af27772b0a653aebefdbc', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A228.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A228.json', 'da9f7faa-f426-5c31-b994-25f3f2040dcc', '<202201121737.85020707792@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A228', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A229', '2022-01-12 16:46:13', '6a461e0370c413da15c067f21842ce2ba9ff88dc1ee81d4fd6e06ea0d43a38e0', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A229.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A229.json', '0b973927-a6bd-5175-b046-637eaea72769', '<202201121746.58415898667@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A229', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A230', '2022-01-12 17:01:44', '8864645a17e64f9c21ea45007b43fbd927f784341a13e61dcd541151265daa30', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A230.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A230.json', '7451011f-b0ea-5420-a7c0-5b46bb2a782b', '<202201121801.40614403571@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A230', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A231', '2022-01-12 17:01:44', '32b9b4ba31ceb50aff17c510961fe91ac701bf90718e6046cdb1a1b63ecd57a6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A231.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A231.json', '3667c26c-2280-529e-bc91-98352941f933', '<202201121801.72277067627@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A231', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A232', '2022-01-12 17:01:53', 'bd459f1cf4235e1bf998c32c993dab107632725b6dcb5510aab002cb1589b3c9', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A232.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A232.json', '325bbe20-acd1-5f86-9194-e479a716e939', '<202201121801.17057488716@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A232', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A233', '2022-01-12 17:01:53', 'bdd8e202c0d634f2f2ef38f3aa42981dc38a318484fba8fd3ee5d94ec3f91ec3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A233.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A233.json', '7a8baac3-a391-5813-81dd-f09aa8593aac', '<202201121802.88459929621@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A233', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A234', '2022-01-12 20:26:42', 'c915f8d60cb8d393ceab9a15d9ab6aa14578b7fffa8617e26e172d1ac83258a1', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A234.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A234.json', '9568f578-e9d1-5c00-a134-af21d2198079', '<202201122126.44400007152@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A234', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A235', '2022-01-12 20:26:42', 'f85e3197cde5e99de930cc24bd0b7009b551d15df8f0c774b6297d06d061dc11', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A235.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A235.json', 'e2f16768-df16-51f4-bea4-3d31e4df9ec9', '<202201122126.86595807964@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A235', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A236', '2022-01-12 20:29:55', '6bd199c8ae81d8a94e56c038dd614892933c0ffb0bad5ce320f9ecd6b9694c3e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A236.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A236.json', 'a994ac91-acac-5390-a21e-f6c890256e50', '<202201122130.52586244772@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A236', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A237', '2022-01-12 20:29:55', '60b45c80b5162830ede239833ad6d86a6358ff0c08ebf0aebc462c065ce4974c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A237.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A237.json', 'f8c12d8f-c2f8-5b9f-ae6a-77d6fe72c81e', '<202201122130.86747525540@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A237', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A238', '2022-01-12 20:51:54', '9153ffc8f6560217d2109af9aa3227a68af1ef41903b23b26857a7d3672d752c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A238.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A238.json', 'f5acd4a1-4555-5674-8c28-8ef804e47ebd', '<202201122152.51951220063@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A238', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A239', '2022-01-12 20:51:54', '20583d5a80ee5cf5ffadce2dfc17304bc2026ce358916a8192efdd55c1892e44', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A239.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A239.json', 'd2a739af-de94-5ea6-8091-63f69f25d2e5', '<202201122152.78976345308@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A239', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A240', '2022-01-12 21:07:54', '1faec1eddd1c788bc0078c510b024c15d5ceb30fbec64212d4b8d83248c7aa62', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A240.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A240.json', 'dba85053-b44e-51c2-a8da-0a0af121516b', '<202201122207.91446505057@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A240', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A241', '2022-01-12 21:07:54', 'e41f6202e986d9b3b1349a66689f46646e0bfe4bac288316600f8ebc2e0ceae2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A241.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5628813A241.json', 'a0222463-b1c3-529c-b1ae-7e3af4b3c816', '<202201122208.20232034815@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A241', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A242', '2022-01-18 15:34:53', 'e66158ac7642f205365229a989a37eb6fdbf1e2f61cead25b6887ae3f781bae2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A5628813A242.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A5628813A242.json', '92a53808-9b06-5fbb-a245-62687b60f519', '<202201181635.23804677034@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A242', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A243', '2022-01-18 15:34:53', '8181a2ebf4860d7a5d7f1002f1496e766b6a96c12dacc68ec323884af899bcc6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A5628813A243.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A5628813A243.json', '811dec13-41e1-5a75-a029-b673a1872ccc', '<202201181635.82653841874@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A243', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A244', '2022-01-18 18:52:01', 'de61037b64d38ebfb784567b9f1f1d47abf28ae2e1681482ae7f629d88774259', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A5628813A244.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A5628813A244.json', '796462d3-c080-5ed2-bc4b-38b2ce19cc30', '<202201181952.91552484082@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A244', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A245', '2022-01-18 18:52:01', '965ad9f9abf941a2b8d36731220e7d0b7d5a5ac2993d6c4c84316a35b459dec1', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A5628813A245.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A5628813A245.json', 'c65495e0-4060-5349-adf5-cf814ef9c132', '<202201181952.58856965926@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A245', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A246', '2022-01-18 19:55:12', 'd11bb58d0322f1416a615a7acce207c2a6eff45fb383e3fb3e2eb9e92f7aae07', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A5628813A246.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A5628813A246.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A246', NULL, 'U', NULL, '2a21dde6-232a-4d36-9658-17de969c60a0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0);
INSERT INTO `t_record_certificate` (`STATE`, `STAFF_ID`, `CV_ID`, `CODE`, `DATE`, `HASH`, `HASH_IPFS`, `HASH_ADDRESS`, `METARECORD_ID`, `PATH_BLOCKCHAIN_JSON_AWS`, `BLOCKCHAIN_FILE_PATH`, `SMS_ID`, `EMAIL_ID`, `DATE_EXPIRATION`, `TEMPLATE_ID`, `COUNT_BLOCKCERTS`, `COUNT_DOWNLOAD`, `COUNT_FACEBOOK`, `COUNT_TWITTER`, `COUNT_EMAIL`, `COUNT_WHATSAPP`, `COUNT_LINKEDIN`, `TYPE`, `STATUS`, `PATH_PDF_AZURE`, `PAGES`, `PRIVACY`, `PATH_IMAGE_AWS`, `CERTIFICATES_GENERATION_ID`, `DATE_REVOKED`, `ACC_ID_ISSUER`, `AUX`, `HAS_TOKEN`, `COUNT_VISITS`) VALUES
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A247', '2022-01-18 19:55:12', 'f4da443e255b65edbb01ae5bc4d8235fbe085ce599956841f420a61f37a5c64d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A5628813A247.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A5628813A247.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A247', NULL, 'U', NULL, '2a21dde6-232a-4d36-9658-17de969c60a0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A248', '2022-01-18 20:24:03', '13ee011253bd951fbd8f464927f57f56e01e107ccfc230b628c582d0ddd69dd6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A5628813A248.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A5628813A248.json', '6a99cf57-f327-5ff2-98e8-9536d70d3e6c', '<202201182124.55240305203@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A248', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A249', '2022-01-18 20:24:03', '538bc29a7c50130262c70801cfc771c3304bd16600373b8abc280c72a794028b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A5628813A249.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A5628813A249.json', '3365f1fe-6173-5d34-affe-ab9f4558a6ad', '<202201182124.12059195692@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A249', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A250', '2022-01-24 21:28:09', 'a5498885fcb4411bc3ad3eaad6cf74651e499fc8a0e1ae17490123e5eaabf85e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A5628813A250.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A5628813A250.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A250', NULL, 'U', NULL, 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A251', '2022-01-24 21:28:09', 'c6c690f4d321b7455d579a0a5575c5d229d7d5a8a3cedce331ee6330f36781fb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A5628813A251.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A5628813A251.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A251', NULL, 'U', NULL, 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A252', '2022-02-01 16:10:04', '27b2d3ac5c455a62e63238c2b2d3be98176a7a0597ac8ad854bc0d59f6722ecb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A5628813A252.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A5628813A252.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A252', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A253', '2022-02-01 16:10:04', '51ea0cb34c4579fbc07552208d3c02e720d071a117d84b0cd77057fcfb5ee2fe', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A5628813A253.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A5628813A253.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A253', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A254', '2022-02-01 16:25:52', 'aefc4b6696e7671ce63858cffb2aa326ce3abbf8938a2a06c4f48a820e0ca6b8', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A5628813A254.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A5628813A254.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A254', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A255', '2022-02-01 16:25:52', 'a08983d13d7a67a69f3953fc217f2c0e211d00d0120509f96e8556a13cc9ebdb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A5628813A255.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A5628813A255.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A255', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A256', '2022-02-01 17:44:14', 'd0f4d6f00366cd52bd41764160fb9c079fe795f341ac99afa7e2edec82e48663', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A5628813A256.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A5628813A256.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A256', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A257', '2022-02-01 17:44:14', 'cb24aa0566c9565ed1d1b417d800d04e8b2954253e3c00ea1f1d3fb966feba60', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A5628813A257.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A5628813A257.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A257', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A258', '2022-02-01 18:40:36', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A5628813A258.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A5628813A258.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A258', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A259', '2022-02-01 18:40:36', '17bfa0cc5d92ab8131b8d3f5408e8b93c0ea1f74d3c4b9eb3f9792006202479f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A5628813A259.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A5628813A259.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A259', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A260', '2022-02-01 18:56:07', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A5628813A260.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A5628813A260.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A260', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A261', '2022-02-01 18:56:07', '90a2a67a44b0c885ba96d4919b57fcb679a5ccd1c0f4e219d2f442aff8c484ce', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A5628813A261.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A5628813A261.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A261', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A262', '2022-02-01 19:22:39', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A5628813A262.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A5628813A262.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A262', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A263', '2022-02-01 19:22:39', '5e92d3fe3e290de9fe5d0edc140bf3a9ec30b16531f3e8076e953e6eac48c813', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A5628813A263.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A5628813A263.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A263', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A264', '2022-02-01 19:59:54', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A5628813A264.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A5628813A264.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A264', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A265', '2022-02-01 19:59:54', '1ab7cdeba1be58f284bc7ca82398e15dcc95b7427578fadd15dfb5096f74d81d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A5628813A265.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A5628813A265.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A265', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A266', '2022-02-01 22:18:12', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A5628813A266.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A5628813A266.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A266', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A267', '2022-02-01 22:18:12', '0346a55d5af3ca81c40dfbd8a648c5893651bde5e0cebbc6be3b3f1f8508f658', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A5628813A267.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A5628813A267.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A267', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A268', '2022-02-01 22:34:05', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A5628813A268.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A5628813A268.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A268', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A269', '2022-02-01 22:34:05', '2ff4e03658f9c6ae419abe1d89b123cb1df866e0c7ff7cf2bb4c8194e427e8fa', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A5628813A269.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A5628813A269.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A269', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A270', '2022-02-01 22:45:09', 'ba7eead0f9ead36911113a28f907fe029615a006f5077602ae993beacd47a702', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A5628813A270.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A5628813A270.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A270', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A271', '2022-02-01 22:45:09', 'a88bb13fa0d040307967f3b94a901cb5c7fd625f281a47b21cb9d641196fa8e8', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A5628813A271.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A5628813A271.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A271', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A272', '2022-02-02 00:21:57', '43c23dd0d2c32c790efd4f4d6045eb473a03e9ad4abaf449b97e62b265d77e71', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A5628813A272.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A5628813A272.json', '8557fa9c-1687-5400-9895-a0efc66c4b80', '<202202020122.44501248083@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A272', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', 'f25da24f-994a-4411-9b03-62362914d0f0', 'A5628813A273', '2022-02-02 00:21:57', 'c66d4847051134021171d294b385185a953ad6c090bf4558435f32c60aa807b2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A5628813A273.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A5628813A273.json', '650e03ec-3035-5035-b03f-599fe0ded12d', '<202202020122.44501248083@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5628813A273', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A001', '2021-12-21 02:01:03', '40b1a7fd64e7478eae807c3f539a91c622559bd19c8dc772a3aaf0b6cd38b4ca', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A001.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A001.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A001', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '83c21021-bc2a-4c29-856e-e17da7bd6d5d', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A002', '2021-12-21 02:01:03', '1bf6cb4677e8ba2830fdd75f27ef28f9f7491752942f9e8a7142c8320c1a77b1', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A002.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A002.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A002', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '83c21021-bc2a-4c29-856e-e17da7bd6d5d', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A003', '2021-12-21 20:23:48', '343e7c12e45385fdc177fb01c72ced200a4bb761addcac7f1e975ebe2a616416', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A003.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A003.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A003', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A004', '2021-12-21 20:23:48', '79a2d1865a159aeba04048ac5b03c911b4e4e2edb90d89920ba3522eb54256bd', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A004.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A004.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A004', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A201', '2021-12-21 20:33:40', '4afd2e24a80fd572be6b64c15c8d24da38d594a0fd9a5bc7ee11efe7e7c0cbcb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A201.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A201.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A201', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A202', '2021-12-21 20:33:40', 'd35225a8f0056fece8fce9ea6efaf05a3602cce665e300a0022f7c4fe6c5aeda', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A202.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A202.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A202', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A203', '2021-12-21 20:46:42', '945e2fb9e64de849d2938cd14bbc754f0ab37d0e9cf4f103f1f458d77b4be7ce', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A203.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A203.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A203', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A204', '2021-12-21 20:46:42', '15f50c6c2d2b6e7ec8f8a086fda93efb17114a3f67e6a7c52c3b2b2e135e9106', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A204.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A204.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A204', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A205', '2021-12-21 20:54:21', '44759b87608973e8d4bf4d1a9a81cdb2998ac1465de6fc6c97431ab4a3ca7ca7', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A205.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A205.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A205', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A206', '2021-12-21 20:54:21', 'c41732d6217b57c8653f5506018081595c18ea5eb4f85e34e55254e8ffae414e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A206.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A206.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A206', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A207', '2021-12-21 22:13:07', 'a84fc55b4536bb32ef6f2f5b367dbac8c69648e25323e4cf18ff5cbdf95b3ea2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A207.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A207.json', '6e5fcaa5-2910-5013-8293-909b3ca38a95', '<202112230713.38697883642@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A207', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A208', '2021-12-21 22:13:07', '3f76e0a0e75ba23bb7ad9d27418d7d6b87da81d74d156411e08b270c321f5f1b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A208.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A208.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A208', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A209', '2021-12-23 21:08:05', '4c416aa56b04d2ffc0d6e7cb72c0dba96ca485ff69172b278ca792f01491ecda', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A209.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A209.json', '81366531-d981-566c-abd4-3f0f3efeee37', '<202112232208.30796572073@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A209', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A210', '2021-12-23 21:08:05', 'd30849f7776c148ba80775dce2e5c83cfc753320b3c5d06c1f6f2576c837b455', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A210.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A210.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A210', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A211', '2021-12-23 21:21:45', '815977c829310b45edc172f6f72e61723d7dce052d7ea112091f56002af502d8', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A211.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A211.json', 'eab2a29c-d586-570c-9f08-f8a23f347f85', '<202112232221.63520483167@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A211', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A212', '2021-12-23 21:21:45', 'f66ecebd6f2c170590ca973279c7f4b2edb6de1eb8231775fab6c245b5b98c1f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A212.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A212.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A212', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A213', '2021-12-23 21:35:51', '2f916b337bbb724f33fd24bc0100980e441dc8a3a9f64dec41734955a327b5b2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A213.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A213.json', 'b284ee87-5d6b-565a-b510-b4b9b36b9eba', '<202112232236.13592185550@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A213', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A214', '2021-12-23 21:35:51', '35b23df283fcb254e59dc0b17b79ba678186ceef38de7dd11de02ee147737821', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A214.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A214.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A214', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A215', '2021-12-23 21:45:53', '6b8cdf9a4a77d6f6f7cfb9336bdeba97c396d119aa39d1a3ca244bd63c5c6519', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A215.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A215.json', '15d070ed-5bbf-5223-85a3-2ad3abe69ef9', '<202112232246.86380715194@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A215', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A216', '2021-12-23 21:45:53', '5f5d7a3fb4d0191d7fa279440f051c891a3be97ba1541b4d671a51af34bc767e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A216.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A216.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A216', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A217', '2021-12-23 22:09:27', 'edf00bbd41993f5c042c3ede4a1214173bbf696ecff58f53bd2e489cf258f75e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A217.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A217.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A217', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A218', '2021-12-23 22:09:27', '37f02964f22a343ecdf762d7e5a903a32ac18c5d4f3fadc559966b900b139efc', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A218.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A218.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A218', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A219', '2021-12-23 22:16:26', '7c290880e5aa9cc30c034e0bb4cf05312b557a06536b9c816aca7b113f530c9c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A219.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A219.json', NULL, NULL, NULL, '26910c13-ceaf-47d8-8af3-903503ce0df7', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A219', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A220', '2021-12-23 22:16:26', 'ebfb2911c4cb40b99f2892876b40590a913f082cb6a6af0212dd07bf1375536e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A220.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A220.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A220', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A221', '2021-12-23 22:16:26', 'dac5591e2bf82474baedd51798c8c811999b33f972f5779d32bd10ab7b9c17ed', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A221.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A221.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A221', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A222', '2022-01-10 18:44:35', 'e015989ab708d47976db702f29bf7ab6dc31a4d718ace53a368321606fa1689a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A222.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A222.json', '2086bfc6-644c-5960-8a27-e590e49543c8', '<202201101944.24524194394@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A222', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A223', '2022-01-10 18:44:35', 'fd5b3136c39ed055c1eb2b88f95128935009dfed38168619ce8184468978f2f8', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A223.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A223.json', '533b77bd-af22-5e02-b880-2deb2ffb220b', '<202201101944.56951045852@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A223', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A224', '2022-01-10 18:48:51', '18a5f3dc0e32048ea121399e067767d47280c558324604744245e5325aee5c2e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A224.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A224.json', 'c0d126e8-dd29-5efc-aabf-7cbe5cf06393', '<202201101948.58634265673@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A224', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A225', '2022-01-10 18:48:51', 'ecd9e7dd7780c91b2be7a7c2efe7818d17affaa9d08de1ed0a6a9ff893b65f08', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A225.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A225.json', '5b3584ad-7481-542a-b64d-defbf55b04a8', '<202201101948.14330960772@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A225', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A226', '2022-01-12 16:37:46', '6ea970034c4a37329b57abd647142d2688eedb30de8891d49922b02ccf811f16', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A226.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A226.json', '87b9aac4-ea23-52c8-b887-f09dec025eaf', '<202201121737.38787970375@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A226', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A227', '2022-01-12 16:46:11', 'bf67be90308f67d1baa46f892f42103581fe2e12e3bd16e795df8ff224d5da00', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A227.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A227.json', '65d1a9f0-9ab4-542a-8ee3-f3a992af2fb7', '<202201121746.11883073382@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A227', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A228', '2022-01-12 17:01:44', '729fd8a815e6bc8cc2bc548a0be8766561f07a220070a89ce88bfdd01ecc2380', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A228.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A228.json', '3b273b15-561c-52db-b695-614c5da3e6d1', '<202201121801.81549713258@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A228', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A229', '2022-01-12 17:01:44', '3fa2d6c089ba0dbd832144e0a3413d01cec3f31a5c56dfc7343129db9c29a254', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A229.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A229.json', '48947c87-69fa-56ce-a786-26de62383783', '<202201121801.28688414047@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A229', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A230', '2022-01-12 17:01:53', '06f1d884fb3c308e460a616559f040048403fff3847a032c9150635d0ba78d8f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A230.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A230.json', 'f5832cc4-266a-57fb-9c99-769d2daca15c', '<202201121801.13669851802@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A230', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A231', '2022-01-12 17:01:53', 'ffe0ee450b9c02452fbc7ad6e30e587c48573402d9d76aeb3e287906d254614f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A231.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A231.json', 'ed1ae8be-5767-5881-81d2-b2e75ca09067', '<202201121801.55769389335@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A231', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A232', '2022-01-12 20:26:40', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A232.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A232.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A232', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A233', '2022-01-12 20:26:40', 'f079ca52a61a3aef172d89ff572157809235b2a572ef935fe7e27b503b38e284', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A233.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A233.json', 'ea69b6e8-9023-5567-b9aa-ecb1abe53599', '<202201122126.73797188269@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A233', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A234', '2022-01-12 20:29:54', '75be86a7c721cbc412df768de7b5778dc82804a7f4c706f99759b7665e2daa3a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A234.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A234.json', '8d5737a5-7f3a-58fc-95b8-6dfc43bd07d7', '<202201122129.84815687581@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A234', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A235', '2022-01-12 20:29:54', 'a0f7c5ce10c68e1ccd78e7dcb5643752197b32406b0a89b52a1043d13542f16c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A235.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A235.json', 'e14fc577-8e95-5b50-a441-9f2eb21da2ee', '<202201122129.72982977710@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A235', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A236', '2022-01-12 20:51:54', 'ac83f4248579251b7fcccc8dbea3ef286c556ccce0a4548d6965caabbd5e8a1e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A236.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A236.json', '3ff209b0-d660-54b4-92b2-53e997d1dc1a', '<202201122152.41903517628@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A236', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A237', '2022-01-12 20:51:54', '553108630c823fb9422dee1bac1838e30b66d8db939d7a3992a6b62737a8be0b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A237.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A237.json', 'e1771d26-2fca-5694-96b8-477f6e7b85b1', '<202201122152.55463410273@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A237', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A238', '2022-01-12 21:07:53', 'eee19cbb284752f7ce23f68a7a07d8cb7c994038743299fdaa67ddb2c430015f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A238.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A238.json', '4092d5ad-a63c-52e0-93cc-8ff4e353ddea', '<202201122207.39727181958@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A238', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A239', '2022-01-12 21:07:53', '66b36bdf557c91a8d593f39f64b0b00b48fde79025720ed9045ec6697e11120a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A239.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A5FB09C2A239.json', '68b4d4a4-8551-55a3-b592-8efdc03e670b', '<202201122207.90933223932@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A239', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A240', '2022-01-18 15:34:53', '104302f1b38a1011a0adf376c5ef61414f82770496f03ac9c37bc6c3fd6aa096', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A5FB09C2A240.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A5FB09C2A240.json', '1ebc5aaf-091a-50f9-94cf-00cfe97fa784', '<202201181635.35585336864@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A240', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A241', '2022-01-18 15:34:53', '9b03e97bcba0d53eb77df89e8ac566a24508062aa72e9752acff765934644348', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A5FB09C2A241.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A5FB09C2A241.json', '25292526-7221-5664-9503-7f469244ec92', '<202201181635.40487633412@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A241', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0);
INSERT INTO `t_record_certificate` (`STATE`, `STAFF_ID`, `CV_ID`, `CODE`, `DATE`, `HASH`, `HASH_IPFS`, `HASH_ADDRESS`, `METARECORD_ID`, `PATH_BLOCKCHAIN_JSON_AWS`, `BLOCKCHAIN_FILE_PATH`, `SMS_ID`, `EMAIL_ID`, `DATE_EXPIRATION`, `TEMPLATE_ID`, `COUNT_BLOCKCERTS`, `COUNT_DOWNLOAD`, `COUNT_FACEBOOK`, `COUNT_TWITTER`, `COUNT_EMAIL`, `COUNT_WHATSAPP`, `COUNT_LINKEDIN`, `TYPE`, `STATUS`, `PATH_PDF_AZURE`, `PAGES`, `PRIVACY`, `PATH_IMAGE_AWS`, `CERTIFICATES_GENERATION_ID`, `DATE_REVOKED`, `ACC_ID_ISSUER`, `AUX`, `HAS_TOKEN`, `COUNT_VISITS`) VALUES
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A242', '2022-01-18 18:52:00', '54531c2e4e47ad18e24df29c2b60bb16be4e8cd40d586241d27a8afd9f1d2ce5', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A5FB09C2A242.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A5FB09C2A242.json', 'fa8d9646-65d5-532e-989f-cc276b4f83c4', '<202201181952.78639871131@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A242', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A243', '2022-01-18 18:52:00', 'abf2c8c262f1e5900ca415224b98f274831d46475540ddae432317094acad068', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A5FB09C2A243.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A5FB09C2A243.json', '3591154f-0e4e-5e8c-92f2-4f2e00d4b74e', '<202201181952.60067472343@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A243', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A244', '2022-01-18 20:24:03', 'efbbe06307bfb3a7a74926dd1b882149cfec52ed64c355bf14b29da3622f4080', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A5FB09C2A244.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A5FB09C2A244.json', 'a4888a20-ebe4-59a4-bde3-d041cfcec08b', '<202201182124.75626619074@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A244', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A245', '2022-01-18 20:24:03', 'd5957764eab88ba1fbad0f4bee39de17952e6a083e03476a1e25709ba0b08928', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A5FB09C2A245.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A5FB09C2A245.json', '9fe8e19e-4102-54fd-9989-bbff6529c590', '<202201182124.15334746083@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A245', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A246', '2022-02-01 16:10:06', '3cbfd9dad32ecd5c98bc83d0260d72474c94ff5669c07ee67c887cbd13ea3a04', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A5FB09C2A246.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A5FB09C2A246.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A246', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A247', '2022-02-01 16:10:06', '71c572de631bcb3e245631135e5994e69c154563defc93ae382c6ee13c55f3d6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A5FB09C2A247.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A5FB09C2A247.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A247', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A248', '2022-02-01 16:25:55', '1d1dab0b35651541221949c4b5e9e8d4bcbb43c1258acd6d7417c423564e6b33', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A5FB09C2A248.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A5FB09C2A248.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A248', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A249', '2022-02-01 16:25:55', '3709ba3c07118083c21c290358c4eb023e6744d3864d47d27983263f22ae65ee', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A5FB09C2A249.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A5FB09C2A249.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A249', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A250', '2022-02-01 17:44:14', 'b005fa067190df5ec7b78bf893cf213373e37a6eaec194f62b6680c6d80964c4', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A5FB09C2A250.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A5FB09C2A250.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A250', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A251', '2022-02-01 17:44:14', '406fb2d3212b608220258e805984afc0cd8a23db1c9768adeff17fd23ff21690', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A5FB09C2A251.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A5FB09C2A251.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A251', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A252', '2022-02-01 18:40:39', 'f0378b34c7913ba1e7f4fe2e1a5be506305b3479fb4eaa0cc963b704c3adcef8', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A5FB09C2A252.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A5FB09C2A252.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A252', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A253', '2022-02-01 18:40:39', '1383cd2cd979c406d9b451160428b16ef542ba245536c5afa79ec547e3d5cb9b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A5FB09C2A253.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A5FB09C2A253.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A253', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A254', '2022-02-01 18:56:10', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A5FB09C2A254.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A5FB09C2A254.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A254', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A255', '2022-02-01 18:56:10', 'ac63d1c8cb29ada4325c054d08f893dfdf0e1e7cda8140c9b219ddd3d8929f04', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A5FB09C2A255.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A5FB09C2A255.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A255', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A256', '2022-02-01 19:22:39', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A5FB09C2A256.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A5FB09C2A256.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A256', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A257', '2022-02-01 19:22:39', '2ed78fcad7127a788f132a3ebf2a16d5bbd6069621b2f3eed96c0ed20b98d47c', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A5FB09C2A257.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A5FB09C2A257.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A257', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A258', '2022-02-01 20:00:01', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A5FB09C2A258.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A5FB09C2A258.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A258', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A259', '2022-02-01 20:00:01', '2fe8a5c764bcf77f8e468dc9d21743ec547e9c2a74ae2b84ab4ddaaac5e8bd94', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A5FB09C2A259.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A5FB09C2A259.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A259', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A260', '2022-02-01 22:18:09', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A5FB09C2A260.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A5FB09C2A260.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A260', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A261', '2022-02-01 22:18:09', 'a82c75b6819082150689ffff84e474d2caf7cf4f0cd0796ed1cba194183252b9', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A5FB09C2A261.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A5FB09C2A261.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A261', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A262', '2022-02-01 22:34:06', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A5FB09C2A262.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A5FB09C2A262.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A262', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A263', '2022-02-01 22:34:06', '584a017451cad8828ad4d1164e0f63365ad2e3b0cb93d3999bc4227a17bbf033', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A5FB09C2A263.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A5FB09C2A263.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A263', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A264', '2022-02-01 22:45:07', 'ad6c9013080bfbaee956447c1aa22c1af85e07ed32d7618d3c18d7a3c505d61d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A5FB09C2A264.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A5FB09C2A264.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A264', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A265', '2022-02-01 22:45:07', '8ee323194afd6d4f138aabbd7bc1eca4f92abd01d19e4c9d4d9cc022c1985df8', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A5FB09C2A265.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A5FB09C2A265.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A265', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A266', '2022-02-02 00:21:56', '3658a1e03ea4f9a58b288c075b8709a62259bde9c8ca97e5fa6adf438b608712', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A5FB09C2A266.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A5FB09C2A266.json', 'bc33c72f-0ce7-5c9c-813f-9d5cdc0c3c82', '<202202020122.21978692549@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A266', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '8b81ddb5-bcb9-4868-be74-2ea59c198d3b', 'A5FB09C2A267', '2022-02-02 00:21:56', '61e81888d6c018ba43b56e59f1802d292ebadd53bc309029abf9e0cde142fed9', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A5FB09C2A267.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A5FB09C2A267.json', '6a307123-25bc-5d09-8e36-2b50f557fddf', '<202202020122.21978692549@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A5FB09C2A267', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA009', '2021-12-20 14:50:35', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA009.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA009.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA009', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA010', '2021-12-20 14:50:35', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA010.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA010.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA010', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA011', '2021-12-20 15:02:27', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA011.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA011.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA011', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA012', '2021-12-20 15:02:27', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA012.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA012.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA012', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA013', '2021-12-20 15:03:33', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA013.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA013.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA013', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA014', '2021-12-20 15:03:33', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA014.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA014.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA014', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA015', '2021-12-20 15:04:33', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA015.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA015.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA015', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA016', '2021-12-20 15:04:33', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA016.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA016.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA016', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA017', '2021-12-20 15:05:13', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA017.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA017.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA017', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA018', '2021-12-20 15:05:13', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA018.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA018.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA018', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA019', '2021-12-20 15:10:00', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA019.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA019.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA019', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA020', '2021-12-20 15:10:00', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA020.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA020.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA020', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA021', '2021-12-20 15:14:33', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA021.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA021.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA021', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA022', '2021-12-20 15:14:33', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA022.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA022.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA022', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA023', '2021-12-20 15:17:30', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA023.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA023.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA023', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA024', '2021-12-20 15:17:30', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA024.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA024.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA024', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA025', '2021-12-20 15:37:12', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA025', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA026', '2021-12-20 15:37:12', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA026', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA027', '2021-12-20 15:39:52', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA027', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA028', '2021-12-20 15:39:52', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA028', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA029', '2021-12-20 15:46:53', '94b9302146bc6095b9487792dde493654c9c43696608dd2ae9378df9ba039b9a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA029', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA030', '2021-12-20 15:46:53', '431cad9ec744d6f0015ab34e28db8c50219271eb35f589db78949169cddf8170', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA026.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA030', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA031', '2021-12-21 02:00:56', '5d7e476d522d552cfabc0ea9e5a1d33f4fe6cff8a4ffc4fb77727c98d42745aa', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA031.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA031.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA031', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, 'b8368d69-03d3-49cf-aadf-2c37769bd371', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA032', '2021-12-21 02:00:56', '36909a75f9c3fc8011b22375d7a5a444e5736094db59e2bb926ff23d616e9464', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA032.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA032.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA032', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, 'b8368d69-03d3-49cf-aadf-2c37769bd371', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA034', '2021-12-21 02:24:53', 'c5740d666c1e5d08a7ba415f1502c5cb9c92d21291788c04b7a1ae4096d0efda', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA034.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA034.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA034', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, 'b8368d69-03d3-49cf-aadf-2c37769bd371', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA035', '2021-12-21 02:24:53', '2b81f62faf8ec859c9359dbf09fae86512077725a3e10a4dc980f1a6c453b462', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA035.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA035.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA035', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, 'b8368d69-03d3-49cf-aadf-2c37769bd371', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA036', '2021-12-21 20:23:47', '440f7370fa20a528365840fbe50d2ed251c766898511ad60e77e43a7a62ac54b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA036.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA036.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA036', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA037', '2021-12-21 20:23:47', 'ba7767012ca4198f7d20c31957f32934d1f390f3695e0eb550513a7676099036', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA037.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA037.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA037', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA201', '2021-12-21 20:33:33', '31b1d064f6b9f182e2dab6ef90cdd102c447bbbb65af7008b8ee0a2bbca163a4', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA201.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA201.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA201', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA202', '2021-12-21 20:33:33', '1b63acbda11a7e6342b9c83c198b54120152ed60b4be3d20f99e39fd6be7420b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA202.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA202.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA202', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA203', '2021-12-21 20:46:40', 'ebb2f49d7fb8a412944ab10b1460be061d930b2f67ace9c1850312cdf501e8e4', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA203.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA203.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA203', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA204', '2021-12-21 20:46:40', '2b600fe0d1e7295f1a9b84b7b155fa7c5da011683793db206a5131690afc2e80', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA204.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA204.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA204', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA205', '2021-12-21 20:54:14', 'e175eaedea9d6db430a7042127a4228ee7c5eb930aac5c8e392f1bb75b65a259', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA205.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA205.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA205', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA206', '2021-12-21 20:54:14', 'd4226c857b695a9719777a8508a2377b9a882afc9412b19d2598f2942fadcf34', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA206.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA206.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA206', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA207', '2021-12-21 22:13:04', 'bf95d5236bfe9d89be42a6bf86bd4b7d736b940d974c2134e9016229822b2145', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA207.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA207.json', '180ae937-ad40-581e-bc5b-b309b8da2407', '<202112230712.44589072430@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA207', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA208', '2021-12-21 22:13:04', '06b370830cdef1f903050fac4fdff985e187f4404003b06fc2c32baec48fac7f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA208.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA208.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA208', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA209', '2021-12-23 21:07:56', '15b2c0792bc29276a6eb2c6c383241baa5653b6aedb5a53f6350e7bcd1d73ab2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA209.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA209.json', '410bb1d7-86ce-5659-86cf-ebe961b86db3', '<202112232208.55145736854@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA209', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA210', '2021-12-23 21:07:56', '906f861833a2eb0bff56de78e8870507dbdc141834d134085a51ab9e111ad5d2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA210.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA210.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA210', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA211', '2021-12-23 21:21:43', 'ae8bbffcaf7443220b0e9aefc307134efdd7a2a920b4621b86141c511455e574', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA211.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA211.json', '3a147060-85cd-5965-824b-2a5e6f7d3147', '<202112232221.84856334645@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA211', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA212', '2021-12-23 21:21:43', '69555814f5de572a94d1a23e2a964b6c93530e54f10ba3b41b5e5f0a5651e798', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA212.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA212.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA212', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA213', '2021-12-23 21:35:46', '735807e762f88abc5e83d9deff588a287b5cbc1659369cb4a50b2b32f8e40c22', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA213.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA213.json', '1919dfa3-6ff2-5b52-9871-859d820e547e', '<202112232235.75494636181@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA213', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA214', '2021-12-23 21:35:46', '5280d261908ab47011a274d43f166e09be7358ac4bda06b8c24c922f62abd203', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA214.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA214.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA214', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA215', '2021-12-23 21:45:42', '28c5bc5fd5d7a1731507acb871490e8e0058aba0ae56163e06ccc264878b4427', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA215.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA215.json', 'ee4d07fd-684e-57c3-a12e-5dc3981e1114', '<202112232245.85592678711@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA215', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA216', '2021-12-23 21:45:42', 'ef7894ba18302ce8873930f626bee62552383c4a11e89cf17d70b5ab7401a3ff', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA216.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA216.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA216', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA217', '2021-12-23 21:57:26', 'fd1773162a6fa8ff27c772822edd854054cd862e8c92e1745ce643869b62e92f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA217.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA217.json', 'fa309a1d-208e-5822-913f-c023d39e0c89', '<202112232257.61074654096@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA217', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA218', '2021-12-23 21:57:26', 'b615be7de2935b445e09361ea17dd1ac98bba77d8ff0d13d617a9f12122cfe4d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA218.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA218.json', '9fb14f8e-a0c5-53b8-9729-15b053d57178', '<202112232257.25557822926@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA218', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA219', '2021-12-23 22:09:25', '092f94778dccfb665f7ffbdc0d4ec4f1eb877eb3633d6f2ed487ee54f46ae230', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA219.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA219.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA219', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0);
INSERT INTO `t_record_certificate` (`STATE`, `STAFF_ID`, `CV_ID`, `CODE`, `DATE`, `HASH`, `HASH_IPFS`, `HASH_ADDRESS`, `METARECORD_ID`, `PATH_BLOCKCHAIN_JSON_AWS`, `BLOCKCHAIN_FILE_PATH`, `SMS_ID`, `EMAIL_ID`, `DATE_EXPIRATION`, `TEMPLATE_ID`, `COUNT_BLOCKCERTS`, `COUNT_DOWNLOAD`, `COUNT_FACEBOOK`, `COUNT_TWITTER`, `COUNT_EMAIL`, `COUNT_WHATSAPP`, `COUNT_LINKEDIN`, `TYPE`, `STATUS`, `PATH_PDF_AZURE`, `PAGES`, `PRIVACY`, `PATH_IMAGE_AWS`, `CERTIFICATES_GENERATION_ID`, `DATE_REVOKED`, `ACC_ID_ISSUER`, `AUX`, `HAS_TOKEN`, `COUNT_VISITS`) VALUES
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA220', '2021-12-23 22:09:25', '6e4f6f304fb140f78734757c96642f736fb12d37b6c1a2400854a958b1a4505b', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA220.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA220.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA220', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA221', '2021-12-23 22:16:24', '33066db81f0e78f98f111738db3b2f7a115f7f0952cf5cec05a6d77afa6ebf65', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA221.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA221.json', NULL, NULL, NULL, '26910c13-ceaf-47d8-8af3-903503ce0df7', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA221', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA222', '2021-12-23 22:16:24', 'e5b11d2a6f64704932b51c9000001aee662de1a68efda67c12b286148a9df29f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA222.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA222.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA222', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA223', '2021-12-23 22:16:24', '469b7ab0bece791e2aa48e47800267f309f6bf1898df9281d8adb14cb2b96c54', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA223.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA223.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA223', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA224', '2022-01-10 18:06:21', '985fc85fa2ff767eaae1ec892d1c810924bb9ad215c92b6db1169cffa3806702', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA224.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA224.json', '948dc14b-772f-5fc4-94ec-9b1d00cbe2ff', '<202201101906.42731830181@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA224', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA225', '2022-01-10 18:44:32', '8856e53a4b3998f4d891151b13def17a45330d5bfd71b62d7e5de4f38295f953', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA225.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA225.json', '759f9a27-3ab6-5193-81b2-c071ba61c5be', '<202201101944.35728987622@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA225', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA226', '2022-01-10 18:44:32', '0cf3b9cd26840b1e7327e74b7ae315d5657829c1d25153b8d5b62fc76e25017a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA226.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA226.json', '6bc0df11-0a65-55dc-8607-85478ab2c5d3', '<202201101944.67122005268@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA226', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA227', '2022-01-10 18:48:40', 'dd64d2b01465b5a6a26495d487bbcd375ace6ca2c0f26ce6a0df654615b26baf', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA227.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA227.json', '6c262855-4694-57ea-a64a-7203c75ab78a', '<202201101948.74635233222@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA227', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA228', '2022-01-10 18:48:40', 'e5e0829e2e2ee54415994bb0c824e3ba5495b9d45c7774ae323ced0e33417e69', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA228.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA228.json', '6a8c44c7-4767-5072-bd67-1e91c6a9ecac', '<202201101948.43755763642@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA228', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA229', '2022-01-10 18:52:06', '1b4dac4f449b1e2f3ff7ec859c809c485eec89a487eb89ebcc52fce7ad4eeb2a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA229.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA229.json', '90363f53-ca68-5d59-bad2-650548f34544', '<202201101952.47415198155@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA229', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA230', '2022-01-10 18:52:06', 'a70f92fd6ada08f49173a626dc88f29d8d5015850cc9f5d95f88c016010d012a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA230.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA230.json', 'e57c7dc9-6c9b-5147-921c-279fee07c859', '<202201101952.37834112324@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA230', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA231', '2022-01-12 16:37:44', 'a4c038b7d8be7586996fbdc22bba3e14e57704fdab6aafba40df577041576be1', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA231.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA231.json', '18a7faf3-f482-5456-8257-a0aaf29df8ce', '<202201121737.64231249266@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA231', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA232', '2022-01-12 16:46:10', '516ff5471f38c86a274e29629eeb9f03a7cd96f13a8b5618c6f4d2615ce3badf', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA232.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA232.json', '5d402822-d4b8-5fa1-854b-727bdca066c0', '<202201121746.46618269851@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA232', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA233', '2022-01-12 17:01:47', '78c4ad7f7deb9c723df4225e2f71012b44f3cd1706716540ddef7d17b3055662', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA233.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA233.json', '4e28eb4b-b99d-5c4b-b20c-b112b25938e5', '<202201121801.45083987075@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA233', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA234', '2022-01-12 17:01:47', 'a57873b0c3fcbfaed9e5a4da7136d7d9eebd0b88839c5228afb99c2a674dcc88', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA234.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA234.json', 'abb4bf8f-7f1b-5707-8a88-e5d674de2e85', '<202201121801.72644864033@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA234', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA235', '2022-01-12 17:01:58', 'bcac8bc17864d74b3ca67183a0b2131f7f729b65ee11ad9acaba778784782d03', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA235.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA235.json', '89f8fe8f-d2cb-5b8e-a278-a4d6d906da81', '<202201121802.99372837541@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA235', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA236', '2022-01-12 17:01:58', 'aa3f993c549163afb92bf95e9eb8080fc100d03d344b96f83f3d265328804f44', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA236.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA236.json', '395a4d86-558a-5325-a17e-17df5e47895a', '<202201121802.19937814596@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA236', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA237', '2022-01-12 20:26:36', '0d5d1a47aac7ade611092f8aede37ebab3bbbd95fdd3b9046aa34b6014b8e6ca', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA237.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA237.json', 'e3a86420-680d-59de-a531-3e7953ce508b', '<202201122126.45216857232@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA237', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA238', '2022-01-12 20:26:36', '93512408f15a0a37c9286bccf53f62d98251cba130d257b27ac0c1a324cc2f1f', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA238.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA238.json', 'c9edb3d0-d3dd-5f9e-9383-e989e8195e66', '<202201122126.97813969683@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA238', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA239', '2022-01-12 20:29:44', '956c83924b128dfcbe5e3b4de94756bb1f74bfc231fa1a156dfaccf25ec18d19', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA239.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA239.json', '0f9b7758-b542-53f7-9b70-2d0189c0df7f', '<202201122129.89568768868@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA239', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA240', '2022-01-12 20:29:44', '604b6e91acfdafdc75f804a5e4da9cc6214fadadce0571f3f8853320335a8861', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA240.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA240.json', '3f064632-4ff3-51c4-8b42-1c6b73701802', '<202201122129.88220642648@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA240', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA241', '2022-01-12 20:51:49', 'fb7b6900752e18092b8ff7c25aa6caabc089e0aca7301538d1fe29bdc2887c5d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA241.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA241.json', 'eb4af5b4-b40b-544a-bab4-afedf5a75ba1', '<202201122151.61224499957@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA241', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA242', '2022-01-12 20:51:49', '45f9d6650c9dec18e1eaebf44500f293a67139ea5269595f9b911c57d45cf9c8', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA242.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA242.json', '52be8e74-6c61-5a3a-a65e-d42d2dcd2739', '<202201122151.27881926441@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA242', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA243', '2022-01-12 21:07:48', '6b05ec182f642cddca453059080dbbce6acbce66a012d764fb31c95a8e50c9e6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA243.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA243.json', '9599fcdc-83c7-5c64-8011-a685c6ab4ded', '<202201122207.58036905701@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA243', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA244', '2022-01-12 21:07:48', '5b540a28a29a299b5d645f6abbe544fa9e8761743e44a30cf3282606f26a9667', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA244.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2ba6474a-6912-45eb-809a-5f7461d0635e/A684730EA244.json', '04f5e9b0-833b-5662-96a7-b3e9c657f0ea', '<202201122207.52937206168@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA244', NULL, 'U', NULL, '2ba6474a-6912-45eb-809a-5f7461d0635e', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA245', '2022-01-18 15:34:51', 'c499bcdd0e8f42f57e86de633b09761da1ab0857e5da10ead34a5911b8d27f0a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A684730EA245.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A684730EA245.json', 'fc54f63f-5a47-50c4-89d4-ac5fba25639d', '<202201181634.72369512543@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA245', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA246', '2022-01-18 15:34:51', 'd964d5cbde33f0cf5f5e8cb82e51256f153246332c451dd1c80efe022ea691e1', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A684730EA246.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/31ffaebf-0252-4da4-8549-7c0df96482fb/A684730EA246.json', 'e78a8511-2877-5987-bf5c-df71c8140ef2', '<202201181634.38700878459@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA246', NULL, 'U', NULL, '31ffaebf-0252-4da4-8549-7c0df96482fb', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA247', '2022-01-18 18:51:59', '4bae126dbc4291c7f2c21194337b88874f0204cd17dc70846e4c11468567f21d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A684730EA247.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A684730EA247.json', '7ecb45b2-60cd-55d8-9786-1fd36e5a761d', '<202201181952.20398809475@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA247', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA248', '2022-01-18 18:51:59', '9454fe102d73a0e2492d2ed643058c96d8ff6959e37acf96cac27cb21a083959', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A684730EA248.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b47e6de-184a-4f6f-90de-8362f7a41f1b/A684730EA248.json', '656ee567-a6a4-5b1d-bb60-bf06a83c33db', '<202201181952.17872946329@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA248', NULL, 'U', NULL, '1b47e6de-184a-4f6f-90de-8362f7a41f1b', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA249', '2022-01-18 19:55:01', 'e9b6607b52b6f1b4b3e4cab1971c53b7ca1cf88016bdf3d63e2b97490c49241d', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A684730EA249.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A684730EA249.json', 'fdc00bee-bfb4-5feb-87cc-518fa2e89b7b', '<202201182055.66669236308@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA249', NULL, 'U', NULL, '2a21dde6-232a-4d36-9658-17de969c60a0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA250', '2022-01-18 19:55:01', '00bcb3d5f4a13e5975bc8e1028c704fc7d1191b6bdb6e6271fab0d61bcfb81fd', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A684730EA250.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/2a21dde6-232a-4d36-9658-17de969c60a0/A684730EA250.json', '849853bc-0a3c-583d-b70a-09dd176146b0', '<202201182055.54211771389@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA250', NULL, 'U', NULL, '2a21dde6-232a-4d36-9658-17de969c60a0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA251', '2022-01-18 20:24:02', 'b320518865ef10c09533d12a6749e23b4620437af5e3a2ef101b80b3d15f68f6', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A684730EA251.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A684730EA251.json', '33a3d98d-3f4b-58cb-ada8-83ec1b632be2', '<202201182124.12667878792@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA251', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA252', '2022-01-18 20:24:02', 'ec0a26ebac745cc2add5dc998b254f7218536740e81155be8b116be70b2d0668', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A684730EA252.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/dbdfe13f-9d60-4be4-ad53-7374fbaba5e5/A684730EA252.json', '71fe6c17-9a41-5c3f-b74e-3676be695959', '<202201182124.48449754635@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA252', NULL, 'U', NULL, 'dbdfe13f-9d60-4be4-ad53-7374fbaba5e5', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA253', '2022-01-24 21:27:58', 'a3da01b0ae54e727ce1a8762d7a12a27e49e21a3b6516deefe1b66ca7728bbeb', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A684730EA253.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A684730EA253.json', 'f61606e7-ba7a-5ea2-b608-5c8ea65cc23a', '<202201242228.66591703620@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA253', NULL, 'U', NULL, 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA254', '2022-01-24 21:27:58', 'cc6905db2b44ac3dbd32fd2685bcf0b3c757b02363d3aabaa16f9a0ee613b7fe', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A684730EA254.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ca2171f4-1183-48bb-91c4-cd004a5fb3d0/A684730EA254.json', 'cf3e2605-ed43-5ab8-b7f2-7c6cf1652600', '<202201242228.31076231686@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA254', NULL, 'U', NULL, 'ca2171f4-1183-48bb-91c4-cd004a5fb3d0', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA255', '2022-02-01 16:10:04', '462f44e69edd0443936484cd5434faebf1334c103e0cf85bd6db065b0b234b75', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A684730EA255.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A684730EA255.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA255', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA256', '2022-02-01 16:10:04', 'a2bbf186c4543417681732e36fd9c154fd7a0f7dae7db06c40685fe3443e572a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A684730EA256.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/9ae33072-379c-4579-9abe-a78a29f74f30/A684730EA256.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA256', NULL, 'U', NULL, '9ae33072-379c-4579-9abe-a78a29f74f30', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA257', '2022-02-01 16:25:51', 'a023b612191e7468a4e5d7370558a8100bf6062630ac51a7c2e9bb5f9170e3b3', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A684730EA257.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A684730EA257.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA257', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA258', '2022-02-01 16:25:51', 'e1b5a890c846776df054dee9a4e3752be8937fcbe997fcd63173f1aae4acae8e', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A684730EA258.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/627a0437-6891-453b-a0c9-4d879276278d/A684730EA258.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA258', NULL, 'U', NULL, '627a0437-6891-453b-a0c9-4d879276278d', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA259', '2022-02-01 17:44:14', '23363c071a58743d9d3ddc6ce223c09c057eba33659a2fcf0d98209a2db6c12a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A684730EA259.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A684730EA259.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA259', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA260', '2022-02-01 17:44:14', '6cf786731a47da1220ea12540a8a5c792e144d6e5ff993ab9ae136ed522390c7', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A684730EA260.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/56c28f6a-93af-4ad3-889b-90fd16bcb3c2/A684730EA260.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA260', NULL, 'U', NULL, '56c28f6a-93af-4ad3-889b-90fd16bcb3c2', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA261', '2022-02-01 18:40:36', '4f969368f51b94a683b1d4ed52a2ee3666107156a0bead0d76c69d778667ade4', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A684730EA261.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A684730EA261.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA261', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA262', '2022-02-01 18:40:36', 'c869fa9a7f4f322a416bce7d21b0efde4e0fe282038d6981b7860fd07de1ea51', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A684730EA262.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/786e5df4-447d-4330-8251-29a39f634a6a/A684730EA262.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA262', NULL, 'U', NULL, '786e5df4-447d-4330-8251-29a39f634a6a', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA263', '2022-02-01 18:56:04', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A684730EA263.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A684730EA263.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA263', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('W', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA264', '2022-02-01 18:56:04', '05eb8b74d3014fb3c0add949e78ff4de5dd626a0331a1a73580a1ce44826da04', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A684730EA264.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9e453b6-def4-4969-89aa-a05b322f4e41/A684730EA264.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA264', NULL, 'U', NULL, 'd9e453b6-def4-4969-89aa-a05b322f4e41', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA265', '2022-02-01 19:22:41', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A684730EA265.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A684730EA265.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA265', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA266', '2022-02-01 19:22:41', 'a3575f418d5f22f424d95f1b20966436bdf21bfacf84f436b95b60a0553326cd', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A684730EA266.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/ac42a569-ae0c-4a8f-aec5-be555af0f1b3/A684730EA266.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA266', NULL, 'U', NULL, 'ac42a569-ae0c-4a8f-aec5-be555af0f1b3', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA267', '2022-02-01 19:59:59', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A684730EA267.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A684730EA267.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA267', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA268', '2022-02-01 19:59:59', 'fb9f1aa980520fc296f525dc1bd0990a663f6556b9cdbe0c67184f108365baef', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A684730EA268.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/e08ab365-21ae-4dee-b430-135531ba8934/A684730EA268.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA268', NULL, 'U', NULL, 'e08ab365-21ae-4dee-b430-135531ba8934', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA269', '2022-02-01 22:17:57', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A684730EA269.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A684730EA269.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA269', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA270', '2022-02-01 22:17:57', '88c11c9ca06c5647dce2985ba10a0f6f702b5b2092d30a6f17768a8a849972cf', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A684730EA270.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/298b7833-94dd-429f-97c7-1ad3e9249a77/A684730EA270.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA270', NULL, 'U', NULL, '298b7833-94dd-429f-97c7-1ad3e9249a77', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA271', '2022-02-01 22:34:04', '', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A684730EA271.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A684730EA271.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA271', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA272', '2022-02-01 22:34:04', 'afe81ddc1c39806466104b9215ba9e11d04b7c410b3064f0e238cb6459a40c90', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A684730EA272.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/115e3363-c45d-499f-9662-1821927e9918/A684730EA272.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA272', NULL, 'U', NULL, '115e3363-c45d-499f-9662-1821927e9918', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA273', '2022-02-01 22:45:05', 'f68ae52b999f6b8de9e4f661bc5944948ea64c1c83ef6662894f3fa59d810ee1', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A684730EA273.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A684730EA273.json', NULL, NULL, NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA273', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('F', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA274', '2022-02-01 22:45:05', 'e7e14156bee107f4c9bd5833e34894c19d67d82e8b6cbbc35203e8a6284064f2', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A684730EA274.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/6118f794-d873-4d2e-9b42-ba6b1b2f2b14/A684730EA274.json', NULL, NULL, NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA274', NULL, 'U', NULL, '6118f794-d873-4d2e-9b42-ba6b1b2f2b14', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA275', '2022-02-02 00:21:54', '6965d79aadd7142c5ed2f8e32bb3c5c13348f1a48260ca213e7e24052d21060a', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A684730EA275.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A684730EA275.json', '85de715e-b61b-5449-a3d1-2b2d66f25e08', '<202202020122.22636382650@smtp-relay.mailin.fr>', NULL, 'd95c4a86-175c-482d-b79b-52eae06160bb', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA275', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0),
('OK', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '01b7276e-5a42-4bd5-981b-0930bc77008c', 'A684730EA276', '2022-02-02 00:21:54', '9c7705226c939dc16e098c2b62e53187fa6d2a4346688c225e402abb1cdc2f91', '', '', '', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A684730EA276.json', 'certificates_jsons_pre/8082dfbe-d4e0-4e03-901a-02dac72333dd/1b431aec-1c95-48c0-8b93-aaa3a8aa0996/A684730EA276.json', '4fbfe140-63b2-52ab-944d-bb33b35b14ac', '<202202020122.22636382650@smtp-relay.mailin.fr>', NULL, '38f8e818-81f8-4754-ab17-037bdd42cca1', 0, 0, 0, 0, 0, 0, 0, 'AC', 'A', 'A684730EA276', NULL, 'U', NULL, '1b431aec-1c95-48c0-8b93-aaa3a8aa0996', NULL, '8082dfbe-d4e0-4e03-901a-02dac72333dd', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_record_certificate_email`
--

CREATE TABLE `t_record_certificate_email` (
  `ID_RECORD_CERTIFICATE_EMAIL` char(36) CHARACTER SET latin1 NOT NULL,
  `CODE` char(30) CHARACTER SET latin1 NOT NULL,
  `DATE` timestamp NULL DEFAULT current_timestamp(),
  `SENDIN_BLUE_ID` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_record_security_staff`
--

CREATE TABLE `t_record_security_staff` (
  `id` char(36) NOT NULL,
  `STAFF_ID` char(36) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `TYPE` char(3) NOT NULL DEFAULT 'ULN',
  `ip_user_agent` varchar(150) DEFAULT NULL,
  `ip_address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_record_security_staff`
--

INSERT INTO `t_record_security_staff` (`id`, `STAFF_ID`, `DATE`, `TYPE`, `ip_user_agent`, `ip_address`) VALUES
('04dfcb24-c50c-49a7-978f-602ec5fbcc02', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 20:58:47', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('067702c6-a19e-49f1-9cbb-7134e532e9b5', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-22 02:55:56', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('08b002c0-0049-4012-98d6-f49adafc379c', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-11 04:32:50', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('0a4bbdff-3418-4589-89a7-78d7084f5d7f', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-26 20:17:21', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('0a54ecd0-e303-426f-870e-3807f23bb2e5', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 02:02:39', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('0b9d8208-6837-495c-8368-a0e3dff1ac69', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-19 17:51:08', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '190.97.232.121'),
('0d09b523-6149-4e26-96c7-e401fadcdd17', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 16:30:19', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('0d725c37-794c-449b-af22-0edbd4415ca7', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-12 16:41:59', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '190.97.232.121'),
('0fafadfd-6d57-4305-afe4-6851a26568cb', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-31 00:21:53', 'CLN', 'ipAgent', 'eeg'),
('1104b117-8741-4b61-afd4-b9f4b4ff24d6', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-11 04:46:01', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('1106c958-5472-46d4-985e-9fff3bbb29dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-25 18:02:50', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '200.8.190.152'),
('1280255a-815a-4f7e-bc5c-de244e135cf3', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-22 19:39:35', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('13a085ca-fc80-435b-907a-43591593ec58', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 02:12:22', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('15a0dc7f-4707-4c69-83ee-0274d5ef7b61', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-20 19:58:35', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('1c9fe2ba-ebab-4cdb-a985-c680f6313d6a', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 19:52:57', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('1e29026f-391f-4a16-b400-d6fc5a4cc522', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-26 20:00:32', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '191.156.187.38'),
('1ee2dcc7-84aa-4e2e-bb5c-51bb86ef0787', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 20:04:49', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('208bc534-6bc0-4af6-a9db-4ff7567fe7be', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 15:45:56', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('212fcecd-69ba-4bdb-b3db-7fde0ad3c9e7', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 15:18:52', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '190.97.232.122'),
('24ab1e91-32d7-44bf-8daf-11fefc8c3a58', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-21 19:43:15', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '127.0.0.1'),
('25d5dc6f-1492-4292-a398-fc16e27edbf9', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-16 03:53:17', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '186.24.60.120'),
('265b280d-9fd7-466c-ad79-1cbcdf7d89b5', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 21:17:44', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('2afb87e1-e264-44ae-9acc-135e3cfea739', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-19 23:06:50', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '186.84.21.155'),
('2d548663-1f5a-487e-95cf-95c745f4de8d', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 19:54:11', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '186.145.121.103'),
('2f64f047-0192-44d7-a770-d74f34e9c71b', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 15:36:57', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('31236691-6e54-49a2-aa33-ef61749582d9', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 20:53:32', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('353bd959-0441-4f72-bc31-94d49ab9cee2', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-16 03:58:33', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '190.97.232.122'),
('383f0917-151c-4e85-b2b0-5b245f73ab2e', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 20:45:20', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '186.145.121.103'),
('39de16bb-7ede-4744-87aa-70368fe8538f', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 21:09:35', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('3d83668d-aebd-41c2-a26b-2a59f41e78ae', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 16:13:46', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('3dfde441-c56a-4849-ab94-738f980049d6', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 15:09:16', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('3ecb5049-edb6-468b-93ef-894eae3d9d99', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 17:49:29', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('460df020-bf7c-4129-b83b-9a2346b7cd0d', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 03:28:58', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('462408bb-0418-418b-b1c4-bccfdc717bca', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 21:19:41', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('48ac5fb6-dfa8-4a36-bc09-313cbb037d31', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-25 23:12:33', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '190.153.127.3'),
('4b68e1ad-6825-49df-a350-fa2ab96f8770', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 19:47:53', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('4d0e9fd1-9528-45f3-9b03-3cc2953f84a8', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 03:31:47', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('50d7a1e9-4096-449e-b4eb-07bfffccea4f', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-02-01 13:58:47', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('53d3c878-a21b-4e26-9a93-83dd173fa0db', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-31 00:22:47', 'CLN', NULL, NULL),
('53eb809c-d651-40b5-b77a-90cd9e9e50c5', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-16 03:59:55', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '190.97.232.122'),
('56a17a8c-c3de-4141-bac2-0a59383ec7c9', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 15:42:46', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('570b8e3d-0157-43d8-a5c7-104315fa39b0', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 05:08:07', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('57f2176a-b397-455d-8433-c23a6dcdd911', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-22 20:02:06', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('5b659289-9c74-4dbc-b57d-ef07e15b2233', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-26 14:33:59', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('5d37bd3c-0c14-425a-8096-6139edf9791b', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-22 22:12:38', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '190.97.246.7'),
('5e9a0d3f-ec21-4cd9-98a1-5ecb1dfb9bba', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 17:41:25', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('5eda86d5-55a2-47dd-9e6c-0f4e5ed56341', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-21 17:29:07', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '127.0.0.1'),
('5f1816e0-7877-4aaa-ba98-5c004e9c00cd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 20:36:21', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '186.145.121.103'),
('606c36ae-1d03-44ce-8445-f0aa813fc53b', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 17:54:04', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('61ef2848-0de8-418c-90db-66550ed7460e', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 18:04:25', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('624b78ec-7b97-415a-be14-151500586ce6', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 21:04:26', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('6296ed55-68f0-47ff-92d5-0121deafc768', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 22:07:37', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('640f7044-ecf2-4892-9aec-14ecfc7fe47e', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 20:57:13', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('645bc498-378a-42f7-8ce6-f5e85a86acde', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 21:23:11', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('64c9893e-d60d-42a7-b629-5bc4ba92bc9f', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 15:07:36', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('656a8d1b-c71a-4ea9-9cf2-3a00dc1d26eb', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 17:50:19', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('67ada23a-6bac-4e0b-bed0-facf4ee37c05', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-19 17:42:57', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '190.97.232.121'),
('701d87b9-15e6-45ea-99e5-bcc609374f08', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 20:33:37', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('7093c8b6-1550-4479-8ec9-3694dbc4555b', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 16:21:06', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '190.97.232.121'),
('73aa1cac-bb5b-4231-acae-d39824eb149d', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-19 18:25:50', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '186.185.244.217'),
('78ae2186-8d7c-404e-8af0-bdd0ee4c235b', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-11 04:23:51', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('78e0a59d-dcaf-4f68-acf3-e00d720e769e', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 15:13:48', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('7a0df94e-9e65-4ec0-b3b8-1bd689b9e304', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 20:38:48', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '186.145.121.103'),
('7d29cd04-0589-46ee-8b73-4fbf70885f61', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-11 04:39:48', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('7fab68a4-054c-4ace-ba9b-de0c7c736fcb', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-31 23:17:04', 'CLN', 'ipAgent', 'eeg'),
('8080fbff-b0f8-4862-afc1-e1da59194539', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-20 19:26:41', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '186.185.135.146'),
('810aa642-9e00-40a8-9176-4cd5ee6877ed', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 21:45:12', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('8166bc30-54df-4fbf-9475-086709e5fc75', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-31 00:27:10', 'CLN', 'ipAgent', 'eeg'),
('81f34bd6-efc7-4fea-a662-9241429547c7', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 21:08:37', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('83951a59-390b-47ea-b837-e21d995dea73', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 21:14:30', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '186.145.121.103'),
('8af5ca54-94a5-400e-8e3f-5fed626c70c6', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-30 23:03:55', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('8ed4bd20-6c23-430f-94ec-3902e5072690', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 18:51:37', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('90f0b6e3-b606-4309-9292-a3d47defc4ea', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 15:17:37', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('933689fb-e420-42e3-ba86-8f0b460729f8', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 01:56:34', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('9468e751-6003-413f-8980-fbe7fe402d07', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-31 00:28:45', 'CLN', 'ipAgent', 'eeg'),
('96c61dd4-a12f-43d5-b62b-51c17d9c12db', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-22 21:25:48', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('98280c30-a82d-44e8-a83c-d1ff6fb514a3', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 20:10:56', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('9886ffb9-0a3b-4726-a487-62c09e76e8db', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 14:36:00', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('9afe5170-549e-4ca6-8ed0-9d11843296d2', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 00:57:43', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('9efabe34-58d2-4207-8f2e-02551d48e7b1', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-19 17:01:20', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '190.205.48.54'),
('a0efd14c-ec0c-46cb-9cf9-734d63e1594b', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-11 05:36:01', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('a23ecf86-6bc4-499a-a38c-9b8e2456d182', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-26 18:16:15', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('a4b5105a-3188-48fe-b205-7b3b15483bf8', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-26 15:34:11', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '190.205.48.54'),
('a9a27590-5946-4fa3-9f45-cb47697a2529', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 20:39:07', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '186.145.121.103'),
('abaec969-09fb-4b6b-b69e-d6aabfc218f3', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 15:37:57', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('ac3863e0-afa0-461c-ade8-77fa2c9dea99', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 20:20:41', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('acfdad26-1e29-4da1-a40d-88d1fdfb2793', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-19 14:35:06', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '190.97.232.121'),
('af3c7480-fd81-450a-b143-2645793d7891', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-21 20:19:01', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '190.205.48.54'),
('af6870b4-5c6a-407b-ba4f-66f95bc1b70f', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 13:42:14', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('afa8d42d-0cbe-4bf3-940e-1b5e55975f6d', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 15:09:35', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('b0ce1f7f-4445-4e35-a9dc-0fcee0fb1856', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 01:54:16', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('b5da260a-9953-4481-995c-ca2d9363379d', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 20:46:02', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('b63c3414-0aaf-4e9c-ba54-124c02370b64', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 21:52:54', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('b82a4508-ed7d-4ae9-ace3-a8f4320bae49', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:54:23', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('bb47cc48-e7ff-4946-b4a4-d49bf026a499', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 20:29:13', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('bd17c692-1cb9-48de-a731-5a3947665db6', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 19:46:20', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('bedfca4c-d604-4a40-a731-64011034c579', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 16:49:48', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('bf781103-6120-4f15-b27a-eb811bc684ed', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 21:12:52', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '186.145.121.103'),
('c39f07f6-068f-49bc-b4f8-a6eaa9aba1eb', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 20:31:09', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '186.145.121.103'),
('c463d546-0ee5-4325-9c37-6bc7a9ec53c7', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 20:56:51', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('c48bfa9f-f11e-472f-a262-469f18292109', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-20 20:13:04', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('c568c155-aaf7-45ed-89b9-6b440405a08f', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-31 00:25:59', 'CLN', 'ipAgent', 'eeg'),
('c6473e89-664c-4679-8003-3f33f5b5f307', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-21 19:54:48', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '127.0.0.1'),
('c779ce0b-fd83-4240-8a97-03b13f82269f', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 15:58:12', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('c81bfd24-575c-49d6-b2b4-1173f28626ff', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 01:47:53', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('c826ce7b-cc41-4b2f-9338-6bc4056d028e', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-31 19:17:51', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('cd5ad8f7-9df4-4f6f-a88a-b83a9d20b6a1', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-17 01:18:58', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '190.97.232.122'),
('cd95019c-e5fa-47b9-a2d7-78791d63ff74', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 14:17:07', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('ce9999c3-c74b-4f11-a29f-0f5786f7ec14', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 17:58:31', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('cfd3ee0b-d6dd-4045-8e6d-8c1635afd4d6', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:11:13', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('cfeeab42-278f-4f48-a0b7-56000f80c719', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-26 01:03:42', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('d0f36484-f1ea-4a6c-9095-4d5f0ff9a624', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 18:51:27', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('d1f11e23-0ed5-4904-b879-4fbd5a67a5a5', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-23 14:56:33', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36', '186.84.21.155'),
('d2a83679-b037-496b-bfe4-051b14d6468d', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 14:12:39', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('d452d94b-c830-4f9c-9581-d8b4cb533743', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 15:08:36', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '186.84.21.155'),
('d766ba8d-6137-475a-bdb1-620e518163f6', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-26 14:55:47', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('d84857a6-d11b-4498-a347-668945a0912b', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-10 20:15:03', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('d86d27c6-d3d1-4079-bc6c-f2d71f991675', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 21:13:57', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('d896d805-df88-4c21-bbcd-94f64d61a214', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-20 20:36:48', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '190.97.232.122'),
('dd03cca0-7968-401c-b506-452ef448b998', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-11 05:03:35', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('de9ae3a7-d56e-4d9f-9fa6-eacf7c74a63b', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 20:15:25', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('e1d59eaf-7ed2-4dc2-920e-7a7f29a2547a', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 03:20:13', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('e47ba3a4-e3cb-45d0-af43-c3fad5a257dc', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-21 03:30:57', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('e486c8a1-3616-43bb-996a-41a6b165e5d4', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-21 02:53:07', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('e4f9d6a3-ae95-479b-a181-5272e46f25e5', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-21 15:12:46', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('e557f26c-6205-4c12-bedf-4aea86ddba2c', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 16:43:54', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('e7b4442d-abcf-456e-920e-95a1835b79fc', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-21 18:52:49', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '127.0.0.1'),
('e85e96f8-3832-49e8-9d5f-ae0242ea12de', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-09 19:46:37', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('ea5d7ab0-36cd-40e7-a93b-3eec607c9983', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-27 19:06:13', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '186.145.121.103'),
('eeace36b-0b05-4e3b-be98-2212910ad875', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 20:58:37', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('f1429005-eb92-4267-8d1f-346ed86c74e9', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 01:58:50', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('f67ed33a-4d92-4c91-b98f-f8a181aa966d', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-14 21:45:15', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1'),
('f7501d59-d180-4ba9-adaf-38277c715994', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 02:09:37', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('f7fda507-da1b-43c6-9c0d-2a088f8121ee', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-31 00:24:53', 'CLN', 'ipAgent', 'eeg'),
('f8c5aaef-ae35-4f9f-9307-06c617aa992a', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-10-30 14:22:56', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('f917d7a6-aab6-4737-98c0-1886ca206c09', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-08 20:24:03', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', '127.0.0.1'),
('f9e007dc-a73e-447f-92d9-7134b892fbba', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2022-01-31 19:24:11', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '127.0.0.1'),
('fd3acdc8-4c41-4c5d-a30b-c4c6aeef1f8d', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:46:59', 'CLN', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', '127.0.0.1'),
('ffd8f8cf-ed95-452f-81f6-8f6b63e3f794', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-22 18:34:08', 'CLN', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `t_record_security_wallet`
--

CREATE TABLE `t_record_security_wallet` (
  `id` char(36) NOT NULL,
  `ACC_ID` char(36) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `TYPE` char(3) NOT NULL DEFAULT 'ULN',
  `ip_user_agent` varchar(150) DEFAULT NULL,
  `ip_address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_request`
--

CREATE TABLE `t_request` (
  `T_REQUEST_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `PAYMENT_REFERENCE` char(50) DEFAULT NULL,
  `COMMENTS_REQ` varchar(100) DEFAULT NULL,
  `COMMENTS_ISSUER` varchar(100) DEFAULT NULL,
  `DATE_ISSUE` timestamp NULL DEFAULT NULL,
  `DATE_ANSWER` timestamp NULL DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CODE` char(30) DEFAULT NULL,
  `PRICE` decimal(10,0) DEFAULT NULL,
  `STAFF_ID` char(36) DEFAULT NULL,
  `PROD_ID` char(36) NOT NULL,
  `METARECORD_ID` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_request_api`
--

CREATE TABLE `t_request_api` (
  `ID_REQUEST_API` char(36) CHARACTER SET utf8mb4 NOT NULL,
  `AUTOMATIC` tinyint(4) NOT NULL,
  `STATUS_EXISTENCE` varchar(1) CHARACTER SET utf8mb4 NOT NULL,
  `USER_CV_ID` char(36) DEFAULT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DATE_PROCESSED` timestamp NULL DEFAULT NULL,
  `TYPE` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'Table for save certificate requests of the platform',
  `BRANCH_ID` char(36) DEFAULT NULL,
  `GROUP_ID` char(36) DEFAULT NULL,
  `TEMPLATE_ID` char(36) NOT NULL,
  `USER_EMAIL` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `EMAIL_COPY` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL,
  `PHONE` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `COMMENTS` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ID_TYPE` decimal(10,0) DEFAULT NULL,
  `ID_NUM` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `FIRST_NAME` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `LAST_NAME` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `FORM_ID` char(36) DEFAULT NULL,
  `ACC_ID` char(36) NOT NULL,
  `DYNAMIC_DATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`DYNAMIC_DATA`)),
  `STATUS` varchar(1) CHARACTER SET utf8mb4 NOT NULL,
  `USER_ACC_ID` char(36) DEFAULT NULL,
  `IP_AGENT` text DEFAULT NULL,
  `IP_ADDRESS` varchar(100) DEFAULT NULL,
  `CODE` char(30) DEFAULT NULL,
  `GENERATIONS_ID` char(36) DEFAULT NULL,
  `PROD_ID` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for save external requests';

-- --------------------------------------------------------

--
-- Table structure for table `t_request_api_token`
--

CREATE TABLE `t_request_api_token` (
  `ID_REQUEST_API_TOKEN` char(36) NOT NULL,
  `ACC_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `DATE_CREATION` datetime NOT NULL,
  `DATE_EXPIRATION` datetime DEFAULT NULL,
  `TOKEN` varchar(600) NOT NULL,
  `COM_NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_request_copy`
--

CREATE TABLE `t_request_copy` (
  `T_REQUEST_ID` char(36) NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `PAYMENT_REFERENCE` char(50) DEFAULT NULL,
  `CERTIFICATE` int(11) DEFAULT NULL,
  `COMMENTS_REQ` varchar(100) DEFAULT NULL,
  `COMMENTS_ISSUER` varchar(100) DEFAULT NULL,
  `DATE_ISSUE` timestamp NULL DEFAULT NULL,
  `DATE_ANSWER` timestamp NULL DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `TIEDOCS_CODE` char(50) DEFAULT NULL,
  `PRICE` decimal(10,0) DEFAULT NULL,
  `ISSUER_STAFF_ID` char(36) DEFAULT NULL,
  `PARAMTEXTA` varchar(30) DEFAULT NULL,
  `PARAMTEXTB` varchar(30) DEFAULT NULL,
  `PARAMTEXTC` varchar(30) DEFAULT NULL,
  `PARAMTEXTD` varchar(30) DEFAULT NULL,
  `PARAMTEXTE` varchar(30) DEFAULT NULL,
  `PARAMINTA` int(11) DEFAULT NULL,
  `PARAMINTB` int(11) DEFAULT NULL,
  `PARAMINTC` int(11) DEFAULT NULL,
  `PARAMINTD` int(11) DEFAULT NULL,
  `PARAMINTE` int(11) DEFAULT NULL COMMENT 'PaymentStatus',
  `PARAMBOOLA` tinyint(1) DEFAULT NULL,
  `PARAMBOOLB` tinyint(1) DEFAULT NULL,
  `PARAMBOOLC` tinyint(1) DEFAULT NULL,
  `PARAMBOOLD` tinyint(1) DEFAULT NULL,
  `PARAMBOOLE` tinyint(1) DEFAULT NULL,
  `PROD_ID` char(36) NOT NULL,
  `METARECORD_ID` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_search_record`
--

CREATE TABLE `t_search_record` (
  `T_SEARCH_ID` char(36) NOT NULL,
  `CODE` varchar(30) DEFAULT NULL,
  `IP_ADDRESS` varchar(50) DEFAULT NULL,
  `IP_INFO` varchar(250) DEFAULT NULL,
  `DATE` timestamp NULL DEFAULT current_timestamp(),
  `ACC_ID` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_search_token`
--

CREATE TABLE `t_search_token` (
  `SEARCH_TOKEN_ID` char(36) NOT NULL,
  `CODE` char(20) CHARACTER SET latin1 DEFAULT NULL,
  `ACC_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `TOKEN` varchar(200) NOT NULL,
  `AUTHORIZED_EMAIL` varchar(300) NOT NULL,
  `USER_TYPE` char(1) DEFAULT NULL COMMENT 'C=Company P=Person',
  `COMMENTS` varchar(200) DEFAULT NULL COMMENT 'Optional - Why the verifier is searching for this record',
  `REASON` char(1) DEFAULT NULL COMMENT 'L=Laboral, F=Financial, M=Migration, A=Academic, O=Other',
  `STATUS` char(3) NOT NULL COMMENT 'PVV-Pendiente por verificar verificador XD 33 Solicitar acceso\nPVL-Pendiente por verificar con link compartido XD 31 compartir acceso\nSVP-Solicitud de verificación pendiente por aprobar (Cuando el certificado es privado)\nTEV-Token expirado sin usar por parte de verificador\nTEC-Token expirado y sin usar por una persona o tercero que se compartió\nUVE-Usado por un verificador\nUTE-Usado por un tercero al que se le compartió el link',
  `SOURCE` char(1) DEFAULT NULL COMMENT 'S=Consulta directa L=Invitación con link R=Solicitud de permiso X=Se creo durante la generación',
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_search_token`
--

INSERT INTO `t_search_token` (`SEARCH_TOKEN_ID`, `CODE`, `ACC_ID`, `TOKEN`, `AUTHORIZED_EMAIL`, `USER_TYPE`, `COMMENTS`, `REASON`, `STATUS`, `SOURCE`, `DATE_CREATION`) VALUES
('000abdd4-61a6-11ec-adc8-16aa0443c0bb', 'A684730EA013', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:03:33'),
('000b49f4-61a6-11ec-adc8-16aa0443c0bb', 'A684730EA014', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:03:33'),
('0408151d-7240-11ec-adc8-16aa0443c0bb', 'A684730EA224', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:06:21'),
('0dc9540a-61ac-11ec-adc8-16aa0443c0bb', 'A684730EA029', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:46:53'),
('0dcc467a-61ac-11ec-adc8-16aa0443c0bb', 'A684730EA030', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:46:53'),
('0f4e310e-83af-11ec-a00e-16aa0443c0bb', 'A684730EA271', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:04'),
('0f4e5829-83af-11ec-a00e-16aa0443c0bb', 'A684730EA272', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:04'),
('0f596e7a-83af-11ec-a00e-16aa0443c0bb', 'A4D88C5BA270', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:04'),
('0f5991cf-83af-11ec-a00e-16aa0443c0bb', 'A4D88C5BA271', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:04'),
('0fba2e51-83af-11ec-a00e-16aa0443c0bb', 'A45F8B2BA270', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:04'),
('0fbb2206-83af-11ec-a00e-16aa0443c0bb', 'A45F8B2BA271', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:04'),
('101dae9f-83af-11ec-a00e-16aa0443c0bb', 'A5628813A268', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:05'),
('101dd3ef-83af-11ec-a00e-16aa0443c0bb', 'A5628813A269', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:05'),
('10b74338-83af-11ec-a00e-16aa0443c0bb', 'A5FB09C2A262', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:06'),
('10b76613-83af-11ec-a00e-16aa0443c0bb', 'A5FB09C2A263', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:34:06'),
('12fa2b23-61ab-11ec-adc8-16aa0443c0bb', 'A684730EA027', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:39:52'),
('12fa43df-61ab-11ec-adc8-16aa0443c0bb', 'A684730EA028', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:39:52'),
('1904d31c-629f-11ec-adc8-16aa0443c0bb', 'A4D88C5BA203', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:40'),
('1905ca41-629f-11ec-adc8-16aa0443c0bb', 'A4D88C5BA204', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:40'),
('194728e4-629f-11ec-adc8-16aa0443c0bb', 'A684730EA203', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:40'),
('19474418-629f-11ec-adc8-16aa0443c0bb', 'A684730EA204', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:40'),
('199305b2-629f-11ec-adc8-16aa0443c0bb', 'A45F8B2BA203', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:41'),
('199320f0-629f-11ec-adc8-16aa0443c0bb', 'A45F8B2BA204', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:41'),
('1a3c5eb2-629f-11ec-adc8-16aa0443c0bb', 'A5628813A203', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:42'),
('1a3c7e48-629f-11ec-adc8-16aa0443c0bb', 'A5628813A204', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:42'),
('1aaad898-629f-11ec-adc8-16aa0443c0bb', 'A5FB09C2A203', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:42'),
('1aaaf43d-629f-11ec-adc8-16aa0443c0bb', 'A5FB09C2A204', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:46:42'),
('1ff351c8-83be-11ec-a00e-16aa0443c0bb', 'A684730EA275', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:54'),
('1ff37aca-83be-11ec-a00e-16aa0443c0bb', 'A684730EA276', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:54'),
('2088f564-83be-11ec-a00e-16aa0443c0bb', 'A4D88C5BA274', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:55'),
('2089d275-83be-11ec-a00e-16aa0443c0bb', 'A4D88C5BA275', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:55'),
('20dfc25f-83be-11ec-a00e-16aa0443c0bb', 'A45F8B2BA274', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:56'),
('20dfe8be-83be-11ec-a00e-16aa0443c0bb', 'A45F8B2BA275', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:56'),
('210fa2f4-83be-11ec-a00e-16aa0443c0bb', 'A5FB09C2A266', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:56'),
('210fc8de-83be-11ec-a00e-16aa0443c0bb', 'A5FB09C2A267', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:56'),
('21b60c56-83be-11ec-a00e-16aa0443c0bb', 'A5628813A272', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:57'),
('21b8971b-83be-11ec-a00e-16aa0443c0bb', 'A5628813A273', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-02 00:21:57'),
('240d42ec-61a6-11ec-adc8-16aa0443c0bb', 'A684730EA015', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:04:33'),
('240d56b8-61a6-11ec-adc8-16aa0443c0bb', 'A684730EA016', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:04:33'),
('2522c6a3-73c7-11ec-adc8-16aa0443c0bb', 'A684730EA232', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:46:10'),
('259aad39-73c7-11ec-adc8-16aa0443c0bb', 'A4D88C5BA231', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:46:10'),
('2618e454-73c7-11ec-adc8-16aa0443c0bb', 'A45F8B2BA231', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:46:11'),
('263bf04c-73c7-11ec-adc8-16aa0443c0bb', 'A5FB09C2A227', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:46:11'),
('26ef942b-73c7-11ec-adc8-16aa0443c0bb', 'A5628813A229', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:46:13'),
('280ddc27-62a0-11ec-adc8-16aa0443c0bb', 'A684730EA205', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:14'),
('280eee70-62a0-11ec-adc8-16aa0443c0bb', 'A684730EA206', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:14'),
('28226048-62a0-11ec-adc8-16aa0443c0bb', 'A4D88C5BA205', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:14'),
('28227ba6-62a0-11ec-adc8-16aa0443c0bb', 'A4D88C5BA206', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:14'),
('2a12aeb2-62a0-11ec-adc8-16aa0443c0bb', 'A45F8B2BA205', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:18'),
('2a12cacb-62a0-11ec-adc8-16aa0443c0bb', 'A45F8B2BA206', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:18'),
('2aa324b1-62ab-11ec-adc8-16aa0443c0bb', 'A4D88C5BA207', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:03'),
('2aa47c1b-62ab-11ec-adc8-16aa0443c0bb', 'A4D88C5BA208', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:03'),
('2ae4d43a-62ab-11ec-adc8-16aa0443c0bb', 'A684730EA207', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:04'),
('2ae4efc0-62ab-11ec-adc8-16aa0443c0bb', 'A684730EA208', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:04'),
('2b0961e9-62ab-11ec-adc8-16aa0443c0bb', 'A45F8B2BA207', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:04'),
('2b0a9038-62ab-11ec-adc8-16aa0443c0bb', 'A45F8B2BA208', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:04'),
('2c2a171c-62a0-11ec-adc8-16aa0443c0bb', 'A5FB09C2A205', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:21'),
('2c2a31d3-62a0-11ec-adc8-16aa0443c0bb', 'A5FB09C2A206', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:21'),
('2c52c5ec-62a0-11ec-adc8-16aa0443c0bb', 'A5628813A205', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:21'),
('2c52e1b3-62a0-11ec-adc8-16aa0443c0bb', 'A5628813A206', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:54:21'),
('2d04a7b4-62ab-11ec-adc8-16aa0443c0bb', 'A5FB09C2A207', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:07'),
('2d04c3c3-62ab-11ec-adc8-16aa0443c0bb', 'A5FB09C2A208', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:07'),
('2d641c6d-7874-11ec-b0e9-16aa0443c0bb', 'A684730EA245', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:51'),
('2d659b77-7874-11ec-b0e9-16aa0443c0bb', 'A684730EA246', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:51'),
('2defea20-7874-11ec-b0e9-16aa0443c0bb', 'A45F8B2BA244', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:52'),
('2df0083d-7874-11ec-b0e9-16aa0443c0bb', 'A45F8B2BA245', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:52'),
('2dfabf29-7874-11ec-b0e9-16aa0443c0bb', 'A4D88C5BA244', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:52'),
('2dfadd1d-7874-11ec-b0e9-16aa0443c0bb', 'A4D88C5BA245', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:52'),
('2e210194-62ab-11ec-adc8-16aa0443c0bb', 'A5628813A207', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:09'),
('2e211d49-62ab-11ec-adc8-16aa0443c0bb', 'A5628813A208', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 22:13:09'),
('2e50cc09-6205-11ec-adc8-16aa0443c0bb', 'A684730EA034', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:24:53'),
('2e50e185-6205-11ec-adc8-16aa0443c0bb', 'A684730EA035', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:24:53'),
('2eb0716a-7874-11ec-b0e9-16aa0443c0bb', 'A5628813A242', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:53'),
('2eb0b692-7874-11ec-b0e9-16aa0443c0bb', 'A5628813A243', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:53'),
('2ee31c54-7874-11ec-b0e9-16aa0443c0bb', 'A5FB09C2A240', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:53'),
('2ee338b1-7874-11ec-b0e9-16aa0443c0bb', 'A5FB09C2A241', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 15:34:53'),
('303f663d-61a4-11ec-adc8-16aa0443c0bb', 'A684730EA009', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 14:50:35'),
('303f7a50-61a4-11ec-adc8-16aa0443c0bb', 'A684730EA010', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 14:50:35'),
('3beae293-61a6-11ec-adc8-16aa0443c0bb', 'A684730EA017', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:05:13'),
('3beaf805-61a6-11ec-adc8-16aa0443c0bb', 'A684730EA018', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:05:13'),
('4443d5d0-629d-11ec-adc8-16aa0443c0bb', 'A684730EA201', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:33'),
('4443ef67-629d-11ec-adc8-16aa0443c0bb', 'A684730EA202', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:33'),
('453628d6-629d-11ec-adc8-16aa0443c0bb', 'A4D88C5BA201', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:35'),
('453643a8-629d-11ec-adc8-16aa0443c0bb', 'A4D88C5BA202', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:35'),
('45b8c5f0-629d-11ec-adc8-16aa0443c0bb', 'A45F8B2BA201', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:36'),
('45b8e26b-629d-11ec-adc8-16aa0443c0bb', 'A45F8B2BA202', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:36'),
('46f78229-629d-11ec-adc8-16aa0443c0bb', 'A5628813A201', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:38'),
('46f7b872-629d-11ec-adc8-16aa0443c0bb', 'A5628813A202', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:38'),
('482afba8-629d-11ec-adc8-16aa0443c0bb', 'A5FB09C2A201', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:40'),
('482d44c5-629d-11ec-adc8-16aa0443c0bb', 'A5FB09C2A202', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:33:40'),
('4a1e5821-6438-11ec-adc8-16aa0443c0bb', 'A684730EA213', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:46'),
('4a1e72fa-6438-11ec-adc8-16aa0443c0bb', 'A684730EA214', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:46'),
('4a547d32-6438-11ec-adc8-16aa0443c0bb', 'A4D88C5BA213', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:46'),
('4a54985d-6438-11ec-adc8-16aa0443c0bb', 'A4D88C5BA214', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:46'),
('4a84e139-6438-11ec-adc8-16aa0443c0bb', 'A45F8B2BA213', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:47'),
('4a84fcb9-6438-11ec-adc8-16aa0443c0bb', 'A45F8B2BA214', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:47'),
('4cc294cd-6438-11ec-adc8-16aa0443c0bb', 'A5FB09C2A213', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:51'),
('4cc2b0bd-6438-11ec-adc8-16aa0443c0bb', 'A5FB09C2A214', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:51'),
('4ce2e6d8-6438-11ec-adc8-16aa0443c0bb', 'A5628813A213', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:51'),
('4ce30142-6438-11ec-adc8-16aa0443c0bb', 'A5628813A214', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:35:51'),
('50808422-643b-11ec-adc8-16aa0443c0bb', 'A45F8B2BA217', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:57:25'),
('50833251-643b-11ec-adc8-16aa0443c0bb', 'A45F8B2BA218', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:57:25'),
('50eb5277-643b-11ec-adc8-16aa0443c0bb', 'A684730EA217', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:57:26'),
('50eb6e52-643b-11ec-adc8-16aa0443c0bb', 'A684730EA218', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:57:26'),
('5104edd7-643b-11ec-adc8-16aa0443c0bb', 'A4D88C5BA217', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:57:26'),
('510508a1-643b-11ec-adc8-16aa0443c0bb', 'A4D88C5BA218', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:57:26'),
('513928b7-8394-11ec-a00e-16aa0443c0bb', 'A4D88C5BA264', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:38'),
('51394c98-8394-11ec-a00e-16aa0443c0bb', 'A4D88C5BA265', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:38'),
('515eab3d-8394-11ec-a00e-16aa0443c0bb', 'A45F8B2BA264', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:38'),
('515ecd6e-8394-11ec-a00e-16aa0443c0bb', 'A45F8B2BA265', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:38'),
('51b6a9dc-8394-11ec-a00e-16aa0443c0bb', 'A5628813A262', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:39'),
('51b6cda2-8394-11ec-a00e-16aa0443c0bb', 'A5628813A263', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:39'),
('51ed78c0-8394-11ec-a00e-16aa0443c0bb', 'A5FB09C2A256', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:39'),
('51ee7cef-8394-11ec-a00e-16aa0443c0bb', 'A5FB09C2A257', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:39'),
('52523cfe-73c9-11ec-adc8-16aa0443c0bb', 'A5FB09C2A228', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:44'),
('525259ea-73c9-11ec-adc8-16aa0443c0bb', 'A5FB09C2A229', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:44'),
('52698f30-73c9-11ec-adc8-16aa0443c0bb', 'A5628813A230', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:44'),
('5269ad4f-73c9-11ec-adc8-16aa0443c0bb', 'A5628813A231', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:44'),
('5350e6dc-6436-11ec-adc8-16aa0443c0bb', 'A684730EA211', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:43'),
('535104a8-6436-11ec-adc8-16aa0443c0bb', 'A684730EA212', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:43'),
('536b62c9-8394-11ec-a00e-16aa0443c0bb', 'A684730EA265', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:41'),
('536b8517-8394-11ec-a00e-16aa0443c0bb', 'A684730EA266', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:22:41'),
('53ab0434-6436-11ec-adc8-16aa0443c0bb', 'A4D88C5BA211', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:43'),
('53ab1e21-6436-11ec-adc8-16aa0443c0bb', 'A4D88C5BA212', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:43'),
('53fcda24-73c9-11ec-adc8-16aa0443c0bb', 'A684730EA233', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:47'),
('53fcf6a5-73c9-11ec-adc8-16aa0443c0bb', 'A684730EA234', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:47'),
('54df3119-6436-11ec-adc8-16aa0443c0bb', 'A5FB09C2A211', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:45'),
('54df4c08-6436-11ec-adc8-16aa0443c0bb', 'A5FB09C2A212', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:45'),
('55611e16-73c9-11ec-adc8-16aa0443c0bb', 'A4D88C5BA232', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:49'),
('55613b2e-73c9-11ec-adc8-16aa0443c0bb', 'A4D88C5BA233', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:49'),
('55f5ebc9-73c9-11ec-adc8-16aa0443c0bb', 'A45F8B2BA232', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:50'),
('55f6071a-73c9-11ec-adc8-16aa0443c0bb', 'A45F8B2BA233', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:50'),
('55f803cd-6436-11ec-adc8-16aa0443c0bb', 'A45F8B2BA211', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:47'),
('55f81ee2-6436-11ec-adc8-16aa0443c0bb', 'A45F8B2BA212', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:47'),
('571ff457-6436-11ec-adc8-16aa0443c0bb', 'A5628813A211', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:49'),
('57200fd4-6436-11ec-adc8-16aa0443c0bb', 'A5628813A212', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:21:49'),
('573ad95c-73c9-11ec-adc8-16aa0443c0bb', 'A5FB09C2A230', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:53'),
('573c515b-73c9-11ec-adc8-16aa0443c0bb', 'A5FB09C2A231', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:53'),
('57849302-73c9-11ec-adc8-16aa0443c0bb', 'A5628813A232', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:53'),
('5784ae5a-73c9-11ec-adc8-16aa0443c0bb', 'A5628813A233', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:53'),
('584bb4c8-643b-11ec-adc8-16aa0443c0bb', 'A5628813A217', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:57:38'),
('584bcf48-643b-11ec-adc8-16aa0443c0bb', 'A5628813A218', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:57:38'),
('5972c795-7245-11ec-adc8-16aa0443c0bb', 'A684730EA225', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:32'),
('5972e103-7245-11ec-adc8-16aa0443c0bb', 'A684730EA226', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:32'),
('59acd006-7245-11ec-adc8-16aa0443c0bb', 'A4D88C5BA224', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:32'),
('59acea9c-7245-11ec-adc8-16aa0443c0bb', 'A4D88C5BA225', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:32'),
('5a3801dd-73c9-11ec-adc8-16aa0443c0bb', 'A684730EA235', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:58'),
('5a381e41-73c9-11ec-adc8-16aa0443c0bb', 'A684730EA236', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:01:58'),
('5b302c16-7245-11ec-adc8-16aa0443c0bb', 'A45F8B2BA224', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:34'),
('5b304698-7245-11ec-adc8-16aa0443c0bb', 'A45F8B2BA225', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:34'),
('5b7ec7b2-7245-11ec-adc8-16aa0443c0bb', 'A5FB09C2A222', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:35'),
('5b7ee1b8-7245-11ec-adc8-16aa0443c0bb', 'A5FB09C2A223', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:35'),
('5d1b03a7-73c9-11ec-adc8-16aa0443c0bb', 'A45F8B2BA234', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:02:02'),
('5d1b1e5e-73c9-11ec-adc8-16aa0443c0bb', 'A45F8B2BA235', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:02:02'),
('5db6134f-7245-11ec-adc8-16aa0443c0bb', 'A5628813A224', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:39'),
('5db62f11-7245-11ec-adc8-16aa0443c0bb', 'A5628813A225', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:44:39'),
('60588352-73e6-11ec-adc8-16aa0443c0bb', 'A4D88C5BA238', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:43'),
('60589e5d-73e6-11ec-adc8-16aa0443c0bb', 'A4D88C5BA239', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:43'),
('60c6c704-73e6-11ec-adc8-16aa0443c0bb', 'A684730EA239', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:44'),
('60c6e22f-73e6-11ec-adc8-16aa0443c0bb', 'A684730EA240', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:44'),
('61c9b194-73e6-11ec-adc8-16aa0443c0bb', 'A45F8B2BA238', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:46'),
('61c9cca1-73e6-11ec-adc8-16aa0443c0bb', 'A45F8B2BA239', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:46'),
('66852fa4-73e6-11ec-adc8-16aa0443c0bb', 'A5FB09C2A234', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:54'),
('66854ab7-73e6-11ec-adc8-16aa0443c0bb', 'A5FB09C2A235', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:54');
INSERT INTO `t_search_token` (`SEARCH_TOKEN_ID`, `CODE`, `ACC_ID`, `TOKEN`, `AUTHORIZED_EMAIL`, `USER_TYPE`, `COMMENTS`, `REASON`, `STATUS`, `SOURCE`, `DATE_CREATION`) VALUES
('66eb75ec-6434-11ec-adc8-16aa0443c0bb', 'A684730EA209', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:07:56'),
('66eb9093-6434-11ec-adc8-16aa0443c0bb', 'A684730EA210', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:07:56'),
('67970db1-73e6-11ec-adc8-16aa0443c0bb', 'A5628813A236', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:55'),
('679729e1-73e6-11ec-adc8-16aa0443c0bb', 'A5628813A237', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:29:55'),
('680d95af-7246-11ec-adc8-16aa0443c0bb', 'A684730EA229', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:52:06'),
('680dafb0-7246-11ec-adc8-16aa0443c0bb', 'A684730EA230', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:52:06'),
('6870a9ff-7246-11ec-adc8-16aa0443c0bb', 'A4D88C5BA228', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:52:06'),
('6870cf83-7246-11ec-adc8-16aa0443c0bb', 'A4D88C5BA229', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:52:06'),
('68bb80e8-8379-11ec-a00e-16aa0443c0bb', 'A45F8B2BA254', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:01'),
('68bba167-8379-11ec-a00e-16aa0443c0bb', 'A45F8B2BA255', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:01'),
('692b7444-8379-11ec-a00e-16aa0443c0bb', 'A4D88C5BA254', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:02'),
('692b9c95-8379-11ec-a00e-16aa0443c0bb', 'A4D88C5BA255', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:02'),
('69631680-7246-11ec-adc8-16aa0443c0bb', 'A45F8B2BA228', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:52:08'),
('69633320-7246-11ec-adc8-16aa0443c0bb', 'A45F8B2BA229', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:52:08'),
('6aab8e70-8379-11ec-a00e-16aa0443c0bb', 'A5628813A252', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:04'),
('6aabaf45-8379-11ec-a00e-16aa0443c0bb', 'A5628813A253', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:04'),
('6ad2ba2d-8379-11ec-a00e-16aa0443c0bb', 'A684730EA255', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:04'),
('6ad2d92f-8379-11ec-a00e-16aa0443c0bb', 'A684730EA256', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:04'),
('6b4041df-73c9-11ec-adc8-16aa0443c0bb', 'A4D88C5BA234', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:02:26'),
('6b41155c-73c9-11ec-adc8-16aa0443c0bb', 'A4D88C5BA235', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 17:02:26'),
('6b6d57fd-6434-11ec-adc8-16aa0443c0bb', 'A45F8B2BA209', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:08:04'),
('6b6d72e4-6434-11ec-adc8-16aa0443c0bb', 'A45F8B2BA210', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:08:04'),
('6bd7f90b-8379-11ec-a00e-16aa0443c0bb', 'A5FB09C2A246', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:06'),
('6bd8f7e6-8379-11ec-a00e-16aa0443c0bb', 'A5FB09C2A247', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:10:06'),
('6bdc6c83-6434-11ec-adc8-16aa0443c0bb', 'A4D88C5BA209', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:08:05'),
('6bdc8735-6434-11ec-adc8-16aa0443c0bb', 'A4D88C5BA210', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:08:05'),
('6c281f07-6434-11ec-adc8-16aa0443c0bb', 'A5FB09C2A209', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:08:05'),
('6c2b7174-6434-11ec-adc8-16aa0443c0bb', 'A5FB09C2A210', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:08:05'),
('6cc89deb-6434-11ec-adc8-16aa0443c0bb', 'A5628813A209', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:08:06'),
('6cc8b84a-6434-11ec-adc8-16aa0443c0bb', 'A5628813A210', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:08:06'),
('71fe5f7d-838e-11ec-a00e-16aa0443c0bb', 'A5628813A258', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:36'),
('71fe7f59-838e-11ec-a00e-16aa0443c0bb', 'A5628813A259', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:36'),
('7243d76c-838e-11ec-a00e-16aa0443c0bb', 'A684730EA261', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:36'),
('7243fa1e-838e-11ec-a00e-16aa0443c0bb', 'A684730EA262', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:36'),
('73c5e58f-838e-11ec-a00e-16aa0443c0bb', 'A5FB09C2A252', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:39'),
('73c607bd-838e-11ec-a00e-16aa0443c0bb', 'A5FB09C2A253', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:39'),
('73cbc564-838e-11ec-a00e-16aa0443c0bb', 'A45F8B2BA260', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:39'),
('73cbe6eb-838e-11ec-a00e-16aa0443c0bb', 'A45F8B2BA261', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:39'),
('7542adbc-838e-11ec-a00e-16aa0443c0bb', 'A4D88C5BA260', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:41'),
('7542d0aa-838e-11ec-a00e-16aa0443c0bb', 'A4D88C5BA261', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:40:41'),
('766970e6-73e9-11ec-adc8-16aa0443c0bb', 'A684730EA241', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:49'),
('76698b29-73e9-11ec-adc8-16aa0443c0bb', 'A684730EA242', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:49'),
('78bb5f19-73e9-11ec-adc8-16aa0443c0bb', 'A4D88C5BA240', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:53'),
('78bb79b2-73e9-11ec-adc8-16aa0443c0bb', 'A4D88C5BA241', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:53'),
('7953abfc-73e9-11ec-adc8-16aa0443c0bb', 'A45F8B2BA240', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:54'),
('7953cb94-73e9-11ec-adc8-16aa0443c0bb', 'A45F8B2BA241', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:54'),
('79829f16-73e9-11ec-adc8-16aa0443c0bb', 'A5FB09C2A236', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:54'),
('7982c19a-73e9-11ec-adc8-16aa0443c0bb', 'A5FB09C2A237', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:54'),
('79be35b8-73e9-11ec-adc8-16aa0443c0bb', 'A5628813A238', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:54'),
('79be5283-73e9-11ec-adc8-16aa0443c0bb', 'A5628813A239', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:51:54'),
('7c401d1f-6204-11ec-adc8-16aa0443c0bb', 'A4D88C5BA003', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:19:54'),
('7c403709-6204-11ec-adc8-16aa0443c0bb', 'A4D88C5BA004', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:19:54'),
('8082db0b-7d5c-11ec-a00e-16aa0443c0bb', 'A684730EA253', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-24 21:27:58'),
('8083fa0d-7d5c-11ec-a00e-16aa0443c0bb', 'A684730EA254', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-24 21:27:58'),
('80959e1a-7d5c-11ec-a00e-16aa0443c0bb', 'A45F8B2BA252', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-24 21:27:58'),
('8095b944-7d5c-11ec-a00e-16aa0443c0bb', 'A4D88C5BA252', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-24 21:27:58'),
('8095bc98-7d5c-11ec-a00e-16aa0443c0bb', 'A45F8B2BA253', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-24 21:27:58'),
('8096a2d5-7d5c-11ec-a00e-16aa0443c0bb', 'A4D88C5BA253', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-24 21:27:58'),
('848dfecc-6204-11ec-adc8-16aa0443c0bb', 'A5628813A003', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:20:08'),
('848fa81b-6204-11ec-adc8-16aa0443c0bb', 'A5628813A004', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:20:08'),
('85659d0a-7898-11ec-b0e9-16aa0443c0bb', 'A4D88C5BA248', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 19:55:00'),
('85663a31-7898-11ec-b0e9-16aa0443c0bb', 'A4D88C5BA249', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 19:55:00'),
('85ca60f1-7898-11ec-b0e9-16aa0443c0bb', 'A684730EA249', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 19:55:01'),
('85ca7de1-7898-11ec-b0e9-16aa0443c0bb', 'A684730EA250', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 19:55:01'),
('85d5871b-7898-11ec-b0e9-16aa0443c0bb', 'A45F8B2BA248', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 19:55:01'),
('85d5a3e0-7898-11ec-b0e9-16aa0443c0bb', 'A45F8B2BA249', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 19:55:01'),
('85d7b0d2-8399-11ec-a00e-16aa0443c0bb', 'A5628813A264', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:59:54'),
('85d7d3f8-8399-11ec-a00e-16aa0443c0bb', 'A5628813A265', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:59:54'),
('863f935d-8399-11ec-a00e-16aa0443c0bb', 'A45F8B2BA266', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:59:54'),
('8640ac0b-8399-11ec-a00e-16aa0443c0bb', 'A45F8B2BA267', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:59:54'),
('86f2c10f-7d5c-11ec-a00e-16aa0443c0bb', 'A5628813A250', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-24 21:28:09'),
('86f2dfdd-7d5c-11ec-a00e-16aa0443c0bb', 'A5628813A251', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-24 21:28:09'),
('886e3088-8399-11ec-a00e-16aa0443c0bb', 'A4D88C5BA266', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:59:58'),
('886e5360-8399-11ec-a00e-16aa0443c0bb', 'A4D88C5BA267', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:59:58'),
('890a75bf-8399-11ec-a00e-16aa0443c0bb', 'A684730EA267', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:59:59'),
('890b5ca5-8399-11ec-a00e-16aa0443c0bb', 'A684730EA268', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 19:59:59'),
('893d59b2-61a7-11ec-adc8-16aa0443c0bb', 'A684730EA021', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:14:33'),
('893d7030-61a7-11ec-adc8-16aa0443c0bb', 'A684730EA022', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:14:33'),
('8a19c831-8399-11ec-a00e-16aa0443c0bb', 'A5FB09C2A258', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 20:00:01'),
('8a19eb5c-8399-11ec-a00e-16aa0443c0bb', 'A5FB09C2A259', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 20:00:01'),
('8c2e6b51-789c-11ec-b0e9-16aa0443c0bb', 'A4D88C5BA250', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:23:50'),
('8c2feac3-789c-11ec-b0e9-16aa0443c0bb', 'A4D88C5BA251', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:23:50'),
('8c35966d-7898-11ec-b0e9-16aa0443c0bb', 'A5628813A246', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 19:55:12'),
('8c35b326-7898-11ec-b0e9-16aa0443c0bb', 'A5628813A247', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 19:55:12'),
('918a7edd-789c-11ec-b0e9-16aa0443c0bb', 'A45F8B2BA250', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:23:59'),
('918a9c74-789c-11ec-b0e9-16aa0443c0bb', 'A45F8B2BA251', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:23:59'),
('925ab00d-8386-11ec-a00e-16aa0443c0bb', 'A45F8B2BA258', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('925ad100-8386-11ec-a00e-16aa0443c0bb', 'A45F8B2BA259', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('925cec22-8386-11ec-a00e-16aa0443c0bb', 'A4D88C5BA258', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('925d0bdd-8386-11ec-a00e-16aa0443c0bb', 'A4D88C5BA259', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('926198fe-8386-11ec-a00e-16aa0443c0bb', 'A684730EA259', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('9261ba1f-8386-11ec-a00e-16aa0443c0bb', 'A684730EA260', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('92768b2a-8386-11ec-a00e-16aa0443c0bb', 'A5628813A256', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('9276ab9a-8386-11ec-a00e-16aa0443c0bb', 'A5628813A257', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('927ff3c8-8386-11ec-a00e-16aa0443c0bb', 'A5FB09C2A250', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('928014be-8386-11ec-a00e-16aa0443c0bb', 'A5FB09C2A251', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 17:44:14'),
('935e1a44-789c-11ec-b0e9-16aa0443c0bb', 'A684730EA251', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:24:02'),
('935e382e-789c-11ec-b0e9-16aa0443c0bb', 'A684730EA252', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:24:02'),
('93fa182c-789c-11ec-b0e9-16aa0443c0bb', 'A5FB09C2A244', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:24:03'),
('93fa391a-789c-11ec-b0e9-16aa0443c0bb', 'A5FB09C2A245', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:24:03'),
('93fd60e9-789c-11ec-b0e9-16aa0443c0bb', 'A5628813A248', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:24:03'),
('93fd80cf-789c-11ec-b0e9-16aa0443c0bb', 'A5628813A249', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 20:24:03'),
('99571529-83b0-11ec-a00e-16aa0443c0bb', 'A4D88C5BA272', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:05'),
('99573aa9-83b0-11ec-a00e-16aa0443c0bb', 'A4D88C5BA273', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:05'),
('995cb3e3-399b-11ec-a595-16aa0443c0bb', 'A45F8B2BA001', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-10-30 16:08:19'),
('99cd717f-83b0-11ec-a00e-16aa0443c0bb', 'A684730EA273', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:05'),
('99cd95d0-83b0-11ec-a00e-16aa0443c0bb', 'A684730EA274', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:05'),
('9aaa1b7b-83b0-11ec-a00e-16aa0443c0bb', 'A5FB09C2A264', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:07'),
('9aaa3f0a-83b0-11ec-a00e-16aa0443c0bb', 'A5FB09C2A265', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:07'),
('9b30e8e9-8390-11ec-a00e-16aa0443c0bb', 'A684730EA263', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:04'),
('9b31096d-8390-11ec-a00e-16aa0443c0bb', 'A684730EA264', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:04'),
('9b37cda3-8390-11ec-a00e-16aa0443c0bb', 'A4D88C5BA262', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:04'),
('9b37f088-8390-11ec-a00e-16aa0443c0bb', 'A4D88C5BA263', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:04'),
('9bb6414f-83b0-11ec-a00e-16aa0443c0bb', 'A45F8B2BA272', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:09'),
('9bb6666d-83b0-11ec-a00e-16aa0443c0bb', 'A45F8B2BA273', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:09'),
('9bdaec24-8390-11ec-a00e-16aa0443c0bb', 'A45F8B2BA262', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:05'),
('9bdb0f33-8390-11ec-a00e-16aa0443c0bb', 'A45F8B2BA263', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:05'),
('9be6112a-83b0-11ec-a00e-16aa0443c0bb', 'A5628813A270', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:09'),
('9be63620-83b0-11ec-a00e-16aa0443c0bb', 'A5628813A271', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:45:09'),
('9ce9f76f-8390-11ec-a00e-16aa0443c0bb', 'A5628813A260', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:07'),
('9cea191f-8390-11ec-a00e-16aa0443c0bb', 'A5628813A261', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:07'),
('9e942ca6-8390-11ec-a00e-16aa0443c0bb', 'A5FB09C2A254', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:10'),
('9e945736-837b-11ec-a00e-16aa0443c0bb', 'A45F8B2BA256', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:50'),
('9e947968-837b-11ec-a00e-16aa0443c0bb', 'A45F8B2BA257', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:50'),
('9e953502-8390-11ec-a00e-16aa0443c0bb', 'A5FB09C2A255', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 18:56:10'),
('9f43d571-837b-11ec-a00e-16aa0443c0bb', 'A684730EA257', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:51'),
('9f43f5e5-837b-11ec-a00e-16aa0443c0bb', 'A684730EA258', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:51'),
('9f7ed176-837b-11ec-a00e-16aa0443c0bb', 'A4D88C5BA256', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:52'),
('9f7ef2f3-837b-11ec-a00e-16aa0443c0bb', 'A4D88C5BA257', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:52'),
('9fc1874b-837b-11ec-a00e-16aa0443c0bb', 'A5628813A254', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:52'),
('9fc26628-837b-11ec-a00e-16aa0443c0bb', 'A5628813A255', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:52'),
('a1431114-837b-11ec-a00e-16aa0443c0bb', 'A5FB09C2A248', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:55'),
('a14330ab-837b-11ec-a00e-16aa0443c0bb', 'A5FB09C2A249', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 16:25:55'),
('ad12af34-6439-11ec-adc8-16aa0443c0bb', 'A684730EA215', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:42'),
('ad12c9f8-6439-11ec-adc8-16aa0443c0bb', 'A684730EA216', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:42'),
('af68241e-6439-11ec-adc8-16aa0443c0bb', 'A45F8B2BA215', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:46'),
('af685dac-6439-11ec-adc8-16aa0443c0bb', 'A45F8B2BA216', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:46'),
('af802873-6439-11ec-adc8-16aa0443c0bb', 'A4D88C5BA215', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:46'),
('af8046f5-6439-11ec-adc8-16aa0443c0bb', 'A4D88C5BA216', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:46'),
('b26dc560-73eb-11ec-adc8-16aa0443c0bb', 'A684730EA243', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:48'),
('b26de155-73eb-11ec-adc8-16aa0443c0bb', 'A684730EA244', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:48'),
('b26f89f3-73eb-11ec-adc8-16aa0443c0bb', 'A45F8B2BA242', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:48'),
('b272bbe8-73eb-11ec-adc8-16aa0443c0bb', 'A45F8B2BA243', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:48'),
('b291c378-73eb-11ec-adc8-16aa0443c0bb', 'A4D88C5BA242', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:49'),
('b291dd7f-73eb-11ec-adc8-16aa0443c0bb', 'A4D88C5BA243', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:49'),
('b334f13f-61aa-11ec-adc8-16aa0443c0bb', 'A684730EA025', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:37:12'),
('b33509c8-61aa-11ec-adc8-16aa0443c0bb', 'A684730EA026', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:37:12'),
('b3d525d5-6439-11ec-adc8-16aa0443c0bb', 'A5FB09C2A215', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:53'),
('b3d5409c-6439-11ec-adc8-16aa0443c0bb', 'A5FB09C2A216', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:53'),
('b412dc79-6439-11ec-adc8-16aa0443c0bb', 'A5628813A215', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:53'),
('b4152e74-6439-11ec-adc8-16aa0443c0bb', 'A5628813A216', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 21:45:53'),
('b551644e-73eb-11ec-adc8-16aa0443c0bb', 'A5FB09C2A238', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:53'),
('b5517e77-73eb-11ec-adc8-16aa0443c0bb', 'A5FB09C2A239', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:53'),
('b58564b2-73eb-11ec-adc8-16aa0443c0bb', 'A5628813A240', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:54'),
('b5857f41-73eb-11ec-adc8-16aa0443c0bb', 'A5628813A241', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 21:07:54'),
('b799a87f-788f-11ec-b0e9-16aa0443c0bb', 'A4D88C5BA246', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:51:59'),
('b799f3a1-788f-11ec-b0e9-16aa0443c0bb', 'A4D88C5BA247', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:51:59'),
('b7b02b4f-788f-11ec-b0e9-16aa0443c0bb', 'A684730EA247', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:51:59'),
('b7b04bbe-788f-11ec-b0e9-16aa0443c0bb', 'A684730EA248', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:51:59'),
('b849f76b-788f-11ec-b0e9-16aa0443c0bb', 'A45F8B2BA246', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:52:00'),
('b84a15d5-788f-11ec-b0e9-16aa0443c0bb', 'A45F8B2BA247', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:52:00'),
('b84d9553-788f-11ec-b0e9-16aa0443c0bb', 'A5FB09C2A242', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:52:00'),
('b84fcf31-788f-11ec-b0e9-16aa0443c0bb', 'A5FB09C2A243', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:52:00'),
('b85a8053-788f-11ec-b0e9-16aa0443c0bb', 'A5628813A244', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:52:01');
INSERT INTO `t_search_token` (`SEARCH_TOKEN_ID`, `CODE`, `ACC_ID`, `TOKEN`, `AUTHORIZED_EMAIL`, `USER_TYPE`, `COMMENTS`, `REASON`, `STATUS`, `SOURCE`, `DATE_CREATION`) VALUES
('b85a9efc-788f-11ec-b0e9-16aa0443c0bb', 'A5628813A245', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-18 18:52:01'),
('cf1cf537-83ac-11ec-a00e-16aa0443c0bb', 'A684730EA269', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:17:57'),
('cf1d18e0-83ac-11ec-a00e-16aa0443c0bb', 'A684730EA270', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:17:57'),
('cfe56a48-83ac-11ec-a00e-16aa0443c0bb', 'A4D88C5BA268', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:17:58'),
('cfe58fb9-83ac-11ec-a00e-16aa0443c0bb', 'A4D88C5BA269', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:17:58'),
('d0f2333e-83ac-11ec-a00e-16aa0443c0bb', 'A45F8B2BA268', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:18:00'),
('d0f255cb-83ac-11ec-a00e-16aa0443c0bb', 'A45F8B2BA269', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:18:00'),
('d5f5919e-6201-11ec-adc8-16aa0443c0bb', 'A684730EA031', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:00:56'),
('d5f5aa34-6201-11ec-adc8-16aa0443c0bb', 'A684730EA032', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:00:56'),
('d607d71b-6201-11ec-adc8-16aa0443c0bb', 'A5628813A001', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:00:56'),
('d607ea21-6201-11ec-adc8-16aa0443c0bb', 'A5628813A002', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:00:56'),
('d608512a-6201-11ec-adc8-16aa0443c0bb', 'A4D88C5BA001', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:00:56'),
('d6092f91-6201-11ec-adc8-16aa0443c0bb', 'A4D88C5BA002', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:00:56'),
('d620abe9-6201-11ec-adc8-16aa0443c0bb', 'A45F8B2BA002', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:00:56'),
('d620be84-6201-11ec-adc8-16aa0443c0bb', 'A45F8B2BA003', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:00:56'),
('d665acea-83ac-11ec-a00e-16aa0443c0bb', 'A5FB09C2A260', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:18:09'),
('d665cfa8-83ac-11ec-a00e-16aa0443c0bb', 'A5FB09C2A261', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:18:09'),
('d849a829-83ac-11ec-a00e-16aa0443c0bb', 'A5628813A266', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:18:12'),
('d849cab4-83ac-11ec-a00e-16aa0443c0bb', 'A5628813A267', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-02-01 22:18:12'),
('d8e7c7f0-61a5-11ec-adc8-16aa0443c0bb', 'A684730EA011', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:02:27'),
('d8e7db8a-61a5-11ec-adc8-16aa0443c0bb', 'A684730EA012', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:02:27'),
('da1cca98-6201-11ec-adc8-16aa0443c0bb', 'A5FB09C2A001', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:01:03'),
('da1d2f95-6201-11ec-adc8-16aa0443c0bb', 'A5FB09C2A002', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 02:01:03'),
('e65c179f-629b-11ec-adc8-16aa0443c0bb', 'A4D88C5BA005', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:23:46'),
('e65c31b4-629b-11ec-adc8-16aa0443c0bb', 'A4D88C5BA006', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:23:46'),
('e6861411-61a6-11ec-adc8-16aa0443c0bb', 'A684730EA019', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:10:00'),
('e69e83f1-61a6-11ec-adc8-16aa0443c0bb', 'A684730EA020', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:10:00'),
('e6caffaa-643d-11ec-adc8-16aa0443c0bb', 'A45F8B2BA221', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:15:56'),
('e6cb1cb6-643d-11ec-adc8-16aa0443c0bb', 'A45F8B2BA222', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:15:56'),
('e6cb341a-643d-11ec-adc8-16aa0443c0bb', 'A45F8B2BA223', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:15:56'),
('e7325b51-629b-11ec-adc8-16aa0443c0bb', 'A684730EA036', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:23:47'),
('e732774a-629b-11ec-adc8-16aa0443c0bb', 'A684730EA037', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:23:47'),
('e7631c5e-629b-11ec-adc8-16aa0443c0bb', 'A5FB09C2A003', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:23:48'),
('e763380b-629b-11ec-adc8-16aa0443c0bb', 'A5FB09C2A004', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:23:48'),
('e861a554-629b-11ec-adc8-16aa0443c0bb', 'A5628813A005', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:23:49'),
('e861c040-629b-11ec-adc8-16aa0443c0bb', 'A5628813A006', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-21 20:23:49'),
('e8adc607-643d-11ec-adc8-16aa0443c0bb', 'A4D88C5BA221', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:00'),
('e8ade599-643d-11ec-adc8-16aa0443c0bb', 'A4D88C5BA222', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:00'),
('e8adfe09-643d-11ec-adc8-16aa0443c0bb', 'A4D88C5BA223', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:00'),
('e9af5edd-643d-11ec-adc8-16aa0443c0bb', 'A5628813A221', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:01'),
('e9af7cd9-643d-11ec-adc8-16aa0443c0bb', 'A5628813A222', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:01'),
('e9b1855f-643d-11ec-adc8-16aa0443c0bb', 'A5628813A223', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:01'),
('eda8c728-7245-11ec-adc8-16aa0443c0bb', 'A684730EA227', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:40'),
('eda8e18f-7245-11ec-adc8-16aa0443c0bb', 'A684730EA228', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:40'),
('f0081cb6-7245-11ec-adc8-16aa0443c0bb', 'A4D88C5BA226', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:44'),
('f00838af-7245-11ec-adc8-16aa0443c0bb', 'A4D88C5BA227', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:44'),
('f0eafb7f-73e5-11ec-adc8-16aa0443c0bb', 'A684730EA237', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:36'),
('f0eb1659-73e5-11ec-adc8-16aa0443c0bb', 'A684730EA238', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:36'),
('f162aa7e-73e5-11ec-adc8-16aa0443c0bb', 'A4D88C5BA236', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:37'),
('f162c4fe-73e5-11ec-adc8-16aa0443c0bb', 'A4D88C5BA237', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:37'),
('f2721333-73e5-11ec-adc8-16aa0443c0bb', 'A45F8B2BA236', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:39'),
('f272ec58-73e5-11ec-adc8-16aa0443c0bb', 'A45F8B2BA237', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:39'),
('f2e6c68b-61a7-11ec-adc8-16aa0443c0bb', 'A684730EA023', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:17:30'),
('f2e6dd2c-61a7-11ec-adc8-16aa0443c0bb', 'A684730EA024', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-20 15:17:30'),
('f32ae562-73e5-11ec-adc8-16aa0443c0bb', 'A5FB09C2A232', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:40'),
('f3302a60-73e5-11ec-adc8-16aa0443c0bb', 'A5FB09C2A233', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:40'),
('f35a97a9-7245-11ec-adc8-16aa0443c0bb', 'A45F8B2BA226', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:50'),
('f35ab2ba-7245-11ec-adc8-16aa0443c0bb', 'A45F8B2BA227', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:50'),
('f426068e-7245-11ec-adc8-16aa0443c0bb', 'A5FB09C2A224', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:51'),
('f4262037-7245-11ec-adc8-16aa0443c0bb', 'A5FB09C2A225', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:51'),
('f461247b-7245-11ec-adc8-16aa0443c0bb', 'A5628813A226', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:51'),
('f4613ede-7245-11ec-adc8-16aa0443c0bb', 'A5628813A227', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-10 18:48:51'),
('f48924b2-73e5-11ec-adc8-16aa0443c0bb', 'A5628813A234', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:42'),
('f4893faf-73e5-11ec-adc8-16aa0443c0bb', 'A5628813A235', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 20:26:42'),
('f7064769-643d-11ec-adc8-16aa0443c0bb', 'A684730EA221', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:24'),
('f7066577-643d-11ec-adc8-16aa0443c0bb', 'A684730EA222', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:24'),
('f7067d98-643d-11ec-adc8-16aa0443c0bb', 'A684730EA223', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:24'),
('f7c4be93-73c5-11ec-adc8-16aa0443c0bb', 'A684730EA231', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:37:44'),
('f7f672b4-73c5-11ec-adc8-16aa0443c0bb', 'A4D88C5BA230', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:37:44'),
('f822b6fd-643d-11ec-adc8-16aa0443c0bb', 'A5FB09C2A219', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:26'),
('f822d62f-643d-11ec-adc8-16aa0443c0bb', 'A5FB09C2A220', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:26'),
('f8238cca-643d-11ec-adc8-16aa0443c0bb', 'A5FB09C2A221', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:16:26'),
('f8e6213c-73c5-11ec-adc8-16aa0443c0bb', 'A45F8B2BA230', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:37:46'),
('f9183497-73c5-11ec-adc8-16aa0443c0bb', 'A5FB09C2A226', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:37:46'),
('f9e3fc74-73c5-11ec-adc8-16aa0443c0bb', 'A5628813A228', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2022-01-12 16:37:47'),
('fd33ade9-643c-11ec-adc8-16aa0443c0bb', 'A684730EA219', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:25'),
('fd33c8e3-643c-11ec-adc8-16aa0443c0bb', 'A684730EA220', 'b8368d69-03d3-49cf-aadf-2c37769bd371', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'cesarxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:25'),
('fd507606-643c-11ec-adc8-16aa0443c0bb', 'A4D88C5BA219', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:25'),
('fd509074-643c-11ec-adc8-16aa0443c0bb', 'A4D88C5BA220', '38cf81b7-4ae9-44e7-be7b-9502ebb28efd', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'leonardoxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:25'),
('fdc0109e-643c-11ec-adc8-16aa0443c0bb', 'A45F8B2BA219', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:25'),
('fdc02b2d-643c-11ec-adc8-16aa0443c0bb', 'A45F8B2BA220', '1c0db742-b6d2-42a1-ae11-fbafb3200916', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'dannyxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:25'),
('fe837818-643c-11ec-adc8-16aa0443c0bb', 'A5FB09C2A217', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:27'),
('fe85949c-643c-11ec-adc8-16aa0443c0bb', 'A5FB09C2A218', '83c21021-bc2a-4c29-856e-e17da7bd6d5d', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'felipexertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:27'),
('fef3c618-643c-11ec-adc8-16aa0443c0bb', 'A5628813A219', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:27'),
('fef3e006-643c-11ec-adc8-16aa0443c0bb', 'A5628813A220', '04b2a22e-c037-418a-987b-64b28894ce06', 'eyJiZWdpbiI6IjIwMjEtMTAtMzAgMTE6MDg6MDUiLCJlbmQiOiIyMDI2LTEwLTMwIDExOjA4OjA1IiwiY2VydGlmaWNhdGVfY29kZSI6IkE0NUY4QjJCQTAwMSJ9', 'jhezirxertify@yopmail.com', 'P', NULL, NULL, 'A', 'X', '2021-12-23 22:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `t_settings`
--

CREATE TABLE `t_settings` (
  `T_SETT_ID` char(36) NOT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_settings_customer`
--

CREATE TABLE `t_settings_customer` (
  `T_SETT_CUST_ID` char(36) NOT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `KEY_SETTINGS` char(4) DEFAULT NULL,
  `STATUS` char(1) DEFAULT 'A',
  `CREATION_DATE` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_signature`
--

CREATE TABLE `t_signature` (
  `ID_SIGNATURE` char(36) CHARACTER SET utf8mb4 NOT NULL,
  `ACC_ID` char(36) NOT NULL,
  `URL_S3` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `STATUS` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL,
  `SIGN_NAME` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `SIGN_FONT` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `SIGN_CHARGE` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `DPER_ID` char(36) DEFAULT NULL COMMENT 'Foreign Key T_CUSTOMER_LEGAL_ID'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_skills`
--

CREATE TABLE `t_skills` (
  `SKILL_ID` char(36) NOT NULL,
  `TYPE` char(1) NOT NULL COMMENT 'S=Soft H=Hard',
  `NAME_ES` varchar(100) NOT NULL,
  `NAME_EN` varchar(100) NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `STATUS` char(1) NOT NULL DEFAULT 'A' COMMENT 'A=Active I=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_skills_company_group`
--

CREATE TABLE `t_skills_company_group` (
  `SKILL_ID` char(36) NOT NULL,
  `PROD_ID` char(36) NOT NULL,
  `STATUS` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_tablahelper`
--

CREATE TABLE `t_tablahelper` (
  `idTablaTempora` char(36) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_tablahelper`
--

INSERT INTO `t_tablahelper` (`idTablaTempora`, `fecha`, `descripcion`) VALUES
('e65bed67-629b-11ec-adc8-16aa0443c0bb', '2021-12-21 20:23:46', 'Zero call'),
('e65c3d25-629b-11ec-adc8-16aa0443c0bb', '2021-12-21 20:23:46', 'Final step'),
('e7322e23-629b-11ec-adc8-16aa0443c0bb', '2021-12-21 20:23:47', 'Zero call'),
('e7328365-629b-11ec-adc8-16aa0443c0bb', '2021-12-21 20:23:47', 'Final step'),
('e762f1fc-629b-11ec-adc8-16aa0443c0bb', '2021-12-21 20:23:48', 'Zero call'),
('e763439c-629b-11ec-adc8-16aa0443c0bb', '2021-12-21 20:23:48', 'Final step'),
('e8617a7d-629b-11ec-adc8-16aa0443c0bb', '2021-12-21 20:23:49', 'Zero call'),
('e861cc22-629b-11ec-adc8-16aa0443c0bb', '2021-12-21 20:23:49', 'Final step'),
('4443abc4-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:33', 'Zero call'),
('4443fa9a-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:33', 'Final step'),
('4535fe61-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:35', 'Zero call'),
('45364f41-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:35', 'Final step'),
('45b89b6e-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:36', 'Zero call'),
('45b8ee88-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:36', 'Final step'),
('46f73710-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:38', 'Zero call'),
('46f7c605-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:38', 'Final step'),
('482ad1b0-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:40', 'Zero call'),
('482d50cc-629d-11ec-adc8-16aa0443c0bb', '2021-12-21 20:33:40', 'Final step'),
('1904a621-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:40', 'Zero call'),
('1905d68d-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:40', 'Final step'),
('1946cf20-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:40', 'Zero call'),
('19474f65-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:40', 'Final step'),
('1992d91b-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:41', 'Zero call'),
('19932c52-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:41', 'Final step'),
('1a3aa6e4-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:42', 'Zero call'),
('1a3c8a0f-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:42', 'Final step'),
('1aaaaad4-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:42', 'Zero call'),
('1aaaffbd-629f-11ec-adc8-16aa0443c0bb', '2021-12-21 20:46:42', 'Final step'),
('280dafaf-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:14', 'Zero call'),
('280efbf3-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:14', 'Final step'),
('28223359-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:14', 'Zero call'),
('28228791-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:14', 'Final step'),
('2a12841d-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:18', 'Zero call'),
('2a12d6e7-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:18', 'Final step'),
('2c29ee2c-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:21', 'Zero call'),
('2c2a3d4d-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:21', 'Final step'),
('2c529618-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:21', 'Zero call'),
('2c52ed7d-62a0-11ec-adc8-16aa0443c0bb', '2021-12-21 20:54:21', 'Final step'),
('2aa2bb9f-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:03', 'Zero call'),
('2aa48b0b-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:03', 'Final step'),
('2ae4a60b-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:04', 'Zero call'),
('2ae4fc42-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:04', 'Final step'),
('2b093521-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:04', 'Zero call'),
('2b0a9e31-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:04', 'Final step'),
('2d047c4f-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:07', 'Zero call'),
('2d05bd7a-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:07', 'Final step'),
('2e20d5f6-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:09', 'Zero call'),
('2e212a2c-62ab-11ec-adc8-16aa0443c0bb', '2021-12-21 22:13:09', 'Final step'),
('66eb4a68-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:07:56', 'Zero call'),
('66eb9c28-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:07:56', 'Final step'),
('6b6d2c6d-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:08:04', 'Zero call'),
('6b6d7df6-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:08:04', 'Final step'),
('6bdc4240-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:08:05', 'Zero call'),
('6bdc92f1-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:08:05', 'Final step'),
('6c27f1c9-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:08:05', 'Zero call'),
('6c2b81e6-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:08:05', 'Final step'),
('6cc87432-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:08:06', 'Zero call'),
('6cc8c451-6434-11ec-adc8-16aa0443c0bb', '2021-12-23 21:08:06', 'Final step'),
('53507cb0-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:43', 'Zero call'),
('535110e0-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:43', 'Final step'),
('53aad9ae-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:43', 'Zero call'),
('53ab296e-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:43', 'Final step'),
('54df0766-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:45', 'Zero call'),
('54df57ec-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:45', 'Final step'),
('55f7d75d-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:47', 'Zero call'),
('55f82a71-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:47', 'Final step'),
('571fca3b-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:49', 'Zero call'),
('57201bcb-6436-11ec-adc8-16aa0443c0bb', '2021-12-23 21:21:49', 'Final step'),
('4a1e2cc2-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:46', 'Zero call'),
('4a1e7e62-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:46', 'Final step'),
('4a54538d-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:46', 'Zero call'),
('4a54a3a3-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:46', 'Final step'),
('4a84b698-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:47', 'Zero call'),
('4a85080a-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:47', 'Final step'),
('4cc266f8-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:51', 'Zero call'),
('4cc2bd9a-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:51', 'Final step'),
('4ce2b9f0-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:51', 'Zero call'),
('4ce30d97-6438-11ec-adc8-16aa0443c0bb', '2021-12-23 21:35:51', 'Final step'),
('ad128487-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:42', 'Zero call'),
('ad12d540-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:42', 'Final step'),
('af67f69b-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:46', 'Zero call'),
('af6869b9-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:46', 'Final step'),
('af7ffae3-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:46', 'Zero call'),
('af805309-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:46', 'Final step'),
('b3d4fb0f-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:53', 'Zero call'),
('b3d54bd7-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:53', 'Final step'),
('b412afe1-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:53', 'Zero call'),
('b4153e83-6439-11ec-adc8-16aa0443c0bb', '2021-12-23 21:45:53', 'Final step'),
('50805760-643b-11ec-adc8-16aa0443c0bb', '2021-12-23 21:57:25', 'Zero call'),
('50834326-643b-11ec-adc8-16aa0443c0bb', '2021-12-23 21:57:25', 'Final step'),
('50eb25f8-643b-11ec-adc8-16aa0443c0bb', '2021-12-23 21:57:26', 'Zero call'),
('50eb7a00-643b-11ec-adc8-16aa0443c0bb', '2021-12-23 21:57:26', 'Final step'),
('5104c05a-643b-11ec-adc8-16aa0443c0bb', '2021-12-23 21:57:26', 'Zero call'),
('5107b237-643b-11ec-adc8-16aa0443c0bb', '2021-12-23 21:57:26', 'Final step'),
('584b89df-643b-11ec-adc8-16aa0443c0bb', '2021-12-23 21:57:38', 'Zero call'),
('584bdb03-643b-11ec-adc8-16aa0443c0bb', '2021-12-23 21:57:38', 'Final step'),
('fd3382ab-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:25', 'Zero call'),
('fd33d4b3-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:25', 'Final step'),
('fd504c19-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:25', 'Zero call'),
('fd509c8c-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:25', 'Final step'),
('fdbfbc7c-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:25', 'Zero call'),
('fdc0365a-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:25', 'Final step'),
('fe834de2-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:27', 'Zero call'),
('fe85a1d9-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:27', 'Final step'),
('fef39c4c-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:27', 'Zero call'),
('fef3eb41-643c-11ec-adc8-16aa0443c0bb', '2021-12-23 22:09:27', 'Final step'),
('e6cacd52-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:15:56', 'Zero call'),
('e6ccf7a8-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:15:56', 'Final step'),
('e8ac201e-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:16:00', 'Zero call'),
('e8af0ad8-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:16:00', 'Final step'),
('e9af2c71-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:16:01', 'Zero call'),
('e9b192b9-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:16:01', 'Final step'),
('f70614e4-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:16:24', 'Zero call'),
('f7068a45-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:16:24', 'Final step'),
('f82281ba-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:16:26', 'Zero call'),
('f82398b5-643d-11ec-adc8-16aa0443c0bb', '2021-12-23 22:16:26', 'Final step'),
('0407ee8e-7240-11ec-adc8-16aa0443c0bb', '2022-01-10 18:06:21', 'Zero call'),
('0408264d-7240-11ec-adc8-16aa0443c0bb', '2022-01-10 18:06:21', 'Final step'),
('59729dc3-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:32', 'Zero call'),
('5972ec72-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:32', 'Final step'),
('59aca3f6-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:32', 'Zero call'),
('59acf68e-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:32', 'Final step'),
('5b3001f7-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:34', 'Zero call'),
('5b305232-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:34', 'Final step'),
('5b7e91e4-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:35', 'Zero call'),
('5b7eed3e-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:35', 'Final step'),
('5db5e7d1-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:39', 'Zero call'),
('5db63aef-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:44:39', 'Final step'),
('eda89a62-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:40', 'Zero call'),
('eda8ecfd-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:40', 'Final step'),
('f007f03f-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:44', 'Zero call'),
('f008471c-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:44', 'Final step'),
('f35a69c1-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:50', 'Zero call'),
('f35abea9-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:50', 'Final step'),
('f425db92-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:51', 'Zero call'),
('f4262cbb-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:51', 'Final step'),
('f460fa98-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:51', 'Zero call'),
('f4614a3d-7245-11ec-adc8-16aa0443c0bb', '2022-01-10 18:48:51', 'Final step'),
('680d6aea-7246-11ec-adc8-16aa0443c0bb', '2022-01-10 18:52:06', 'Zero call'),
('680dbae9-7246-11ec-adc8-16aa0443c0bb', '2022-01-10 18:52:06', 'Final step'),
('68707ec3-7246-11ec-adc8-16aa0443c0bb', '2022-01-10 18:52:06', 'Zero call'),
('6870df72-7246-11ec-adc8-16aa0443c0bb', '2022-01-10 18:52:06', 'Final step'),
('6962eb5b-7246-11ec-adc8-16aa0443c0bb', '2022-01-10 18:52:08', 'Zero call'),
('69633e7f-7246-11ec-adc8-16aa0443c0bb', '2022-01-10 18:52:08', 'Final step'),
('f7c49806-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:44', 'Zero call'),
('f7c4d205-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:44', 'Final step'),
('f7f64e99-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:44', 'Zero call'),
('f7f682b8-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:44', 'Final step'),
('f8e5fbe5-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:46', 'Zero call'),
('f8e63228-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:46', 'Final step'),
('f9180be7-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:46', 'Zero call'),
('f918461f-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:46', 'Final step'),
('f9e3d877-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:47', 'Zero call'),
('f9e41b4d-73c5-11ec-adc8-16aa0443c0bb', '2022-01-12 16:37:47', 'Final step'),
('2522a2dd-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:10', 'Zero call'),
('2522d6dc-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:10', 'Final step'),
('259a8904-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:10', 'Zero call'),
('259abf59-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:10', 'Final step'),
('2618c103-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:11', 'Zero call'),
('2618f4d3-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:11', 'Final step'),
('263bc85a-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:11', 'Zero call'),
('263c0208-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:11', 'Final step'),
('26ef718b-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:13', 'Zero call'),
('26efa3b4-73c7-11ec-adc8-16aa0443c0bb', '2022-01-12 16:46:13', 'Final step'),
('52514503-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:44', 'Zero call'),
('52526612-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:44', 'Final step'),
('526962c0-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:44', 'Zero call'),
('5269b914-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:44', 'Final step'),
('53fcafe1-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:47', 'Zero call'),
('53fd0201-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:47', 'Final step'),
('5560ef66-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:49', 'Zero call'),
('5561477c-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:49', 'Final step'),
('55f5c01c-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:50', 'Zero call'),
('55f61241-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:50', 'Final step'),
('573aaf95-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:53', 'Zero call'),
('573c5d9e-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:53', 'Final step'),
('578464d1-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:53', 'Zero call'),
('5784ba11-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:53', 'Final step'),
('5a37d3c3-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:58', 'Zero call'),
('5a382a91-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:01:58', 'Final step'),
('5d1ad71d-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:02:02', 'Zero call'),
('5d1c849b-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:02:02', 'Final step'),
('6b401726-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:02:26', 'Zero call'),
('6b412205-73c9-11ec-adc8-16aa0443c0bb', '2022-01-12 17:02:26', 'Final step'),
('f0eaced0-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:36', 'Zero call'),
('f0eb21f5-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:36', 'Final step'),
('f1627a42-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:37', 'Zero call'),
('f162d0bf-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:37', 'Final step'),
('f271e637-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:39', 'Zero call'),
('f2736e81-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:39', 'Final step'),
('f32ab8ba-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:40', 'Zero call'),
('f3303ba7-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:40', 'Final step'),
('f488f962-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:42', 'Zero call'),
('f48a8fc8-73e5-11ec-adc8-16aa0443c0bb', '2022-01-12 20:26:42', 'Final step'),
('6058577b-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:43', 'Zero call'),
('6058a9fb-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:43', 'Final step'),
('60c6998e-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:44', 'Zero call'),
('60c6ee16-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:44', 'Final step'),
('61c983b9-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:46', 'Zero call'),
('61c9d81a-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:46', 'Final step'),
('668503ea-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:54', 'Zero call'),
('66855630-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:54', 'Final step'),
('67962687-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:55', 'Zero call'),
('67973605-73e6-11ec-adc8-16aa0443c0bb', '2022-01-12 20:29:55', 'Final step'),
('76694505-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:49', 'Zero call'),
('76699683-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:49', 'Final step'),
('78bb331a-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:53', 'Zero call'),
('78bb856e-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:53', 'Final step'),
('79538083-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:54', 'Zero call'),
('7953d7b0-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:54', 'Final step'),
('79827538-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:54', 'Zero call'),
('7982d075-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:54', 'Final step'),
('79bd56c7-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:54', 'Zero call'),
('79be5f58-73e9-11ec-adc8-16aa0443c0bb', '2022-01-12 20:51:54', 'Final step'),
('b26d982f-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:48', 'Zero call'),
('b26f6169-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:48', 'Zero call'),
('b2707ecf-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:48', 'Final step'),
('b272c9d1-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:48', 'Final step'),
('b2919750-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:49', 'Zero call'),
('b291e8ec-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:49', 'Final step'),
('b55136b3-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:53', 'Zero call'),
('b55189d6-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:53', 'Final step'),
('b5852fc2-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:54', 'Zero call'),
('b5858a9a-73eb-11ec-adc8-16aa0443c0bb', '2022-01-12 21:07:54', 'Final step'),
('2d613367-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:51', 'Zero call'),
('2d65a7fa-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:51', 'Final step'),
('2def9751-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:52', 'Zero call'),
('2df0144f-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:52', 'Final step'),
('2dfa72c8-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:52', 'Zero call'),
('2dfae9b7-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:52', 'Final step'),
('2eb00f2f-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:53', 'Zero call'),
('2eb0c208-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:53', 'Final step'),
('2ee2cd9a-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:53', 'Zero call'),
('2ee3441d-7874-11ec-b0e9-16aa0443c0bb', '2022-01-18 15:34:53', 'Final step'),
('b7997f61-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:51:59', 'Zero call'),
('b79a0202-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:51:59', 'Final step'),
('b7afa4f1-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:51:59', 'Zero call'),
('b7b05d4b-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:51:59', 'Final step'),
('b849c758-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:52:00', 'Zero call'),
('b84a23e4-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:52:00', 'Final step'),
('b84d36f6-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:52:00', 'Zero call'),
('b84fde95-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:52:00', 'Final step'),
('b85a4f85-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:52:01', 'Zero call'),
('b85ab148-788f-11ec-b0e9-16aa0443c0bb', '2022-01-18 18:52:01', 'Final step'),
('85637ed1-7898-11ec-b0e9-16aa0443c0bb', '2022-01-18 19:55:00', 'Zero call'),
('85664936-7898-11ec-b0e9-16aa0443c0bb', '2022-01-18 19:55:00', 'Final step'),
('85ca3723-7898-11ec-b0e9-16aa0443c0bb', '2022-01-18 19:55:01', 'Zero call'),
('85ca8b8a-7898-11ec-b0e9-16aa0443c0bb', '2022-01-18 19:55:01', 'Final step'),
('85d55cdb-7898-11ec-b0e9-16aa0443c0bb', '2022-01-18 19:55:01', 'Zero call'),
('85d5b1ab-7898-11ec-b0e9-16aa0443c0bb', '2022-01-18 19:55:01', 'Final step'),
('8c356c46-7898-11ec-b0e9-16aa0443c0bb', '2022-01-18 19:55:12', 'Zero call'),
('8c3681da-7898-11ec-b0e9-16aa0443c0bb', '2022-01-18 19:55:12', 'Final step'),
('8c2e4174-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:23:50', 'Zero call'),
('8c2ffd7b-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:23:50', 'Final step'),
('918a5486-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:23:59', 'Zero call'),
('918aaac9-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:23:59', 'Final step'),
('935def02-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:24:02', 'Zero call'),
('935e471b-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:24:02', 'Final step'),
('93f80b72-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:24:03', 'Zero call'),
('93fa486f-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:24:03', 'Final step'),
('93fd324f-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:24:03', 'Zero call'),
('93ff8265-789c-11ec-b0e9-16aa0443c0bb', '2022-01-18 20:24:03', 'Final step'),
('80816c36-7d5c-11ec-a00e-16aa0443c0bb', '2022-01-24 21:27:58', 'Zero call'),
('80840974-7d5c-11ec-a00e-16aa0443c0bb', '2022-01-24 21:27:58', 'Final step'),
('80957356-7d5c-11ec-a00e-16aa0443c0bb', '2022-01-24 21:27:58', 'Zero call'),
('8095919a-7d5c-11ec-a00e-16aa0443c0bb', '2022-01-24 21:27:58', 'Zero call'),
('8095cc06-7d5c-11ec-a00e-16aa0443c0bb', '2022-01-24 21:27:58', 'Final step'),
('80986e7e-7d5c-11ec-a00e-16aa0443c0bb', '2022-01-24 21:27:58', 'Final step'),
('86f296d7-7d5c-11ec-a00e-16aa0443c0bb', '2022-01-24 21:28:09', 'Zero call'),
('86f2eea5-7d5c-11ec-a00e-16aa0443c0bb', '2022-01-24 21:28:09', 'Final step'),
('68bb544e-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:01', 'Zero call'),
('68bbb181-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:01', 'Final step'),
('692a10b1-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:02', 'Zero call'),
('692bc92f-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:02', 'Final step'),
('6aab612c-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:04', 'Zero call'),
('6aabc10a-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:04', 'Final step'),
('6ad28ebe-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:04', 'Zero call'),
('6ad3a8e2-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:04', 'Final step'),
('6bd7ce95-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:06', 'Zero call'),
('6bd90b95-8379-11ec-a00e-16aa0443c0bb', '2022-02-01 16:10:06', 'Final step'),
('9e9310ab-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:50', 'Zero call'),
('9e9489b7-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:50', 'Final step'),
('9f43a92b-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:51', 'Zero call'),
('9f440666-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:51', 'Final step'),
('9f7ea688-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:52', 'Zero call'),
('9f7f0389-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:52', 'Final step'),
('9fc15de8-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:52', 'Zero call'),
('9fc277d3-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:52', 'Final step'),
('a142e745-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:55', 'Zero call'),
('a1434083-837b-11ec-a00e-16aa0443c0bb', '2022-02-01 16:25:55', 'Final step'),
('925a825a-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Zero call'),
('925ae185-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Final step'),
('925cc3bf-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Zero call'),
('925d1cad-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Final step'),
('92616f99-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Zero call'),
('9261cc1d-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Final step'),
('9276626a-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Zero call'),
('9276bbd2-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Final step'),
('927fc7d5-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Zero call'),
('92802609-8386-11ec-a00e-16aa0443c0bb', '2022-02-01 17:44:14', 'Final step'),
('71fe34ed-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:36', 'Zero call'),
('71fe90cf-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:36', 'Final step'),
('7243aba0-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:36', 'Zero call'),
('72440b01-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:36', 'Final step'),
('73c5b77a-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:39', 'Zero call'),
('73c6193a-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:39', 'Final step'),
('73cb9c21-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:39', 'Zero call'),
('73cbf8ad-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:39', 'Final step'),
('7542820b-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:41', 'Zero call'),
('7542e20c-838e-11ec-a00e-16aa0443c0bb', '2022-02-01 18:40:41', 'Final step'),
('9b30be5b-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:04', 'Zero call'),
('9b311b10-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:04', 'Final step'),
('9b37a2ce-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:04', 'Zero call'),
('9b38023e-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:04', 'Final step'),
('9bdac065-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:05', 'Zero call'),
('9bdb2097-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:05', 'Final step'),
('9ce9cd1c-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:07', 'Zero call'),
('9cea2a54-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:07', 'Final step'),
('9e940217-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:10', 'Zero call'),
('9e95471b-8390-11ec-a00e-16aa0443c0bb', '2022-02-01 18:56:10', 'Final step'),
('5138fe93-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:38', 'Zero call'),
('51395e98-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:38', 'Final step'),
('515e809d-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:38', 'Zero call'),
('515edf92-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:38', 'Final step'),
('51b67f61-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:39', 'Zero call'),
('51b6e07a-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:39', 'Final step'),
('51ed4d56-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:39', 'Zero call'),
('51ee90fc-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:39', 'Final step'),
('536b3615-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:41', 'Zero call'),
('536b979c-8394-11ec-a00e-16aa0443c0bb', '2022-02-01 19:22:41', 'Final step'),
('85d7863a-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 19:59:54', 'Zero call'),
('85d7e61a-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 19:59:54', 'Final step'),
('863f661a-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 19:59:54', 'Zero call'),
('8640c09d-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 19:59:54', 'Final step'),
('886e055f-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 19:59:58', 'Zero call'),
('886e668d-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 19:59:58', 'Final step'),
('890a4a2b-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 19:59:59', 'Zero call'),
('890b711f-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 19:59:59', 'Final step'),
('8a199c9a-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 20:00:01', 'Zero call'),
('8a19fefa-8399-11ec-a00e-16aa0443c0bb', '2022-02-01 20:00:01', 'Final step'),
('cf1cc5bc-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:17:57', 'Zero call'),
('cf1d2c9c-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:17:57', 'Final step'),
('cfe53cee-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:17:58', 'Zero call'),
('cfe5a377-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:17:58', 'Final step'),
('d0f20722-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:18:00', 'Zero call'),
('d0f26834-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:18:00', 'Final step'),
('d6658388-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:18:09', 'Zero call'),
('d665e201-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:18:09', 'Final step'),
('d8497ea8-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:18:12', 'Zero call'),
('d849de04-83ac-11ec-a00e-16aa0443c0bb', '2022-02-01 22:18:12', 'Final step'),
('0f4e04b6-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:04', 'Zero call'),
('0f4e6b3e-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:04', 'Final step'),
('0f594290-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:04', 'Zero call'),
('0f59a4ef-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:04', 'Final step'),
('0fba01a2-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:04', 'Zero call'),
('0fbb3511-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:04', 'Final step'),
('101d8401-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:05', 'Zero call'),
('101de751-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:05', 'Final step'),
('10b7190d-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:06', 'Zero call'),
('10b778e4-83af-11ec-a00e-16aa0443c0bb', '2022-02-01 22:34:06', 'Final step'),
('9956e753-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:05', 'Zero call'),
('99574eb2-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:05', 'Final step'),
('99cd4743-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:05', 'Zero call'),
('99cda8fe-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:05', 'Final step'),
('9aa9f09f-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:07', 'Zero call'),
('9aaa52f4-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:07', 'Final step'),
('9bb61526-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:09', 'Zero call'),
('9bb67a99-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:09', 'Final step'),
('9be5e47c-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:09', 'Zero call'),
('9be64b45-83b0-11ec-a00e-16aa0443c0bb', '2022-02-01 22:45:09', 'Final step'),
('1ff322ec-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:54', 'Zero call'),
('1ff392b9-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:54', 'Final step'),
('2088c837-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:55', 'Zero call'),
('2089e78b-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:55', 'Final step'),
('20df95f2-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:56', 'Zero call'),
('20dffeb7-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:56', 'Final step'),
('210f7827-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:56', 'Zero call'),
('210fddee-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:56', 'Final step'),
('21b51832-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:57', 'Zero call'),
('21b8ae55-83be-11ec-a00e-16aa0443c0bb', '2022-02-02 00:21:57', 'Final step');

-- --------------------------------------------------------

--
-- Table structure for table `t_template`
--

CREATE TABLE `t_template` (
  `TEMPLATE_ID` char(36) NOT NULL COMMENT 'TEMP_ID PK of T_TAMPLATE',
  `ACC_ID` char(36) NOT NULL,
  `NAME` char(50) DEFAULT NULL,
  `DESCRIPTION` char(100) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT 'A',
  `DATE_CREATION` timestamp NULL DEFAULT NULL,
  `DATE_UPDATE` timestamp NULL DEFAULT NULL,
  `USER` char(100) DEFAULT NULL,
  `DEFAULT_LANG` char(3) NOT NULL DEFAULT 'es',
  `TYPE` char(1) NOT NULL DEFAULT 'B' COMMENT 'TypeA=Sin Blockchain,TypeB=Con Blockchain,TypeC=Insignias,TypeD=Contratos',
  `PKPASS` int(11) NOT NULL DEFAULT 0 COMMENT '0 false, 1 true, card iphone',
  `STORED` char(1) NOT NULL DEFAULT '1' COMMENT '0 false, 1 true',
  `TYPE_FILE` char(4) DEFAULT NULL,
  `LANGUAGES` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`LANGUAGES`)),
  `PAGE_SIZE` varchar(10) DEFAULT NULL,
  `PAGE_ORIENTATION` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_template`
--

INSERT INTO `t_template` (`TEMPLATE_ID`, `ACC_ID`, `NAME`, `DESCRIPTION`, `STATUS`, `DATE_CREATION`, `DATE_UPDATE`, `USER`, `DEFAULT_LANG`, `TYPE`, `PKPASS`, `STORED`, `TYPE_FILE`, `LANGUAGES`, `PAGE_SIZE`, `PAGE_ORIENTATION`) VALUES
('${imagex}', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Simposio', NULL, 'A', '2021-12-16 03:57:51', NULL, NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('016b8161-ce5d-4a30-99cf-30a8a2ce2985', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Prueba para borrar plantilla', NULL, 'I', '2021-12-08 20:22:34', '2021-12-08 20:55:54', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('0d5d2e2c-e6cc-4f61-82e6-0e906ab42177', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Prueba para clonar plantilla', NULL, 'A', '2021-12-09 15:28:16', '2021-12-09 15:42:07', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('14b38e15-59cf-4492-ad94-09c839492868', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'html', NULL, 'A', '2022-01-21 18:58:03', '2022-01-21 19:46:28', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('26910c13-ceaf-47d8-8af3-903503ce0df7', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'NewTemplate/NuevaPlantilla_1637679463604', NULL, 'A', '2021-11-23 14:57:44', '2021-11-23 14:58:29', NULL, 'es', 'B', 0, '1', 'PPTX', '[3]', 'B', 'C'),
('2c34d500-652a-4cbc-8dcb-1880aa9c9284', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'NewTemplate/NuevaPlantilla_1637679463604 copy', NULL, 'A', '2021-12-09 18:32:19', NULL, NULL, 'es', 'B', 0, '1', 'PPTX', '[3]', 'B', 'C'),
('34eacceb-7697-4ca7-b09c-caff5a279676', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'id template', NULL, 'I', '2021-12-09 03:30:53', '2021-12-09 16:20:03', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('38f8e818-81f8-4754-ab17-037bdd42cca1', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Prueba Ok YEP', NULL, 'A', '2021-11-01 05:25:10', '2021-11-01 05:35:24', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('5ff17624-0516-411d-bb41-ac823be717a7', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Prueba para clonar plantilla copy copy copy', NULL, 'I', '2021-12-09 16:46:13', '2021-12-09 16:55:06', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('6edc5255-558f-4557-9731-a8352b9335cd', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Prueba para clonar plantilla copy', NULL, 'I', '2021-12-09 15:43:45', '2021-12-09 16:56:32', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('7e883a15-ddc6-4251-83a6-cff47d205ff7', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'NewTemplate/NuevaPlantilla_1635743869881 copy', NULL, 'I', '2021-12-09 15:45:04', '2021-12-09 15:58:27', NULL, 'es', 'B', 0, '1', 'PPTX', '[3]', 'B', 'C'),
('8446db67-4f88-4385-85e5-0c413a039789', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'pruebas', NULL, 'I', '2021-12-08 18:16:22', '2021-12-08 19:48:32', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('8d4486f7-9682-4456-8835-418e1eefa92a', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Prueba para borrar plantilla', NULL, 'I', '2021-12-08 20:58:39', '2021-12-09 16:58:33', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('93a00033-7aab-454c-b36c-b1f97c5032d4', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'NewTemplate/NuevaPlantilla_1637679463604 copy', NULL, 'I', '2021-12-09 16:58:45', '2021-12-09 18:16:03', NULL, 'es', 'B', 0, '1', 'PPTX', '[3]', 'B', 'C'),
('b51c4d42-1abb-4481-9cc7-20186ef87a9e', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Prueba para clonar plantilla copy copy', NULL, 'I', '2021-12-09 16:22:03', '2021-12-09 16:55:40', NULL, 'es', 'B', 0, '1', 'HTML', '[3]', 'B', 'C'),
('d5979310-9683-4f48-9686-736ca01c41d9', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'Jhezir probando', NULL, 'A', '2021-12-21 03:11:48', '2022-01-21 19:54:11', NULL, 'es', 'B', 0, '1', 'PPTX', '[3]', 'B', 'C'),
('d95c4a86-175c-482d-b79b-52eae06160bb', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'NewTemplate/NuevaPlantilla_1635743869881', NULL, 'A', '2021-11-01 05:18:13', '2021-11-01 05:20:07', NULL, 'es', 'B', 0, '1', 'PPTX', '[3]', 'B', 'C'),
('eaaf72b5-701a-41e1-a5b4-2a938d87f95f', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'SelfSovereignIdentity - prueba', 'aEnglishDiploma', 'A', '2019-09-19 00:00:00', '2021-10-30 23:06:57', 'emprendecondatos@dinodocs.co', 'es', 'B', 0, '0', NULL, NULL, NULL, NULL),
('f2ba542d-f554-40cd-b7b4-92c65d0adf65', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'NewTemplate/NuevaPlantilla_1637679463604 copy', NULL, 'I', '2021-12-09 15:39:06', '2021-12-09 16:05:35', NULL, 'es', 'B', 0, '1', 'PPTX', '[3]', 'B', 'C'),
('f744bbff-4b6b-4a67-959d-164e79072383', '8082dfbe-d4e0-4e03-901a-02dac72333dd', 'pptx', NULL, 'A', '2022-01-21 20:36:42', NULL, NULL, 'es', 'B', 0, '1', 'PPTX', '[3]', 'B', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `t_template_draft`
--

CREATE TABLE `t_template_draft` (
  `TEMPLATE_DRAFT_ID` char(36) NOT NULL COMMENT 'TEMP_DRAFT_ID PK of T_TEMPLATE_DRAFT',
  `ACC_ID` char(36) NOT NULL,
  `STAFF_ID` char(36) NOT NULL,
  `DATE_CREATION` timestamp NULL DEFAULT NULL,
  `AWS_PATH` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_template_draft`
--

INSERT INTO `t_template_draft` (`TEMPLATE_DRAFT_ID`, `ACC_ID`, `STAFF_ID`, `DATE_CREATION`, `AWS_PATH`) VALUES
('0848e66a-5ce9-49af-b6f7-916f529246ef', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 03:17:59', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/0848e66a-5ce9-49af-b6f7-916f529246ef.pdf'),
('099846f0-a2eb-493c-9540-a82cadb5722d', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:55:44', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/099846f0-a2eb-493c-9540-a82cadb5722d.pdf'),
('1959d16f-9c77-480f-84af-037cec92c11f', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:22:09', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/1959d16f-9c77-480f-84af-037cec92c11f.pdf'),
('209cc928-d9a7-4119-a0f7-d585f9f22485', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:13:01', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/209cc928-d9a7-4119-a0f7-d585f9f22485.pdf'),
('26910c13-ceaf-47d8-8af3-903503ce0df7', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-23 14:57:43', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/26910c13-ceaf-47d8-8af3-903503ce0df7.pdf'),
('35e1151d-7ed7-4d1d-83dd-e45c7d4a3374', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:41:16', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/35e1151d-7ed7-4d1d-83dd-e45c7d4a3374.pdf'),
('386a5d98-62ab-4b91-a225-0be3b3a6fabc', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:26:52', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/386a5d98-62ab-4b91-a225-0be3b3a6fabc.pdf'),
('4838b6e5-bc09-475d-aee1-4b61acbce0e6', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:38:58', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/4838b6e5-bc09-475d-aee1-4b61acbce0e6.pdf'),
('7a1c9911-a5a1-43dc-b0eb-a84dc1344da8', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 03:05:05', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/drafts/7a1c9911-a5a1-43dc-b0eb-a84dc1344da8.pdf'),
('84d0f662-1e4d-4587-a2a1-3f03e41049ce', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:15:12', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/84d0f662-1e4d-4587-a2a1-3f03e41049ce.pdf'),
('8a1da7e7-b94f-4c59-a643-645407b94d3c', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:47:45', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/8a1da7e7-b94f-4c59-a643-645407b94d3c.pdf'),
('be74c0e6-b968-45a9-982b-cd044b77a82e', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 03:21:51', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/be74c0e6-b968-45a9-982b-cd044b77a82e.pdf'),
('c1d7036f-7b02-4949-a1c7-26c898486474', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:51:15', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/c1d7036f-7b02-4949-a1c7-26c898486474.pdf'),
('cc5c22a6-d606-42fa-897c-7d74a3b19b18', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 02:58:39', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/drafts/cc5c22a6-d606-42fa-897c-7d74a3b19b18.pdf'),
('d5979310-9683-4f48-9686-736ca01c41d9', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-12-21 03:11:52', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/d5979310-9683-4f48-9686-736ca01c41d9.pdf'),
('d9505ba0-f63f-4cf6-b3e5-d0f4c7f3c4fe', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:44:08', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/d9505ba0-f63f-4cf6-b3e5-d0f4c7f3c4fe.pdf'),
('d95c4a86-175c-482d-b79b-52eae06160bb', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 05:17:44', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/d95c4a86-175c-482d-b79b-52eae06160bb.pdf'),
('db7ad5cd-b092-4873-b6ab-52cdc3577007', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:14:26', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/db7ad5cd-b092-4873-b6ab-52cdc3577007.pdf'),
('e4cebdf9-f08d-4df2-8ca8-f0f76b38245f', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '31f3e11c-9ff5-4cc8-a10c-8dbd8991b249', '2021-11-01 04:42:46', 'templatesNew/8082dfbe-d4e0-4e03-901a-02dac72333dd/e4cebdf9-f08d-4df2-8ca8-f0f76b38245f.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `t_template_email`
--

CREATE TABLE `t_template_email` (
  `ID_EMAIL` char(36) NOT NULL,
  `ACC_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `STATUS` char(1) NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DATE_UPDATE` char(36) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `VALUE` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_template_preference`
--

CREATE TABLE `t_template_preference` (
  `CPRE_ID` char(36) CHARACTER SET latin1 NOT NULL,
  `TEMPLATE_ID` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `CPRE_DES` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CPRE_VALUE` mediumtext DEFAULT NULL,
  `CPRE_PARAM1` int(11) DEFAULT NULL,
  `CPRE_PARAM2` int(11) DEFAULT NULL,
  `CPRE_PARAM3` int(11) DEFAULT NULL,
  `CPRE_PARAM4` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CPRE_PARAM5` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CPRE_PARAM6` mediumtext CHARACTER SET latin1 DEFAULT NULL,
  `CPRE_TYPE` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CPRE_ACC` varchar(36) CHARACTER SET latin1 DEFAULT NULL,
  `DATE` timestamp NULL DEFAULT current_timestamp(),
  `LANGUAGE` varchar(3) CHARACTER SET latin1 DEFAULT 'es',
  `PARAMETERS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Dynamic parameters inside the value' CHECK (json_valid(`PARAMETERS`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_template_preference`
--

INSERT INTO `t_template_preference` (`CPRE_ID`, `TEMPLATE_ID`, `CPRE_DES`, `CPRE_VALUE`, `CPRE_PARAM1`, `CPRE_PARAM2`, `CPRE_PARAM3`, `CPRE_PARAM4`, `CPRE_PARAM5`, `CPRE_PARAM6`, `CPRE_TYPE`, `CPRE_ACC`, `DATE`, `LANGUAGE`, `PARAMETERS`) VALUES
('0325809c-268e-4885-9459-bd20b0afed50', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'MTA', '\r\n<style>\r\ntable {\r\n  font-family: arial, sans-serif;\r\n  border-collapse: collapse;\r\n  width: 100%;\r\n}\r\n\r\ntd, th {\r\n  border: 1px solid #dddddd;\r\n  text-align: left;\r\n  padding: 8px;\r\n}\r\n\r\ntr:nth-child(even) {\r\n  background-color: #dddddd;\r\n}\r\n</style>\r\n\r\n\r\n\r\n<h2>Detalle Calificaciones</h2>\r\n\r\n<table>\r\n  <tbody><tr>\r\n    <th>Materia</th>\r\n    <th>Profesor</th>\r\n    <th>Nota</th>\r\n  </tr>\r\n  <tr>\r\n    <td>Matemáticas</td>\r\n    <td>Maria Anders</td>\r\n    <td>4.90</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Biología</td>\r\n    <td>Francisco Chang</td>\r\n    <td>4.00</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Química</td>\r\n    <td>Roland Mendel</td>\r\n    <td>3.75</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Física</td>\r\n    <td>Helen Bennett</td>\r\n    <td>4.70</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Escritura</td>\r\n    <td>Yoshi Tannamuri</td>\r\n    <td>4.50</td>\r\n  </tr>\r\n  <tr>\r\n    <td>Deporte</td>\r\n    <td>Giovanni Rovelli</td>\r\n    <td>3.50</td>\r\n  </tr>\r\n</tbody></table>\r\n\r\n\r\n\r\n', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:06:58', 'es', '[]'),
('14f05a3f-267d-4895-a191-9afa0a907ce7', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'LM1', 'La organización Xertify ha emitido un certificado para el evento  NULL. Adjunto en este correo encontraras los archivos relacionados.', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:06:57', 'es', '[]'),
('499cfa7e-6059-47a9-91c6-0a2bc662f4e0', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'HTR', '<meta charset=\"utf-8\">\n<title>Plantilla prueba web</title>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\">\n<style>\n@charset \"utf-8\";\nhtml {\n	line-height: 1.15;\n	-webkit-text-size-adjust: 100%\n}\n\nbody {\n	margin: 0;\n	font-family:\"Lucida Grande\", \"Lucida Sans Unicode\", \"Lucida Sans\", \"DejaVu Sans\", Verdana, \"sans-serif\";\n}\nimg {\n	border-style: none\n}\nsection {\n	box-shadow: 0 2px 4px 1px rgba(0,0,0,0.1);\n	border-radius: 6px;\n	overflow: hidden;\n	width: 790px;\n	height: 660px;\n	margin: 20px auto;\n	display: block;\n	background:#fff;\n	color:#000;\n}\n.diploma {\n	padding: 30px 4% 0;\n	width:100%;\n	display: block;\n	float: left;\n	height: 612px;\n}\nul, li {\n	list-style: none;\n	padding: 0;\n	margin: 0\n}\n.ctn_marca, .ctn_informacion {\n	margin: 0;\n	display: block\n}\n.ctn_marca {\n	width: 100%\n}\n.ctn_marca img {\n	width: 260px;\n	height: auto;\n	margin: 0 auto;\n	display: block;\n}\n.ctn_informacion {\n	padding: 10px 0;\n	width: 100%;\n	text-align: center;\n}\n.departamento, .direccion {\n	font-size: 25px;\n	margin: 0 auto 8px;\n}\n.certifica {\n	margin: 15px 0 20px;\n	font-size: 18px;\n	text-transform: uppercase;\n}\n.participa {\nmargin: 15px 0 10px;\n    font-size: 16px;\n}\nli.nombre {\n    text-align: center;\n    display: block;\n    width: 90%;\n    float: none;\n    height: 42px;\n    border-bottom: 0.5px solid #000;\n    padding: 0 0 2px;\n    margin: 0 auto;\n}\n.nombre span {\n	font-size: 40px;\n	display: inline-block;\n	margin: 0 5px;\n	line-height: 30px;\n	font-style: italic;\n}\n.curso {\n    font-size: 30px;\n    margin: 0 auto;\n    width: 90%;\n    line-height: 40px;\n    text-transform: uppercase;\n    font-weight: bold;\n	}\n\n.intensidad {\n	font-size: 14px;\n	text-transform: uppercase;\n	margin: 0 0 20px;\n	\n}\n.firma {\n	float: left;\n	margin: 20px 0 0 160px;\n	width: 230px;\n	display: inline-block;\n}\n.firma.qr, .firma.qr > img {\n    width: 160px;\n    margin: 8px 0 0 0px;\n}\n.firma img, .firma span, .firma p {\n	display: block\n}\n.firma img {\n	margin: 0 auto 5px;\n	width: 215px;\n	display: block;\n}\n.firma > span {\n	font-size: 15px;\n	width: 100%;\n	border-top: 1px solid #000;\n	 padding: 5px 0 0;\n	font-weight: bold;\n}\n.firma p {\n	margin:0;\n	width: 100%;\n	font-size: 12px;\n	line-height: 15px;\n}\n.codigo_fecha {\n    width: 170px !important;\n    padding: 0 0 0 10px;\n}\n.codigo_fecha em {\n	float: left\n}\n\n.ctn_verifica {\n	width: 100%;\n	float: left;\n	display: block;\n	background:#f2f2f2;\n	height: 30px;\n	margin: 18px 0 0\n}\n.ctn_verifica a, .ctn_verifica img {\n	float: left;\n    height: 30px;\n    width: 110px;\n	border-radius:0;\n}\n.ctn_verifica p {\n	margin: 5px 13px;\n	font-size: 13px;\n	color: #555;\n	float: left;\n}\n.ctn_verifica a.btn_verifica {\ntext-decoration: none;\n    margin: 5px 0;\n    display: inline-block;\n    background: gray;\n    color: #fff;\n    width: 80px;\n    border-radius: 4px;\n    font-size: 11px;\n    text-align: center;\n    padding: 2px 0 3px;\n    height: 21px;\n    float: left;\n    line-height: 16px;	\n}\n.ctn_verifica a.btn_verifica:hover {\n	background: #000\n}\n\n@media only screen and (max-width: 1199px) {\nsection {\n	width: 300px;\n	height: auto;\n}\n.diploma {\n	width: 100%;\n	padding: 30px 15px;\n	height: auto;\n}\n.ctn_informacion {\n	width: 100%;\n	border: none;\n	padding: 0 0 15px;\n}\n.ctn_marca {\n	width: 90%;\n	margin:0 auto;\n}\n	.ctn_marca img{\n		width: 100%\n	}\n.curso{\n	font-size: 25px;\n    width: 100%;\n    line-height: 30px;	\n}	\n.departamento, .direccion {\n	font-size: 18px;\n}\nli.nombre {\n	height: auto;\n	padding: 0 0 10px;\n}\n.nombre span {\n	line-height: 45px;\n}\n.nombre strong {\n	font-size: 32px\n}\n.participa {\n	margin: 15px 0;\n}\n.codigo_fecha {\n    margin: 10px 5px 5px !important;\n    width: 93% !important;\n    display: block;\n}\n.firma {\n	margin: 10px auto;\n	height: 125px;\n	width: 100%;\n}\n.firma.qr{\n	width: 100%;\n    display: block;\n    float: left;\n	margin: 20px 0 0;\n	}	\n.firma.qr > img{\n	width: 130px;\n    margin: 0 auto;\n    display: block;	\n	}	\n.ctn_verifica {\n	height: auto;\n	margin: 0\n}\n.ctn_verifica p {\n	width: 270px;\n	margin: 5px 15px 5px\n}\n.ctn_verifica a.btn_verifica {\n    width: 100%;\n    margin: 5px 0 0;\n    border-radius: 0;\n    padding: 10px 0 0;\n    text-align: center;\n    height: 40px;\n}\n}	\n</style>\n\n<section>\n  <div class=\"diploma\">\n    <div class=\"ctn_marca\"> <img src=\"https://resourcesxert.s3.amazonaws.com/SSI/SSILogo.png\" width=\"220\" height=\"80\" alt=\"\"></div>\n    <ul class=\"ctn_informacion\">\n      <li class=\"certifica\" style=\"margin-top: 0px;\">CERTIFICATE OF COMPLETION </li>\n      <li class=\"nombre\"><span>NULL NULL</span></li>\n      <li class=\"participa\">has sucessfully completed the course</li>\n      <li class=\"curso\">NULL</li>\n      <li class=\"participa\">Awarded NULL on NULL</li>\n      <li class=\"firma\"> <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma1.jpg\" alt=\"\"> <span><span style=\"display: inline !important;\">Sandra Kirshner</span> </span>\n        <p>Director</p>\n		<p>Self Sovereign Identity Project</p>\n      </li>\n		\n	<li class=\"firma qr\"> qr_xertify_300_300</li>\n    </ul>\n  </div>\n  <div class=\"ctn_verifica\"> <a href=\"https://xertify.co/\" title=\"Xertify\" target=\"_blank\"><img src=\"https://resourcesxert.s3.amazonaws.com/logo_xertify.svg\" alt=\"\" width=\"110\" height=\"30\"></a>\n	  <p class=\"codigo_fecha\"> <em style=\"margin:0 5px 0 0\">Código:</em> <em> NULL</em></p>\n    <p>Para verificar la validez de este certificado consulte aquí</p>\n    <a href=\"https://wallet.xertify.co/certificates/NULL\" target=\"_blank\" class=\"btn_verifica\">VERIFICAR</a> </div>\n</section>', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2020-05-19 00:49:36', 'es', NULL),
('499cfa7e-6059-47a9-91c6-0a2bc662f4e1', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'HTR', '<meta charset=\"utf-8\">\n<title>Plantilla prueba web</title>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"https://resourcesxert.s3.amazonaws.com/Factorymatters/css/plantilla.css?tmp=6\">\n\n\n<section>\n  <div class=\"diploma\">\n    <div class=\"ctn_marca\"> <img src=\"https://resourcesxert.s3.amazonaws.com/SSI/SSILogo.png\" width=\"220\" height=\"80\" alt=\"\"></div>\n    <ul class=\"ctn_informacion\">\n      <li class=\"certifica\" style=\"margin-top: 0px;\">Certificado de cumplimiento</li>\n      <li class=\"nombre\"><span>NULL NULL</span></li>\n      <li class=\"participa\">ha completado el curso de</li>\n      <li class=\"curso\">NULL</li>\n      <li class=\"participa\">Obtenido el día NULL</li>\n      <li class=\"firma\"> <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma1.jpg\" alt=\"\"> <span>Maya Kanehara </span>\n        <p>Director</p>\n		<p>Self Sovereign Identity Incubator</p>\n      </li>\n		\n	<li class=\"firma qr\"> qr_xertify_300_300</li>\n    </ul>\n  </div>\n  <div class=\"ctn_verifica\"> <a href=\"https://xertify.co/\" title=\"Xertify\" target=\"_blank\"><img src=\"https://resourcesxert.s3.amazonaws.com/logo_xertify.svg\" alt=\"\" width=\"110\" height=\"30\"></a>\n	  <p class=\"codigo_fecha\"> <em style=\"margin:0 5px 0 0\">Código:</em> <em> NULL</em></p>\n    <p>Para verificar la validez de este certificado consulte aquí</p>\n    <a href=\"https://wallet.xertify.co/certificates/NULL\" target=\"_blank\" class=\"btn_verifica\">VERIFICAR</a> </div>\n</section>', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2020-05-19 00:49:36', 'es', NULL),
('499cfa7e-6059-47a9-91c6-0a2bc662f4e2', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'HTR', '<meta charset=\"utf-8\">\n<title>Plantilla prueba web</title>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"https://resourcesxert.s3.amazonaws.com/Factorymatters/css/plantilla.css?tmp=6\">\n\n\n<section>\n  <div class=\"diploma\">\n    <div class=\"ctn_marca\"> <img src=\"https://resourcesxert.s3.amazonaws.com/SSI/SSILogo.png\" width=\"220\" height=\"80\" alt=\"\"></div>\n    <ul class=\"ctn_informacion\">\n      <li class=\"certifica\" style=\"margin-top: 0px;\">Abschlusszertifikat</li>\n      <li class=\"nombre\"><span>NULL NULL</span></li>\n      <li class=\"participa\">hat den Kurs erfolgreich abgeschlossen</li>\n      <li class=\"curso\">NULL</li>\n      <li class=\"participa\">San Francisco, den NULL</li>\n      <li class=\"firma\"> <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma1.jpg\" alt=\"\"> <span>Maya Kanehara </span>\n        <p>Direktorin</p>\n		<p>Self Sovereign Identity Incubator</p>\n      </li>\n		\n	<li class=\"firma qr\"> qr_xertify_300_300</li>\n    </ul>\n  </div>\n  <div class=\"ctn_verifica\"> <a href=\"https://xertify.co/\" title=\"Xertify\" target=\"_blank\"><img src=\"https://resourcesxert.s3.amazonaws.com/logo_xertify.svg\" alt=\"\" width=\"110\" height=\"30\"></a>\n	  <p class=\"codigo_fecha\"> <em style=\"margin:0 5px 0 0\">Código:</em> <em> NULL</em></p>\n    <p>Para verificar la validez de este certificado consulte aquí</p>\n    <a href=\"https://wallet.xertify.co/certificates/NULL\" target=\"_blank\" class=\"btn_verifica\">VERIFICAR</a> </div>\n</section>', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2020-05-19 00:49:36', 'de', NULL),
('499cfa7e-6059-47a9-91c6-0a2bc662f4e3', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'HTR', '<meta charset=\"utf-8\">\n<title>Plantilla prueba web</title>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"https://resourcesxert.s3.amazonaws.com/Factorymatters/css/plantilla.css?tmp=6\">\n\n\n<section>\n  <div class=\"diploma\">\n    <div class=\"ctn_marca\"> <img src=\"https://resourcesxert.s3.amazonaws.com/SSI/SSILogo.png\" width=\"220\" height=\"80\" alt=\"\"></div>\n    <ul class=\"ctn_informacion\">\n      <li class=\"certifica\" style=\"margin-top: 0px;\">Certificado de Conclusão</li>\n      <li class=\"nombre\"><span>NULL NULL</span></li>\n      <li class=\"participa\">concluiu com sucesso o curso</li>\n      <li class=\"curso\">NULL</li>\n      <li class=\"participa\">San Francisco, Dezembro 2019</li>\n      <li class=\"firma\"> <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma1.jpg\" alt=\"\"> <span>Maya Kanehara </span>\n        <p>Diretora</p>\n		<p>Self Sovereign Identity Incubator</p>\n      </li>\n		\n	<li class=\"firma qr\"> qr_xertify_300_300</li>\n    </ul>\n  </div>\n  <div class=\"ctn_verifica\"> <a href=\"https://xertify.co/\" title=\"Xertify\" target=\"_blank\"><img src=\"https://resourcesxert.s3.amazonaws.com/logo_xertify.svg\" alt=\"\" width=\"110\" height=\"30\"></a>\n	  <p class=\"codigo_fecha\"> <em style=\"margin:0 5px 0 0\">Código:</em> <em> NULL</em></p>\n    <p>Para verificar la validez de este certificado consulte aquí</p>\n    <a href=\"https://wallet.xertify.co/certificates/NULL\" target=\"_blank\" class=\"btn_verifica\">VERIFICAR</a> </div>\n</section>', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2020-05-19 00:49:36', 'pt', NULL),
('499cfa7e-6059-47a9-91c6-0a2bc662f4e4', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'HTR', '<meta charset=\"utf-8\">\n<title>Plantilla prueba web</title>\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"https://resourcesxert.s3.amazonaws.com/Factorymatters/css/plantilla.css?tmp=6\">\n\n\n<section>\n  <div class=\"diploma\">\n    <div class=\"ctn_marca\"> <img src=\"https://resourcesxert.s3.amazonaws.com/SSI/SSILogo.png\" width=\"220\" height=\"80\" alt=\"\"></div>\n    <ul class=\"ctn_informacion\">\n      <li class=\"certifica\" style=\"margin-top: 0px;\">修了証</li>\n      <li class=\"nombre\"><span>NULL NULL</span></li>\n      <li class=\"participa\">コースを正常に完了しました</li>\n      <li class=\"curso\">NULL</li>\n      <li class=\"participa\">Awarded on NULL</li>\n      <li class=\"firma\"> <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma1.jpg\" alt=\"\"> <span>Maya Kanehara </span>\n        <p>ディレクター</p>\n		<p>Self Sovereign Identity Incubator</p>\n      </li>\n		\n	<li class=\"firma qr\"> qr_xertify_300_300</li>\n    </ul>\n  </div>\n  <div class=\"ctn_verifica\"> <a href=\"https://xertify.co/\" title=\"Xertify\" target=\"_blank\"><img src=\"https://resourcesxert.s3.amazonaws.com/logo_xertify.svg\" alt=\"\" width=\"110\" height=\"30\"></a>\n	  <p class=\"codigo_fecha\"> <em style=\"margin:0 5px 0 0\">Código:</em> <em> NULL</em></p>\n    <p>Para verificar la validez de este certificado consulte aquí</p>\n    <a href=\"https://wallet.xertify.co/certificates/NULL\" target=\"_blank\" class=\"btn_verifica\">VERIFICAR</a> </div>\n</section>', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2020-05-19 00:49:36', 'jp', NULL),
('49a3ba98-92da-4e20-bd76-8247f5c76061', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'MSU', 'ok', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:08:13', 'es', '[]'),
('7a9885b3-908c-4483-8cdc-30d480fe0360', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'LAS', 'info@xertify.co', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:06:58', 'es', '[]'),
('9ebb59bf-3c7a-4bfb-9a1a-88ca904b6949', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'PPO', 'B', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:08:13', 'es', '[]'),
('b2944fd4-ca32-4153-85fa-6ffab6f3287d', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'LCN', 'Xertify', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:06:57', 'es', '[]'),
('ba4d90a7-b35a-4f33-a8ce-4e3b4770f629', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'LWA', 'Xertify', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:06:58', 'es', '[]'),
('dbcf336e-41ca-46cb-a706-0f65cdf2a867', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'PPS', 'A', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:08:13', 'es', '[]'),
('dced5b94-c02f-474b-bbe7-4906cae1119a', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'HTA', '<meta charset=\"utf-8\">\r\n<title>Plantilla prueba pdf</title>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\">\r\n<style>\r\nhtml {\r\n	line-height: 1.15;\r\n	-webkit-text-size-adjust: 100%\r\n}\r\n@font-face {\r\n	font-family: \'Segoe UI\';\r\n	src: url(https://s3.amazonaws.com/resourcesxert/SegoeUI.ttf) format(\"woff2\"), url(https://s3.amazonaws.com/resourcesxert/SegoeUI.woff) format(\"woff\"), url(https://s3.amazonaws.com/resourcesxert/SegoeUI.ttf) format(\"truetype\"),\r\n}\r\nbody {\r\n	margin: 0;\r\n	font-family: \'Segoe UI\'\r\n}\r\nimg {\r\n	border-style: none\r\n}\r\nsection {\r\n	overflow: hidden;\r\n	width: 790px;\r\n	height: 660px;\r\n	margin: 10px auto;\r\n	display: block\r\n}\r\n.diploma {\r\n	margin: 15px 30px 0;\r\n	width: 92%;\r\n	display: block;\r\n	float: left;\r\n	height: 630px\r\n}\r\nul, li {\r\n	list-style: none;\r\n	padding: 0;\r\n	margin: 0\r\n}\r\n.ctn_marca, .ctn_informacion {\r\n	margin: 0;\r\n	display: block\r\n}\r\n.ctn_marca {\r\n	width: 100%;\r\n}\r\n.ctn_marca img {\r\n	width: 260px;\r\n	height: auto;\r\n	margin: 0 auto 20px;\r\n	display: block\r\n}\r\n.ctn_informacion {\r\n	padding: 10px 0;\r\n	width: 100%;\r\n	text-align: center\r\n}\r\n.departamento, .direccion {\r\n	font-size: 25px;\r\n	margin: 0 auto 8px\r\n}\r\n.certifica {\r\n	margin: 0 0 20px;\r\n	font-size: 18px;\r\n	text-transform: uppercase\r\n}\r\n.participa {\r\n	margin: 15px 0 10px;\r\n	font-size: 16px;\r\n}\r\nli.nombre {\r\n	text-align: center;\r\n	display: block;\r\n	width: 100%;\r\n	float: none;\r\n	height: 55px;\r\n	color: #000;\r\n    font-style: italic;\r\n    font-family: serif;\r\n	border-bottom: 0.5px solid #000;\r\n}\r\n.nombre {\r\n	font-size: 48px;\r\n	line-height: 45px\r\n}\r\n.curso {\r\nfont-size: 30px;\r\n    margin: 0 auto ;\r\n    width: 80%;\r\n    line-height: 35px;\r\n    font-weight: bold;\r\n    text-transform: uppercase;\r\n}\r\n.intensidad {\r\n	font-size: 15px;\r\n	text-transform: uppercase;\r\n}\r\n.firma {\r\n    margin: 0 0 0 120px;\r\n    width: 260px;\r\n    display: block;\r\n	float: left;\r\n}\r\n.firma img, .firma span, .firma p {\r\n	display: block\r\n}\r\n.firma img {\r\n	margin: 30px auto 5px;\r\n	width: 215px;\r\n	height: auto;\r\n	display: block\r\n}\r\n.firma span {\r\n	font-size: 15px;\r\n	width: 100%;\r\n	border-top: 1px solid #aaa;\r\n	padding: 5px 0;\r\n	font-weight:bold;\r\n}\r\n.firma p {\r\n	margin: 0 0 2px;\r\n    width: 100%;\r\n    font-size: 12px;\r\n}\r\n.codigo_fecha {\r\n	width: 150px!important;\r\n	padding: 0 0 0 10px;\r\n}\r\n.codigo_fecha em {\r\n	float: left;\r\n	position: relative;\r\n	margin: 0 5px 0 0;\r\n}\r\n.ctn_verifica {\r\n    font-family: Helvetica, Arial, \'sans-serif\';\r\n    height: 30px;\r\n	width: 100%;\r\n    background: #f2f2f2;\r\n    margin: 20px 0 0;\r\n    line-height: 10px;\r\n    font-size: 14px;\r\n    color: #333;\r\n    float: left;\r\n}\r\n	\r\n.ctn_verifica a, .ctn_verifica img {\r\n	float: left\r\n}\r\n.ctn_verifica p {\r\n	margin: 8px 13px;\r\n	font-size: 13px;\r\n	color: #555;\r\n	float: left;\r\n	line-height: 16px\r\n}\r\n.ctn_verifica a.btn_verifica {\r\n    text-decoration: none;\r\n    margin: 7px 5px 0;\r\n    display: inline-block;\r\n    background: gray;\r\n    color: #fff;\r\n    width: 80px;\r\n    border-radius: 4px;\r\n    font-size: 11px;\r\n    text-align: center;\r\n    padding: 0;\r\n    height: 19px;\r\n    float: left;\r\n    line-height: 19px;\r\n}\r\n.ctn_verifica a.btn_verifica:hover {\r\n	background: #06f\r\n}\r\n.medium {\r\n	width: 30%;\r\n	float: left;\r\n	margin: 30px 20px 0;\r\n	padding: 0;\r\n	height:130px !important;\r\n	overflow:hidden;\r\n\r\n}\r\n.medium img.qrcode {\r\n	width: 130px !important;\r\n	margin: 0 auto;\r\n	display: block;\r\n	float: none;\r\n	padding:0 !important;\r\n	position:relative;\r\n	top:-70px;\r\n}	\r\n</style>\r\n<section style=\"\">\r\n  <div class=\"diploma\" style=\"\"> \r\n    \r\n    <!--Abre logotipo-->\r\n    <div class=\"ctn_marca\" style=\"font-weight: normal;\"> <img src=\"https://resourcesxert.s3.amazonaws.com/SSI/SSILogo.png\" width=\"220\" height=\"80\" alt=\"\"></div>\r\n    <!--Cierra logotipo-->\r\n    <ul class=\"ctn_informacion\" style=\"\">\r\n      \r\n      <!--Abre certifican que-->\r\n      <li class=\"certifica\">CERTIFICADO DE CONFORMIDADE</li>\r\n      <!--Cierra certifican que--> \r\n      \r\n      <!--Abre nombre y apellido-->\r\n      <li class=\"nombre\" style=\"\"><span>${firstname} ${lastname}</span></li>\r\n      <!--Cierra nombre y apellido--> \r\n      \r\n      <!--Abre participo en el-->\r\n      <li class=\"participa\">TENHO CONCLUÍDO SATISFATORIAMENTE O CURSO</li>\r\n      <!--Cierra participo en el--> \r\n      <!--Abre curso-->\r\n      <li class=\"curso\">${location}</li>\r\n      <!--Cierra curso--> \r\n      \r\n	   <!--Abre participo en el-->\r\n      <li class=\"participa\">Concedido o dia ${dategrad}</li>\r\n      <!--Cierra participo en el--> \r\n	<!--Abre participo en el-->\r\n      <li class=\"participa\" style=\"font-weight: normal;\"><br></li>\r\n      <!--Cierra participo en el--> 	\r\n		\r\n      \r\n      <!--Abre firma 1-->\r\n      <li class=\"firma\" style=\"font-weight: normal;\"> \r\n        \r\n        <!--Firma 1--> \r\n        <img src=\"https://resourcesxert.s3.amazonaws.com/templateTwo/firma1.jpg\" alt=\"\"> \r\n        \r\n        <!--Nombre--> \r\n        <span>Emma Watson</span> \r\n        \r\n        <!--Cargo-->\r\n        <p>Director</p>\r\n		<p>Self Sovereign Identity Incubator</p>  \r\n      </li>\r\n		\r\n	<p class=\"medium\">qr_xertify_120_120</p>		\r\n      <!--Cierra firma 1--> \r\n		\r\n		\r\n     <!-- <li class=\"firma\" style=\"font-weight: normal; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;\"> \r\n        <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma2.jpg\" alt=\"\"> \r\n        <span>Nombre</span> \r\n        <p>Cargo</p>\r\n      </li>-->\r\n      \r\n     <!-- <li class=\"firma\" style=\"font-weight: normal; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;\"> \r\n        <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma3.jpg\" alt=\"\"> \r\n        <span>Nombre</span> \r\n        <p>Cargo</p>\r\n      </li>-->\r\n      \r\n    </ul>\r\n  </div>\r\n  \r\n  <!--Abre codigo Xertify-->\r\n  <div class=\"ctn_verifica\" style=\"font-weight: normal;\"> <a href=\"https://dinodocs.co/\" title=\"Xertify\" target=\"_blank\"><img src=\"https://resourcesxert.s3.amazonaws.com/area_andina/logo_xertify_video.jpg\" alt=\"\" width=\"110\" height=\"30\"></a>\r\n    <p class=\"codigo_fecha\"> <em>Código:</em> <em> NULL</em></p>\r\n    <p>Para verificar la validez de este certificado consulte aquí</p>\r\n    <a href=\"https://wallet.xertify.co/certificates/NULL\" target=\"_blank\" class=\"btn_verifica\">VERIFICAR</a> </div>\r\n  <!--Cierra codigo Xertify--> \r\n  \r\n</section>\r\n', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:08:13', 'es', '[\"firstname\", \"lastname\", \"location\", \"dategrad\"]'),
('dced5b94-c02f-474b-bbxx-4906cae1119a', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'HTA', '<meta charset=\"utf-8\">\r\n<title>Plantilla prueba pdf</title>\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\">\r\n<style>\r\nhtml {\r\n	line-height: 1.15;\r\n	-webkit-text-size-adjust: 100%\r\n}\r\n@font-face {\r\n	font-family: \'Segoe UI\';\r\n	src: url(https://s3.amazonaws.com/resourcesxert/SegoeUI.ttf) format(\"woff2\"), url(https://s3.amazonaws.com/resourcesxert/SegoeUI.woff) format(\"woff\"), url(https://s3.amazonaws.com/resourcesxert/SegoeUI.ttf) format(\"truetype\"),\r\n}\r\nbody {\r\n	margin: 0;\r\n	font-family: \'Segoe UI\'\r\n}\r\nimg {\r\n	border-style: none\r\n}\r\nsection {\r\n	overflow: hidden;\r\n	width: 790px;\r\n	height: 660px;\r\n	margin: 10px auto;\r\n	display: block\r\n}\r\n.diploma {\r\n	margin: 15px 30px 0;\r\n	width: 92%;\r\n	display: block;\r\n	float: left;\r\n	height: 630px\r\n}\r\nul, li {\r\n	list-style: none;\r\n	padding: 0;\r\n	margin: 0\r\n}\r\n.ctn_marca, .ctn_informacion {\r\n	margin: 0;\r\n	display: block\r\n}\r\n.ctn_marca {\r\n	width: 100%;\r\n}\r\n.ctn_marca img {\r\n	width: 260px;\r\n	height: auto;\r\n	margin: 0 auto 20px;\r\n	display: block\r\n}\r\n.ctn_informacion {\r\n	padding: 10px 0;\r\n	width: 100%;\r\n	text-align: center\r\n}\r\n.departamento, .direccion {\r\n	font-size: 25px;\r\n	margin: 0 auto 8px\r\n}\r\n.certifica {\r\n	margin: 0 0 20px;\r\n	font-size: 18px;\r\n	text-transform: uppercase\r\n}\r\n.participa {\r\n	margin: 15px 0 10px;\r\n	font-size: 16px;\r\n}\r\nli.nombre {\r\n	text-align: center;\r\n	display: block;\r\n	width: 100%;\r\n	float: none;\r\n	height: 55px;\r\n	color: #000;\r\n    font-style: italic;\r\n    font-family: serif;\r\n	border-bottom: 0.5px solid #000;\r\n}\r\n.nombre {\r\n	font-size: 48px;\r\n	line-height: 45px\r\n}\r\n.curso {\r\nfont-size: 30px;\r\n    margin: 0 auto ;\r\n    width: 80%;\r\n    line-height: 35px;\r\n    font-weight: bold;\r\n    text-transform: uppercase;\r\n}\r\n.intensidad {\r\n	font-size: 15px;\r\n	text-transform: uppercase;\r\n}\r\n.firma {\r\n    margin: 0 0 0 120px;\r\n    width: 260px;\r\n    display: block;\r\n	float: left;\r\n}\r\n.firma img, .firma span, .firma p {\r\n	display: block\r\n}\r\n.firma img {\r\n	margin: 30px auto 5px;\r\n	width: 215px;\r\n	height: auto;\r\n	display: block\r\n}\r\n.firma span {\r\n	font-size: 15px;\r\n	width: 100%;\r\n	border-top: 1px solid #aaa;\r\n	padding: 5px 0;\r\n	font-weight:bold;\r\n}\r\n.firma p {\r\n	margin: 0 0 2px;\r\n    width: 100%;\r\n    font-size: 12px;\r\n}\r\n.codigo_fecha {\r\n	width: 150px!important;\r\n	padding: 0 0 0 10px;\r\n}\r\n.codigo_fecha em {\r\n	float: left;\r\n	position: relative;\r\n	margin: 0 5px 0 0;\r\n}\r\n.ctn_verifica {\r\n    font-family: Helvetica, Arial, \'sans-serif\';\r\n    height: 30px;\r\n	width: 100%;\r\n    background: #f2f2f2;\r\n    margin: 20px 0 0;\r\n    line-height: 10px;\r\n    font-size: 14px;\r\n    color: #333;\r\n    float: left;\r\n}\r\n	\r\n.ctn_verifica a, .ctn_verifica img {\r\n	float: left\r\n}\r\n.ctn_verifica p {\r\n	margin: 8px 13px;\r\n	font-size: 13px;\r\n	color: #555;\r\n	float: left;\r\n	line-height: 16px\r\n}\r\n.ctn_verifica a.btn_verifica {\r\n    text-decoration: none;\r\n    margin: 7px 5px 0;\r\n    display: inline-block;\r\n    background: gray;\r\n    color: #fff;\r\n    width: 80px;\r\n    border-radius: 4px;\r\n    font-size: 11px;\r\n    text-align: center;\r\n    padding: 0;\r\n    height: 19px;\r\n    float: left;\r\n    line-height: 19px;\r\n}\r\n.ctn_verifica a.btn_verifica:hover {\r\n	background: #06f\r\n}\r\n.medium {\r\n	width: 30%;\r\n	float: left;\r\n	margin: 30px 20px 0;\r\n	padding: 0;\r\n	height:130px !important;\r\n	overflow:hidden;\r\n\r\n}\r\n.medium img.qrcode {\r\n	width: 130px !important;\r\n	margin: 0 auto;\r\n	display: block;\r\n	float: none;\r\n	padding:0 !important;\r\n	position:relative;\r\n	top:-70px;\r\n}	\r\n</style>\r\n<section style=\"\">\r\n  <div class=\"diploma\" style=\"\"> \r\n    \r\n    <!--Abre logotipo-->\r\n    <div class=\"ctn_marca\" style=\"font-weight: normal;\"> <img src=\"https://resourcesxert.s3.amazonaws.com/SSI/SSILogo.png\" width=\"220\" height=\"80\" alt=\"\"></div>\r\n    <!--Cierra logotipo-->\r\n    <ul class=\"ctn_informacion\" style=\"\">\r\n      \r\n      <!--Abre certifican que-->\r\n      <li class=\"certifica\">CERTIFICADO DE CONFORMIDADE</li>\r\n      <!--Cierra certifican que--> \r\n      \r\n      <!--Abre nombre y apellido-->\r\n      <li class=\"nombre\" style=\"\"><span>${firstname} ${lastname}</span></li>\r\n      <!--Cierra nombre y apellido--> \r\n      \r\n      <!--Abre participo en el-->\r\n      <li class=\"participa\">TENHO CONCLUÍDO SATISFATORIAMENTE O CURSO</li>\r\n      <!--Cierra participo en el--> \r\n      <!--Abre curso-->\r\n      <li class=\"curso\">${location}</li>\r\n      <!--Cierra curso--> \r\n      \r\n	   <!--Abre participo en el-->\r\n      <li class=\"participa\">Concedido o dia ${dategrad}</li>\r\n      <!--Cierra participo en el--> \r\n	<!--Abre participo en el-->\r\n      <li class=\"participa\" style=\"font-weight: normal;\"><br></li>\r\n      <!--Cierra participo en el--> 	\r\n		\r\n      \r\n      <!--Abre firma 1-->\r\n      <li class=\"firma\" style=\"font-weight: normal;\"> \r\n        \r\n        <!--Firma 1--> \r\n        <img src=\"https://resourcesxert.s3.amazonaws.com/templateTwo/firma1.jpg\" alt=\"\"> \r\n        \r\n        <!--Nombre--> \r\n        <span>Emma Watson</span> \r\n        \r\n        <!--Cargo-->\r\n        <p>Director</p>\r\n		<p>Self Sovereign Identity Incubator</p>  \r\n      </li>\r\n		\r\n	<p class=\"medium\">qr_xertify_120_120</p>		\r\n      <!--Cierra firma 1--> \r\n		\r\n		\r\n     <!-- <li class=\"firma\" style=\"font-weight: normal; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;\"> \r\n        <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma2.jpg\" alt=\"\"> \r\n        <span>Nombre</span> \r\n        <p>Cargo</p>\r\n      </li>-->\r\n      \r\n     <!-- <li class=\"firma\" style=\"font-weight: normal; font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;\"> \r\n        <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma3.jpg\" alt=\"\"> \r\n        <span>Nombre</span> \r\n        <p>Cargo</p>\r\n      </li>-->\r\n      \r\n    </ul>\r\n  </div>\r\n  \r\n  <!--Abre codigo Xertify-->\r\n  <div class=\"ctn_verifica\" style=\"font-weight: normal;\"> <a href=\"https://dinodocs.co/\" title=\"Xertify\" target=\"_blank\"><img src=\"https://resourcesxert.s3.amazonaws.com/area_andina/logo_xertify_video.jpg\" alt=\"\" width=\"110\" height=\"30\"></a>\r\n    <p class=\"codigo_fecha\"> <em>Código:</em> <em> NULL</em></p>\r\n    <p>Para verificar la validez de este certificado consulte aquí</p>\r\n    <a href=\"https://wallet.xertify.co/certificates/NULL\" target=\"_blank\" class=\"btn_verifica\">VERIFICAR</a> </div>\r\n  <!--Cierra codigo Xertify--> \r\n  \r\n</section>\r\n', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:08:13', 'de', '[\"firstname\", \"lastname\", \"location\", \"dategrad\"]'),
('e2c9260f-8c4b-42f6-a7c3-b23934657b43', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'SOC', '<meta charset=\"utf-8\"> <title>Plantilla prueba web</title> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\"> <style> @charset \"utf-8\"; html { line-height: 1.15; -webkit-text-size-adjust: 100% } body { margin: 0; font-family:\"Lucida Grande\", \"Lucida Sans Unicode\", \"Lucida Sans\", \"DejaVu Sans\", Verdana, \"sans-serif\"; } img { border-style: none } section { box-shadow: 0 2px 4px 1px rgba(0,0,0,0.1); border-radius: 6px; overflow: hidden; width: 790px; height: 660px; margin: 20px auto; display: block; background:#fff; color:#000; } .diploma { padding: 30px 4% 0; width:100%; display: block; float: left; height: 612px; } ul, li { list-style: none; padding: 0; margin: 0 } .ctn_marca, .ctn_informacion { margin: 0; display: block } .ctn_marca { width: 100% } .ctn_marca img { width: 260px; height: auto; margin: 0 auto; display: block; } .ctn_informacion { padding: 10px 0; width: 100%; text-align: center; } .departamento, .direccion { font-size: 25px; margin: 0 auto 8px; } .certifica { margin: 15px 0 20px; font-size: 18px; text-transform: uppercase; } .participa { margin: 15px 0 10px; font-size: 16px; } li.nombre { text-align: center; display: block; width: 90%; float: none; height: 42px; border-bottom: 0.5px solid #000; padding: 0 0 2px; margin: 0 auto; } .nombre span { font-size: 40px; display: inline-block; margin: 0 5px; line-height: 30px; font-style: italic; } .curso { font-size: 30px; margin: 0 auto; width: 90%; line-height: 40px; text-transform: uppercase; font-weight: bold; } .intensidad { font-size: 14px; text-transform: uppercase; margin: 0 0 20px; } .firma { float: left; margin: 20px 0 0 160px; width: 230px; display: inline-block; } .firma.qr, .firma.qr > img { width: 160px; margin: 8px 0 0 0px; } .firma img, .firma span, .firma p { display: block } .firma img { margin: 0 auto 5px; width: 215px; display: block; } .firma > span { font-size: 15px; width: 100%; border-top: 1px solid #000; padding: 5px 0 0; font-weight: bold; } .firma p { margin:0; width: 100%; font-size: 12px; line-height: 15px; } .codigo_fecha { width: 170px !important; padding: 0 0 0 10px; } .codigo_fecha em { float: left } .ctn_verifica { width: 100%; float: left; display: block; background:#f2f2f2; height: 30px; margin: 18px 0 0 } .ctn_verifica a, .ctn_verifica img { float: left; height: 30px; width: 110px; border-radius:0; } .ctn_verifica p { margin: 5px 13px; font-size: 13px; color: #555; float: left; } .ctn_verifica a.btn_verifica { text-decoration: none; margin: 5px 0; display: inline-block; background: gray; color: #fff; width: 80px; border-radius: 4px; font-size: 11px; text-align: center; padding: 2px 0 3px; height: 21px; float: left; line-height: 16px; } .ctn_verifica a.btn_verifica:hover { background: #000 } @media only screen and (max-width: 1199px) { section { width: 300px; height: auto; } .diploma { width: 100%; padding: 30px 15px; height: auto; } .ctn_informacion { width: 100%; border: none; padding: 0 0 15px; } .ctn_marca { width: 90%; margin:0 auto; } .ctn_marca img{ width: 100% } .curso{ font-size: 25px; width: 100%; line-height: 30px; } .departamento, .direccion { font-size: 18px; } li.nombre { height: auto; padding: 0 0 10px; } .nombre span { line-height: 45px; } .nombre strong { font-size: 32px } .participa { margin: 15px 0; } .codigo_fecha { margin: 10px 5px 5px !important; width: 93% !important; display: block; } .firma { margin: 10px auto; height: 125px; width: 100%; } .firma.qr{ width: 100%; display: block; float: left; margin: 20px 0 0; } .firma.qr > img{ width: 130px; margin: 0 auto; display: block; } .ctn_verifica { height: auto; margin: 0 } .ctn_verifica p { width: 270px; margin: 5px 15px 5px } .ctn_verifica a.btn_verifica { width: 100%; margin: 5px 0 0; border-radius: 0; padding: 10px 0 0; text-align: center; height: 40px; } } </style> <section> <div class=\"diploma\"> <div class=\"ctn_marca\"> <img src=\"https://resourcesxert.s3.amazonaws.com/SSI/SSILogo.png\" width=\"220\" height=\"80\" alt=\"\"></div> <ul class=\"ctn_informacion\"> <li class=\"certifica\" style=\"margin-top: 0px;\">SOCIAL VERSION </li> <li class=\"firma\"> <img src=\"https://s3.amazonaws.com/resourcesxert/templateTwo/firma1.jpg\" alt=\"\"> <span><span style=\"display: inline !important;\">Sandra Kirshner</span> </span> <p>Director</p> <p>Self Sovereign Identity Project</p> </li> <li class=\"firma qr\"> qr_xertify_300_300</li> </ul> </div> <div class=\"ctn_verifica\"> <a href=\"https://xertify.co/\" title=\"Xertify\" target=\"_blank\"><img src=\"https://resourcesxert.s3.amazonaws.com/logo_xertify.svg\" alt=\"\" width=\"110\" height=\"30\"></a> <p class=\"codigo_fecha\"> <em style=\"margin:0 5px 0 0\">Código:</em> <em> NULL</em></p> <p>Para verificar la validez de este certificado consulte aquí</p> <a href=\"https://wallet.xertify.co/certificates/NULL\" target=\"_blank\" class=\"btn_verifica\">VERIFICAR</a> </div> </section>', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:06:58', 'es', '[]'),
('e5b8083f-f77d-4686-8307-f27d961ac5db', 'eaaf72b5-701a-41e1-a5b4-2a938d87f95f', 'LCI', 'No aplica', 1, 12, 0, '000000', 'TIMES_ROMAN', NULL, 'LC', '8082dfbe-d4e0-4e03-901a-02dac72333dd', '2021-10-30 23:06:57', 'es', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `t_transaction`
--

CREATE TABLE `t_transaction` (
  `ID_TRANSACTION_REGISTER` char(36) NOT NULL,
  `ACC_ID` char(36) DEFAULT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `ID_PAY` varchar(100) DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT NULL,
  `DATE` timestamp NULL DEFAULT NULL,
  `MEDIO_PAGO` varchar(45) DEFAULT NULL,
  `ENTIDAD_PAGO` varchar(250) DEFAULT NULL,
  `ID_FORM` char(36) DEFAULT NULL,
  `DATE_FINISH_TRANS` timestamp NULL DEFAULT NULL,
  `CURRENCY` varchar(5) DEFAULT NULL,
  `MESSAGE_PROVIDER` text DEFAULT NULL,
  `ID_TRANSACTION_REQUEST` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_translation`
--

CREATE TABLE `t_translation` (
  `TRANS_ID` char(36) NOT NULL,
  `LAN_ID` char(36) NOT NULL,
  `TRANS_ORIGIN_ID` decimal(22,9) DEFAULT NULL,
  `TRANS_FIELD` varchar(30) NOT NULL,
  `TRANS_ORIGIN_T` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_translation_entry`
--

CREATE TABLE `t_translation_entry` (
  `TENT_ID` char(36) NOT NULL,
  `TENT_TEXT` varchar(100) DEFAULT NULL,
  `TRANS_ID` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2a$10$tAC1RBwXi5acP0Wy6QGfHOO9.NuUqkUq29L4cTCYRldub/KRnsd2e', NULL, '2022-02-02 04:09:18', '2022-02-02 04:09:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `axample`
--
ALTER TABLE `axample`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `enums`
--
ALTER TABLE `enums`
  ADD PRIMARY KEY (`TYPE`,`KEY_NAME`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `t_blockchain`
--
ALTER TABLE `t_blockchain`
  ADD PRIMARY KEY (`BLOCKCHAIN_ID`),
  ADD KEY `T_BLOCKCHAIN_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_certificates_generation`
--
ALTER TABLE `t_certificates_generation`
  ADD PRIMARY KEY (`CERTIFICATES_GENERATION_ID`);

--
-- Indexes for table `t_certificates_generation_children`
--
ALTER TABLE `t_certificates_generation_children`
  ADD PRIMARY KEY (`T_CERTIFICATES_GENERATION_CHILDREN_ID`),
  ADD UNIQUE KEY `T_CERTIFICATES_GENERATION_ID_CV_ID_TEMPLATE_ID` (`T_CERTIFICATES_GENERATION_ID`,`CV_ID`,`TEMPLATE_ID`),
  ADD KEY `FK_T_CERTIFICATES_GENERATION_CHILDREN_T_COMPANY_GROUP_CUSTOMER` (`CV_ID`);

--
-- Indexes for table `t_code`
--
ALTER TABLE `t_code`
  ADD PRIMARY KEY (`COD_ID`),
  ADD KEY `T_CODE_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_company_branch`
--
ALTER TABLE `t_company_branch`
  ADD PRIMARY KEY (`CBR_ID`),
  ADD KEY `T_COMPANY_BRANCH_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_company_branch_template`
--
ALTER TABLE `t_company_branch_template`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `T_COMPANY_BRANCH_TEMPLATE_T_COMPANY_BRANCH_FK` (`CBR_ID`),
  ADD KEY `T_COMPANY_BRANCH_TEMPLATE_T_TEMPLATE_FK` (`TEMPLATE_ID`);

--
-- Indexes for table `t_company_dept`
--
ALTER TABLE `t_company_dept`
  ADD PRIMARY KEY (`CDEPT_ID`),
  ADD KEY `T_COMPANY_DEPT_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_company_directory`
--
ALTER TABLE `t_company_directory`
  ADD PRIMARY KEY (`ACC_ID_COMPANY`,`ACC_ID_CUSTOMER`),
  ADD KEY `T_COMPANY_DIRECTORY_T_CUSTOMER_FK` (`ACC_ID_CUSTOMER`),
  ADD KEY `T_COMPANY_DIRECTORY_T_ID_TYPE_FK` (`ID_ID`),
  ADD KEY `T_COMPANY_DIRECTORY_T_ID_TYPE_FK_1` (`COMPANY_LEGAL_ID`),
  ADD KEY `T_COMPANY_DIRECTORY_T_GEO_COUNTRY_FK` (`COU_ID`),
  ADD KEY `T_COMPANY_DIRECTORY_T_GEO_COUNTRY_FK_1` (`COU_ID_COMPANY`);

--
-- Indexes for table `t_company_directory_xertify`
--
ALTER TABLE `t_company_directory_xertify`
  ADD PRIMARY KEY (`ACC_ID_COMPANY`,`ACC_ID_CUSTOMER`);

--
-- Indexes for table `t_company_group`
--
ALTER TABLE `t_company_group`
  ADD PRIMARY KEY (`PROD_ID`),
  ADD KEY `fkIdx_2592` (`ACC_ID`);
ALTER TABLE `t_company_group` ADD FULLTEXT KEY `T_COMPANY_GROUP_ACC_ID_IDX` (`ACC_ID`);

--
-- Indexes for table `t_company_group_customer`
--
ALTER TABLE `t_company_group_customer`
  ADD PRIMARY KEY (`CV_ID`),
  ADD KEY `T_COMPANY_GROUP_CUSTOMER_T_CUSTOMER_FK` (`ACC_ID`),
  ADD KEY `T_COMPANY_GROUP_CUSTOMER_T_COMPANY_GROUP_FK` (`PROD_ID`);

--
-- Indexes for table `t_company_group_dynamic_properties`
--
ALTER TABLE `t_company_group_dynamic_properties`
  ADD PRIMARY KEY (`ID_COMPANY_GROUP_DYNAMIC_PROPERTIES`),
  ADD KEY `T_COMPANY_GROUP_DYNAMIC_PROPERTIES_FK` (`PROD_ID`),
  ADD KEY `T_COMPANY_GROUP_DYNAMIC_PROPERTIES_FK_1` (`CUST_PREF_ID`);

--
-- Indexes for table `t_company_group_media`
--
ALTER TABLE `t_company_group_media`
  ADD PRIMARY KEY (`ID_GROUP_MEDIA`),
  ADD KEY `T_COMPANY_GROUP_MEDIA_T_COMPANY_GROUP_FK` (`PROD_ID`);

--
-- Indexes for table `t_company_group_teacher`
--
ALTER TABLE `t_company_group_teacher`
  ADD PRIMARY KEY (`COMPANY_GROUP_TEACHER_ID`),
  ADD KEY `T_COMPANY_GROUP_TEACHER_T_CUSTOMER_FK` (`ACC_ID`),
  ADD KEY `T_COMPANY_GROUP_TEACHER_T_COMPANY_GROUP_FK` (`PROD_ID`);

--
-- Indexes for table `t_company_jobtitle`
--
ALTER TABLE `t_company_jobtitle`
  ADD PRIMARY KEY (`CBT_ID`),
  ADD KEY `T_COMPANY_JOBTITLE_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_company_pre_register`
--
ALTER TABLE `t_company_pre_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_company_rep_legal`
--
ALTER TABLE `t_company_rep_legal`
  ADD PRIMARY KEY (`REP_ID`),
  ADD KEY `T_COMPANY_REP_LEGAL_FK` (`ACC_ID`);

--
-- Indexes for table `t_company_role`
--
ALTER TABLE `t_company_role`
  ADD PRIMARY KEY (`CROL_ID`);

--
-- Indexes for table `t_company_staff`
--
ALTER TABLE `t_company_staff`
  ADD PRIMARY KEY (`STAFF_ID`),
  ADD KEY `T_COMPANY_STAFF_T_CUSTOMER_FK` (`ACC_ID`),
  ADD KEY `T_COMPANY_STAFF_T_GEO_TIMEZONE_FK` (`TMZ_ID`);

--
-- Indexes for table `t_company_staff_role`
--
ALTER TABLE `t_company_staff_role`
  ADD PRIMARY KEY (`CUT_ID`),
  ADD KEY `T_COMPANY_STAFF_ROLE_T_COMPANY_STAFF_FK` (`STAFF_ID`),
  ADD KEY `T_COMPANY_STAFF_ROLE_T_COMPANY_ROLE_FK` (`CROL_ID`);

--
-- Indexes for table `t_contract`
--
ALTER TABLE `t_contract`
  ADD PRIMARY KEY (`ID_SIGN_TEMPLATE`);

--
-- Indexes for table `t_contract_log`
--
ALTER TABLE `t_contract_log`
  ADD PRIMARY KEY (`ID_CONTRACT_LOG`);

--
-- Indexes for table `t_contract_share`
--
ALTER TABLE `t_contract_share`
  ADD PRIMARY KEY (`SHARE_ID`),
  ADD KEY `CONTRACT_ID` (`CONTRACT_ID`);

--
-- Indexes for table `t_contract_signature`
--
ALTER TABLE `t_contract_signature`
  ADD PRIMARY KEY (`CONTRACT_SIGNATURE_ID`),
  ADD KEY `CONTRACT_ID` (`CONTRACT_ID`),
  ADD KEY `SIGNATURE_ID` (`SIGNATURE_ID`);

--
-- Indexes for table `t_contract_signer`
--
ALTER TABLE `t_contract_signer`
  ADD PRIMARY KEY (`CONTRACT_SIGNER_ID`),
  ADD KEY `CONTRACT_ID` (`CONTRACT_ID`),
  ADD KEY `SIGNER_ID` (`SIGNER_ID`);

--
-- Indexes for table `t_country_plan`
--
ALTER TABLE `t_country_plan`
  ADD PRIMARY KEY (`PLA_ID`),
  ADD KEY `T_COUNTRY_PLAN_T_GEO_COUNTRY_FK` (`COU_ID`);

--
-- Indexes for table `t_currency`
--
ALTER TABLE `t_currency`
  ADD PRIMARY KEY (`CUR_ID`);

--
-- Indexes for table `t_customer`
--
ALTER TABLE `t_customer`
  ADD PRIMARY KEY (`ACC_ID`);

--
-- Indexes for table `t_customer_account_verification`
--
ALTER TABLE `t_customer_account_verification`
  ADD PRIMARY KEY (`VER_ID`),
  ADD KEY `ACC_ID` (`ACC_ID`);

--
-- Indexes for table `t_customer_api_request`
--
ALTER TABLE `t_customer_api_request`
  ADD PRIMARY KEY (`REQUEST_ID`),
  ADD KEY `TOKEN_ID` (`TOKEN_ID`);

--
-- Indexes for table `t_customer_api_token`
--
ALTER TABLE `t_customer_api_token`
  ADD PRIMARY KEY (`CUSTOMER_TOKEN_ID`),
  ADD KEY `ACC_ID` (`ACC_ID`);

--
-- Indexes for table `t_customer_credential`
--
ALTER TABLE `t_customer_credential`
  ADD PRIMARY KEY (`CCRED_ID`),
  ADD KEY `T_CUSTOMER_CREDENTIAL_STAFF_TXXXXXPANY_STAFF_FK` (`ACC_ID`);

--
-- Indexes for table `t_customer_credential_staff`
--
ALTER TABLE `t_customer_credential_staff`
  ADD PRIMARY KEY (`CCRED_ID`),
  ADD KEY `T_CUSTOMER_CREDENTIAL_STAFF_T_COMPANY_STAFF_FK` (`STAFF_ID`);

--
-- Indexes for table `t_customer_domain`
--
ALTER TABLE `t_customer_domain`
  ADD PRIMARY KEY (`DOMAIN_ID`),
  ADD KEY `ACC_ID` (`ACC_ID`);

--
-- Indexes for table `t_customer_firebase_token`
--
ALTER TABLE `t_customer_firebase_token`
  ADD PRIMARY KEY (`FCM_ID`),
  ADD UNIQUE KEY `USER_FCM_TOKEN` (`ACC_ID`,`FCM_TOKEN`);

--
-- Indexes for table `t_customer_legal_id`
--
ALTER TABLE `t_customer_legal_id`
  ADD PRIMARY KEY (`DPER_ID`),
  ADD KEY `T_CUSTOMER_LEGAL_ID_FK` (`ACC_ID`),
  ADD KEY `T_CUSTOMER_LEGAL_ID_T_ID_TYPE_FK` (`ID_ID`);

--
-- Indexes for table `t_customer_notification`
--
ALTER TABLE `t_customer_notification`
  ADD PRIMARY KEY (`N_ID`),
  ADD KEY `FCM_ID` (`FCM_ID`);

--
-- Indexes for table `t_customer_reset_password`
--
ALTER TABLE `t_customer_reset_password`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `ACC_ID` (`ACC_ID`);

--
-- Indexes for table `t_customer_subscription`
--
ALTER TABLE `t_customer_subscription`
  ADD PRIMARY KEY (`SUB_ID`),
  ADD KEY `T_CUSTOMER_SUBSCRIPTION_FK2` (`ACC_ID`),
  ADD KEY `T_CUSTOMER_SUBSCRIPTION_T_COUNTRY_PLAN_FK` (`PLA_ID`);

--
-- Indexes for table `t_cust_pref`
--
ALTER TABLE `t_cust_pref`
  ADD PRIMARY KEY (`T_CUST_PREF_ID`),
  ADD KEY `T_CUST_PREF_FK` (`ACC_ID`),
  ADD KEY `T_CUST_PREF_FK_1` (`FATHER_ID`);

--
-- Indexes for table `t_cust_pref_branch`
--
ALTER TABLE `t_cust_pref_branch`
  ADD PRIMARY KEY (`CUST_PREFB_ID`),
  ADD KEY `T_CUST_PREF_BRANCH_FK` (`T_CUST_PREF_ID`),
  ADD KEY `T_CUST_PREF_BRANCH_T_COMPANY_BRANCH_FK` (`CBR_ID`);

--
-- Indexes for table `t_cust_pref_course`
--
ALTER TABLE `t_cust_pref_course`
  ADD PRIMARY KEY (`CUST_PREFC_ID`),
  ADD KEY `T_CUST_PREF_COURSE_T_COMPANY_GROUP_FK` (`PROD_ID`),
  ADD KEY `T_CUST_PREF_COURSE_T_CUST_PREF_FK` (`T_CUST_PREF_ID`);

--
-- Indexes for table `t_cust_pref_participant`
--
ALTER TABLE `t_cust_pref_participant`
  ADD PRIMARY KEY (`CUST_PREFP_ID`),
  ADD KEY `T_CUST_PREF_PARTICIPANT_T_CUST_PREF_FK` (`T_CUST_PREF_ID`),
  ADD KEY `T_CUST_PREF_PARTICIPANT_T_COMPANY_GROUP_CUSTOMER_FK` (`CV_ID`),
  ADD KEY `T_CUST_PREF_PARTICIPANT_T_CUST_PREF_PARTICIPANT_FK` (`FATHER_ID`);

--
-- Indexes for table `t_cust_pref_participant_children`
--
ALTER TABLE `t_cust_pref_participant_children`
  ADD PRIMARY KEY (`CUST_PREF_PART_ID`),
  ADD KEY `T_CUST_PREF_PARTICIPANT_CHILDREN_FK` (`CUST_PREFP_ID`);

--
-- Indexes for table `t_cust_pref_participant_image`
--
ALTER TABLE `t_cust_pref_participant_image`
  ADD PRIMARY KEY (`CUST_PREF_PART_IMG_ID`),
  ADD KEY `T_CUST_PREF_PARTICIPANT_IMAGE_FK` (`T_CUST_PREF_ID`),
  ADD KEY `T_CUST_PREF_PARTICIPANT_IMAGE_FK_1` (`CV_ID`);

--
-- Indexes for table `t_digital_signature`
--
ALTER TABLE `t_digital_signature`
  ADD PRIMARY KEY (`T_DIGITAL_SIG_ID`),
  ADD KEY `T_DIGITAL_SIGNATURE_FK` (`ACC_ID`);

--
-- Indexes for table `t_event_class`
--
ALTER TABLE `t_event_class`
  ADD PRIMARY KEY (`T_EVENT_CL_ID`),
  ADD KEY `T_EVENT_CLASS_T_COMPANY_GROUP_FK` (`PROD_ID`);

--
-- Indexes for table `t_event_class_checkin`
--
ALTER TABLE `t_event_class_checkin`
  ADD PRIMARY KEY (`EVENT_CLASS_CHECK_ID`),
  ADD KEY `T_EVENT_CLASS_CHECKIN_FK` (`T_EVENT_CL_ID`);

--
-- Indexes for table `t_event_registration`
--
ALTER TABLE `t_event_registration`
  ADD PRIMARY KEY (`EVENT_REG_ID`),
  ADD KEY `T_EVENT_REGISTRATION_FK` (`ACC_ID`),
  ADD KEY `T_EVENT_REGISTRATION_T_COMPANY_GROUP_FK` (`PROD_ID`);

--
-- Indexes for table `t_form`
--
ALTER TABLE `t_form`
  ADD PRIMARY KEY (`ID_FORM`);

--
-- Indexes for table `t_generation_signature`
--
ALTER TABLE `t_generation_signature`
  ADD PRIMARY KEY (`ID_GENERATION_SIGNATURE`),
  ADD KEY `FK_GENERATION_SIGNATURE_T_SIGNATURE_idx` (`ID_SIGNATURE`),
  ADD KEY `T_GENERATION_SIGNATURE_FK` (`ACC_ID_COMPANY`),
  ADD KEY `T_GENERATION_SIGNATURE_FK_1` (`ACC_ID_SIGNER`),
  ADD KEY `T_GENERATION_SIGNATURE_FK_2` (`TEMPLATE_ID`),
  ADD KEY `T_GENERATION_SIGNATURE_FK_3` (`ID_CERTIFICATE_GENERATION`);

--
-- Indexes for table `t_generation_signature_records`
--
ALTER TABLE `t_generation_signature_records`
  ADD PRIMARY KEY (`ID_GENERATION_SIGNATURE_RECORD`),
  ADD KEY `T_GENERATION_SIGNATURE_RECORDS_FK` (`ACC_ID_SIGNER`),
  ADD KEY `T_GENERATION_SIGNATURE_RECORDS_FK_1` (`CV_ID_PARTICIPANT`),
  ADD KEY `T_GENERATION_SIGNATURE_RECORDS_FK_2` (`ID_GENERATION_SIGNATURE`);

--
-- Indexes for table `t_geo_country`
--
ALTER TABLE `t_geo_country`
  ADD PRIMARY KEY (`COU_ISO_ALPHA`);

--
-- Indexes for table `t_geo_language`
--
ALTER TABLE `t_geo_language`
  ADD PRIMARY KEY (`LAN_ID`);

--
-- Indexes for table `t_geo_timezone`
--
ALTER TABLE `t_geo_timezone`
  ADD PRIMARY KEY (`TMZ_ID`);

--
-- Indexes for table `t_id_type`
--
ALTER TABLE `t_id_type`
  ADD PRIMARY KEY (`ID_ID`),
  ADD KEY `T_ID_TYPE_T_GEO_COUNTRY_FK` (`COU_ID`);

--
-- Indexes for table `t_inconsistency`
--
ALTER TABLE `t_inconsistency`
  ADD PRIMARY KEY (`INCONSISTENCY_ID`),
  ADD KEY `T_INCONSISTENCY_FK` (`CODE`) USING BTREE;

--
-- Indexes for table `t_language`
--
ALTER TABLE `t_language`
  ADD PRIMARY KEY (`L_ID`);

--
-- Indexes for table `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`T_ORDER_ID`),
  ADD KEY `T_ORDER_FK` (`ACC_ID`),
  ADD KEY `T_ORDER_FK_1` (`PAY_MET_ID`);

--
-- Indexes for table `t_participant_validation`
--
ALTER TABLE `t_participant_validation`
  ADD PRIMARY KEY (`ID_VALIDATION`);

--
-- Indexes for table `t_payment_data`
--
ALTER TABLE `t_payment_data`
  ADD PRIMARY KEY (`T_PAYM_ID`),
  ADD KEY `T_PAYMENT_DATA_FK` (`T_ORDER_ID`),
  ADD KEY `T_PAYMENT_DATA_T_REQUEST_FK` (`T_REQUEST_ID`);

--
-- Indexes for table `t_payment_method`
--
ALTER TABLE `t_payment_method`
  ADD PRIMARY KEY (`PAY_MET_ID`);

--
-- Indexes for table `t_plan`
--
ALTER TABLE `t_plan`
  ADD PRIMARY KEY (`ID_PLAN`),
  ADD KEY `T_PLAN_FK` (`ID_COUNTRY`);

--
-- Indexes for table `t_plan_customer`
--
ALTER TABLE `t_plan_customer`
  ADD PRIMARY KEY (`ID_PLAN_CUSTOMER`),
  ADD KEY `T_PLAN_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_plan_purchase`
--
ALTER TABLE `t_plan_purchase`
  ADD PRIMARY KEY (`ID_PLAN_PURCHASE`),
  ADD KEY `T_PLAN_PURCHASE_FK` (`ACC_ID`);

--
-- Indexes for table `t_prefix_certificates`
--
ALTER TABLE `t_prefix_certificates`
  ADD PRIMARY KEY (`ID_PREF_CERT`);

--
-- Indexes for table `t_pre_register`
--
ALTER TABLE `t_pre_register`
  ADD PRIMARY KEY (`ID_PREREGISTER`);

--
-- Indexes for table `t_prod_blockchain`
--
ALTER TABLE `t_prod_blockchain`
  ADD PRIMARY KEY (`PROD_ID`);

--
-- Indexes for table `t_push_notification`
--
ALTER TABLE `t_push_notification`
  ADD PRIMARY KEY (`T_PUSH_ID`),
  ADD KEY `T_PUSH_NOTIFICATION_FK` (`ACC_ID`);

--
-- Indexes for table `t_record_certificate`
--
ALTER TABLE `t_record_certificate`
  ADD PRIMARY KEY (`CODE`),
  ADD KEY `T_RECORD_CERTIFICATE_T_TEMPLATE_FK` (`TEMPLATE_ID`),
  ADD KEY `T_RECORD_CERTIFICATE_T_COMPANY_STAFF_FK` (`STAFF_ID`),
  ADD KEY `T_RECORD_CERTIFICATE_T_COMPANY_GROUP_CUSTOMER_FK` (`CV_ID`),
  ADD KEY `T_RECORD_CERTIFICATE_T_CUSTOMER_FK` (`ACC_ID_ISSUER`);

--
-- Indexes for table `t_record_certificate_email`
--
ALTER TABLE `t_record_certificate_email`
  ADD PRIMARY KEY (`ID_RECORD_CERTIFICATE_EMAIL`);

--
-- Indexes for table `t_record_security_staff`
--
ALTER TABLE `t_record_security_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `T_RECORD_SECURITY_WALLET_T_COMPANY_STAFF_FK` (`STAFF_ID`);

--
-- Indexes for table `t_record_security_wallet`
--
ALTER TABLE `t_record_security_wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `T_RECORD_SECURITY_WALLET_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_request`
--
ALTER TABLE `t_request`
  ADD PRIMARY KEY (`T_REQUEST_ID`),
  ADD KEY `T_REQUEST_T_COMPANY_GROUP_FK` (`PROD_ID`),
  ADD KEY `T_REQUEST_T_COMPANY_STAFF_FK` (`STAFF_ID`),
  ADD KEY `T_REQUEST_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_request_api`
--
ALTER TABLE `t_request_api`
  ADD PRIMARY KEY (`ID_REQUEST_API`),
  ADD KEY `T_REQUEST_API_T_CUSTOMER_FK` (`ACC_ID`),
  ADD KEY `T_REQUEST_API_T_CUSTOMER_FK_1` (`USER_ACC_ID`),
  ADD KEY `T_REQUEST_API_T_TEMPLATE_FK` (`TEMPLATE_ID`),
  ADD KEY `T_REQUEST_API_T_FORM_FK` (`FORM_ID`),
  ADD KEY `T_REQUEST_API_T_COMPANY_BRANCH_FK` (`BRANCH_ID`),
  ADD KEY `T_REQUEST_API_T_COMPANY_GROUP_FK` (`GROUP_ID`);

--
-- Indexes for table `t_request_api_token`
--
ALTER TABLE `t_request_api_token`
  ADD PRIMARY KEY (`ID_REQUEST_API_TOKEN`),
  ADD KEY `T_REQUEST_API_TOKEN_FK` (`ACC_ID`);

--
-- Indexes for table `t_search_record`
--
ALTER TABLE `t_search_record`
  ADD PRIMARY KEY (`T_SEARCH_ID`);

--
-- Indexes for table `t_search_token`
--
ALTER TABLE `t_search_token`
  ADD PRIMARY KEY (`SEARCH_TOKEN_ID`),
  ADD KEY `T_SEARCH_TOKEN_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_signature`
--
ALTER TABLE `t_signature`
  ADD PRIMARY KEY (`ID_SIGNATURE`),
  ADD KEY `T_SIGNATURE_FK` (`ACC_ID`),
  ADD KEY `T_SIGNATURE_FK_1` (`DPER_ID`);

--
-- Indexes for table `t_skills`
--
ALTER TABLE `t_skills`
  ADD PRIMARY KEY (`SKILL_ID`);

--
-- Indexes for table `t_skills_company_group`
--
ALTER TABLE `t_skills_company_group`
  ADD PRIMARY KEY (`SKILL_ID`,`PROD_ID`),
  ADD KEY `T_SKILLS_COMPANY_GROUP_T_COMPANY_GROUP_FK` (`PROD_ID`);

--
-- Indexes for table `t_template`
--
ALTER TABLE `t_template`
  ADD PRIMARY KEY (`TEMPLATE_ID`),
  ADD KEY `T_TEMPLATE_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_template_draft`
--
ALTER TABLE `t_template_draft`
  ADD PRIMARY KEY (`TEMPLATE_DRAFT_ID`),
  ADD KEY `T_TEMPLATE_DRAFT_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_template_email`
--
ALTER TABLE `t_template_email`
  ADD PRIMARY KEY (`ID_EMAIL`),
  ADD KEY `T_TEMPLATE_EMAIL_T_CUSTOMER_FK` (`ACC_ID`);

--
-- Indexes for table `t_template_preference`
--
ALTER TABLE `t_template_preference`
  ADD PRIMARY KEY (`CPRE_ID`),
  ADD KEY `T_TEMPLATE_PREFERENCE_T_TEMPLATE_FK` (`TEMPLATE_ID`);

--
-- Indexes for table `t_transaction`
--
ALTER TABLE `t_transaction`
  ADD PRIMARY KEY (`ID_TRANSACTION_REGISTER`);

--
-- Indexes for table `t_translation`
--
ALTER TABLE `t_translation`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `T_TRANSLATION_LAN_ID_IDX` (`LAN_ID`) USING BTREE;

--
-- Indexes for table `t_translation_entry`
--
ALTER TABLE `t_translation_entry`
  ADD PRIMARY KEY (`TENT_ID`),
  ADD KEY `T_TRANSLATION_ENTRY_FK` (`TRANS_ID`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `t_company_pre_register`
--
ALTER TABLE `t_company_pre_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_blockchain`
--
ALTER TABLE `t_blockchain`
  ADD CONSTRAINT `T_BLOCKCHAIN_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_certificates_generation_children`
--
ALTER TABLE `t_certificates_generation_children`
  ADD CONSTRAINT `FK_T_CERTIFICATES_GENERATION_CHILDREN_T_CERTIFICATES_GENERATION` FOREIGN KEY (`T_CERTIFICATES_GENERATION_ID`) REFERENCES `t_certificates_generation` (`CERTIFICATES_GENERATION_ID`),
  ADD CONSTRAINT `FK_T_CERTIFICATES_GENERATION_CHILDREN_T_COMPANY_GROUP_CUSTOMER` FOREIGN KEY (`CV_ID`) REFERENCES `t_company_group_customer` (`CV_ID`);

--
-- Constraints for table `t_code`
--
ALTER TABLE `t_code`
  ADD CONSTRAINT `T_CODE_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_company_branch`
--
ALTER TABLE `t_company_branch`
  ADD CONSTRAINT `T_COMPANY_BRANCH_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_company_branch_template`
--
ALTER TABLE `t_company_branch_template`
  ADD CONSTRAINT `T_COMPANY_BRANCH_TEMPLATE_T_COMPANY_BRANCH_FK` FOREIGN KEY (`CBR_ID`) REFERENCES `t_company_branch` (`CBR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `T_COMPANY_BRANCH_TEMPLATE_T_TEMPLATE_FK` FOREIGN KEY (`TEMPLATE_ID`) REFERENCES `t_template` (`TEMPLATE_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_company_dept`
--
ALTER TABLE `t_company_dept`
  ADD CONSTRAINT `T_COMPANY_DEPT_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_company_directory`
--
ALTER TABLE `t_company_directory`
  ADD CONSTRAINT `T_COMPANY_DIRECTORY_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID_CUSTOMER`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_COMPANY_DIRECTORY_T_CUSTOMER_FK_1` FOREIGN KEY (`ACC_ID_COMPANY`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_COMPANY_DIRECTORY_T_GEO_COUNTRY_FK` FOREIGN KEY (`COU_ID`) REFERENCES `t_geo_country` (`COU_ISO_ALPHA`),
  ADD CONSTRAINT `T_COMPANY_DIRECTORY_T_GEO_COUNTRY_FK_1` FOREIGN KEY (`COU_ID_COMPANY`) REFERENCES `t_geo_country` (`COU_ISO_ALPHA`),
  ADD CONSTRAINT `T_COMPANY_DIRECTORY_T_ID_TYPE_FK` FOREIGN KEY (`ID_ID`) REFERENCES `t_id_type` (`ID_ID`),
  ADD CONSTRAINT `T_COMPANY_DIRECTORY_T_ID_TYPE_FK_1` FOREIGN KEY (`COMPANY_LEGAL_ID`) REFERENCES `t_id_type` (`ID_ID`);

--
-- Constraints for table `t_company_group`
--
ALTER TABLE `t_company_group`
  ADD CONSTRAINT `T_COMPANY_GROUP_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_company_group_customer`
--
ALTER TABLE `t_company_group_customer`
  ADD CONSTRAINT `T_COMPANY_GROUP_CUSTOMER_T_COMPANY_GROUP_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`),
  ADD CONSTRAINT `T_COMPANY_GROUP_CUSTOMER_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_company_group_dynamic_properties`
--
ALTER TABLE `t_company_group_dynamic_properties`
  ADD CONSTRAINT `T_COMPANY_GROUP_DYNAMIC_PROPERTIES_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`),
  ADD CONSTRAINT `T_COMPANY_GROUP_DYNAMIC_PROPERTIES_FK_1` FOREIGN KEY (`CUST_PREF_ID`) REFERENCES `t_cust_pref` (`T_CUST_PREF_ID`);

--
-- Constraints for table `t_company_group_media`
--
ALTER TABLE `t_company_group_media`
  ADD CONSTRAINT `T_COMPANY_GROUP_MEDIA_T_COMPANY_GROUP_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`);

--
-- Constraints for table `t_company_group_teacher`
--
ALTER TABLE `t_company_group_teacher`
  ADD CONSTRAINT `T_COMPANY_GROUP_TEACHER_T_COMPANY_GROUP_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`),
  ADD CONSTRAINT `T_COMPANY_GROUP_TEACHER_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_company_jobtitle`
--
ALTER TABLE `t_company_jobtitle`
  ADD CONSTRAINT `T_COMPANY_JOBTITLE_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_company_rep_legal`
--
ALTER TABLE `t_company_rep_legal`
  ADD CONSTRAINT `T_COMPANY_REP_LEGAL_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_company_staff`
--
ALTER TABLE `t_company_staff`
  ADD CONSTRAINT `T_COMPANY_STAFF_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_COMPANY_STAFF_T_GEO_TIMEZONE_FK` FOREIGN KEY (`TMZ_ID`) REFERENCES `t_geo_timezone` (`TMZ_ID`);

--
-- Constraints for table `t_company_staff_role`
--
ALTER TABLE `t_company_staff_role`
  ADD CONSTRAINT `T_COMPANY_STAFF_ROLE_T_COMPANY_ROLE_FK` FOREIGN KEY (`CROL_ID`) REFERENCES `t_company_role` (`CROL_ID`),
  ADD CONSTRAINT `T_COMPANY_STAFF_ROLE_T_COMPANY_STAFF_FK` FOREIGN KEY (`STAFF_ID`) REFERENCES `t_company_staff` (`STAFF_ID`);

--
-- Constraints for table `t_contract_share`
--
ALTER TABLE `t_contract_share`
  ADD CONSTRAINT `T_CONTRACT_SHARE_ibfk_1` FOREIGN KEY (`CONTRACT_ID`) REFERENCES `t_contract` (`ID_SIGN_TEMPLATE`);

--
-- Constraints for table `t_contract_signature`
--
ALTER TABLE `t_contract_signature`
  ADD CONSTRAINT `T_CONTRACT_SIGNATURE_ibfk_1` FOREIGN KEY (`CONTRACT_ID`) REFERENCES `t_contract` (`ID_SIGN_TEMPLATE`),
  ADD CONSTRAINT `T_CONTRACT_SIGNATURE_ibfk_2` FOREIGN KEY (`SIGNATURE_ID`) REFERENCES `t_signature` (`ID_SIGNATURE`);

--
-- Constraints for table `t_contract_signer`
--
ALTER TABLE `t_contract_signer`
  ADD CONSTRAINT `T_CONTRACT_SIGNER_ibfk_1` FOREIGN KEY (`CONTRACT_ID`) REFERENCES `t_contract` (`ID_SIGN_TEMPLATE`),
  ADD CONSTRAINT `T_CONTRACT_SIGNER_ibfk_2` FOREIGN KEY (`SIGNER_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_country_plan`
--
ALTER TABLE `t_country_plan`
  ADD CONSTRAINT `T_COUNTRY_PLAN_T_GEO_COUNTRY_FK` FOREIGN KEY (`COU_ID`) REFERENCES `t_geo_country` (`COU_ISO_ALPHA`);

--
-- Constraints for table `t_customer_account_verification`
--
ALTER TABLE `t_customer_account_verification`
  ADD CONSTRAINT `T_CUSTOMER_ACCOUNT_VERIFICATION_ibfk_1` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_customer_api_request`
--
ALTER TABLE `t_customer_api_request`
  ADD CONSTRAINT `T_CUSTOMER_API_REQUEST_ibfk_1` FOREIGN KEY (`TOKEN_ID`) REFERENCES `t_customer_api_token` (`CUSTOMER_TOKEN_ID`);

--
-- Constraints for table `t_customer_api_token`
--
ALTER TABLE `t_customer_api_token`
  ADD CONSTRAINT `T_CUSTOMER_API_TOKEN_ibfk_1` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_customer_credential`
--
ALTER TABLE `t_customer_credential`
  ADD CONSTRAINT `T_CUSTOMER_CREDENTIAL_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_customer_credential_staff`
--
ALTER TABLE `t_customer_credential_staff`
  ADD CONSTRAINT `T_CUSTOMER_CREDENTIAL_STAFF_T_COMPANY_STAFF_FK` FOREIGN KEY (`STAFF_ID`) REFERENCES `t_company_staff` (`STAFF_ID`);

--
-- Constraints for table `t_customer_domain`
--
ALTER TABLE `t_customer_domain`
  ADD CONSTRAINT `T_CUSTOMER_DOMAIN_ibfk_1` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_customer_firebase_token`
--
ALTER TABLE `t_customer_firebase_token`
  ADD CONSTRAINT `T_CUSTOMER_FIREBASE_TOKEN_ibfk_1` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_customer_legal_id`
--
ALTER TABLE `t_customer_legal_id`
  ADD CONSTRAINT `T_CUSTOMER_LEGAL_ID_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_CUSTOMER_LEGAL_ID_T_ID_TYPE_FK` FOREIGN KEY (`ID_ID`) REFERENCES `t_id_type` (`ID_ID`);

--
-- Constraints for table `t_customer_notification`
--
ALTER TABLE `t_customer_notification`
  ADD CONSTRAINT `T_CUSTOMER_NOTIFICATION_ibfk_1` FOREIGN KEY (`FCM_ID`) REFERENCES `t_customer_firebase_token` (`FCM_ID`);

--
-- Constraints for table `t_customer_reset_password`
--
ALTER TABLE `t_customer_reset_password`
  ADD CONSTRAINT `T_CUSTOMER_RESET_PASSWORD_ibfk_1` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_customer_subscription`
--
ALTER TABLE `t_customer_subscription`
  ADD CONSTRAINT `T_CUSTOMER_SUBSCRIPTION_FK2` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_CUSTOMER_SUBSCRIPTION_T_COUNTRY_PLAN_FK` FOREIGN KEY (`PLA_ID`) REFERENCES `t_country_plan` (`PLA_ID`);

--
-- Constraints for table `t_cust_pref`
--
ALTER TABLE `t_cust_pref`
  ADD CONSTRAINT `T_CUST_PREF_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_cust_pref_branch`
--
ALTER TABLE `t_cust_pref_branch`
  ADD CONSTRAINT `T_CUST_PREF_BRANCH_FK` FOREIGN KEY (`T_CUST_PREF_ID`) REFERENCES `t_cust_pref` (`T_CUST_PREF_ID`),
  ADD CONSTRAINT `T_CUST_PREF_BRANCH_T_COMPANY_BRANCH_FK` FOREIGN KEY (`CBR_ID`) REFERENCES `t_company_branch` (`CBR_ID`);

--
-- Constraints for table `t_cust_pref_course`
--
ALTER TABLE `t_cust_pref_course`
  ADD CONSTRAINT `T_CUST_PREF_COURSE_T_COMPANY_GROUP_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`),
  ADD CONSTRAINT `T_CUST_PREF_COURSE_T_CUST_PREF_FK` FOREIGN KEY (`T_CUST_PREF_ID`) REFERENCES `t_cust_pref` (`T_CUST_PREF_ID`);

--
-- Constraints for table `t_cust_pref_participant`
--
ALTER TABLE `t_cust_pref_participant`
  ADD CONSTRAINT `T_CUST_PREF_PARTICIPANT_T_COMPANY_GROUP_CUSTOMER_FK` FOREIGN KEY (`CV_ID`) REFERENCES `t_company_group_customer` (`CV_ID`),
  ADD CONSTRAINT `T_CUST_PREF_PARTICIPANT_T_CUST_PREF_FK` FOREIGN KEY (`T_CUST_PREF_ID`) REFERENCES `t_cust_pref` (`T_CUST_PREF_ID`);

--
-- Constraints for table `t_cust_pref_participant_children`
--
ALTER TABLE `t_cust_pref_participant_children`
  ADD CONSTRAINT `T_CUST_PREF_PARTICIPANT_CHILDREN_FK` FOREIGN KEY (`CUST_PREFP_ID`) REFERENCES `t_cust_pref_participant` (`CUST_PREFP_ID`);

--
-- Constraints for table `t_cust_pref_participant_image`
--
ALTER TABLE `t_cust_pref_participant_image`
  ADD CONSTRAINT `T_CUST_PREF_PARTICIPANT_IMAGE_FK` FOREIGN KEY (`T_CUST_PREF_ID`) REFERENCES `t_cust_pref` (`T_CUST_PREF_ID`);

--
-- Constraints for table `t_digital_signature`
--
ALTER TABLE `t_digital_signature`
  ADD CONSTRAINT `T_DIGITAL_SIGNATURE_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_event_class`
--
ALTER TABLE `t_event_class`
  ADD CONSTRAINT `T_EVENT_CLASS_T_COMPANY_GROUP_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`);

--
-- Constraints for table `t_event_class_checkin`
--
ALTER TABLE `t_event_class_checkin`
  ADD CONSTRAINT `T_EVENT_CLASS_CHECKIN_FK` FOREIGN KEY (`T_EVENT_CL_ID`) REFERENCES `t_event_class` (`T_EVENT_CL_ID`);

--
-- Constraints for table `t_event_registration`
--
ALTER TABLE `t_event_registration`
  ADD CONSTRAINT `T_EVENT_REGISTRATION_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_EVENT_REGISTRATION_T_COMPANY_GROUP_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`);

--
-- Constraints for table `t_generation_signature`
--
ALTER TABLE `t_generation_signature`
  ADD CONSTRAINT `FK_GENERATION_SIGNATURE_T_SIGNATURE` FOREIGN KEY (`ID_SIGNATURE`) REFERENCES `t_signature` (`ID_SIGNATURE`),
  ADD CONSTRAINT `T_GENERATION_SIGNATURE_FK` FOREIGN KEY (`ACC_ID_COMPANY`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_GENERATION_SIGNATURE_FK_1` FOREIGN KEY (`ACC_ID_SIGNER`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_GENERATION_SIGNATURE_FK_2` FOREIGN KEY (`TEMPLATE_ID`) REFERENCES `t_template` (`TEMPLATE_ID`),
  ADD CONSTRAINT `T_GENERATION_SIGNATURE_FK_3` FOREIGN KEY (`ID_CERTIFICATE_GENERATION`) REFERENCES `t_certificates_generation` (`CERTIFICATES_GENERATION_ID`);

--
-- Constraints for table `t_generation_signature_records`
--
ALTER TABLE `t_generation_signature_records`
  ADD CONSTRAINT `T_GENERATION_SIGNATURE_RECORDS_FK` FOREIGN KEY (`ACC_ID_SIGNER`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_GENERATION_SIGNATURE_RECORDS_FK_1` FOREIGN KEY (`CV_ID_PARTICIPANT`) REFERENCES `t_company_group_customer` (`CV_ID`),
  ADD CONSTRAINT `T_GENERATION_SIGNATURE_RECORDS_FK_2` FOREIGN KEY (`ID_GENERATION_SIGNATURE`) REFERENCES `t_generation_signature` (`ID_GENERATION_SIGNATURE`);

--
-- Constraints for table `t_id_type`
--
ALTER TABLE `t_id_type`
  ADD CONSTRAINT `T_ID_TYPE_T_GEO_COUNTRY_FK` FOREIGN KEY (`COU_ID`) REFERENCES `t_geo_country` (`COU_ISO_ALPHA`);

--
-- Constraints for table `t_order`
--
ALTER TABLE `t_order`
  ADD CONSTRAINT `T_ORDER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_ORDER_FK_1` FOREIGN KEY (`PAY_MET_ID`) REFERENCES `t_payment_method` (`PAY_MET_ID`);

--
-- Constraints for table `t_payment_data`
--
ALTER TABLE `t_payment_data`
  ADD CONSTRAINT `T_PAYMENT_DATA_FK` FOREIGN KEY (`T_ORDER_ID`) REFERENCES `t_order` (`T_ORDER_ID`),
  ADD CONSTRAINT `T_PAYMENT_DATA_T_REQUEST_FK` FOREIGN KEY (`T_REQUEST_ID`) REFERENCES `t_request` (`T_REQUEST_ID`);

--
-- Constraints for table `t_plan`
--
ALTER TABLE `t_plan`
  ADD CONSTRAINT `T_PLAN_FK` FOREIGN KEY (`ID_COUNTRY`) REFERENCES `t_geo_country` (`COU_ISO_ALPHA`);

--
-- Constraints for table `t_plan_customer`
--
ALTER TABLE `t_plan_customer`
  ADD CONSTRAINT `T_PLAN_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_plan_purchase`
--
ALTER TABLE `t_plan_purchase`
  ADD CONSTRAINT `T_PLAN_PURCHASE_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_prod_blockchain`
--
ALTER TABLE `t_prod_blockchain`
  ADD CONSTRAINT `T_PROD_BLOCKCHAIN_T_COMPANY_GROUP_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`);

--
-- Constraints for table `t_push_notification`
--
ALTER TABLE `t_push_notification`
  ADD CONSTRAINT `T_PUSH_NOTIFICATION_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_record_certificate`
--
ALTER TABLE `t_record_certificate`
  ADD CONSTRAINT `T_RECORD_CERTIFICATE_T_COMPANY_GROUP_CUSTOMER_FK` FOREIGN KEY (`CV_ID`) REFERENCES `t_company_group_customer` (`CV_ID`),
  ADD CONSTRAINT `T_RECORD_CERTIFICATE_T_COMPANY_STAFF_FK` FOREIGN KEY (`STAFF_ID`) REFERENCES `t_company_staff` (`STAFF_ID`),
  ADD CONSTRAINT `T_RECORD_CERTIFICATE_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID_ISSUER`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_RECORD_CERTIFICATE_T_TEMPLATE_FK` FOREIGN KEY (`TEMPLATE_ID`) REFERENCES `t_template` (`TEMPLATE_ID`);

--
-- Constraints for table `t_record_security_staff`
--
ALTER TABLE `t_record_security_staff`
  ADD CONSTRAINT `T_RECORD_SECURITY_WALLET_T_COMPANY_STAFF_FK` FOREIGN KEY (`STAFF_ID`) REFERENCES `t_company_staff` (`STAFF_ID`);

--
-- Constraints for table `t_record_security_wallet`
--
ALTER TABLE `t_record_security_wallet`
  ADD CONSTRAINT `T_RECORD_SECURITY_WALLET_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_request`
--
ALTER TABLE `t_request`
  ADD CONSTRAINT `T_REQUEST_T_COMPANY_GROUP_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`),
  ADD CONSTRAINT `T_REQUEST_T_COMPANY_STAFF_FK` FOREIGN KEY (`STAFF_ID`) REFERENCES `t_company_staff` (`STAFF_ID`),
  ADD CONSTRAINT `T_REQUEST_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_request_api`
--
ALTER TABLE `t_request_api`
  ADD CONSTRAINT `T_REQUEST_API_T_COMPANY_BRANCH_FK` FOREIGN KEY (`BRANCH_ID`) REFERENCES `t_company_branch` (`CBR_ID`),
  ADD CONSTRAINT `T_REQUEST_API_T_COMPANY_GROUP_FK` FOREIGN KEY (`GROUP_ID`) REFERENCES `t_company_group` (`PROD_ID`),
  ADD CONSTRAINT `T_REQUEST_API_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_REQUEST_API_T_CUSTOMER_FK_1` FOREIGN KEY (`USER_ACC_ID`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_REQUEST_API_T_FORM_FK` FOREIGN KEY (`FORM_ID`) REFERENCES `t_form` (`ID_FORM`),
  ADD CONSTRAINT `T_REQUEST_API_T_TEMPLATE_FK` FOREIGN KEY (`TEMPLATE_ID`) REFERENCES `t_template` (`TEMPLATE_ID`);

--
-- Constraints for table `t_request_api_token`
--
ALTER TABLE `t_request_api_token`
  ADD CONSTRAINT `T_REQUEST_API_TOKEN_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_search_token`
--
ALTER TABLE `t_search_token`
  ADD CONSTRAINT `T_SEARCH_TOKEN_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_signature`
--
ALTER TABLE `t_signature`
  ADD CONSTRAINT `T_SIGNATURE_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`),
  ADD CONSTRAINT `T_SIGNATURE_FK_1` FOREIGN KEY (`DPER_ID`) REFERENCES `t_customer_legal_id` (`DPER_ID`);

--
-- Constraints for table `t_skills_company_group`
--
ALTER TABLE `t_skills_company_group`
  ADD CONSTRAINT `T_SKILLS_COMPANY_GROUP_T_COMPANY_GROUP_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `t_company_group` (`PROD_ID`),
  ADD CONSTRAINT `T_SKILLS_COMPANY_GROUP_T_SKILLS_FK` FOREIGN KEY (`SKILL_ID`) REFERENCES `t_skills` (`SKILL_ID`);

--
-- Constraints for table `t_template`
--
ALTER TABLE `t_template`
  ADD CONSTRAINT `T_TEMPLATE_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_template_draft`
--
ALTER TABLE `t_template_draft`
  ADD CONSTRAINT `T_TEMPLATE_DRAFT_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_template_email`
--
ALTER TABLE `t_template_email`
  ADD CONSTRAINT `T_TEMPLATE_EMAIL_T_CUSTOMER_FK` FOREIGN KEY (`ACC_ID`) REFERENCES `t_customer` (`ACC_ID`);

--
-- Constraints for table `t_template_preference`
--
ALTER TABLE `t_template_preference`
  ADD CONSTRAINT `T_TEMPLATE_PREFERENCE_T_TEMPLATE_FK` FOREIGN KEY (`TEMPLATE_ID`) REFERENCES `t_template` (`TEMPLATE_ID`);

--
-- Constraints for table `t_translation_entry`
--
ALTER TABLE `t_translation_entry`
  ADD CONSTRAINT `T_TRANSLATION_ENTRY_FK` FOREIGN KEY (`TRANS_ID`) REFERENCES `t_translation` (`TRANS_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
