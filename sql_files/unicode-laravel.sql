-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 09, 2024 at 09:55 PM
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
(31, '2024_11_09_122951_add_foreign_users_table', 11);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `status`, `published_at`, `created_at`, `updated_at`) VALUES
(71, 'Voluptas reprehenderit voluptatum doloremque vero quia pariatur.', 'Consequatur sunt quia a consequuntur et. Unde voluptas laudantium consequatur in architecto.', 1, '2024-10-19 13:23:12', '1998-07-23 08:08:20', NULL),
(72, 'Adipisci praesentium laboriosam veniam eveniet voluptas aliquid.', 'Ut nostrum molestiae dolorem dolores recusandae eveniet officia. Cumque accusantium inventore ut placeat sint. Qui omnis aut optio sunt explicabo. Et non natus nulla ea.', 1, '1996-02-15 16:02:33', '1970-11-06 23:00:26', NULL),
(73, 'Et consequatur neque quis enim nisi cum.', 'Magni fugit sed inventore dolorem iste similique. Nam alias nihil consequuntur voluptas ea. Ut temporibus odit et dolor.', 1, '1998-05-20 05:39:07', '1983-01-27 19:13:17', NULL),
(74, 'Rerum eum at necessitatibus eum ut quos nostrum.', 'Architecto eaque non qui ut sapiente. Quia voluptatem dicta culpa reprehenderit odio aut. Nulla odit qui voluptates est. Et quia excepturi cumque. Totam sed autem maxime est.', 1, '2000-06-06 06:42:32', '1993-05-04 08:24:50', NULL),
(75, 'Quisquam aut qui error in tempore officiis eum.', 'Blanditiis ut sit reprehenderit ipsa quia. Quisquam dignissimos praesentium minima eveniet. Mollitia aspernatur harum omnis cupiditate autem suscipit.', 1, '1989-05-16 11:46:52', '1990-02-10 08:41:51', NULL),
(76, 'Sapiente eligendi praesentium consequatur iusto labore eos dolores. Consequatur et officia perspiciatis modi dicta et.', 'Asperiores illo perferendis eius et recusandae sint eaque. Aut beatae qui odio adipisci. In dolore dolore et similique in error quam.', 1, '1974-08-06 02:35:38', '1994-01-01 15:25:54', NULL),
(77, 'Rem atque non quae aut a. Sed nesciunt quae libero accusamus omnis esse occaecati.', 'Aspernatur magnam odit cumque ea veritatis natus perspiciatis. Blanditiis atque animi fuga velit qui fugiat est. Repudiandae aut asperiores magnam nihil doloribus quisquam ab.', 1, '2022-05-26 03:28:31', '2002-03-04 12:55:55', NULL),
(78, 'Rerum id ut quam veritatis assumenda dolorum placeat.', 'Exercitationem atque adipisci harum veritatis. Consectetur iure et nobis quos sed. Illum at quasi veritatis tenetur. Facere quae reiciendis quo odio dolores aut dignissimos cumque.', 1, '2019-08-09 14:37:17', '1994-09-30 03:19:18', NULL),
(79, 'Consequatur molestiae incidunt at ea facilis dolorem. In saepe cum velit corrupti fugiat aut.', 'Aut quo fugiat commodi ut. Cum sed iusto quia corrupti at est. Maxime voluptatum inventore harum ipsa non quo.', 1, '1994-08-21 10:06:53', '2002-02-08 08:16:38', NULL),
(80, 'Magnam non molestiae eaque corrupti quasi id.', 'Quod eos qui quia et consequatur non earum. Dolores veniam pariatur deleniti a in eum.', 1, '1978-12-18 09:19:04', '1970-12-31 14:32:42', NULL),
(81, 'Ut autem delectus nobis facilis eos soluta. Nisi doloremque ipsum ad excepturi facere id eum.', 'Qui voluptatem consequatur at reprehenderit quae. Illo aliquid tenetur provident voluptas error. Est ea consectetur neque eligendi quis voluptas. Aut ad consequatur molestiae odio nisi.', 1, '1976-05-18 22:14:30', '2006-07-17 11:55:48', NULL),
(82, 'Labore enim voluptatem consectetur quibusdam tenetur distinctio eum. Minima odio earum aspernatur perferendis consectetur autem.', 'Est non laborum hic occaecati et. Inventore consequatur exercitationem eum dolorum similique est. Assumenda unde doloribus impedit quia omnis repellendus distinctio. Ratione ex nihil tempora.', 1, '1979-04-19 07:52:10', '1988-08-04 12:30:18', NULL),
(83, 'Illum dolor facere cupiditate ut.', 'Omnis velit eveniet deserunt eos minima magnam. Est quos incidunt saepe aut alias. Aut officia repellat inventore cum. Similique velit ab voluptas mollitia vel.', 1, '1975-04-22 04:07:14', '2014-01-04 19:04:07', NULL),
(84, 'Ut laboriosam rerum minima nobis. Est error et praesentium sint officiis.', 'Architecto vitae aut ut et consequuntur totam. Est consequatur velit quod omnis. Aspernatur dolore commodi accusamus voluptas natus.', 1, '2011-11-05 14:28:50', '2009-03-10 21:18:57', NULL),
(85, 'Beatae voluptas officiis perspiciatis facilis est. Assumenda et qui accusantium voluptatem qui quod.', 'Iste quo enim aliquid ratione tempore nesciunt eum. Repellendus numquam itaque officia perspiciatis. Nemo expedita sit laboriosam.', 1, '1992-06-01 16:25:57', '1978-07-14 11:59:25', NULL),
(86, 'In nostrum autem quas impedit sit.', 'Aut veniam praesentium fugiat est sequi. Cum veniam et libero voluptatum repellendus nulla. Occaecati dignissimos quam quidem omnis omnis.', 1, '1984-03-30 13:50:18', '1998-03-25 14:59:06', NULL),
(87, 'Libero quasi iure molestias aut voluptatum in possimus id. Perferendis porro sed nobis odit autem eum.', 'Ut autem sit ut. Adipisci rerum earum eos sit sed.', 1, '1973-05-16 06:19:26', '2014-12-29 23:39:13', NULL),
(88, 'Autem corrupti vero ab at dolorum et numquam. Debitis quas repellat aliquid aliquid ut nulla.', 'Adipisci temporibus sit nemo deserunt. Error deserunt nostrum in vel et expedita. Ut et non a officiis.', 1, '1994-09-14 18:15:15', '1979-06-23 18:21:27', NULL),
(89, 'Nam sed laboriosam ipsam odio in sed magni.', 'Similique culpa dolorem reprehenderit sunt. Et id in et molestiae rerum animi vel. Non eos delectus aut doloribus ea blanditiis deleniti.', 1, '1983-08-13 08:22:11', '2019-10-11 16:22:54', NULL),
(90, 'Sit ut mollitia velit at quia. Sit qui pariatur vel fugiat.', 'Iusto est dolore sit iusto dolores nobis. Vero culpa eaque eos sequi. Itaque unde doloremque atque alias est quaerat eos.', 1, '1992-04-16 13:26:26', '1991-12-27 15:35:02', NULL),
(91, 'Deleniti ex molestiae optio nulla porro sint et voluptatem.', 'Dolorem ut aliquam et et molestiae. Similique et et laborum nemo tempore eos dolor. Voluptas deserunt minus vel minus ipsum. Et omnis deleniti nam ut in odio.', 1, '1988-12-26 10:39:29', '1971-10-04 04:14:00', NULL),
(92, 'Sint fugiat est asperiores porro aspernatur et itaque.', 'Illum laboriosam sint eaque dolores placeat. Dolores harum quo nemo vel quaerat enim. Quidem corrupti voluptatem sint laboriosam.', 1, '2001-07-25 20:47:43', '2002-11-23 00:42:29', NULL),
(93, 'At ut veniam aut aut. Laboriosam totam id animi tenetur sed.', 'Eum ipsum voluptatem ex sit voluptatem veniam. Alias et nulla vitae optio repellat in qui.', 1, '2003-03-23 17:03:58', '2016-06-15 18:38:40', NULL),
(94, 'Et modi sint hic aut dolorum quis est. Laborum libero magnam nihil id omnis.', 'Tempora et perspiciatis eligendi dignissimos minus. Et illum quas maxime enim corporis fugit dolorem. Nisi aut nemo tempore magnam omnis. Nihil ea mollitia quia ut a praesentium veniam.', 1, '2001-04-08 06:58:53', '1981-07-03 20:01:04', NULL),
(95, 'Sint necessitatibus iusto nihil placeat nobis ipsam ipsum.', 'Aut rerum soluta impedit expedita saepe eligendi et fugiat. Ipsam tempora a ea vel. Aut animi voluptates distinctio.', 1, '1994-12-26 19:46:55', '1978-09-26 18:59:31', NULL),
(96, 'Dolore magnam eligendi dolores voluptas.', 'Quas maxime voluptate ipsa. Voluptate vel non doloribus sint officia omnis maiores. Et voluptate voluptates voluptatem maxime alias eos. Ut accusamus rerum veritatis.', 1, '2014-02-06 02:17:50', '1972-06-03 07:41:41', NULL),
(97, 'Reiciendis dolorem similique perferendis similique enim nobis voluptatibus enim. Omnis velit suscipit eum dolorem consequuntur iure dolor et.', 'Suscipit deleniti perferendis aut molestiae ut. Eveniet fugit eius perspiciatis et iusto. Rerum dolorem voluptatem voluptatum omnis. A adipisci culpa hic doloremque.', 1, '1988-10-25 14:05:27', '1977-04-24 06:09:51', NULL),
(98, 'Et esse eligendi qui et cupiditate tenetur.', 'Sed autem magnam quasi et quam. Tempore eum eaque natus quia quo molestiae ipsa.', 1, '2021-09-25 14:31:48', '1998-10-21 00:48:31', NULL),
(99, 'Impedit maiores repellat quo eum adipisci facilis nisi.', 'Voluptatem rerum dolore voluptas excepturi. Tempora cum culpa non quo. Et incidunt quaerat nesciunt. Quisquam sit omnis dicta eligendi odio. Numquam distinctio id magni quia recusandae sed.', 1, '1990-04-19 06:00:41', '2018-10-21 01:03:19', NULL),
(100, 'Et a similique vel velit. Nobis dolores aliquid praesentium similique dolor rerum ea.', 'Rem earum quasi et et hic autem. Expedita totam sed at nihil magnam nesciunt dolor ullam. Ad eius quas ut eos. Voluptas deleniti ad quam provident.', 1, '1997-10-05 21:46:55', '2008-12-01 19:35:59', NULL),
(101, 'Nisi ipsa culpa id quibusdam. Asperiores odit accusamus labore error perferendis illo modi dolor.', 'Voluptates vel aut dignissimos accusamus. Quam laborum sit aliquam voluptas provident. Recusandae sed sint ipsum iure nam non unde. Est dolorem placeat enim eos non adipisci quia.', 1, '1987-02-02 22:18:08', '1977-01-14 03:54:45', NULL),
(102, 'Explicabo nemo exercitationem tenetur qui nulla ea soluta. Totam esse quasi animi et magnam autem maxime.', 'Sit similique voluptas ducimus facilis quia odit ex. Molestias dolor quo voluptatibus quam maxime. Deleniti et mollitia aut inventore qui consequatur quisquam.', 1, '1973-01-10 02:03:14', '1979-07-03 02:10:17', NULL),
(103, 'Minus eos incidunt totam id.', 'Dolores ut autem quasi nam. Aliquid tenetur qui aut dolorem omnis placeat. Magni qui laboriosam adipisci.', 1, '2014-05-31 20:28:33', '1986-11-11 18:43:20', NULL),
(104, 'Sunt voluptate fugit veritatis dolor et.', 'Eius nulla et dignissimos quo ut. Aut sed beatae velit quisquam suscipit. Et officia animi accusantium enim molestiae harum et aspernatur.', 1, '1996-06-24 23:50:57', '2005-04-07 11:33:26', NULL),
(105, 'Pariatur consequatur doloremque quia eaque necessitatibus. Eos nemo quam molestias minus rerum nostrum sint dolorem.', 'Et nihil sint qui animi. Repellat et ut vel labore consequatur. Deleniti quasi et et harum ipsam error.', 1, '1993-11-02 11:47:26', '1989-02-10 18:33:13', NULL),
(106, 'Ex fugit vitae quibusdam sit cum.', 'Sint repellat ullam placeat accusamus commodi tenetur. Deserunt quia voluptatem rem perferendis laborum. Laudantium a animi soluta in expedita.', 1, '1978-07-18 07:29:11', '1990-08-17 10:36:04', NULL),
(107, 'Dolores quis aut facilis. Velit esse aut animi delectus.', 'Provident delectus eveniet non veniam. Illo quod facere velit odit tempora. Corporis aut ut ut esse sint repellendus.', 1, '2010-12-07 00:01:07', '1978-04-15 10:34:52', NULL),
(108, 'Libero eos est exercitationem saepe.', 'Ut aliquam iure repellat nihil aut. Omnis error repellendus vel reprehenderit. Velit est omnis sint.', 1, '1978-08-23 21:59:26', '2019-06-21 07:09:02', NULL),
(109, 'Itaque sapiente nemo ut delectus officiis ducimus. Dolor fuga odio eos occaecati illo non.', 'Laboriosam assumenda cupiditate quaerat libero. Et aut unde possimus numquam sed facere molestiae voluptatem. Itaque totam laudantium hic. Officiis velit officia et assumenda.', 1, '2003-08-07 18:36:36', '2005-04-25 06:21:49', NULL),
(110, 'Sunt dolorem voluptates quia iure ut impedit molestiae. Dolor ut eos enim id reprehenderit.', 'Quibusdam quia illo eum reprehenderit qui quis. Ut at saepe veniam voluptatum hic laudantium tempora. Facilis fugit sed velit quia nisi sed. Velit blanditiis recusandae aut optio ex est molestiae.', 1, '2013-11-06 14:41:52', '2000-05-03 04:06:56', NULL);

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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `group_id`, `created_at`, `updated_at`) VALUES
(65, 'Elissa Carroll III', 'sadie54@little.org', NULL, '$2y$12$If.z7sgprFK8Bn./pq.k3.5h8X6GVze0iSdR81yodaJJx2Gpts4j6', NULL, 1, '1977-07-16 09:48:09', NULL),
(66, 'Emiliano Conroy', 'bernie.jakubowski@klein.com', NULL, '$2y$12$Dwx56wbdLucJsqD7tMcE.Opwr53370MRNlwyqIdl4HMiNgKJWSMLW', NULL, 1, '1983-09-05 04:17:43', NULL),
(67, 'Jennie Von', 'scottie76@gmail.com', NULL, '$2y$12$HkGxGlCwvyzszW/w87cz9uk7mBoAFo7rCbFwZt6xgW7y0/TjPlAv.', NULL, 1, '2024-04-13 18:08:01', NULL),
(68, 'Asha Spencer', 'fharvey@yahoo.com', NULL, '$2y$12$k5rzhZ81YBuus3mMBwjOsesnAWE4fGdOc.U498Uo2XHWjlTzilWhi', NULL, 1, '2016-09-08 20:43:03', NULL),
(69, 'Ismael Lynch', 'monroe.schamberger@prosacco.com', NULL, '$2y$12$twi4zPosmi.1szHGzicE3.pceHsVJjTLsTg17aYwFEVKc3E0jnHBa', NULL, 1, '2012-11-16 12:30:31', NULL),
(70, 'Fidel Zboncak', 'alessia84@gmail.com', NULL, '$2y$12$XgrfPX3fhX2QAz7jEGfvoufe1L7ZOTWzgV7ExSNZM41GL8SSu9mfu', NULL, 1, '2021-12-29 14:42:56', NULL),
(71, 'Brooklyn Hayes', 'simonis.javier@walter.com', NULL, '$2y$12$0NdkT/DjUQa2mo44BdE/rum556yH98DkCzqjtbrzp7kjOyg2fKGLW', NULL, 1, '1999-03-13 22:21:08', NULL),
(72, 'Keeley Cassin II', 'lherman@hotmail.com', NULL, '$2y$12$UpwN06kbu/4vMvtB5UDMtufdaHAD/hgI.AduBYu96.TICKLs7L3Sm', NULL, 1, '1973-09-13 16:46:16', NULL),
(73, 'Mrs. Lacey Feil', 'obeahan@yahoo.com', NULL, '$2y$12$jSf9MKTXHtdgYE4jdh0/mOcwvJilrRHnpVjvC7c3ZtkKcqyb0Q/qm', NULL, 1, '2014-06-01 08:30:50', NULL),
(74, 'Dallin Schulist', 'haleigh20@spinka.biz', NULL, '$2y$12$faJwDZ3VZH13zzDSfffQn.EI5quYkc6Mw8674Ho7ZLn5CGVlz2zu6', NULL, 1, '1986-10-24 02:18:49', NULL),
(75, 'Dr. Frieda Deckow', 'wilburn29@barton.com', NULL, '$2y$12$T5L3Py0Jj9591Qlg5yyiBeKf.WOw7ypoGss5oSMSKXuoTaiogTSze', NULL, 1, '1990-10-10 10:05:29', NULL),
(76, 'Martin Volkman', 'horacio.breitenberg@littel.com', NULL, '$2y$12$qehbXEQ/j0lVVMgW0iAoZOFQyfmhHt3inktwu8l8FsO9v/.Ldqk5u', NULL, 1, '1974-12-30 21:57:11', NULL),
(77, 'Kianna Jerde', 'sanford.mary@yahoo.com', NULL, '$2y$12$BGpA69mSCrr4BJMICvDnHOB3FZdZ/6ehUjBZpw9cwyKqtQeNbAWkS', NULL, 1, '2003-07-03 03:41:05', NULL),
(78, 'Alexzander Shanahan', 'reba56@lowe.org', NULL, '$2y$12$Eei9RAUkECc0GpAnGF2AJ.6hB4R.HRZXdpGF.knpBYGStVEiRKq42', NULL, 1, '1984-03-22 03:51:07', NULL),
(79, 'Aaron Lind', 'mertz.kara@simonis.info', NULL, '$2y$12$uBBnH0hmEnQRKgRMBoMVG.lwZ/F.k8QidFqxNykhWoUwEe75sY3.2', NULL, 1, '2007-01-12 19:24:05', NULL),
(80, 'Prof. Grant Russel', 'lueilwitz.pierce@barrows.com', NULL, '$2y$12$psObtYwaoLLNt2aU4tQOD.Yzzdf47nbo/Md9nKgRq.IPjy6OSMO2C', NULL, 1, '2015-08-08 11:04:25', NULL),
(81, 'Gracie O\'Conner', 'jordyn04@hegmann.net', NULL, '$2y$12$wFLNJ8N1LSmRk7kd6w9WS.QYZgC6ctybuybszND/Ao0el5zz6tlMi', NULL, 1, '1991-04-22 20:05:59', NULL),
(82, 'Cali Howe', 'rschroeder@corkery.biz', NULL, '$2y$12$pYzn0z8.wuTJQbW/C1bzBehJOs7bFE6AM5VTsnwZMr6CPox3eAZ8G', NULL, 1, '1999-12-09 07:24:58', NULL),
(83, 'Arianna Lehner', 'moshe51@macejkovic.com', NULL, '$2y$12$o45HMUUTJsvvtXOq64gRTus9ZvTYq5rfToAtZsLaeuxph7C5e/Ue6', NULL, 1, '1971-03-15 21:49:02', NULL),
(84, 'Johann Schmidt', 'nhammes@ebert.com', NULL, '$2y$12$mMPR4hPbKk4vFYCjH8FjRuYlUwjCFvuE5z7LFKO6Hoqd4evFl0AtG', NULL, 1, '1995-12-24 14:13:12', NULL);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
