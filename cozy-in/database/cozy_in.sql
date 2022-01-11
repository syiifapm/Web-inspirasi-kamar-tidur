-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.20-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table cozy_in.concepts
CREATE TABLE IF NOT EXISTS `concepts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel cozy_in.concepts: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `concepts` DISABLE KEYS */;
INSERT INTO `concepts` (`id`, `name`, `desc`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Nature', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident quis quisquam voluptate, eligendi iure recusandae animi corrupti quos quas optio? Obcaecati dolorem nobis totam laudantium, alias ex nesciunt dolorum neque a dolore illo ipsa cupiditate. Assumenda quas suscipit voluptas officia error quia quibusdam ipsam ullam. Tempora, magni a. Eius, nihil!</div>', 'post-image/f75xph7sF2Hq9uRvIHRRdUF2hbx9N59LHY6FXUfb.jpg', '2022-01-10 16:58:19', '2022-01-10 16:58:19'),
	(2, 'Monochrome', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident quis quisquam voluptate, eligendi iure recusandae animi corrupti quos quas optio? Obcaecati dolorem nobis totam laudantium, alias ex nesciunt dolorum neque a dolore illo ipsa cupiditate. Assumenda quas suscipit voluptas officia error quia quibusdam ipsam ullam. Tempora, magni a. Eius, nihil!</div>', 'post-image/9JNZ5U2guPdfSzMqe7RoQS5cHLaZqClid0EWZzWk.jpg', '2022-01-10 17:00:01', '2022-01-10 17:00:01'),
	(3, 'Elegant', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident quis quisquam voluptate, eligendi iure recusandae animi corrupti quos quas optio? Obcaecati dolorem nobis totam laudantium, alias ex nesciunt dolorum neque a dolore illo ipsa cupiditate. Assumenda quas suscipit voluptas officia error quia quibusdam ipsam ullam. Tempora, magni a. Eius, nihil!</div>', 'post-image/XyFn42Rb5W9LQl3vIQdoVaDabYJqfmdveAxB9qng.jpg', '2022-01-10 17:07:46', '2022-01-10 17:07:46'),
	(4, 'Simple', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident quis quisquam voluptate, eligendi iure recusandae animi corrupti quos quas optio? Obcaecati dolorem nobis totam laudantium, alias ex nesciunt dolorum neque a dolore illo ipsa cupiditate. Assumenda quas suscipit voluptas officia error quia quibusdam ipsam ullam. Tempora, magni a. Eius, nihil!</div>', 'post-image/GTLQq55jvfnzWxirAx5TgxvJshulqMtAJVmLdDqB.jpg', '2022-01-10 17:11:34', '2022-01-10 17:11:34'),
	(5, 'Luxury', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident quis quisquam voluptate, eligendi iure recusandae animi corrupti quos quas optio? Obcaecati dolorem nobis totam laudantium, alias ex nesciunt dolorum neque a dolore illo ipsa cupiditate. Assumenda quas suscipit voluptas officia error quia quibusdam ipsam ullam. Tempora, magni a. Eius, nihil!</div>', 'post-image/zMGuusooGehQl0maHKIANEwFihezArCmWlCeiMS1.jpg', '2022-01-10 17:12:43', '2022-01-10 17:12:43'),
	(6, 'Ocean', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident quis quisquam voluptate, eligendi iure recusandae animi corrupti quos quas optio? Obcaecati dolorem nobis totam laudantium, alias ex nesciunt dolorum neque a dolore illo ipsa cupiditate. Assumenda quas suscipit voluptas officia error quia quibusdam ipsam ullam. Tempora, magni a. Eius, nihil!</div>', 'post-image/tDSErTJg69twZYKTafDFigD5J2VpDFKFn9UoytwT.jpg', '2022-01-10 17:14:01', '2022-01-10 17:14:01');
/*!40000 ALTER TABLE `concepts` ENABLE KEYS */;

-- membuang struktur untuk table cozy_in.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel cozy_in.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table cozy_in.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel cozy_in.migrations: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_01_09_163623_create_concepts_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table cozy_in.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel cozy_in.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table cozy_in.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel cozy_in.personal_access_tokens: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- membuang struktur untuk table cozy_in.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel cozy_in.users: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'Syifa', 'admin', '$2y$10$CPf1Inbadh1TeoA0752cYOIBwo.UCY7.XkSjEr6t2cryuMVhY2jiq', '2022-01-09 16:16:47', '2022-01-09 16:16:47'),
	(2, 'Hadi Akbar', 'hadi', '$2y$10$CINGFUZZx1pEJO0F7FhtweY9PH30t7p2Z.rgs9imhIg3Gy0brOfvO', '2022-01-09 16:24:32', '2022-01-09 16:24:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
