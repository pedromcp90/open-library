-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 11-11-2021 a las 18:49:28
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
  `author_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `author_image`, `created_at`, `updated_at`) VALUES
(1, 'Rosendo', 'Green', 'https://via.placeholder.com/600x600.png/007799?text=face+qui', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(2, 'Leda', 'Hegmann', 'https://via.placeholder.com/600x600.png/008877?text=face+voluptas', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(3, 'Magdalen', 'Price', 'https://via.placeholder.com/600x600.png/00ffaa?text=face+incidunt', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(4, 'Brooke', 'Morar', 'https://via.placeholder.com/600x600.png/00ddff?text=face+vero', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(5, 'Jayda', 'Cormier', 'https://via.placeholder.com/600x600.png/00bb88?text=face+id', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(6, 'Justice', 'Welch', 'https://via.placeholder.com/600x600.png/00aa77?text=face+dolores', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(7, 'Marta', 'Zieme', 'https://via.placeholder.com/600x600.png/0066cc?text=face+quia', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(8, 'Lorenz', 'Grant', 'https://via.placeholder.com/600x600.png/00bb88?text=face+et', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(9, 'Lincoln', 'Buckridge', 'https://via.placeholder.com/600x600.png/001199?text=face+et', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(10, 'Hayden', 'Zboncak', 'https://via.placeholder.com/600x600.png/005522?text=face+et', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(11, 'Eulalia', 'Windler', 'https://via.placeholder.com/600x600.png/000055?text=face+et', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(12, 'Dewitt', 'Berge', 'https://via.placeholder.com/600x600.png/0066cc?text=face+et', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(13, 'Karelle', 'Lowe', 'https://via.placeholder.com/600x600.png/0099aa?text=face+voluptatibus', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(14, 'Emilio', 'Kozey', 'https://via.placeholder.com/600x600.png/0011aa?text=face+voluptas', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(15, 'Ramon', 'Ward', 'https://via.placeholder.com/600x600.png/0011ff?text=face+est', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(16, 'Jakayla', 'Gibson', 'https://via.placeholder.com/600x600.png/0088bb?text=face+sed', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(17, 'Brittany', 'Volkman', 'https://via.placeholder.com/600x600.png/004411?text=face+cumque', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(18, 'Sophie', 'Gottlieb', 'https://via.placeholder.com/600x600.png/003344?text=face+provident', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(19, 'Elmore', 'Towne', 'https://via.placeholder.com/600x600.png/00ff77?text=face+quis', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(20, 'Okey', 'Weber', 'https://via.placeholder.com/600x600.png/008811?text=face+deleniti', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(21, 'Isabella', 'Vandervort', 'https://via.placeholder.com/600x600.png/003366?text=face+molestiae', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(22, 'Jakob', 'Buckridge', 'https://via.placeholder.com/600x600.png/00bb44?text=face+officiis', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(23, 'Sarina', 'Erdman', 'https://via.placeholder.com/600x600.png/00bb44?text=face+expedita', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(24, 'Shanelle', 'Reichert', 'https://via.placeholder.com/600x600.png/0044ff?text=face+eum', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(25, 'Geovanny', 'Lynch', 'https://via.placeholder.com/600x600.png/00aadd?text=face+est', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(26, 'Sarina', 'Blick', 'https://via.placeholder.com/600x600.png/00dd33?text=face+aut', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(27, 'Skyla', 'Ryan', 'https://via.placeholder.com/600x600.png/00ee33?text=face+quae', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(28, 'Stephanie', 'Harvey', 'https://via.placeholder.com/600x600.png/0099aa?text=face+reprehenderit', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(29, 'Reggie', 'Wilderman', 'https://via.placeholder.com/600x600.png/0033ff?text=face+maiores', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(30, 'Ansley', 'Daugherty', 'https://via.placeholder.com/600x600.png/00eeee?text=face+nihil', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(31, 'Eve', 'Towne', 'https://via.placeholder.com/600x600.png/0077cc?text=face+praesentium', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(32, 'Mireya', 'McGlynn', 'https://via.placeholder.com/600x600.png/008833?text=face+ut', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(33, 'Marlee', 'Zboncak', 'https://via.placeholder.com/600x600.png/00ffee?text=face+ipsum', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(34, 'Morris', 'Rohan', 'https://via.placeholder.com/600x600.png/007733?text=face+non', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(35, 'Brendon', 'Reilly', 'https://via.placeholder.com/600x600.png/0011ff?text=face+nostrum', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(36, 'Rudolph', 'Nader', 'https://via.placeholder.com/600x600.png/0022bb?text=face+et', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(37, 'Nya', 'Collins', 'https://via.placeholder.com/600x600.png/0022cc?text=face+accusantium', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(38, 'Rebeka', 'Senger', 'https://via.placeholder.com/600x600.png/008833?text=face+exercitationem', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(39, 'Jaiden', 'Kessler', 'https://via.placeholder.com/600x600.png/002222?text=face+ipsum', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(40, 'Ashtyn', 'Franecki', 'https://via.placeholder.com/600x600.png/00ee88?text=face+sed', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(41, 'Tatyana', 'Crooks', 'https://via.placeholder.com/600x600.png/00aa77?text=face+adipisci', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(42, 'Herta', 'Johnston', 'https://via.placeholder.com/600x600.png/0055ff?text=face+et', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(43, 'Kimberly', 'Gleichner', 'https://via.placeholder.com/600x600.png/009944?text=face+voluptatibus', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(44, 'Leda', 'Ratke', 'https://via.placeholder.com/600x600.png/00cc22?text=face+quisquam', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(45, 'Elvera', 'Hermiston', 'https://via.placeholder.com/600x600.png/003333?text=face+molestiae', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(46, 'Otis', 'Cartwright', 'https://via.placeholder.com/600x600.png/0044cc?text=face+in', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(47, 'Seth', 'Leffler', 'https://via.placeholder.com/600x600.png/00bbcc?text=face+pariatur', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(48, 'Lulu', 'Schultz', 'https://via.placeholder.com/600x600.png/001133?text=face+voluptas', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(49, 'Emie', 'Gaylord', 'https://via.placeholder.com/600x600.png/005511?text=face+voluptatem', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(50, 'Candace', 'Simonis', 'https://via.placeholder.com/600x600.png/00aa22?text=face+voluptas', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(51, 'Amalia', 'Jones', 'https://via.placeholder.com/600x600.png/00aaee?text=face+eligendi', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(52, 'Lamont', 'Carroll', 'https://via.placeholder.com/600x600.png/00ffbb?text=face+quam', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(53, 'Justyn', 'Jast', 'https://via.placeholder.com/600x600.png/00dd66?text=face+ex', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(54, 'Cordie', 'Mills', 'https://via.placeholder.com/600x600.png/0066dd?text=face+suscipit', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(55, 'Lea', 'Schuppe', 'https://via.placeholder.com/600x600.png/001177?text=face+non', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(56, 'Piper', 'Little', 'https://via.placeholder.com/600x600.png/006644?text=face+facilis', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(57, 'Tania', 'Corkery', 'https://via.placeholder.com/600x600.png/0055cc?text=face+molestiae', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(58, 'Lance', 'Purdy', 'https://via.placeholder.com/600x600.png/00cccc?text=face+omnis', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(59, 'Zelda', 'Brekke', 'https://via.placeholder.com/600x600.png/00cc77?text=face+corporis', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(60, 'Rusty', 'Gulgowski', 'https://via.placeholder.com/600x600.png/00ff33?text=face+nostrum', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(61, 'Elinor', 'Lynch', 'https://via.placeholder.com/600x600.png/000088?text=face+quia', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(62, 'Heber', 'Marquardt', 'https://via.placeholder.com/600x600.png/002222?text=face+tempora', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(63, 'Madilyn', 'Schumm', 'https://via.placeholder.com/600x600.png/0066aa?text=face+vero', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(64, 'Candido', 'Thiel', 'https://via.placeholder.com/600x600.png/00eecc?text=face+eos', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(65, 'Kaleb', 'Wolff', 'https://via.placeholder.com/600x600.png/006666?text=face+commodi', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(66, 'Jamarcus', 'King', 'https://via.placeholder.com/600x600.png/00ffaa?text=face+id', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(67, 'Adolphus', 'Heaney', 'https://via.placeholder.com/600x600.png/000066?text=face+iusto', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(68, 'Karli', 'Murphy', 'https://via.placeholder.com/600x600.png/0066dd?text=face+magnam', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(69, 'Allene', 'Hegmann', 'https://via.placeholder.com/600x600.png/007700?text=face+aliquam', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(70, 'Eleanora', 'Green', 'https://via.placeholder.com/600x600.png/0000ff?text=face+modi', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(71, 'Lue', 'Hilpert', 'https://via.placeholder.com/600x600.png/00eeaa?text=face+qui', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(72, 'Marisol', 'Rohan', 'https://via.placeholder.com/600x600.png/00ee77?text=face+libero', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(73, 'Augustus', 'Rippin', 'https://via.placeholder.com/600x600.png/0099aa?text=face+iste', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(74, 'Estella', 'Bernier', 'https://via.placeholder.com/600x600.png/00cc77?text=face+vel', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(75, 'Adan', 'Wyman', 'https://via.placeholder.com/600x600.png/00cc88?text=face+quod', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(76, 'Declan', 'Sipes', 'https://via.placeholder.com/600x600.png/004477?text=face+ab', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(77, 'Titus', 'Dickinson', 'https://via.placeholder.com/600x600.png/00ff77?text=face+iure', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(78, 'Vance', 'Predovic', 'https://via.placeholder.com/600x600.png/0033dd?text=face+laboriosam', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(79, 'Elmore', 'Beatty', 'https://via.placeholder.com/600x600.png/0099aa?text=face+rem', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(80, 'Uriel', 'Shields', 'https://via.placeholder.com/600x600.png/000000?text=face+ea', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(81, 'Stone', 'Towne', 'https://via.placeholder.com/600x600.png/00bbaa?text=face+excepturi', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(82, 'Breanne', 'Stroman', 'https://via.placeholder.com/600x600.png/006666?text=face+dolores', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(83, 'Theo', 'Hodkiewicz', 'https://via.placeholder.com/600x600.png/0077cc?text=face+facere', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(84, 'Stella', 'Jones', 'https://via.placeholder.com/600x600.png/0088cc?text=face+architecto', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(85, 'Baylee', 'Anderson', 'https://via.placeholder.com/600x600.png/002299?text=face+nobis', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(86, 'Ismael', 'Pacocha', 'https://via.placeholder.com/600x600.png/002288?text=face+quae', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(87, 'Camron', 'Hessel', 'https://via.placeholder.com/600x600.png/008888?text=face+hic', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(88, 'Haven', 'Schulist', 'https://via.placeholder.com/600x600.png/00bb11?text=face+mollitia', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(89, 'Mercedes', 'Stokes', 'https://via.placeholder.com/600x600.png/0055ee?text=face+dignissimos', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(90, 'Paul', 'Krajcik', 'https://via.placeholder.com/600x600.png/004411?text=face+quae', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(91, 'Joanne', 'Ankunding', 'https://via.placeholder.com/600x600.png/003322?text=face+rerum', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(92, 'Maximillian', 'Nicolas', 'https://via.placeholder.com/600x600.png/008800?text=face+eius', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(93, 'Iva', 'Hessel', 'https://via.placeholder.com/600x600.png/005533?text=face+et', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(94, 'Jaiden', 'Steuber', 'https://via.placeholder.com/600x600.png/0044ee?text=face+quis', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(95, 'Barton', 'Boehm', 'https://via.placeholder.com/600x600.png/0022ee?text=face+autem', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(96, 'Erica', 'Kunze', 'https://via.placeholder.com/600x600.png/00aaaa?text=face+et', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(97, 'Kaley', 'Lebsack', 'https://via.placeholder.com/600x600.png/0033ff?text=face+labore', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(98, 'Lee', 'Dickinson', 'https://via.placeholder.com/600x600.png/00dd66?text=face+aut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(99, 'Maxie', 'Denesik', 'https://via.placeholder.com/600x600.png/00dd55?text=face+voluptatum', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(100, 'Leann', 'Oberbrunner', 'https://via.placeholder.com/600x600.png/00aabb?text=face+incidunt', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(101, 'Audreanne', 'Lynch', 'https://via.placeholder.com/600x600.png/0000aa?text=face+magnam', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(102, 'Regan', 'Maggio', 'https://via.placeholder.com/600x600.png/00bbcc?text=face+ut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(103, 'Corine', 'Gislason', 'https://via.placeholder.com/600x600.png/008866?text=face+aut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(104, 'Kailyn', 'Spinka', 'https://via.placeholder.com/600x600.png/00cc66?text=face+omnis', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(105, 'Tomasa', 'Leuschke', 'https://via.placeholder.com/600x600.png/005500?text=face+ut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(106, 'Lelah', 'Becker', 'https://via.placeholder.com/600x600.png/00dd11?text=face+atque', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(107, 'Evert', 'Leuschke', 'https://via.placeholder.com/600x600.png/00ddff?text=face+quae', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(108, 'Joanne', 'Russel', 'https://via.placeholder.com/600x600.png/00ff77?text=face+quia', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(109, 'Clemens', 'Stroman', 'https://via.placeholder.com/600x600.png/001199?text=face+nam', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(110, 'Gaston', 'Zieme', 'https://via.placeholder.com/600x600.png/00dd88?text=face+consequuntur', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(111, 'Lisa', 'Connelly', 'https://via.placeholder.com/600x600.png/0033ee?text=face+nobis', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(112, 'Bradly', 'Nikolaus', 'https://via.placeholder.com/600x600.png/00ffcc?text=face+fuga', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(113, 'Rene', 'Kertzmann', 'https://via.placeholder.com/600x600.png/002255?text=face+pariatur', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(114, 'Lavon', 'Daugherty', 'https://via.placeholder.com/600x600.png/0000ff?text=face+minima', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(115, 'Kaden', 'Greenfelder', 'https://via.placeholder.com/600x600.png/0088bb?text=face+aut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(116, 'Cynthia', 'Okuneva', 'https://via.placeholder.com/600x600.png/004400?text=face+sint', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(117, 'Carmine', 'Hudson', 'https://via.placeholder.com/600x600.png/00ddcc?text=face+quasi', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(118, 'Durward', 'Abernathy', 'https://via.placeholder.com/600x600.png/009933?text=face+nihil', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(119, 'Kaycee', 'Schaefer', 'https://via.placeholder.com/600x600.png/007755?text=face+consequatur', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(120, 'Helen', 'Jacobson', 'https://via.placeholder.com/600x600.png/004499?text=face+rerum', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(121, 'Adrain', 'Koss', 'https://via.placeholder.com/600x600.png/00ffdd?text=face+nihil', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(122, 'Violet', 'Schiller', 'https://via.placeholder.com/600x600.png/004488?text=face+mollitia', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(123, 'Loma', 'Sauer', 'https://via.placeholder.com/600x600.png/00ff33?text=face+ut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(124, 'Alexis', 'Hackett', 'https://via.placeholder.com/600x600.png/0033cc?text=face+vel', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(125, 'Esta', 'Donnelly', 'https://via.placeholder.com/600x600.png/008899?text=face+occaecati', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(126, 'Brad', 'Gleichner', 'https://via.placeholder.com/600x600.png/0066ff?text=face+voluptates', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(127, 'Fay', 'Block', 'https://via.placeholder.com/600x600.png/004444?text=face+vero', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(128, 'Zoey', 'Gutkowski', 'https://via.placeholder.com/600x600.png/002288?text=face+ut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(129, 'Salma', 'Hettinger', 'https://via.placeholder.com/600x600.png/006655?text=face+qui', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(130, 'Melvin', 'Bernhard', 'https://via.placeholder.com/600x600.png/000000?text=face+qui', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(131, 'Patrick', 'Kovacek', 'https://via.placeholder.com/600x600.png/00dd44?text=face+asperiores', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(132, 'Taya', 'O\'Hara', 'https://via.placeholder.com/600x600.png/00ee33?text=face+et', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(133, 'Keven', 'Prosacco', 'https://via.placeholder.com/600x600.png/0044ee?text=face+nisi', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(134, 'Larry', 'Roberts', 'https://via.placeholder.com/600x600.png/0088cc?text=face+quia', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(135, 'Ahmad', 'Swaniawski', 'https://via.placeholder.com/600x600.png/0099dd?text=face+deleniti', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(136, 'Daphney', 'Hill', 'https://via.placeholder.com/600x600.png/00bbbb?text=face+voluptatem', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(137, 'Madge', 'Strosin', 'https://via.placeholder.com/600x600.png/00bb22?text=face+repellat', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(138, 'Flossie', 'Wilkinson', 'https://via.placeholder.com/600x600.png/00ff99?text=face+error', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(139, 'Dortha', 'Bartell', 'https://via.placeholder.com/600x600.png/001122?text=face+blanditiis', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(140, 'Alek', 'Goldner', 'https://via.placeholder.com/600x600.png/00aa22?text=face+sit', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(141, 'Christ', 'Blick', 'https://via.placeholder.com/600x600.png/0055cc?text=face+voluptatibus', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(142, 'Thomas', 'Bashirian', 'https://via.placeholder.com/600x600.png/009944?text=face+aut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(143, 'Lenora', 'Hoeger', 'https://via.placeholder.com/600x600.png/00ff44?text=face+in', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(144, 'Iliana', 'Jast', 'https://via.placeholder.com/600x600.png/00cc77?text=face+ut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(145, 'Krista', 'Quitzon', 'https://via.placeholder.com/600x600.png/00eeff?text=face+aut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(146, 'Adelle', 'Doyle', 'https://via.placeholder.com/600x600.png/00aaaa?text=face+quos', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(147, 'Coby', 'Jenkins', 'https://via.placeholder.com/600x600.png/0055cc?text=face+aut', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(148, 'Eveline', 'Gleichner', 'https://via.placeholder.com/600x600.png/003344?text=face+quod', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(149, 'Therese', 'Upton', 'https://via.placeholder.com/600x600.png/00bbff?text=face+omnis', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(150, 'Jordane', 'Bahringer', 'https://via.placeholder.com/600x600.png/009988?text=face+voluptate', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(151, 'Arthur', 'Pollich', 'https://via.placeholder.com/600x600.png/0099dd?text=face+quia', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(152, 'Ansel', 'Huels', 'https://via.placeholder.com/600x600.png/001111?text=face+voluptates', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(153, 'Alda', 'Stanton', 'https://via.placeholder.com/600x600.png/009933?text=face+praesentium', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(154, 'Ashlynn', 'Towne', 'https://via.placeholder.com/600x600.png/0033bb?text=face+delectus', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(155, 'Vito', 'Breitenberg', 'https://via.placeholder.com/600x600.png/00aa33?text=face+tenetur', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(156, 'Toy', 'Kozey', 'https://via.placeholder.com/600x600.png/00bb55?text=face+commodi', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(157, 'Domenico', 'Klein', 'https://via.placeholder.com/600x600.png/0055ee?text=face+voluptatibus', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(158, 'Sylvester', 'Grimes', 'https://via.placeholder.com/600x600.png/00dd66?text=face+eos', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(159, 'Oren', 'Romaguera', 'https://via.placeholder.com/600x600.png/000011?text=face+velit', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(160, 'King', 'Crist', 'https://via.placeholder.com/600x600.png/006644?text=face+ratione', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(161, 'Kelley', 'Weissnat', 'https://via.placeholder.com/600x600.png/0077ff?text=face+consequatur', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(162, 'Retha', 'Hettinger', 'https://via.placeholder.com/600x600.png/00eeee?text=face+voluptatem', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(163, 'Dorian', 'Schamberger', 'https://via.placeholder.com/600x600.png/006666?text=face+et', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(164, 'Palma', 'Erdman', 'https://via.placeholder.com/600x600.png/000000?text=face+voluptatem', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(165, 'Shyanne', 'Barton', 'https://via.placeholder.com/600x600.png/00aaee?text=face+voluptas', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(166, 'Kennedi', 'Collins', 'https://via.placeholder.com/600x600.png/0000ee?text=face+praesentium', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(167, 'Earl', 'Bernier', 'https://via.placeholder.com/600x600.png/008822?text=face+autem', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(168, 'D\'angelo', 'Zemlak', 'https://via.placeholder.com/600x600.png/001177?text=face+eos', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(169, 'Magdalena', 'Yundt', 'https://via.placeholder.com/600x600.png/00ddee?text=face+fuga', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(170, 'Don', 'Dickens', 'https://via.placeholder.com/600x600.png/00ff33?text=face+libero', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(171, 'Antone', 'Price', 'https://via.placeholder.com/600x600.png/007744?text=face+placeat', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(172, 'Amely', 'Parisian', 'https://via.placeholder.com/600x600.png/0055bb?text=face+sequi', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(173, 'Lessie', 'Beier', 'https://via.placeholder.com/600x600.png/00ccbb?text=face+enim', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(174, 'Brant', 'Klocko', 'https://via.placeholder.com/600x600.png/00eecc?text=face+rerum', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(175, 'Millie', 'Quitzon', 'https://via.placeholder.com/600x600.png/00eeaa?text=face+ipsa', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(176, 'Sammie', 'Thiel', 'https://via.placeholder.com/600x600.png/004499?text=face+aut', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(177, 'Garrison', 'Feil', 'https://via.placeholder.com/600x600.png/00bb33?text=face+quia', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(178, 'Graham', 'Weimann', 'https://via.placeholder.com/600x600.png/00ccee?text=face+aut', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(179, 'Elise', 'Armstrong', 'https://via.placeholder.com/600x600.png/0044dd?text=face+numquam', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(180, 'Norberto', 'Heathcote', 'https://via.placeholder.com/600x600.png/00bb11?text=face+similique', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(181, 'Camryn', 'Stroman', 'https://via.placeholder.com/600x600.png/0066dd?text=face+iste', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(182, 'Kian', 'Ebert', 'https://via.placeholder.com/600x600.png/005533?text=face+accusantium', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(183, 'Ayden', 'Wiegand', 'https://via.placeholder.com/600x600.png/0000ee?text=face+eaque', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(184, 'Richie', 'Littel', 'https://via.placeholder.com/600x600.png/0000cc?text=face+deleniti', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(185, 'Alice', 'Beahan', 'https://via.placeholder.com/600x600.png/0055aa?text=face+aut', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(186, 'Waino', 'Williamson', 'https://via.placeholder.com/600x600.png/000099?text=face+voluptatem', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(187, 'Nettie', 'McKenzie', 'https://via.placeholder.com/600x600.png/006688?text=face+molestiae', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(188, 'Alfreda', 'Torphy', 'https://via.placeholder.com/600x600.png/007700?text=face+praesentium', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(189, 'Avery', 'Strosin', 'https://via.placeholder.com/600x600.png/00aacc?text=face+cumque', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(190, 'Bertrand', 'Emard', 'https://via.placeholder.com/600x600.png/001199?text=face+eos', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(191, 'Theodora', 'Conroy', 'https://via.placeholder.com/600x600.png/0033cc?text=face+harum', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(192, 'Garth', 'Hauck', 'https://via.placeholder.com/600x600.png/000077?text=face+non', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(193, 'Elvera', 'Watsica', 'https://via.placeholder.com/600x600.png/0022bb?text=face+illum', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(194, 'Kolby', 'Cummings', 'https://via.placeholder.com/600x600.png/0088aa?text=face+alias', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(195, 'Mathias', 'O\'Reilly', 'https://via.placeholder.com/600x600.png/00bb88?text=face+qui', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(196, 'Corine', 'Beahan', 'https://via.placeholder.com/600x600.png/0077dd?text=face+et', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(197, 'Vesta', 'Marquardt', 'https://via.placeholder.com/600x600.png/00cc22?text=face+accusantium', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(198, 'Jeremie', 'Gutmann', 'https://via.placeholder.com/600x600.png/00ccee?text=face+qui', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(199, 'Rosario', 'Hessel', 'https://via.placeholder.com/600x600.png/009966?text=face+sed', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(200, 'Alysa', 'Armstrong', 'https://via.placeholder.com/600x600.png/00cc55?text=face+praesentium', '2021-11-11 18:48:43', '2021-11-11 18:48:43');

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
(1, 1, 51, NULL, NULL),
(2, 1, 52, NULL, NULL),
(3, 1, 53, NULL, NULL),
(4, 2, 54, NULL, NULL),
(5, 2, 55, NULL, NULL),
(6, 2, 56, NULL, NULL),
(7, 3, 57, NULL, NULL),
(8, 3, 58, NULL, NULL),
(9, 3, 59, NULL, NULL),
(10, 4, 60, NULL, NULL),
(11, 4, 61, NULL, NULL),
(12, 4, 62, NULL, NULL),
(13, 5, 63, NULL, NULL),
(14, 5, 64, NULL, NULL),
(15, 5, 65, NULL, NULL),
(16, 6, 66, NULL, NULL),
(17, 6, 67, NULL, NULL),
(18, 6, 68, NULL, NULL),
(19, 7, 69, NULL, NULL),
(20, 7, 70, NULL, NULL),
(21, 7, 71, NULL, NULL),
(22, 8, 72, NULL, NULL),
(23, 8, 73, NULL, NULL),
(24, 8, 74, NULL, NULL),
(25, 9, 75, NULL, NULL),
(26, 9, 76, NULL, NULL),
(27, 9, 77, NULL, NULL),
(28, 10, 78, NULL, NULL),
(29, 10, 79, NULL, NULL),
(30, 10, 80, NULL, NULL),
(31, 11, 81, NULL, NULL),
(32, 11, 82, NULL, NULL),
(33, 11, 83, NULL, NULL),
(34, 12, 84, NULL, NULL),
(35, 12, 85, NULL, NULL),
(36, 12, 86, NULL, NULL),
(37, 13, 87, NULL, NULL),
(38, 13, 88, NULL, NULL),
(39, 13, 89, NULL, NULL),
(40, 14, 90, NULL, NULL),
(41, 14, 91, NULL, NULL),
(42, 14, 92, NULL, NULL),
(43, 15, 93, NULL, NULL),
(44, 15, 94, NULL, NULL),
(45, 15, 95, NULL, NULL),
(46, 16, 96, NULL, NULL),
(47, 16, 97, NULL, NULL),
(48, 16, 98, NULL, NULL),
(49, 17, 99, NULL, NULL),
(50, 17, 100, NULL, NULL),
(51, 17, 101, NULL, NULL),
(52, 18, 102, NULL, NULL),
(53, 18, 103, NULL, NULL),
(54, 18, 104, NULL, NULL),
(55, 19, 105, NULL, NULL),
(56, 19, 106, NULL, NULL),
(57, 19, 107, NULL, NULL),
(58, 20, 108, NULL, NULL),
(59, 20, 109, NULL, NULL),
(60, 20, 110, NULL, NULL),
(61, 21, 111, NULL, NULL),
(62, 21, 112, NULL, NULL),
(63, 21, 113, NULL, NULL),
(64, 22, 114, NULL, NULL),
(65, 22, 115, NULL, NULL),
(66, 22, 116, NULL, NULL),
(67, 23, 117, NULL, NULL),
(68, 23, 118, NULL, NULL),
(69, 23, 119, NULL, NULL),
(70, 24, 120, NULL, NULL),
(71, 24, 121, NULL, NULL),
(72, 24, 122, NULL, NULL),
(73, 25, 123, NULL, NULL),
(74, 25, 124, NULL, NULL),
(75, 25, 125, NULL, NULL),
(76, 26, 126, NULL, NULL),
(77, 26, 127, NULL, NULL),
(78, 26, 128, NULL, NULL),
(79, 27, 129, NULL, NULL),
(80, 27, 130, NULL, NULL),
(81, 27, 131, NULL, NULL),
(82, 28, 132, NULL, NULL),
(83, 28, 133, NULL, NULL),
(84, 28, 134, NULL, NULL),
(85, 29, 135, NULL, NULL),
(86, 29, 136, NULL, NULL),
(87, 29, 137, NULL, NULL),
(88, 30, 138, NULL, NULL),
(89, 30, 139, NULL, NULL),
(90, 30, 140, NULL, NULL),
(91, 31, 141, NULL, NULL),
(92, 31, 142, NULL, NULL),
(93, 31, 143, NULL, NULL),
(94, 32, 144, NULL, NULL),
(95, 32, 145, NULL, NULL),
(96, 32, 146, NULL, NULL),
(97, 33, 147, NULL, NULL),
(98, 33, 148, NULL, NULL),
(99, 33, 149, NULL, NULL),
(100, 34, 150, NULL, NULL),
(101, 34, 151, NULL, NULL),
(102, 34, 152, NULL, NULL),
(103, 35, 153, NULL, NULL),
(104, 35, 154, NULL, NULL),
(105, 35, 155, NULL, NULL),
(106, 36, 156, NULL, NULL),
(107, 36, 157, NULL, NULL),
(108, 36, 158, NULL, NULL),
(109, 37, 159, NULL, NULL),
(110, 37, 160, NULL, NULL),
(111, 37, 161, NULL, NULL),
(112, 38, 162, NULL, NULL),
(113, 38, 163, NULL, NULL),
(114, 38, 164, NULL, NULL),
(115, 39, 165, NULL, NULL),
(116, 39, 166, NULL, NULL),
(117, 39, 167, NULL, NULL),
(118, 40, 168, NULL, NULL),
(119, 40, 169, NULL, NULL),
(120, 40, 170, NULL, NULL),
(121, 41, 171, NULL, NULL),
(122, 41, 172, NULL, NULL),
(123, 41, 173, NULL, NULL),
(124, 42, 174, NULL, NULL),
(125, 42, 175, NULL, NULL),
(126, 42, 176, NULL, NULL),
(127, 43, 177, NULL, NULL),
(128, 43, 178, NULL, NULL),
(129, 43, 179, NULL, NULL),
(130, 44, 180, NULL, NULL),
(131, 44, 181, NULL, NULL),
(132, 44, 182, NULL, NULL),
(133, 45, 183, NULL, NULL),
(134, 45, 184, NULL, NULL),
(135, 45, 185, NULL, NULL),
(136, 46, 186, NULL, NULL),
(137, 46, 187, NULL, NULL),
(138, 46, 188, NULL, NULL),
(139, 47, 189, NULL, NULL),
(140, 47, 190, NULL, NULL),
(141, 47, 191, NULL, NULL),
(142, 48, 192, NULL, NULL),
(143, 48, 193, NULL, NULL),
(144, 48, 194, NULL, NULL),
(145, 49, 195, NULL, NULL),
(146, 49, 196, NULL, NULL),
(147, 49, 197, NULL, NULL),
(148, 50, 198, NULL, NULL),
(149, 50, 199, NULL, NULL),
(150, 50, 200, NULL, NULL);

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
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `publication_year`, `cover_image`, `publisher_id`, `description`, `created_at`, `updated_at`) VALUES
(1, '9787775623764', 'Deleniti aperiam unde ipsum et alias.', 2017, 'https://via.placeholder.com/400x600.png/00aaee?text=books+quam', 31, 'Ad eligendi quia possimus sint cum placeat quia et corrupti sed repudiandae et perferendis veritatis maiores et deleniti veniam quidem ab harum iste dicta omnis dolores perspiciatis velit dolor id ratione eaque recusandae et repellat et assumenda voluptate.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(2, '9785850393021', 'Sit pariatur id cumque deserunt.', 2009, 'https://via.placeholder.com/400x600.png/001100?text=books+sit', 32, 'Vel recusandae inventore nesciunt consectetur quasi consequatur eos voluptas et voluptas consequuntur labore sunt vero distinctio velit nulla expedita labore perferendis totam voluptatem aliquid labore eos voluptas aut architecto nulla repellat nostrum aliquid sit sunt.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(3, '9780991949632', 'Et in nihil asperiores ipsum.', 2004, 'https://via.placeholder.com/400x600.png/00ff88?text=books+numquam', 33, 'Sint accusantium dolor sed nihil consectetur dicta sit enim excepturi nihil aliquid aut dignissimos sunt esse est dolores sint consequatur ut quaerat dolore quam vel at et saepe nihil deleniti perspiciatis nisi aperiam voluptatem a nulla facere eum et enim recusandae.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(4, '9790892917098', 'Cumque omnis minima omnis beatae aut.', 2020, 'https://via.placeholder.com/400x600.png/008822?text=books+aliquid', 34, 'Consequatur animi exercitationem error veritatis magni repellendus dolorem rem quasi sed consequatur ut dolores ab aperiam aut commodi est et qui repudiandae et omnis odit voluptatem enim animi similique ullam qui eum qui velit et quod voluptatem omnis et magni.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(5, '9783112282960', 'Fugiat voluptates consequatur.', 1979, 'https://via.placeholder.com/400x600.png/00ee77?text=books+amet', 35, 'Ipsa iste fuga quibusdam vel unde soluta dicta omnis consectetur sed voluptatem voluptatem placeat omnis enim quia quis aut possimus sed sint non ut veniam maxime at minima pariatur autem non dolore et et sed quis.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(6, '9795505006855', 'Incidunt deserunt qui voluptatibus quo amet.', 2000, 'https://via.placeholder.com/400x600.png/0000dd?text=books+temporibus', 36, 'Laboriosam eaque et porro sint reiciendis impedit hic est fuga repudiandae iste est officia quia sunt iusto sit quae consequatur blanditiis aut reiciendis quae officia recusandae qui ut vel laboriosam blanditiis alias non illum dolor ab culpa quibusdam est.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(7, '9781292331416', 'Nisi qui voluptas deleniti recusandae autem.', 1985, 'https://via.placeholder.com/400x600.png/001144?text=books+dolor', 37, 'Et distinctio dolorem porro saepe nobis exercitationem magni molestiae ipsam blanditiis doloribus qui eligendi nisi possimus aliquam atque nihil porro sequi debitis et itaque quia.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(8, '9783994267444', 'Sunt voluptatem iste tempore sequi.', 2013, 'https://via.placeholder.com/400x600.png/003333?text=books+blanditiis', 38, 'Deleniti esse qui accusamus similique quos temporibus cum provident eum eaque aut adipisci ducimus nobis velit iusto consequatur vel quia expedita molestiae aut est quas est.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(9, '9787217900125', 'Neque dolores perspiciatis sequi.', 1987, 'https://via.placeholder.com/400x600.png/0066cc?text=books+modi', 39, 'Doloremque ullam assumenda consequatur eos quia commodi delectus voluptas a animi laborum voluptatem et a dolor vero quasi nobis et sit facilis veritatis dolores et et odit provident exercitationem vero voluptatem ut quia.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(10, '9795231979638', 'Sequi nisi doloribus dolorem.', 1991, 'https://via.placeholder.com/400x600.png/002299?text=books+a', 40, 'Nobis quas quia facilis sequi vel magnam voluptatibus fuga omnis dolor laboriosam sit voluptas reiciendis qui vel ut voluptatem fugit dolor illum occaecati non omnis corrupti atque eos vero culpa unde sit corporis similique rem commodi suscipit.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(11, '9789470575720', 'Velit odio modi eum.', 2002, 'https://via.placeholder.com/400x600.png/00cc00?text=books+sint', 41, 'Fuga molestias quia porro magnam a repellendus blanditiis autem quia sint voluptatibus porro aperiam sapiente quaerat quasi error amet voluptatem est totam dolor expedita quod.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(12, '9782476253067', 'Rerum molestias nisi aut autem neque.', 1983, 'https://via.placeholder.com/400x600.png/00dddd?text=books+consequuntur', 42, 'Vel voluptatum qui alias aliquam laudantium consectetur eum adipisci nisi quas est omnis quasi et labore amet pariatur ducimus quas officia voluptate voluptatem unde ad ea quia.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(13, '9795093763284', 'Eius debitis iste.', 2000, 'https://via.placeholder.com/400x600.png/00ccee?text=books+fuga', 43, 'Id est et occaecati qui quasi consectetur a est mollitia voluptas ab vitae eum maiores voluptas perspiciatis fugit quod ut eaque non sit sequi facere ducimus deserunt maiores voluptas earum aut eligendi libero blanditiis fugiat eius pariatur nihil aut minus voluptas.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(14, '9795458418798', 'Mollitia explicabo ducimus.', 1974, 'https://via.placeholder.com/400x600.png/00dddd?text=books+molestiae', 44, 'Nihil facere et veritatis quae aut in quia deserunt quidem ipsum maxime voluptas eos aut eveniet qui voluptas architecto occaecati quasi cupiditate non earum dolor iure excepturi blanditiis et harum nobis aspernatur aliquam.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(15, '9782836816956', 'Error vel ab eius.', 2003, 'https://via.placeholder.com/400x600.png/00cc22?text=books+eos', 45, 'Iste perspiciatis perferendis modi animi magni quo hic cum sit ut ea veritatis vel tempore ipsa delectus suscipit corporis maiores in voluptates quibusdam cum quaerat voluptate et hic reprehenderit quisquam totam.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(16, '9781466917187', 'Velit repellat alias nisi placeat.', 1978, 'https://via.placeholder.com/400x600.png/002288?text=books+nihil', 46, 'Est eos rerum voluptatibus eos debitis earum quas quo qui aut quaerat cum nostrum maxime et ratione fugit omnis nesciunt doloribus accusamus tempore omnis porro nisi laboriosam necessitatibus rerum sunt dolorum consequatur dicta numquam numquam error ut illum iure ut quia facilis veritatis consequatur perspiciatis architecto fugit eligendi perspiciatis et qui sequi suscipit minima possimus.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(17, '9785044912328', 'Quasi soluta possimus qui ea.', 1975, 'https://via.placeholder.com/400x600.png/0055ff?text=books+aut', 47, 'Modi impedit corrupti nam qui aspernatur debitis placeat voluptatibus veritatis reprehenderit nihil nulla nam odit aut a sequi sunt eum earum provident sed vel accusantium libero et a est ab provident.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(18, '9799240077965', 'Sequi dolores et sequi sint.', 2002, 'https://via.placeholder.com/400x600.png/009900?text=books+possimus', 48, 'Sapiente dolorem non doloremque qui veritatis laudantium similique a velit ratione voluptatem ut sunt culpa cumque cupiditate quia nobis reiciendis quam nisi quae rerum est similique sapiente maiores autem ullam voluptatem voluptate consequuntur architecto fugit voluptatem eum incidunt ut aliquam nemo praesentium minus accusamus repellendus culpa voluptas quia et.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(19, '9791554239817', 'Quis debitis voluptatibus aut itaque.', 2009, 'https://via.placeholder.com/400x600.png/005588?text=books+est', 49, 'Laboriosam dolor voluptatem nihil dolorum nemo eaque illo autem dolorem reprehenderit qui repellat sunt cumque quis eaque fuga dolore hic molestiae in iusto officiis inventore modi et quos omnis aspernatur quia.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(20, '9796157534468', 'Vel architecto corrupti.', 1976, 'https://via.placeholder.com/400x600.png/00bbaa?text=books+commodi', 50, 'Incidunt laudantium ut dolorem hic consequuntur dolorem optio accusantium adipisci sint et inventore nulla et quae perferendis maiores ut consequatur saepe aspernatur et accusamus quasi earum delectus voluptatibus.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(21, '9784831443038', 'Aperiam est molestiae eveniet est.', 2020, 'https://via.placeholder.com/400x600.png/00cc88?text=books+qui', 51, 'Vero omnis omnis sunt maiores animi reprehenderit pariatur voluptatibus laborum ea consequuntur qui earum saepe accusantium dolorem qui voluptate nihil dolor quia recusandae dolor hic perferendis odit in molestiae corporis sit fuga aut quidem eveniet nisi recusandae voluptas totam qui harum nostrum eius qui totam nobis deserunt.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(22, '9783911986625', 'Ratione ea maiores enim laborum.', 1982, 'https://via.placeholder.com/400x600.png/0055ff?text=books+et', 52, 'Voluptates voluptas est tempore debitis quasi dolor mollitia vitae qui iste et et culpa odio deserunt et iure dolor et eligendi ipsum qui hic error praesentium molestias.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(23, '9790330255621', 'Iure quos consequatur omnis.', 2013, 'https://via.placeholder.com/400x600.png/00aacc?text=books+sed', 53, 'Est fuga dignissimos odio voluptas minus quo repellendus accusamus ad maiores quos rerum sunt a aut cum autem laudantium assumenda veniam magni quia enim quaerat voluptatem recusandae.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(24, '9789027274717', 'Optio asperiores aut.', 1971, 'https://via.placeholder.com/400x600.png/00aa44?text=books+unde', 54, 'Quibusdam deleniti consectetur similique maiores tempore cum sit sequi commodi excepturi porro aut praesentium molestiae modi consequatur quia et pariatur eveniet consequatur quaerat optio necessitatibus pariatur sapiente ab et veritatis quam veritatis eius est aliquid tenetur sunt aut nesciunt voluptatem eum et est saepe doloribus eum dolor et iure enim saepe.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(25, '9797524808809', 'Vero debitis minus omnis in.', 1976, 'https://via.placeholder.com/400x600.png/00bbdd?text=books+laudantium', 55, 'Cum aut et optio non repudiandae harum atque quis dolorum velit fuga consectetur et quam omnis qui voluptatibus beatae dolorem quis quas assumenda iusto aliquid adipisci quasi itaque et soluta quo eligendi est debitis corrupti dolor ut assumenda vel a similique quisquam soluta a impedit optio voluptatem hic.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(26, '9784622572183', 'Iusto labore occaecati rerum quas aspernatur.', 2014, 'https://via.placeholder.com/400x600.png/006611?text=books+sapiente', 56, 'Ea quidem saepe omnis provident dolores nobis nemo provident et numquam assumenda tenetur ea et iusto dolorem omnis ad optio vitae accusantium culpa impedit blanditiis consectetur beatae aut autem neque qui praesentium aut ullam quaerat est dolor quae est quibusdam et enim omnis praesentium molestias est saepe eos fugit ab occaecati aperiam ut aut.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(27, '9796509634181', 'Eos voluptatem libero soluta inventore ut.', 1970, 'https://via.placeholder.com/400x600.png/0011cc?text=books+culpa', 57, 'Et eum recusandae sint occaecati voluptas et nulla explicabo facere excepturi aut labore ea similique doloremque cumque qui quia vitae voluptates molestiae qui cum qui sed veritatis sint culpa quia ipsum nesciunt sunt ab qui esse non ut labore laborum omnis quidem inventore commodi rerum maxime voluptatem aut alias culpa autem repellat voluptate magni excepturi.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(28, '9799274168646', 'Ullam consectetur reprehenderit iusto eum similique.', 1975, 'https://via.placeholder.com/400x600.png/0099bb?text=books+tenetur', 58, 'Aspernatur similique velit est ea earum libero iure veniam voluptatibus et beatae repudiandae eos fugiat repudiandae eum tempore cum sit explicabo tenetur reprehenderit dolores dolor.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(29, '9799320592906', 'Nihil doloribus rem dignissimos at.', 1978, 'https://via.placeholder.com/400x600.png/0044cc?text=books+voluptatem', 59, 'Itaque voluptatem est officiis blanditiis perspiciatis quia aut beatae corporis sed placeat aut laborum pariatur assumenda velit et et deserunt quibusdam optio necessitatibus atque ducimus ipsa.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(30, '9785593523105', 'Vero tempora natus.', 2012, 'https://via.placeholder.com/400x600.png/0099ff?text=books+optio', 60, 'Libero non aliquam quibusdam vitae ut quibusdam optio suscipit iste eius repellendus corporis quae voluptatem exercitationem quia ullam doloremque laudantium et error alias eaque labore libero fugiat aliquid repellendus harum aspernatur consequatur delectus ipsum ea explicabo magnam tenetur pariatur excepturi totam rem consequatur dignissimos ullam non non.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(31, '9782068396080', 'Vitae molestiae nostrum maiores.', 2000, 'https://via.placeholder.com/400x600.png/006688?text=books+blanditiis', 61, 'Et possimus cumque sint voluptatibus maiores eum laborum dolores possimus dolor rerum animi vero doloremque minima corporis laborum voluptas aut quam voluptas vero expedita ipsam error voluptatum vero alias qui nostrum saepe qui est quos corporis distinctio nam laboriosam est ut enim dolor.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(32, '9792848420713', 'Rerum qui non mollitia quam.', 2004, 'https://via.placeholder.com/400x600.png/0011bb?text=books+tenetur', 62, 'Sapiente nisi ut eveniet nemo nobis sed et atque odio eum laboriosam unde culpa quis ratione aut inventore et ut cum explicabo et optio nulla quas eligendi sunt voluptatibus id et ipsa rerum blanditiis in voluptas corrupti est nihil.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(33, '9799017820879', 'Nemo eum quia.', 2014, 'https://via.placeholder.com/400x600.png/007700?text=books+labore', 63, 'Eum quae ipsam dolor in molestiae est voluptatum maiores illo qui vel et eos molestiae placeat enim odit non quam quae laboriosam consectetur repellat aut numquam ex ex fuga suscipit voluptate molestiae dolore tenetur aperiam nemo aut et vel eveniet.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(34, '9798563629981', 'Eaque ipsa odit dolor.', 1996, 'https://via.placeholder.com/400x600.png/009911?text=books+officiis', 64, 'Ut enim laborum doloribus aut libero dicta ipsum neque distinctio impedit deserunt molestiae iste quo tempore ut minima omnis voluptatem et perferendis quae commodi deleniti iusto et eum sit.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(35, '9784930612717', 'Maiores odit et cumque.', 2012, 'https://via.placeholder.com/400x600.png/00ff66?text=books+voluptas', 65, 'Voluptatum autem qui fugiat provident aliquid facilis reprehenderit commodi et aliquam sed voluptatibus molestiae suscipit ullam nihil neque excepturi quia accusantium accusantium maiores illum eum rerum error non sequi placeat distinctio nisi laborum ut magnam in sit ea quidem perspiciatis natus ducimus voluptatem.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(36, '9791560047840', 'Aut asperiores distinctio qui.', 2011, 'https://via.placeholder.com/400x600.png/0099bb?text=books+aut', 66, 'Nihil sit corrupti nulla et ad est dolorem eos vel iure id qui a nisi dolorem est consequatur aut sapiente voluptate consectetur et omnis vel nostrum omnis praesentium perferendis quis excepturi tempore recusandae est placeat.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(37, '9799597939077', 'Iure in non commodi est.', 2003, 'https://via.placeholder.com/400x600.png/00dd66?text=books+eos', 67, 'Qui quia cum ut quia repellat qui ad nemo velit eius nostrum perspiciatis doloremque ab quibusdam enim cumque sed ut blanditiis modi deleniti soluta saepe dolores perspiciatis rerum optio esse ut vel deserunt maiores magni fugiat natus voluptatum porro vitae maxime hic aut.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(38, '9790619652776', 'Deleniti soluta dolore.', 2018, 'https://via.placeholder.com/400x600.png/0077ff?text=books+soluta', 68, 'Qui repellendus enim aut veritatis repellat eveniet ad beatae autem ab temporibus aspernatur eius mollitia minima rerum cum ipsum fugit autem voluptatem numquam hic vitae facilis qui dolores voluptas omnis autem mollitia modi sed officiis officiis autem odio dolores.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(39, '9791917566512', 'Quis rerum alias delectus architecto ex.', 1998, 'https://via.placeholder.com/400x600.png/00ccee?text=books+occaecati', 69, 'Aliquid a saepe est est recusandae sapiente eos ut id odit aut officiis quae amet sunt ipsum omnis tempora delectus sit maxime maxime quos in error necessitatibus tenetur voluptatem recusandae non repudiandae et sed.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(40, '9791332323486', 'Reiciendis maxime molestiae saepe.', 2011, 'https://via.placeholder.com/400x600.png/0055dd?text=books+eaque', 70, 'Non maiores voluptatem quia consequatur suscipit perspiciatis quia laudantium quae nam officiis odio autem tempore aperiam est a omnis odio et non pariatur et mollitia.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(41, '9786203495485', 'Necessitatibus dolores consectetur vitae illum.', 1981, 'https://via.placeholder.com/400x600.png/002255?text=books+atque', 71, 'Aut tenetur consequatur minus fugit sit voluptatem est vel cumque cupiditate neque vitae optio eum reiciendis autem maiores incidunt exercitationem temporibus ex sunt autem eveniet aut quo possimus ratione animi nisi voluptas et.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(42, '9795306631331', 'Voluptatem dolore et.', 2008, 'https://via.placeholder.com/400x600.png/007777?text=books+suscipit', 72, 'Consequatur quo doloremque aut animi est sint rem sed quo dolorem eveniet necessitatibus ipsum autem adipisci dolor temporibus sit possimus aut optio autem est iure perferendis veniam culpa voluptatum voluptatum nesciunt aut adipisci est consectetur aspernatur maxime voluptatum sunt est debitis molestiae rerum ut impedit rerum ipsum dolorem inventore.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(43, '9786125058577', 'Quo aspernatur velit voluptatem.', 1988, 'https://via.placeholder.com/400x600.png/003344?text=books+possimus', 73, 'Neque qui itaque occaecati aliquid non delectus praesentium aspernatur rerum voluptatem nesciunt et possimus reiciendis mollitia dolorem ut quos saepe est quas necessitatibus aspernatur est commodi quia consequuntur nulla ut rerum molestias est porro accusantium doloribus dolorem iure quos velit libero velit aspernatur sint aspernatur fuga perspiciatis sit sunt a.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(44, '9788110441562', 'Pariatur sed voluptatem.', 1990, 'https://via.placeholder.com/400x600.png/006688?text=books+ducimus', 74, 'Quo possimus quia magni iure dolor rerum dicta optio eaque eveniet omnis magni quo quia sunt enim sunt alias consequuntur mollitia ut suscipit consequatur dignissimos nihil omnis laboriosam illum vel debitis ut ullam illo accusantium ipsa et maiores rerum corrupti occaecati corrupti et.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(45, '9786467509584', 'Deserunt et explicabo est.', 1973, 'https://via.placeholder.com/400x600.png/006644?text=books+quam', 75, 'Consequuntur quia sed dolorem quia sed quam repellendus sint a maiores quis ab explicabo omnis minus ullam cum illo quia facere neque vero labore eum laborum atque cum ex voluptatem eos nesciunt.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(46, '9794155096544', 'Id consectetur corrupti sapiente.', 2009, 'https://via.placeholder.com/400x600.png/002211?text=books+maxime', 76, 'Dolorem eos aut molestias distinctio tempore aut quo doloribus doloribus reiciendis asperiores id soluta corporis quaerat tempora rem ea quia magni quia eum ex et mollitia deserunt nobis molestiae placeat qui non cumque repudiandae amet incidunt.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(47, '9787494341307', 'Blanditiis quia dolorem eligendi quae.', 1977, 'https://via.placeholder.com/400x600.png/00ddbb?text=books+tempora', 77, 'Delectus temporibus rerum quasi in sed voluptas sed rem deserunt enim aut et repellendus odio nihil est possimus nesciunt vel maxime culpa quam est sed dolorum minus corporis possimus non cupiditate voluptas.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(48, '9783362559058', 'Deserunt dolor provident possimus accusantium et.', 1978, 'https://via.placeholder.com/400x600.png/009944?text=books+exercitationem', 78, 'Eos modi minima sunt delectus molestias et quidem explicabo perspiciatis dolorem quia corrupti possimus asperiores veniam eos sit eos ut nostrum ratione consequatur fuga repellendus quasi exercitationem et doloribus ea aliquam mollitia.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(49, '9792961468456', 'Consectetur in est non.', 2000, 'https://via.placeholder.com/400x600.png/005577?text=books+harum', 79, 'Accusamus quaerat non cupiditate nulla inventore laudantium itaque ea excepturi nam voluptates voluptatem eos magni ut exercitationem autem corrupti ratione nesciunt et eius rerum quia minima ut est repudiandae molestiae rem asperiores reiciendis saepe cumque non.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(50, '9795523355959', 'Ab omnis et blanditiis beatae autem.', 1995, 'https://via.placeholder.com/400x600.png/00ff33?text=books+molestiae', 80, 'Eveniet unde quis voluptatem nihil atque provident quidem rerum omnis magni distinctio voluptatem est ducimus aut nobis doloribus possimus iusto reprehenderit vitae aut nam inventore accusamus qui qui facere quia tempora sit totam et ea voluptatem tempore sit et voluptatibus ut.', '2021-11-11 18:48:43', '2021-11-11 18:48:43');

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
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 4, 10),
(11, 4, 11),
(12, 4, 12),
(13, 5, 13),
(14, 5, 14),
(15, 5, 15),
(16, 6, 16),
(17, 6, 17),
(18, 6, 18),
(19, 7, 19),
(20, 7, 20),
(21, 7, 21),
(22, 8, 22),
(23, 8, 23),
(24, 8, 24),
(25, 9, 25),
(26, 9, 26),
(27, 9, 27),
(28, 10, 28),
(29, 10, 29),
(30, 10, 30),
(31, 11, 31),
(32, 11, 32),
(33, 11, 33),
(34, 12, 34),
(35, 12, 35),
(36, 12, 36),
(37, 13, 37),
(38, 13, 38),
(39, 13, 39),
(40, 14, 40),
(41, 14, 41),
(42, 14, 42),
(43, 15, 43),
(44, 15, 44),
(45, 15, 45),
(46, 16, 46),
(47, 16, 47),
(48, 16, 48),
(49, 17, 49),
(50, 17, 50),
(51, 17, 51),
(52, 18, 52),
(53, 18, 53),
(54, 18, 54),
(55, 19, 55),
(56, 19, 56),
(57, 19, 57),
(58, 20, 58),
(59, 20, 59),
(60, 20, 60),
(61, 21, 61),
(62, 21, 62),
(63, 21, 63),
(64, 22, 64),
(65, 22, 65),
(66, 22, 66),
(67, 23, 67),
(68, 23, 68),
(69, 23, 69),
(70, 24, 70),
(71, 24, 71),
(72, 24, 72),
(73, 25, 73),
(74, 25, 74),
(75, 25, 75),
(76, 26, 76),
(77, 26, 77),
(78, 26, 78),
(79, 27, 79),
(80, 27, 80),
(81, 27, 81),
(82, 28, 82),
(83, 28, 83),
(84, 28, 84),
(85, 29, 85),
(86, 29, 86),
(87, 29, 87),
(88, 30, 88),
(89, 30, 89),
(90, 30, 90),
(91, 31, 91),
(92, 31, 92),
(93, 31, 93),
(94, 32, 94),
(95, 32, 95),
(96, 32, 96),
(97, 33, 97),
(98, 33, 98),
(99, 33, 99),
(100, 34, 100),
(101, 34, 101),
(102, 34, 102),
(103, 35, 103),
(104, 35, 104),
(105, 35, 105),
(106, 36, 106),
(107, 36, 107),
(108, 36, 108),
(109, 37, 109),
(110, 37, 110),
(111, 37, 111),
(112, 38, 112),
(113, 38, 113),
(114, 38, 114),
(115, 39, 115),
(116, 39, 116),
(117, 39, 117),
(118, 40, 118),
(119, 40, 119),
(120, 40, 120),
(121, 41, 121),
(122, 41, 122),
(123, 41, 123),
(124, 42, 124),
(125, 42, 125),
(126, 42, 126),
(127, 43, 127),
(128, 43, 128),
(129, 43, 129),
(130, 44, 130),
(131, 44, 131),
(132, 44, 132),
(133, 45, 133),
(134, 45, 134),
(135, 45, 135),
(136, 46, 136),
(137, 46, 137),
(138, 46, 138),
(139, 47, 139),
(140, 47, 140),
(141, 47, 141),
(142, 48, 142),
(143, 48, 143),
(144, 48, 144),
(145, 49, 145),
(146, 49, 146),
(147, 49, 147),
(148, 50, 148),
(149, 50, 149),
(150, 50, 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book_user`
--

