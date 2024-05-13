-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2024 a las 02:50:13
-- Versión del servidor: 8.0.27
-- Versión de PHP: 8.0.25

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
CREATE DEFINER=`admin`@`%` PROCEDURE `InsertarDatos` (IN `valorEstatus` VARCHAR(1))   INSERT INTO carStatus (estatus)     
VALUES (valorEstatus); 
$$

CREATE DEFINER=`admin`@`%` PROCEDURE `obtieneEstatus` ()   SELECT estatus FROM carstatus ORDER BY id DESC LIMIT 1;
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carstatus`
--

CREATE TABLE `carstatus` (
  `id` int NOT NULL,
  `estatus` varchar(1) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `carstatus`
--

INSERT INTO `carstatus` (`id`, `estatus`, `date`) VALUES
(1, 'w', '2024-04-24 01:01:17'),
(2, 's', '2024-04-24 01:02:39'),
(3, 'a', '2024-04-24 01:03:40'),
(4, 'd', '2024-04-24 01:04:32');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

