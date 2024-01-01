-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-01-2024 a las 00:50:52
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `VotacionesDBS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Candidato`
--

CREATE TABLE `Candidato` (
  `CandidatoID` int(11) NOT NULL,
  `NombreCandidato` varchar(120) NOT NULL,
  `NombrePartido` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Candidato`
--

INSERT INTO `Candidato` (`CandidatoID`, `NombreCandidato`, `NombrePartido`) VALUES
(1, 'Jose Antonio Kast', 'Republicano'),
(2, 'Merlu Zong', 'Comunista'),
(3, 'Parisi', 'Partido Papa Corazon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Comuna`
--

CREATE TABLE `Comuna` (
  `ComunaID` int(11) NOT NULL,
  `NombreComuna` varchar(120) NOT NULL,
  `RegionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Comuna`
--

INSERT INTO `Comuna` (`ComunaID`, `NombreComuna`, `RegionID`) VALUES
(1, 'VIÑA DEL MAR', 5),
(2, 'VALPARAÍSO', 5),
(3, 'QUILPUÉ', 5),
(4, 'VILLA ALEMANA', 5),
(5, 'SAN ANTONIO', 5),
(6, 'QUILLOTA', 5),
(7, 'SAN FELIPE', 5),
(8, 'LOS ANDES', 5),
(9, 'LA CALERA', 5),
(10, 'CONCÓN', 5),
(11, 'LIMACHE', 5),
(12, 'LA LIGUA', 5),
(13, 'CASABLANCA', 5),
(14, 'LLAILLAY', 5),
(15, 'NOGALES', 5),
(16, 'QUINTERO', 5),
(17, 'CABILDO', 5),
(18, 'CARTAGENA', 5),
(19, 'HIJUELAS', 5),
(20, 'PUTAENDO', 5),
(21, 'SAN ESTEBAN', 5),
(22, 'OLMUÉ', 5),
(23, 'PUCHUNCAVÍ', 5),
(24, 'LA CRUZ', 5),
(25, 'SANTA MARÍA', 5),
(26, 'CATEMU', 5),
(27, 'ALGARROBO', 5),
(28, 'CALLE LARGA', 5),
(29, 'EL QUISCO', 5),
(30, 'PETORCA', 5),
(31, 'SANTO DOMINGO', 5),
(32, 'EL TABO', 5),
(33, 'RINCONADA', 5),
(34, 'PANQUEHUE', 5),
(35, 'ZAPALLAR', 5),
(36, 'PAPUDO', 5),
(37, 'ISLA DE PASCUA', 5),
(38, 'JUAN FERNÁNDEZ', 5),
(39, 'Cerrillos', 13),
(40, 'Cerro Navia', 13),
(41, 'Conchalí', 13),
(42, 'El Bosque', 13),
(43, 'Estación Central', 13),
(44, 'Huechuraba', 13),
(45, 'Independencia', 13),
(46, 'La Cisterna', 13),
(47, 'La Florida', 13),
(48, 'La Granja', 13),
(49, 'La Pintana', 13),
(50, 'Providencia', 13),
(51, 'Las Condes', 13),
(52, 'La Reina', 13),
(53, 'Lo Espejo', 13),
(54, 'Lo Prado', 13),
(55, 'Lo Barnechea', 13),
(56, 'Macul', 13),
(57, 'Maipú', 13),
(58, 'Ñuñoa', 13),
(59, 'Padre Hurtado', 13),
(60, 'Pedro Aguirre Cerda', 13),
(61, 'Peñalolén', 13),
(62, 'Vitacura', 13),
(63, 'Pudahuel', 13),
(64, 'Puente Alto', 13),
(65, 'Quilicura', 13),
(66, 'Quinta Normal', 13),
(67, 'Recoleta', 13),
(68, 'Renca', 13),
(69, 'San Bernardo', 13),
(70, 'San Joaquín', 13),
(71, 'San Miguel', 13),
(72, 'San Ramón', 13),
(73, 'Santiago', 13),
(74, 'Arica', 1),
(75, 'Camarones', 1),
(76, 'Iquique', 2),
(77, 'Alto Hospicio', 2),
(78, 'Antofagasta', 3),
(79, 'Mejillones', 3),
(80, 'Copiapo', 3),
(81, 'Caldera', 3),
(82, 'Serena', 4),
(83, 'Coquimbo', 4),
(84, 'Rancagua', 6),
(85, 'Codegua', 6),
(86, 'Talca', 7),
(87, 'Constitucion', 7),
(88, 'Concepcion', 8),
(89, 'Talcahuano', 8),
(90, 'Temuco', 9),
(91, 'Carahue', 9),
(92, 'Valdivia', 14),
(93, 'Corral', 14),
(94, 'Puerto Montt', 10),
(95, 'Calbuco', 10),
(96, 'Coyhaique', 11),
(97, 'Lago Verde', 11),
(98, 'Punta Arenas', 12),
(99, 'Antártica', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Persona`
--

CREATE TABLE `Persona` (
  `PersonaID` int(11) NOT NULL,
  `Rut` varchar(10) NOT NULL,
  `NombreCompleto` varchar(255) NOT NULL,
  `Alias` varchar(120) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `RegionID` int(11) NOT NULL,
  `ComunaID` int(11) NOT NULL,
  `CandidatoID` int(11) NOT NULL,
  `Web` int(11) DEFAULT NULL,
  `Tv` int(11) DEFAULT NULL,
  `Social` int(11) DEFAULT NULL,
  `Friends` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Persona`
--

INSERT INTO `Persona` (`PersonaID`, `Rut`, `NombreCompleto`, `Alias`, `Email`, `RegionID`, `ComunaID`, `CandidatoID`, `Web`, `Tv`, `Social`, `Friends`) VALUES
(1, '12345678-9', 'Napolean Bonaparte', 'Napolean', 'napoleon1815@hotmail.com', 1, 1, 1, 1, 0, 1, 1),
(2, '12660900-0', 'Jose Bustos', 'JoseB', 'kor@gmail.com', 13, 54, 1, 1, 1, 1, 1),
(3, '12660900-0', 'Jose Bustos', 'JoseB', 'kor@gmail.com', 13, 54, 1, 1, 1, 1, 1),
(4, '12660935-1', 'Jose Bustos', 'JoseBD', 'kor@gmail.com', 13, 54, 1, 1, 1, 1, 1),
(5, '12660935-1', 'Jose Bustos', 'JoseBD', 'kor@gmail.com', 13, 54, 1, 1, 1, 1, 1),
(6, '12660900-0', 'ivan', 'ivan99', 'ivan@gmail.com', 1, 1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Region`
--

CREATE TABLE `Region` (
  `RegionID` int(11) NOT NULL,
  `NombreCorto` varchar(10) NOT NULL,
  `NombreRegion` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Region`
--

INSERT INTO `Region` (`RegionID`, `NombreCorto`, `NombreRegion`) VALUES
(1, 'I', 'Arica y Parinacota y Tarapaca'),
(2, 'II', 'Antofagasta'),
(3, 'III', 'Región de Atacama'),
(4, 'IV', 'Región de Coquimbo'),
(5, 'V', 'Región de Valparaíso'),
(6, 'VI', 'Región del Libertador General Bernardo OHiggins'),
(7, 'VII', 'Región del Maule'),
(8, 'VIII', 'Región del Biobío'),
(9, 'IX', 'Región de La Araucanía'),
(10, 'X', 'Región de Los Lagos'),
(11, 'XI', 'Región de Aysen del General Carlos Ibañez del Campo'),
(12, 'XII', 'Región de Magallanes y la Antartica Chilena'),
(13, 'XIII', 'Región Metropolitana de Santiago'),
(14, 'XIV', 'Región de Los Ríos'),
(15, 'XV', 'Región de Arica y Parinacota');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Candidato`
--
ALTER TABLE `Candidato`
  ADD PRIMARY KEY (`CandidatoID`);

--
-- Indices de la tabla `Comuna`
--
ALTER TABLE `Comuna`
  ADD PRIMARY KEY (`ComunaID`),
  ADD KEY `RegionID` (`RegionID`);

--
-- Indices de la tabla `Persona`
--
ALTER TABLE `Persona`
  ADD PRIMARY KEY (`PersonaID`),
  ADD KEY `CandidatoID` (`CandidatoID`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `ComunaID` (`ComunaID`);

--
-- Indices de la tabla `Region`
--
ALTER TABLE `Region`
  ADD PRIMARY KEY (`RegionID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Candidato`
--
ALTER TABLE `Candidato`
  MODIFY `CandidatoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Comuna`
--
ALTER TABLE `Comuna`
  MODIFY `ComunaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `Persona`
--
ALTER TABLE `Persona`
  MODIFY `PersonaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Region`
--
ALTER TABLE `Region`
  MODIFY `RegionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Comuna`
--
ALTER TABLE `Comuna`
  ADD CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`RegionID`) REFERENCES `Region` (`RegionID`);

--
-- Filtros para la tabla `Persona`
--
ALTER TABLE `Persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`CandidatoID`) REFERENCES `Candidato` (`CandidatoID`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`RegionID`) REFERENCES `Region` (`RegionID`),
  ADD CONSTRAINT `persona_ibfk_3` FOREIGN KEY (`ComunaID`) REFERENCES `Comuna` (`ComunaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
