-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 16, 2024 at 10:33 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unicode-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `email`, `password`, `remember_token`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Tuấn', 'kairu2607@gmail.com', '$2y$12$NjVQeOdk4QQd8YQxoM/WtOzJs5wRv7UNBL3VIGNfBfhCMnLZjzTBq', 'zFntwASOm0EN7qDOH3SOAl8dTFKQl7YwY5ZhNrppwIsIpAPMz6V4qpylCm5x', 1, '2024-11-12 08:12:03', '2024-11-15 08:46:38');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2024_11_07_041536_create_products_table', 2),
(12, '2024_11_07_130706_create_groups_table', 2),
(13, '2024_11_07_132336_add_field_groups_table', 2),
(14, '2024_11_07_145231_create_posts_table', 3),
(16, '2024_11_07_150854_rename_groups_table', 4),
(17, '2024_11_07_151158_add_field_products_table', 4),
(20, '2024_11_08_012936_change_field_products_table', 5),
(22, '2024_11_09_022117_change_data_type_products_table', 6),
(23, '2024_11_09_023402_change_status_column_products_table', 7),
(24, '2024_11_09_035704_add_unique_sku_products_table', 7),
(25, '2024_11_09_113301_create_attributes_table', 7),
(27, '2024_11_09_114559_drop_primary_attributes_table', 8),
(28, '2024_11_09_115255_add_index__products_table', 9),
(30, '2024_11_09_122141_add_field_users_table', 10),
(31, '2024_11_09_122951_add_foreign_users_table', 11),
(32, '2014_10_12_100000_create_password_resets_table', 12),
(33, '2024_11_09_123915_drop_users_groups_table', 12),
(34, '2024_11_12_150125_create_doctors_table', 12);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('nguyentuan.doctor@gmail.com', '$2y$12$tyinx6QM/ksjt8a6cnC5pezWkNKfdLzsvclFJZmIHZ/BvIAZ02.tu', '2024-11-14 08:14:44');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `published_at` timestamp NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `status`, `published_at`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tempore pariatur modi omnis soluta voluptatem cupiditate iure.', 'Aut quaerat accusamus dolores repellendus. Quia fuga dolor mollitia temporibus tempora. Molestiae nobis nemo sit porro minus consectetur sed.', 1, '2010-11-04 11:58:46', 135, '2012-05-26 12:56:32', NULL),
(2, 'Tenetur rerum voluptate et distinctio nostrum officiis. Quas consequuntur quibusdam similique velit.', 'Ut voluptatem corporis dicta unde. Veritatis officiis tempora vero exercitationem. Molestias quia dignissimos aspernatur. Et voluptatem id architecto dolor voluptatem repudiandae accusamus.', 1, '2009-01-07 00:31:06', 145, '2008-12-10 15:49:58', NULL),
(3, 'Et suscipit quasi quo sunt vero aut. Doloribus dolor et ex consequatur quo fuga.', 'Occaecati et natus officia odio dolores. Dolor enim est placeat iusto autem. Rem recusandae sapiente consequatur perferendis. Possimus ducimus odio nihil architecto cum.', 1, '1982-02-07 21:57:27', 0, '2012-06-20 09:26:28', NULL),
(4, 'Ut ratione et omnis voluptatibus corporis. Dolor mollitia aliquam velit omnis corrupti illo.', 'Dolorum molestias laborum ex. Aliquid nam voluptatem rerum ipsum beatae molestiae provident molestiae.', 1, '1971-11-29 05:32:44', 0, '1984-06-25 20:52:12', NULL),
(5, 'Velit quo expedita harum eaque quia rerum quam. Quo et voluptas ut ut eius ipsam.', 'Corporis ex minus ab vitae quis ad repellendus. Cum vitae error rerum itaque consequatur. Inventore et accusantium repellat provident et itaque.', 1, '2004-04-26 10:56:07', 0, '2019-08-17 15:10:41', NULL),
(6, 'Est perspiciatis nesciunt in minima vel expedita et.', 'Architecto omnis ullam corporis id illo. At modi aut laborum beatae. Ab ipsa quidem cum nostrum. Facilis est voluptatem pariatur eos sint quaerat. Et ab nulla ex quo a molestias vero quos.', 1, '1992-02-24 16:36:00', 0, '1996-04-11 05:48:40', NULL),
(7, 'Fugiat repudiandae numquam ut non minus velit.', 'Velit in quia porro. Nihil libero voluptas doloremque dolorem cumque maiores totam. Nostrum rerum repudiandae veritatis. Laborum animi soluta aliquid repellat nihil facere.', 1, '2022-01-23 20:20:34', 0, '2011-03-22 10:41:31', NULL),
(8, 'Incidunt aut facere sit.', 'Est consequatur consequatur amet. A ducimus animi vitae animi. Temporibus modi ut deleniti a. Quaerat est quia molestias cumque.', 1, '1981-02-28 08:30:04', 0, '1972-07-27 00:15:33', NULL),
(9, 'Neque nihil quo iusto nihil quia illo. Mollitia ipsa voluptatem distinctio.', 'Alias distinctio ea vero quam qui adipisci quia. Saepe recusandae et accusamus omnis alias. Dolor amet voluptatibus eum id laboriosam quae qui et.', 1, '2017-06-08 20:05:53', 0, '2005-12-28 09:27:00', NULL),
(10, 'Praesentium et itaque recusandae incidunt quia officiis ipsam.', 'Nemo qui dolores aspernatur voluptatem fugiat molestiae. Sint consequatur vel occaecati cumque molestiae quasi voluptatem.', 1, '1981-07-23 17:07:40', 0, '1992-08-09 23:12:34', NULL),
(11, 'Voluptate expedita voluptas explicabo voluptatem.', 'Commodi soluta voluptatem et nemo illum dolores. Voluptatum ut qui quod culpa. Ipsam mollitia sequi optio magnam. Voluptatum quidem quos quas deleniti nobis ea praesentium.', 1, '1999-06-19 09:43:04', 0, '2012-12-15 08:25:03', NULL),
(12, 'Aperiam dolorem perspiciatis culpa maiores eveniet inventore eos.', 'Nisi adipisci facilis fugiat atque sed sunt explicabo. Voluptas dolores consequatur deleniti ea animi quo cum quis. Repudiandae vel exercitationem soluta.', 1, '2003-07-24 07:59:01', 0, '2021-01-20 01:03:22', NULL),
(13, 'In quis error deleniti voluptatem repudiandae minus. Aut perspiciatis sed tempore reiciendis.', 'Iusto suscipit adipisci voluptatem ab est ut minus. Iusto unde magnam mollitia.', 1, '2011-09-03 20:04:36', 0, '2012-12-10 05:10:48', NULL),
(14, 'Et impedit perspiciatis ullam amet et consequatur autem aut. Voluptatem delectus reprehenderit consectetur aut omnis molestiae.', 'Explicabo non blanditiis vero inventore eaque. Consequuntur molestiae totam molestiae temporibus at. Deserunt praesentium quia illo in. Et est quod molestias molestiae mollitia.', 1, '2016-10-14 20:10:10', 0, '1996-12-03 06:41:54', NULL),
(15, 'Consequatur rem magnam incidunt sapiente et dolore. Doloribus repellendus deserunt ut nulla vero aut libero.', 'Doloremque quod quidem vel eius similique. Alias eveniet quis ullam voluptas est tenetur quas natus. Facilis consequatur mollitia et ex ab.', 1, '1991-06-20 15:42:28', 0, '1998-12-16 01:53:33', NULL),
(16, 'Et id inventore sed beatae corrupti eos et.', 'Repellat enim quam laboriosam. Ea officia placeat amet recusandae officiis voluptas. Magni natus molestiae velit ex.', 1, '1976-10-31 07:39:42', 0, '1975-09-18 16:14:14', NULL),
(17, 'Consequuntur aut ipsum ipsum occaecati dolor. Soluta ut dolore asperiores delectus repellat aut.', 'Porro voluptas laborum est omnis voluptates. Harum aperiam numquam tempore et quisquam sunt quam. Nemo vel ut ipsum hic reprehenderit. Cumque atque eligendi maxime mollitia.', 1, '1977-02-04 13:45:34', 0, '1999-04-06 03:12:01', NULL),
(18, 'Eum ipsa qui voluptatem cum.', 'Suscipit atque id voluptates odio natus non. Vel blanditiis est nulla eos reprehenderit occaecati. Eius quas nulla consequuntur assumenda ratione. Laborum eligendi velit minus incidunt.', 1, '1977-03-15 16:42:27', 0, '2016-04-21 00:04:08', NULL),
(19, 'Quae laborum est iste eum distinctio porro.', 'Ut harum molestias placeat omnis sit saepe autem accusantium. Quidem inventore nulla consequatur quae placeat aut. Porro ut nostrum iste vel omnis.', 1, '1998-03-16 14:56:32', 0, '2015-07-16 11:54:54', NULL),
(20, 'A facilis saepe repudiandae voluptas adipisci voluptatem doloremque. Natus earum natus veritatis non.', 'Maxime ullam fugit vel. Rerum ipsa dolor nobis dolor. Et commodi occaecati explicabo sunt sint eos aut. Voluptatem aut sunt consequatur quos possimus non atque.', 1, '1977-07-29 21:01:20', 0, '2010-09-21 00:16:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `group_id`, `created_at`, `updated_at`) VALUES
(135, 'Nguyễn Anh Tuấn', 'admin', 'kairu2607@gmail.com', '2024-11-16 03:43:45', '$2y$12$f1ogycBo6xlo/xMCwHBWdOuDUVnsI4fCagL83fRh3tvmByIwagHka', 'LZNKPpusJRTbqOzELXa0OrpD2ojbx8xawToTsdxGIw9VnlObGZVTrfnCtSd9', NULL, '2024-11-10 02:31:58', '2024-11-16 03:43:45'),
(145, 'Nguyễn Anh Tuấn', 'nguyentuan', 'admin@gmail.com', NULL, '$2y$12$CS8aOozrs81dC1hXz5hfOu7GbcplG4s83SUC0fPnlQIKPJ6Gfl91K', NULL, NULL, '2024-11-11 06:10:56', '2024-11-11 06:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_created_at_updated_at_index` (`created_at`,`updated_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
