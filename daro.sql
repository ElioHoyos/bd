-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-01-2021 a las 15:52:17
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `daro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos`
--

CREATE TABLE `catalogos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Marca` int(4) NOT NULL,
  `url` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `catalogos`
--

INSERT INTO `catalogos` (`id`, `nombre`, `Marca`, `url`, `created_at`) VALUES
(2, 'Oregon', 4, '/catalogos/Oregon.pdf', '2021-01-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `Tipo` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'CATEGORIA',
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `Tipo`, `nombre`, `descripcion`, `url`, `created_at`, `updated_at`) VALUES
(1, 'CATEGORIA', 'Carpintería', 'todo sobre carpintería', '', '2021-01-10', NULL),
(2, 'CATEGORIA', 'Corte de Metal', 'todo sobre corte de metal', '', '2021-01-10', NULL),
(3, 'CATEGORIA', 'Lima y Afiladores', 'todo sobre lima', '', '2021-01-10', NULL),
(4, 'MARCA', 'Oregon', 'todo sobre la marca oregon', '', '2021-01-10', NULL),
(5, 'MARCA', 'Bahco', 'todo sobre la marca bahco', '', '2021-01-10', NULL),
(6, 'CATEGORIA', 'Forestal', 'todo sobre forestal', '', '2021-01-10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuraciones`
--

CREATE TABLE `configuraciones` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `detalle` varchar(2000) COLLATE utf8_spanish_ci NOT NULL,
  `url` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuraciones`
--

INSERT INTO `configuraciones` (`id`, `tipo`, `detalle`, `url`, `created_at`, `updated_at`) VALUES
(1, 'NOSOTROS', 'Negocios y Servicios DARO SAC surge a través de la necesidad del poblador y usuario de selva con muchas dificultades por conseguir herramientas de calidad profesional en el sector agrícola, forestal, jardinería, mecánica y ferretería, actualmente satisfacemos las principales necesidades de los usuarios más exigentes en rendimiento, calidad y garantía a un precio muy competitivo. Somos distribuidores las marcas BAHCO, OREGON, SATA Y NICHOLSON.\n\nAtendemos desde nuestro almacén a nuestros clientes en selva, estando nuestros principales clientes en Ucayali, San Martín, en la parte selva de Huánuco, Pasco, Junín, Ayacucho, para lo cual contamos con vendedores que visitan periódicamente dichas zonas, así mismo atendemos vía telefónica, redes sociales (Facebook y Whatsapp) y correo desde nuestra oficina.', '/configuraciones/NOSOTROS.jpg', '2021-01-10', '0000-00-00'),
(5, 'SLIDE', 'slide 1', '/configuraciones/SLIDE.png', '2021-01-13', '0000-00-00'),
(6, 'SLIDE', 'slide 2', '/configuraciones/SLIDE.jpg', '2021-01-13', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_16_043905_create_navegacions_table', 1),
(5, '2020_10_20_151026_create_paginas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `navegacions`
--

CREATE TABLE `navegacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginas`
--

CREATE TABLE `paginas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `longitud1` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `longitud2` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `altura` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipoSierra` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Peso` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `PesoOz` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `categoria` int(11) NOT NULL,
  `Marca` int(4) DEFAULT NULL,
  `etiquetas` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `descripcion`, `longitud1`, `longitud2`, `altura`, `tipoSierra`, `Peso`, `PesoOz`, `url`, `categoria`, `Marca`, `etiquetas`, `created_at`) VALUES
(1, '331-21', 'ARCO MONTARAZ 21', 'Su extremo puntiagudo lo hace ideal para su empleo en espacios reducidos, y se adapta bien a trabajos de jardinería y de reparación de tejados', '530 mm', '21 in', NULL, NULL, '615 g', NULL, '/productos/ARCO MONTARAZ 21.png', 1, 5, 'Bahco', '2021-01-10'),
(2, '306', 'ARCO DE SIERRA PARA METALES', 'Pasadores de montaje de la hoja de 90° alternativos para corte a ras\nSe suministra con una hoja bimetálica Sandflex® 24 tpi de 300 mm (12″)', '470 mm', NULL, NULL, NULL, '325 g', NULL, '/productos/ARCO DE SIERRA PARA METALES.png', 2, 5, 'Bahco', '2021-01-10'),
(3, '317', 'ARCO DE SIERRA PARA METALES', 'Pasadores de montaje de la hoja de 90º alternativos para corte a ras\nSe suministra con una hoja bimetálica Sandflex® 24 tpi de 300 mm (12″).', '432 mm', NULL, NULL, NULL, '470 g', NULL, '/productos/ARCO DE SIERRA PARA METALES.png', 2, 5, 'Bahco', '2021-01-10'),
(4, '77-308-1', 'BUJIAS', 'Bujías diseñadas para su uso en motosierras, desbrozadores y cortacéspedes.', NULL, NULL, NULL, NULL, NULL, NULL, '/productos/BUJIAS.jpg', 6, 4, 'Forestal', '2021-01-10'),
(5, '303ATLD025', 'ESPADA PUNTA DURA (ARMOR TIP)', 'La soldadura láser de la punta aporta una fiabilidad óptima sin desgaste de la barra que sí que ocurre con la soldadura de gas.', '404', '.063', '30', '92', NULL, NULL, '/productos/ESPADA PUNTA DURA (ARMOR TIP).jpg', 6, 4, 'Forestal', '2021-01-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` int(11) DEFAULT 2,
  `Estado` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `tipo`, `Estado`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asalazar', '$2y$10$.a3vBAex.NzUjabMaM8wfO5z2VOErkcvo3roQW5Nq.eb2UKQcmXYC', 1, 1, 'md7NsXwYRk1JdpSei38C5obANU74GI1a0UMT7P1GpPeWHkFw3fGVyQMmO6ui', '2020-11-03 05:26:15', '2020-11-03 05:26:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuraciones`
--
ALTER TABLE `configuraciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `navegacions`
--
ALTER TABLE `navegacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `configuraciones`
--
ALTER TABLE `configuraciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `navegacions`
--
ALTER TABLE `navegacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
