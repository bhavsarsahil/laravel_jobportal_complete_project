-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 07:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Accountant', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03'),
(2, 'IT/Computers', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03'),
(3, 'Telecom', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03'),
(4, 'Social Media', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03'),
(5, 'Construction & Engineering', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `job_type_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vacancy` int(11) NOT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `responsibility` text DEFAULT NULL,
  `qualifications` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `experience` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_location` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `isFeatured` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `category_id`, `job_type_id`, `user_id`, `vacancy`, `salary`, `location`, `description`, `benefits`, `responsibility`, `qualifications`, `keywords`, `experience`, `company_name`, `company_location`, `company_website`, `status`, `isFeatured`, `created_at`, `updated_at`) VALUES
(1, 'backend developer', 2, 2, 3, 1, '1,00,000', 'ahemdabad', 'Description', 'Benefits', 'Responsibility', 'Qualifications', 'php, laravel, java, c, c++', '2', 'google', 'ahmedabad', 'www.google.com', 1, 1, '2024-02-08 06:32:24', '2024-02-08 06:32:24'),
(2, 'backend developer', 2, 1, 1, 1, '25,000', 'Ahemdabad', 'dummy Description', 'dummy Benefits', 'dummy Responsibility', 'dummy Qualifications', 'php,laravel,java', '1', 'xyz', 'ahmedabad', 'www.xyz.com', 1, 0, '2024-02-09 07:24:01', '2024-02-09 07:24:01'),
(6, 'web developer', 2, 1, 1, 2, '1,00,000', 'Ghandhinagar', 'dummy Description', NULL, NULL, NULL, 'php, laravel, java, c, c++', '6', 'google', NULL, NULL, 1, 1, '2024-02-09 07:26:10', '2024-02-09 07:26:10'),
(7, 'Junior Graphic Designer', 2, 6, 1, 2, 'Unpaid', 'Ahemdabad', 'Entry-level opportunity for graphic designers to gain hands-on experience.', 'Flexible schedule, mentorship from experienced designers.', 'Assist in creating visual content, collaborate with team members.', 'Pursuing or completed degree in Graphic Design or related field.', 'Graphic design, Adobe Illustrator, Photoshop.', '3', 'Sales Pro India Pvt. Ltd.', 'Delhi, India', 'www.pixelperfectdesigns.in', 1, 1, '2024-02-10 03:43:35', '2024-02-10 03:43:35'),
(8, 'Graphic designer', 2, 3, 1, 2, '45K', 'Surat', 'dummy description', 'dummy benefits', 'Dummy responsibility.', 'Dummy qualifications.', 'Figma.', '1', 'Sagar Private Limited.', 'Surat', 'www.sagar.com', 1, 1, '2024-02-10 06:22:04', '2024-02-10 06:22:04'),
(9, 'Accounter', 1, 1, 1, 1, '69K', 'Bangalore.', 'dummy Description.', 'Dummy benefits.', 'dummy responsibility.', 'dummy qualifications.', 'CA', '3', 'xyz', 'Bangalore.', 'www.pixelperfectdesigns.in', 1, 0, '2024-02-10 06:24:08', '2024-02-10 06:24:08'),
(10, 'Web Designer', 2, 2, 3, 1, '45K', 'Ghandhinagar', 'Dummy Description', 'dummy Benefits', 'Dummy responsibility.', 'Dummy qualifications', 'Html,Css,Javascript', '5', 'FindDreamJob', 'Ghandhinagar', 'www.nokri,com', 1, 1, '2024-02-10 06:28:25', '2024-02-10 06:28:25'),
(11, 'Financial Analyst', 1, 1, 3, 3, '35K', 'nikol,Ahmedabad', 'Dummy Description', 'Dummy Benefits', 'Dummy Responsibility', 'Dummy Qualifications', 'Graduated', '7', 'DBIC', 'Nikol,Ahmedabad', 'www.dbic.com', 1, 0, '2024-02-10 06:31:46', '2024-02-10 06:31:46'),
(12, 'Human Resources', 4, 2, 3, 10, '12K', 'Bapunagar', 'Dummy Description', 'Dummy Benefits', 'Dummy Responsibility', 'Dummy Qualifications', 'Communication skill', '1', 'Hitech', 'Bapunagar', 'www.Hitech.com', 1, 1, '2024-02-10 06:33:59', '2024-02-27 06:34:51'),
(13, 'Database Management', 2, 2, 1, 1, '85k', 'Ahemdabad', 'Dummy Description', 'Benefits', 'Responsibility', 'Qualifications', 'Mysql', '1', 'Hitech', 'Bapunagar', 'www.xyz.com', 1, 0, '2024-02-15 03:25:43', '2024-02-15 03:26:20'),
(14, 'cloud database (updated)', 2, 1, 1, 3, '90k', 'Ghandhinagar', 'Dummy Description', 'Dummy Benefits', 'Dummy Responsibility', 'Dummy Qualifications', 'Mysql', '5', 'google', 'Ghandhinagar', 'www.google.com', 1, 1, '2024-02-17 11:19:28', '2024-03-11 22:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `applied_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `user_id`, `employer_id`, `applied_date`, `created_at`, `updated_at`) VALUES
(15, 12, 1, 3, '2024-02-15 03:30:26', '2024-02-15 03:30:26', '2024-02-15 03:30:26'),
(16, 10, 1, 3, '2024-02-16 04:43:46', '2024-02-16 04:43:46', '2024-02-16 04:43:46'),
(20, 13, 3, 1, '2024-02-17 00:47:45', '2024-02-17 00:47:45', '2024-02-17 00:47:45'),
(23, 13, 2, 1, '2024-02-27 06:25:31', '2024-02-27 06:25:31', '2024-02-27 06:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03'),
(2, 'Part Time', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03'),
(3, 'Freelance', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03'),
(4, 'Remote', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03'),
(5, 'Contract', 1, '2024-02-07 01:36:03', '2024-02-07 01:36:03'),
(6, 'Internship', 1, NULL, NULL);

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
(5, '2024_02_07_023332_create_categories_table', 2),
(6, '2024_02_07_023508_create_job_types_table', 2),
(7, '2024_02_07_023600_create_jobs_table', 2),
(8, '2024_02_07_101032_alter_jobs_table', 3),
(9, '2024_02_08_025112_alter_jobs_table', 4),
(10, '2024_02_12_122503_create_job_application_table', 5),
(11, '2024_02_14_051404_create_job_applications_table', 6),
(12, '2024_02_16_094157_create_saved_jobs_table', 7),
(13, '2024_02_17_102743_alter_users_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('rohan@gmail.com', 'jq75ut71C7PLzz3Xdy5ybKzHq6tLj7RAOKqI1D7d92nBfhwJwq2jQVFhjOXF', '2024-03-02 04:38:52');

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

-- --------------------------------------------------------

--
-- Table structure for table `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 7, 2, '2024-02-16 06:27:25', '2024-02-16 06:27:25'),
(6, 12, 1, '2024-02-19 22:35:10', '2024-02-19 22:35:10'),
(7, 13, 3, '2024-03-11 05:14:38', '2024-03-11 05:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `designation`, `mobile`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sahil bhavsar', 'sahilbhavsar1255@gmail.com', NULL, '$2y$12$WROVmMyd//lQK54V6U0nOuGtPXOQMn3xZ8UVapZOgg67yfqS11Qfa', '1-1707275290.jpg', 'backend developer or Admin', '7383924441', 'admin', NULL, '2024-02-04 08:48:59', '2024-02-18 07:45:08'),
(2, 'gunjan', 'gunjan@gmail.com', NULL, '$2y$12$wRjLw/hN52lyNATODvcbeuk8dfi8s6tMxd...5GHPhb2GyX4MLYty', NULL, NULL, '7894561320', 'user', NULL, '2024-02-04 08:53:00', '2024-02-04 08:53:00'),
(3, 'snehal', 'snehal@gmail.com', NULL, '$2y$12$I/sqgkzdP8efBLOe803U0uy9ov1YVrz7c8NXbN.RhOQ6cSUI55SiW', '3-1707223389.jpg', 'coder', '7984044698', 'user', NULL, '2024-02-04 10:45:53', '2024-02-17 02:22:31'),
(5, 'Rohan Bhai', 'rohan@gmail.com', NULL, '$2y$12$Lp93kIQg0MLPgpKdqWkEFOdiOFshU7AFLUMByW.Mvucg.3xq4mVVS', NULL, NULL, '7539512589', 'user', NULL, '2024-02-17 10:40:15', '2024-03-02 05:33:44');

--
-- Indexes for dumped tables
--

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
  ADD KEY `jobs_category_id_foreign` (`category_id`),
  ADD KEY `jobs_job_type_id_foreign` (`job_type_id`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`),
  ADD KEY `job_applications_user_id_foreign` (`user_id`),
  ADD KEY `job_applications_employer_id_foreign` (`employer_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saved_jobs_job_id_foreign` (`job_id`),
  ADD KEY `saved_jobs_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD CONSTRAINT `saved_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
