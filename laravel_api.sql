-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 05:17 AM
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
-- Database: `laravel_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comments_content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comments_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'Ini Sudah Di ubah', '2023-07-30 21:06:02', '2023-07-30 22:52:22', '2023-07-30 22:52:22'),
(9, 2, 1, 'Berhasil Diubah', '2023-07-30 22:56:23', '2023-07-30 22:58:19', '2023-07-30 22:58:19'),
(10, 5, 1, 'BAGUS BANGET MAS AOKWOAKWAOKWAOWKAWKO', '2023-07-30 23:11:26', '2023-07-30 23:11:26', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_26_062338_create_posts_table', 1),
(6, '2023_07_26_063229_create_comments_table', 1),
(7, '2023_07_31_024448_add_image_coloumn_to_post_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 1, 'user login', 'd758d6bccd6dbfd20093e39b230f55f0f36136a58a93d35ea87487082539ab8e', '[\"*\"]', '2023-07-30 22:58:19', NULL, '2023-07-30 22:36:34', '2023-07-30 22:58:19'),
(4, 'App\\Models\\User', 1, 'user login', '6aacb5b717a7ad03c7169968160bd8c489e1e48d0567e511f3d56a272c55c91e', '[\"*\"]', '2023-07-30 23:11:26', NULL, '2023-07-30 23:11:11', '2023-07-30 23:11:26'),
(5, 'App\\Models\\User', 1, 'user login', '62ebcac313d6c80d64539ca5f156e6f5161e27769cc608cf1e1e982caabf7076', '[\"*\"]', '2023-07-31 00:02:59', NULL, '2023-07-30 23:56:05', '2023-07-31 00:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(225) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `news_content` text NOT NULL,
  `author` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `news_content`, `author`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', NULL, 'diubah', 1, '2023-07-31 03:07:15', '2023-07-30 20:31:05', '2023-07-30 20:31:05'),
(2, 'Judul Telah Diubah', NULL, 'Content Sudah Diubah', 1, '2023-07-31 03:10:48', '2023-07-30 22:55:30', NULL),
(3, 'penambahan judul test', NULL, 'Disini merupakan tester create post artikel', 1, '2023-07-30 20:32:53', '2023-07-30 20:34:09', '2023-07-30 20:34:09'),
(4, 'penambahan judul test', NULL, 'Disini merupakan tester create post artikel', 1, '2023-07-30 22:53:19', '2023-07-30 22:53:19', NULL),
(5, 'judul test', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem, accusamus? Sit atque doloremque voluptates aspernatur velit possimus placeat autem, ducimus culpa libero itaque eum exercitationem reprehenderit, ipsum minus alias dolor! Atque placeat dolores sint quas id quo excepturi in nemo molestiae tempora, nisi neque laboriosam distinctio sunt consequuntur iusto maiores vero eum aspernatur? Mollitia nisi alias eveniet recusandae optio, beatae maxime voluptatum illum velit, animi ut. Veritatis aliquam nam dignissimos est illo vitae voluptate, voluptates corrupti quos quaerat nesciunt doloremque numquam explicabo officia. Similique suscipit enim culpa ad eius ab, recusandae nemo dignissimos doloremque cumque distinctio accusamus odit dolorem est.', 1, '2023-07-30 22:53:57', '2023-07-30 22:53:57', NULL),
(6, 'Tempat upload Image', 'pGRZOnhyXypkSu1Zpr8OdD3RnS0qiZ.png', '\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem, accusamus? Sit atque doloremque voluptates aspernatur velit possimus placeat autem, ducimus culpa libero itaque eum exercitationem reprehenderit, ipsum minus alias dolor! Atque placeat dolores sint quas id quo excepturi in nemo molestiae tempora, nisi neque laboriosam distinctio sunt consequuntur iusto maiores vero eum aspernatur? Mollitia nisi alias eveniet recusandae optio, beatae maxime voluptatum illum velit, animi ut. Veritatis aliquam nam dignissimos est illo vitae voluptate, voluptates corrupti quos quaerat nesciunt doloremque numquam explicabo officia. Similique suscipit enim culpa ad eius ab, recusandae nemo dignissimos doloremque cumque distinctio accusamus odit dolorem est.\"', 1, '2023-07-30 23:56:32', '2023-07-30 23:56:32', NULL),
(7, 'Tempat upload Image 2', NULL, '\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem, accusamus? Sit atque doloremque voluptates aspernatur velit possimus placeat autem, ducimus culpa libero itaque eum exercitationem reprehenderit, ipsum minus alias dolor! Atque placeat dolores sint quas id quo excepturi in nemo molestiae tempora, nisi neque laboriosam distinctio sunt consequuntur iusto maiores vero eum aspernatur? Mollitia nisi alias eveniet recusandae optio, beatae maxime voluptatum illum velit, animi ut. Veritatis aliquam nam dignissimos est illo vitae voluptate, voluptates corrupti quos quaerat nesciunt doloremque numquam explicabo officia. Similique suscipit enim culpa ad eius ab, recusandae nemo dignissimos doloremque cumque distinctio accusamus odit dolorem est.\"', 1, '2023-07-31 00:02:59', '2023-07-31 00:02:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `firstname`, `lastname`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'idang@gmail.com', 'idang', '$2y$10$B6haQ6b08qDOqcN2grPbKuuFN8cMnbQgEhW9.d0hxhe73IYqqz/h2', 'idang', 'idang', '2023-07-31 03:05:27', NULL, NULL),
(2, 'admin@gmail.com', 'admin', '$2y$10$/kCRuBEP6TGYDY5PtMFOVurptxEKsZGsJ.bGHUqHDjj7rSaKG1LU2', 'admin', 'admin', '2023-07-31 03:09:52', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_foreign` (`author`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
