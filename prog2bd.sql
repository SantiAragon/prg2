-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2024 a las 19:11:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prog2bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `precio` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`codigo`, `descripcion`, `precio`) VALUES
(1, 'papas fritas', 2300),
(2, 'Naranjas', 450),
(3, 'Manzanas', 100),
(4, 'Mandarin', 10),
(10, 'Prueba ', 120),
(19, 'Mandarinas', 1010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Apellido` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Saldo` int(11) NOT NULL,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Apellido`, `Nombre`, `Saldo`, `Status`) VALUES
('Aguirre', 'Nicolas Elias', 87000, 0),
('Bianchi', 'Germ?n', 92000, 1),
('Costa', 'Mar?a Laura', 45000, 1),
('Donzelli', 'Nicolas Emanuel', 92000, 0),
('Giavedoni', 'Augusto', 82000, 0),
('Girod', 'Ignacio', 82000, 0),
('Imhoff', 'Marianela', 80000, 0),
('Kouefati', 'Jacques', 80000, 1),
('Pallavidini', 'Nahuel', 80000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meses`
--

CREATE TABLE `meses` (
  `Nro` int(2) NOT NULL,
  `Mes` varchar(50) NOT NULL,
  `CDias` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `meses`
--

INSERT INTO `meses` (`Nro`, `Mes`, `CDias`) VALUES
(1, 'Enero', 31),
(2, 'Febrero', 28),
(3, 'Marzo', 31),
(4, 'Abril', 30),
(5, 'Mayo', 31),
(6, 'Junio', 30),
(7, 'Julio', 31),
(8, 'Agosto', 31),
(9, 'Septiembre', 30),
(10, 'Octubre', 31),
(11, 'Noviembre', 30),
(12, 'Diciembre', 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `Id_Suc` int(11) NOT NULL,
  `Nombre_Suc` varchar(50) NOT NULL,
  `Dir_Suc` varchar(50) NOT NULL,
  `Cant_Emp_Suc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`Id_Suc`, `Nombre_Suc`, `Dir_Suc`, `Cant_Emp_Suc`) VALUES
(1, 'Santa Fe', 'San  Martin 1111', 11),
(2, 'Rosario', 'Belgrano 2222', 22),
(3, 'Santo tome', '9 de Julio 3333', 16),
(4, 'Rafaela', 'Roca 4444', 4),
(5, 'Parana', 'Tunel 555', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Santiago', 'aragonsanti82@gmail.com', '$2y$10$JYdzivUUm4WVaxc6h6mTNuBr6T1BGt/SF3w/QwYBymCD0YCnXXWOy', '2024-11-07 02:54:36'),
(2, 'Santiago Emanuel', 'adasda@dsad.com', '$2y$10$wBDgOff1vnvGt3ecKzn9G.Z/eStV6AcjPAZ9udB3N7NOCN1tmNCBG', '2024-11-07 03:13:39'),
(3, 'Santiago', 'santiagoaragon4893@gmail.com', '$2y$10$l6/.lldymHkGoDtQqM2OSujvb21j.ZbeK6h8jUDbZHmcSZmB6fNLe', '2024-11-07 12:59:02'),
(4, 'Emanuel', 'emannuel123@gmail.com', '$2y$10$ciIGsp7Wb./.xi3uNzStv.E7sP4QBUGPUQefD0p1WA5FtqtxDV7PO', '2024-11-07 16:19:29'),
(5, 'Santiago Emanuel', 'santiyconri@hotmail.com', '$2y$10$nUPt4gCiTjvieSGzssH0K.fDXD90T9Iccu44vg.pBBw4kg3W03NCO', '2024-11-07 17:21:19'),
(6, 'Santiago', 'aragon@gmail.com', '$2y$10$w5y0ArIqNIIXNhehJ0AEZ.9djGAawGWaKOiG6tSeWPdAw3larVuEG', '2024-11-07 17:24:07'),
(7, 'francisco', 'panchito@gmail.com', '$2y$10$MGxOLjW6K0E8xMdnF1ay0ef5Lngkv2kH/NRfkxnT7HTGKFDZxyNbC', '2024-11-07 17:44:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `Suc1` float NOT NULL,
  `Suc2` float NOT NULL,
  `Suc3` float NOT NULL,
  `Suc4` float NOT NULL,
  `Suc5` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`Suc1`, `Suc2`, `Suc3`, `Suc4`, `Suc5`) VALUES
(8386, 8679, 6853, 5111, 8019),
(7024, 9289, 7299, 5612, 7721),
(5329, 7019, 5203, 9400, 9291),
(45718, 9151, 6667, 9836, 8054),
(5154, 9487, 6084, 8365, 9942),
(8528, 5101, 8775, 9921, 7077),
(6603, 5962, 9845, 6703, 5561),
(5881, 7857, 6640, 9669, 6169),
(7952, 8372, 5312, 6248, 6714),
(7249, 5031, 9476, 9434, 6759),
(5393, 7977, 6925, 7619, 8966),
(8366, 5008, 5193, 8093, 7039);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
