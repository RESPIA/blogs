-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for blog-app
DROP DATABASE IF EXISTS `blog-app`;
CREATE DATABASE IF NOT EXISTS `blog-app` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blog-app`;

-- Dumping structure for table blog-app.admins
DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.admins: ~16 rows (approximately)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `name`, `email`, `password`, `image`, `phone`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(3, 'Updated Weston Eichmann', 'price.tatum@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?25129', '+15648703519', 1, 'XFMDpLQqUT', '2019-04-02 17:36:19', '2019-04-04 14:44:15'),
	(6, 'Miss Patsy Watsica', 'elvie.barrows@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?67943', '287.425.1053 x05754', 1, 'yS0z0AAdim', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(8, 'Geovanni Hackett', 'katrine00@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?82821', '0992842848', 1, 'IsEOwSu70b', '2019-04-02 17:36:19', '2019-04-04 17:45:58'),
	(10, 'Dr. Kody Mayer PhD', 'holden.stark@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?35603', '+1 (914) 697-0524', 1, 'hhsSGKulYe', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(11, 'Mrs. Carissa Wilkinson', 'lebsack.jessy@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?93515', '309.668.0939 x60953', 1, '2GaNc7pLUp', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(13, 'Dr. Sedrick Kuvalis', 'kayley31@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?38369', '+1.741.725.4634', 1, 'i6gYFORGqe', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(14, 'Dr. Rusty Satterfield', 'loconnell@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?37191', '+1-214-787-7503', 1, '1TnB3mSTFc', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(15, 'Wendell Padberg', 'dell58@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?67215', '968-736-9632 x3095', 1, '8y3EO4Ox8H', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(16, 'Kevin Padberg', 'berenice.keeling@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?31973', '913.669.7868', 1, 'e7r0OfK67w', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(17, 'Rosanna Hyatt DVM', 'gohara@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?21657', '468-655-7961 x291', 1, '6vXNNeYqU8', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(18, 'Arvilla Klein', 'omer.mayer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?35649', '(665) 515-0958 x3427', 1, 'mbhFO8vRHj', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(19, 'Prof. Emanuel Emmerich', 'stehr.austin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?82390', '+1 (487) 271-5803', 1, 'tlUHxxxV2F', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(20, 'Prof. Cyril Eichmann', 'stark.lola@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://lorempixel.com/640/480/?14498', '1-309-505-6312 x8651', 1, 'Ehx6yvxJwj', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(21, 'jacky', 'collbook@gmail.com', '$2y$10$RfT5PblJs6J6.hcfQLwjYOeV0SDxQ1FGFKkk7eQgF63vTDL1MkM/q', NULL, '0898668888', 1, NULL, '2019-04-04 14:26:45', '2019-04-04 14:26:45'),
	(22, 'collbook', 'collbook3@gmail.com', '$2y$10$i.bFFB7RcAP7MfNrXhlyEeFjJVjJIGNdvL.oJ83nWu.O49z3H0PWC', NULL, '098658888', 1, NULL, '2019-04-04 14:27:20', '2019-04-04 14:27:20'),
	(23, 'nick', 'nick@gmail.com', '$2y$10$mqQp5r.ahj3/tCZXDHVNEOx4ICKOdywdQyWLMQnL0vp/88AK26nvS', NULL, '11111111', 1, NULL, '2019-04-04 15:20:29', '2019-04-04 15:20:29'),
	(24, 'nick2', 'nick2@gmail.com', '$2y$10$K0kmIryZmVogyy5LXJIdnuYFMwP3i1/Ts.NP5aqHHFat/GgDgO2g2', NULL, '11111111', 1, NULL, '2019-04-04 15:21:27', '2019-04-04 15:21:27'),
	(25, 'Nick33', 'Nick33@gmail.com', '$2y$10$9ePlagBZstKIVCIKUmjOC.x70N5GVcjwVCW1p/smu.nt4IOoWrtlC', NULL, '083989288888', 1, NULL, '2019-04-04 15:23:52', '2019-04-04 15:23:52');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Dumping structure for table blog-app.admin_role
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE IF NOT EXISTS `admin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.admin_role: ~3 rows (approximately)
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` (`id`, `admin_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 25, 1, NULL, NULL),
	(2, 25, 2, NULL, NULL),
	(10, 8, 5, NULL, NULL);
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;

