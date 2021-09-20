-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2021 a las 07:16:45
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar_nacimiento`
--

CREATE TABLE `lugar_nacimiento` (
  `id_lugar` int(11) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `provincia` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `calle` varchar(20) NOT NULL,
  `num_exterior` int(10) NOT NULL,
  `persona_lugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lugar_nacimiento`
--

INSERT INTO `lugar_nacimiento` (`id_lugar`, `pais`, `provincia`, `estado`, `calle`, `num_exterior`, `persona_lugar`) VALUES
(1, 'mexico', 'yucatan', 'yucatan', 'vicente guerrero', 6, NULL),
(2, 'mexico', 'yucatan', 'yucatan', 'vicente guerrero', 6, NULL),
(3, 'españa', 'valladoli', 'cartajena', 'viena', 54, NULL),
(4, 'brasil', 'rio', 'amazonas', 'janeiro', 76, NULL),
(5, 'españa', 'valladoli', 'cartajena', 'viena', 76, NULL),
(6, 'argentina', 'chesmo', 'aires', 'buenos', 67, NULL),
(7, 'españa', 'valladoli', 'cartajena', 'viena', 76, NULL),
(8, 'japon', 'tokio', 'hon kon', 'hitori', 8, NULL),
(9, 'japon', 'tokio', 'hon kon', 'hitori', 6, NULL),
(10, 'españa', 'valladoli', 'cartajena', 'viena', 54, NULL),
(11, 'brasil', 'tokio', 'aires', 'vicente guerrero', 67, NULL),
(12, 'españa', 'valladoli', 'cartajena', 'roma', 678, NULL),
(13, 'brasil', 'rio', 'aires', 'hitori', 76, NULL),
(14, 'españa', 'valladoli', 'cartajena', 'roma', 76, NULL),
(15, 'mexico', 'yucatan', 'yucatan', 'vicente guerrero', 8, NULL),
(16, 'japon', 'valladoli', 'cartajena', 'viena', 54, NULL),
(17, 'argentina', 'chesmo', 'aires', 'hitori', 76, NULL),
(18, 'japon', 'valladoli', 'cartajena', 'roma', 54, NULL),
(19, 'mexico', 'tokio', 'yucatan', 'vicente guerrero', 67, NULL),
(20, 'mexico', 'valladoli', 'cartajena', 'viena', 76, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `ape_pat` varchar(20) NOT NULL,
  `ape_mat` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `nombre`, `ape_pat`, `ape_mat`, `fecha`, `sexo`, `email`, `telefono`) VALUES
(1, 'luis', 'sanchez', 'resendiz', '2021-09-16', 'hombre', 'agssdkjad@gmail.com', 551310216),
(2, 'angel', 'ruiz', 'martinez', '2021-09-15', 'hombre', 'ajiosda@hotmail.com', 551234567),
(3, 'luis', 'zapata', 'resendiz', '2021-09-16', 'hombre', 'agssdkjad@gmail.com', 551310216),
(4, 'angel', 'ruiz', 'martinez', '2021-09-15', 'hombre', 'ajiosda@hotmail.com', 551234567),
(5, 'antonio', 'lopez', 'resendiz', '2021-09-16', 'hombre', 'agssdkjad@gmail.com', 551310216),
(6, 'jose', 'santana', 'martinez', '2021-09-15', 'hombre', 'ajiosda@hotmail.com', 551234567),
(7, 'carlos', 'perez', 'resendiz', '2021-09-16', 'hombre', 'agssdkjad@gmail.com', 551310216),
(8, 'angel', 'monsivais', 'martinez', '2021-09-15', 'hombre', 'ajiosda@hotmail.com', 551234567),
(9, 'pedro', 'andraka', 'resendiz', '2021-09-16', 'hombre', 'agssdkjad@gmail.com', 551310216),
(10, 'angel', 'poe', 'martinez', '2021-09-15', 'hombre', 'ajiosda@hotmail.com', 551234567),
(11, 'juana', 'zapata', 'resendiz', '2021-09-16', 'mujer', 'agssdkjad@gmail.com', 551310216),
(12, 'angel', 'ruiz', 'martinez', '2021-09-15', 'mujer', 'ajiosda@hotmail.com', 551234567),
(13, 'antonio', 'lopez', 'resendiz', '2021-09-16', 'mujer', 'agssdkjad@gmail.com', 551310216),
(14, 'jose', 'santana', 'martinez', '2021-09-15', 'mujer', 'ajiosda@hotmail.com', 551234567),
(15, 'carlos', 'perez', 'resendiz', '2021-09-16', 'mujer', 'agssdkjad@gmail.com', 551310216),
(16, 'laura', 'monsivais', 'martinez', '2021-09-15', 'mujer', 'ajiosda@hotmail.com', 551234567),
(17, 'pedro', 'andraka', 'resendiz', '2021-09-16', 'mujer', 'agssdkjad@gmail.com', 551310216),
(18, 'angie', 'poe', 'martinez', '2021-09-15', 'mujer', 'ajiosda@hotmail.com', 551234567),
(19, 'petra', 'andraka', 'resendiz', '2021-09-16', 'mujer', 'agssdkjad@gmail.com', 551310216),
(20, 'angelica', 'poe', 'martinez', '2021-09-15', 'mujer', 'ajiosda@hotmail.com', 551234567);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lugar_nacimiento`
--
ALTER TABLE `lugar_nacimiento`
  ADD PRIMARY KEY (`id_lugar`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugar_nacimiento`
--
ALTER TABLE `lugar_nacimiento`
  MODIFY `id_lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lugar_nacimiento`
--
ALTER TABLE `lugar_nacimiento`
  ADD CONSTRAINT `lugar_nacimiento_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `personas` (`id_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
