SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `status`) VALUES
(1, 'homero', 'simpson', 'hsimpson@adoclic.com', 'active'),
(2, 'marge', 'simpson', 'msimpson@adoclic.com', 'active'),
(3, 'bart', 'simpson', 'bsimpson@adoclic.com', 'active'),
(4, 'lisa', 'simpson', 'lsimpson@adoclic.com', 'inactive'),
(5, 'maggie', 'simpson', 'mgsimpson@adoclic.com', 'active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_stats`
--

CREATE TABLE `user_stats` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `conversions` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_stats`
--

INSERT INTO `user_stats` (`id`, `user_id`, `views`, `clicks`, `conversions`, `date`) VALUES
(1, 1, 386654, 68, 71, '2022-10-01 03:15:28'),
(2, 1, 487669, 507, 13, '2022-10-02 03:15:28'),
(3, 1, 593165, 317, 14, '2022-10-03 03:15:28'),
(4, 1, 811445, 749, 33, '2022-10-04 03:15:28'),
(5, 1, 883101, 356, 70, '2022-10-05 03:15:28'),
(6, 1, 493244, 876, 47, '2022-10-06 03:15:28'),
(7, 1, 309203, 829, 23, '2022-10-07 03:15:28'),
(8, 1, 967609, 459, 80, '2022-10-08 03:15:28'),
(9, 1, 931213, 701, 73, '2022-10-09 03:15:28'),
(10, 1, 508252, 952, 38, '2022-10-10 03:15:28'),
(11, 1, 147172, 413, 71, '2022-10-11 03:15:28'),
(12, 1, 508630, 551, 57, '2022-10-12 03:15:28'),
(13, 1, 858746, 682, 2, '2022-10-13 03:15:28'),
(14, 1, 523289, 318, 27, '2022-10-14 03:15:28'),
(15, 1, 981382, 596, 45, '2022-10-15 03:15:28'),
(16, 1, 505759, 952, 47, '2022-10-16 03:15:28'),
(17, 1, 818889, 463, 21, '2022-10-17 03:15:28'),
(18, 1, 206877, 170, 34, '2022-10-18 03:15:28'),
(19, 1, 107255, 947, 41, '2022-10-19 03:15:28'),
(20, 1, 983719, 141, 58, '2022-10-20 03:15:28'),
(21, 1, 194092, 535, 53, '2022-10-21 03:15:28'),
(22, 1, 176637, 915, 26, '2022-10-22 03:15:28'),
(23, 1, 129876, 451, 46, '2022-10-23 03:15:28'),
(24, 1, 957684, 473, 45, '2022-10-24 03:15:28'),
(25, 1, 713544, 967, 74, '2022-10-25 03:15:28'),
(26, 1, 928138, 856, 60, '2022-10-26 03:15:28'),
(27, 1, 523265, 347, 71, '2022-10-27 03:15:28'),
(28, 1, 96658, 560, 66, '2022-10-28 03:15:28'),
(29, 1, 639492, 709, 11, '2022-10-29 03:15:28'),
(30, 1, 784186, 566, 17, '2022-10-30 03:15:28'),
(31, 1, 267612, 385, 41, '2022-10-31 03:15:28'),
(32, 2, 370371, 329, 14, '2022-10-01 10:00:11'),
(33, 2, 370067, 574, 26, '2022-10-02 10:00:11'),
(34, 2, 773827, 244, 12, '2022-10-03 10:00:11'),
(35, 2, 958463, 756, 73, '2022-10-04 10:00:11'),
(36, 2, 850444, 954, 60, '2022-10-05 10:00:11'),
(37, 2, 307559, 524, 11, '2022-10-06 10:00:11'),
(38, 2, 893092, 494, 20, '2022-10-07 10:00:11'),
(39, 2, 256515, 967, 77, '2022-10-08 10:00:11'),
(40, 2, 22452, 906, 59, '2022-10-09 10:00:11'),
(41, 2, 64052, 849, 69, '2022-10-10 10:00:11'),
(42, 2, 975155, 266, 54, '2022-10-11 10:00:11'),
(43, 2, 999687, 716, 73, '2022-10-12 10:00:11'),
(44, 2, 296098, 836, 52, '2022-10-13 10:00:11'),
(45, 2, 990446, 168, 32, '2022-10-14 10:00:11'),
(46, 2, 183844, 688, 7, '2022-10-15 10:00:11'),
(47, 2, 682710, 650, 67, '2022-10-16 10:00:11'),
(48, 2, 881706, 422, 15, '2022-10-17 10:00:11'),
(49, 2, 598691, 936, 3, '2022-10-18 10:00:11'),
(50, 2, 777392, 107, 70, '2022-10-19 10:00:11'),
(51, 2, 736729, 216, 27, '2022-10-20 10:00:11'),
(52, 2, 415722, 517, 75, '2022-10-21 10:00:11'),
(53, 2, 494788, 145, 37, '2022-10-22 10:00:11'),
(54, 2, 788528, 595, 30, '2022-10-23 10:00:11'),
(55, 2, 570330, 987, 56, '2022-10-24 10:00:11'),
(56, 2, 99208, 371, 35, '2022-10-25 10:00:11'),
(57, 2, 905785, 692, 42, '2022-10-26 10:00:11'),
(58, 2, 847558, 483, 74, '2022-10-27 10:00:11'),
(59, 2, 925257, 700, 48, '2022-10-28 10:00:11'),
(60, 2, 957674, 209, 22, '2022-10-29 10:00:11'),
(61, 2, 6749, 876, 28, '2022-10-30 10:00:11'),
(62, 2, 810982, 93, 29, '2022-10-31 10:00:11'),
(63, 3, 491273, 473, 72, '2022-10-01 16:39:29'),
(64, 3, 240436, 315, 48, '2022-10-02 16:39:29'),
(65, 3, 845658, 775, 45, '2022-10-03 16:39:29'),
(66, 3, 557552, 692, 53, '2022-10-04 16:39:29'),
(67, 3, 861215, 450, 68, '2022-10-05 16:39:29'),
(68, 3, 639597, 902, 32, '2022-10-06 16:39:29'),
(69, 3, 694920, 801, 80, '2022-10-07 16:39:29'),
(70, 3, 831434, 593, 65, '2022-10-08 16:39:29'),
(71, 3, 544465, 758, 22, '2022-10-09 16:39:29'),
(72, 3, 961988, 905, 36, '2022-10-10 16:39:29'),
(73, 3, 856318, 225, 7, '2022-10-11 16:39:29'),
(74, 3, 982981, 752, 65, '2022-10-12 16:39:29'),
(75, 3, 260558, 845, 27, '2022-10-13 16:39:29'),
(76, 3, 745018, 950, 35, '2022-10-14 16:39:29'),
(78, 3, 847238, 822, 48, '2022-10-16 16:39:29'),
(79, 3, 439049, 536, 74, '2022-10-17 16:39:29'),
(80, 3, 489898, 626, 32, '2022-10-18 16:39:29'),
(81, 3, 170915, 58, 33, '2022-10-19 16:39:29'),
(82, 3, 695924, 866, 48, '2022-10-20 16:39:29'),
(83, 3, 946818, 106, 24, '2022-10-21 16:39:29'),
(84, 3, 148687, 503, 48, '2022-10-22 16:39:29'),
(85, 3, 601441, 785, 69, '2022-10-23 16:39:29'),
(86, 3, 862117, 523, 75, '2022-10-24 16:39:29'),
(87, 3, 199602, 805, 47, '2022-10-25 16:39:29'),
(88, 3, 605926, 58, 2, '2022-10-26 16:39:29'),
(89, 3, 680519, 81, 42, '2022-10-27 16:39:29'),
(90, 3, 339724, 547, 21, '2022-10-28 16:39:29'),
(91, 3, 199322, 615, 67, '2022-10-29 16:39:29'),
(92, 3, 813403, 260, 7, '2022-10-30 16:39:29'),
(93, 3, 341438, 547, 71, '2022-10-31 16:39:29'),
(94, 4, 976458, 919, 32, '2022-10-01 20:23:25'),
(95, 4, 697617, 938, 8, '2022-10-02 20:23:25'),
(96, 4, 832979, 491, 61, '2022-10-03 20:23:25'),
(97, 4, 562578, 376, 64, '2022-10-04 20:23:25'),
(98, 4, 666267, 988, 46, '2022-10-05 20:23:25'),
(99, 4, 928572, 375, 20, '2022-10-06 20:23:25'),
(100, 4, 389770, 162, 68, '2022-10-07 20:23:25'),
(101, 4, 394266, 980, 37, '2022-10-08 20:23:25'),
(102, 4, 791503, 346, 29, '2022-10-09 20:23:25'),
(103, 4, 640407, 942, 62, '2022-10-10 20:23:25'),
(104, 4, 614188, 981, 1, '2022-10-11 20:23:25'),
(105, 4, 886075, 871, 27, '2022-10-12 20:23:25'),
(106, 4, 422821, 890, 71, '2022-10-13 20:23:25'),
(107, 4, 933559, 263, 69, '2022-10-14 20:23:25'),
(108, 4, 947687, 955, 65, '2022-10-15 20:23:25'),
(109, 4, 832716, 934, 3, '2022-10-16 20:23:25'),
(110, 4, 249979, 659, 76, '2022-10-17 20:23:25'),
(111, 4, 454773, 122, 2, '2022-10-18 20:23:25'),
(112, 4, 314502, 867, 0, '2022-10-19 20:23:25'),
(113, 4, 137708, 241, 41, '2022-10-20 20:23:25'),
(114, 4, 882472, 369, 13, '2022-10-21 20:23:25'),
(115, 4, 322074, 248, 5, '2022-10-22 20:23:25'),
(116, 4, 69124, 842, 61, '2022-10-23 20:23:25'),
(117, 4, 139038, 63, 30, '2022-10-24 20:23:25'),
(118, 4, 992527, 402, 25, '2022-10-25 20:23:25'),
(119, 4, 561507, 380, 53, '2022-10-26 20:23:25'),
(120, 4, 602639, 234, 30, '2022-10-27 20:23:25'),
(121, 4, 10254, 979, 67, '2022-10-28 20:23:25'),
(122, 4, 261705, 344, 78, '2022-10-29 20:23:25'),
(123, 4, 298594, 181, 39, '2022-10-30 20:23:25'),
(124, 4, 943845, 351, 19, '2022-10-31 20:23:25'),
(125, 5, 338115, 685, 47, '2022-10-01 19:31:32'),
(126, 5, 835390, 893, 80, '2022-10-02 19:31:32'),
(127, 5, 724462, 909, 47, '2022-10-03 19:31:32'),
(128, 5, 177259, 974, 58, '2022-10-04 19:31:32'),
(129, 5, 4427, 377, 27, '2022-10-05 19:31:32'),
(130, 5, 673648, 316, 54, '2022-10-06 19:31:32'),
(131, 5, 491221, 87, 7, '2022-10-07 19:31:32'),
(132, 5, 908119, 445, 11, '2022-10-08 19:31:32'),
(133, 5, 601675, 55, 23, '2022-10-09 19:31:32'),
(134, 5, 900086, 226, 18, '2022-10-10 19:31:32'),
(135, 5, 379437, 185, 71, '2022-10-11 19:31:32'),
(136, 5, 30709, 261, 45, '2022-10-12 19:31:32'),
(137, 5, 777216, 976, 54, '2022-10-13 19:31:32'),
(138, 5, 970230, 886, 48, '2022-10-14 19:31:32'),
(139, 5, 961753, 682, 66, '2022-10-15 19:31:32'),
(140, 5, 79247, 684, 60, '2022-10-16 19:31:32'),
(141, 5, 533164, 358, 61, '2022-10-17 19:31:32'),
(142, 5, 195587, 663, 22, '2022-10-18 19:31:32'),
(143, 5, 788921, 721, 62, '2022-10-19 19:31:32'),
(144, 5, 352065, 127, 77, '2022-10-20 19:31:32'),
(145, 5, 388677, 835, 5, '2022-10-21 19:31:32'),
(146, 5, 894191, 766, 57, '2022-10-22 19:31:32'),
(147, 5, 199979, 726, 65, '2022-10-23 19:31:32'),
(148, 5, 621233, 999, 47, '2022-10-24 19:31:32'),
(149, 5, 931619, 115, 0, '2022-10-25 19:31:32'),
(150, 5, 994948, 412, 70, '2022-10-26 19:31:32'),
(151, 5, 245224, 937, 56, '2022-10-27 19:31:32'),
(152, 5, 20389, 856, 17, '2022-10-28 19:31:32'),
(153, 5, 426068, 287, 71, '2022-10-29 19:31:32'),
(154, 5, 547117, 111, 41, '2022-10-30 19:31:32'),
(155, 5, 918896, 331, 55, '2022-10-31 19:31:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_stats`
--
ALTER TABLE `user_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `user_stats`
--
ALTER TABLE `user_stats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `user_stats`
--
ALTER TABLE `user_stats`
  ADD CONSTRAINT `user_stats_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

