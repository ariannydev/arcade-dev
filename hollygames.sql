-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2025 a las 17:42:24
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
-- Base de datos: `hollygames`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `Password_Acc` int(11) NOT NULL,
  `Email_Acc` varchar(45) NOT NULL,
  `User` varchar(45) NOT NULL,
  `Recovery_Words` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`Password_Acc`, `Email_Acc`, `User`, `Recovery_Words`) VALUES
(0, 'admin@gmail.com', 'admin', 'admin'),
(2052008, 'johansr.villamizar2@itjo.edu.ve', 'Johans', 'Arauca'),
(5101003, 'ariannyygab@gmail.com', 'Arianny', 'Porsche'),
(88887777, 'adrianlinares776@gmail.com', 'Adrian', 'RedBull'),
(123456789, 'lllllllllllllllll@gmail.com', 'tester', 'camaro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Cod_User` int(11) NOT NULL,
  `Firts_Name` varchar(45) DEFAULT NULL,
  `Second_Name` varchar(45) DEFAULT NULL,
  `Firts_LastName` varchar(45) DEFAULT NULL,
  `Second_LastName` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Day_Born` int(11) DEFAULT NULL,
  `Month_Born` int(11) DEFAULT NULL,
  `Year_Born` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Cod_User`, `Firts_Name`, `Second_Name`, `Firts_LastName`, `Second_LastName`, `Phone`, `Email`, `Day_Born`, `Month_Born`, `Year_Born`) VALUES
(1, 'Juan', 'Manuel', 'Villarroel', 'Guerrero', '0412-5477987', 'Juan@gmail.com', 7, 3, 1987),
(2, 'Marcos', 'Adrian', 'Perez', 'Salvador', '0414-6577787', 'Marcos@gmail.com', 27, 11, 2002),
(3, 'Manolo', 'David', 'Soto', 'Alberto', '0424-2922985', 'manolo@gmail.com', 19, 9, 2001);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquina`
--

CREATE TABLE `maquina` (
  `idMachine` int(11) NOT NULL,
  `Name_Mach` varchar(45) NOT NULL,
  `Num_Mach` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `maquina`
--

INSERT INTO `maquina` (`idMachine`, `Name_Mach`, `Num_Mach`) VALUES
(1, 'Mortal Kombat', '01'),
(2, 'Street Fighter', '02'),
(3, 'Midnight Racers', '03'),
(4, 'Initial D', '04'),
(5, 'Mario Kart GP2', '05'),
(6, 'Pacman', '06'),
(7, 'Tetris', '07'),
(8, 'Metal Slug 3', '08'),
(9, 'Dance Dance Revolution', '09'),
(10, 'Crazy Taxi', '10'),
(11, 'The House of the Dead 4', '11'),
(12, 'Resident Evil: The Darkside Chronicles', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `idMov` int(11) NOT NULL,
  `Card_Cod` int(11) NOT NULL,
  `Mach_id` int(11) NOT NULL,
  `Mach_NameMach` varchar(45) NOT NULL,
  `Mach_Num_Mach` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Services_Cod` int(11) NOT NULL,
  `Name_Services` varchar(45) DEFAULT NULL,
  `Prices_Services` float DEFAULT NULL,
  `Description_Services` longtext DEFAULT NULL,
  `Type_Services` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

CREATE TABLE `tarjetas` (
  `Cod_Card` int(11) NOT NULL,
  `Day_Exp` int(11) DEFAULT NULL,
  `Month_Exp` int(11) DEFAULT NULL,
  `Token` float DEFAULT NULL,
  `User_id` int(11) NOT NULL,
  `Id_Mov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `Sell_Cod` int(11) NOT NULL,
  `Users_id` int(11) NOT NULL,
  `Sell_Day` int(11) NOT NULL,
  `Sell_Month` int(11) NOT NULL,
  `Sell_Year` int(11) NOT NULL,
  `Mont_Sell` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_has_servicios`
--

CREATE TABLE `ventas_has_servicios` (
  `Sell_Cod` int(11) NOT NULL,
  `Services_Cod` int(11) NOT NULL,
  `Mont_Sell` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`Password_Acc`,`Email_Acc`,`User`,`Recovery_Words`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Cod_User`);

--
-- Indices de la tabla `maquina`
--
ALTER TABLE `maquina`
  ADD PRIMARY KEY (`idMachine`,`Name_Mach`,`Num_Mach`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`idMov`),
  ADD KEY `fk_Movimiento_Tarjetas1_idx` (`Card_Cod`),
  ADD KEY `fk_Movimiento_Máquina1_idx` (`Mach_id`,`Mach_NameMach`,`Mach_Num_Mach`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Services_Cod`);

--
-- Indices de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD PRIMARY KEY (`Cod_Card`,`Id_Mov`),
  ADD KEY `fk_Tarjetas_Clientes1_idx` (`User_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`Sell_Cod`,`Sell_Year`,`Sell_Month`,`Sell_Day`),
  ADD KEY `fk_Ventas_Clientes1_idx` (`Users_id`);

--
-- Indices de la tabla `ventas_has_servicios`
--
ALTER TABLE `ventas_has_servicios`
  ADD PRIMARY KEY (`Sell_Cod`,`Services_Cod`),
  ADD KEY `fk_Ventas_has_Servicios_Servicios1_idx` (`Services_Cod`),
  ADD KEY `fk_Ventas_has_Servicios_Ventas_idx` (`Sell_Cod`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD CONSTRAINT `fk_Movimiento_Máquina1` FOREIGN KEY (`Mach_id`,`Mach_NameMach`,`Mach_Num_Mach`) REFERENCES `maquina` (`idMachine`, `Name_Mach`, `Num_Mach`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Movimiento_Tarjetas1` FOREIGN KEY (`Card_Cod`) REFERENCES `tarjetas` (`Cod_Card`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD CONSTRAINT `fk_Tarjetas_Clientes1` FOREIGN KEY (`User_id`) REFERENCES `clientes` (`Cod_User`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_Ventas_Clientes1` FOREIGN KEY (`Users_id`) REFERENCES `clientes` (`Cod_User`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas_has_servicios`
--
ALTER TABLE `ventas_has_servicios`
  ADD CONSTRAINT `fk_Ventas_has_Servicios_Servicios1` FOREIGN KEY (`Services_Cod`) REFERENCES `servicios` (`Services_Cod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ventas_has_Servicios_Ventas` FOREIGN KEY (`Sell_Cod`) REFERENCES `ventas` (`Sell_Cod`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
