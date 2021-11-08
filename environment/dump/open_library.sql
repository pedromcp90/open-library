-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 08-11-2021 a las 23:02:01
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `open_library`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'Mia', 'Pollich', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(2, 'Nathan', 'Hackett', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(3, 'Kole', 'Dare', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(4, 'Jeromy', 'Gleason', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(5, 'Toney', 'Borer', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(6, 'Howell', 'Schultz', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(7, 'Ava', 'Stiedemann', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(8, 'Micaela', 'Deckow', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(9, 'Lexus', 'Barrows', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(10, 'Hayley', 'Dickinson', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(11, 'Tate', 'Jenkins', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(12, 'Brain', 'Greenholt', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(13, 'Gregg', 'Streich', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(14, 'Merritt', 'Kreiger', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(15, 'King', 'Osinski', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(16, 'Kaley', 'Dare', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(17, 'Hazel', 'Daugherty', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(18, 'Edythe', 'White', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(19, 'Jacinthe', 'Osinski', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(20, 'Evert', 'Schmeler', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(21, 'Cecile', 'Paucek', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(22, 'Randal', 'Haag', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(23, 'Eloy', 'Hoppe', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(24, 'Melyna', 'Schaefer', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(25, 'Jerome', 'White', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(26, 'August', 'Fay', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(27, 'Sadye', 'Collier', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(28, 'Sydnie', 'Morissette', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(29, 'Amalia', 'Ward', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(30, 'Elmer', 'Bartell', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(31, 'Kirstin', 'Koch', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(32, 'Terrell', 'Gerlach', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(33, 'Whitney', 'Johnston', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(34, 'Wilma', 'Schmidt', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(35, 'Addie', 'Altenwerth', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(36, 'Mitchell', 'Stanton', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(37, 'Amaya', 'Hodkiewicz', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(38, 'Calista', 'Emard', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(39, 'Jovanny', 'Mante', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(40, 'Cullen', 'Hackett', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(41, 'Dayana', 'Sipes', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(42, 'Hiram', 'Kovacek', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(43, 'Emerson', 'Leannon', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(44, 'Wava', 'Bartell', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(45, 'Trudie', 'Bogisich', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(46, 'Evangeline', 'Aufderhar', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(47, 'Litzy', 'Ziemann', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(48, 'Herman', 'Stroman', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(49, 'Verona', 'Gerlach', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(50, 'Winona', 'Zboncak', '2021-11-07 19:20:33', '2021-11-07 19:20:33'),
(51, 'Pedro Manuel', 'Cruz Pérez', '2021-11-08 21:45:17', '2021-11-08 21:45:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `author_book`
--

CREATE TABLE `author_book` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `author_book`
--

INSERT INTO `author_book` (`id`, `book_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 6, 2, NULL, NULL),
(3, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isbn` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_year` smallint(5) UNSIGNED DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `publication_year`, `cover_image`, `publisher_id`, `created_at`, `updated_at`) VALUES
(1, '978-1-234-56789-7', 'werwerwer', 2345, NULL, NULL, NULL, NULL),
(2, '84-8447-186-1', 'asdasd', 20125, 'uploads/57J9E3ChyTo1EsXJBUMpaVOe0mZC9DHwnXeLleia.jpg', NULL, '2021-11-07 19:29:25', '2021-11-07 19:30:12'),
(6, '84-8447-195-0', 'sdfasdfs', NULL, NULL, NULL, '2021-11-07 19:51:40', '2021-11-07 19:51:40'),
(19, '9781234567897', 'aaaaa', NULL, NULL, NULL, '2021-11-08 19:40:21', '2021-11-08 19:40:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`) VALUES
(1, 6, 2),
(2, 6, 5),
(3, 6, 6),
(4, 2, 4),
(5, 1, 6),
(6, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Adventures', NULL, NULL),
(2, 'Audiobook', NULL, NULL),
(3, 'Biography', NULL, NULL),
(4, 'Classics', NULL, NULL),
(5, 'Comics', NULL, NULL),
(6, 'Cook books', NULL, NULL),
(7, 'Dictionary', NULL, NULL),
(8, 'E-book', NULL, NULL),
(9, 'Encyclopedias', NULL, NULL),
(10, 'Fairy tales', NULL, NULL),
(11, 'Historical novels', NULL, NULL),
(12, 'History', NULL, NULL),
(13, 'Holy bibble', NULL, NULL),
(14, 'Koran', NULL, NULL),
(15, 'Love', NULL, NULL),
(16, 'Mystery', NULL, NULL),
(17, 'Philosophy', NULL, NULL),
(18, 'Pocket books', NULL, NULL),
(19, 'Poetry', NULL, NULL),
(20, 'Politics', NULL, NULL),
(21, 'Science fiction', NULL, NULL),
(22, 'Self-aid', NULL, NULL),
(23, 'Torah', NULL, NULL),
(24, 'Travel guide', NULL, NULL),
(25, 'Suspense', '2021-11-08 21:53:30', '2021-11-08 21:53:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_05_001133_create_categories_table', 1),
(6, '2021_11_05_001403_create_authors_table', 1),
(7, '2021_11_05_001711_create_publishers_table', 1),
(8, '2021_11_06_002340_create_books_table', 1),
(9, '2021_11_07_162738_create_author_book_table', 1),
(10, '2021_11_07_163348_create_book_category_table', 1),
(11, '2021_11_08_222327_create_navbars_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `navbars`
--

CREATE TABLE `navbars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `navbars`
--

INSERT INTO `navbars` (`id`, `name`, `route`, `ordering`, `created_at`, `updated_at`) VALUES
(8, 'Home', 'home', 1, '2021-11-08 22:40:26', '2021-11-08 22:40:26'),
(9, 'Books', 'book.index', 2, '2021-11-08 22:40:26', '2021-11-08 22:40:26'),
(10, 'Authors', 'author.index', 3, '2021-11-08 22:40:26', '2021-11-08 22:40:26'),
(11, 'Categories', 'category.index', 3, '2021-11-08 22:40:26', '2021-11-08 22:40:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pedro Cruz', 'pedromcp90@gmail.com', NULL, '$2y$10$/XWJNrlg1pbJrczzXVugxeyT64D9BDKjYZZzVBBfLfpMsrCoHPkrS', NULL, '2021-11-07 19:19:14', '2021-11-07 19:19:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `author_book`
--
ALTER TABLE `author_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_book_book_id_foreign` (`book_id`),
  ADD KEY `author_book_author_id_foreign` (`author_id`);

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`),
  ADD KEY `books_publisher_id_foreign` (`publisher_id`);

--
-- Indices de la tabla `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `navbars`
--
ALTER TABLE `navbars`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `author_book`
--
ALTER TABLE `author_book`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `navbars`
--
ALTER TABLE `navbars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_book_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
