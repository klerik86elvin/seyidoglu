-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 18 2023 г., 13:10
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `seyidoglu`
--

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `link`, `image`, `created_at`, `updated_at`, `name`, `title`) VALUES
(1, NULL, 'companies\\October2023\\iL8g9zySl84pSpiT5Jo7.png', '2023-10-16 00:57:33', '2023-10-16 00:57:33', 'KOPERATİV SATIŞ', NULL),
(2, NULL, 'companies\\October2023\\8wZ1iXFNzKZkfZduGpYP.png', '2023-10-16 00:58:00', '2023-10-17 03:32:32', 'OFİS LƏVAZİMATLARI', 'MARKETLƏRDƏ MƏKTƏB VƏ OFİS LƏVAZİMATLARININ SATIŞI'),
(3, NULL, 'companies\\October2023\\c7kwsJ0usLey79TzWp5T.png', '2023-10-16 00:58:00', '2023-10-17 03:32:22', 'SATIŞ VƏ XİDMƏT MƏRKƏZİ', 'KATCEN- SATIŞ VƏ XİDMƏT MƏRKƏZİ'),
(4, NULL, 'companies\\October2023\\2KjQXzRUp2YpXTOfG0aF.png', '2023-10-16 00:58:00', '2023-10-17 03:31:49', 'MAĞAZALAR ŞƏBƏKƏSİ ', 'BREND DƏFTƏRXANA –MAĞAZALAR ŞƏBƏKƏSİ  (TEZLİKLƏ)'),
(5, NULL, 'companies\\October2023\\tfCT0x46tg9tCDvkVFIx.png', '2023-10-16 00:59:00', '2023-10-17 03:31:35', 'OFİS QİDA MƏHSULLARI', 'LEGOM – KEYFİYYƏTLİ OYUNCAQ   (TEZLİKLƏ)');

-- --------------------------------------------------------

--
-- Структура таблицы `company_galleries`
--

