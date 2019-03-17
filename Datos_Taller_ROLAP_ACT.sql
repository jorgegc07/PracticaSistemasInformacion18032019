SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--
use test;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dim_cliente`
--

CREATE TABLE `dim_cliente` (
  `clienteID` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `es_premium` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dim_cliente`
--

INSERT INTO `dim_cliente` (`clienteID`, `Nombre`, `Apellido`, `es_premium`) VALUES
(1, 'Carmen', 'García', 1),
(2, 'Antonio', 'González', 1),
(3, 'Lucía', 'Rodríguez', 0),
(4, 'Hugo', 'Fernández', 0),
(5, 'María', 'López', 1),
(6, 'Isabel', 'Martínez', 1),
(7, 'Juan', 'Sánchez', 0),
(8, 'David', 'Pérez', 0),
(9, 'José', 'Gómez', 1),
(10, 'Manuel', 'Jiménez', 1),
(11, 'Pedro', 'García', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dim_libro`
--

CREATE TABLE `dim_libro` (
  `isbn` varchar(30) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `edicion` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dim_libro`
--

INSERT INTO `dim_libro` (`isbn`, `titulo`, `edicion`, `precio`) VALUES
('9780985875138', 'El pájaro espino', 8, 19.95),
('9781603090162', 'El guardián entre el centeno', 10, 19.95),
('9781603090254', 'Sueño en el pabellón rojo', 18, 35),
('9781603090261', 'Juan Salvador Gaviota ', 25, 39.99),
('9781603090278', 'Guerra y paz', 16, 39.99),
('9781603090292', '50 sombras de Grey ', 5, 12.95),
('9781603090421', 'Harry Potter y las Reliquias de la Muerte', 8, 29.95),
('9781603090476', 'Triple representatividad', 27, 49.95),
('9781603090506', 'El Señor de los Anillos ', 14, 14.95),
('9781603090636', 'Cien años de soledad ', 10, 14.95),
('9781603090667', 'Los hombres que no amaban a las mujeres', 3, 14.95),
('9781603090698', 'El cuento de Perico, el conejo travieso ', 20, 14.95),
('9781603090773', 'El informe Hite', 1, 19.95),
('9781603092395', 'El nombre de la rosa', 10, 9.95),
('9781603092654', 'El alquimista ', 23, 24.95),
('9781603092661', 'El principito ', 27, 14.95),
('9781603092739', 'Lo que el viento se llevó ', 28, 14.95),
('9781603093224', 'Diez negritos ', 18, 9.95),
('9781603093699', 'La telaraña de Charlotte ', 30, 19.99),
('9781891830198', 'Una vida con propósito ', 21, 29.95),
('9781891830372', 'Las aventuras de Pinocho ', 26, 14.95),
('9781891830402', 'Diario de Ana Frank ', 25, 9.95),
('9781891830563', 'Matar un ruiseñor', 28, 15.95),
('9781891830716', 'El hobbit ', 19, 12),
('9781891830754', 'Historia de dos ciudades', 12, 12.95),
('9781891830853', 'El código Da Vinci ', 25, 19.95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dim_tiempo`
--

CREATE TABLE `dim_tiempo` (
  `tiempoID` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `dia_semana` varchar(10) NOT NULL,
  `Mes` varchar(12) NOT NULL,
  `Anio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dim_tiempo`
--

INSERT INTO `dim_tiempo` (`tiempoID`, `fecha_pedido`, `dia_semana`, `Mes`, `Anio`) VALUES
(1, '2016-01-01', 'domingo', 'Enero', 2016),
(2, '2016-01-02', 'lunes', 'Enero', 2016),
(3, '2016-01-03', 'martes', 'Enero', 2016),
(4, '2016-01-04', 'miércoles', 'Enero', 2016),
(5, '2016-01-05', 'jueves', 'Enero', 2016),
(6, '2016-01-06', 'viernes', 'Enero', 2016),
(7, '2016-01-07', 'sábado', 'Enero', 2016),
(8, '2016-01-08', 'domingo', 'Enero', 2016),
(9, '2016-01-09', 'lunes', 'Enero', 2016),
(10, '2016-01-10', 'martes', 'Enero', 2016),
(11, '2016-01-11', 'miércoles', 'Enero', 2016),
(12, '2016-01-12', 'jueves', 'Enero', 2016),
(13, '2016-01-13', 'viernes', 'Enero', 2016),
(14, '2016-01-14', 'sábado', 'Enero', 2016),
(15, '2016-01-15', 'domingo', 'Enero', 2016),
(16, '2016-01-16', 'lunes', 'Enero', 2016),
(17, '2016-01-17', 'martes', 'Enero', 2016),
(18, '2016-01-18', 'miércoles', 'Enero', 2016),
(19, '2016-01-19', 'jueves', 'Enero', 2016),
(20, '2016-01-20', 'viernes', 'Enero', 2016),
(21, '2016-01-21', 'sábado', 'Enero', 2016),
(22, '2016-01-22', 'domingo', 'Enero', 2016),
(23, '2016-01-23', 'lunes', 'Enero', 2016),
(24, '2016-01-24', 'martes', 'Enero', 2016),
(25, '2016-01-25', 'miércoles', 'Enero', 2016),
(26, '2016-01-26', 'jueves', 'Enero', 2016),
(27, '2016-01-27', 'viernes', 'Enero', 2016),
(28, '2016-01-28', 'sábado', 'Enero', 2016),
(29, '2016-01-29', 'domingo', 'Enero', 2016),
(30, '2016-01-30', 'lunes', 'Enero', 2016),
(31, '2016-01-31', 'martes', 'Enero', 2016),
(32, '2016-02-01', 'miércoles', 'Febrero', 2016),
(33, '2016-02-02', 'jueves', 'Febrero', 2016),
(34, '2016-02-03', 'viernes', 'Febrero', 2016),
(35, '2016-02-04', 'sábado', 'Febrero', 2016),
(36, '2016-02-05', 'domingo', 'Febrero', 2016),
(37, '2016-02-06', 'lunes', 'Febrero', 2016),
(38, '2016-02-07', 'martes', 'Febrero', 2016),
(39, '2016-02-08', 'miércoles', 'Febrero', 2016),
(40, '2016-02-09', 'jueves', 'Febrero', 2016),
(41, '2016-02-10', 'viernes', 'Febrero', 2016),
(42, '2016-02-11', 'sábado', 'Febrero', 2016),
(43, '2016-02-12', 'domingo', 'Febrero', 2016),
(44, '2016-02-13', 'lunes', 'Febrero', 2016),
(45, '2016-02-14', 'martes', 'Febrero', 2016),
(46, '2016-02-15', 'miércoles', 'Febrero', 2016),
(47, '2016-02-16', 'jueves', 'Febrero', 2016),
(48, '2016-02-17', 'viernes', 'Febrero', 2016),
(49, '2016-02-18', 'sábado', 'Febrero', 2016),
(50, '2016-02-19', 'domingo', 'Febrero', 2016),
(51, '2016-02-20', 'lunes', 'Febrero', 2016),
(52, '2016-02-21', 'martes', 'Febrero', 2016),
(53, '2016-02-22', 'miércoles', 'Febrero', 2016),
(54, '2016-02-23', 'jueves', 'Febrero', 2016),
(55, '2016-02-24', 'viernes', 'Febrero', 2016),
(56, '2016-02-25', 'sábado', 'Febrero', 2016),
(57, '2016-02-26', 'domingo', 'Febrero', 2016),
(58, '2016-02-27', 'lunes', 'Febrero', 2016),
(59, '2016-02-28', 'martes', 'Febrero', 2016),
(60, '2016-02-29', 'miércoles', 'Febrero', 2016),
(61, '2016-03-01', 'jueves', 'Marzo', 2016),
(62, '2016-03-02', 'viernes', 'Marzo', 2016),
(63, '2016-03-03', 'sábado', 'Marzo', 2016),
(64, '2016-03-04', 'domingo', 'Marzo', 2016),
(65, '2016-03-05', 'lunes', 'Marzo', 2016),
(66, '2016-03-06', 'martes', 'Marzo', 2016),
(67, '2016-03-07', 'miércoles', 'Marzo', 2016),
(68, '2016-03-08', 'jueves', 'Marzo', 2016),
(69, '2016-03-09', 'viernes', 'Marzo', 2016),
(70, '2016-03-10', 'sábado', 'Marzo', 2016),
(71, '2016-03-11', 'domingo', 'Marzo', 2016),
(72, '2016-03-12', 'lunes', 'Marzo', 2016),
(73, '2016-03-13', 'martes', 'Marzo', 2016),
(74, '2016-03-14', 'miércoles', 'Marzo', 2016),
(75, '2016-03-15', 'jueves', 'Marzo', 2016),
(76, '2016-03-16', 'viernes', 'Marzo', 2016),
(77, '2016-03-17', 'sábado', 'Marzo', 2016),
(78, '2016-03-18', 'domingo', 'Marzo', 2016),
(79, '2016-03-19', 'lunes', 'Marzo', 2016),
(80, '2016-03-20', 'martes', 'Marzo', 2016),
(81, '2016-03-21', 'miércoles', 'Marzo', 2016),
(82, '2016-03-22', 'jueves', 'Marzo', 2016),
(83, '2016-03-23', 'viernes', 'Marzo', 2016),
(84, '2016-03-24', 'sábado', 'Marzo', 2016),
(85, '2016-03-25', 'domingo', 'Marzo', 2016),
(86, '2016-03-26', 'lunes', 'Marzo', 2016),
(87, '2016-03-27', 'martes', 'Marzo', 2016),
(88, '2016-03-28', 'miércoles', 'Marzo', 2016),
(89, '2016-03-29', 'jueves', 'Marzo', 2016),
(90, '2016-03-30', 'viernes', 'Marzo', 2016),
(91, '2016-03-31', 'sábado', 'Marzo', 2016),
(92, '2016-04-01', 'domingo', 'Abril', 2016),
(93, '2016-04-02', 'lunes', 'Abril', 2016),
(94, '2016-04-03', 'martes', 'Abril', 2016),
(95, '2016-04-04', 'miércoles', 'Abril', 2016),
(96, '2016-04-05', 'jueves', 'Abril', 2016),
(97, '2016-04-06', 'viernes', 'Abril', 2016),
(98, '2016-04-07', 'sábado', 'Abril', 2016),
(99, '2016-04-08', 'domingo', 'Abril', 2016),
(100, '2016-04-09', 'lunes', 'Abril', 2016),
(101, '2016-04-10', 'martes', 'Abril', 2016),
(102, '2016-04-11', 'miércoles', 'Abril', 2016),
(103, '2016-04-12', 'jueves', 'Abril', 2016),
(104, '2016-04-13', 'viernes', 'Abril', 2016),
(105, '2016-04-14', 'sábado', 'Abril', 2016),
(106, '2016-04-15', 'domingo', 'Abril', 2016),
(107, '2016-04-16', 'lunes', 'Abril', 2016),
(108, '2016-04-17', 'martes', 'Abril', 2016),
(109, '2016-04-18', 'miércoles', 'Abril', 2016),
(110, '2016-04-19', 'jueves', 'Abril', 2016),
(111, '2016-04-20', 'viernes', 'Abril', 2016),
(112, '2016-04-21', 'sábado', 'Abril', 2016),
(113, '2016-04-22', 'domingo', 'Abril', 2016),
(114, '2016-04-23', 'lunes', 'Abril', 2016),
(115, '2016-04-24', 'martes', 'Abril', 2016),
(116, '2016-04-25', 'miércoles', 'Abril', 2016),
(117, '2016-04-26', 'jueves', 'Abril', 2016),
(118, '2016-04-27', 'viernes', 'Abril', 2016),
(119, '2016-04-28', 'sábado', 'Abril', 2016),
(120, '2016-04-29', 'domingo', 'Abril', 2016),
(121, '2016-04-30', 'lunes', 'Abril', 2016);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hecho_ventas`
--

CREATE TABLE `hecho_ventas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,	
  `clienteID` int(11) NOT NULL,
  `tiempoID` int(11) NOT NULL,
  `isbn` varchar(15) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (id) 	
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hecho_ventas`
--

INSERT INTO `hecho_ventas` (`clienteID`, `tiempoID`, `isbn`, `cantidad`) VALUES
(9, 40, '9781603090292', 11),
(11, 33, '9781603090636', 19),
(11, 45, '9781603090636', 1),
(1, 4, '9781603090636', 11),
(6, 88, '9781603090636', 14),
(11, 94, '9781603090636', 20),
(9, 88, '9781603090636', 3),
(11, 83, '9781603090636', 17),
(4, 108, '9781603090636', 15),
(6, 95, '9781891830853', 4),
(4, 46, '9781603090698', 7),
(9, 97, '9781603090698', 1),
(11, 79, '9781603090162', 4),
(2, 58, '9781891830716', 1),
(10, 45, '9781603090773', 14),
(10, 70, '9781603092395', 14),
(1, 109, '9781603092395', 7),
(5, 45, '9781603092395', 18),
(9, 69, '9781603092395', 17),
(5, 60, '9781603092395', 5),
(2, 111, '9781603092395', 14),
(11, 22, '9781603092661', 3),
(1, 32, '9781603092661', 11),
(9, 11, '9781603090506', 20),
(7, 86, '9781603090506', 4),
(5, 30, '9781603090278', 11),
(8, 34, '9781603090278', 19),
(1, 79, '9781603090278', 3),
(1, 117, '9781603090278', 2),
(5, 41, '9781603090278', 4),
(11, 62, '9781603090421', 18),
(8, 58, '9781891830754', 12),
(5, 68, '9781891830754', 12),
(1, 49, '9781603090261', 9),
(3, 91, '9781603090261', 3),
(4, 24, '9781603093699', 18),
(11, 50, '9781603093699', 12),
(1, 43, '9781891830372', 15),
(2, 72, '9781891830372', 17),
(2, 90, '9781891830372', 16),
(9, 26, '9781603092739', 14),
(5, 34, '9781603090667', 20),
(2, 74, '9781603090667', 18),
(9, 20, '9781891830563', 7),
(11, 71, '9781891830563', 10),
(3, 79, '9781891830563', 2),
(10, 29, '9781603090254', 15),
(8, 1, '9781891830198', 9),
(5, 69, '9781891830198', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dim_cliente`
--
ALTER TABLE `dim_cliente`
  ADD PRIMARY KEY (`clienteID`);

--
-- Indices de la tabla `dim_libro`
--
ALTER TABLE `dim_libro`
  ADD PRIMARY KEY (`isbn`);

--
-- Indices de la tabla `dim_tiempo`
--
ALTER TABLE `dim_tiempo`
  ADD PRIMARY KEY (`tiempoID`);

--
-- Indices de la tabla `hecho_ventas`
--
ALTER TABLE `hecho_ventas`
  ADD KEY `clienteID` (`clienteID`),
  ADD KEY `tiempoID` (`tiempoID`),
  ADD KEY `isbn` (`isbn`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `hecho_ventas`
--
ALTER TABLE `hecho_ventas`
  ADD CONSTRAINT `hecho_ventas_ibfk_1` FOREIGN KEY (`clienteID`) REFERENCES `dim_cliente` (`clienteID`),
  ADD CONSTRAINT `hecho_ventas_ibfk_2` FOREIGN KEY (`tiempoID`) REFERENCES `dim_tiempo` (`tiempoID`),
  ADD CONSTRAINT `hecho_ventas_ibfk_3` FOREIGN KEY (`isbn`) REFERENCES `dim_libro` (`isbn`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
