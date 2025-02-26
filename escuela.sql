-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2025 a las 02:28:10
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
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Codigo` varchar(15) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Edad` int(5) NOT NULL,
  `Telefono` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`Codigo`, `Nombre`, `Apellidos`, `Edad`, `Telefono`) VALUES
('18344', 'Edgar', 'De Diego', 25, '6561239876'),
('18675', 'Ivette', 'Orihuela', 20, '6563447888'),
('18765', 'Sofia', 'Terrazas', 25, '6568905434'),
('18876', 'Arely', 'Roman', 22, '6567890987'),
('18900', 'Griselda', 'Ruiz', 25, '6567890955');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `Codigo` varchar(15) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Duracion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`Codigo`, `Nombre`, `Duracion`) VALUES
('8807', 'Arquitectura', '6'),
('8808', 'Diseño Digital de Medios Interactivos', '4 '),
('8809', 'Diseño Grafico', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `CodigoInscripcion` int(11) NOT NULL,
  `Fecha` varchar(25) NOT NULL,
  `CodigoAlumno` varchar(25) NOT NULL,
  `CodigoCarrera` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`CodigoInscripcion`, `Fecha`, `CodigoAlumno`, `CodigoCarrera`) VALUES
(1, '2025-02-19', '18344', '8808'),
(2355, '2025-02-21', '18876', '8808'),
(2356, '2025-02-21', '18900', '8809');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`CodigoInscripcion`),
  ADD KEY `FkAlumno` (`CodigoAlumno`),
  ADD KEY `FkCarrera` (`CodigoCarrera`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `CodigoInscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2357;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`CodigoAlumno`) REFERENCES `alumno` (`Codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`CodigoCarrera`) REFERENCES `carrera` (`Codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