CREATE TABLE `book_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reserve_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `due_date` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `book_user`
--

INSERT INTO `book_user` (`id`, `reserve_date`, `due_date`, `return_date`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, '2016-05-20 20:59:05', '2016-07-02 10:29:30', '2018-11-30 01:41:55', 1, 1, NULL, NULL),
(2, '2013-09-25 19:36:53', '2013-11-29 09:43:49', '2018-05-03 00:38:33', 1, 2, NULL, NULL),
(3, '2018-12-23 07:39:38', '2019-01-04 00:32:15', '2020-01-09 16:30:36', 1, 3, NULL, NULL),
(4, '2020-02-29 08:33:22', '2020-04-29 04:31:05', '2020-06-18 22:22:13', 1, 4, NULL, NULL),
(5, '2018-06-01 00:15:00', '2018-08-31 12:11:23', '2018-08-10 14:29:45', 2, 1, NULL, NULL),
(6, '2018-03-14 19:42:45', '2018-04-17 11:27:43', '2020-06-01 20:41:43', 2, 2, NULL, NULL),
(7, '2020-12-05 15:28:15', '2021-02-07 22:31:55', '2021-09-09 07:35:10', 2, 3, NULL, NULL),
(8, '2021-03-05 18:20:31', '2021-05-04 08:13:13', '2021-10-08 22:36:05', 2, 4, NULL, NULL),
(9, '2021-07-16 17:06:33', '2021-10-11 13:10:22', '2021-10-23 17:40:53', 3, 4, NULL, NULL),
(10, '2011-12-29 12:23:15', '2012-03-21 05:10:17', '2014-07-09 06:37:20', 3, 5, NULL, NULL),
(11, '2020-06-27 04:37:36', '2020-09-24 19:48:52', '2021-05-12 00:29:33', 3, 6, NULL, NULL),
(12, '2019-11-18 11:09:02', '2020-01-17 21:52:31', '2021-07-31 22:17:58', 3, 7, NULL, NULL),
(13, '2019-07-06 03:43:57', '2019-09-12 09:18:19', '2021-06-05 03:47:02', 4, 1, NULL, NULL),
(14, '2014-10-26 21:47:14', '2014-11-08 05:08:09', '2015-09-22 01:34:58', 4, 2, NULL, NULL),
(15, '2021-11-06 21:53:42', '2021-12-20 04:33:19', '2021-11-07 15:46:24', 4, 4, NULL, NULL),
(16, '2019-04-05 03:59:49', '2019-05-13 07:41:10', '2019-04-16 03:37:57', 4, 6, NULL, NULL),
(17, '2011-12-01 15:56:16', '2012-01-01 22:32:09', '2014-07-02 20:46:26', 5, 1, NULL, NULL),
(18, '2013-12-28 16:07:31', '2014-04-07 11:05:40', '2018-05-11 12:24:30', 5, 2, NULL, NULL),
(19, '2021-07-07 09:03:34', '2021-07-08 05:29:42', '2021-09-07 04:31:03', 5, 3, NULL, NULL),
(20, '2014-12-31 22:03:00', '2015-01-20 15:09:41', '2016-09-01 05:38:37', 5, 4, NULL, NULL),
(21, '2013-03-06 06:33:56', '2013-05-12 00:11:29', '2018-06-12 17:04:54', 6, 1, NULL, NULL),
(22, '2013-09-17 11:39:38', '2013-11-15 03:46:59', NULL, 6, 2, NULL, NULL),
(23, '2014-06-21 20:11:08', '2014-07-16 01:13:22', '2018-04-10 23:22:37', 6, 4, NULL, NULL),
(24, '2012-01-24 17:39:08', '2012-02-24 05:30:21', '2019-02-28 17:17:07', 6, 5, NULL, NULL),
(25, '2018-02-09 11:54:03', '2018-03-09 14:46:35', '2020-12-26 08:34:27', 7, 2, NULL, NULL),
(26, '2020-09-26 09:16:27', '2020-10-31 21:40:57', '2020-09-26 17:04:35', 7, 3, NULL, NULL),
(27, '2016-05-25 18:43:32', '2016-06-22 07:07:50', NULL, 7, 4, NULL, NULL),
(28, '2012-10-10 09:45:41', '2013-01-14 03:49:59', '2020-08-08 19:51:22', 7, 8, NULL, NULL),
(29, '2013-11-04 21:54:14', '2013-11-23 00:40:15', '2019-10-17 08:35:00', 8, 2, NULL, NULL),
(30, '2012-10-17 11:11:37', '2012-12-20 17:54:38', '2019-02-02 02:31:40', 8, 3, NULL, NULL),
(31, '2017-01-23 02:46:17', '2017-04-14 09:49:03', '2020-07-20 07:10:54', 8, 5, NULL, NULL),
(32, '2016-07-20 02:36:59', '2016-10-17 14:36:20', '2017-03-08 01:19:13', 8, 6, NULL, NULL),
(33, '2020-10-23 12:02:11', '2020-11-29 06:52:05', '2021-07-10 08:57:56', 9, 1, NULL, NULL),
(34, '2015-06-05 09:51:30', '2015-09-11 08:30:58', '2019-08-05 07:20:57', 9, 2, NULL, NULL),
(35, '2021-02-24 13:51:44', '2021-03-25 14:35:51', '2021-07-31 12:27:50', 9, 3, NULL, NULL),
(36, '2014-06-21 04:18:02', '2014-07-12 21:08:11', '2020-12-01 01:04:34', 9, 4, NULL, NULL),
(37, '2012-12-23 10:13:32', '2013-01-31 09:59:28', '2016-07-19 16:39:27', 10, 1, NULL, NULL),
(38, '2018-10-10 19:20:29', '2018-10-12 21:13:28', '2020-10-18 22:42:43', 10, 2, NULL, NULL),
(39, '2020-10-15 01:00:13', '2021-01-06 11:09:11', '2021-09-27 10:09:15', 10, 4, NULL, NULL),
(40, '2014-11-10 14:21:38', '2015-02-12 13:16:49', '2018-07-29 20:15:01', 10, 6, NULL, NULL),
(41, '2020-10-03 00:32:32', '2020-12-27 16:46:42', NULL, 11, 2, NULL, NULL),
(42, '2015-08-25 17:20:25', '2015-10-25 02:09:39', '2016-02-01 04:01:50', 11, 3, NULL, NULL),
(43, '2013-10-04 19:00:17', '2013-12-22 16:24:49', '2015-08-30 23:48:47', 11, 4, NULL, NULL),
(44, '2012-07-09 12:55:10', '2012-08-04 09:54:14', '2017-02-17 03:45:50', 11, 5, NULL, NULL),
(45, '2016-12-15 17:17:02', '2017-02-12 18:39:11', '2019-05-07 05:42:06', 12, 1, NULL, NULL),
(46, '2013-04-05 21:27:05', '2013-06-06 19:21:25', '2014-11-02 11:58:43', 12, 2, NULL, NULL),
(47, '2017-12-29 10:52:43', '2018-04-03 10:57:27', NULL, 12, 3, NULL, NULL),
(48, '2016-03-29 10:02:17', '2016-06-21 20:22:59', '2020-09-29 09:51:46', 12, 4, NULL, NULL),
(49, '2017-08-13 23:56:39', '2017-08-18 00:40:46', NULL, 13, 1, NULL, NULL),
(50, '2015-06-26 15:03:39', '2015-09-01 09:42:29', NULL, 13, 2, NULL, NULL),
(51, '2016-10-22 05:57:24', '2017-01-05 03:42:42', '2020-09-01 23:59:06', 13, 3, NULL, NULL),
(52, '2021-09-05 15:58:55', '2021-10-05 15:06:04', '2021-11-08 23:38:45', 13, 4, NULL, NULL),
(53, '2016-01-25 20:08:56', '2016-04-05 01:53:50', NULL, 14, 2, NULL, NULL),
(54, '2021-06-25 16:28:47', '2021-09-04 05:56:17', '2021-08-05 01:39:07', 14, 3, NULL, NULL),
(55, '2011-12-13 22:47:53', '2012-03-11 01:02:27', '2012-04-11 06:24:02', 14, 7, NULL, NULL),
(56, '2015-06-19 19:47:37', '2015-09-13 10:37:17', '2016-10-21 12:05:23', 14, 8, NULL, NULL),
(57, '2017-03-21 00:17:39', '2017-06-11 17:47:37', '2019-11-06 08:33:25', 15, 1, NULL, NULL),
(58, '2012-06-24 08:39:07', '2012-07-23 03:05:00', '2019-01-26 13:30:52', 15, 3, NULL, NULL),
(59, '2014-02-27 06:15:49', '2014-04-17 02:20:00', '2020-04-12 22:39:27', 15, 5, NULL, NULL),
(60, '2018-12-11 12:19:39', '2019-01-11 14:36:45', '2020-01-07 16:37:19', 15, 6, NULL, NULL),
(61, '2019-12-26 08:42:46', '2020-02-10 22:22:15', NULL, 16, 1, NULL, NULL),
(62, '2019-04-20 15:28:30', '2019-05-28 15:59:20', '2019-11-21 00:55:32', 16, 2, NULL, NULL),
(63, '2021-11-08 00:29:00', '2022-01-13 02:45:46', '2021-11-10 23:01:25', 16, 3, NULL, NULL),
(64, '2012-09-28 19:33:04', '2012-11-11 02:16:31', NULL, 16, 4, NULL, NULL),
(65, '2019-09-02 11:58:32', '2019-11-15 03:14:55', '2020-04-17 05:36:48', 17, 1, NULL, NULL),
(66, '2012-08-19 01:55:14', '2012-08-27 10:05:33', '2021-03-04 19:09:11', 17, 3, NULL, NULL),
(67, '2015-04-30 13:49:38', '2015-05-11 11:41:53', '2020-01-06 00:36:11', 17, 4, NULL, NULL),
(68, '2015-06-15 12:27:16', '2015-08-06 11:21:51', '2021-03-03 09:05:18', 17, 5, NULL, NULL),
(69, '2021-05-21 19:23:36', '2021-08-28 09:46:13', '2021-06-26 11:22:18', 18, 1, NULL, NULL),
(70, '2014-10-21 09:09:32', '2014-12-11 00:24:51', '2021-03-05 07:15:51', 18, 2, NULL, NULL),
(71, '2012-06-24 18:04:27', '2012-07-06 02:55:47', NULL, 18, 3, NULL, NULL),
(72, '2015-01-23 18:43:00', '2015-04-25 16:16:26', NULL, 18, 4, NULL, NULL),
(73, '2021-01-24 16:12:20', '2021-03-18 06:58:23', '2021-07-25 05:26:57', 19, 2, NULL, NULL),
(74, '2017-05-17 13:32:00', '2017-07-25 17:39:48', '2021-01-22 12:00:15', 19, 3, NULL, NULL),
(75, '2018-05-06 10:20:54', '2018-06-20 13:10:11', '2021-01-03 12:53:47', 19, 6, NULL, NULL),
(76, '2017-09-27 21:09:54', '2017-10-01 00:36:00', '2021-03-06 10:27:44', 19, 7, NULL, NULL),
(77, '2020-06-28 01:01:05', '2020-09-12 21:52:26', '2021-07-22 01:48:44', 20, 2, NULL, NULL),
(78, '2016-02-05 23:13:36', '2016-04-29 08:18:51', '2019-01-27 23:12:06', 20, 3, NULL, NULL),
(79, '2021-03-31 18:41:36', '2021-06-25 02:12:39', '2021-07-09 09:18:33', 20, 6, NULL, NULL),
(80, '2017-07-17 07:28:45', '2017-10-17 23:40:55', '2020-10-24 10:35:30', 20, 9, NULL, NULL),
(81, '2015-12-16 12:58:01', '2016-03-07 13:05:30', '2018-11-25 09:29:02', 21, 1, NULL, NULL),
(82, '2015-03-06 04:58:27', '2015-03-25 12:10:11', '2016-06-21 22:34:44', 21, 2, NULL, NULL),
(83, '2019-04-30 17:05:18', '2019-05-14 14:23:01', '2021-07-28 15:02:47', 21, 3, NULL, NULL),
(84, '2014-12-18 19:05:21', '2014-12-29 00:05:21', '2018-10-19 14:22:08', 21, 4, NULL, NULL),
(85, '2021-02-16 04:20:50', '2021-04-07 16:44:06', '2021-04-16 00:14:56', 22, 2, NULL, NULL),
(86, '2014-06-06 05:06:30', '2014-08-02 04:46:43', '2020-02-21 10:18:00', 22, 3, NULL, NULL),
(87, '2017-11-18 16:25:08', '2017-12-10 08:46:24', '2020-03-02 18:57:12', 22, 4, NULL, NULL),
(88, '2017-07-07 13:43:21', '2017-07-26 14:35:40', '2021-01-24 11:19:02', 22, 5, NULL, NULL),
(89, '2018-09-11 23:29:33', '2018-11-06 18:03:16', '2020-05-28 20:47:31', 23, 1, NULL, NULL),
(90, '2020-02-08 01:00:53', '2020-04-30 06:51:11', '2020-02-13 07:26:43', 23, 2, NULL, NULL),
(91, '2019-01-05 17:16:28', '2019-02-26 00:40:04', '2020-09-26 17:30:50', 23, 3, NULL, NULL),
(92, '2018-04-01 10:03:53', '2018-04-20 01:25:30', '2021-10-13 16:42:18', 23, 6, NULL, NULL),
(93, '2020-07-11 22:01:32', '2020-09-19 02:50:03', '2020-09-30 04:28:38', 24, 1, NULL, NULL),
(94, '2020-12-28 12:51:49', '2021-01-21 13:29:59', '2021-10-08 00:02:43', 24, 3, NULL, NULL),
(95, '2021-05-30 12:55:00', '2021-08-28 16:24:59', '2021-06-08 11:21:57', 24, 4, NULL, NULL),
(96, '2014-07-14 23:49:51', '2014-09-24 02:58:24', '2018-07-25 18:03:31', 24, 6, NULL, NULL),
(97, '2019-11-08 18:17:00', '2019-11-29 00:54:53', '2020-10-25 23:55:47', 25, 1, NULL, NULL),
(98, '2013-04-06 05:07:33', '2013-07-06 14:36:03', '2017-02-24 22:41:47', 25, 2, NULL, NULL),
(99, '2015-02-01 00:40:14', '2015-03-30 22:25:19', '2015-07-20 00:22:13', 25, 4, NULL, NULL),
(100, '2018-10-26 03:41:38', '2018-11-03 17:07:45', '2021-05-02 14:27:11', 25, 5, NULL, NULL),
(101, '2016-06-24 13:19:13', '2016-09-29 23:03:58', '2019-07-25 09:09:14', 26, 1, NULL, NULL),
(102, '2014-03-02 23:11:27', '2014-05-29 20:37:06', '2020-09-24 16:52:15', 26, 3, NULL, NULL),
(103, '2016-05-04 00:42:36', '2016-07-13 16:16:10', '2020-08-08 18:25:22', 26, 5, NULL, NULL),
(104, '2015-03-31 13:51:37', '2015-05-03 20:24:32', '2019-07-05 14:46:43', 26, 6, NULL, NULL),
(105, '2021-09-27 03:08:22', '2021-11-26 20:11:56', '2021-11-06 16:36:13', 27, 2, NULL, NULL),
(106, '2018-10-28 17:31:35', '2018-11-04 14:30:06', '2019-08-09 10:56:21', 27, 3, NULL, NULL),
(107, '2012-11-01 01:43:39', '2013-01-23 19:54:16', '2020-06-22 20:29:16', 27, 4, NULL, NULL),
(108, '2012-04-17 08:16:29', '2012-07-19 16:20:16', '2018-01-11 10:00:32', 27, 7, NULL, NULL),
(109, '2021-03-18 15:15:50', '2021-05-28 12:29:08', '2021-11-05 19:48:22', 28, 1, NULL, NULL),
(110, '2020-03-03 23:30:34', '2020-05-12 20:09:13', '2020-07-27 23:04:21', 28, 2, NULL, NULL),
(111, '2019-04-08 01:44:33', '2019-05-19 05:16:01', '2021-07-07 19:59:10', 28, 4, NULL, NULL),
(112, '2013-05-23 06:50:17', '2013-07-24 08:58:20', '2015-01-11 01:29:24', 28, 6, NULL, NULL),
(113, '2016-01-15 16:32:48', '2016-04-17 22:21:25', '2021-01-22 13:57:40', 29, 1, NULL, NULL),
(114, '2021-02-03 19:30:49', '2021-04-10 15:43:37', NULL, 29, 2, NULL, NULL),
(115, '2020-02-08 04:56:41', '2020-04-17 01:32:49', NULL, 29, 3, NULL, NULL),
(116, '2012-09-13 23:22:35', '2012-10-14 15:53:02', NULL, 29, 4, NULL, NULL),
(117, '2020-06-05 02:59:47', '2020-06-20 07:24:05', '2020-12-01 21:49:18', 30, 1, NULL, NULL),
(118, '2020-05-17 12:29:55', '2020-05-26 12:01:47', '2021-05-25 01:14:50', 30, 2, NULL, NULL),
(119, '2012-01-07 09:57:15', '2012-01-08 04:26:16', '2019-02-04 14:00:35', 30, 3, NULL, NULL),
(120, '2013-06-18 16:17:05', '2013-09-18 04:09:27', '2020-07-16 22:54:16', 30, 4, NULL, NULL),
(121, '2012-11-20 04:48:05', '2012-12-15 12:03:26', '2019-03-16 05:39:41', 31, 1, NULL, NULL),
(122, '2021-11-05 23:46:09', '2022-01-02 21:04:13', '2021-11-10 13:24:16', 31, 2, NULL, NULL),
(123, '2013-09-03 07:33:04', '2013-12-07 11:26:56', '2016-09-15 04:07:11', 31, 4, NULL, NULL),
(124, '2013-08-16 08:07:47', '2013-11-13 22:27:48', '2016-03-21 16:54:08', 31, 5, NULL, NULL),
(125, '2019-12-29 19:02:29', '2020-01-25 01:01:44', '2021-05-17 00:08:35', 32, 6, NULL, NULL),
(126, '2012-10-31 17:12:32', '2012-11-21 04:10:21', '2021-09-18 13:00:49', 32, 7, NULL, NULL),
(127, '2021-08-06 15:55:18', '2021-09-15 14:32:41', '2021-08-11 02:53:28', 32, 8, NULL, NULL),
(128, '2020-06-23 21:19:30', '2020-08-19 19:05:27', '2021-04-09 19:32:03', 32, 9, NULL, NULL),
(129, '2015-03-20 08:03:43', '2015-05-18 18:43:22', '2017-02-11 01:23:47', 33, 5, NULL, NULL),
(130, '2018-11-21 18:27:50', '2019-02-11 09:11:12', '2020-11-09 03:35:25', 33, 6, NULL, NULL),
(131, '2021-04-01 03:10:24', '2021-05-31 14:39:30', '2021-05-17 03:30:46', 33, 7, NULL, NULL),
(132, '2020-04-14 21:49:46', '2020-07-19 11:58:17', '2020-08-30 01:38:03', 33, 9, NULL, NULL),
(133, '2013-01-27 22:13:41', '2013-04-13 04:06:21', '2019-08-23 13:49:56', 34, 3, NULL, NULL),
(134, '2019-03-03 21:24:29', '2019-04-30 12:37:31', '2021-04-10 09:37:27', 34, 4, NULL, NULL),
(135, '2021-10-02 00:01:15', '2021-10-05 04:36:43', NULL, 34, 5, NULL, NULL),
(136, '2020-07-24 17:30:20', '2020-08-01 05:03:30', '2020-10-19 16:35:24', 34, 6, NULL, NULL),
(137, '2015-07-18 00:32:13', '2015-07-19 13:18:38', '2018-08-01 17:47:07', 35, 1, NULL, NULL),
(138, '2012-06-07 07:56:17', '2012-06-27 21:40:53', '2014-01-03 07:17:24', 35, 4, NULL, NULL),
(139, '2020-02-09 02:55:33', '2020-02-22 01:58:29', '2020-04-15 13:12:21', 35, 5, NULL, NULL),
(140, '2016-04-13 19:51:38', '2016-04-24 21:16:38', '2020-05-29 07:00:04', 35, 6, NULL, NULL),
(141, '2013-06-14 07:24:46', '2013-08-26 01:29:19', '2013-10-14 11:46:44', 36, 2, NULL, NULL),
(142, '2012-07-15 20:30:26', '2012-09-17 04:17:25', NULL, 36, 3, NULL, NULL),
(143, '2021-02-02 01:47:28', '2021-05-04 13:05:58', '2021-08-06 19:20:13', 36, 4, NULL, NULL),
(144, '2015-02-21 00:40:40', '2015-04-21 01:05:44', '2019-08-30 12:03:30', 36, 5, NULL, NULL),
(145, '2018-07-22 08:39:25', '2018-10-23 17:09:38', '2020-04-06 11:53:27', 37, 1, NULL, NULL),
(146, '2012-10-23 08:50:25', '2012-12-02 09:05:02', '2015-07-16 06:29:38', 37, 3, NULL, NULL),
(147, '2020-01-08 22:26:36', '2020-03-20 05:31:47', '2021-03-03 08:33:36', 37, 5, NULL, NULL),
(148, '2021-01-27 16:56:59', '2021-01-29 12:01:28', '2021-09-10 10:36:20', 37, 10, NULL, NULL),
(149, '2021-01-11 19:25:33', '2021-02-07 12:23:27', '2021-09-18 04:53:36', 38, 3, NULL, NULL),
(150, '2019-09-07 04:33:30', '2019-11-28 08:12:06', '2021-05-11 11:11:00', 38, 4, NULL, NULL),
(151, '2014-04-04 10:57:10', '2014-05-20 10:34:09', NULL, 38, 6, NULL, NULL),
(152, '2021-01-20 19:01:50', '2021-03-23 01:30:14', '2021-05-23 06:55:09', 38, 7, NULL, NULL),
(153, '2011-12-11 06:15:45', '2012-01-30 04:46:20', '2014-12-15 11:04:54', 39, 1, NULL, NULL),
(154, '2018-12-15 23:18:19', '2019-01-16 02:03:47', '2019-07-11 16:49:20', 39, 3, NULL, NULL),
(155, '2019-09-09 00:56:29', '2019-11-11 07:27:30', NULL, 39, 4, NULL, NULL),
(156, '2014-08-28 09:06:14', '2014-09-20 00:54:23', '2016-02-18 05:55:53', 39, 5, NULL, NULL),
(157, '2013-10-26 13:51:55', '2014-01-21 01:29:46', '2018-01-01 13:41:53', 40, 2, NULL, NULL),
(158, '2012-11-25 15:37:53', '2012-11-25 16:52:36', '2017-05-04 23:48:45', 40, 3, NULL, NULL),
(159, '2020-11-26 05:10:55', '2021-03-05 06:49:41', '2021-04-10 22:24:25', 40, 4, NULL, NULL),
(160, '2016-05-20 23:04:28', '2016-06-02 17:44:25', '2019-05-06 10:42:04', 40, 6, NULL, NULL),
(161, '2015-06-15 07:53:44', '2015-06-25 22:38:11', '2015-11-19 13:44:29', 41, 1, NULL, NULL),
(162, '2016-10-05 13:20:08', '2016-11-21 16:32:58', '2017-11-05 08:53:18', 41, 3, NULL, NULL),
(163, '2016-02-03 23:54:25', '2016-02-06 20:06:33', '2016-06-26 05:20:50', 41, 4, NULL, NULL),
(164, '2019-12-13 17:43:23', '2020-01-31 05:16:00', '2020-12-08 19:36:10', 41, 5, NULL, NULL),
(165, '2020-02-24 09:29:53', '2020-02-29 20:33:59', NULL, 42, 1, NULL, NULL),
(166, '2013-08-29 12:27:04', '2013-11-25 04:13:45', '2016-12-09 21:51:15', 42, 2, NULL, NULL),
(167, '2019-02-20 00:37:54', '2019-03-25 11:48:27', '2019-06-21 12:24:32', 42, 4, NULL, NULL),
(168, '2017-12-26 09:08:50', '2018-01-25 12:03:29', '2020-08-23 11:01:02', 42, 5, NULL, NULL),
(169, '2018-02-05 13:46:49', '2018-05-06 16:08:19', '2019-08-28 13:56:14', 43, 1, NULL, NULL),
(170, '2017-08-31 11:17:58', '2017-11-20 15:47:05', '2018-06-25 19:34:20', 43, 4, NULL, NULL),
(171, '2015-06-20 20:08:41', '2015-09-17 00:49:09', '2020-09-12 15:08:17', 43, 5, NULL, NULL),
(172, '2017-09-14 20:58:51', '2017-11-28 15:15:19', '2021-07-08 14:51:00', 43, 7, NULL, NULL),
(173, '2015-12-25 23:11:10', '2015-12-30 16:03:19', '2020-01-09 19:11:13', 44, 1, NULL, NULL),
(174, '2013-07-12 06:37:40', '2013-09-09 15:06:38', '2020-12-07 02:27:15', 44, 3, NULL, NULL),
(175, '2012-10-16 18:30:19', '2013-01-09 16:47:07', '2018-10-26 09:05:49', 44, 4, NULL, NULL),
(176, '2012-02-26 11:20:43', '2012-02-26 20:57:04', '2017-09-13 15:57:09', 44, 5, NULL, NULL),
(177, '2017-11-04 20:42:00', '2018-01-04 09:55:49', '2019-07-23 17:53:28', 45, 1, NULL, NULL),
(178, '2016-06-03 22:04:07', '2016-06-29 23:07:00', '2020-01-16 17:55:34', 45, 2, NULL, NULL),
(179, '2015-02-09 15:49:03', '2015-02-17 18:29:57', '2016-04-01 22:12:51', 45, 3, NULL, NULL),
(180, '2020-04-13 17:53:06', '2020-04-29 23:49:59', '2020-08-23 16:40:58', 45, 4, NULL, NULL),
(181, '2013-04-03 11:14:25', '2013-04-19 05:46:49', '2019-03-18 00:38:13', 46, 1, NULL, NULL),
(182, '2017-02-03 08:55:04', '2017-02-04 20:09:29', '2017-03-02 16:08:24', 46, 2, NULL, NULL),
(183, '2012-08-14 23:35:07', '2012-09-07 11:31:22', '2017-11-12 22:19:38', 46, 3, NULL, NULL),
(184, '2013-06-12 14:45:31', '2013-08-31 00:37:28', '2019-02-07 00:41:23', 46, 4, NULL, NULL),
(185, '2014-12-13 19:51:26', '2014-12-14 21:07:54', '2020-07-06 19:47:42', 47, 1, NULL, NULL),
(186, '2015-02-28 02:52:12', '2015-03-15 20:29:42', '2017-05-31 00:45:51', 47, 2, NULL, NULL),
(187, '2018-07-20 21:30:23', '2018-10-12 14:35:01', '2020-09-18 09:13:43', 47, 6, NULL, NULL),
(188, '2020-04-07 15:04:20', '2020-07-15 00:15:22', '2020-10-25 20:11:42', 47, 7, NULL, NULL),
(189, '2020-11-29 09:00:40', '2020-12-25 18:11:09', '2020-12-18 17:18:05', 48, 2, NULL, NULL),
(190, '2017-08-11 19:22:56', '2017-10-09 15:17:04', '2019-07-29 00:36:06', 48, 3, NULL, NULL),
(191, '2018-07-19 15:08:02', '2018-08-06 14:25:39', '2019-11-22 02:18:49', 48, 4, NULL, NULL),
(192, '2015-07-25 07:03:47', '2015-08-29 02:29:52', '2015-10-07 04:47:26', 48, 7, NULL, NULL),
(193, '2019-02-08 18:05:39', '2019-05-03 01:41:21', NULL, 49, 1, NULL, NULL),
(194, '2018-04-14 15:34:52', '2018-04-15 19:21:23', NULL, 49, 2, NULL, NULL),
(195, '2013-05-09 21:47:44', '2013-08-05 21:55:20', '2016-03-14 14:38:22', 49, 3, NULL, NULL),
(196, '2012-11-27 18:54:50', '2012-12-07 09:55:19', '2016-11-30 04:45:24', 49, 5, NULL, NULL),
(197, '2015-11-29 08:18:29', '2016-02-13 10:43:41', '2016-04-04 14:47:19', 50, 1, NULL, NULL),
(198, '2017-02-21 19:04:49', '2017-05-15 20:05:42', '2018-10-08 08:42:43', 50, 2, NULL, NULL),
(199, '2017-09-21 11:04:30', '2017-09-29 03:38:35', '2021-07-02 23:18:24', 50, 3, NULL, NULL),
(200, '2016-08-16 00:45:50', '2016-10-01 08:40:12', '2019-02-28 12:02:56', 50, 4, NULL, NULL),
(201, '2014-01-07 04:08:28', '2014-01-11 12:54:11', '2021-07-25 06:38:33', 51, 2, NULL, NULL),
(202, '2015-07-16 05:32:18', '2015-10-07 04:44:38', '2017-03-14 03:02:55', 51, 4, NULL, NULL),
(203, '2017-09-14 23:53:41', '2017-10-12 13:53:54', '2021-06-20 17:45:06', 51, 5, NULL, NULL),
(204, '2017-12-08 11:50:44', '2018-03-14 02:29:43', '2020-06-16 01:32:58', 51, 6, NULL, NULL);

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
(1, 'Consequatur aspernatur.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(2, 'Sed error.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(3, 'Dolor sed.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(4, 'Molestiae consequuntur doloribus.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(5, 'Impedit debitis.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(6, 'Libero sunt.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(7, 'Cum aut.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(8, 'Maiores atque.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(9, 'Eaque delectus.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(10, 'At maxime mollitia.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(11, 'Tenetur minima.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(12, 'Consequuntur quos eum.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(13, 'Expedita in.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(14, 'Aliquid cumque.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(15, 'Inventore eveniet.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(16, 'Voluptates quisquam quia.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(17, 'Tempora tenetur.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(18, 'Veniam blanditiis non.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(19, 'Totam dolores veritatis.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(20, 'Libero culpa.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(21, 'Atque non optio.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(22, 'Id odio voluptatum.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(23, 'In nobis possimus.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(24, 'Deleniti eum exercitationem.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(25, 'Magni quasi aut.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(26, 'Velit exercitationem.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(27, 'Qui laudantium.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(28, 'In repudiandae temporibus.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(29, 'Ea et.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(30, 'Consequatur quas.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(31, 'Magni assumenda velit.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(32, 'Voluptatem autem.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(33, 'Est soluta.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(34, 'Incidunt sed ea.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(35, 'Vero voluptatem non.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(36, 'Maxime sed ut.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(37, 'Harum ipsa voluptate.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(38, 'Maiores quis.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(39, 'Alias qui quo.', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(40, 'Blanditiis voluptas harum.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(41, 'Perspiciatis impedit.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(42, 'Optio cum eos.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(43, 'Quia ut vitae.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(44, 'Reiciendis hic distinctio.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(45, 'Dicta necessitatibus.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(46, 'Ut qui sed.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(47, 'Repellat reprehenderit.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(48, 'Velit dolore.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(49, 'Optio cum quia.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(50, 'Officiis voluptas.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(51, 'Doloribus sit occaecati.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(52, 'Tenetur et.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(53, 'Velit itaque.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(54, 'Necessitatibus et.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(55, 'Mollitia neque est.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(56, 'Fugiat reprehenderit.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(57, 'Animi pariatur enim.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(58, 'Voluptas qui.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(59, 'Iure facere rerum.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(60, 'Voluptas unde.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(61, 'Fuga corporis sunt.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(62, 'Repellat commodi.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(63, 'Et officiis sunt.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(64, 'Dolores eum optio.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(65, 'Laboriosam qui ad.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(66, 'Eos natus accusamus.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(67, 'Non quia quaerat.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(68, 'Aut ipsum voluptas.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(69, 'Nisi occaecati dignissimos.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(70, 'Impedit id.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(71, 'Alias vero dignissimos.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(72, 'Commodi vel et.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(73, 'Omnis dolores quia.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(74, 'Voluptatem qui.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(75, 'Dolor unde impedit.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(76, 'Impedit molestiae voluptas.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(77, 'Perferendis facilis.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(78, 'Ducimus sunt non.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(79, 'Ea perferendis.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(80, 'Maiores numquam enim.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(81, 'Dolor quidem.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(82, 'Voluptatem ut modi.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(83, 'Aut eligendi.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(84, 'Culpa recusandae.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(85, 'Maiores blanditiis.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(86, 'Sint eos quas.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(87, 'Repellat consequatur ea.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(88, 'Est aut quo.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(89, 'Ea fugiat quod.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(90, 'Sunt mollitia reiciendis.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(91, 'Quasi dolor facere.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(92, 'Non architecto.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(93, 'Unde eos assumenda.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(94, 'Labore aut assumenda.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(95, 'Molestiae aliquam.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(96, 'Perferendis eveniet explicabo.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(97, 'Dolorem sit ut.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(98, 'Dolor facere.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(99, 'Tempore qui quia.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(100, 'Aut dolorum.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(101, 'Laboriosam repudiandae.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(102, 'Quia consequatur qui.', '2021-11-11 18:48:42', '2021-11-11 18:48:42'),
(103, 'Impedit esse.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(104, 'Et eos dolorum.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(105, 'Sint rerum.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(106, 'Ducimus blanditiis.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(107, 'In officia.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(108, 'Velit ea quas.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(109, 'Exercitationem eos consequatur.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(110, 'In dolores voluptatem.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(111, 'Aut eum similique.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(112, 'Cumque quaerat a.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(113, 'Dolorem atque asperiores.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(114, 'Corporis sunt aut.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(115, 'Maiores officia fugiat.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(116, 'Aut cupiditate.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(117, 'Quasi iste.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(118, 'Quaerat repellendus.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(119, 'Tempore asperiores voluptatibus.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(120, 'Ad repellat suscipit.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(121, 'Dolores tempora nihil.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(122, 'Velit ad vitae.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(123, 'Suscipit sequi.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(124, 'Ex impedit minus.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(125, 'Quos dolorem.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(126, 'Et nisi.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(127, 'Dolorum impedit eius.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(128, 'Rerum beatae dicta.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(129, 'Rem fuga blanditiis.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(130, 'Pariatur beatae qui.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(131, 'Numquam ipsa.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(132, 'Fugiat optio sint.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(133, 'Magni ut.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(134, 'Id aliquam dolore.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(135, 'Rerum sequi.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(136, 'Voluptatem pariatur aut.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(137, 'Aut eius.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(138, 'Eum velit fugiat.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(139, 'Quia et sed.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(140, 'Distinctio ad.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(141, 'Porro eligendi.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(142, 'Hic quidem provident.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(143, 'Dolorem quaerat asperiores.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(144, 'Cumque provident quam.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(145, 'Possimus dolores.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(146, 'Labore adipisci.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(147, 'Aut esse et.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(148, 'Minima repellat.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(149, 'Sunt necessitatibus in.', '2021-11-11 18:48:43', '2021-11-11 18:48:43'),
(150, 'Sunt sapiente laboriosam.', '2021-11-11 18:48:43', '2021-11-11 18:48:43');

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
(11, '2021_11_08_222327_create_navbars_table', 1),
(12, '2021_11_10_232328_create_book_user_table', 1);

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
(1, 'Home', 'home', 1, '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(2, 'Books', 'book.index', 2, '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(3, 'Authors', 'author.index', 3, '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(4, 'Categories', 'category.index', 3, '2021-11-11 18:48:40', '2021-11-11 18:48:40');

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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Hickle Ltd', '85975 Carroll Hills Suite 907\nSummerstad, IA 41488', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(2, 'Schamberger, Reinger and Bruen', '49610 Jameson Loop\nAdellmouth, WY 70457-7298', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(3, 'Wiza Inc', '99324 Jakubowski Mews\nSouth Mosestown, SD 95696', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(4, 'Bartoletti, O\'Connell and Kuvalis', '3269 Marks Track\nMagdalenville, RI 56998', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(5, 'Schultz Ltd', '8776 Towne Forest\nEast Hildegard, ND 99313-5362', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(6, 'Waelchi-Kunze', '4638 Jakubowski Road Suite 308\nClemmiehaven, IA 88689', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(7, 'Feil-Fritsch', '722 Jensen Lakes\nHarveyburgh, HI 63222', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(8, 'Schroeder-Schowalter', '8519 Anderson Crest\nNew Meghan, MO 70216', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(9, 'Jones-Durgan', '68336 Gulgowski Cliff Apt. 326\nJudechester, MA 90300-1660', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(10, 'Metz-Dicki', '994 King Valleys\nWest Jannieland, IL 87360', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(11, 'Swaniawski, Schmidt and Botsford', '1093 Emmitt Valley\nHarrisontown, WI 71839', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(12, 'Conroy, Hartmann and Roberts', '2657 Breitenberg Tunnel Suite 533\nLake Doris, ID 49330', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(13, 'Langworth-Tremblay', '836 Eli Street Suite 492\nRitchiemouth, MS 00752', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(14, 'Kuphal Ltd', '72620 Delfina Vista Suite 119\nSouth Kevonbury, ME 99491-8550', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(15, 'Leuschke, Hettinger and Spencer', '836 Roberta Village\nLake Chadrick, WV 17813-9802', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(16, 'Rutherford-Gutkowski', '4747 Roy Port Suite 489\nNorth Merrittmouth, ME 37407-3513', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(17, 'Hettinger-Ritchie', '2666 Anastasia Points\nLake Naomi, NE 40373', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(18, 'Carter-Hudson', '2510 Deja Trafficway Suite 551\nBorerbury, NJ 55289', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(19, 'Bechtelar-Welch', '76569 Reilly Loaf\nPort Janellehaven, MO 21954-1447', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(20, 'Gutmann PLC', '9271 DuBuque Junctions Suite 661\nEast Toneyside, ID 31733', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(21, 'Gutkowski-Klein', '69566 Bednar Squares Suite 912\nEast Reidhaven, WV 44426', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(22, 'Nicolas, Heathcote and Fay', '67799 Dale Wells Apt. 619\nNorth Layla, NM 16783-0761', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(23, 'Abshire LLC', '97575 Ervin Junctions Apt. 741\nNorth Danial, MT 77218', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(24, 'Quigley, Morar and Pouros', '64906 Bernier Street Apt. 402\nWest Alexandro, RI 10742', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(25, 'Kris-Goodwin', '12171 Meta Expressway Suite 242\nLake Evelyn, CO 92443', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(26, 'Cormier, Schroeder and Durgan', '777 Genoveva Divide Apt. 649\nSidton, CA 79826', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(27, 'Runolfsson-Nienow', '3141 Cartwright Glen\nHerminaberg, ME 96221', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(28, 'Sporer Ltd', '421 Schoen Forest Suite 011\nRavenville, CA 82982-3627', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(29, 'Kessler Inc', '771 Selena Flat\nWolffmouth, MO 25822', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(30, 'Emard, Crooks and Welch', '4046 Wuckert Dale Apt. 414\nSouth Elliotttown, CA 69538-7349', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(31, 'Dickens, O\'Connell and Torphy', '414 Erdman Forks\nWest Kelly, IA 27158-4003', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(32, 'Bahringer PLC', '783 Betsy Dale Apt. 615\nAltenwerthshire, WA 09645-7035', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(33, 'Watsica Inc', '867 Kunde Views Suite 956\nChasitybury, MA 32500-8440', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(34, 'Kris Ltd', '9079 Schowalter Cliff\nDickenstown, WI 83249-8691', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(35, 'Schiller Group', '536 Abshire Gardens\nEast Rheaport, MI 91204-2144', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(36, 'Ondricka, Conroy and D\'Amore', '14091 Gaylord Burgs\nNew Rosalind, VT 65318', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(37, 'Green-Hartmann', '67841 Volkman Trail\nBoyershire, FL 61702-0238', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(38, 'Schimmel, Walker and Rau', '76217 Jamar Estate Apt. 605\nSouth Camilla, CT 81397', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(39, 'Brakus and Sons', '9229 Matt Square Apt. 190\nGrimesburgh, ME 49697-8792', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(40, 'Franecki Group', '3108 Schaden Valleys Apt. 396\nOrtizburgh, OK 50712', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(41, 'Kuvalis-Dicki', '661 Baumbach Springs Apt. 241\nJuwanfort, ME 71242-7236', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(42, 'O\'Keefe-Bergstrom', '67838 Mante Expressway Suite 784\nNorth Sofia, AL 24329-8828', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(43, 'Gleichner Ltd', '405 Mozelle Motorway Apt. 852\nSchaeferchester, ND 98479', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(44, 'Murphy, Reinger and Wilderman', '1322 Romaguera Forges\nNorth Rowlandville, MO 92486', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(45, 'Sauer Inc', '9885 Funk Way\nMacside, ND 79917', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(46, 'Hudson Group', '46600 Camden Forge\nSouth Shanellechester, NV 55621', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(47, 'Krajcik-Feeney', '43988 White Springs\nHuelsborough, MT 80596', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(48, 'Turner Group', '635 Kerluke Plaza\nPort Ardithview, AR 04856', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(49, 'Littel and Sons', '40456 Ivy Spur Suite 552\nRollinfurt, MS 80601', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(50, 'Swaniawski-Batz', '77966 Effertz Shore Apt. 987\nNew Pedromouth, CA 24477', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(51, 'Doyle-Pagac', '5420 Kyler Alley\nMelvintown, MA 04865', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(52, 'Runte Ltd', '2558 Bashirian Turnpike Apt. 107\nRomagueraport, CT 82565', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(53, 'Little, Blanda and Nicolas', '36521 Gaylord Loop\nWest Elwinton, OK 40077-3009', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(54, 'Pagac Inc', '4713 Cyril Green Suite 459\nLake Catherine, AZ 20735-2166', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(55, 'Hayes, Cremin and Bednar', '36173 Genevieve Cliffs Apt. 968\nQuigleyberg, SD 44347-5465', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(56, 'Reinger, Schiller and Cartwright', '931 Vernice Vista\nCalistamouth, NC 27653', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(57, 'Fisher, Parker and Bednar', '4258 Christiansen Vista Suite 248\nSouth Sharon, SC 49813', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(58, 'Tillman, Feeney and Douglas', '17560 Walter Hollow\nMichaelaland, KS 10138', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(59, 'Okuneva, Bernhard and Connelly', '9350 Joy Summit\nProhaskaborough, DC 54730', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(60, 'Goyette Group', '41286 Hyatt Stream Apt. 187\nKaylinborough, FL 02151', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(61, 'King, Hand and Haag', '73350 Lemke Road Apt. 523\nNew Ludie, KS 04915', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(62, 'Littel-Lehner', '23576 Ayden Island\nLake Mariellehaven, WV 00830-8608', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(63, 'Ferry LLC', '93769 Reichel Mills\nPort Maureen, SC 30940', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(64, 'Ernser-Schmitt', '7188 Murphy Dale Apt. 182\nNorth Leonie, GA 38266-1544', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(65, 'Reichel PLC', '646 Creola Track Suite 570\nWest Raymundo, ME 89131-5376', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(66, 'Cummings, Nikolaus and Stroman', '5691 Lillie Row\nTaliastad, IN 76939-0185', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(67, 'Hartmann, Mante and Ruecker', '21031 Rempel Roads Suite 287\nLake Sigmundland, CT 68263-6331', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(68, 'Effertz, Runte and Kling', '294 Wendell Glen Apt. 299\nPort Mabel, FL 62020', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(69, 'Hegmann, Powlowski and Casper', '85064 Kallie Road Apt. 548\nSouth Frankmouth, NC 16342-2308', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(70, 'O\'Hara-Hammes', '29339 Brent Rue\nNorth Alexaton, LA 71745', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(71, 'Dach LLC', '205 Dale Forges Suite 690\nNew Jaydenbury, VA 38769-6615', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(72, 'Smitham, Gleason and Runolfsdottir', '704 Liam Throughway Suite 363\nSouth Archport, IA 80397', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(73, 'Kassulke-Marks', '2299 Frami Highway Apt. 265\nNorth Cayla, DC 58744-2373', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(74, 'Schamberger Inc', '57809 Roxane Hills\nNorth Laurianneland, OK 58804-7202', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(75, 'Jacobi Ltd', '89800 Gottlieb Village Apt. 102\nKunzeburgh, GA 00905', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(76, 'Boyle Inc', '8100 Tessie Creek Suite 263\nNorth Lisandro, CA 74598', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(77, 'Gutmann-Bayer', '879 Gregg Alley Suite 721\nLake Whitneystad, GA 16481-3420', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(78, 'Lang, Koss and Barrows', '2559 Vincenzo Track\nBlockhaven, IL 50845', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(79, 'Hoeger-Hamill', '101 Ronaldo Shore Suite 247\nEast Kiara, KY 80033-6004', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(80, 'Nader-Schaden', '37222 Nolan Forest Apt. 100\nPurdyfort, FL 71861', '2021-11-11 18:48:41', '2021-11-11 18:48:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Smith', 'admin@openlibrary.loc', '658741247', 'Avenida Ramón y Cajal, 55, Santa Cruz de Tenerife, Spain', NULL, '$2y$10$OfwACt7cPYv5InR1Ym9o9OzQpElNGBECqaiNy6L1OY1fyc7qqYP6K', NULL, NULL, NULL),
(2, 'Joel', 'Rahul', 'parker.fay@example.org', '+1-934-264-1855', '471 Crona Union Apt. 449\nNew Miloville, MN 76986-6036', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IpInfPpr46', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(3, 'Beverly', 'Phyllis', 'cristal23@example.net', '+1-240-827-2756', '8013 Antonia Ford Suite 803\nKennaville, NC 51059', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AmXgBZ85S0', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(4, 'Roscoe', 'Arthur', 'ksimonis@example.net', '+1 (754) 882-6581', '979 Columbus Shoal Apt. 736\nWest Gerry, IN 78253', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '35dJxKdXFs', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(5, 'Robb', 'Jamie', 'myrl.christiansen@example.com', '+17408887250', '752 Koss Unions\nTyrastad, AL 21920', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pJNC6LhLcM', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(6, 'Beth', 'Leatha', 'mark28@example.com', '+1-781-851-5696', '61484 Pollich Wall Apt. 703\nLake Vergieberg, TX 52170', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm2yR4tr8T2', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(7, 'Melyna', 'Napoleon', 'vandervort.chaim@example.net', '+1-801-544-6130', '7915 Fahey Ridge\nWest Keshaunstad, MI 22697', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XrZkWClHLv', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(8, 'August', 'Jaeden', 'wilfrid.kreiger@example.net', '1-931-328-3102', '45797 Krajcik Vista\nSchulistton, GA 74661', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CqwJmummYo', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(9, 'Faustino', 'Domingo', 'jasmin10@example.com', '406-984-7922', '9907 Kemmer Meadow Suite 323\nPort Francescaside, WI 90145-9902', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FNOr9x2HeY', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(10, 'Amiya', 'Rahsaan', 'brenna.schmidt@example.org', '+1.267.963.8331', '7621 Walker Locks Suite 268\nAlberthaburgh, NM 51580-8026', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xUEXkPUtK8', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(11, 'Wilson', 'Florida', 'nash00@example.org', '928-705-8212', '3993 Swaniawski Oval Suite 530\nAlecport, CA 90704', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NuIHHuZQwJ', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(12, 'Camilla', 'Kellen', 'fziemann@example.org', '628.614.2510', '383 Hailee Radial Suite 815\nEast Carloshaven, LA 34549', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E0Mg7tTtjg', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(13, 'Sherman', 'Tiara', 'joelle.grant@example.net', '+1.346.850.0640', '41270 Freeda Run Apt. 451\nPort Kirk, UT 71223', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VYB7AezsNl', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(14, 'Jaida', 'Millie', 'qtillman@example.net', '1-435-794-5615', '998 Konopelski Pike\nWest Edythtown, IN 60398-0879', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9iPtMSznaa', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(15, 'Ethan', 'Maximillia', 'sbradtke@example.com', '(319) 670-2476', '616 Borer Keys\nPeggietown, OR 13645', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yACUbqk4w9', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(16, 'Kristina', 'William', 'pascale.jacobi@example.org', '323.706.9979', '830 Harris Ranch Suite 840\nKalebport, ND 74527', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AGGA5oNxwE', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(17, 'Michael', 'Thelma', 'candida.tremblay@example.net', '352.908.3462', '5909 Edna Creek\nNew Ofeliahaven, MA 28679-3306', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '36yrDg8hJQ', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(18, 'Alfonso', 'Cynthia', 'thessel@example.org', '+1-364-804-3694', '3106 Schaefer Light Suite 666\nEast Dalton, HI 36902', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5YcMBqN3L2', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(19, 'Isabell', 'Loyce', 'oauer@example.org', '726-938-7219', '2152 Rempel Stravenue\nSchmidtfort, RI 32585-4511', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9mUM0R0Nvj', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(20, 'Eleanore', 'Kellie', 'hills.donnie@example.com', '+1.586.838.4351', '1246 Dorothy Knolls\nElfriedafurt, ND 60546-5830', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FOBUEftl7V', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(21, 'Gilda', 'Makayla', 'mueller.einar@example.com', '747-557-6472', '38152 Clementine Drive\nHagenesburgh, WY 51367', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'acJ0dRDoV6', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(22, 'Allie', 'Pink', 'lori28@example.net', '+1-818-894-7820', '37910 Clifton Lane\nEast Caleshire, WA 00169-4294', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vzzhWxFHmM', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(23, 'Abel', 'Kaci', 'kirlin.chaya@example.com', '(720) 683-3334', '11874 McCullough Circle Suite 150\nMaggiochester, ID 69256-2433', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ogIs0psIh2', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(24, 'Felipe', 'Caroline', 'leola.brown@example.com', '+1 (302) 254-5306', '77516 Blick Station\nLake Ilaside, GA 96748-0100', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3h1yr2Xxjp', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(25, 'Kian', 'Creola', 'oconner.kayli@example.net', '+1.205.751.8170', '3329 Seamus Plains\nLake Kenyonhaven, DC 53470-9195', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm4n86X2mSL', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(26, 'Abraham', 'Nya', 'nader.wellington@example.com', '+1 (646) 849-3283', '41973 Arno Mount\nLake Samantaport, MA 72669-8651', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VDlAluyQEL', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(27, 'Lamar', 'Andre', 'sporer.joseph@example.net', '1-469-801-5048', '18826 Baumbach Lane Apt. 954\nReichertchester, AZ 90091-0461', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BhlUVe9e3A', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(28, 'Horace', 'Owen', 'alaina.hagenes@example.org', '360.645.8768', '7944 Thiel Mountain Apt. 613\nEast Cordiabury, AL 98567-8084', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fxOao5L0Xk', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(29, 'Anya', 'Kaycee', 'stephany08@example.org', '+15208981206', '2820 Labadie Falls\nLake Joshuah, GA 01908-1488', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3lwyN0fk0d', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(30, 'Karianne', 'Antwon', 'reynolds.missouri@example.net', '(725) 773-9123', '10646 Kshlerin Views Suite 168\nKubtown, AK 09590', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fdc8K8l68j', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(31, 'Yadira', 'Brianne', 'kellie.becker@example.com', '(331) 627-3776', '5082 Furman Passage\nSouth Demarcusfort, OR 48276', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DPo7HF0WoZ', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(32, 'Burdette', 'Josiane', 'ikoelpin@example.org', '(930) 439-9718', '8466 Schmeler Ville Suite 218\nQuigleyton, MS 06097-3222', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Znl1GFHeJ1', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(33, 'Bertram', 'Kelly', 'santino33@example.net', '+1-330-285-3568', '368 Reyna Garden\nNorth Wyattton, LA 95385-1011', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VitJ9eAjgV', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(34, 'Trudie', 'Werner', 'tristin78@example.org', '469-234-4368', '66663 Douglas Vista\nEvalynhaven, TN 54944-3839', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '63nClfI9kd', '2021-11-11 18:48:40', '2021-11-11 18:48:40'),
(35, 'Travis', 'Chester', 'evans69@example.org', '1-337-696-1123', '5974 Okuneva Island\nWest Giles, MT 12279', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WV9Hb6HshL', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(36, 'Janick', 'Allie', 'uromaguera@example.com', '(770) 227-1185', '269 Zemlak Knolls\nLake Abraham, NJ 39777', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KPudnIpnjn', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(37, 'Brain', 'Pedro', 'collins.emil@example.net', '+1-253-568-6836', '130 Zoie Locks Apt. 888\nMittieshire, LA 10038-7582', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JyfyRj3keC', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(38, 'Kamille', 'Clarabelle', 'modesta.morar@example.org', '+13216966598', '172 Koepp Trail Apt. 908\nSouth Tremayne, AK 79715-9093', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mijhk4Tm5z', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(39, 'Lavon', 'Cyrus', 'florine.kemmer@example.org', '341.291.1468', '220 Wayne Park Suite 466\nNew Elouisefort, CT 41078', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FygDTBnXam', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(40, 'Birdie', 'Dixie', 'fadel.rosella@example.org', '+1 (567) 380-6853', '74550 Tromp Ports\nNew Sonny, SD 56925-0354', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LM0qtqnyrU', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(41, 'Darby', 'Kaden', 'wilma.conn@example.org', '+1-215-207-6341', '115 Green Club\nLake Laurelville, AZ 75997-3550', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FulHeWlq3q', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(42, 'Damion', 'Lilly', 'kelly87@example.org', '+1 (651) 641-7223', '671 Blaise Turnpike Apt. 462\nLake Tanyahaven, MN 01525', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6OMKczVRZQ', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(43, 'Veda', 'Isaac', 'iva.douglas@example.org', '+13367233827', '740 Estell Coves\nNew Lonzoton, ME 91316', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '11koKg1FfD', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(44, 'Julius', 'Nelson', 'okeefe.raul@example.net', '+1-331-594-0462', '77089 Koelpin Crossing\nPort Tevinmouth, SC 79870', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5SmtW7uC8r', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(45, 'Eldred', 'Jerel', 'green.conn@example.com', '(315) 603-8064', '383 Reynolds Lights Apt. 664\nCiarachester, FL 88103-3601', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hzdmq6reV0', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(46, 'Marielle', 'Tianna', 'cdicki@example.net', '424-890-2792', '2396 Georgianna Cape\nPort Jovani, VT 29716', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WXnQK9Pzcq', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(47, 'Zita', 'Drake', 'jdicki@example.com', '1-707-920-1193', '5368 Schneider Hill\nJovannymouth, KY 38363', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JAVcKDkjTV', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(48, 'Lizzie', 'Lucienne', 'dorcas.beahan@example.com', '605.971.2890', '58932 Stroman Glens\nEast Felton, NY 29510', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tf8k7Z9UvZ', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(49, 'Regan', 'Mae', 'rohan.heloise@example.org', '(770) 833-4052', '75214 Wunsch Forge Apt. 703\nOmaville, PA 56373-6571', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ebWRqTvp0T', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(50, 'Junius', 'Stuart', 'thaddeus41@example.net', '641-579-2026', '74748 Bergnaum Mews Suite 776\nNew Geovanyfort, OR 74472', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gnPGIfyNqK', '2021-11-11 18:48:41', '2021-11-11 18:48:41'),
(51, 'Carleton', 'Lewis', 'eden13@example.com', '+1 (636) 752-1184', '11097 Abagail Flat\nNorth Kobe, MO 09020', '2021-11-11 18:48:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FXJqlUuypz', '2021-11-11 18:48:41', '2021-11-11 18:48:41');

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
-- Indices de la tabla `book_user`
--
ALTER TABLE `book_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_user_book_id_foreign` (`book_id`),
  ADD KEY `book_user_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `author_book`
--
ALTER TABLE `author_book`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `book_user`
--
ALTER TABLE `book_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `navbars`
--
ALTER TABLE `navbars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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

--
-- Filtros para la tabla `book_user`
--
ALTER TABLE `book_user`
  ADD CONSTRAINT `book_user_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