CREATE TABLE `company_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `company_galleries`
--

INSERT INTO `company_galleries` (`id`, `image`, `title`, `created_at`, `updated_at`, `company_id`) VALUES
(1, 'company-galleries\\October2023\\pUk3u90lgqTN2E9e18yN.jpg', 'Müştəri istəyi üzərində qurulmuş brend məhsullar ', '2023-10-17 02:26:00', '2023-10-17 03:51:45', 2),
(2, 'company-galleries\\October2023\\AvDLguOvtrVMEFpKOT7K.jpg', 'İllərin təcrübəsi əsasinda formalaşmiş –piştaxtalarda məhsul yerləşim sistemi', '2023-10-17 02:27:00', '2023-10-17 03:51:54', 2),
(3, 'company-galleries\\October2023\\0idJNAeR54Ux7tSh2rYD.jpg', 'Mağazada biz tərəfindən  standin həftədə 2 dəfə kontrolu və sifarişin yazilmasi', '2023-10-17 02:27:00', '2023-10-17 03:52:03', 2),
(4, 'company-galleries\\October2023\\ISORe6fkIbmVeVyAd49F.jpg', 'Mövsümü məhsullarin öncədən standlara yerləşdirilməsi', '2023-10-17 02:28:00', '2023-10-17 03:52:13', 2),
(5, 'company-galleries\\October2023\\Gtk8fbws2AzZQSCD2Rc1.jpg', 'Böyük marketlərlə müştərək Hiper dəftərxna mağazalarin açilişi', '2023-10-17 02:28:00', '2023-10-17 03:52:25', 2),
(6, 'company-galleries\\October2023\\gZNTLbG32aFDCodPwV1M.jpg', 'Original katriclərin  zəmanətli satişi', '2023-10-17 02:34:25', '2023-10-17 02:34:25', 3),
(7, 'company-galleries\\October2023\\JuO07S7raK95VDSTmjiX.jpg', 'Hər növ katriclərin yüksək keyfiyyətli doldurmasi    (usta otağinda)', '2023-10-17 02:35:01', '2023-10-17 02:35:01', 3),
(8, 'company-galleries\\October2023\\l0VMhiaTfxG6tWDvlJoP.jpg', 'Printerlərin təmizlənməsi və təmiri', '2023-10-17 02:35:16', '2023-10-17 02:35:16', 3),
(9, 'company-galleries\\October2023\\wSNnuEx9fhCYIHJqi1rX.jpg', 'Noutbuk və kompüterlərin təmiri', '2023-10-17 02:35:33', '2023-10-17 02:35:33', 3),
(10, 'company-galleries\\October2023\\I951sctnna6qbOcnJt5p.jpg', 'Dünya dəftərxana brendlərinin bir məkanda təqdimati', '2023-10-17 02:44:24', '2023-10-17 02:44:24', 4),
(11, 'company-galleries\\October2023\\whJYhFdBEQix2DPFdqJ4.jpg', 'Kitab və baxça vəsaitlərinin satişi', '2023-10-17 02:44:37', '2023-10-17 02:44:37', 4),
(12, 'company-galleries\\October2023\\hTPNW6XTt0Zo2SBlU6xt.jpg', 'Oyuncaq qəhrəmanlarinin standlari', '2023-10-17 02:44:50', '2023-10-17 02:44:50', 4),
(13, 'company-galleries\\October2023\\8TxNhnFyvcXxMK9NDH2p.jpg', 'Bütün məhsullarin almadan öncə yoxlamaq imkani', '2023-10-17 02:45:06', '2023-10-17 02:45:06', 4),
(14, 'company-galleries\\October2023\\wzV8QM4WwrLbFZ3K6EyZ.jpg', 'Brend məktəbli çantalarin sərgilənməsi', '2023-10-17 02:45:21', '2023-10-17 02:45:21', 4),
(15, 'company-galleries\\October2023\\76MTJ6rkyDR8TggMMCeH.jpg', 'Oyuncaqlarin topdan satişi', '2023-10-17 02:46:50', '2023-10-17 02:46:50', 5),
(16, 'company-galleries\\October2023\\4OL59f7Ygjc1jq9Gy4QS.jpg', 'Oyuncaqlarin mağazalarda stand şəklində sərgilənməsi', '2023-10-17 02:47:53', '2023-10-17 02:47:53', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(31, 5, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(32, 5, 'logo', 'file', 'Logo', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable|mimes:svg\",\"messages\":{\"mimes\":\"only SVG\"}}}', 4),
(33, 5, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 5),
(34, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(35, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(36, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(37, 8, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 2),
(38, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(39, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(40, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(41, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 6),
(42, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(43, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(44, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(45, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(46, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(47, 10, 'company_gallery_belongsto_company_relationship', 'relationship', 'companies', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Company\",\"table\":\"companies\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"companies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(48, 8, 'company_hasone_company_gallery_relationship', 'relationship', 'company_galleries', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CompanyGallery\",\"table\":\"company_galleries\",\"type\":\"hasOne\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"image\",\"pivot_table\":\"companies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(49, 10, 'company_id', 'text', 'Company Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(50, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(5, 'main_slireds', 'main-slireds', 'Main Slired', 'Main Slireds', NULL, 'App\\MainSlired', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-13 08:59:33', '2023-10-13 09:01:37'),
(8, 'companies', 'companies', 'Company', 'Companies', NULL, 'App\\Models\\Company', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-16 00:53:30', '2023-10-17 03:45:24'),
(10, 'company_galleries', 'company-galleries', 'Company Gallery', 'Company Galleries', NULL, 'App\\Models\\CompanyGallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-10-17 02:16:18', '2023-10-17 03:51:34');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `main_slireds`
--

CREATE TABLE `main_slireds` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `main_slireds`
--

INSERT INTO `main_slireds` (`id`, `image`, `title`, `logo`, `link`, `created_at`, `updated_at`) VALUES
(5, 'main-slireds\\October2023\\tGc25MvGlL0KgjXmRRqE.jpg', NULL, '[{\"download_link\":\"main-slireds\\\\October2023\\\\cRuoQwBGRS0WCORh8j9C.svg\",\"original_name\":\"01_logo.svg\"}]', NULL, '2023-10-13 09:02:05', '2023-10-13 09:02:05'),
(6, 'main-slireds\\October2023\\2TQ7hOZhVIMUxgtIOCRp.jpg', NULL, '[{\"download_link\":\"main-slireds\\\\October2023\\\\sf3aCtaPgWCWMLwzvQEf.svg\",\"original_name\":\"02_logo.svg\"}]', NULL, '2023-10-13 09:02:18', '2023-10-13 09:02:18');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-10-10 03:36:59', '2023-10-10 03:36:59');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-10-10 03:36:59', '2023-10-10 03:36:59', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-10-10 03:36:59', '2023-10-10 03:36:59', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-10-10 03:36:59', '2023-10-10 03:36:59', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-10-10 03:36:59', '2023-10-10 03:36:59', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-10-10 03:36:59', '2023-10-10 03:36:59', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-10-10 03:36:59', '2023-10-10 03:36:59', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-10-10 03:36:59', '2023-10-10 03:36:59', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-10-10 03:36:59', '2023-10-10 03:36:59', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-10-10 03:36:59', '2023-10-10 03:36:59', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-10-10 03:36:59', '2023-10-10 03:36:59', 'voyager.settings.index', NULL),
(12, 1, 'Main Slireds', '', '_self', NULL, NULL, NULL, 15, '2023-10-13 08:59:33', '2023-10-13 08:59:33', 'voyager.main-slireds.index', NULL),
(13, 1, 'Companies', '', '_self', NULL, NULL, NULL, 16, '2023-10-16 00:53:30', '2023-10-16 00:53:30', 'voyager.companies.index', NULL),
(14, 1, 'Company Galleries', '', '_self', NULL, NULL, NULL, 17, '2023-10-17 02:16:18', '2023-10-17 02:16:18', 'voyager.company-galleries.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(2, 'browse_bread', NULL, '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(3, 'browse_database', NULL, '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(4, 'browse_media', NULL, '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(5, 'browse_compass', NULL, '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(6, 'browse_menus', 'menus', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(7, 'read_menus', 'menus', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(8, 'edit_menus', 'menus', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(9, 'add_menus', 'menus', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(10, 'delete_menus', 'menus', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(11, 'browse_roles', 'roles', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(12, 'read_roles', 'roles', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(13, 'edit_roles', 'roles', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(14, 'add_roles', 'roles', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(15, 'delete_roles', 'roles', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(16, 'browse_users', 'users', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(17, 'read_users', 'users', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(18, 'edit_users', 'users', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(19, 'add_users', 'users', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(20, 'delete_users', 'users', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(21, 'browse_settings', 'settings', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(22, 'read_settings', 'settings', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(23, 'edit_settings', 'settings', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(24, 'add_settings', 'settings', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(25, 'delete_settings', 'settings', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(31, 'browse_main_slireds', 'main_slireds', '2023-10-13 08:59:33', '2023-10-13 08:59:33'),
(32, 'read_main_slireds', 'main_slireds', '2023-10-13 08:59:33', '2023-10-13 08:59:33'),
(33, 'edit_main_slireds', 'main_slireds', '2023-10-13 08:59:33', '2023-10-13 08:59:33'),
(34, 'add_main_slireds', 'main_slireds', '2023-10-13 08:59:33', '2023-10-13 08:59:33'),
(35, 'delete_main_slireds', 'main_slireds', '2023-10-13 08:59:33', '2023-10-13 08:59:33'),
(36, 'browse_companies', 'companies', '2023-10-16 00:53:30', '2023-10-16 00:53:30'),
(37, 'read_companies', 'companies', '2023-10-16 00:53:30', '2023-10-16 00:53:30'),
(38, 'edit_companies', 'companies', '2023-10-16 00:53:30', '2023-10-16 00:53:30'),
(39, 'add_companies', 'companies', '2023-10-16 00:53:30', '2023-10-16 00:53:30'),
(40, 'delete_companies', 'companies', '2023-10-16 00:53:30', '2023-10-16 00:53:30'),
(41, 'browse_company_galleries', 'company_galleries', '2023-10-17 02:16:18', '2023-10-17 02:16:18'),
(42, 'read_company_galleries', 'company_galleries', '2023-10-17 02:16:18', '2023-10-17 02:16:18'),
(43, 'edit_company_galleries', 'company_galleries', '2023-10-17 02:16:18', '2023-10-17 02:16:18'),
(44, 'add_company_galleries', 'company_galleries', '2023-10-17 02:16:18', '2023-10-17 02:16:18'),
(45, 'delete_company_galleries', 'company_galleries', '2023-10-17 02:16:18', '2023-10-17 02:16:18');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-10-10 03:36:59', '2023-10-10 03:36:59'),
(2, 'user', 'Normal User', '2023-10-10 03:36:59', '2023-10-10 03:36:59');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_rows', 'display_name', 29, 'en', 'Id', '2023-10-13 09:00:24', '2023-10-13 09:00:24'),
(2, 'data_rows', 'display_name', 30, 'en', 'Image', '2023-10-13 09:00:24', '2023-10-13 09:00:24'),
(3, 'data_rows', 'display_name', 31, 'en', 'Title', '2023-10-13 09:00:24', '2023-10-13 09:00:24'),
(4, 'data_rows', 'display_name', 32, 'en', 'Logo', '2023-10-13 09:00:24', '2023-10-13 09:00:24'),
(5, 'data_rows', 'display_name', 33, 'en', 'Link', '2023-10-13 09:00:24', '2023-10-13 09:00:24'),
(6, 'data_rows', 'display_name', 34, 'en', 'Created At', '2023-10-13 09:00:24', '2023-10-13 09:00:24'),
(7, 'data_rows', 'display_name', 35, 'en', 'Updated At', '2023-10-13 09:00:24', '2023-10-13 09:00:24'),
(8, 'data_types', 'display_name_singular', 5, 'en', 'Main Slired', '2023-10-13 09:00:24', '2023-10-13 09:00:24'),
(9, 'data_types', 'display_name_plural', 5, 'en', 'Main Slireds', '2023-10-13 09:00:24', '2023-10-13 09:00:24'),
(10, 'data_rows', 'display_name', 36, 'en', 'Id', '2023-10-16 00:55:58', '2023-10-16 00:55:58'),
(11, 'data_rows', 'display_name', 37, 'en', 'Link', '2023-10-16 00:55:58', '2023-10-16 00:55:58'),
(12, 'data_rows', 'display_name', 38, 'en', 'Image', '2023-10-16 00:55:58', '2023-10-16 00:55:58'),
(13, 'data_rows', 'display_name', 39, 'en', 'Created At', '2023-10-16 00:55:58', '2023-10-16 00:55:58'),
(14, 'data_rows', 'display_name', 40, 'en', 'Updated At', '2023-10-16 00:55:58', '2023-10-16 00:55:58'),
(15, 'data_types', 'display_name_singular', 8, 'en', 'Company', '2023-10-16 00:55:58', '2023-10-16 00:55:58'),
(16, 'data_types', 'display_name_plural', 8, 'en', 'Companies', '2023-10-16 00:55:58', '2023-10-16 00:55:58'),
(17, 'data_rows', 'display_name', 41, 'en', 'Name', '2023-10-16 00:56:21', '2023-10-16 00:56:21'),
(18, 'data_rows', 'display_name', 42, 'en', 'Id', '2023-10-17 02:22:28', '2023-10-17 02:22:28'),
(19, 'data_rows', 'display_name', 43, 'en', 'Image', '2023-10-17 02:22:28', '2023-10-17 02:22:28'),
(20, 'data_rows', 'display_name', 44, 'en', 'Title', '2023-10-17 02:22:28', '2023-10-17 02:22:28'),
(21, 'data_rows', 'display_name', 45, 'en', 'Created At', '2023-10-17 02:22:28', '2023-10-17 02:22:28'),
(22, 'data_rows', 'display_name', 46, 'en', 'Updated At', '2023-10-17 02:22:28', '2023-10-17 02:22:28'),
(23, 'data_rows', 'display_name', 47, 'en', 'companies', '2023-10-17 02:22:28', '2023-10-17 02:22:28'),
(24, 'data_types', 'display_name_singular', 10, 'en', 'Company Gallery', '2023-10-17 02:22:28', '2023-10-17 02:22:28'),
(25, 'data_types', 'display_name_plural', 10, 'en', 'Company Galleries', '2023-10-17 02:22:28', '2023-10-17 02:22:28'),
(26, 'data_rows', 'display_name', 49, 'en', 'Company Id', '2023-10-17 02:23:26', '2023-10-17 02:23:26'),
(27, 'data_rows', 'display_name', 48, 'en', 'company_galleries', '2023-10-17 03:31:11', '2023-10-17 03:31:11'),
(28, 'companies', 'name', 5, 'en', 'OFİS QİDA MƏHSULLARI', '2023-10-17 03:31:35', '2023-10-17 03:31:35'),
(29, 'companies', 'name', 4, 'en', 'MAĞAZALAR ŞƏBƏKƏSİ ', '2023-10-17 03:31:49', '2023-10-17 03:31:49'),
(30, 'companies', 'name', 3, 'en', 'SATIŞ VƏ XİDMƏT MƏRKƏZİ', '2023-10-17 03:32:01', '2023-10-17 03:32:01'),
(31, 'companies', 'title', 3, 'en', 'BREND DƏFTƏRXANA –MAĞAZALAR ŞƏBƏKƏSİ  (TEZLİKLƏ)', '2023-10-17 03:32:22', '2023-10-17 03:32:22'),
(32, 'companies', 'name', 2, 'en', 'OFİS LƏVAZİMATLARI', '2023-10-17 03:32:32', '2023-10-17 03:32:32'),
(33, 'data_rows', 'display_name', 50, 'en', 'Title', '2023-10-17 03:45:24', '2023-10-17 03:45:24'),
(34, 'company_galleries', 'title', 1, 'en', 'Müştəri istəyi üzərində qurulmuş brend məhsullar ', '2023-10-17 03:51:45', '2023-10-17 03:51:45'),
(35, 'company_galleries', 'title', 2, 'en', 'İllərin təcrübəsi əsasinda formalaşmiş –piştaxtalarda məhsul yerləşim sistemi', '2023-10-17 03:51:54', '2023-10-17 03:51:54'),
(36, 'company_galleries', 'title', 3, 'en', 'Mağazada biz tərəfindən  standin həftədə 2 dəfə kontrolu və sifarişin yazilmasi', '2023-10-17 03:52:03', '2023-10-17 03:52:03'),
(37, 'company_galleries', 'title', 4, 'en', 'Mövsümü məhsullarin öncədən standlara yerləşdirilməsi', '2023-10-17 03:52:13', '2023-10-17 03:52:13'),
(38, 'company_galleries', 'title', 5, 'en', 'Böyük marketlərlə müştərək Hiper dəftərxna mağazalarin açilişi', '2023-10-17 03:52:25', '2023-10-17 03:52:25');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@email.com', 'users/default.png', NULL, '$2y$10$2GL8uoloCJX443IT7eujM.vw2BmA7munH0aIuN64APi.bS2De8i66', NULL, NULL, '2023-10-10 03:53:57', '2023-10-10 03:53:57');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `company_galleries`
--
ALTER TABLE `company_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_galleries_company_id_` (`company_id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `main_slireds`
--
ALTER TABLE `main_slireds`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `company_galleries`
--
ALTER TABLE `company_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `main_slireds`
--
ALTER TABLE `main_slireds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
