-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 03:52 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_10_142727_create_posts_table', 1),
(5, '2019_11_12_045203_add_user_id_to_posts', 2),
(6, '2019_11_12_131320_add_cover_image_to_posts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_img`) VALUES
(11, 'The new Photoshop for iPad isn\'t the best tablet photo-editing app', 'Lightroom is designed for photographers. The desktop version provides an end-to-end workflow that starts by helping you organize and tag your photos upon import. It has an extensive range of editing tools and preset options, and then you can export photos with settings that match your specific purpose. Just this week, Adobe announced that users can finally export images to TIFF files directly from Lightroom, which is another step toward making it an all-in-one solution.', '2019-11-12 09:12:09', '2019-11-12 09:12:09', 1, 'noImage.jpg'),
(12, 'Vaping harms more than just your lungs', 'Over the past few months, we’ve heard a lot about the health impacts of e-cigarettes, but much of the research has focused on the outbreak of acute lung illnesses. The Food and Drug Administration and the Centers for Disease Control continue to actively investigate those conditions, and recent evidence suggests they’re linked to vitamin E acetate found in counterfeit, cannabis-containing vaping products.', '2019-11-12 09:15:21', '2019-11-12 09:15:21', 1, 'noImage.jpg'),
(13, 'Get the most out of your Mac with these 24 hidden settings', 'Apple prides itself on the polish and slickness of its software, and on the surface, macOS proves itself an intuitive and easy-to-navigate operating system. Dig deeper, however, and you’ll find a heap of useful settings and options that let you customize your computing experience. Here are 24 of our favorites.', '2019-11-12 09:16:46', '2019-11-12 09:16:46', 1, 'noImage.jpg'),
(14, 'An Arctic blast is headed our way this week, and it’s earlier than usual', 'A “blast” of chilly Arctic air is expected to pass over the eastern part of the country this week, bringing piles of snow from the Great Lakes to New England. The mercury will drop 15 to 25 degrees Fahrenheit below average, breaking a few records in the process. Areas of Minnesota could see sub-zero temperatures, while reports out of Texas show weather in the low teens. European countries are also bracing themselves for the blast.', '2019-11-12 09:17:43', '2019-11-12 09:17:43', 1, 'noImage.jpg'),
(15, 'Powerful blenders for nutrient-packed smoothies, soups, and sauces', 'Eating blended fruits and vegetables allows you to digest all the nutrients and fibers that can be difficult to eat or digest. This is why so many active and healthy people swear by drinking smoothies every day. Of course, buying smoothies at a juice bar is expensive, and you can’t guarantee you’re getting the freshest ingredients. So why leave the house for that blended treat? Invest in the right blender and bring your healthy routine home. Plus, blenders are handy on all sorts of food adventures. Make hummus, nut butter, salad dressing, salsa, or, of course, frozen cocktails. Get creative and have fun with these machines, and sneak spinach into a meal without it tasting like greens. Here are some of our favorite blenders on the market today.', '2019-11-12 09:18:40', '2019-11-12 09:18:40', 1, 'noImage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saneth Mahadoowage', 'ssmahadoowage@gmail.com', NULL, '$2y$10$ZcUvhknOQePZ5dpDoRfrNOqjoEE1IxLa6RC.JpmiOsRTDJVm/uxhe', NULL, '2019-11-11 23:06:29', '2019-11-11 23:06:29'),
(2, 'Saseni Nimanda', 'snm@gmail.com', NULL, '$2y$10$/Obnn9ryofTae9oeAAKBXuppe5q3rpeanyHhax2Iz.xsnJKvxC59G', NULL, '2019-11-12 01:09:08', '2019-11-12 01:09:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
