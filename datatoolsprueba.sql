-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datatoolsprueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estatus` varchar(1) NOT NULL COMMENT 'A --> Activo, I --> Inactivo',
  `user_ingresa` varchar(50) DEFAULT NULL,
  `fecha_ingresa` datetime DEFAULT NULL,
  `user_modifica` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `descripcion`, `estatus`, `user_ingresa`, `fecha_ingresa`, `user_modifica`, `fecha_modifica`) VALUES
(1, 'Guayaquil', 'A', 'user', '2021-07-08 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `id_conductor` int(11) NOT NULL,
  `identificacion` varchar(13) NOT NULL,
  `tipo_identifiacion` int(1) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `estatus` varchar(1) NOT NULL COMMENT 'A--> Activo, I --> Inactivo',
  `user_ingreso` varchar(50) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `user_modifca` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductor`
--

INSERT INTO `conductor` (`id_conductor`, `identificacion`, `tipo_identifiacion`, `nombre`, `direccion`, `id_ciudad`, `id_departamento`, `id_pais`, `telefono`, `estatus`, `user_ingreso`, `fecha_ingreso`, `user_modifca`, `fecha_modifica`) VALUES
(1, '0922892923', 1, 'JOSE ANDRES LARA', 'MUCHO LOTE 3ERA ETAPA', 1, 1, 1, '0997201581', 'A', 'USER', '2021-07-08 14:38:01', NULL, NULL),
(2, '0930124564', 1, 'PEPE ANDRES', 'CDLA PORTETE DE TARQUI', 1, 1, 1, '0990609568', 'A', 'USER', '2021-07-08 14:44:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor_x_vehiculo`
--

CREATE TABLE `conductor_x_vehiculo` (
  `id` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `id_conductor` int(11) NOT NULL,
  `estatus` varchar(1) NOT NULL DEFAULT '' COMMENT 'A --> Activo, I --> Inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductor_x_vehiculo`
--

INSERT INTO `conductor_x_vehiculo` (`id`, `id_vehiculo`, `id_conductor`, `estatus`) VALUES
(1, 1, 1, 'A'),
(2, 1, 2, 'A'),
(3, 2, 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estatus` varchar(1) NOT NULL COMMENT 'A --> Activo, I -->Inactivo',
  `user_ingreso` varchar(50) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `user_modifica` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `descripcion`, `estatus`, `user_ingreso`, `fecha_ingreso`, `user_modifica`, `fecha_modifica`) VALUES
(1, 'Guayaquil', 'A', 'user', '2021-07-08 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL COMMENT 'Secuencia unico de la empresa',
  `identificacion` varchar(13) NOT NULL COMMENT 'Numero identificacion (RUC, CEDULA)',
  `tipo_identificacion` int(1) NOT NULL COMMENT '1 -- cedula, 2 --> RUC',
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `id_ciudad` int(11) NOT NULL COMMENT 'id de la tabla de ciudades',
  `id_departamento` int(11) NOT NULL COMMENT 'id de la tabla departamentos',
  `id_pais` int(11) NOT NULL COMMENT 'id de la tabla de paises',
  `telefono` varchar(10) NOT NULL,
  `estatus` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'A--> Activo, I->Inactivo',
  `user_ingresa` varchar(50) DEFAULT NULL,
  `fecha_ingresa` datetime DEFAULT NULL,
  `user_modifica` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `identificacion`, `tipo_identificacion`, `nombre`, `direccion`, `id_ciudad`, `id_departamento`, `id_pais`, `telefono`, `estatus`, `user_ingresa`, `fecha_ingresa`, `user_modifica`, `fecha_modifica`) VALUES
(1, '0922892921', 1, 'DATATOOLS', 'ALBAN BORJA', 1, 1, 1, '0992015487', 'A', 'USER', '2021-07-08 14:29:00', NULL, NULL),
(3, '0922892923', 1, 'PRUEBA DE ACTUALIZAR', 'ALBAN BORJA', 1, 1, 1, '0992015487', 'A', 'USER', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `nombre_modelo` varchar(100) NOT NULL,
  `pasajero_sentado` int(11) NOT NULL,
  `pasajero_pie` int(11) NOT NULL,
  `peso_seco` int(11) NOT NULL COMMENT 'MEdida en KG',
  `peso_bruto` int(11) NOT NULL COMMENT 'Medida en KG',
  `cantidad_puerta` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `linea` varchar(100) DEFAULT NULL,
  `estatus` varchar(1) NOT NULL COMMENT 'A --> Activo I --> Inactivo',
  `user_ingresa` varchar(50) DEFAULT NULL,
  `fecha_ingresa` datetime DEFAULT NULL,
  `user_modifica` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `nombre_modelo`, `pasajero_sentado`, `pasajero_pie`, `peso_seco`, `peso_bruto`, `cantidad_puerta`, `id_marca`, `linea`, `estatus`, `user_ingresa`, `fecha_ingresa`, `user_modifica`, `fecha_modifica`) VALUES
(1, 'SEDAN', 5, 0, 20, 30, 4, 1, 'SUB', 'A', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `capital` varchar(50) NOT NULL,
  `estatus` varchar(1) NOT NULL,
  `user_ingreso` varchar(50) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `user_modifica` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `descripcion`, `capital`, `estatus`, `user_ingreso`, `fecha_ingreso`, `user_modifica`, `fecha_modifica`) VALUES
(1, 'Ecuador', 'Quito', 'A', 'user', '2021-07-08 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `Id_rol` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `estatus` varchar(1) DEFAULT NULL COMMENT 'A -->Activo, I --> Inactivo',
  `user_ingreso` varchar(50) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `user_modifica` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`Id_rol`, `nombre`, `estatus`, `user_ingreso`, `fecha_ingreso`, `user_modifica`, `fecha_modifica`) VALUES
(1, 'ADMINISTRADOR', 'A', 'USER', '2021-07-08 15:11:34', NULL, NULL),
(2, 'CLIENTE', 'A', 'USER', '2021-07-08 15:11:54', NULL, NULL),
(3, 'CONDUCTOR', 'A', 'USER', '2021-07-08 15:12:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_x_usuario`
--

CREATE TABLE `rol_x_usuario` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol_x_usuario`
--

INSERT INTO `rol_x_usuario` (`id`, `id_usuario`, `id_role`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `estatus` varchar(1) NOT NULL COMMENT 'A --> Activo, I -->Inactivo',
  `user_ingreso` varchar(50) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `user_modifica` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `user`, `pass`, `estatus`, `user_ingreso`, `fecha_ingreso`, `user_modifica`, `fecha_modifica`) VALUES
(1, 'JOE ANDRES LARA', 'jlara', '1234', 'A', 'USER', '2021-07-08 15:11:11', NULL, NULL),
(2, 'AARON ALAVA', 'aalava', '12345', 'A', 'USER', '2021-07-08 15:14:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_x_empresa`
--

CREATE TABLE `usuario_x_empresa` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `estatus` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_x_empresa`
--

INSERT INTO `usuario_x_empresa` (`id`, `id_empresa`, `id_usuario`, `estatus`) VALUES
(1, 1, 1, 'A'),
(2, 1, 2, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(11) NOT NULL COMMENT 'secuencial unico del vehiculo',
  `placa` varchar(10) NOT NULL,
  `motor` varchar(50) NOT NULL,
  `chasis` varchar(100) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `fecha_matricula` date NOT NULL,
  `estatus` varchar(1) NOT NULL COMMENT 'A-- Activo, I --> Inactivo',
  `user_ingresa` varchar(50) DEFAULT NULL,
  `fecha_ingresa` datetime DEFAULT NULL,
  `user_modifica` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_vehiculo`, `placa`, `motor`, `chasis`, `id_modelo`, `fecha_matricula`, `estatus`, `user_ingresa`, `fecha_ingresa`, `user_modifica`, `fecha_modifica`) VALUES
(1, 'GSP5013', 'WS234', 'QWE1233', 1, '2021-07-07', 'A', 'USER', '2021-07-08 14:38:40', NULL, NULL),
(2, 'GSP5020', 'KLOD1234', 'WUGV4555', 1, '2021-06-28', 'A', 'USER', '2021-07-08 15:51:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo_x_empresa`
--

CREATE TABLE `vehiculo_x_empresa` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `estatus` varchar(1) NOT NULL COMMENT 'A --> Activo, I --> Inactivo',
  `user_ingreso` varchar(50) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `user_modifica` varchar(50) DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo_x_empresa`
--

INSERT INTO `vehiculo_x_empresa` (`id`, `id_empresa`, `id_vehiculo`, `estatus`, `user_ingreso`, `fecha_ingreso`, `user_modifica`, `fecha_modifica`) VALUES
(1, 1, 1, 'A', 'USER', '2021-07-08 14:46:50', NULL, NULL),
(2, 1, 2, 'A', 'USER', '2021-07-08 15:53:00', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`id_conductor`),
  ADD UNIQUE KEY `Idx1` (`identificacion`),
  ADD KEY `forenkey_pais` (`id_pais`),
  ADD KEY `forenkey_ciudad` (`id_ciudad`),
  ADD KEY `forenkey_departamento` (`id_departamento`);

--
-- Indices de la tabla `conductor_x_vehiculo`
--
ALTER TABLE `conductor_x_vehiculo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Idx1` (`id_vehiculo`,`id_conductor`),
  ADD KEY `Forenkey_conductor` (`id_conductor`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD UNIQUE KEY `Idx1` (`identificacion`),
  ADD KEY `forengkey_pais` (`id_pais`),
  ADD KEY `forengkey_ciudad` (`id_ciudad`),
  ADD KEY `forengley_departamento` (`id_departamento`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Id_rol`);

--
-- Indices de la tabla `rol_x_usuario`
--
ALTER TABLE `rol_x_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forengkey_rol` (`id_role`),
  ADD KEY `forengkey_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuario_x_empresa`
--
ALTER TABLE `usuario_x_empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forengkey_idempresa` (`id_empresa`),
  ADD KEY `forengkey_idusuario` (`id_usuario`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD UNIQUE KEY `Idx1` (`placa`),
  ADD KEY `Forenkey_modelo` (`id_modelo`);

--
-- Indices de la tabla `vehiculo_x_empresa`
--
ALTER TABLE `vehiculo_x_empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Idx1` (`id_empresa`,`id_vehiculo`),
  ADD KEY `forengkey_vehiculo` (`id_vehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico de la ciudad', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `conductor`
--
ALTER TABLE `conductor`
  MODIFY `id_conductor` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico del conductor', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `conductor_x_vehiculo`
--
ALTER TABLE `conductor_x_vehiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id_pais` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `Id_rol` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `rol_x_usuario`
--
ALTER TABLE `rol_x_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico de la empresa', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vehiculo_x_empresa`
--
ALTER TABLE `vehiculo_x_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Secuencia unico', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `usuario_x_empresa`
--
ALTER TABLE `usuario_x_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD CONSTRAINT `forenkey_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  ADD CONSTRAINT `forenkey_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`),
  ADD CONSTRAINT `forenkey_pais` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`);

--
-- Filtros para la tabla `conductor_x_vehiculo`
--
ALTER TABLE `conductor_x_vehiculo`
  ADD CONSTRAINT `Forenkey_conductor` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`),
  ADD CONSTRAINT `Forenkey_vehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `forengkey_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  ADD CONSTRAINT `forengkey_pais` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`),
  ADD CONSTRAINT `forengley_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Filtros para la tabla `rol_x_usuario`
--
ALTER TABLE `rol_x_usuario`
  ADD CONSTRAINT `forengkey_rol` FOREIGN KEY (`id_role`) REFERENCES `rol` (`Id_rol`),
  ADD CONSTRAINT `forengkey_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario_x_empresa`
--
ALTER TABLE `usuario_x_empresa`
  ADD CONSTRAINT `forengkey_idempresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`),
  ADD CONSTRAINT `forengkey_idusuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `Forenkey_modelo` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id_modelo`);

--
-- Filtros para la tabla `vehiculo_x_empresa`
--
ALTER TABLE `vehiculo_x_empresa`
  ADD CONSTRAINT `forengkey_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`),
  ADD CONSTRAINT `forengkey_vehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
