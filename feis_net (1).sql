-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2022 a las 14:52:07
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `feis_net`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion`
--

CREATE TABLE `informacion` (
  `ID_Persona1` int(20) DEFAULT NULL,
  `ID_Persona 2` int(20) DEFAULT NULL,
  `Amigos` int(20) DEFAULT NULL,
  `Amigos_en_comun` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `informacion`
--

INSERT INTO `informacion` (`ID_Persona1`, `ID_Persona 2`, `Amigos`, `Amigos_en_comun`) VALUES
(1, 2, 5, 'camilo\r\n'),
(3, 4, 5, 'manuel\r\npedro\r\n'),
(5, 1, 5, 'ana\r\ncamilo\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_amigos`
--

CREATE TABLE `info_amigos` (
  `Id` int(50) DEFAULT NULL,
  `amigos_de_maria` text DEFAULT NULL,
  `amigos_de_pedro` text DEFAULT NULL,
  `amigos _de_lina` text DEFAULT NULL,
  `amigos_de_ana` text DEFAULT NULL,
  `amigos_de_manuel` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `info_amigos`
--

INSERT INTO `info_amigos` (`Id`, `amigos_de_maria`, `amigos_de_pedro`, `amigos _de_lina`, `amigos_de_ana`, `amigos_de_manuel`) VALUES
(NULL, 'manuel', 'lina', 'ana', 'lina', 'ana'),
(NULL, 'pedro', 'maria', 'pedro', 'pedro', 'maria'),
(NULL, 'camilo', 'camilo', 'manuel', 'camilo', 'lina'),
(NULL, 'erick', 'samuel', 'erick', 'manuel', 'peter'),
(NULL, 'peter', 'ana', 'samuel', 'peter', 'camilo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_solicitudes`
--

CREATE TABLE `info_solicitudes` (
  `ID_usuario` int(50) DEFAULT NULL,
  `Aceptadas` text DEFAULT NULL,
  `Rechazada` text DEFAULT NULL,
  `en_espera` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(20) NOT NULL,
  `Nombre` text DEFAULT NULL,
  `Apellido` text DEFAULT NULL,
  `Nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `Nombre`, `Apellido`, `Nacimiento`) VALUES
(1, 'Maria ', 'De la hoz ', '2002-10-10'),
(2, 'pedro', 'rojas', '2003-06-12'),
(3, 'lina', 'franco', '2022-10-26'),
(4, 'ana', 'cabarcas', '2022-07-10'),
(5, 'manuel', 'caballero', '2005-12-23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `informacion`
--
ALTER TABLE `informacion`
  ADD UNIQUE KEY `ID_Usuario1` (`ID_Persona1`),
  ADD UNIQUE KEY `ID_usuario 2` (`ID_Persona 2`),
  ADD UNIQUE KEY `ID_Persona1` (`ID_Persona1`);

--
-- Indices de la tabla `info_amigos`
--
ALTER TABLE `info_amigos`
  ADD UNIQUE KEY `ID` (`Id`),
  ADD UNIQUE KEY `Id_2` (`Id`);

--
-- Indices de la tabla `info_solicitudes`
--
ALTER TABLE `info_solicitudes`
  ADD UNIQUE KEY `ID` (`ID_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `informacion`
--
ALTER TABLE `informacion`
  ADD CONSTRAINT `informacion_ibfk_1` FOREIGN KEY (`ID_Persona1`) REFERENCES `usuario` (`ID`),
  ADD CONSTRAINT `informacion_ibfk_2` FOREIGN KEY (`ID_Persona 2`) REFERENCES `usuario` (`ID`);

--
-- Filtros para la tabla `info_amigos`
--
ALTER TABLE `info_amigos`
  ADD CONSTRAINT `info_amigos_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `usuario` (`ID`);

--
-- Filtros para la tabla `info_solicitudes`
--
ALTER TABLE `info_solicitudes`
  ADD CONSTRAINT `info_solicitudes_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
