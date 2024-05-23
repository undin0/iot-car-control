-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2024 a las 19:56:03
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iot_car`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`admin`@`%` PROCEDURE `InsertarDatos` (IN `valorEstatus` VARCHAR(1))   INSERT INTO carstatus (estatus)     VALUES (valorEstatus);$$

CREATE DEFINER=`admin`@`%` PROCEDURE `obtieneEstatus` ()   SELECT estatus FROM carstatus ORDER BY id DESC LIMIT 1;$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carstatus`
--

CREATE TABLE `carstatus` (
  `id` int(11) NOT NULL,
  `estatus` varchar(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carstatus`
--

INSERT INTO `carstatus` (`id`, `estatus`, `date`) VALUES
(1, 'f', '2024-04-23 17:27:16'),
(2, 'b', '2024-04-23 17:27:16'),
(3, 'r', '2024-04-23 17:27:25'),
(4, 's', '2024-04-23 17:27:31'),
(5, 'l', '2024-04-23 17:28:38'),
(6, 's', '2024-04-23 17:37:20'),
(7, 'l', '2024-04-23 17:38:39'),
(8, 'f', '2024-04-30 17:43:25'),
(9, 's', '2024-04-30 17:49:57');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carstatus`
--
ALTER TABLE `carstatus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carstatus`
--
ALTER TABLE `carstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
