-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2022 pada 15.14
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyekakhir_2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mesin Cuci', 'mollitia aut', '2022-04-07 03:48:57', '2022-04-07 03:48:57'),
(2, 'Kulkas', 'eaque-dolores', '2022-04-07 03:48:57', '2022-04-07 03:48:57'),
(3, 'Televisi', 'vitae-et', '2022-04-07 03:48:57', '2022-04-07 03:48:57'),
(4, 'Penanak Nasi', 'labore-sequi', '2022-04-07 03:48:57', '2022-04-07 03:48:57'),
(5, 'Blender', 'atque-quia', '2022-04-07 03:48:57', '2022-04-07 03:48:57'),
(6, 'Furniture', 'sapiente-quia', '2022-04-07 03:48:57', '2022-04-07 03:48:57'),
(7, 'Elektronik', 'elektronik', '2022-04-24 23:46:34', '2022-04-25 00:24:48'),
(51, 'elektronik2', 'elektronik2', '2022-04-28 02:06:28', '2022-04-28 02:06:28'),
(52, 'Kategori Baru 3', 'kategori-baru-3', '2022-05-09 03:28:31', '2022-05-09 03:28:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Silalahi', 'daniel@gmail.com', '12423424224', 'Coba ', '2022-05-17 09:31:04', '2022-05-17 09:31:04'),
(2, 'Tumbz', 'tumzbur@gmail.com', '1242523453', 'Tumbur Tambunan', '2022-05-18 07:46:48', '2022-05-18 07:46:48'),
(3, 'Daniel Silalahi', 'danielsilalahi345@gmail.com', '012842349235', 'Good', '2022-06-17 01:00:12', '2022-06-17 01:00:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5,6,52', 6, '2022-04-13 11:28:03', '2022-05-09 03:29:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Sofa Rumah Tangga', 'Sofa Rumah Tangga', '5000', 'http://127.0.0.1:8000/shop', '1649831311.jpg', 1, '2022-04-12 23:11:59', '2022-04-12 23:28:55'),
(6, 'Tempat Tidur', 'Spring Bed', '2500', 'http://127.0.0.1:8000/shop', '1649831545.jpg', 1, '2022-04-12 23:32:25', '2022-04-12 23:32:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_04_07_052200_create_sessions_table', 1),
(7, '2022_04_07_100004_create_categories_table', 2),
(8, '2022_04_07_100219_create_products_table', 2),
(9, '2022_04_13_040235_create_home_sliders_table', 3),
(10, '2022_04_13_111818_create_home_categories_table', 4),
(11, '2022_04_13_150043_create_sales_table', 5),
(12, '2022_04_28_133930_create_orders_table', 6),
(13, '2022_04_29_123215_create_orders_table', 7),
(14, '2022_04_29_123332_create_order_items_table', 7),
(15, '2022_04_29_123435_create_shippings_table', 7),
(16, '2022_04_29_123500_create_transactions_table', 7),
(17, '2022_05_09_110915_add_delivered_canceled_date_to_orders_table', 8),
(23, '2022_05_17_120444_create_reviews_table', 9),
(24, '2022_05_17_121301_add_rstatus_to_order_items_table', 9),
(25, '2022_05_17_155533_create_contacts_table', 10),
(26, '2022_05_18_134538_create_settings_table', 11),
(27, '2022_06_16_093230_create_shoppingcart_table', 12),
(28, '2022_06_16_100450_create_profiles_table', 12),
(29, '2016_01_15_105324_create_roles_table', 13),
(30, '2016_01_15_114412_create_role_user_table', 13),
(31, '2016_01_26_115212_create_permissions_table', 13),
(32, '2016_01_26_115523_create_permission_role_table', 13),
(33, '2016_02_09_132439_create_permission_user_table', 13),
(34, '2022_06_16_204011_create_owner_table', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(7, 4, '150.00', '0.00', '31.50', '181.50', 'Dwiki', 'Sangkuriang', '081234567890', 'matamodat@gmail.com', 'Jln.Pahlawan', 'Jln.Pahlawan', 'Medan', 'Sumatera Utara', 'Indonesia', '20028', 'delivered', 0, '2022-05-08 22:58:19', '2022-05-10 01:24:33', '2022-05-10', '2022-05-09'),
(8, 4, '300.00', '0.00', '63.00', '363.00', 'Daniel ', 'Silalahi', '12423432', 'daniel@gmail', 'Pagar Batu', NULL, 'Balige', 'Sumatera Utara', 'Indonesia', '22312', 'ordered', 0, '2022-05-08 23:05:15', '2022-05-08 23:05:15', NULL, NULL),
(9, 2, '300.00', '0.00', '63.00', '363.00', 'Maria', 'Purba', '124234212234', 'maria@gmail.com', 'Silaen', NULL, 'Silaen', 'Sumatera Utara', 'Indonesia', '123213', 'canceled', 0, '2022-05-09 03:24:45', '2022-05-09 04:42:06', NULL, '2022-05-09'),
(10, 3, '150.00', '0.00', '31.50', '181.50', 'Weny', 'Purba', '1232343542452', 'weny@gmail.com', 'Laguboti', 'Laguboti', 'Laguboti', 'Sumatera Utara', 'Indonesia', '12324', 'canceled', 0, '2022-05-09 03:55:15', '2022-05-09 05:05:17', NULL, '2022-05-09'),
(11, 3, '300.00', '0.00', '63.00', '363.00', 'Herbet', 'Sianipar', '081234567890', 'matamodat@gmail.com', 'Jln.Pahlawan', 'Jln.Pahlawan', 'Medan', 'Sumatera Utara', 'Indonesia', '20028', 'delivered', 0, '2022-05-09 08:23:44', '2022-05-09 08:24:05', '2022-05-09', NULL),
(12, 2, '150.00', '0.00', '31.50', '181.50', 'Dwiki', 'Sangkuriang', '081234567890', 'matamodat@gmail.com', 'Jln.Pahlawan', 'Jln.Pahlawan', 'Medan', 'Sumatera Utara', 'Indonesia', '20028', 'canceled', 0, '2022-05-10 01:24:00', '2022-05-10 01:25:41', NULL, '2022-05-10'),
(13, 2, '150.00', '0.00', '31.50', '181.50', 'Dwiki', 'Sangkuriang', '081234567890', 'matamodat@gmail.com', 'Jln.Pahlawan', 'Jln.Pahlawan', 'Medan', 'Sumatera Utara', 'Indonesia', '20028', 'ordered', 0, '2022-05-10 01:26:14', '2022-05-10 01:26:14', NULL, NULL),
(14, 3, '800.00', '0.00', '168.00', '968.00', 'Dwiki', 'Sangkuriang', '081234567890', 'matamodat@gmail.com', 'Jln.Pahlawan', 'Jln.Pahlawan', 'Medan', 'Sumatera Utara', 'Indonesia', '20028', 'delivered', 0, '2022-05-17 05:36:01', '2022-05-17 05:36:30', '2022-05-17', NULL),
(15, 3, '350.00', '0.00', '73.50', '423.50', 'Tumbz', 'Bur', '1243214342', 'tumzbur@gmail.com', 'Tambunan Baruara', 'Jln.Pahlawan', 'Medan', 'Sumatera Utara', 'Indonesia', '20028', 'canceled', 0, '2022-05-18 07:45:52', '2022-05-18 07:47:17', '2022-05-18', '2022-05-18'),
(16, 3, '350.00', '0.00', '73.50', '423.50', 'Dwiki', 'Sangkuriang', '081234567890', 'matamodat@gmail.com', 'Jln.Pahlawan', 'Jln.Pahlawan', 'Medan', 'Sumatera Utara', 'Indonesia', '20028', 'ordered', 0, '2022-06-17 00:55:36', '2022-06-17 00:55:36', NULL, NULL),
(17, 3, '350.00', '0.00', '73.50', '423.50', 'Dwiki', 'Sangkuriang', '081234567890', 'matamodat@gmail.com', 'Jln.Pahlawan', 'Jln.Pahlawan', 'Medan', 'Sumatera Utara', 'Indonesia', '20028', 'ordered', 0, '2022-06-17 00:56:46', '2022-06-17 00:56:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(5, 27, 7, '150.00', 1, '2022-05-08 22:58:19', '2022-05-08 22:58:19', 0),
(6, 26, 8, '300.00', 1, '2022-05-08 23:05:15', '2022-05-08 23:05:15', 0),
(7, 26, 9, '300.00', 1, '2022-05-09 03:24:45', '2022-05-09 03:24:45', 0),
(8, 82, 10, '150.00', 1, '2022-05-09 03:55:15', '2022-05-09 03:55:15', 0),
(9, 26, 11, '300.00', 1, '2022-05-09 08:23:44', '2022-05-17 05:33:13', 1),
(10, 82, 12, '150.00', 1, '2022-05-10 01:24:00', '2022-05-10 01:24:00', 0),
(11, 27, 13, '150.00', 1, '2022-05-10 01:26:14', '2022-05-10 01:26:14', 0),
(12, 19, 14, '800.00', 1, '2022-05-17 05:36:01', '2022-05-17 05:36:01', 0),
(13, 84, 15, '350.00', 1, '2022-05-18 07:45:52', '2022-05-18 07:45:52', 0),
(14, 84, 16, '350.00', 1, '2022-06-17 00:55:36', '2022-06-17 00:55:36', 0),
(15, 84, 17, '350.00', 1, '2022-06-17 00:56:46', '2022-06-17 00:56:46', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `owner`
--

CREATE TABLE `owner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OWN',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('matamodat@gmail.com', '$2y$10$euBlmj65ZNiyW24.WqEx7.MzrpA6yK7D6aNu1Qj9uVRYzuQWfh95m', '2022-05-18 20:42:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Mesin Cuci Polytron 2 Tabung', 'Mesin Cuci Polytron 2 Tabung', 'Mesin cuci 2 tabung ini juga dilengkapi dengan beberapa fitur yang pastinya mempermudah proses pencucian anda. ', 'Mesin cuci 2 tabung POLYTRON dapat menjadi solusi anda yang mencari mesin cuci murah. Polytron dilengkapi dengan smart teknologi sehingga proses pencucian kini lebih hemat listrik hingga 30%. Hasil mencuci sekarang lebih irit, bersih dan nyaman.', '1900.00', NULL, 'DIGI384', 'instock', 0, 181, 'produk_1.jpg', NULL, 1, '2022-04-07 05:13:00', '2022-04-13 05:44:47'),
(2, 'Mesin Cuci Polytron 1 Tabung', 'Mesin Cuci Polytron 1 Tabung', 'Quis cumque perferendis minima. Sit voluptatem qui eligendi. Qui aliquid sit ut voluptatibus sit voluptas ut.', 'Sequi dolorum et sapiente. Dignissimos aliquid consequuntur eum deleniti eveniet eum qui. Optio ut officia asperiores et repellendus amet. Et accusamus tempora laboriosam eius magnam harum. Culpa tempora deleniti et beatae omnis aspernatur est aperiam. Quia odit consequatur deserunt aut. Sit fugiat et et debitis. Nihil recusandae delectus consectetur. Ut ipsa qui animi aut. Incidunt error magni eaque repudiandae ducimus et. Est ratione sed dolores est et sapiente aut.', '2800.00', NULL, 'DIGI422', 'instock', 0, 122, 'produk_2.jpg', NULL, 1, '2022-04-07 05:13:00', '2022-04-13 05:46:32'),
(3, 'Mesin Cuci Sharp 2 Tabung', 'Mesin Cuci Sharp 2 Tabung', 'Ipsum expedita doloremque molestiae et cupiditate velit. Omnis corporis dolore libero rem quo necessitatibus nisi. Tempora facilis iste eos doloremque optio.', 'Doloremque ut et facere cum. Facere dolor accusantium nam ad non. Hic ut iusto nesciunt magnam natus ipsa explicabo. Aut ut asperiores eum laboriosam. Deserunt sint voluptas vero repellendus. Consequatur dolorem error tempora. Natus a in reiciendis voluptate. Doloribus quo nihil possimus sunt perferendis. Ex beatae aut rem est consequatur iste nihil. Ut excepturi et provident quisquam magni ab deserunt.', '1900.00', NULL, 'DIGI407', 'instock', 0, 106, 'produk_3.jpg', NULL, 1, '2022-04-07 05:13:00', '2022-04-13 05:46:40'),
(4, 'Mesin Cuci Sharp 1Tabung', 'Mesin Cuci Sharp 1 Tabung', 'Quidem enim veritatis ut delectus id libero. Dolores et debitis tempore ut vero. Dolorem eveniet rerum at mollitia. Hic id veritatis eos ab laboriosam maiores.', 'Sit corrupti consequatur iste earum culpa mollitia earum. Minima eaque doloremque fugiat ea. Sed veniam in ex velit sunt est dolores facilis. Ea ipsa aut aut eligendi nam in porro. Omnis temporibus qui sit nemo enim sequi vero et. Quia cupiditate consequatur enim repudiandae animi. Officiis consequatur qui iusto sunt dicta. Omnis exercitationem nam rem.', '2750.00', NULL, 'DIGI474', 'instock', 0, 198, 'produk_4.jpg', NULL, 1, '2022-04-07 05:13:00', '2022-04-13 05:46:51'),
(5, 'Kulkas Polytron 2 pintu', 'Kulkas Polytron 2 pintu', 'Consequatur quia quasi et est vitae qui quisquam. Voluptatum velit ut aliquam quae.', 'Corporis id aut qui ipsa illo voluptas et blanditiis. Sit nemo non quod distinctio vitae ullam est dicta. Ipsa est at enim sequi quidem facilis. Est enim non fugit voluptatem sit eos. Enim blanditiis ullam culpa et. Nostrum magni dolor dolorum alias. Sit qui dolores corporis voluptatibus omnis. Qui aperiam ipsa voluptatem qui nisi voluptas quisquam. Qui et provident corporis ut ipsam. Consequatur aut est eos tempore laudantium. Eligendi consequatur aliquid maiores ut sequi et.', '3300.00', NULL, 'DIGI462', 'instock', 0, 172, 'produk_5.jpg', NULL, 2, '2022-04-07 05:13:00', '2022-04-13 05:46:59'),
(6, 'Kulkas Polytron 1 pintu', 'Kulkas Polytron 1 pintu', 'Dolores eos iusto delectus iste nam cum nostrum. Aspernatur aut autem quis. Dolorem et pariatur consequatur cum ducimus ullam et.', 'Quod eligendi officiis eaque quisquam a voluptatem autem temporibus. Nostrum quia repellat aut dolorem ipsum hic. Quisquam sit omnis mollitia qui sit. Voluptate voluptas occaecati quis consequatur. Velit quia consectetur explicabo quia autem delectus. Nihil ipsum et deserunt sint ut nisi voluptates aspernatur. Nobis facilis tenetur aperiam reprehenderit.', '2100.00', NULL, 'DIGI455', 'instock', 0, 199, 'produk_6.jpg', NULL, 2, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(7, 'Kulkas Sharp 2 pintu', 'Kulkas Sharp 2 pintu', 'Aspernatur vel voluptas ut et est eos. Reiciendis odit harum mollitia expedita. Non provident quidem veritatis maxime tenetur similique est consectetur. Dolore totam commodi eum nostrum quam eos.', 'Recusandae consequatur ut quas facere. Ea corporis aut saepe. Omnis praesentium esse laborum distinctio. Eius eligendi est quasi. Inventore omnis ab delectus error veritatis autem nihil expedita. Aut fugit laborum saepe aut. Aliquam aperiam perferendis laborum et autem. Praesentium quasi aut hic corporis labore consequatur ut. Aut ea voluptatem praesentium et ipsa exercitationem aperiam. Nam sed tempora est. Quis placeat illum aut hic.', '3900.00', NULL, 'DIGI400', 'instock', 0, 149, 'produk_7.jpg', NULL, 2, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(8, 'Kulkas Sharp 1 pintu', 'Kulkas Sharp 1 pintu', 'Sit sed ut et consequatur non sed sed. Rerum et mollitia asperiores quisquam ea optio sit. Dolorem repellendus illo quia fugiat. Quidem officiis alias numquam quidem.', 'Non maxime quasi magnam placeat ipsum quia debitis necessitatibus. Ut cumque autem recusandae et ut. Quasi tempora repellendus qui. Facilis non eaque repellat voluptatem aliquid. Voluptate quibusdam sed provident quaerat. Aut voluptatibus tempore at nam est dicta inventore vel. Fuga accusantium id vitae. Quis hic animi hic at adipisci quas quod. Qui aut enim quia ducimus aut magnam exercitationem quidem.', '2200.00', NULL, 'DIGI239', 'instock', 0, 145, 'produk_8.jpg', NULL, 2, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(9, 'Tv Polytron 25 inch', 'Tv Polytron 25 inch', 'Qui qui molestias blanditiis eveniet. Vel voluptas inventore provident omnis. Repellendus qui error nobis nesciunt praesentium. Quaerat odio reiciendis eum sit laudantium aliquid in.', 'Libero nam voluptates sint iure odit. Labore molestiae recusandae ex veritatis eum illum quisquam. Cum voluptas laboriosam magni quia dignissimos cupiditate. Ipsa eos tempore unde nostrum. Blanditiis dolorem beatae et ab magni explicabo odio. Blanditiis ut voluptate iste et vel alias ut.', '2000.00', NULL, 'DIGI100', 'instock', 0, 114, 'produk_9.jpg', NULL, 3, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(10, 'Tv Polytron 50 inch', 'Tv Polytron 50 inch', 'Ipsum vel totam saepe ut omnis libero. Vero aspernatur laudantium reiciendis maxime. Aut nisi et doloribus. Possimus minus numquam est.', 'Delectus autem ipsa nihil porro ut ea veritatis ratione. Voluptate sapiente deleniti eum. Unde et corrupti eveniet maxime nemo. Aut doloremque molestiae adipisci ab occaecati porro excepturi voluptates. Possimus fuga aut voluptas dolor earum. Impedit aut nostrum quo laboriosam non nobis qui. Exercitationem est quis sit provident distinctio molestias minima. Eveniet dolore illum et sunt. Dolores occaecati voluptatem minus magni.', '7499.00', NULL, 'DIGI322', 'instock', 0, 161, 'produk_10.jpg', NULL, 3, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(11, 'Tv Sharp 30 inch', 'Tv Sharp 30 inch', 'Assumenda aut laudantium ut reiciendis qui sint. Ut facilis rerum sit quidem. Ut quam maiores delectus voluptatem aut. Eos necessitatibus error praesentium voluptatem est modi.', 'Ut iure maiores aut cumque itaque sapiente. Quis quae iste magni quae. Rem incidunt dicta qui quo explicabo incidunt. Eligendi animi et non quasi. A similique quos vel cupiditate aperiam quos. Enim odio dolores et numquam impedit. Vitae libero voluptatem exercitationem quibusdam quaerat voluptatem eveniet. Impedit at ullam minus ut aliquid magni id quos. Fuga voluptas aspernatur temporibus. Dicta unde occaecati error commodi consequatur ut est. Est earum a id incidunt laborum.', '3499.00', NULL, 'DIGI259', 'instock', 0, 144, 'produk_11.jpg', NULL, 3, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(12, 'TV Sharp 50 inch', 'TV Sharp 50 inch', 'Upgrade televisimu dengan televisi 4K UHD (Ultra-high-definition)', 'Upgrade televisimu dengan televisi 4K UHD (Ultra-high-definition)', '6200.00', NULL, 'DIGI487', 'instock', 0, 132, 'produk_12.jpg', NULL, 3, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(13, 'Dispenser Arashi', 'Dispenser Arashi', 'Voluptatibus at saepe labore molestiae. Voluptas veritatis tempora qui et. Sequi voluptates fugit et laborum similique rerum error deserunt.', 'Dolorum doloribus enim distinctio consequatur enim tenetur. Voluptatem accusantium ut vel et qui deserunt. Dolor magnam numquam voluptate impedit. Distinctio ullam similique consequatur enim. Aut quo vero quibusdam ad nobis. Aut qui voluptatibus et veritatis ut. Libero quo et ducimus quam qui eos. Nam rerum dolores illo est eum enim. Quo repellat vel perspiciatis quis earum vel. Minima et consequatur quia quas.', '1299.00', NULL, 'DIGI467', 'instock', 0, 160, 'produk_13.jpg', NULL, 6, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(14, 'Penanak Nasi Elecor', 'Penanak Nasi Elecor', 'Amet illum doloribus repudiandae quae aut ducimus doloremque. Iure illo laudantium minima hic. Corporis qui minus qui quas dolores soluta et. Aut aut nobis totam qui necessitatibus nobis veritatis.', 'Similique repellendus inventore soluta quia et repellat. Neque qui maxime sapiente sunt. Sit et aliquam consequuntur impedit vel sint. Quidem id dolores fuga deleniti rem odio. Expedita saepe eum quidem facilis quia voluptas. Veniam perspiciatis excepturi a. Ullam aut neque consectetur culpa a. Natus eos deserunt aut voluptates magni qui ratione velit. Officiis consequatur repellendus facere. Vel sit aspernatur eum quo quasi.', '200.00', NULL, 'DIGI106', 'instock', 0, 144, 'produk_14.jpg', NULL, 4, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(15, 'Penanak Nasi Sharp', 'Penanak Nasi Sharp', 'Vel sunt suscipit est atque. Odit aliquam tempore id est. Dolorem deleniti quos dolores nihil. Harum ea laborum corporis esse rerum et.', 'Non sit iste beatae aut quisquam. Sit vel recusandae voluptate corporis quis maiores rerum. Quo et ut fugit adipisci sit. Consectetur porro porro optio. Omnis repudiandae rerum placeat ipsa reiciendis harum incidunt. Voluptatum perspiciatis corrupti nesciunt non est explicabo dolores. Facere corrupti voluptatem quae possimus iusto mollitia natus.', '350.00', NULL, 'DIGI109', 'instock', 0, 190, 'produk_15.jpg', NULL, 4, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(16, 'Penanak Nasi Cosmos', 'Penanak Nasi Cosmos', 'Aut sit neque minima explicabo molestias rerum. Dolor necessitatibus odit ut quas dolores. Tempora id vero est quia quis.', 'Iure sit ab quia voluptas. Nihil doloribus aut sit. Sapiente magnam rerum fugit qui quidem amet consectetur repellat. Iusto suscipit repudiandae est omnis blanditiis. Ad suscipit id et aut neque. Id accusantium modi et quam vel. Officiis iusto voluptatem et saepe necessitatibus nulla quam. Nesciunt eum earum et voluptate dicta inventore sit. Nihil sapiente maiores atque quo animi nobis expedita iusto. Maxime laboriosam quia aut numquam quod laudantium ullam.', '300.00', NULL, 'DIGI441', 'instock', 0, 105, 'produk_16.jpg', NULL, 4, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(17, 'Penanak Nasi Philips', 'Penanak Nasi Philips', 'Itaque impedit ipsam necessitatibus. Ut nisi consectetur corporis optio eveniet qui sed. Qui laboriosam voluptatem quaerat.', 'Hic voluptate accusantium earum asperiores qui. Cum sequi rerum aut totam dolorem beatae deserunt. Ut numquam deleniti est quia. Expedita adipisci modi dolor tempora perferendis laborum alias. Necessitatibus est sunt suscipit quasi alias. Facilis suscipit ut qui et dolorem commodi unde. Modi necessitatibus harum voluptate dolor alias distinctio ipsa.', '750.00', NULL, 'DIGI243', 'instock', 0, 121, 'produk_17.jpg', NULL, 4, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(18, 'Blender Sharp', 'Blender Sharp', 'Illum illum debitis expedita dolorem tenetur in necessitatibus. Provident sit ad corrupti numquam sint dolore voluptates. Est amet qui dolorem optio culpa sequi.', 'Consequatur quaerat ea est impedit quidem sit laudantium. Magnam et odit sapiente eum id ipsa non. Et cum voluptatum nisi recusandae. Nemo aut consequatur earum qui tenetur. Corporis omnis in fugiat. Alias ab consequuntur fugit deserunt alias tenetur. Et atque ex ut iste dolor. Et molestiae quia deleniti non dolorum unde repellendus. Et ab saepe voluptatem aliquam. Ut dolorem et possimus soluta asperiores officia non. Temporibus consequatur provident facilis magni quaerat.', '550.00', NULL, 'DIGI439', 'instock', 0, 142, 'produk_18.jpg', NULL, 5, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(19, 'Blender Philip', 'Blender Philip', 'Unde iure commodi quibusdam nihil ut consequatur doloremque hic. Molestias sit doloremque beatae quia ut voluptatibus iusto. Ab autem nesciunt est vero eum.', 'Ea earum ea laboriosam sint officia quia earum. Eum quia voluptas culpa asperiores. Unde aperiam voluptas voluptate omnis eius a. Sunt temporibus laboriosam est sint. Est ut commodi officia aperiam veritatis. Nesciunt possimus nihil quae fugit consequatur. Architecto quia reiciendis ea atque saepe ullam tempora. Distinctio at id quaerat dolores laborum quos velit. Aut illum consequatur eum in beatae sint aut qui. Est commodi reiciendis quo enim dolorum. Harum inventore eum fuga laborum amet.', '800.00', NULL, 'DIGI174', 'instock', 0, 191, 'produk_19.jpg', NULL, 5, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(20, 'Blender Cosmos', 'Blender Cosmos', 'Commodi in nesciunt est aut et facere. Consectetur ducimus omnis nostrum distinctio nihil eum. Eveniet voluptas perspiciatis in quasi repudiandae.', 'Dolore aut repellendus tenetur et. Delectus et natus perspiciatis. Aperiam vel omnis quisquam assumenda ducimus. Sed illo voluptas voluptate aut voluptas incidunt quia. Quia et voluptas sunt odio doloremque asperiores ut. Numquam cumque consequatur ea quisquam voluptatum consequatur. Quo sit omnis consequatur deleniti quibusdam eos. Qui eligendi numquam beatae. Consequatur qui minus qui quae nostrum beatae. Et amet sed totam voluptas eaque. Dolor corrupti nihil aut ut fuga doloribus delectus.', '400.00', NULL, 'DIGI365', 'instock', 0, 166, 'produk_20.jpg', NULL, 5, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(21, 'Blender Miyako', 'Blender Miyako', 'Ut dolorem enim expedita quibusdam. Ipsum adipisci possimus aliquid quasi quis nihil. Totam ut praesentium quia eveniet est vel amet eos. Minima vel atque perferendis esse.', 'Aut ea est est doloribus aperiam ea consectetur. Eum blanditiis facere maxime quia sunt. Ipsum sit et sint est quos. Harum voluptatem consectetur corrupti. Totam dolor aperiam repellendus veniam saepe modi. Nihil hic ut aut ex. Voluptas nostrum a quisquam. Est saepe aut et et. Officia quasi ut eos distinctio. Sed placeat debitis rerum dolorem est officiis rem. Sunt sit quod illo et eum dolorum.', '300.00', NULL, 'DIGI380', 'instock', 0, 147, 'produk_21.jpg', NULL, 5, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(22, 'Lemari Proton', 'Lemari Proton', 'Iusto dicta consequatur eveniet doloremque quam. In ratione aut reiciendis adipisci culpa iste repellat incidunt.', 'Ut laboriosam fuga aut velit nihil vero. Recusandae hic tenetur perspiciatis neque. Fugiat quam vel eligendi deserunt alias voluptatem iure. Architecto reiciendis itaque officia nihil. Rerum dicta eos iste ea ipsam eveniet. Voluptatibus incidunt et dolor. Et quis quia in eius beatae eius. Est aut culpa perspiciatis sit iusto.', '1200.00', NULL, 'DIGI268', 'instock', 0, 123, 'produk_22.jpg', NULL, 6, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(23, 'Lemari Lunar', 'Lemari Lunar', 'Nostrum sed repellendus delectus molestias. Doloremque quaerat dolorem quam atque nam itaque alias. Quia molestiae aut error explicabo qui.', 'Aut nesciunt et eligendi aut. Reprehenderit perspiciatis voluptatem esse dolores nam nam dolor debitis. Nulla in exercitationem voluptates omnis exercitationem dolor. Modi quo minima deleniti eaque. Quo ea voluptates at alias ut reiciendis eum aut. Ad eos quia cum saepe temporibus expedita quo. Quas quod nam autem dignissimos aut repudiandae.', '1400.00', NULL, 'DIGI273', 'instock', 0, 129, 'produk_23.jpg', NULL, 6, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(24, 'Sofa', 'Sofa', 'Qui facilis accusantium qui inventore eveniet vero sint. Qui quidem facilis fugit. Dolor modi labore voluptatem consequatur repellendus ducimus.', 'Quod repellendus dolores dignissimos odio error eveniet. Et cupiditate non sunt et error veritatis facilis. Vero facere sed eos consequatur sunt. Dolores dolorem ut quia nam aut commodi. Aliquam aut quam est dolor hic est. Reprehenderit quia aut beatae totam accusamus vel. Sint quidem pariatur voluptatem eos. Dolorem rerum est deserunt unde. Nobis aut maiores perferendis esse. Odio sed et aspernatur quas dolor facere in. Id quo aut vel corporis autem est ut.', '5000.00', NULL, 'DIGI388', 'instock', 0, 122, 'produk_24.jpg', NULL, 6, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(25, 'Tempat Tidur', 'Tempat Tidur', 'Libero nisi aut eius rem quo quos non. Sit veniam porro natus. Velit sit dolore sunt et consequatur eos.', 'Natus sunt ut ut accusantium illo. Explicabo quisquam quod non rerum maiores facilis nisi quisquam. Facilis quia velit itaque dolor blanditiis. Qui voluptas fugiat inventore omnis perferendis laborum iusto totam. Ut et sed autem vitae recusandae harum ipsa doloribus. Quibusdam unde voluptatibus et eos. Minus in natus quo aut. Perspiciatis repellat sit veniam dignissimos omnis sequi sint. Possimus at neque commodi corrupti autem quia nulla et. Voluptatum harum modi eum et sunt velit.', '5000.00', NULL, 'DIGI276', 'instock', 0, 107, 'produk_25.jpg', NULL, 6, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(26, 'Meja Kayu', 'Meja Kayu', 'Totam iste et vero officiis itaque aut est reiciendis. Consequatur optio officiis quasi ut nostrum tempora. Ut alias corporis quae porro inventore.', 'Animi nostrum occaecati facilis fuga aperiam quo eos. Temporibus vitae voluptatem laudantium deserunt nemo accusamus. Aspernatur dolores ut dolore distinctio. Qui iusto sint et et perferendis ab. Beatae veniam ut et consequatur quisquam et et. Nobis nemo dicta consectetur earum facere sit ducimus. Molestiae veritatis quia iste sequi ipsum inventore voluptates.', '300.00', NULL, 'DIGI418', 'instock', 0, 136, 'produk_26.jpg', NULL, 6, '2022-04-07 05:13:00', '2022-04-07 05:13:00'),
(27, 'Jam Dinding', 'jam-dinding', 'Jam Dinding di dinding', 'Jam Dinding di dinding serbaguna', '150.00', NULL, 'DIGI1245', 'instock', 0, 50, 'produk_27.jpg', NULL, 6, '2022-04-11 23:50:55', '2022-04-11 23:50:55'),
(81, 'Oppo', 'oppo', 'Hp oddo', 'oddo', '3500.00', NULL, 'DIGI1111', 'instock', 0, 5, '1649842964.png', NULL, 52, '2022-04-13 02:42:44', '2022-05-09 03:28:53'),
(82, 'Kipas Angin', 'kipas-angin', 'miyako', 'Kipas angin cosmos', '150.00', NULL, 'DIGI1423', 'instock', 0, 15, '1652093490.jpg', ',16530575480.jpg,16530575481.jpg', 6, '2022-05-09 03:51:30', '2022-05-20 07:39:08'),
(84, 'Monitor baru', 'monitor-baru', 'Monitor baru', 'Monitor baru bagus', '350.00', NULL, 'DIGI1234', 'instock', 0, 5, '1652884458.jpg', ',16528844580.jpg,16528844581.jpg', 52, '2022-05-18 07:34:18', '2022-05-18 07:34:18'),
(85, 'Monitor terbaru', 'monitor-terbaru', 'good monitor', 'asdasdasdads', '300.00', '350.00', 'DIGI1234', 'instock', 0, 5, '1655452393.jpg', NULL, 7, '2022-06-17 00:53:13', '2022-06-17 00:53:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 3, '1655450422.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-17 00:19:23', '2022-06-17 00:20:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'Mantap', 9, '2022-05-17 05:33:13', '2022-05-17 05:33:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9NbOPXdeFzErwF3M9cGE0BCgJl7hvh5CjVangAEq', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVlZ0SG1qbFFqWnlJc290Wkl0ZTNSSGVaRmpqQWRVNnFjTjBueHlrMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vd25lci9jaGVjay9VU1IiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YToxOntpOjA7czo3OiJtZXNzYWdlIjt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O3M6NToidXR5cGUiO3M6MzoiT1dOIjt9', 1655730671);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `address`, `facebook`, `instagram`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, 'daniel@gmail.com', '081362109160', 'Pagarbatu', 'Daniel Silalahi', 'danielsilalahi3', '081362109160', '2022-05-18 07:03:16', '2022-05-18 07:03:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('userdaniel2@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-06-17 00:59:30', NULL),
('userdaniel2@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"806b733f78ef38733c116f1fd82450b4\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"806b733f78ef38733c116f1fd82450b4\";s:2:\"id\";i:84;s:3:\"qty\";i:1;s:4:\"name\";s:12:\"Monitor baru\";s:5:\"price\";d:350;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-06-17 00:59:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','ovo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(2, 4, 7, 'cod', 'pending', '2022-05-08 22:58:19', '2022-05-08 22:58:19'),
(3, 4, 8, 'cod', 'pending', '2022-05-08 23:05:15', '2022-05-08 23:05:15'),
(4, 2, 9, 'cod', 'pending', '2022-05-09 03:24:45', '2022-05-09 03:24:45'),
(5, 3, 10, 'cod', 'pending', '2022-05-09 03:55:15', '2022-05-09 03:55:15'),
(6, 3, 11, 'cod', 'pending', '2022-05-09 08:23:44', '2022-05-09 08:23:44'),
(7, 2, 12, 'cod', 'pending', '2022-05-10 01:24:00', '2022-05-10 01:24:00'),
(8, 2, 13, 'cod', 'pending', '2022-05-10 01:26:14', '2022-05-10 01:26:14'),
(9, 3, 14, 'cod', 'pending', '2022-05-17 05:36:01', '2022-05-17 05:36:01'),
(10, 3, 15, 'cod', 'pending', '2022-05-18 07:45:52', '2022-05-18 07:45:52'),
(11, 3, 16, 'cod', 'pending', '2022-06-17 00:55:36', '2022-06-17 00:55:36'),
(12, 3, 17, 'cod', 'pending', '2022-06-17 00:56:46', '2022-06-17 00:56:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Daniel', 'daniel@gmail.com', NULL, '$2y$10$304Zo3vwMH9SbVTbYL9rdeE.fLnxjYdaU4QvGd0Njx/nuOhqNIrqu', NULL, NULL, NULL, 'p3dv6b5xfHb4okYcBKMU5MF6HjW9ZLW7vXxuPiIRVxnovL6CzDgoJXzU5MZS', NULL, NULL, 'ADM', '2022-04-06 22:49:49', '2022-04-06 22:49:49'),
(2, 'userdaniel', 'userdaniel@gmail.com', NULL, '$2y$10$kTqPbC7ICfAqhh5UD6fXWe6tG8.UG21rLM0T.yBblxTjkIO/FI3F.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-04-06 22:50:34', '2022-04-06 22:50:34'),
(3, 'userdaniel2', 'userdaniel2@gmail.com', NULL, '$2y$10$nNBkDUijijayAJX8h3vOl.Yjrt/xvluBMfkrEHVe5N4E8XH6XvCsq', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-04-07 02:43:47', '2022-05-17 08:49:03'),
(4, 'adminDaniel', 'admin@gmail.com', NULL, '$2y$10$t35R7cWv7gzlQy1m9/M9IeR3Ek9fge5q900e3wHuHrWFwXFS4Jew.', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-04-11 01:24:02', '2022-04-11 01:24:02'),
(5, 'Maria Purba', 'maria@gmail.com', NULL, '$2y$10$b/eKtoyQ6HHsn7Mx0fFlbe6UnZVPSLdxKkVNL/G2/DTDGeNsPLz4a', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-05-09 03:31:28', '2022-05-09 03:31:28'),
(6, 'Daniel 766', 'danielsilalahi135@gmail.com', NULL, '$2y$10$Ayi8v9AKuFH7xUTF6iVyJ.BHrR53XVU0kaLDvp/mrmFu4XgTbCUO.', NULL, NULL, NULL, 'KYT9uLXbjKGiCsB3T7MMJwwBZRWeCUa0yTK6Jl0cw1UR9trSwjGormeulVE1', NULL, NULL, 'USR', '2022-05-18 20:14:35', '2022-05-18 20:41:45'),
(7, 'Anto', 'matamodat@gmail.com', NULL, '$2y$10$AYOZZAuY2nLiA2uarLBzRuaPURL9HMjAu3.Mf178M8tLxuSiuYe.S', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-05-18 20:26:01', '2022-05-18 20:26:01'),
(8, 'owner', 'owner1@gmail.com', NULL, '$2y$10$bxro4hoOeGkGdFvxYisFduscblQGMPe4Xv8T2vk3khmVu49A1ot8y', NULL, NULL, NULL, NULL, NULL, NULL, 'OWN', '2022-06-16 19:59:11', '2022-06-16 19:59:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `owner_email_unique` (`email`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indeks untuk tabel `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `owner`
--
ALTER TABLE `owner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