-- Dumping structure for table blog-app.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.categories: ~20 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Carli O\'Reilly', 'sydni-zboncak-ii', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(2, 'Prof. Bartholome Heller V', 'cleve-smith', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(3, 'Coby Hane', 'chanelle-lueilwitz', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(4, 'Winnifred Kulas', 'brandt-schiller', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(5, 'Duane Kihn', 'malika-nitzsche-dds', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(6, 'Alena Schaefer', 'prof-cornelius-langosh', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(7, 'Zaria Franecki', 'kassandra-fahey', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(8, 'Prof. Abelardo Towne Sr.', 'gia-olson', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(9, 'Lenna Okuneva', 'brook-towne', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(10, 'Jacinthe Ortiz', 'alexandre-ferry', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(11, 'Mr. Trace Boehm', 'shana-sauer', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(12, 'Adrian Gibson III', 'prof-carlee-quitzon-dds', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(13, 'Prof. Jazmyn Wehner', 'ricardo-gaylord', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(14, 'Sierra Schmitt', 'madaline-windler', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(15, 'Lora Haag', 'dr-donna-ryan', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(16, 'Dewayne Ratke', 'miss-eloise-ferry', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(17, 'Brandy Stokes', 'vicenta-farrell', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(18, 'Jose Olson', 'hayley-beier', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(19, 'Anna Hane', 'ophelia-hegmann', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(20, 'Mr. Kenneth Bogan', 'alysson-mueller', '2019-04-02 17:36:19', '2019-04-02 17:36:19');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table blog-app.category_posts
DROP TABLE IF EXISTS `category_posts`;
CREATE TABLE IF NOT EXISTS `category_posts` (
  `post_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `category_posts_post_id_foreign` (`post_id`),
  CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.category_posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `category_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_posts` ENABLE KEYS */;

-- Dumping structure for table blog-app.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.migrations: ~11 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(21, '2014_10_12_000000_create_users_table', 1),
	(22, '2014_10_12_100000_create_password_resets_table', 1),
	(23, '2019_04_02_084225_create_tags_table', 1),
	(24, '2019_04_02_084241_create_categories_table', 1),
	(25, '2019_04_02_084256_create_posts_table', 1),
	(26, '2019_04_02_084407_create_admins_table', 1),
	(27, '2019_04_02_084423_create_roles_table', 1),
	(28, '2019_04_02_084436_create_admin_roles_table', 1),
	(29, '2019_04_02_084454_create_category_posts_table', 1),
	(30, '2019_04_02_084510_create_post_tags_table', 1),
	(31, '2019_04_04_155058_create_permissions_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table blog-app.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table blog-app.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.permissions: ~8 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `for`, `created_at`, `updated_at`) VALUES
	(1, 'create-posts', 'post', '2019-04-04 16:16:07', '2019-04-04 16:26:29'),
	(2, 'update-posts', 'post', '2019-04-04 16:16:20', '2019-04-04 16:26:25'),
	(3, 'delete-posts', 'post', '2019-04-04 16:16:27', '2019-04-04 16:26:21'),
	(5, 'create-user', 'user', '2019-04-04 16:33:08', '2019-04-04 16:33:08'),
	(6, 'update-user', 'user', '2019-04-04 16:33:23', '2019-04-04 16:33:23'),
	(7, 'delete-user', 'user', '2019-04-04 16:33:32', '2019-04-04 16:33:32'),
	(8, 'category-crud', 'other', '2019-04-04 16:33:44', '2019-04-04 16:33:44'),
	(9, 'tag-crud', 'other', '2019-04-04 16:33:51', '2019-04-04 16:33:51');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table blog-app.permission_role
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.permission_role: ~3 rows (approximately)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table blog-app.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.posts: ~18 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
	(3, 'Numquam delectus impedit odit aut qui.', 'Adipisci laudantium nihil repudiandae consequatur voluptas earum.', 'culpa-repellat-quaerat-omnis-accusantium', 'Voluptas aut velit iure qui sit aperiam in consequuntur. Itaque explicabo sint voluptas est enim. Natus quos atque eius quod nihil ullam et.', 1, 1, 'https://lorempixel.com/640/480/?37812', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(4, 'Fugit inventore molestiae in doloribus.', 'Delectus quae omnis esse quo.', 'autem-libero-in-doloribus-quam', 'Ipsam earum dolores quas quae voluptas. Ipsam et atque laudantium dolores illum. Autem libero incidunt expedita beatae.', 1, 1, 'https://lorempixel.com/640/480/?92661', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(5, 'Totam in totam repudiandae suscipit magnam omnis aut.', 'Aut aut ad neque illum.', 'nihil-eum-vero-ea-fugiat-incidunt-doloremque', 'Vel maxime saepe magni omnis tenetur aut non ex. Voluptas dolorem consequatur magni et culpa quibusdam ipsa. Non eius non voluptatem possimus voluptatem velit minima.', 1, 1, 'https://lorempixel.com/640/480/?98391', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(6, 'Ipsa nemo illum nobis temporibus.', 'Amet voluptatem temporibus et in odit quibusdam.', 'ex-et-nesciunt-illum-maiores', 'Sit provident perferendis illo expedita debitis alias. Neque pariatur odit ut autem. Exercitationem esse sapiente quasi et exercitationem.', 1, 1, 'https://lorempixel.com/640/480/?50867', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(7, 'Illum incidunt provident quis voluptates nisi.', 'Tenetur fugiat quos voluptas.', 'ut-dolorem-saepe-maxime-modi-et', 'Aliquid quaerat quos quia id velit libero minus. Repudiandae repellendus numquam placeat esse eos. Accusamus perferendis pariatur aliquid excepturi perspiciatis qui recusandae. Explicabo perspiciatis rerum et nisi qui.', 1, 1, 'https://lorempixel.com/640/480/?57980', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(8, 'Dolorum id veniam dignissimos similique excepturi ipsum et.', 'Repudiandae veniam facilis ipsam quibusdam itaque beatae voluptatem necessitatibus.', 'dicta-blanditiis-deleniti-debitis-vero-architecto-aut-vel-magnam', 'At aliquam vel earum. Soluta nihil odio consequatur dignissimos. Dolores aliquam est harum aliquid sequi molestiae.', 1, 1, 'https://lorempixel.com/640/480/?77844', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(9, 'Eos ab quo vel qui sed.', 'Quia perferendis eaque earum nobis placeat.', 'qui-fugiat-quasi-voluptatem-aut-accusantium-deserunt-id-consequatur', 'Quisquam quaerat porro sequi perspiciatis. Consequuntur vel cumque unde quaerat nostrum ducimus assumenda ipsa. Illo reprehenderit dignissimos quaerat temporibus. Aut aut quis laudantium delectus quibusdam illum accusantium quia.', 1, 1, 'https://lorempixel.com/640/480/?26722', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(10, 'Quia nihil consequatur eius vero omnis quibusdam sed.', 'Eos voluptatem minima natus esse sunt ut.', 'sed-quae-exercitationem-est-consequuntur-nostrum-nostrum-saepe', 'Mollitia dolor et ut doloribus dolores. Nam amet quis corporis qui. Ab dolor accusantium eos occaecati voluptatem.', 1, 1, 'https://lorempixel.com/640/480/?60624', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(11, 'In commodi dolor et quis vel illo nihil.', 'Eos nemo eos praesentium iure.', 'animi-veritatis-rerum-eligendi-harum-ad', 'Maxime doloremque ipsum architecto amet dolorum sit. Illo iusto ipsam sint voluptatem. Qui voluptate velit in qui et at. Cum odit voluptas quia et. In sed et animi nisi.', 1, 1, 'https://lorempixel.com/640/480/?19342', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(12, 'Rerum et omnis nemo quos eum nam culpa et.', 'Voluptas iste qui quia saepe vel soluta.', 'eum-repellendus-perferendis-dignissimos-adipisci-assumenda-praesentium', 'Magni rerum provident quam odit. Quia sed autem autem. Aspernatur minima velit accusamus autem molestias. Dolor saepe delectus perferendis quibusdam cum. Dolores dicta repudiandae consequuntur illo.', 1, 1, 'https://lorempixel.com/640/480/?87486', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(13, 'Architecto modi omnis id corporis.', 'Et magni nesciunt eligendi cumque.', 'sunt-deserunt-nemo-ea-non-voluptas-ad-aut', 'Nihil culpa nemo ex saepe sint voluptatem rerum est. Laboriosam consequatur atque magnam dignissimos. Est aliquam cum qui dolore earum veritatis.', 1, 1, 'https://lorempixel.com/640/480/?19211', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(14, 'Iure quas quos magnam ipsum voluptatem nisi.', 'Vel perspiciatis ipsa qui autem ipsam sit.', 'eius-aperiam-deserunt-numquam-sint-expedita-et-veritatis', 'Laborum facere illo eius quia nisi aliquid autem. Consequatur illo quod reiciendis qui rerum sit officia et.', 1, 1, 'https://lorempixel.com/640/480/?62527', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(15, 'Magnam porro aut quis id exercitationem.', 'Velit sint suscipit possimus eligendi voluptatem aut.', 'vel-quae-autem-tempore-molestiae-dolorum', 'Voluptas sed nam dolores. Reprehenderit id quidem quibusdam saepe unde est.', 1, 1, 'https://lorempixel.com/640/480/?55464', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(16, 'Reprehenderit facere rem quaerat ut officiis quos sint illum.', 'Voluptatem ad ut necessitatibus exercitationem voluptate error porro.', 'qui-maxime-sit-error-iure-cupiditate-qui', 'Necessitatibus quibusdam suscipit sit cupiditate harum et quos. At ipsum ut qui rerum.', 1, 1, 'https://lorempixel.com/640/480/?79544', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(17, 'Sed modi sit officia modi aperiam sunt.', 'Quos ipsum inventore ut.', 'libero-atque-consequuntur-aut-omnis-dolor-voluptas-repellat', 'Cumque repellat fugit nesciunt ut voluptatem. Et ut omnis non. Eveniet autem et ut aspernatur. Amet autem voluptates quis eum omnis.', 1, 1, 'https://lorempixel.com/640/480/?88276', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(18, 'Quia dolore perferendis quia aut et animi.', 'Placeat explicabo porro illum assumenda sed laboriosam explicabo.', 'sint-dolorem-laboriosam-animi-adipisci', 'Corporis sed enim voluptatem in adipisci. Corporis id facilis quod qui qui qui optio. Iure rerum enim rerum in quibusdam mollitia numquam. Pariatur magnam porro dicta cumque quis impedit in.', 1, 1, 'https://lorempixel.com/640/480/?76302', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(19, 'Officiis praesentium rerum qui deserunt vitae unde.', 'Aliquam ipsum accusamus et qui doloremque.', 'impedit-assumenda-quod-sit-neque-error-dicta', 'Consequatur quis quos qui dolore nihil commodi. Id voluptatibus velit impedit qui.', 1, 1, 'https://lorempixel.com/640/480/?83819', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(20, 'Nam qui accusamus assumenda optio.', 'Dolorem odit repellendus est non harum recusandae quo ea.', 'natus-qui-tempore-nostrum-veniam-voluptas-ut-neque', 'Necessitatibus qui aliquid sed id vero. Provident possimus suscipit non quasi provident recusandae. Deleniti perspiciatis ratione omnis eius et. Rerum hic porro est ipsum dolor vel perferendis ea.', 1, 1, 'https://lorempixel.com/640/480/?54678', 10, 1, '2019-04-02 17:36:20', '2019-04-02 17:36:20');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table blog-app.post_tags
DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `post_tags_post_id_foreign` (`post_id`),
  CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.post_tags: ~0 rows (approximately)
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;

-- Dumping structure for table blog-app.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.roles: ~5 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Edittors updated', '2019-04-04 15:04:31', '2019-04-04 15:07:56'),
	(2, 'Publicher', '2019-04-04 15:04:49', '2019-04-04 15:04:49'),
	(4, 'Authors', '2019-04-04 15:08:10', '2019-04-04 15:08:10'),
	(5, 'Administrators', '2019-04-04 15:28:32', '2019-04-04 15:28:32'),
	(6, 'Subperadmin', '2019-04-04 15:28:42', '2019-04-04 15:28:42');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table blog-app.tags
DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.tags: ~20 rows (approximately)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Joesph Prosacco', 'miss-nella-torp', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(2, 'Maximillian Bernier', 'timothy-keeling', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(3, 'Francisco Jenkins', 'jennyfer-crooks-v', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(4, 'Mrs. Santina Schoen', 'gloria-kiehn', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(5, 'Prof. Newton Corwin IV', 'abigayle-kemmer', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(6, 'Prof. Rogers Green', 'juanita-wilkinson', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(7, 'Odie Stokes', 'kaylie-wilkinson', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(8, 'Dora Denesik', 'zula-lang-jr', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(9, 'Greg Pfeffer', 'carley-oberbrunner', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(10, 'Piper Barrows', 'pete-shields', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(11, 'Mariela Willms', 'belle-hilpert', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(12, 'Mercedes Runolfsdottir', 'dr-berneice-nitzsche', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(13, 'Prof. Margot Schmeler', 'prof-emmet-nolan-i', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(14, 'Terrill Farrell V', 'amos-watsica-jr', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(15, 'Ms. Frances Ebert Sr.', 'mrs-juliet-willms-ii', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(16, 'Presley Rippin', 'elta-gibson', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(17, 'Trever Bergnaum Jr.', 'russell-green', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(18, 'Angela Hettinger', 'nakia-emmerich', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(19, 'Van Corwin Sr.', 'fatima-runolfsdottir', '2019-04-02 17:36:20', '2019-04-02 17:36:20'),
	(20, 'Elnora Wisoky', 'dr-otho-jakubowski-ii', '2019-04-02 17:36:20', '2019-04-02 17:36:20');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table blog-app.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog-app.users: ~20 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Ms. Orie Osinski', 'pmohr@example.org', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zk1UWeCVrc', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(2, 'Prof. Rosendo Bailey', 'stephanie.ebert@example.net', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8M8yI1qLh0', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(3, 'Raina Goodwin', 'dgusikowski@example.com', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UAKvTZtqI1', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(4, 'Mr. Javonte Waters I', 'wrunolfsdottir@example.com', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gL189lT1T4', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(5, 'Rossie Kilback', 'bjenkins@example.org', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wriIPJR37N', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(6, 'Carolyn Prosacco', 'edna.hyatt@example.com', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'voJ4mVtMhd', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(7, 'Dr. Zelma Kub Sr.', 'cquigley@example.org', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ySWmB0EINs', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(8, 'Annabell Wunsch', 'reichert.gina@example.org', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k8kO4Pajod', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(9, 'Joanny O\'Keefe', 'bogisich.ashlee@example.net', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZRtbNP9X2n', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(10, 'Allison Walter', 'weimann.christian@example.net', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GPMKPLZlBw', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(11, 'Prof. Felicia Schmidt', 'konopelski.kaylin@example.net', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '64E8uz2wSF', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(12, 'Dr. Annamae Greenholt DVM', 'carmen.fadel@example.com', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BOneT3VyqA', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(13, 'Charlotte Renner', 'laurianne59@example.org', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SM3rlIYji3', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(14, 'Miss Estelle Harber DDS', 'karli.torphy@example.net', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '40Bzt3FVSb', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(15, 'Alyce Bashirian', 'ephraim59@example.org', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Orcw7WtL11', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(16, 'Elta Adams I', 'conn.mohammad@example.net', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ifbFpKoPGp', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(17, 'Mr. Ed Harvey IV', 'dokeefe@example.com', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ojf6wVAp02', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(18, 'Kenyon Lindgren', 'shaniya36@example.net', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u0cjm6zhLP', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(19, 'Nico Schowalter', 'stella.kuhlman@example.net', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uf6IW2Vv5z', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(20, 'Chance Gulgowski Sr.', 'bella.weimann@example.org', '2019-04-02 17:36:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hF91MrMunf', '2019-04-02 17:36:19', '2019-04-02 17:36:19'),
	(21, 'collbook', 'collbook@gmail.com', NULL, '$2y$10$AZHbSoKitlvlY8nVt5natORy6hqWokdKmQBW/VuSBAVz9QU0GcTJK', NULL, '2019-04-02 18:04:46', '2019-04-02 18:04:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
