-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2019 a las 05:34:43
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scool`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` int(11) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `fecha` date NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `tipo`, `fecha`, `id_estudiante`, `id_grado`) VALUES
(1, '1', '2018-08-01', 34, 70),
(2, '1', '2018-08-01', 35, 70),
(3, '1', '2019-12-09', 37, 73),
(4, '1', '2019-12-09', 38, 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a_academico`
--

CREATE TABLE `a_academico` (
  `id_a` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `anio` int(11) DEFAULT NULL,
  `estado` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `a_academico`
--

INSERT INTO `a_academico` (`id_a`, `nombre`, `anio`, `estado`) VALUES
(6, '2019B', 2019, 'Abierto'),
(5, '2019A', 2019, 'Cerrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque_cal`
--

CREATE TABLE `bloque_cal` (
  `id` int(11) NOT NULL,
  `nom_cal` varchar(80) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bloque_cal`
--

INSERT INTO `bloque_cal` (`id`, `nom_cal`, `id_grado`) VALUES
(1, 'ingles', 70),
(2, 'qyechua', 70),
(3, 'Ciencias', 70),
(4, 'Literatura', 70),
(5, 'Ed. Fisica', 70),
(6, 'ingles', 69),
(7, 'Literatura', 69),
(8, 'Ed. Fisica', 69),
(9, 'Sistemas Distribuidos', 73),
(10, 'Programacion Orientado a Objetos', 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conducta`
--

CREATE TABLE `conducta` (
  `id` int(11) NOT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  `date_at` date DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `profesor` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nombre`, `profesor`) VALUES
(31, 'Sistemas Distribuidos', ''),
(30, 'Programacion Orientado a Objetos', 'Oscar Mateo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `nombre`) VALUES
(1, 'activo'),
(2, 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `genero` varchar(20) NOT NULL,
  `fecha_nac` varchar(10) NOT NULL,
  `apoderado` varchar(100) DEFAULT NULL,
  `num_cel` varchar(50) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `fecha_reg` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `dni`, `apellido_paterno`, `apellido_materno`, `nombre`, `genero`, `fecha_nac`, `apoderado`, `num_cel`, `direccion`, `estado`, `fecha_reg`, `user_id`) VALUES
(37, '1726082983', 'Peñaherrera', 'Saltos', 'Tamar', 'Femenino', '25/10/2000', 'Paulina', '0928309189', 'Pomasqui', 'activo', '2019-12-09', 1),
(38, '1726082983', 'Nuñez', 'Castillo', 'Viviana', 'Femenino', '31/05/1999', '', '09809088', 'Puente 3', 'activo', '2019-12-09', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `est_gra`
--

CREATE TABLE `est_gra` (
  `id` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `est_gra`
--

INSERT INTO `est_gra` (`id`, `id_estudiante`, `id_grado`) VALUES
(8, 34, 70),
(9, 35, 70),
(10, 36, 69),
(11, 37, 73),
(12, 38, 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `genero` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `nivel` varchar(20) NOT NULL,
  `fav` int(1) NOT NULL,
  `id_prof` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre`, `nivel`, `fav`, `id_prof`) VALUES
(73, 'Programacion', 'Primer', 1, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gra_cu`
--

CREATE TABLE `gra_cu` (
  `id_gra_cu` int(11) NOT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `curso` int(11) NOT NULL,
  `cu` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id_nivel` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id_nivel`, `nombre`) VALUES
(1, 'Primer'),
(2, 'Segundo'),
(4, 'Tercer'),
(5, 'Cuarto'),
(6, 'Quinto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `id_nomina` int(11) NOT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `id_a` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_bloque` int(11) NOT NULL,
  `nota` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `id_estudiante`, `id_bloque`, `nota`) VALUES
(1, 34, 1, '18'),
(2, 35, 1, '14'),
(3, 36, 6, '12'),
(4, 36, 7, '13'),
(5, 36, 8, '15'),
(6, 37, 9, '10'),
(7, 38, 9, '10'),
(8, 37, 10, '10'),
(9, 38, 10, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_prof` int(11) NOT NULL,
  `dni` int(11) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(80) NOT NULL,
  `num_cel` varchar(20) DEFAULT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_prof`, `dni`, `nombres`, `apellidos`, `num_cel`, `especialidad`, `email`, `direccion`) VALUES
(13, 1726082983, 'Oscar Mateo', 'Peñaherrera Saltos', '0999496113', 'Analisis Sistemas Informáticos', 'oscarmateo1997@gmail.com', 'Calderón'),
(14, 1282772121, 'Victor Omar', 'Espin Trujillo', '0980980982', 'Programacion', 'victor@gmail.com', 'Guamani');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `kind` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_prof`, `name`, `lastname`, `username`, `password`, `email`, `image`, `status`, `kind`, `created_at`) VALUES
(1, 1, 'Administrador', 'admin', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', NULL, NULL, 1, 1, '2018-07-15 13:36:00'),
(27, 9, 'Daniel', 'danielito dadielito', '12345678', '4c80d78769a425ac383c23e2578b0ad56a0a6806', 'profesor@gmail.com', NULL, 1, 0, '2018-08-12 13:19:03'),
(28, 13, 'Oscar Mateo', 'Peñaherrera Saltos', '1726082983', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'oscarmateo1997@gmail.com', NULL, 1, 1, '2019-12-09 19:08:25'),
(29, 13, 'Oscar Mateo', 'Peñaherrera Saltos', '1726082983', '09b340254021f948edecb1eb4757b640e609dc0a', 'oscarmateo1997@gmail.com', NULL, 1, 0, '2019-12-09 23:19:09'),
(30, 14, 'Victor Omar', 'Espin Trujillo', '1282772121', 'fe703d258c7ef5f50b71e06565a65aa07194907f', 'victor@gmail.com', NULL, 1, 0, '2019-12-09 23:19:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_curso` (`id_estudiante`),
  ADD KEY `id_nomina` (`id_grado`);

--
-- Indices de la tabla `a_academico`
--
ALTER TABLE `a_academico`
  ADD PRIMARY KEY (`id_a`);

--
-- Indices de la tabla `bloque_cal`
--
ALTER TABLE `bloque_cal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `conducta`
--
ALTER TABLE `conducta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`) USING BTREE;

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `est_gra`
--
ALTER TABLE `est_gra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`),
  ADD KEY `user_id` (`id_prof`);

--
-- Indices de la tabla `gra_cu`
--
ALTER TABLE `gra_cu`
  ADD PRIMARY KEY (`id_gra_cu`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `curso` (`curso`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`id_nomina`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_a` (`id_a`),
  ADD KEY `id_grado` (`id_grado`) USING BTREE;

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_bloque` (`id_bloque`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_prof`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `a_academico`
--
ALTER TABLE `a_academico`
  MODIFY `id_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `bloque_cal`
--
ALTER TABLE `bloque_cal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `conducta`
--
ALTER TABLE `conducta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `est_gra`
--
ALTER TABLE `est_gra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `gra_cu`
--
ALTER TABLE `gra_cu`
  MODIFY `id_gra_cu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `nomina`
--
ALTER TABLE `nomina`
  MODIFY `id_nomina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
