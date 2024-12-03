-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 10-04-2024 a las 17:57:02
-- Versión del servidor: 10.11.7-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u890874586_bdsidat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_protegido`
--

CREATE TABLE `contenido_protegido` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `required_role` enum('Admin','Operador','Consulta') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `usuario` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `action`, `fecha`, `usuario`, `descripcion`) VALUES
(1, 'Registro de Usuario', '2023-09-29 15:30:32', 'ok', 'Se ha registrado un nuevo usuario con el nombre: PruebaHistorico4'),
(2, 'Registro de Usuario', '2023-09-29 15:37:28', 'ok', '1'),
(3, 'Registro de Usuario', '2023-09-29 15:37:38', 'ok', '1'),
(4, 'Registro de Usuario', '2023-09-29 15:38:24', 'ok', '1'),
(5, 'Registro de Usuario', '2023-09-29 15:38:45', 'ok', 'Se ha registrado una nueva Organizacion con el nombre: PruebaHistorico3'),
(6, 'Registro de Usuario', '2023-09-29 15:40:53', 'ok', 'Se ha registrado una nueva Organizacion con el nombre: PruebaHistorico4 y de tipo: Bus'),
(7, 'Registro de Usuario', '2023-09-29 15:41:34', 'ok', 'Se ha registrado una nueva unidad 111en la Organizacion: 6'),
(8, 'Registro de Usuario', '2023-09-29 16:05:26', 'Admin', 'Se ha registrado una nueva Organizacion con el nombre: PruebaHistorico5 y de tipo: Moto-Taxi'),
(9, 'Registro de Usuario', '2023-09-29 16:46:50', 'Admin', 'Se ha registrado un nuevo usuario con el nombre: '),
(10, 'Registro de Unidad', '2023-10-03 14:47:05', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: 5'),
(11, 'Registro de Unidad', '2023-10-03 14:49:02', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: 5'),
(12, 'Ingreso al  sistema', '2023-10-04 15:16:07', NULL, 'Ha ingresado al sistema: '),
(13, 'Ingreso al  sistema', '2023-10-04 15:16:32', 'Admin', 'Ha ingresado al sistema: Admin'),
(14, 'Ingreso al  sistema', '2023-10-04 15:17:00', 'Admin', 'Ha ingresado al sistema: Admin'),
(15, 'Actualización de datos', '2023-10-04 15:17:52', 'Admin', 'Se ha registrado un cambio en el Usuario: PruebaEditar2   '),
(16, 'Ingreso al  sistema', '2023-10-04 15:27:14', 'Admin', 'Ha ingresado al sistema: Admin'),
(17, 'Registro de Usuario', '2023-10-04 15:27:29', 'Admin', 'Se ha registrado un nuevo usuario con el nombre: LGuerrero'),
(18, 'Ingreso al  sistema', '2023-10-04 15:28:16', 'Admin', 'Ha ingresado al sistema: Admin'),
(19, 'Ingreso al  sistema', '2023-10-04 15:32:55', 'Admin', 'Ha ingresado al sistema: Admin'),
(20, 'Ingreso al  sistema', '2023-10-04 15:34:14', 'LGuerrero', 'Ha ingresado al sistema: LGuerrero'),
(21, 'Ingreso al  sistema', '2023-10-04 15:35:27', 'Admin', 'Ha ingresado al sistema: Admin'),
(22, 'Ingreso al  sistema', '2023-10-05 13:51:56', 'Admin', 'Ha ingresado al sistema: Admin'),
(23, 'Registro de Unidad', '2023-10-06 17:54:58', 'Admin', 'Se ha registrado una nueva unidad 200en la Organizacion: 1'),
(24, 'Registro de Unidad', '2023-10-06 18:18:48', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: Seleccione una organización'),
(25, 'Registro de Unidad', '2023-10-06 18:19:14', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: Seleccione una organización'),
(26, 'Registro de Unidad', '2023-10-06 18:20:29', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: Seleccione una organización'),
(27, 'Registro de Unidad', '2023-10-06 18:20:53', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: Seleccione una organización'),
(28, 'Registro de Unidad', '2023-10-09 12:19:01', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: Seleccione una organización'),
(29, 'Registro de Unidad', '2023-10-09 12:20:11', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: Seleccione una organización'),
(30, 'Registro de Unidad', '2023-10-09 12:20:14', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: Seleccione una organización'),
(31, 'Registro de Unidad', '2023-10-09 12:20:38', 'Admin', 'Se ha registrado una nueva unidad 552en la Organizacion: Seleccione una organización'),
(32, 'Registro de Organización', '2023-10-09 12:21:10', 'Admin', 'Se ha registrado una nueva Organizacion con el nombre: Prueba y de tipo: Bus'),
(33, 'Registro de Usuario', '2023-10-09 12:21:20', 'Admin', 'Se ha registrado un nuevo usuario con el nombre: PruebaHistorico2'),
(34, 'Registro de Unidad', '2023-10-09 12:21:52', 'Admin', 'Se ha registrado una nueva unidad 113en la Organizacion: 1'),
(35, 'Registro de Unidad', '2023-10-09 12:23:03', 'Admin', 'Se ha registrado una nueva unidad 113en la Organizacion: 4'),
(36, 'Registro de Unidad', '2023-10-09 12:24:04', 'Admin', 'Se ha registrado una nueva unidad 552 en la Organizacion: 1'),
(37, 'Registro de Unidad', '2023-10-09 13:04:08', 'Admin', 'Se ha registrado una nueva unidad 113 en la Organizacion: 1'),
(38, 'Registro de Unidad', '2023-10-09 15:59:39', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: 1'),
(39, 'Ingreso al  sistema', '2023-10-10 12:31:40', 'Admin', 'Ha ingresado al sistema: Admin'),
(40, 'Actualización de datos', '2023-10-10 12:32:48', 'Admin', 'Se ha registrado un cambio en la Organizacion con el nombre: Libertaxis'),
(41, 'Registro de Organización', '2023-10-10 12:37:51', 'Admin', 'Se ha registrado una nueva Organizacion con el nombre: Taxi 23 Enero y de tipo: Taxi'),
(42, 'Registro de Unidad', '2023-10-10 12:41:51', 'Admin', 'Se ha registrado una nueva unidad 105 en la Organizacion: 11'),
(43, 'Ingreso al  sistema', '2023-10-10 13:04:28', 'Admin', 'Ha ingresado al sistema: Admin'),
(44, 'Actualización de datos', '2023-10-10 14:38:40', 'Admin', 'Se ha registrado un cambio en la Organizacion con el nombre: Asociacion Civil Propatria Carmelita Chacaito'),
(45, 'Actualización de datos', '2023-10-10 14:39:52', 'Admin', 'Se ha registrado un cambio en la Organizacion con el nombre: Asociación Civil de Conductores Casalta Chacaito Cafetal'),
(46, 'Ingreso al  sistema', '2023-10-11 12:37:52', 'Admin', 'Ha ingresado al sistema: Admin'),
(47, 'Ingreso al  sistema', '2023-10-11 18:18:07', 'Admin', 'Ha ingresado al sistema: Admin'),
(48, 'Ingreso al  sistema', '2023-10-13 15:20:46', 'Admin', 'Ha ingresado al sistema: Admin'),
(49, 'Ingreso al  sistema', '2023-10-16 13:00:26', 'Admin', 'Ha ingresado al sistema: Admin'),
(50, 'Registro de Unidad', '2023-10-16 13:01:46', 'Admin', 'Se ha registrado una nueva unidad 001 en la Organizacion: 1'),
(51, 'Registro de Unidad', '2023-10-16 13:02:23', 'Admin', 'Se ha registrado una nueva unidad 001 en la Organizacion: 1'),
(52, 'Registro de Usuario', '2023-10-16 13:06:30', 'Admin', 'Se ha registrado un nuevo usuario con el nombre: HMorales'),
(53, 'Registro de Usuario', '2023-10-16 13:06:39', 'Admin', 'Se ha registrado un nuevo usuario con el nombre: MInfante'),
(54, 'Ingreso al  sistema', '2023-10-16 13:12:52', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(55, 'Ingreso al  sistema', '2023-10-16 13:13:43', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(56, 'Registro de Unidad', '2023-10-16 13:25:15', 'HMorales', 'Se ha registrado una nueva unidad 01 en la Organizacion: 1'),
(57, 'Registro de Usuario', '2023-10-16 13:26:29', 'Admin', 'Se ha registrado un nuevo usuario con el nombre: MMoreno'),
(58, 'Ingreso al  sistema', '2023-10-16 13:26:51', 'MMoreno', 'Ha ingresado al sistema: MMoreno'),
(59, 'Registro de Unidad', '2023-10-16 13:32:13', 'HMorales', 'Se ha registrado una nueva unidad 02 en la Organizacion: 1'),
(60, 'Registro de Unidad', '2023-10-16 13:39:23', 'HMorales', 'Se ha registrado una nueva unidad 03 en la Organizacion: 1'),
(61, 'Ingreso al  sistema', '2023-10-16 13:42:55', 'Admin', 'Ha ingresado al sistema: Admin'),
(62, 'Registro de Unidad', '2023-10-16 13:44:17', 'Admin', 'Se ha registrado una nueva unidad 552 en la Organizacion: 9'),
(63, 'Registro de Unidad', '2023-10-16 13:45:15', 'HMorales', 'Se ha registrado una nueva unidad 04 en la Organizacion: 1'),
(64, 'Registro de Unidad', '2023-10-16 13:45:18', 'MInfante', 'Se ha registrado una nueva unidad 003 en la Organizacion: 2'),
(65, 'Registro de Unidad', '2023-10-16 13:45:22', 'MMoreno', 'Se ha registrado una nueva unidad 182 en la Organizacion: 1'),
(66, 'Registro de Unidad', '2023-10-16 13:48:20', 'MInfante', 'Se ha registrado una nueva unidad 007 en la Organizacion: 2'),
(67, 'Registro de Unidad', '2023-10-16 13:49:24', 'Admin', 'Se ha registrado una nueva unidad 552 en la Organizacion: 9'),
(68, 'Registro de Unidad', '2023-10-16 13:54:27', 'HMorales', 'Se ha registrado una nueva unidad 05 en la Organizacion: 1'),
(69, 'Registro de Unidad', '2023-10-16 13:55:21', 'MMoreno', 'Se ha registrado una nueva unidad 183 en la Organizacion: 1'),
(70, 'Registro de Unidad', '2023-10-16 13:57:45', 'HMorales', 'Se ha registrado una nueva unidad 06 en la Organizacion: 1'),
(71, 'Registro de Unidad', '2023-10-16 14:06:11', 'MInfante', 'Se ha registrado una nueva unidad 026 en la Organizacion: 2'),
(72, 'Registro de Unidad', '2023-10-16 14:10:37', 'HMorales', 'Se ha registrado una nueva unidad 16 en la Organizacion: 1'),
(73, 'Registro de Unidad', '2023-10-16 14:13:48', 'MInfante', 'Se ha registrado una nueva unidad 027 en la Organizacion: Seleccione una organización'),
(74, 'Registro de Unidad', '2023-10-16 14:14:47', 'HMorales', 'Se ha registrado una nueva unidad 17 en la Organizacion: 1'),
(75, 'Registro de Unidad', '2023-10-16 14:15:39', 'MInfante', 'Se ha registrado una nueva unidad 027 en la Organizacion: 2'),
(76, 'Registro de Unidad', '2023-10-16 14:16:18', 'MMoreno', 'Se ha registrado una nueva unidad 189 en la Organizacion: 1'),
(77, 'Ingreso al  sistema', '2023-10-16 14:18:03', 'Admin', 'Ha ingresado al sistema: Admin'),
(78, 'Registro de Unidad', '2023-10-16 14:21:05', 'HMorales', 'Se ha registrado una nueva unidad 18 en la Organizacion: 1'),
(79, 'Registro de Unidad', '2023-10-16 14:23:36', 'HMorales', 'Se ha registrado una nueva unidad 21 en la Organizacion: 1'),
(80, 'Registro de Unidad', '2023-10-16 14:25:30', 'MMoreno', 'Se ha registrado una nueva unidad 193 en la Organizacion: 1'),
(81, 'Registro de Unidad', '2023-10-16 14:29:41', 'HMorales', 'Se ha registrado una nueva unidad 23 en la Organizacion: 1'),
(82, 'Registro de Unidad', '2023-10-16 14:33:24', 'MMoreno', 'Se ha registrado una nueva unidad 194 en la Organizacion: 1'),
(83, 'Registro de Unidad', '2023-10-16 14:35:48', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: 1'),
(84, 'Registro de Unidad', '2023-10-16 14:38:35', 'MMoreno', 'Se ha registrado una nueva unidad 203 en la Organizacion: 1'),
(85, 'Registro de Unidad', '2023-10-16 14:39:57', 'HMorales', 'Se ha registrado una nueva unidad 29 en la Organizacion: 1'),
(86, 'Registro de Unidad', '2023-10-16 14:44:18', 'MMoreno', 'Se ha registrado una nueva unidad 204 en la Organizacion: 1'),
(87, 'Registro de Unidad', '2023-10-16 14:49:57', 'MInfante', 'Se ha registrado una nueva unidad 056 en la Organizacion: 2'),
(88, 'Registro de Unidad', '2023-10-16 14:54:58', 'MMoreno', 'Se ha registrado una nueva unidad 205 en la Organizacion: 1'),
(89, 'Registro de Unidad', '2023-10-16 14:56:49', 'MInfante', 'Se ha registrado una nueva unidad 069 en la Organizacion: 2'),
(90, 'Registro de Unidad', '2023-10-16 15:01:54', 'MMoreno', 'Se ha registrado una nueva unidad 206 en la Organizacion: 1'),
(91, 'Registro de Unidad', '2023-10-16 15:05:19', 'HMorales', 'Se ha registrado una nueva unidad 38 en la Organizacion: 1'),
(92, 'Registro de Unidad', '2023-10-16 15:08:11', 'MMoreno', 'Se ha registrado una nueva unidad 214 en la Organizacion: 1'),
(93, 'Registro de Unidad', '2023-10-16 15:11:54', 'HMorales', 'Se ha registrado una nueva unidad 47 en la Organizacion: 1'),
(94, 'Registro de Unidad', '2023-10-16 15:14:12', 'MMoreno', 'Se ha registrado una nueva unidad 215 en la Organizacion: 1'),
(95, 'Registro de Unidad', '2023-10-16 15:18:32', 'MMoreno', 'Se ha registrado una nueva unidad 218 en la Organizacion: 1'),
(96, 'Registro de Unidad', '2023-10-16 15:23:21', 'MMoreno', 'Se ha registrado una nueva unidad 2020 en la Organizacion: 1'),
(97, 'Registro de Unidad', '2023-10-16 15:29:38', 'HMorales', 'Se ha registrado una nueva unidad 49 en la Organizacion: 1'),
(98, 'Registro de Unidad', '2023-10-16 15:30:14', 'MMoreno', 'Se ha registrado una nueva unidad 221 en la Organizacion: 1'),
(99, 'Registro de Unidad', '2023-10-16 15:32:24', 'HMorales', 'Se ha registrado una nueva unidad 54 en la Organizacion: 1'),
(100, 'Registro de Unidad', '2023-10-16 15:32:42', 'MInfante', 'Se ha registrado una nueva unidad 144 en la Organizacion: 2'),
(101, 'Registro de Unidad', '2023-10-16 15:34:43', 'MMoreno', 'Se ha registrado una nueva unidad 222 en la Organizacion: 1'),
(102, 'Registro de Unidad', '2023-10-16 15:36:02', 'HMorales', 'Se ha registrado una nueva unidad 56 en la Organizacion: 1'),
(103, 'Registro de Unidad', '2023-10-16 15:38:38', 'MMoreno', 'Se ha registrado una nueva unidad 224 en la Organizacion: 1'),
(104, 'Registro de Unidad', '2023-10-16 15:41:28', 'MInfante', 'Se ha registrado una nueva unidad 159 en la Organizacion: Seleccione una organización'),
(105, 'Registro de Unidad', '2023-10-16 15:43:36', 'MMoreno', 'Se ha registrado una nueva unidad 225 en la Organizacion: 1'),
(106, 'Registro de Unidad', '2023-10-16 15:43:47', 'HMorales', 'Se ha registrado una nueva unidad 61 en la Organizacion: 1'),
(107, 'Registro de Unidad', '2023-10-16 15:45:27', 'MInfante', 'Se ha registrado una nueva unidad 158 en la Organizacion: 2'),
(108, 'Registro de Unidad', '2023-10-16 15:50:27', 'MMoreno', 'Se ha registrado una nueva unidad 232 en la Organizacion: 1'),
(109, 'Registro de Unidad', '2023-10-16 15:52:53', 'MInfante', 'Se ha registrado una nueva unidad 163 en la Organizacion: 2'),
(110, 'Ingreso al  sistema', '2023-10-16 15:52:59', 'Admin', 'Ha ingresado al sistema: Admin'),
(111, 'Registro de Unidad', '2023-10-16 15:54:22', 'HMorales', 'Se ha registrado una nueva unidad 70 en la Organizacion: 1'),
(112, 'Registro de Unidad', '2023-10-16 15:59:45', 'HMorales', 'Se ha registrado una nueva unidad 71 en la Organizacion: 1'),
(113, 'Registro de Unidad', '2023-10-16 16:01:53', 'HMorales', 'Se ha registrado una nueva unidad 72 en la Organizacion: 1'),
(114, 'Registro de Unidad', '2023-10-16 16:04:10', 'HMorales', 'Se ha registrado una nueva unidad 74 en la Organizacion: 1'),
(115, 'Registro de Unidad', '2023-10-16 16:12:17', 'HMorales', 'Se ha registrado una nueva unidad 77 en la Organizacion: 1'),
(116, 'Ingreso al  sistema', '2023-10-16 17:36:39', 'MMoreno', 'Ha ingresado al sistema: MMoreno'),
(117, 'Registro de Unidad', '2023-10-16 17:42:19', 'MMoreno', 'Se ha registrado una nueva unidad 242 en la Organizacion: 1'),
(118, 'Registro de Unidad', '2023-10-16 17:49:29', 'MMoreno', 'Se ha registrado una nueva unidad 251 en la Organizacion: 1'),
(119, 'Ingreso al  sistema', '2023-10-17 13:26:42', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(120, 'Ingreso al  sistema', '2023-10-17 13:26:50', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(121, 'Ingreso al  sistema', '2023-10-17 13:30:01', 'Admin', 'Ha ingresado al sistema: Admin'),
(122, 'Ingreso al  sistema', '2023-10-17 13:35:35', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(123, 'Registro de Unidad', '2023-10-17 13:43:47', 'HMorales', 'Se ha registrado una nueva unidad 86 en la Organizacion: 1'),
(124, 'Registro de Unidad', '2023-10-17 13:47:11', 'HMorales', 'Se ha registrado una nueva unidad 92 en la Organizacion: 1'),
(125, 'Registro de Unidad', '2023-10-17 13:51:28', 'MInfante', 'Se ha registrado una nueva unidad 197 en la Organizacion: 2'),
(126, 'Registro de Unidad', '2023-10-17 13:55:55', 'HMorales', 'Se ha registrado una nueva unidad 99 en la Organizacion: 1'),
(127, 'Registro de Unidad', '2023-10-17 14:00:12', 'HMorales', 'Se ha registrado una nueva unidad 101 en la Organizacion: 1'),
(128, 'Registro de Unidad', '2023-10-17 14:01:21', 'MInfante', 'Se ha registrado una nueva unidad 211 en la Organizacion: 2'),
(129, 'Registro de Unidad', '2023-10-17 14:02:26', 'HMorales', 'Se ha registrado una nueva unidad 104 en la Organizacion: 1'),
(130, 'Registro de Unidad', '2023-10-17 14:04:56', 'HMorales', 'Se ha registrado una nueva unidad 108 en la Organizacion: 1'),
(131, 'Registro de Unidad', '2023-10-17 14:07:34', 'MInfante', 'Se ha registrado una nueva unidad 239 en la Organizacion: 2'),
(132, 'Registro de Unidad', '2023-10-17 14:09:20', 'HMorales', 'Se ha registrado una nueva unidad 109 en la Organizacion: 1'),
(133, 'Registro de Unidad', '2023-10-17 14:10:20', 'MInfante', 'Se ha registrado una nueva unidad 243 en la Organizacion: 2'),
(134, 'Registro de Unidad', '2023-10-17 14:12:46', 'HMorales', 'Se ha registrado una nueva unidad 110 en la Organizacion: 1'),
(135, 'Registro de Unidad', '2023-10-17 14:18:38', 'HMorales', 'Se ha registrado una nueva unidad 119 en la Organizacion: 1'),
(136, 'Registro de Unidad', '2023-10-17 14:24:09', 'HMorales', 'Se ha registrado una nueva unidad 120 en la Organizacion: 1'),
(137, 'Registro de Unidad', '2023-10-17 14:30:23', 'HMorales', 'Se ha registrado una nueva unidad 122 en la Organizacion: 1'),
(138, 'Registro de Unidad', '2023-10-17 14:32:35', 'HMorales', 'Se ha registrado una nueva unidad 124 en la Organizacion: 1'),
(139, 'Ingreso al  sistema', '2023-10-17 14:41:41', 'MMoreno', 'Ha ingresado al sistema: MMoreno'),
(140, 'Registro de Unidad', '2023-10-17 14:44:40', 'HMorales', 'Se ha registrado una nueva unidad 129 en la Organizacion: 1'),
(141, 'Registro de Unidad', '2023-10-17 14:51:01', 'MInfante', 'Se ha registrado una nueva unidad 292 en la Organizacion: 1'),
(142, 'Registro de Unidad', '2023-10-17 14:51:13', 'HMorales', 'Se ha registrado una nueva unidad 133 en la Organizacion: 1'),
(143, 'Registro de Unidad', '2023-10-17 14:52:02', 'MMoreno', 'Se ha registrado una nueva unidad 254 en la Organizacion: 1'),
(144, 'Registro de Unidad', '2023-10-17 14:54:02', 'MInfante', 'Se ha registrado una nueva unidad 293 en la Organizacion: 1'),
(145, 'Registro de Unidad', '2023-10-17 14:54:27', 'HMorales', 'Se ha registrado una nueva unidad 138 en la Organizacion: 1'),
(146, 'Registro de Unidad', '2023-10-17 14:57:12', 'MMoreno', 'Se ha registrado una nueva unidad 259 en la Organizacion: Seleccione una organización'),
(147, 'Registro de Unidad', '2023-10-17 15:00:26', 'MMoreno', 'Se ha registrado una nueva unidad 259 en la Organizacion: 1'),
(148, 'Registro de Unidad', '2023-10-17 15:01:04', 'HMorales', 'Se ha registrado una nueva unidad 144 en la Organizacion: 1'),
(149, 'Registro de Unidad', '2023-10-17 15:04:28', 'HMorales', 'Se ha registrado una nueva unidad 146 en la Organizacion: 1'),
(150, 'Registro de Unidad', '2023-10-17 15:05:04', 'MMoreno', 'Se ha registrado una nueva unidad 263 en la Organizacion: 1'),
(151, 'Registro de Unidad', '2023-10-17 15:05:07', 'MInfante', 'Se ha registrado una nueva unidad 297 en la Organizacion: 1'),
(152, 'Registro de Unidad', '2023-10-17 15:06:41', 'HMorales', 'Se ha registrado una nueva unidad 149 en la Organizacion: 1'),
(153, 'Registro de Unidad', '2023-10-17 15:07:59', 'MInfante', 'Se ha registrado una nueva unidad 301 en la Organizacion: 1'),
(154, 'Registro de Unidad', '2023-10-17 15:08:29', 'HMorales', 'Se ha registrado una nueva unidad 150 en la Organizacion: 1'),
(155, 'Registro de Unidad', '2023-10-17 15:09:29', 'MMoreno', 'Se ha registrado una nueva unidad 264 en la Organizacion: 1'),
(156, 'Registro de Unidad', '2023-10-17 15:10:37', 'HMorales', 'Se ha registrado una nueva unidad 153 en la Organizacion: 1'),
(157, 'Registro de Unidad', '2023-10-17 15:11:22', 'MInfante', 'Se ha registrado una nueva unidad 302 en la Organizacion: 1'),
(158, 'Registro de Unidad', '2023-10-17 15:12:44', 'MMoreno', 'Se ha registrado una nueva unidad 267 en la Organizacion: 1'),
(159, 'Registro de Unidad', '2023-10-17 15:15:22', 'MInfante', 'Se ha registrado una nueva unidad 304 en la Organizacion: 1'),
(160, 'Registro de Unidad', '2023-10-17 15:15:41', 'HMorales', 'Se ha registrado una nueva unidad 163 en la Organizacion: 1'),
(161, 'Registro de Unidad', '2023-10-17 15:17:12', 'MMoreno', 'Se ha registrado una nueva unidad 269 en la Organizacion: 1'),
(162, 'Registro de Unidad', '2023-10-17 15:19:11', 'HMorales', 'Se ha registrado una nueva unidad 164 en la Organizacion: 1'),
(163, 'Registro de Unidad', '2023-10-17 15:21:09', 'HMorales', 'Se ha registrado una nueva unidad 166 en la Organizacion: 1'),
(164, 'Registro de Unidad', '2023-10-17 15:21:54', 'MMoreno', 'Se ha registrado una nueva unidad 277 en la Organizacion: 1'),
(165, 'Registro de Unidad', '2023-10-17 15:23:20', 'HMorales', 'Se ha registrado una nueva unidad 169 en la Organizacion: 1'),
(166, 'Registro de Unidad', '2023-10-17 15:24:02', 'MInfante', 'Se ha registrado una nueva unidad 312 en la Organizacion: 1'),
(167, 'Registro de Unidad', '2023-10-17 15:25:34', 'MMoreno', 'Se ha registrado una nueva unidad 280 en la Organizacion: 1'),
(168, 'Registro de Unidad', '2023-10-17 15:26:48', 'MInfante', 'Se ha registrado una nueva unidad 316 en la Organizacion: 1'),
(169, 'Registro de Unidad', '2023-10-17 15:29:38', 'MMoreno', 'Se ha registrado una nueva unidad 281 en la Organizacion: 1'),
(170, 'Registro de Unidad', '2023-10-17 15:33:48', 'MMoreno', 'Se ha registrado una nueva unidad 284 en la Organizacion: 1'),
(171, 'Registro de Unidad', '2023-10-17 15:36:44', 'MInfante', 'Se ha registrado una nueva unidad 324 en la Organizacion: 1'),
(172, 'Registro de Unidad', '2023-10-17 15:38:09', 'MMoreno', 'Se ha registrado una nueva unidad 285 en la Organizacion: 1'),
(173, 'Registro de Unidad', '2023-10-17 15:41:47', 'MInfante', 'Se ha registrado una nueva unidad 327 en la Organizacion: Seleccione una organización'),
(174, 'Registro de Unidad', '2023-10-17 15:44:06', 'MInfante', 'Se ha registrado una nueva unidad 327 en la Organizacion: 1'),
(175, 'Registro de Unidad', '2023-10-17 15:46:49', 'MMoreno', 'Se ha registrado una nueva unidad 288 en la Organizacion: 1'),
(176, 'Registro de Unidad', '2023-10-17 15:51:22', 'MMoreno', 'Se ha registrado una nueva unidad 289 en la Organizacion: 1'),
(177, 'Ingreso al  sistema', '2023-10-17 16:06:35', 'Admin', 'Ha ingresado al sistema: Admin'),
(178, 'Ingreso al  sistema', '2023-10-18 12:38:49', 'Admin', 'Ha ingresado al sistema: Admin'),
(179, 'Ingreso al  sistema', '2023-10-18 13:21:55', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(180, 'Registro de Organización', '2023-10-18 13:26:50', 'Admin', 'Se ha registrado una nueva Organizacion con el nombre: Sociedad Civil Colinas de Bello Monte y de tipo: Bus'),
(181, 'Registro de Organización', '2023-10-18 13:27:52', 'Admin', 'Se ha registrado una nueva Organizacion con el nombre: Asociación de Conductores Las Minas Chacaito y de tipo: Bus'),
(182, 'Ingreso al  sistema', '2023-10-18 13:28:39', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(183, 'Ingreso al  sistema', '2023-10-18 13:30:36', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(184, 'Registro de Unidad', '2023-10-18 13:33:21', 'MInfante', 'Se ha registrado una nueva unidad 4 en la Organizacion: 12'),
(185, 'Ingreso al  sistema', '2023-10-18 13:33:33', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(186, 'Registro de Unidad', '2023-10-18 13:38:59', 'MInfante', 'Se ha registrado una nueva unidad 15 en la Organizacion: 12'),
(187, 'Registro de Unidad', '2023-10-18 13:45:17', 'MInfante', 'Se ha registrado una nueva unidad 23 en la Organizacion: 12'),
(188, 'Registro de Unidad', '2023-10-18 13:49:48', 'MInfante', 'Se ha registrado una nueva unidad 27 en la Organizacion: 12'),
(189, 'Registro de Unidad', '2023-10-18 13:52:41', 'HMorales', 'Se ha registrado una nueva unidad 04 en la Organizacion: 13'),
(190, 'Registro de Unidad', '2023-10-18 13:54:33', 'MInfante', 'Se ha registrado una nueva unidad 65 en la Organizacion: 12'),
(191, 'Registro de Unidad', '2023-10-18 13:56:34', 'MInfante', 'Se ha registrado una nueva unidad 66 en la Organizacion: 12'),
(192, 'Registro de Unidad', '2023-10-18 13:59:58', 'MInfante', 'Se ha registrado una nueva unidad 67 en la Organizacion: 12'),
(193, 'Registro de Unidad', '2023-10-18 14:11:36', 'MInfante', 'Se ha registrado una nueva unidad 68 en la Organizacion: 12'),
(194, 'Registro de Unidad', '2023-10-18 14:12:07', 'HMorales', 'Se ha registrado una nueva unidad 02 en la Organizacion: 13'),
(195, 'Registro de Unidad', '2023-10-18 14:14:54', 'HMorales', 'Se ha registrado una nueva unidad 03 en la Organizacion: 13'),
(196, 'Registro de Unidad', '2023-10-18 14:18:46', 'MInfante', 'Se ha registrado una nueva unidad 73 en la Organizacion: 12'),
(197, 'Registro de Unidad', '2023-10-18 14:21:44', 'MInfante', 'Se ha registrado una nueva unidad 86 en la Organizacion: 12'),
(198, 'Registro de Unidad', '2023-10-18 14:24:34', 'MInfante', 'Se ha registrado una nueva unidad 89 en la Organizacion: 12'),
(199, 'Registro de Unidad', '2023-10-18 14:28:56', 'MInfante', 'Se ha registrado una nueva unidad 90 en la Organizacion: 12'),
(200, 'Registro de Unidad', '2023-10-18 14:31:17', 'HMorales', 'Se ha registrado una nueva unidad 06 en la Organizacion: 13'),
(201, 'Registro de Unidad', '2023-10-18 14:32:01', 'MInfante', 'Se ha registrado una nueva unidad 91 en la Organizacion: 12'),
(202, 'Registro de Unidad', '2023-10-18 14:35:08', 'HMorales', 'Se ha registrado una nueva unidad 07 en la Organizacion: 13'),
(203, 'Registro de Unidad', '2023-10-18 14:44:17', 'HMorales', 'Se ha registrado una nueva unidad 22 en la Organizacion: 13'),
(204, 'Registro de Unidad', '2023-10-18 14:47:44', 'HMorales', 'Se ha registrado una nueva unidad 26 en la Organizacion: 13'),
(205, 'Registro de Unidad', '2023-10-18 14:54:50', 'HMorales', 'Se ha registrado una nueva unidad 30 en la Organizacion: 13'),
(206, 'Ingreso al  sistema', '2023-10-18 14:55:19', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(207, 'Ingreso al  sistema', '2023-10-18 14:59:36', 'Admin', 'Ha ingresado al sistema: Admin'),
(208, 'Registro de Unidad', '2023-10-18 15:01:48', 'HMorales', 'Se ha registrado una nueva unidad 34 en la Organizacion: 13'),
(209, 'Registro de Unidad', '2023-10-18 15:05:43', 'MInfante', 'Se ha registrado una nueva unidad 55 en la Organizacion: 13'),
(210, 'Registro de Unidad', '2023-10-18 15:06:38', 'HMorales', 'Se ha registrado una nueva unidad 36 en la Organizacion: 13'),
(211, 'Registro de Unidad', '2023-10-18 15:07:20', 'MInfante', 'Se ha registrado una nueva unidad 57 en la Organizacion: 13'),
(212, 'Registro de Unidad', '2023-10-18 15:08:24', 'HMorales', 'Se ha registrado una nueva unidad 39 en la Organizacion: 13'),
(213, 'Registro de Unidad', '2023-10-18 15:08:50', 'MInfante', 'Se ha registrado una nueva unidad 59 en la Organizacion: 13'),
(214, 'Registro de Unidad', '2023-10-18 15:11:55', 'HMorales', 'Se ha registrado una nueva unidad 40 en la Organizacion: 13'),
(215, 'Registro de Unidad', '2023-10-18 15:14:02', 'MInfante', 'Se ha registrado una nueva unidad 64 en la Organizacion: 13'),
(216, 'Registro de Unidad', '2023-10-18 15:16:24', 'HMorales', 'Se ha registrado una nueva unidad 41 en la Organizacion: 13'),
(217, 'Registro de Unidad', '2023-10-18 15:19:39', 'MInfante', 'Se ha registrado una nueva unidad 66 en la Organizacion: 13'),
(218, 'Registro de Unidad', '2023-10-18 15:20:03', 'HMorales', 'Se ha registrado una nueva unidad 43 en la Organizacion: 13'),
(219, 'Registro de Unidad', '2023-10-18 15:26:45', 'HMorales', 'Se ha registrado una nueva unidad 50 en la Organizacion: 13'),
(220, 'Registro de Unidad', '2023-10-18 15:36:05', 'MInfante', 'Se ha registrado una nueva unidad 74 en la Organizacion: 13'),
(221, 'Registro de Unidad', '2023-10-18 15:40:08', 'MInfante', 'Se ha registrado una nueva unidad 77 en la Organizacion: 13'),
(222, 'Registro de Unidad', '2023-10-18 15:43:32', 'HMorales', 'Se ha registrado una nueva unidad 170 en la Organizacion: 1'),
(223, 'Registro de Unidad', '2023-10-18 15:45:11', 'MInfante', 'Se ha registrado una nueva unidad 83 en la Organizacion: 13'),
(224, 'Ingreso al  sistema', '2023-10-18 15:45:16', 'Admin', 'Ha ingresado al sistema: Admin'),
(225, 'Registro de Unidad', '2023-10-18 15:49:43', 'MInfante', 'Se ha registrado una nueva unidad 88 en la Organizacion: 13'),
(226, 'Registro de Unidad', '2023-10-18 15:54:13', 'MInfante', 'Se ha registrado una nueva unidad 94 en la Organizacion: Seleccione una organización'),
(227, 'Ingreso al  sistema', '2023-10-18 18:49:53', 'Admin', 'Ha ingresado al sistema: Admin'),
(228, 'Ingreso al  sistema', '2023-10-19 13:25:37', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(229, 'Registro de Unidad', '2023-10-19 13:34:18', 'MInfante', 'Se ha registrado una nueva unidad 101 en la Organizacion: 13'),
(230, 'Registro de Unidad', '2023-10-19 13:35:49', 'MInfante', 'Se ha registrado una nueva unidad 102 en la Organizacion: Seleccione una organización'),
(231, 'Registro de Unidad', '2023-10-19 13:37:14', 'MInfante', 'Se ha registrado una nueva unidad 102 en la Organizacion: 13'),
(232, 'Consulta de QR', '2023-10-19 14:34:53', 'Admin', 'Se ha consultado el código QR N°: 2023002'),
(233, 'Consulta de QR', '2023-10-19 14:35:06', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(234, 'Actualización de datos', '2023-10-19 14:56:41', 'Admin', 'Se ha registrado un cambio en el Usuario: PruebaEdicion'),
(235, 'Registro de Unidad', '2023-10-19 15:09:57', 'Admin', 'Se ha registrado una nueva unidad 669 en la Organizacion: '),
(236, 'Registro de Unidad', '2023-10-19 15:10:31', 'Admin', 'Se ha registrado una nueva unidad 669 en la Organizacion: '),
(237, 'Registro de Unidad', '2023-10-19 15:10:53', 'Admin', 'Se ha registrado una nueva unidad 669 en la Organizacion: '),
(238, 'Registro de Unidad', '2023-10-19 15:40:58', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: '),
(239, 'Registro de Unidad', '2023-10-19 15:48:41', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: '),
(240, 'Registro de Unidad', '2023-10-19 15:49:04', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: '),
(241, 'Registro de Unidad', '2023-10-19 15:52:17', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: '),
(242, 'Registro de Unidad', '2023-10-19 15:52:34', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: '),
(243, 'Consulta de QR', '2023-10-19 16:45:40', 'Admin', 'Se ha consultado el código QR N°: 2023002'),
(244, 'Consulta de QR', '2023-10-19 16:45:45', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(245, 'Ingreso al  sistema', '2023-10-19 17:21:51', 'Admin', 'Ha ingresado al sistema: Admin'),
(246, 'Consulta de QR', '2023-10-19 17:23:47', 'Admin', 'Se ha consultado el código QR N°: '),
(247, 'Consulta de QR', '2023-10-19 17:24:37', 'Admin', 'Se ha consultado el código QR N°: '),
(248, 'Consulta de QR', '2023-10-19 17:25:22', 'Admin', 'Se ha consultado el código QR N°: '),
(249, 'Consulta de QR', '2023-10-19 17:25:46', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(250, 'Consulta de QR', '2023-10-19 17:26:28', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(251, 'Consulta de QR', '2023-10-20 13:07:34', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(252, 'Consulta de QR', '2023-10-20 13:07:45', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(253, 'Ingreso al  sistema', '2023-10-20 13:40:09', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(254, 'Registro de Unidad', '2023-10-20 13:48:49', 'HMorales', 'Se ha registrado una nueva unidad 185 en la Organizacion: '),
(255, 'Registro de Unidad', '2023-10-20 13:59:31', 'HMorales', 'Se ha registrado una nueva unidad 192 en la Organizacion: '),
(256, 'Registro de Unidad', '2023-10-20 14:03:04', 'HMorales', 'Se ha registrado una nueva unidad 195 en la Organizacion: '),
(257, 'Registro de Unidad', '2023-10-20 14:06:43', 'HMorales', 'Se ha registrado una nueva unidad 200 en la Organizacion: '),
(258, 'Registro de Unidad', '2023-10-20 14:08:59', 'HMorales', 'Se ha registrado una nueva unidad 208 en la Organizacion: '),
(259, 'Registro de Unidad', '2023-10-20 14:11:51', 'HMorales', 'Se ha registrado una nueva unidad 213 en la Organizacion: '),
(260, 'Registro de Unidad', '2023-10-20 14:14:31', 'HMorales', 'Se ha registrado una nueva unidad 228 en la Organizacion: '),
(261, 'Registro de Unidad', '2023-10-20 14:18:45', 'HMorales', 'Se ha registrado una nueva unidad 237 en la Organizacion: '),
(262, 'Registro de Unidad', '2023-10-20 14:21:33', 'HMorales', 'Se ha registrado una nueva unidad 246 en la Organizacion: '),
(263, 'Registro de Unidad', '2023-10-20 14:23:34', 'HMorales', 'Se ha registrado una nueva unidad 248 en la Organizacion: '),
(264, 'Registro de Unidad', '2023-10-20 14:25:13', 'HMorales', 'Se ha registrado una nueva unidad 250 en la Organizacion: '),
(265, 'Registro de Unidad', '2023-10-20 14:32:03', 'HMorales', 'Se ha registrado una nueva unidad 258 en la Organizacion: '),
(266, 'Registro de Unidad', '2023-10-20 14:34:54', 'HMorales', 'Se ha registrado una nueva unidad 273 en la Organizacion: '),
(267, 'Registro de Unidad', '2023-10-20 14:38:57', 'HMorales', 'Se ha registrado una nueva unidad 283 en la Organizacion: '),
(268, 'Registro de Unidad', '2023-10-20 14:43:07', 'HMorales', 'Se ha registrado una nueva unidad 287 en la Organizacion: '),
(269, 'Registro de Unidad', '2023-10-20 14:47:29', 'HMorales', 'Se ha registrado una nueva unidad 291 en la Organizacion: '),
(270, 'Registro de Unidad', '2023-10-20 15:04:30', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: '),
(271, 'Registro de Unidad', '2023-10-20 15:06:35', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: No se encontró la organización'),
(272, 'Registro de Unidad', '2023-10-20 15:12:28', 'Admin', 'Se ha registrado una nueva unidad 111 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(273, 'Consulta de QR', '2023-10-20 17:19:27', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(274, 'Consulta de QR', '2023-10-20 17:20:50', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(275, 'Consulta de QR', '2023-10-20 17:21:36', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(276, 'Consulta de QR', '2023-10-20 17:21:55', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(277, 'Consulta de QR', '2023-10-20 17:22:06', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(278, 'Consulta de QR', '2023-10-20 17:22:19', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(279, 'Consulta de QR', '2023-10-20 17:22:20', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(280, 'Consulta de QR', '2023-10-20 17:23:15', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(281, 'Consulta de QR', '2023-10-20 17:25:47', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(282, 'Consulta de QR', '2023-10-20 17:27:12', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(283, 'Consulta de QR', '2023-10-20 17:27:21', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(284, 'Consulta de QR', '2023-10-20 17:27:48', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(285, 'Consulta de QR', '2023-10-23 13:09:20', NULL, 'Se ha consultado el código QR N°: 20230001'),
(286, 'Consulta de QR', '2023-10-23 13:09:44', NULL, 'Se ha consultado el código QR N°: 20230001'),
(287, 'Consulta de QR', '2023-10-23 13:10:26', NULL, 'Se ha consultado el código QR N°: 20230001'),
(288, 'Consulta de QR', '2023-10-23 13:10:27', NULL, 'Se ha consultado el código QR N°: 20230001'),
(289, 'Consulta de QR', '2023-10-23 13:10:27', NULL, 'Se ha consultado el código QR N°: 20230001'),
(290, 'Consulta de QR', '2023-10-23 13:10:27', NULL, 'Se ha consultado el código QR N°: 20230001'),
(291, 'Consulta de QR', '2023-10-23 13:10:27', NULL, 'Se ha consultado el código QR N°: 20230001'),
(292, 'Consulta de QR', '2023-10-23 13:10:27', NULL, 'Se ha consultado el código QR N°: 20230001'),
(293, 'Consulta de QR', '2023-10-23 13:10:27', NULL, 'Se ha consultado el código QR N°: 20230001'),
(294, 'Consulta de QR', '2023-10-23 13:10:28', NULL, 'Se ha consultado el código QR N°: 20230001'),
(295, 'Consulta de QR', '2023-10-23 13:10:44', NULL, 'Se ha consultado el código QR N°: 20230002'),
(296, 'Consulta de QR', '2023-10-23 13:10:55', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(297, 'Consulta de QR', '2023-10-23 13:11:03', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(298, 'Consulta de QR', '2023-10-23 13:11:06', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(299, 'Ingreso al  sistema', '2023-10-23 13:11:15', 'Admin', 'Ha ingresado al sistema: Admin'),
(300, 'Consulta de QR', '2023-10-23 13:11:37', NULL, 'Se ha consultado el código QR N°: 20230001'),
(301, 'Consulta de QR', '2023-10-23 13:13:03', 'Admin', 'Se ha consultado el código QR N°: 20230002'),
(302, 'Consulta de QR', '2023-10-23 13:18:46', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(303, 'Consulta de QR', '2023-10-23 15:26:10', 'Admin', 'Se ha consultado el código QR N°: 20230003'),
(304, 'Registro de Organización', '2023-10-23 15:44:56', 'Admin', 'Se ha registrado una nueva Organizacion con el nombre: PruebaColor y de tipo: Bus'),
(305, 'Registro de Organización', '2023-10-23 15:54:16', 'Admin', 'Se ha registrado una nueva Organizacion con el nombre: Prueba y de tipo: Bus'),
(306, 'Actualización de datos', '2023-10-23 15:57:51', 'Admin', 'Se ha registrado un cambio en la Organizacion con el nombre: Asociación Civil de Conductores Casalta Chacaito Cafetal'),
(307, 'Consulta de QR', '2023-10-23 18:55:34', 'Admin', 'Se ha consultado el código QR N°: '),
(308, 'Consulta de QR', '2023-10-23 18:58:38', 'Admin', 'Se ha consultado el código QR N°: '),
(309, 'Consulta de QR', '2023-10-23 18:58:44', 'Admin', 'Se ha consultado el código QR N°: '),
(310, 'Consulta de QR', '2023-10-23 18:58:51', 'Admin', 'Se ha consultado el código QR N°: '),
(311, 'Consulta de QR', '2023-10-23 18:58:55', 'Admin', 'Se ha consultado el código QR N°: '),
(312, 'Consulta de QR', '2023-10-23 18:59:33', 'Admin', 'Se ha consultado el código QR N°: 20230003'),
(313, 'Consulta de QR', '2023-10-23 19:27:49', 'Admin', 'Se ha consultado el código QR N°: '),
(314, 'Consulta de QR', '2023-10-24 14:53:32', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(315, 'Consulta de QR', '2023-10-24 14:54:15', 'Admin', 'Se ha consultado el código QR N°: '),
(316, 'Consulta de QR', '2023-10-24 15:13:42', 'Admin', 'Se ha consultado el código QR N°: '),
(317, 'Consulta de QR', '2023-10-24 15:14:17', 'Admin', 'Se ha consultado el código QR N°: '),
(318, 'Consulta de QR', '2023-10-24 15:14:23', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(319, 'Ingreso al  sistema', '2023-10-27 13:46:19', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(320, 'Ingreso al  sistema', '2023-10-27 13:53:13', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(321, 'Ingreso al  sistema', '2023-10-27 13:57:34', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(322, 'Registro de Organización', '2023-10-27 14:06:50', 'MInfante', 'Se ha registrado una nueva Organizacion con el nombre: S.C. Union Baruta-Chacaito-El Hatillo, Linea Sureste y de tipo: Bus'),
(323, 'Registro de Unidad', '2023-10-27 14:10:38', 'MInfante', 'Se ha registrado una nueva unidad 04 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(324, 'Registro de Unidad', '2023-10-27 14:14:38', 'MInfante', 'Se ha registrado una nueva unidad 08 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(325, 'Registro de Unidad', '2023-10-27 14:17:31', 'MInfante', 'Se ha registrado una nueva unidad 15 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(326, 'Registro de Unidad', '2023-10-27 14:22:42', 'MInfante', 'Se ha registrado una nueva unidad 018 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(327, 'Registro de Unidad', '2023-10-27 14:24:35', 'MInfante', 'Se ha registrado una nueva unidad 021 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(328, 'Registro de Unidad', '2023-10-27 14:30:32', 'MInfante', 'Se ha registrado una nueva unidad 027 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(329, 'Registro de Unidad', '2023-10-27 14:32:42', 'MInfante', 'Se ha registrado una nueva unidad 028 en la Organizacion: '),
(330, 'Registro de Unidad', '2023-10-27 14:34:27', 'MInfante', 'Se ha registrado una nueva unidad 028 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(331, 'Registro de Unidad', '2023-10-27 14:40:46', 'MInfante', 'Se ha registrado una nueva unidad 031 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(332, 'Registro de Organización', '2023-10-27 14:41:02', 'HMorales', 'Se ha registrado una nueva Organizacion con el nombre: Asociacion Cooperativa De Transporte Lira y de tipo: Bus'),
(333, 'Registro de Unidad', '2023-10-27 14:43:27', 'MInfante', 'Se ha registrado una nueva unidad 034 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(334, 'Registro de Unidad', '2023-10-27 14:48:19', 'MInfante', 'Se ha registrado una nueva unidad 041 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(335, 'Registro de Unidad', '2023-10-27 14:52:00', 'MInfante', 'Se ha registrado una nueva unidad 044 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(336, 'Registro de Unidad', '2023-10-27 14:53:59', 'HMorales', 'Se ha registrado una nueva unidad 12 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(337, 'Registro de Unidad', '2023-10-27 14:54:17', 'MInfante', 'Se ha registrado una nueva unidad 045 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(338, 'Consulta de QR', '2023-10-27 14:54:19', 'HMorales', 'Se ha consultado el código QR N°: '),
(339, 'Consulta de QR', '2023-10-27 14:54:58', 'HMorales', 'Se ha consultado el código QR N°: '),
(340, 'Consulta de QR', '2023-10-27 14:55:07', 'HMorales', 'Se ha consultado el código QR N°: 20230004'),
(341, 'Registro de Unidad', '2023-10-27 14:57:03', 'MInfante', 'Se ha registrado una nueva unidad 046 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(342, 'Registro de Unidad', '2023-10-27 15:00:30', 'MInfante', 'Se ha registrado una nueva unidad 050 en la Organizacion: '),
(343, 'Consulta de QR', '2023-10-27 15:01:28', 'HMorales', 'Se ha consultado el código QR N°: '),
(344, 'Registro de Unidad', '2023-10-27 15:02:51', 'MInfante', 'Se ha registrado una nueva unidad 050 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(345, 'Registro de Unidad', '2023-10-27 15:20:20', 'MInfante', 'Se ha registrado una nueva unidad 055 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(346, 'Registro de Unidad', '2023-10-27 15:23:24', 'MInfante', 'Se ha registrado una nueva unidad 057 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(347, 'Registro de Unidad', '2023-10-27 15:26:14', 'MInfante', 'Se ha registrado una nueva unidad 058 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(348, 'Registro de Unidad', '2023-10-27 15:28:46', 'MInfante', 'Se ha registrado una nueva unidad 062 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(349, 'Registro de Unidad', '2023-10-27 15:31:15', 'MInfante', 'Se ha registrado una nueva unidad 066 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(350, 'Registro de Unidad', '2023-10-27 15:31:57', 'HMorales', 'Se ha registrado una nueva unidad 108 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(351, 'Registro de Unidad', '2023-10-27 15:34:09', 'HMorales', 'Se ha registrado una nueva unidad 109 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(352, 'Registro de Unidad', '2023-10-27 15:36:36', 'HMorales', 'Se ha registrado una nueva unidad 111 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(353, 'Registro de Unidad', '2023-10-27 15:38:07', 'MInfante', 'Se ha registrado una nueva unidad 072 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(354, 'Registro de Unidad', '2023-10-27 15:40:37', 'HMorales', 'Se ha registrado una nueva unidad 114 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(355, 'Registro de Unidad', '2023-10-27 15:40:48', 'MInfante', 'Se ha registrado una nueva unidad 077 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(356, 'Registro de Unidad', '2023-10-27 15:43:37', 'HMorales', 'Se ha registrado una nueva unidad 116 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(357, 'Registro de Unidad', '2023-10-27 15:46:24', 'HMorales', 'Se ha registrado una nueva unidad 118 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(358, 'Registro de Unidad', '2023-10-27 15:48:45', 'HMorales', 'Se ha registrado una nueva unidad 120 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(359, 'Registro de Unidad', '2023-10-27 15:51:31', 'HMorales', 'Se ha registrado una nueva unidad 123 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(360, 'Registro de Unidad', '2023-10-27 15:54:57', 'HMorales', 'Se ha registrado una nueva unidad 126 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(361, 'Registro de Unidad', '2023-10-27 16:00:29', 'MInfante', 'Se ha registrado una nueva unidad 086 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(362, 'Ingreso al  sistema', '2023-10-31 13:50:58', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(363, 'Ingreso al  sistema', '2023-10-31 13:52:55', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(364, 'Registro de Unidad', '2023-10-31 14:08:22', 'HMorales', 'Se ha registrado una nueva unidad 139 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(365, 'Registro de Unidad', '2023-10-31 14:09:35', 'MInfante', 'Se ha registrado una nueva unidad 093 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(366, 'Registro de Unidad', '2023-10-31 14:10:23', 'HMorales', 'Se ha registrado una nueva unidad 143 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(367, 'Registro de Unidad', '2023-10-31 14:17:58', 'MInfante', 'Se ha registrado una nueva unidad 095 en la Organizacion: '),
(368, 'Registro de Unidad', '2023-10-31 14:19:55', 'MInfante', 'Se ha registrado una nueva unidad 095 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(369, 'Registro de Unidad', '2023-10-31 14:22:02', 'HMorales', 'Se ha registrado una nueva unidad 147 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(370, 'Registro de Unidad', '2023-10-31 14:24:27', 'MInfante', 'Se ha registrado una nueva unidad 096 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(371, 'Registro de Unidad', '2023-10-31 14:26:48', 'HMorales', 'Se ha registrado una nueva unidad 155 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(372, 'Registro de Unidad', '2023-10-31 14:28:32', 'HMorales', 'Se ha registrado una nueva unidad 156 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(373, 'Registro de Unidad', '2023-10-31 14:30:24', 'HMorales', 'Se ha registrado una nueva unidad 160 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(374, 'Registro de Unidad', '2023-10-31 14:37:48', 'MInfante', 'Se ha registrado una nueva unidad 098 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(375, 'Registro de Unidad', '2023-10-31 14:39:12', 'HMorales', 'Se ha registrado una nueva unidad 163 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(376, 'Registro de Unidad', '2023-10-31 14:43:50', 'HMorales', 'Se ha registrado una nueva unidad 167 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(377, 'Registro de Unidad', '2023-10-31 14:45:55', 'MInfante', 'Se ha registrado una nueva unidad 099 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(378, 'Ingreso al  sistema', '2023-10-31 14:58:43', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(379, 'Registro de Unidad', '2023-10-31 15:12:34', 'MInfante', 'Se ha registrado una nueva unidad 171 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(380, 'Ingreso al  sistema', '2023-11-01 13:08:00', 'Admin', 'Ha ingresado al sistema: Admin'),
(381, 'Consulta de QR', '2023-11-02 15:09:59', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(382, 'Consulta de QR', '2023-11-02 15:14:08', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(383, 'Ingreso al  sistema', '2023-11-03 14:27:56', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(384, 'Actualización de datos', '2023-11-03 14:35:56', 'HMorales', 'Se ha registrado un cambio en la Organizacion con el nombre: Asociacion Civil Propatria Carmelita Chacaito'),
(385, 'Actualización de datos', '2023-11-03 14:39:45', 'HMorales', 'Se ha registrado un cambio en la Organizacion con el nombre: Asociación Civil de Conductores Casalta Chacaito Cafetal'),
(386, 'Ingreso al  sistema', '2023-11-03 14:42:08', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(387, 'Actualización de datos', '2023-11-03 14:43:52', 'HMorales', 'Se ha registrado un cambio en la Organizacion con el nombre: Asociación Civil de Conductores Casalta Chacaito Cafetal'),
(388, 'Actualización de datos', '2023-11-03 14:44:08', 'HMorales', 'Se ha registrado un cambio en la Organizacion con el nombre: Asociación Civil de Conductores Casalta Chacaito Cafetal'),
(389, 'Registro de Unidad', '2023-11-03 14:46:49', 'MInfante', 'Se ha registrado una nueva unidad 092 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(390, 'Registro de Unidad', '2023-11-03 14:49:33', 'MInfante', 'Se ha registrado una nueva unidad 078 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(391, 'Registro de Unidad', '2023-11-03 14:55:51', 'MInfante', 'Se ha registrado una nueva unidad 016 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(392, 'Registro de Unidad', '2023-11-03 14:58:28', 'MInfante', 'Se ha registrado una nueva unidad 080 en la Organizacion: '),
(393, 'Registro de Unidad', '2023-11-03 15:00:00', 'MInfante', 'Se ha registrado una nueva unidad 080 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(394, 'Registro de Unidad', '2023-11-03 15:02:52', 'MInfante', 'Se ha registrado una nueva unidad 104 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(395, 'Ingreso al  sistema', '2023-11-03 15:03:07', 'Admin', 'Ha ingresado al sistema: Admin'),
(396, 'Ingreso al  sistema', '2023-11-03 15:03:50', 'Admin', 'Ha ingresado al sistema: Admin'),
(397, 'Registro de Unidad', '2023-11-03 15:04:34', 'MInfante', 'Se ha registrado una nueva unidad 066 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(398, 'Registro de Unidad', '2023-11-03 15:38:44', 'HMorales', 'Se ha registrado una nueva unidad 13 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(399, 'Ingreso al  sistema', '2023-11-03 15:38:58', 'Admin', 'Ha ingresado al sistema: Admin');
INSERT INTO `historial` (`id`, `action`, `fecha`, `usuario`, `descripcion`) VALUES
(400, 'Registro de Unidad', '2023-11-03 15:43:25', 'HMorales', 'Se ha registrado una nueva unidad 21 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(401, 'Registro de Unidad', '2023-11-03 15:45:54', 'HMorales', 'Se ha registrado una nueva unidad 23 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(402, 'Registro de Unidad', '2023-11-03 15:48:29', 'HMorales', 'Se ha registrado una nueva unidad 29 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(403, 'Registro de Unidad', '2023-11-03 15:50:12', 'HMorales', 'Se ha registrado una nueva unidad 31 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(404, 'Registro de Unidad', '2023-11-03 16:00:29', 'HMorales', 'Se ha registrado una nueva unidad 152 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(405, 'Ingreso al  sistema', '2023-11-08 13:29:10', 'Admin', 'Ha ingresado al sistema: Admin'),
(406, 'Ingreso al  sistema', '2023-11-14 13:20:00', 'Admin', 'Ha ingresado al sistema: Admin'),
(407, 'Consulta de QR', '2023-11-14 13:46:57', 'Admin', 'Se ha consultado el código QR N°: '),
(408, 'Ingreso al sistema', '2023-11-15 14:14:52', 'Admin', 'Ha ingresado al sistema: Admin'),
(409, 'Registro de Usuario', '2023-11-15 14:17:12', 'Admin', 'Se ha registrado un nuevo usuario con el nombre: Oficial1'),
(410, 'Ingreso al sistema', '2023-11-15 14:17:18', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(411, 'Ingreso al sistema', '2023-11-15 14:18:00', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(412, 'Ingreso al sistema', '2023-11-15 14:26:25', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(413, 'Consulta de QR', '2023-11-15 14:27:11', 'Oficial1', 'Se ha consultado el código QR N°: 2023002'),
(414, 'Consulta de QR', '2023-11-15 14:27:21', 'Oficial1', 'Se ha consultado el código QR N°: 20230002'),
(415, 'Consulta de QR', '2023-11-15 14:27:41', 'Oficial1', 'Se ha consultado el código QR N°: 20230001'),
(416, 'Consulta de QR', '2023-11-15 14:27:44', 'Oficial1', 'Se ha consultado el código QR N°: 20230006'),
(417, 'Consulta de QR', '2023-11-15 14:36:54', 'Oficial1', 'Se ha consultado el código QR N°: 20230006'),
(418, 'Ingreso al sistema', '2023-11-15 14:38:02', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(419, 'Consulta de QR', '2023-11-15 14:38:13', 'Oficial1', 'Se ha consultado el código QR N°: 20230001'),
(420, 'Ingreso al sistema', '2023-11-15 14:39:11', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(421, 'Consulta de QR', '2023-11-15 14:39:14', 'Oficial1', 'Se ha consultado el código QR N°: 2023002'),
(422, 'Ingreso al sistema', '2023-11-15 14:40:34', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(423, 'Ingreso al sistema', '2023-11-15 14:40:50', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(424, 'Ingreso al sistema', '2023-11-15 14:43:11', 'Admin', 'Ha ingresado al sistema: Admin'),
(425, 'Ingreso al sistema', '2023-11-16 12:05:10', 'JGelvez', 'Ha ingresado al sistema: JGelvez'),
(426, 'Consulta de QR', '2023-11-16 12:09:25', 'JGelvez', 'Se ha consultado el código QR N°: 200'),
(427, 'Ingreso al sistema', '2023-11-16 12:28:36', 'JGelvez', 'Ha ingresado al sistema: JGelvez'),
(428, 'Ingreso al sistema', '2023-11-16 12:53:23', 'Admin', 'Ha ingresado al sistema: Admin'),
(429, 'Ingreso al sistema', '2023-11-16 13:39:35', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(430, 'Consulta de QR', '2023-11-16 13:56:01', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(431, 'Ingreso al sistema', '2023-11-16 14:01:36', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(432, 'Consulta de QR', '2023-11-16 14:01:48', 'Oficial1', 'Se ha consultado el código QR N°: 2023002'),
(433, 'Consulta de QR', '2023-11-16 14:18:10', 'Admin', 'Se ha consultado el código QR N°: 20230009'),
(434, 'Consulta de QR', '2023-11-16 14:18:50', 'Admin', 'Se ha consultado el código QR N°: 20230009'),
(435, 'Ingreso al sistema', '2023-11-16 14:28:42', 'JGelvez', 'Ha ingresado al sistema: JGelvez'),
(436, 'Ingreso al sistema', '2023-11-16 14:41:51', 'JGelvez', 'Ha ingresado al sistema: JGelvez'),
(437, 'Ingreso al sistema', '2023-11-16 14:42:06', 'JGelvez', 'Ha ingresado al sistema: JGelvez'),
(438, 'Ingreso al sistema', '2023-11-16 15:16:07', 'Admin', 'Ha ingresado al sistema: Admin'),
(439, 'Ingreso al sistema', '2023-11-16 15:41:50', 'Admin', 'Ha ingresado al sistema: Admin'),
(440, 'Consulta de QR', '2023-11-16 15:50:18', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(441, 'Ingreso al sistema', '2023-11-16 16:12:16', 'JGelvez', 'Ha ingresado al sistema: JGelvez'),
(442, 'Ingreso al sistema', '2023-11-16 16:17:51', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(443, 'Consulta de QR', '2023-11-16 16:17:59', 'Oficial1', 'Se ha consultado el código QR N°: 20230001'),
(444, 'Ingreso al sistema', '2023-11-16 16:18:39', 'Admin', 'Ha ingresado al sistema: Admin'),
(445, 'Registro de Usuario', '2023-11-16 17:36:13', 'Admin', 'Se ha registrado un nuevo usuario con el nombre: Mnarvaez'),
(446, 'Ingreso al sistema', '2023-11-16 17:39:39', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(447, 'Consulta de QR', '2023-11-16 17:39:52', 'Oficial1', 'Se ha consultado el código QR N°: Qr0001'),
(448, 'Ingreso al sistema', '2023-11-16 17:40:35', 'Mnarvaez', 'Ha ingresado al sistema: Mnarvaez'),
(449, 'Consulta de QR', '2023-11-16 17:41:39', 'Mnarvaez', 'Se ha consultado el código QR N°: 20230001'),
(450, 'Consulta de QR', '2023-11-16 18:13:39', 'Admin', 'Se ha consultado el código QR N°: '),
(451, 'Consulta de QR', '2023-11-16 19:23:03', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(452, 'Ingreso al sistema', '2023-11-16 20:44:18', 'Mnarvaez', 'Ha ingresado al sistema: Mnarvaez'),
(453, 'Consulta de QR', '2023-11-16 20:45:43', 'Mnarvaez', 'Se ha consultado el código QR N°: 20230001'),
(454, 'Ingreso al sistema', '2023-11-16 21:34:32', 'Admin', 'Ha ingresado al sistema: Admin'),
(455, 'Ingreso al sistema', '2023-11-17 12:49:09', 'Admin', 'Ha ingresado al sistema: Admin'),
(456, 'Ingreso al sistema', '2023-11-17 13:09:39', 'Admin', 'Ha ingresado al sistema: Admin'),
(457, 'Consulta de QR', '2023-11-17 13:10:18', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(458, 'Ingreso al sistema', '2023-11-17 13:12:32', 'Admin', 'Ha ingresado al sistema: Admin'),
(459, 'Consulta de QR', '2023-11-17 13:18:35', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(460, 'Consulta de QR', '2023-11-17 13:18:37', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(461, 'Ingreso al sistema', '2023-11-20 15:49:56', 'Admin', 'Ha ingresado al sistema: Admin'),
(462, 'Consulta de QR', '2023-11-20 15:59:58', 'Admin', 'Se ha consultado el código QR N°: 20230001'),
(463, 'Consulta de QR', '2023-11-20 16:01:03', 'Admin', 'Se ha consultado el código QR N°: 20230009'),
(464, 'Ingreso al sistema', '2023-11-21 14:06:34', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(465, 'Ingreso al sistema', '2023-11-21 14:06:35', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(466, 'Registro de Organización', '2023-11-21 14:47:57', 'HMorales', 'Se ha registrado una nueva Organizacion con el nombre: Asociación Cooperativa de Transporte Libertad y de tipo: Bus'),
(467, 'Ingreso al sistema', '2023-11-21 14:58:32', 'Admin', 'Ha ingresado al sistema: Admin'),
(468, 'Ingreso al sistema', '2023-11-21 15:11:58', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(469, 'Ingreso al sistema', '2023-11-21 15:11:59', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(470, 'Registro de Unidad', '2023-11-21 15:21:57', 'HMorales', 'Se ha registrado una nueva unidad 42 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(471, 'Ingreso al sistema', '2023-11-21 15:33:38', 'Admin', 'Ha ingresado al sistema: Admin'),
(472, 'Ingreso al sistema', '2023-11-21 15:39:36', 'Admin', 'Ha ingresado al sistema: Admin'),
(473, 'Registro de Usuario', '2023-11-21 15:40:05', 'Admin', 'Se ha registrado un nuevo usuario con el nombre: FAraujo'),
(474, 'Ingreso al sistema', '2023-11-21 15:40:16', 'Admin', 'Ha ingresado al sistema: Admin'),
(475, 'Registro de Unidad', '2023-11-21 15:40:30', 'Admin', 'Se ha registrado una nueva unidad 119 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(476, 'Registro de Unidad', '2023-11-21 15:42:26', 'HMorales', 'Se ha registrado una nueva unidad 119 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(477, 'Registro de Unidad', '2023-11-21 15:53:25', 'HMorales', 'Se ha registrado una nueva unidad 153 en la Organizacion: Asociacion Civil Propatria Carmelita Chacaito'),
(478, 'Ingreso al sistema', '2023-11-21 18:23:12', 'JGelvez', 'Ha ingresado al sistema: JGelvez'),
(479, 'Consulta de QR', '2023-11-21 18:31:53', 'JGelvez', 'Se ha consultado el código QR N°: 20230003'),
(480, 'Consulta de QR', '2023-11-21 18:33:16', 'JGelvez', 'Se ha consultado el código QR N°: 20230003'),
(481, 'Consulta de QR', '2023-11-21 18:33:22', 'JGelvez', 'Se ha consultado el código QR N°: 20230003'),
(482, 'Consulta de QR', '2023-11-21 19:08:33', 'JGelvez', 'Se ha consultado el código QR N°: 20230004'),
(483, 'Ingreso al sistema', '2023-11-21 19:09:43', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(484, 'Consulta de QR', '2023-11-21 19:09:56', 'Oficial1', 'Se ha consultado el código QR N°: 20234'),
(485, 'Consulta de QR', '2023-11-21 19:10:05', 'Oficial1', 'Se ha consultado el código QR N°: 20231'),
(486, 'Consulta de QR', '2023-11-21 19:10:21', 'Oficial1', 'Se ha consultado el código QR N°: 2023003'),
(487, 'Consulta de QR', '2023-11-21 19:10:36', 'Oficial1', 'Se ha consultado el código QR N°: 20230003'),
(488, 'Ingreso al sistema', '2023-11-21 19:58:37', 'JGelvez', 'Ha ingresado al sistema: JGelvez'),
(489, 'Ingreso al sistema', '2023-11-21 21:40:30', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(490, 'Ingreso al sistema', '2023-11-21 21:40:31', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(491, 'Consulta de QR', '2023-11-21 21:40:44', 'Oficial1', 'Se ha consultado el código QR N°: 20230003'),
(492, 'Consulta de QR', '2023-11-21 21:40:57', 'Oficial1', 'Se ha consultado el código QR N°: 20230004'),
(493, 'Consulta de QR', '2023-11-21 21:41:04', 'Oficial1', 'Se ha consultado el código QR N°: 20230006'),
(494, 'Consulta de QR', '2023-11-21 21:41:22', 'Oficial1', 'Se ha consultado el código QR N°: 2023002'),
(495, 'Consulta de QR', '2023-11-21 21:41:27', 'Oficial1', 'Se ha consultado el código QR N°: 2023003'),
(496, 'Consulta de QR', '2023-11-21 21:41:33', 'Oficial1', 'Se ha consultado el código QR N°: 2023004'),
(497, 'Consulta de QR', '2023-11-21 21:41:40', 'Oficial1', 'Se ha consultado el código QR N°: 20230003'),
(498, 'Consulta de QR', '2023-11-21 21:41:46', 'Oficial1', 'Se ha consultado el código QR N°: 20230004'),
(499, 'Consulta de QR', '2023-11-21 21:41:53', 'Oficial1', 'Se ha consultado el código QR N°: 20230005'),
(500, 'Consulta de QR', '2023-11-21 22:00:24', 'Oficial1', 'Se ha consultado el código QR N°: 20230005'),
(501, 'Consulta de QR', '2023-11-21 22:00:33', 'Oficial1', 'Se ha consultado el código QR N°: 20230004'),
(502, 'Ingreso al sistema', '2023-11-21 22:08:37', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(503, 'Consulta de QR', '2023-11-21 22:08:54', 'Oficial1', 'Se ha consultado el código QR N°: 20230003'),
(504, 'Consulta de QR', '2023-11-21 22:14:19', 'Oficial1', 'Se ha consultado el código QR N°: 20230003'),
(505, 'Consulta de QR', '2023-11-21 22:15:28', 'Oficial1', 'Se ha consultado el código QR N°: 20230003'),
(506, 'Consulta de QR', '2023-11-21 22:34:33', 'Oficial1', 'Se ha consultado el código QR N°: 20230003'),
(507, 'Ingreso al sistema', '2023-11-21 23:51:11', 'JGelvez', 'Ha ingresado al sistema: JGelvez'),
(508, 'Ingreso al sistema', '2023-11-22 00:47:48', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(509, 'Ingreso al sistema', '2023-11-22 00:47:49', 'Oficial1', 'Ha ingresado al sistema: Oficial1'),
(510, 'Consulta de QR', '2023-11-22 00:48:02', 'Oficial1', 'Se ha consultado el código QR N°: 20230004'),
(511, 'Ingreso al sistema', '2023-11-27 15:19:51', 'Admin', 'Ha ingresado al sistema: Admin'),
(512, 'Ingreso al sistema', '2023-11-27 17:59:57', 'Admin', 'Ha ingresado al sistema: Admin'),
(513, 'Ingreso al sistema', '2023-11-27 18:04:56', 'Admin', 'Ha ingresado al sistema: Admin'),
(514, 'Consulta de QR', '2023-11-27 18:05:31', 'Admin', 'Se ha consultado el código QR N°: 2023002'),
(515, 'Ingreso al sistema', '2023-11-27 18:06:17', 'Admin', 'Ha ingresado al sistema: Admin'),
(516, 'Ingreso al sistema', '2023-11-27 18:06:59', 'Admin', 'Ha ingresado al sistema: Admin'),
(517, 'Consulta de QR', '2023-11-27 18:36:10', 'Admin', 'Se ha consultado el código QR N°: 2023002'),
(518, 'Consulta de QR', '2023-11-27 18:50:17', 'Admin', 'Se ha consultado el código QR N°: '),
(519, 'Ingreso al sistema', '2023-11-28 12:34:36', 'Admin', 'Ha ingresado al sistema: Admin'),
(520, 'Ingreso al sistema', '2023-11-28 13:37:02', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(521, 'Registro de Unidad', '2023-11-28 15:11:02', 'HMorales', 'Se ha registrado una nueva unidad 01 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(522, 'Registro de Unidad', '2023-11-28 15:13:13', 'HMorales', 'Se ha registrado una nueva unidad 03 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(523, 'Registro de Unidad', '2023-11-28 15:15:40', 'HMorales', 'Se ha registrado una nueva unidad 04 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(524, 'Registro de Unidad', '2023-11-28 15:19:53', 'HMorales', 'Se ha registrado una nueva unidad 05 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(525, 'Registro de Unidad', '2023-11-28 15:24:27', 'HMorales', 'Se ha registrado una nueva unidad 08 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(526, 'Registro de Unidad', '2023-11-28 15:26:46', 'HMorales', 'Se ha registrado una nueva unidad 10 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(527, 'Registro de Unidad', '2023-11-28 15:29:27', 'HMorales', 'Se ha registrado una nueva unidad 11 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(528, 'Registro de Unidad', '2023-11-28 15:34:46', 'HMorales', 'Se ha registrado una nueva unidad 17 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(529, 'Registro de Unidad', '2023-11-28 15:43:39', 'HMorales', 'Se ha registrado una nueva unidad 17 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(530, 'Registro de Unidad', '2023-11-28 15:51:12', 'HMorales', 'Se ha registrado una nueva unidad 23 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(531, 'Ingreso al sistema', '2023-11-28 15:56:20', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(532, 'Ingreso al sistema', '2023-11-28 16:04:53', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(533, 'Ingreso al sistema', '2023-11-30 19:55:34', 'Admin', 'Ha ingresado al sistema: Admin'),
(534, 'Ingreso al sistema', '2023-12-04 13:45:26', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(535, 'Registro de Unidad', '2023-12-04 13:56:52', 'HMorales', 'Se ha registrado una nueva unidad 28 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(536, 'Registro de Unidad', '2023-12-04 13:59:11', 'HMorales', 'Se ha registrado una nueva unidad 33 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(537, 'Consulta de QR', '2023-12-04 14:01:09', 'Oficial1', 'Se ha consultado el código QR N°: 20230002'),
(538, 'Registro de Unidad', '2023-12-04 14:12:13', 'HMorales', 'Se ha registrado una nueva unidad 42 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(539, 'Ingreso al sistema', '2023-12-04 14:18:55', 'Admin', 'Ha ingresado al sistema: Admin'),
(540, 'Ingreso al sistema', '2023-12-04 14:21:46', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(541, 'Registro de Organización', '2023-12-04 14:26:27', 'HMorales', 'Se ha registrado una nueva Organizacion con el nombre: Asociacion Prueba y de tipo: Bus'),
(542, 'Ingreso al sistema', '2023-12-04 14:35:01', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(543, 'Ingreso al sistema', '2023-12-04 14:40:43', 'Admin', 'Ha ingresado al sistema: Admin'),
(544, 'Registro de Unidad', '2023-12-04 14:41:24', 'Admin', 'Se ha registrado una nueva unidad 665 en la Organizacion: Asociacion Prueba'),
(545, 'Registro de Unidad', '2023-12-04 14:42:33', 'Admin', 'Se ha registrado una nueva unidad 48 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(546, 'Registro de Unidad', '2023-12-04 14:53:24', 'Admin', 'Se ha registrado una nueva unidad 50 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(547, 'Registro de Unidad', '2023-12-04 14:56:00', 'Admin', 'Se ha registrado una nueva unidad 51 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(548, 'Registro de Unidad', '2023-12-04 15:02:33', 'Admin', 'Se ha registrado una nueva unidad 58 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(549, 'Registro de Unidad', '2023-12-04 15:11:20', 'Admin', 'Se ha registrado una nueva unidad 64 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(550, 'Registro de Unidad', '2023-12-04 15:27:35', 'Admin', 'Se ha registrado una nueva unidad 68 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(551, 'Ingreso al sistema', '2023-12-11 14:32:54', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(552, 'Registro de Unidad', '2023-12-11 14:41:03', 'HMorales', 'Se ha registrado una nueva unidad 69 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(553, 'Registro de Unidad', '2023-12-11 14:43:28', 'HMorales', 'Se ha registrado una nueva unidad 70 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(554, 'Registro de Unidad', '2023-12-11 14:44:58', 'HMorales', 'Se ha registrado una nueva unidad 73 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(555, 'Registro de Unidad', '2023-12-11 14:48:01', 'HMorales', 'Se ha registrado una nueva unidad 74 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(556, 'Registro de Unidad', '2023-12-11 14:49:28', 'HMorales', 'Se ha registrado una nueva unidad 75 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(557, 'Registro de Unidad', '2023-12-11 14:55:51', 'HMorales', 'Se ha registrado una nueva unidad 79 en la Organizacion: Asociación Cooperativa de Transporte Libertad'),
(558, 'Ingreso al sistema', '2024-03-05 14:15:44', 'Admin', 'Ha ingresado al sistema: Admin'),
(559, 'Consulta de QR', '2024-03-05 14:16:00', 'Admin', 'Se ha consultado el código QR N°: '),
(560, 'Consulta de QR', '2024-03-05 14:16:14', 'Admin', 'Se ha consultado el código QR N°: '),
(561, 'Ingreso al sistema', '2024-03-08 13:33:41', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(562, 'Registro de Organización', '2024-03-08 13:40:13', 'MInfante', 'Se ha registrado una nueva Organizacion con el nombre: Asociación Civil Carabobo Tiuna y de tipo: Bus'),
(563, 'Actualización de datos', '2024-03-08 13:41:08', 'MInfante', 'Se ha registrado un cambio en la Organizacion con el nombre: Asociación de conductores Carabobo Tiuna'),
(564, 'Registro de Unidad', '2024-03-08 13:55:34', 'MInfante', 'Se ha registrado una nueva unidad 001 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(565, 'Ingreso al sistema', '2024-03-08 14:18:03', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(566, 'Ingreso al sistema', '2024-03-08 14:18:45', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(567, 'Registro de Unidad', '2024-03-08 14:34:57', 'HMorales', 'Se ha registrado una nueva unidad 084 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(568, 'Registro de Unidad', '2024-03-08 14:44:28', 'HMorales', 'Se ha registrado una nueva unidad 087 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(569, 'Registro de Unidad', '2024-03-08 14:44:31', 'MInfante', 'Se ha registrado una nueva unidad 039 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(570, 'Registro de Unidad', '2024-03-08 14:50:45', 'MInfante', 'Se ha registrado una nueva unidad 044 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(571, 'Registro de Unidad', '2024-03-08 14:54:31', 'HMorales', 'Se ha registrado una nueva unidad 089 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(572, 'Ingreso al sistema', '2024-03-12 12:58:39', 'Admin', 'Ha ingresado al sistema: Admin'),
(573, 'Consulta de QR', '2024-03-12 13:00:03', 'Admin', 'Se ha consultado el código QR N°: '),
(574, 'Ingreso al sistema', '2024-03-14 13:50:33', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(575, 'Registro de Unidad', '2024-03-14 13:58:22', 'MInfante', 'Se ha registrado una nueva unidad 003 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(576, 'Registro de Unidad', '2024-03-14 14:08:42', 'MInfante', 'Se ha registrado una nueva unidad 010 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(577, 'Registro de Unidad', '2024-03-14 14:13:54', 'MInfante', 'Se ha registrado una nueva unidad 011 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(578, 'Registro de Unidad', '2024-03-14 14:19:22', 'MInfante', 'Se ha registrado una nueva unidad 012 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(579, 'Registro de Unidad', '2024-03-14 14:24:08', 'MInfante', 'Se ha registrado una nueva unidad 021 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(580, 'Registro de Unidad', '2024-03-14 14:29:58', 'MInfante', 'Se ha registrado una nueva unidad 022 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(581, 'Registro de Unidad', '2024-03-14 14:47:01', 'MInfante', 'Se ha registrado una nueva unidad 030 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(582, 'Registro de Unidad', '2024-03-14 14:52:51', 'MInfante', 'Se ha registrado una nueva unidad 035 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(583, 'Ingreso al sistema', '2024-03-14 14:57:19', 'HMorales', 'Ha ingresado al sistema: HMorales'),
(584, 'Registro de Unidad', '2024-03-14 15:09:56', 'MInfante', 'Se ha registrado una nueva unidad 045 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(585, 'Registro de Unidad', '2024-03-14 15:14:06', 'HMorales', 'Se ha registrado una nueva unidad 084 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(586, 'Registro de Unidad', '2024-03-14 15:15:25', 'MInfante', 'Se ha registrado una nueva unidad 048 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(587, 'Registro de Unidad', '2024-03-14 15:17:50', 'HMorales', 'Se ha registrado una nueva unidad 087 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(588, 'Registro de Unidad', '2024-03-14 15:26:12', 'MInfante', 'Se ha registrado una nueva unidad 053 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(589, 'Registro de Unidad', '2024-03-14 15:27:31', 'HMorales', 'Se ha registrado una nueva unidad 089 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(590, 'Registro de Unidad', '2024-03-14 15:33:45', 'MInfante', 'Se ha registrado una nueva unidad 065 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(591, 'Registro de Unidad', '2024-03-14 15:40:52', 'MInfante', 'Se ha registrado una nueva unidad 069 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(592, 'Registro de Unidad', '2024-03-14 15:46:30', 'HMorales', 'Se ha registrado una nueva unidad 096 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(593, 'Registro de Unidad', '2024-03-14 15:47:56', 'MInfante', 'Se ha registrado una nueva unidad 076 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(594, 'Registro de Unidad', '2024-03-14 15:52:02', 'HMorales', 'Se ha registrado una nueva unidad 105 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(595, 'Registro de Unidad', '2024-03-14 15:55:28', 'HMorales', 'Se ha registrado una nueva unidad 107 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(596, 'Ingreso al sistema', '2024-03-14 16:01:57', 'MInfante', 'Ha ingresado al sistema: MInfante'),
(597, 'Registro de Unidad', '2024-03-14 16:05:52', 'HMorales', 'Se ha registrado una nueva unidad 116 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(598, 'Registro de Unidad', '2024-03-14 16:16:00', 'MInfante', 'Se ha registrado una nueva unidad 132 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(599, 'Registro de Unidad', '2024-03-14 16:18:10', 'MInfante', 'Se ha registrado una nueva unidad 138 en la Organizacion: Asociación de conductores Carabobo Tiuna'),
(600, 'Ingreso al sistema', '2024-04-10 17:19:04', 'Admin', 'Ha ingresado al sistema: Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizaciones`
--

CREATE TABLE `organizaciones` (
  `id_organizacion` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `casco` text NOT NULL,
  `terminal` text NOT NULL,
  `tipo` enum('Bus','Taxi','Moto-Taxi') NOT NULL,
  `fpermiso` date NOT NULL,
  `status` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `organizaciones`
--

INSERT INTO `organizaciones` (`id_organizacion`, `nombre`, `casco`, `terminal`, `tipo`, `fpermiso`, `status`) VALUES
(1, 'Asociación Civil Propatria Carmelita Chacaito', '#ffffff', 'Torre BNC, Chacaito', 'Bus', '2024-06-14', 'Activo'),
(2, 'Asociación Civil de Conductores Casalta Chacaito Cafetal', '#fbff00', 'Urb. El Bosque, Calle El Parque con Av. José Martí', 'Bus', '2024-06-28', 'Activo'),
(12, 'Sociedad Civil Colinas de Bello Monte', 'verde', 'Chuaos, Chacao', 'Bus', '2024-09-11', 'Activo'),
(13, 'Unión Conductores Las Minas Chacaito Sociedad Civil', 'rojo', 'Calle Pichincha con Calle Guaicaipuro, Chacaito', 'Bus', '2024-09-04', 'Activo'),
(16, 'Sociedad de Conductores Unión Baruta-Chacaito-El Hatillo, Linea Sureste', '#f8f9fa', ' Calle Pichincha con Calle Guaicaipuro ', 'Bus', '2024-09-11', 'Activo'),
(17, 'Asociación Cooperativa De Transporte Lira', '#ffffff', 'Av. Caracas con Puente de Chuao', 'Bus', '2024-10-04', 'Activo'),
(18, 'Asociación Cooperativa de Transporte Libertad', '#000000', '3era Av. Entre Av. Francisco de Miranda y 1era Transversal Urb. Los Palos Grandes', 'Bus', '2024-11-10', 'Activo'),
(20, 'Asociación de conductores Carabobo Tiuna', '#c41717', 'Tercera avenida de Los Palos Grandes', 'Bus', '2025-03-15', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regincidencias`
--

CREATE TABLE `regincidencias` (
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `id_organizacion` int(3) NOT NULL,
  `nsocio` int(3) NOT NULL,
  `location` text NOT NULL,
  `incidencia` int(11) NOT NULL,
  `observaciones` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `id_organizacion` int(11) NOT NULL,
  `nsocio` int(11) NOT NULL,
  `qs` text NOT NULL,
  `nombrec` text NOT NULL,
  `cedulac` varchar(12) NOT NULL,
  `fotoc` varchar(255) NOT NULL,
  `nombrea` text NOT NULL,
  `cedulaa` varchar(12) NOT NULL,
  `fotoa` varchar(255) NOT NULL,
  `marca` text NOT NULL,
  `modelo` text NOT NULL,
  `placa` text NOT NULL,
  `year` int(4) NOT NULL,
  `color` text NOT NULL,
  `rcv` date NOT NULL,
  `rcvv` date NOT NULL,
  `permiso` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `id_organizacion`, `nsocio`, `qs`, `nombrec`, `cedulac`, `fotoc`, `nombrea`, `cedulaa`, `fotoa`, `marca`, `modelo`, `placa`, `year`, `color`, `rcv`, `rcvv`, `permiso`) VALUES
(7, 1, 12, '', 'NIEVES MARTIN CARLOS DAVID', 'V-29832907', '', 'N/A', 'N/A', '', 'ENCAVA', 'ENT-610', '000fff', 2001, 'BLANCO - MULTICOLOR', '2023-09-26', '2024-09-26', '2025-03-15'),
(35, 1, 1, '20230001', 'PEREZ CALDERON, JHONDER XAVIER', 'V.-21.344.29', 'media/mediaDA/Jhonder Pérez 21344296 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '03AB4XL', 1990, 'BLANCO Y AZUL', '2022-10-27', '2023-10-27', '2025-03-15'),
(36, 1, 2, '', 'RAMIREZ PARRA, JOSE ALEXANDER', 'V.-10.901.59', 'media/mediaDA/José Ramírez 10901592 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '07AA4IS', 1987, 'CREMA MULTICOLOR', '2023-05-30', '2024-05-30', '2025-03-15'),
(37, 1, 3, '', 'GERDET, WILLIAM ENRIQUE', 'V.-15.081.49', 'media/mediaDA/William Gerdet 15081495 Dueño.jpg', 'SANCHEZ PEDRIQUE, RICHARD ANTONIO', 'V.-12.501.44', 'media/mediaDA/Richard Sánchez 12501442 Avance.jpg', 'ENCAVA', '600', '507AA4S', 1996, 'BLANCO MULTICOLOR', '2023-04-11', '2024-04-11', '2025-03-15'),
(39, 1, 4, '20230002', 'VARGAS SANCHEZ, FREDDY ANTONIO', 'V.-6.004025', 'media/mediaDA/Freddy Vargas 6004025 Dueño.jpg', 'MARCANO MARCANIO, ENLLER AGUSTIN', 'V.-23.695.08', 'media/mediaDA/Enyer Marcano 23695082 Avance.jpg', 'FORD', 'INBUS', '07AA7LN', 1988, 'BLANCO Y AZUL', '2023-05-29', '2024-05-29', '2025-03-15'),
(40, 2, 6, '', 'FERMIN BLANCO', 'V- 16.166.48', 'media/mediaDA/Fermín Blanco 15166481 dueño 006.jpg', 'KENNEDY QUINTERO', 'V- 12.905.89', 'media/mediaDA/Kennedy Quintero 12905895 avance 006.jpg', 'ENCAVA', '2006', 'AD6817', 2006, 'BLANCO MULTICOLOR', '2023-05-04', '2023-05-04', '2025-03-15'),
(41, 1, 182, '', 'ZAMBRANO SILVA, JHOAN JAVIER', 'v-16259965', 'media/mediaDA/Johan Zambrano 16259965 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'FANABUS', '22A40AS', 1995, 'BLANCO MULTICOLOR', '2022-08-24', '2023-08-24', '2025-03-15'),
(42, 2, 7, '20230003', 'IGOR TOVAR', 'V- 14.299.65', 'media/mediaDA/Igor Tovar 14299655 Dueño 007.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '00AC2SS', 1992, 'BLANCO ROJO', '2023-01-30', '2024-01-30', '2025-03-15'),
(44, 1, 5, '', 'CHACON RAMIREZ, JUVENAL', 'V.-5.662.030', 'media/mediaDA/Juvenal Chacón 5662030 Dueño.jpg', 'CHACON USECHE, NORMAN ARNANDO', 'V.-14.015.89', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-32', '03AA0YL', 2013, 'BLANCO MULTICOLOR', '2023-01-29', '2024-01-29', '2025-03-15'),
(45, 1, 183, '', 'VALBUENA PERTUZ, FRANCISCO ANTONIO', 'V-14299617', 'media/mediaDA/Francisco Valbuena 14299617 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'IVECO', 'CC100E18M', 'ADO623', 2003, 'MULTICOLOR BLANCO', '2022-09-01', '2023-09-01', '2025-03-15'),
(46, 1, 6, '', 'RODRIGUEZ JAIMES, JOEL ALIRIO', 'V.-14.935.38', 'media/mediaDA/Joel Rodríguez 14935383 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '02AA3KW', 2011, 'BLANCO MULTICOLOR', '2022-08-15', '2023-08-15', '2025-03-15'),
(47, 2, 26, '', 'SOL SANCHEZ', 'V- 10.809.73', 'media/mediaDA/Sol Sánchez 10809738 Dueña 026.jpg', 'ANDERSON MOLINA', 'V- 25.411.60', 'media/mediaDA/Anderson Molina 25411607 Avance 026.jpg', 'ENCAVA', 'E-NT610', '24A09AM', 2010, 'BLANCO MULTICOLOR', '2022-09-09', '2023-09-09', '2025-03-15'),
(48, 1, 16, '', 'CARDENAS MAIZA, JESSICA YURAIMA', 'V.-24.210.88', 'media/mediaDA/Jessica Cárdenas 24210889 Dueña 016.jpg', 'GUILLEN, WILFREDO', 'V.-20.638.40', 'media/mediaDA/Wilfredo Guillén 20638406 Avance.jpg', 'ENCAVA', 'ISUZU', '07AA6EN', 1986, 'BLANCO MULTICOLOR', '2023-08-08', '2024-08-08', '2025-03-15'),
(50, 1, 17, '', 'DELGADO DELGADO, JACKSON DENY', 'V.-15.898.94', 'media/mediaDA/Jackson Delgado 15898947 Dueño.jpg', 'FLORES GAMEZ, HORY DAVID', 'V.-17.160.29', 'media/mediaDA/Hori Flores 17160294 Avance.jpg', 'ENCAVA', 'ISUZU', '09AA5SG', 1989, 'BLANCO MULTICOLOR', '2023-01-06', '2024-01-06', '2025-03-15'),
(51, 2, 27, '', 'JESUS MARTINEZ', 'V- 6.021.074', 'media/mediaDA/Jesús Martínez 6021074 dueño 027.jpg', 'JESUS MARTINEZ', 'V-13.087.405', 'media/mediaDA/na.jpg', 'MERCEDES BENZ', 'OH1420', '06AA7EA', 1998, 'BEIGE MULTICOLOR', '2023-02-01', '2024-02-01', '2025-03-15'),
(52, 1, 189, '', 'PEREZ CONTRERAS, KILGUIN HUMBERTO', 'V-10627676', 'media/mediaDA/Kilguin Pérez 10627676 Dueño.jpg', 'BALZA, WILMER', '11552181', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', 'AD0078', 2011, 'MULTICOLOR BLANCO', '2022-12-16', '2023-12-16', '2025-03-15'),
(53, 1, 18, '', 'HERNANDEZ VIVAS, JOSE', 'V.-12.375.03', 'media/mediaDA/José Hernández 12375039 dueño 097 301 091.jpg', 'HENRIQUEZ, MAIKEL', 'V.-24.739.21', 'media/mediaDA/Maikel Farías 24739211 Avance.jpg', 'ENCAVA', 'ENT-610', '23A22AO', 2005, 'BLANCO MULTICOLOR', '2023-08-11', '2024-08-11', '2025-03-15'),
(54, 1, 21, '', 'DAZA OLIVARES, RAMON ALEXANDER', 'V.-15.842.91', 'media/mediaDA/Ramón Daza 15842918 Dueño!.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '20A31AA', 2007, 'BLANCO MULTICOLOR', '2023-01-29', '2024-01-29', '2025-03-15'),
(55, 1, 193, '', 'FUENTES PIEDRA, RAMON ANTONIO', 'V-6900040', 'media/mediaDA/Ramón Fuentes 6900040 Dueño 193 y 060.jpg', 'BENITES , ARGENIS', 'V-20561012', 'media/mediaDA/Argenis Benítez 20561012.jpg', 'ENCAVA', 'ENT610', '07AA0ST', 2004, 'MULTICOLOR BLANCO', '2023-03-08', '2024-03-08', '2025-03-15'),
(56, 1, 23, '', 'CARDENAS BERMUDEZ, JHONNY ALEXANDER', 'V.-19.254.08', 'media/mediaDA/Jhonny Cárdenas 19254080 DUEÑO.jpg', 'HENRIQUEZ JIMENEZ, ALBERTO JOSE', 'V.-11.993.93', 'media/mediaDA/Alberto Enrique 11993930 avance.jpg', 'ENCAVA', 'ENT-610', '02AB8HA', 2013, 'BLANCO MULTICOLOR', '2022-11-22', '2023-11-22', '2025-03-15'),
(57, 1, 194, '', 'VILLA QUEVEDO, OMAR ANTONIO', 'V-9156953', 'media/mediaDA/Omar Villa 9156953 Dueño.jpg', 'ORTEGA, ALBERTO', 'V-10850061', 'media/mediaDA/Alberto Ortega 10850064 Avance.jpg', 'ENCAVA', 'ISUZU', '02AA1RA', 1986, 'BEIGE', '2023-07-21', '2024-07-21', '2025-03-15'),
(58, 1, 203, '', 'GONZALEZ RONDON, OSCAR JUNIOR', 'V-16678390', 'media/mediaDA/Oscar González 16678390 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', '1984', '00AA9VM', 1984, 'DORADO', '2023-08-14', '2024-08-14', '2025-03-15'),
(59, 1, 29, '', 'FLORES RODRIGUEZ, MARIA GABRIELLA', 'V.-23.696.26', 'media/mediaDA/Maria Flores 23696269 Dueña.jpg', 'SUAREZ FREWIL', 'V.-20.794.41', 'media/mediaDA/Frewil Suárez 20794410 Avance.jpg', 'ENCAVA', 'ISUZU', '21A72AK', 1985, 'BLANCO MULTICOLOR', '2023-05-29', '2024-05-29', '2025-03-15'),
(60, 1, 204, '', 'ARELLANO MORA, AMADEO DE LA CRUZ', 'V-9352673', 'media/mediaDA/Amadeo Arellano 9352673 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'B-350', 'AC9250', 1986, 'COBRE MULTICOLOR', '2023-10-14', '2024-10-14', '2025-03-15'),
(61, 2, 56, '', 'FREDDY PERFECTO', 'V- 12.261.08', 'media/mediaDA/Freddy perfecto  12261080 dueño 056.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'IVECO', 'DAILY', '27A60AA', 2009, 'AMARILLO', '2023-01-24', '2024-01-24', '2025-03-15'),
(62, 1, 205, '', 'PEREZ CONTRERAS, JOSE ANTONIO', 'V-9208199', 'media/mediaDA/José Pérez 9208199 Dueño.jpg', 'PEREZ CHACON, DARWIN JOSE', 'V-17077194', 'media/mediaDA/Darwin Pérez 17077194 Avance.jpg', 'ENCAVA', 'ISUZU', '06ABOUT', 1991, 'MULTICOLOR BLANCO', '2022-10-14', '2023-10-14', '2025-03-15'),
(63, 2, 69, '', 'GABRIEL PEÑA', 'V- 11.952.10', 'media/mediaDA/Grabiel Peña 11952101 Dueño 069.jpg', 'MIGUEL LEON', 'V- 19.894.45', 'media/mediaDA/Miguel León 19894458 avance 069.jpg', 'ENCAVA', '610 32', '08AA8EJ', 1995, 'BLANCO MULTICOLOR', '2023-01-24', '2024-01-24', '2025-03-15'),
(64, 1, 206, '', 'BETANCOURT CONTRERAS, CARLOS', 'V-13860943', 'media/mediaDA/Carlos Betancourt 13860943 Dueño.jpg', 'APARICIO, YORSI', 'V-19255050', 'media/mediaDA/Yorsi Aparicio 19255050 Avance.jpg', 'ENCAVA', 'E-NT610', '20A80AE', 2012, 'BLANCO', '2023-08-07', '2024-08-07', '2025-03-15'),
(65, 1, 38, '', 'ALDANA RASCAMIRE, ELVIS ARNOLDO', 'V.-16.332.11', 'media/mediaDA/Elvis Aldana 16332114 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '509AA0S', 1987, 'VERDE MULTICOLOR', '2023-03-06', '2024-03-06', '2025-03-15'),
(66, 1, 214, '', 'CARRILLO, RAFAEL ANTONIO ', 'V-12797657', 'media/mediaDA/Rafael Carrillo 12797657 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'YOUTONGBUS', 'ZK6896HGA', '07AB1EE', 2016, 'ROJO', '2023-08-11', '2024-08-11', '2025-03-15'),
(67, 1, 47, '', 'RAMIREZ MEDINA, NILSON JOSÉ', 'V.-18.912.81', 'media/mediaDA/Nilson Ramírez 18912817 dueño.jpg', 'MENDOZA, JOSÉ', 'V.-15.842.76', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '01AB8VS', 2002, 'BLANCO MULTICOLOR', '2022-12-09', '2023-12-09', '2025-03-15'),
(68, 1, 215, '', 'CASTILLO ARELLANO, LUIS EMIRO', 'V-11913676', 'media/mediaDA/Luis Castillo 11913676 Dueño.jpg', 'CORDERO BORGUES, JOSE RAMON', 'V-11554911', 'media/mediaDA/José Cordero 11554911 avance.jpg', 'ENCAVA', 'ENT610', '01AD1JL', 2000, 'MULTICOLOR BLANCO', '2022-12-16', '2023-12-16', '2025-03-15'),
(69, 1, 218, '', 'RODRIGUEZ, HERMES DE JESUS', 'V-5495538', 'media/mediaDA/Hermes Rodríguez 5495438 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '00AB6TG', 2008, 'MULTICOLOR BLANCO', '2023-02-07', '2024-02-07', '2025-03-15'),
(70, 1, 220, '', 'CONTRERAS M, FRANKLIN ALVENIZ', 'V-11220243', 'media/mediaDA/Franklin Contreras 11220243 Dueño 220 accidentada.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'ALKON', '07AA4RS', 1987, 'BEIGE MARRON', '2023-05-30', '2023-05-30', '2025-03-15'),
(71, 1, 49, '', 'KILGUIM HUMBERTO PEREZ ', 'V.-10.627.67', 'media/mediaDA/Kilguin Pérez 10627676 Dueño.jpg', 'PABON, JESUS', 'V.-14.016.29', 'media/mediaDA/Jesús Pavón 14016292 Avance.jpg', 'ENCAVA', 'ENT-610', '06AA3SA', 2007, 'BLANCO MULTICOLOR', '2022-08-15', '2023-08-15', '2025-03-15'),
(72, 1, 221, '', 'MARQUINA RIVERO JOSE NEMECIO', 'V-12349945', 'media/mediaDA/José Marquina 12349945 Dueño.jpg', 'MORALES, JOSE MANUEL', 'V-12502504', 'media/mediaDA/José Morales 12502504 Avance.jpg', 'ENCAVA', '500', 'AEO122', 1989, 'BLANCO MULTICOLOR', '2023-06-02', '2024-06-02', '2025-03-15'),
(73, 1, 54, '', 'NIETO GONZALEZ, BENNY LOYS', 'V.-14.531.10', 'media/mediaDA/Benny Nieto 14531103 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '511AA1N', 1991, 'BLANCO Y AZUL', '2022-09-16', '2023-09-16', '2025-03-15'),
(74, 2, 144, '', 'ANTONIO CHU LEE', 'V- 15.379.06', 'media/mediaDA/Antonio Chu 15379069 Dueño 144.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '23A98AA', 1992, 'AZUL Y BLANCO', '2023-06-02', '2024-06-02', '2025-03-15'),
(75, 1, 222, '', 'UZCATEGUI MONTAÑA, YESSICA  CAROLINA', 'V-16970347', 'media/mediaDA/Yessica Uzcátegui 16970347 dueña.jpg', 'RAMIREZ, CARLOS', 'V-13473344', 'media/mediaDA/Carlos Ramírez 13473344 avance.jpg', 'ENCAVA', 'ISUZU', '06AA60K', 2006, 'MULTICOLOR BLANCO', '2022-11-17', '2023-11-17', '2025-03-15'),
(76, 1, 56, '', 'SUBERO MARTINEZ, OMAR ALEXANDER', 'V.-11.166.78', 'media/mediaDA/Omar Subero 11166789 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '07AA8NA', 1993, 'BLANCO MULTICOLOR', '2023-03-31', '2024-03-31', '2025-03-15'),
(77, 1, 224, '', 'CRUZ UZCATEGUI, FREDDY JOSE', 'V-12041885', 'media/mediaDA/Freddy La Cruz 12041885 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', '1987', 'AA0866', 1987, 'MULTICOLOR BLANCO', '2023-02-09', '2024-02-09', '2025-03-15'),
(79, 1, 225, '', 'DAZA DELGADO DERWIN MIGUEL', 'V-17558997', 'media/mediaDA/Derwin Daza 17558997 Dueño.jpg', 'CHACON, ELIX AMERICO', 'V-11689542', 'media/mediaDA/Elix Chacon 11689542 Avance.jpg', 'ENCAVA', 'MINIBUS', '524AB4K', 1987, 'BLANCO MULTICOLOR', '2023-08-07', '2024-08-07', '2025-03-15'),
(80, 1, 61, '', 'HERNANDEZ VIVAS, JOSÉ', 'V.-12.375.03', 'media/mediaDA/José Hernández 12375039 dueño 097 301 091.jpg', 'MARTINEZ EDUED, EMILIO', 'V.-17.758.97', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT 610-32', '01AA7OA', 2010, 'BLANCO MULTICOLOR', '2023-08-11', '2024-08-11', '2025-03-15'),
(81, 2, 159, '', 'CARLOS CONTRERAS', 'V- 16.087.63', 'media/mediaDA/Carlos Contreras 16087636 Dueño 159.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'VUSHEVROLET', 'NPR BUS', '04AB8US', 2013, 'BLANCO MULTICOLOR', '2023-02-14', '2024-02-14', '2025-03-15'),
(82, 1, 232, '', 'CHACON RAMIREZ, ANDRES', 'V-5026478', 'media/mediaDA/Andrés Chacón 5026478 Dueño.jpg', 'CHACON USECHE JACKSON ANDRES', 'V-14680221', 'media/mediaDA/Jackson Chacón 14680221 avance.jpg', 'ENCAVA', '610-325', '04AB5XT', 1998, 'BLANCO MULTICOLOR', '2022-08-25', '2023-08-25', '2025-03-15'),
(83, 2, 163, '', 'FREDYS RAMIREZ', 'V- 11.975.81', 'media/mediaDA/Freddy Ramírez 11975815 Dueño 163.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT 610', '25A89AL', 2005, 'BLANCO MULTICOLOR', '2023-01-30', '2024-01-30', '2025-03-15'),
(84, 1, 70, '', 'PIRONA RAMIREZ, ALFREDO ANTONIO', 'V.-6.239.519', 'media/mediaDA/Alfredo Pirona 6239519 Dueño.jpg', 'SIRA, CARLOS JAVIER', 'V.-5.529.840', 'media/mediaDA/Carlos Sira 5529840 Avance.jpg', 'FORD', 'MINIBUS 360', '06AA4TM', 1986, 'AZUL DOS TONOS', '2023-02-09', '2024-02-09', '2025-03-15'),
(85, 1, 71, '', 'GARCIA RODRIGUEZ, JHONNY JOSÉ', 'V.-12.642.39', 'media/mediaDA/Jhonny García 12642393 Dueño.jpg', 'GRANADOS CARIPA, MARIO ALEXANDER', 'V.-16.972.05', 'media/mediaDA/Mario Granados 16972055 Avance.jpg', 'FORD', 'ANDINO', 'AC1845', 1987, 'BLANCO MULTICOLOR', '2023-06-19', '2024-06-19', '2025-03-15'),
(86, 1, 72, '', 'VERDU LISCANO, KLEISWERT EDIXON', 'V.-13.070.79', 'media/mediaDA/Kleiswert Verdú 13070794 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'ALKON', '08AB2TS', 1987, 'AZUL MULTICOLOR', '2023-03-24', '2024-03-24', '2025-03-15'),
(87, 1, 74, '', 'PERNIA REINA, LILIANA LISBETH', 'V.-19.754.92', 'media/mediaDA/Liliana Pernía 19754927 Dueña.jpg', 'CAMPOS GARDONA,WILFREDY ENYERBER', 'V.-21.536.58', 'media/mediaDA/Wilfredys Campos 21536585 Avance.jpg', 'ENCAVA', 'ENT-610', '04AA7PS', 2000, 'BLANCO MULTICOLOR', '2023-05-25', '2024-05-25', '2025-03-15'),
(88, 1, 77, '', 'HERNANDEZ, JOSÉ', 'V.-12.375.03', 'media/mediaDA/José Hernández 12375039 dueño 097 301 091.jpg', 'MOLINA, JORDI ALEJANDRO', 'V.-24.723.17', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-1031', '531AA85', 2000, 'BLANCO', '2023-01-29', '2024-01-29', '2025-03-15'),
(89, 1, 242, '', 'SUAREZ LOPEZ, JOEL ANTONIO', 'V-15540545', 'media/mediaDA/Joel Suárez 15540545 Dueño.jpg', 'MARUFO, JOSE', 'V-17177345', 'media/mediaDA/Alexander Marrufo 17177345 Avance.jpg', 'ENCAVA', 'ISUZU', '540AA9W', 1986, 'BLANCO MULTICOLOR', '2022-11-18', '2023-11-18', '2025-03-15'),
(90, 1, 251, '', 'IZURRIAGA ZAMBRANO, JEISON JESUS', 'V-24218632', 'media/mediaDA/Jeison Zambrano 24218632 Dueño.jpg', 'BLANCO MARTINEZ, DANIEL', 'V-16522944', 'media/mediaDA/Daniel Blanco 16522944 Avance.jpg', 'FORD', 'MINIBUS', '03AA9NW', 1982, 'MARRON MULTICOLOR', '2022-02-10', '2024-02-10', '2025-03-15'),
(91, 1, 86, '', 'ZERPA DIAZ,WILMER ALEXANDER', 'V.- 18.025.7', 'media/mediaDA/Wilmer Zerpa 18025756 Dueño.jpg', 'ZERPA, GERARDO', 'V.-13.625.78', 'media/mediaDA/Gerardo Zerpa 13625785 Dueño.jpg', 'ENCAVA', 'ISUZU', 'AD3184', 1985, 'BLANCO MULTICOLOR', '2022-09-22', '2023-09-22', '2025-03-15'),
(92, 1, 92, '', 'ARAQUE GARCIA, ERLINDO ANTONIO', 'V.-11.218.70', 'media/mediaDA/Antonio Araque 11218707 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', '610-32', '22A59AA', 1997, 'BLANCO MULTICOLOR', '2023-08-08', '2024-08-08', '2025-03-15'),
(93, 2, 197, '', 'JOSE GAVIDIA', 'V- 14.261.23', 'media/mediaDA/José Gaviria 14261233 Dueño 197.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'IVECO', '59.12 DAILY', '06AA8XA', 2010, 'BLANCO', '2023-01-22', '2024-01-22', '2025-03-15'),
(94, 1, 99, '', 'BOZAS BAPTISTA, CARLOS AUGUSTO', 'V.-15.540.63', 'media/mediaDA/Carlos Bozas 15540632 UND 146 dueño.jpg', 'FERNANDEZ ARIAS, JOEL JESUS', 'V.-17.780.31', 'media/mediaDA/Joel Fernández 17780318 avance.jpg', 'FORD', 'ANDINA', 'AA7929', 1987, 'AZUL', '2023-04-18', '2024-04-18', '2025-03-15'),
(95, 1, 101, '', 'MARIN LINDARTE, OSCAR EDUARDO', 'V.-15.948.22', 'media/mediaDA/Oscar Marín 15948229 Dueño 101.jpg', 'MORALES, PABLO', 'V.-16.745.27', 'media/mediaDA/Pablo Morales 16745275 Avance 101.jpg', 'ENCAVA', '610-32', '506AA8K', 1997, 'BLANCO MULTICOLOR', '2022-10-01', '2023-10-01', '2025-03-15'),
(96, 2, 211, '', 'FRANKLIN GONZALEZ', 'V- 10009928', 'media/mediaDA/Franklin González 10009928 dueño 211.jpg', 'EFRAIN TERAN', 'V- 22.746.50', 'media/mediaDA/Efraín Terán 22746502 avance 211.jpg', 'YUTONG BUS', 'ZK6896HGA', '05AA4CE', 2016, 'ROJO', '2023-06-03', '2024-06-03', '2025-03-15'),
(97, 1, 104, '', 'PUENTE, JESUS YOVANI', 'V.-9.477.499', 'media/mediaDA/Jesús Puentes 9477499 dueño 104.jpg', 'LABRADOR PERNIA, NELSON RAMON', 'V.-11.215.56', 'media/mediaDA/Nelson labrador 11215563 avance 104.jpg', 'ENCAVA', 'ISUZU', '04AB4GG', 1993, 'BLANCO MULTICOLOR', '2023-08-08', '2024-08-08', '2025-03-15'),
(98, 1, 108, '', 'PEREIRA MORA, WILLIAM JOSÉ', 'V.-11.742.36', 'media/mediaDA/William Pereira 11742369 Dueño.jpg', 'ESCALANTE RAMIREZ, JERSY OCTAVIO', 'V.-14.680.57', 'media/mediaDA/Gerse Escalante 14680574 Avance.jpg', 'ENCAVA', '610', '22A24BA', 1997, 'BLANCO MULTICOLOR', '2023-01-26', '2024-01-26', '2025-03-15'),
(99, 2, 239, '', 'JESUS RONDON ', 'V- 10.512.27', 'media/mediaDA/Jesús Rondón 10512276 dueño 239.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'MERCEDES BENZ', 'LO 915', '25A26AM', 2013, 'GRIS MULTICOLOR', '2023-03-21', '2024-03-21', '2025-03-15'),
(100, 1, 109, '', 'BELANDRIA BUSTAMANTE, DOUGLAS ENRIQUE', 'V.-15.314.54', 'media/mediaDA/Douglas Belandria 15314546 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'F350', '00AB5AM', 1981, 'CREMA', '2022-10-01', '2023-10-01', '2025-03-15'),
(101, 2, 243, '', 'RICHAR DELGADO', 'V- 11.971.33', 'media/mediaDA/Richard Delgado 11971333 dueño 243.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '28A98AO', 2007, 'BLANCO MULTICOLOR', '2023-02-24', '2024-02-25', '2025-03-15'),
(102, 1, 110, '', 'SUBERO MARTINEZ, OMAR ALEXANDER', 'V.-11.166.78', 'media/mediaDA/Omar Subero 11166789 Dueño.jpg', 'CHACON SANCHEZ, NILSON JOSE', 'V.-25.827.63', 'media/mediaDA/Gilson Chacón 25827632 avance 110 y 141.jpg', 'ENCAVA', 'ISUZU', '07AC8XK', 1992, 'BLANCO MULTICOLOR', '2023-04-15', '2024-04-15', '2025-03-15'),
(103, 1, 119, '', 'JAIMES VIVAS, JOSE', 'V.-12.229.02', 'media/mediaDA/José Jaime 12229029 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'MINIBUS', '01AA2MS', 1987, 'BLANCO MULTICOLOR', '2023-06-02', '2024-06-02', '2025-03-15'),
(104, 1, 120, '', 'ZAMBRANO LABRADOR, MIGUEL RAMON', 'V.-8.094.481', 'media/mediaDA/Miguel Zambrano 8094481 Dueño 120.jpg', 'PALMAR, ISMER', 'V.-16.025.22', 'media/mediaDA/Ismer Palma 16025225 UND 120.jpg', 'ENCAVA', 'ISUZU', '552AA7D', 1987, 'BLANCO MULTICOLOR', '2023-05-29', '2024-05-29', '2025-03-15'),
(105, 1, 122, '', 'GUTIERRES SANDOVAL, ARMANDO', 'V.-16.954.90', 'media/mediaDA/Armando Gutiérrez 16954906 Dueño.jpg', 'HENRIQUEZ MARCANO, JOSÉ RAUL', 'V.- 12.638.7', 'media/mediaDA/José Raúl Henríquez 12638769 Avance.jpg', 'ENCAVA', 'ISUZU', 'AI300X', 1994, 'BLANCO MULTICOLOR09', '2023-08-09', '2024-08-09', '2025-03-15'),
(106, 1, 124, '', 'ALGARÁ MONRROY, DAMASO ARTURO', 'V.-12.066.37', 'media/mediaDA/Dámaso Algara 12066375 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'B-350', '01AB5NM', 1986, 'DORADO MULTICOLOR', '2023-08-14', '2024-08-14', '2025-03-15'),
(107, 1, 129, '', 'RANGEL BASTIDAS, BETZY KARINA', 'V.-18.022.50', 'media/mediaDA/Betzy Rangel 18022501 UND 129.jpg', 'LOYO RUIZ , DANIEL', 'V.-18.760.44', 'media/mediaDA/Daniel Loyo 18760443 Avance.jpg', 'ENCAVA', 'ISUZU', '558AA2D', 1985, 'BLANCO MULTICOLOR', '2023-04-05', '2024-04-05', '2025-03-15'),
(108, 1, 292, '', 'JOSE RAMIREZ', 'V- 11.914.40', 'media/mediaDA/José Ramírez 11914402 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '02AA8LA', 2004, 'BLANCO MULTICOLOR', '2022-11-02', '2023-11-02', '2025-03-15'),
(109, 1, 133, '', 'SUAREZ PERALTA, DAVID ALIRIO', 'V.-16.600.55', 'media/mediaDA/David Suárez 16600551 Dueño 133.jpg', 'ARTEAGA CASTILLO, GABRIEL GREGORIO', 'V.-15.915.88', 'media/mediaDA/Javier Arteaga 15915889 Avance 133.jpg', 'ENCAVA', 'ISUZU', '08AE1IK', 1997, 'BLANCO MULTICOLOR', '2022-08-31', '2023-08-31', '2025-03-15'),
(110, 1, 254, '', 'LIZCANO PERNIA, HERMES', 'V-14678942', 'media/mediaDA/Hermes Lizcano 14678942 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'MINIBUS', '02AA900', 1987, 'VERDE', '2023-08-10', '2024-08-10', '2025-03-15'),
(111, 1, 293, '', 'WILMER TORRES', 'V- 6.707.612', 'media/mediaDA/Wilmer Torres 6707612 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'ALKON', '04AB5MM', 1986, 'BLANCO MULTICOLOR', '2023-05-26', '2024-05-26', '2025-03-15'),
(112, 1, 138, '', 'PEREIRA VELAZCO, JESUS ANTONIO', 'V.-17.032.59', 'media/mediaDA/Jesús Pereira 17032595.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', 'AC3187', 1985, 'BLANCO MULTICOLOR', '2022-09-20', '2023-09-20', '2025-03-15'),
(114, 1, 259, '', 'ROJAS PEREZ, ALEXANDER LUIS', 'V-6211648', 'media/mediaDA/Alexander Rojas 6211648 Dueño.jpg', 'TINEO SANCHEZ, RODOLFO LUIS', 'V-19707205', 'media/mediaDA/Rodolfo Tineo 19707205 Avance.jpg', 'ENCAVA', 'MINIBUS', '29A21AP', 2006, 'BLANCO MULTICOLOR', '2022-11-27', '2023-11-27', '2025-03-15'),
(115, 1, 144, '', 'SANCHEZ , RAMON ALBERTO', 'V.-6.342.971', 'media/mediaDA/Ramón Sánchez 6342971 Dueño.jpg', 'MARQUEZ, DAVID', 'V.-10.802.32', 'media/mediaDA/David Márquez 10802322 Avance 144.jpg', 'FORD', 'ENCAVA', '01AA6XG', 1985, 'BLANCO Y AZUL', '2023-04-18', '2024-04-18', '2025-03-15'),
(116, 1, 146, '', 'BOZAS BAPTISTA, CARLOS AUGUSTO', 'V.-15.540.63', 'media/mediaDA/Carlos Bozas 15540632 UND 146 dueño.jpg', 'ANGULO B., JOSÉ.', 'V.-20.049.17', 'media/mediaDA/José Angulo 20049175 Avance.jpg', 'FORD', 'ALKON', '09AA55G', 1992, 'BLANCO MULTICOLOR', '2023-04-13', '2024-04-13', '2025-03-15'),
(117, 1, 263, '', 'MEDINA CONTRERAS, ZULAY G', 'V-15156774', 'media/mediaDA/Zulay Medina 15156774 Dueña 263.jpg', 'ESCALANTE, KEIVER', 'V-25624396', 'media/mediaDA/Keiver Escalante 25624396 Avance.jpg', 'ENCAVA', 'ISUZU', '553AA5M', 1992, 'BLANCO MULTICOLOR', '2023-02-17', '2024-02-17', '2025-03-15'),
(118, 1, 297, '', 'RAMON FUENTES', 'V- 6.900.040', 'media/mediaDA/Ramón Fuentes 6900040 Dueño 193 y 060.jpg', 'JOSE GUTIERRES', 'V- 23.561.79', 'media/mediaDA/José Gutiérrez 23561799.jpg', 'ENCAVA', 'ENT900', '08AA6AJ', 2002, 'BLANCO MULTICOLOR', '2023-01-26', '2024-01-26', '2025-03-15'),
(119, 1, 149, '', 'GONZALEZ RONDON, JACKSON JOEL', 'V.-20.530.67', 'media/mediaDA/Jackson González 20530678 Dueño.jpg', 'MARQUEZ, CLEVER', 'V.-11.436.49', 'media/mediaDA/Klever Márquez 11436499 Avance.jpg', 'FORD', 'ANDINO', '26A05AS', 2000, 'ROJO MULTICOLOR', '2023-02-07', '2024-02-07', '2025-03-15'),
(120, 1, 301, '', 'JOSE HERNANDEZ', 'V-12.375.039', 'media/mediaDA/José Hernández 12375039 dueño 097 301 091.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', 'A1355AG', 2014, 'BLANCO DOS TONOS', '2023-08-11', '2024-08-11', '2025-03-15'),
(121, 1, 150, '', 'RAMIREZ DUARTE, FRANCISCO JAVIER', 'V.-15.212.82', 'media/mediaDA/Francisco Ramírez 15212825 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '00AA9JF', 1992, 'BLANCO MULTICOLOR', '2022-08-23', '2023-08-23', '2025-03-15'),
(122, 1, 264, '', 'PALENCIA GARCIA, DENNYS TEODULFO', 'V-10823393', 'media/mediaDA/Dennys Palencia 10823393 Dueño.jpg', 'BARRIENTO CARRILLO, JULIO ERNESTO', 'V-8989486', 'media/mediaDA/Julio Barrientos 8989486 Avance.jpg', 'FORD', 'MINIBUS', '08AA6UM', 1986, 'BEIG MARRON', '2023-08-10', '2024-08-10', '2025-03-15'),
(123, 1, 153, '', 'ROJAS, JENIS CAROLINA', 'V.-16.223.12', 'media/mediaDA/Yenis Rojas 16223127 Dueña.jpg', 'MILANO, JUAN ERNESTO', 'V.-14.559.85', 'media/mediaDA/Juan Milano 14559859 Avance.jpg', 'FORD', 'ALKON', '21A92BM', 1987, 'AZUL Y GRIS', '2023-08-08', '2024-08-08', '2025-03-15'),
(124, 1, 302, '', 'VICTOR PRADA', 'V-10.522.176', 'media/mediaDA/Víctor Prada 10522166 Dueño 302.jpg', 'ALEXANDER ROMERO', 'V-20.301.606', 'media/mediaDA/Alexander Romero 20301606 avance.jpg', 'ENCAVA', 'E-NT610', '05AA3BA', 2007, 'MULTICOLOR', '2023-06-26', '2024-06-26', '2025-03-15'),
(125, 1, 267, '', 'SERRANO RAMIREZ, JOSE RAMON', 'V-13747465', 'media/mediaDA/José Serrano 13747465 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E610-32', '07AA4TM', 2000, 'BLANCO MULTICOLOR', '2022-12-10', '2023-12-10', '2025-03-15'),
(126, 1, 304, '', 'YOANA ZAPATA', 'V.-15.741.44', 'media/mediaDA/Yoana Zapata 15741443 Dueña.jpg', 'ORANGEL GUERRERO', 'V.-8.707.321', 'media/mediaDA/Orangel Guerrero 8707321 Avance.jpg', 'CHEVROLET', '1986', '00AA2FM', 1986, 'BLANCO ROJO', '2023-06-26', '2024-06-26', '2025-03-15'),
(127, 1, 163, '', 'SUBERO MARTINEZ, OMAR ALEXANDER', 'V.-11.166.78', 'media/mediaDA/Omar Subero 11166789 Dueño.jpg', 'NIÑO MONCADA, FRANK', 'V.-16.959.00', 'media/mediaDA/Frank Niño 16959000 avance.jpg', 'ENCAVA', 'ISUZU', '08AC3XK', 1987, 'BLANCO MULTICOLOR', '2023-05-25', '2024-05-25', '2025-03-15'),
(128, 1, 269, '', 'ZERPA DIAZ, GERARDO ANTONIO', 'V-13625785', 'media/mediaDA/Gerardo Zerpa 13625785 Dueño.jpg', 'ZERPA, WILMER', 'V-18025756', 'media/mediaDA/Wilmer Zerpa 18025756.jpg', 'FORD', 'ENCAVA', '04AA0UB', 1986, 'BLANCO ROJO', '2023-05-16', '2024-05-16', '2025-03-15'),
(129, 1, 164, '', 'GAMEZ GIL, YEKSSICA NAIROBY', 'V.-13.943.96', 'media/mediaDA/Yekssica Gámez 13943961 Dueña 164.jpg', 'QINTANA, DARWIN', 'V.-17.755.93', 'media/mediaDA/na.jpg', 'MARCOPOLO', 'VOLARE', 'A0010AC', 2009, 'BLANCO MULTICOLOR', '2022-09-14', '2023-09-14', '2025-03-15'),
(130, 1, 166, '', 'ZAMBRANO MONTILVA, JOSÉ GREGORIO', 'V.-8.080.899', 'media/mediaDA/José Zambrano 8080899 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'F350', 'AB6124', 1985, 'MARRON MULTICOLOR', '2022-12-08', '2023-12-08', '2025-03-15'),
(131, 1, 277, '', 'AVILA ALVIARE, JHONNY ENRIQUE', 'V-10184915', 'media/mediaDA/Jhonny Ávila 10184915.jpg', 'HERNANDEZ ALDANA, MIGUEL ANGEL', 'V-16668111', 'media/mediaDA/Miguel Hernández 16668111 avance.jpg', 'ENCAVA', 'MINIBUS', '28A64AS', 1996, 'BLANCO', '2023-05-26', '2024-05-26', '2025-03-15'),
(132, 1, 169, '', 'SUAREZ CRESPO, ERWIN IVAN', 'V.-14.444.55', 'media/mediaDA/Erwin Suárez 14444556 Dueño 169.jpg', 'LUGO, DOUGLAS', 'V.-18.486.16', 'media/mediaDA/Douglas Jauregui 18486164 avance.jpg', 'ENCAVA', 'ENT-610', '08AA2DD', 2006, 'BLANCO MULTICOLOR', '2023-08-09', '2024-08-09', '2025-03-15'),
(133, 1, 312, '', 'BELQUIS REINA', 'V- 11.496.60', 'media/mediaDA/Belkis Reina 11496602 Dueña.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '21A34AM', 2008, 'MULTICOLOR', '2023-05-25', '2024-05-25', '2025-03-15'),
(134, 1, 280, '', 'DURAN HERNANDEZ, ENDER ALI', 'V-14131136', 'media/mediaDA/Ender Durán 14131136 Dueño.jpg', 'PERNIA LABRADOR, JOSE ISIDRO', 'V-5123365', 'media/mediaDA/José Pernía 5123365 Avance..jpg', 'FORD', 'ALKON', '09AA8DS', 1992, 'BLANCO MULTICOLOR', '2023-08-10', '2024-08-10', '2025-03-15'),
(135, 1, 316, '', 'BERNABE ZERPA', 'V-10.897.192', 'media/mediaDA/Bernabé Zerpa 10897192 UND 316 dueño.jpg', 'GUSTAVO VALENCIA', 'V-18.444.425', 'media/mediaDA/Gustavo Valencia 18444425 UND 316 avance.jpg', 'ENCAVA', 'ISUZU', '01AA9OW', 1991, 'BLANCO', '2023-03-25', '2024-03-25', '2025-03-15'),
(136, 1, 281, '', 'REIN ROA, NEYDA ZULAY', 'V-13708400', 'media/mediaDA/Neida Reina 13708400 Dueña.jpg', 'APARICIO, JOSE', 'V-20637963', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '02AA6DM', 2008, 'BLANCO MULTICOLOR', '2023-05-25', '2024-05-25', '2025-03-15'),
(137, 1, 284, '', 'ARTEAGA RAMIREZ, JONATHAN JESUS', 'V-21623520', 'media/mediaDA/Jonathan Arteaga 21623520 Dueño.jpg', 'MENDOZA, OLESKY', 'V-15561515', 'media/mediaDA/Olesky Mendoza 15561515 Avance.jpg', 'ENCAVA', 'ISUZU', '01AB0TG', 1985, 'BLANCO MULTICOLOR', '2023-03-11', '2024-03-11', '2025-03-15'),
(138, 1, 324, '', 'JHONNY CARDENAS', 'V-19.254.080', 'media/mediaDA/Jhonny Cárdenas 19254080 DUEÑO.jpg', 'GERARDO ESPINOZA', 'V-25.211.688', 'media/mediaDA/Gerardo Espinoza 25211688 avance.jpg', 'ENCAVA', 'E-NT610', '555AA1K', 2015, 'BLANCO MULTICOLOR', '2022-10-31', '2023-10-31', '2025-03-15'),
(139, 1, 285, '', 'GUTIEREZ RODRIGUEZ, EDINSON JAVIER', 'V-18912229', 'media/mediaDA/Edinson Gutiérrez 18912229 dueño.jpg', 'ROSALES, CONSOLACION', 'V-15326199', 'media/mediaDA/Consolación Rosales 15326199 Avance.jpg', 'ENCAVA', 'ISUZU', '564AA8M', 1988, 'CREMA MULTICOLOR', '2023-08-12', '2024-08-12', '2025-03-15'),
(141, 1, 327, '', 'WILLIAMS GARCIA', 'V-11.991.902', 'media/mediaDA/William García 11991902 Dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', 'AC9571', 1999, 'BLANCO MULTICOLOR', '2022-12-29', '2023-12-29', '2025-03-15'),
(142, 1, 288, '', 'GARCIA MENDEZ, WUILMARY NAZARETH', 'V-24982138', 'media/mediaDA/Wilmary García 24982138 Dueña 288.jpg', 'HENRIQUEZ, ALBERTO', 'V-11993937', 'media/mediaDA/Alberto Enrique 11993937avance.jpg', 'ENCAVA', 'ISUZU', '06AA9SM', 1992, 'BLANCO MULTICOLOR', '2022-10-18', '2023-10-18', '2025-03-15'),
(143, 1, 289, '', 'ZAMBANO MONTILVA, JOSE EULALIO', 'V-8707660', 'media/mediaDA/José Zambrano 8707660 Dueño.jpg', 'BENAVIDES RAMIREZ, JOYNER JOSE', 'V-25510628', 'media/mediaDA/Joyner Benavides 25510628 Avance.jpg', 'ENCAVA', 'ISUZU', '00E6MK', 1993, 'BLANCO MULTICOLOR', '2023-01-26', '2024-01-26', '2025-03-15'),
(144, 12, 4, '', 'ENDER MONTILVA', 'V- 19.778.44', 'media/mediaDA/Ender Montilva 19778449 Dueño 04.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', '1998', '02AA6IS', 1998, 'BLANCO MULTICOLOR', '2023-07-27', '2024-07-27', '2025-03-15'),
(145, 12, 15, '', 'WILMER GUTIERREZ', 'V- 11.825.22', 'media/mediaDA/Wilmer Gutiérrez 11825227 Dueño 15.jpg', 'ARGENIS MENDEZ', 'V- 13.212.43', 'media/mediaDA/Argenis Méndez 13212437 avance 15.jpg', 'CHEVROLET', 'NPR BUS', '20A78AA', 2009, 'BLANCO MULTICOLOR', '2023-06-27', '2024-06-27', '2025-03-15'),
(146, 12, 23, '', 'YORVIS CONTRERAS', 'V- 14.023.28', 'media/mediaDA/Yorvi Contreras 14023285 Dueño 23.jpg', 'ANGEL HERNANDEZ', 'V.-14.123.82', 'media/mediaDA/Ángel Hernández 14123822 avance 23.jpg', 'ENCAVA', 'ISUZU', '02AA7NA', 1986, 'BLANCO MULTICOLOR', '2022-12-06', '2024-12-06', '2025-03-15'),
(147, 12, 27, '', 'ARGENIS ARAQUE', 'V- 20.603.98', 'media/mediaDA/Argenis Araque 20603983 Dueño 27 avance 54.jpg', 'JOSE BETANCOURT', 'V- 14.273.69', 'media/mediaDA/José Betancourt 14273698 avance 27.jpg', 'ENCAVA', 'E-NT610', '20A11AM', 2001, 'BLANCO MULTICOLOR', '2023-09-01', '2024-09-01', '2025-03-15'),
(148, 13, 4, '', 'HERNANDEZ BERRIOS, KARINA', ' V.- 17.123.', 'media/mediaDA/Karina Hernández 17123791 dueña 04.jpg', 'CALDERON PINEDA, WILLIAMS RAMON', 'V.- 10.123.4', 'media/mediaDA/William Calderón 10123423 Avance 04.jpg', 'ENCAVA', 'ENT-610', '01AC2HV', 2007, 'BLANCO MULTICOLOR', '2023-05-06', '2024-05-06', '2025-03-15'),
(149, 12, 65, '', 'YORLY NAVARRO', 'V- 16.616.81', 'media/mediaDA/Yorly Navarro 16616811 dueña 65.jpg', 'CARLOS MENDOZA', 'V- 27.598.41', 'media/mediaDA/Carlos Mendoza 27598412 Avance 65.jpg', 'ENCAVA', 'ENT900', '09AB1MA', 2011, 'BLANCO MULTICOLOR', '2023-08-28', '2024-08-28', '2025-03-15'),
(150, 12, 66, '', 'ROBERT MELO', 'V- 24.087.48', 'media/mediaDA/Robert Melo 24087484 Dueño 66 67 68.jpg', 'NARCISO OLMOS', 'V-12.038.775', 'media/mediaDA/Narciso Olmos 12038775 Avance 66.jpg', 'ENCAVA', '610 32', '05AA0NA', 2000, 'BLANCO MULTICOLOR', '2023-07-02', '2024-07-02', '2025-03-15'),
(151, 12, 67, '', 'ROBERT MELO', 'V- 24.087.48', 'media/mediaDA/Robert Melo 24087484 Dueño 66 67 68.jpg', 'VICTOR MARICUTO', 'V- 13.788.04', 'media/mediaDA/Víctor Maricuto 13788046 Avance 26.jpg', 'ENCAVA', 'E-NT610', '02AA4NA', 2000, 'BLANCO MULTICOLOR', '2023-07-02', '2024-07-02', '2025-03-15'),
(152, 12, 68, '', 'ROBERT MELO', 'V- 24.087.48', 'media/mediaDA/Robert Melo 24087484 Dueño 66 67 68.jpg', 'LEISMAN RIVERO', 'V- 15.815.58', 'media/mediaDA/Leisman Rivero avance 15815587 68.jpg', 'ENCAVA', 'ENT900', '24A32AA', 2011, 'BLANCO MULTICOLOR', '2023-07-27', '2024-07-27', '2025-03-15'),
(153, 13, 2, '', 'FERNANDEZ PEREIRA, HECTOR RUBEN', 'V.- 5.540.19', 'media/mediaDA/Héctor Fernández 5540191 Dueño 02.jpg', 'GARCIA ESPINOZA, JESUS GABRIEL', 'V.-20.615.10', 'media/mediaDA/Jesús Espinoza 20615101 Avance 02.jpg', 'ENCAVA', 'ENT-610', '505AA1S', 2001, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(154, 13, 3, '', 'FERNANDEZ SUAREZ, GERARDO', 'V.-29.512.09', 'media/mediaDA/Gerardo Fernández 29512090 Dueño 03.jpg', 'MARTINEZ LUGO, OSWALDO HERNAN', 'V.- 13.112.2', 'media/mediaDA/Oswaldo Martínez 13112262 Avance 03.jpg', 'ENCAVA', '3100', '30AA93A', 1999, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(155, 12, 73, '', 'ROGER RUIZ', 'V- 15.588.14', 'media/mediaDA/Roger Ruiz 15588142 Dueño 73.jpg', 'ADOLFO ARELLANO', 'V- 17.323.23', 'media/mediaDA/Adolfo Arellano 17323236 73 avance.jpg', 'ENCAVA', 'ISUZU', '01AA40M', 1992, 'BLANCO MULTICOLOR', '2023-09-20', '2024-09-20', '2025-03-15'),
(156, 12, 86, '', 'ROGER RUIZ', 'V- 15.588.14', 'media/mediaDA/Roger Ruiz 15588142 Dueño 73.jpg', 'RICHARD TERAN', 'V- 13.643.89', 'media/mediaDA/Richard Terán 13643897 Avance 86.jpg', 'ENCAVA', '500', '521AA5E', 1988, 'BLANCO MULTICOLOR', '2023-06-06', '2024-06-06', '2025-03-15'),
(157, 12, 89, '', 'VICTOR YEPEZ', 'V.- 9.375.98', 'media/mediaDA/Víctor Yépez 9375984 Dueño 89.jpg', 'NESTOR YEPEZ', 'V- 25.516.24', 'media/mediaDA/Néstor Yépez 25516243 avance 89.jpg', 'ENCAVA', 'E-NT610', '07AB91A', 2005, 'BLANCO MULTICOLOR', '2023-09-22', '2024-09-22', '2025-03-15'),
(158, 12, 90, '', 'JOSE FERNANDEZ', 'V- 25.053.27', 'media/mediaDA/José Fernández 25053271 Dueño 17 90 91.jpg', 'PEDRO MUÑOZ', 'V- 16.935.22', 'media/mediaDA/Pedro Muñoz 16935220 avance 12.jpg', 'ENCAVA', 'ENT900', '06AA2JW', 2012, 'BLANCO MULTICOLOR', '2023-09-21', '2024-09-21', '2025-03-15'),
(159, 13, 6, '', ' MARTINEZ BELLO, RONNIE M.', 'V.-20.227.34', 'media/mediaDA/Ronnie Martínez 20227341 Dueño 06 Avance 59.jpg', 'SOTO GONZALEZ, KERVIS CRISTOBAL', 'V.-11.471.79', 'media/mediaDA/Kervis Soto 11471793 Avance 06.jpg', 'MERCEDES BENZ', 'OH1420', '30AA25M', 2008, 'GRIS MULTICOLOR', '2023-09-01', '2024-09-01', '2025-03-15'),
(160, 12, 91, '', 'JOSE FERNANDEZ', 'V- 25.053.27', 'media/mediaDA/José Fernández 25053271 Dueño 17 90 91.jpg', 'RAFAEL VELASCO', 'V- 13.068.16', 'media/mediaDA/Rafael Velasco 13068161 Avance 91.jpg', 'HYNO', 'FC4JKUZ-NZL', '03AA1KW', 2012, 'BLANCO MULTICOLOR', '2023-09-21', '2024-09-21', '2025-03-15'),
(161, 13, 7, '', 'GODOY,  JORGE', 'V.- 10.191.2', 'media/mediaDA/Jorge Godoy 10191253 dueño 07.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '07AA8CM', 2002, 'BLANCO MULTICOLOR', '2023-09-01', '2024-09-01', '2025-03-15'),
(162, 13, 22, '', 'SOTO PERNIA, RICARDO', 'V.-9.360.401', 'media/mediaDA/Ricardo Soto 9360401 Dueño 022.jpg', 'GALOFRE CUBILLOS, MAURICIO JOSE', 'V.-22.788.57', 'media/mediaDA/Mauricio Galofre 22788577 avance 022.jpg', 'MERCEDES BENZ', 'OH1420', '22A89AA', 2008, 'GRIS MULTICOLOR', '2023-09-01', '2024-09-01', '2025-03-15'),
(163, 13, 26, '', 'MARQUEZ DE JESUS, JOSÉ ANTONIO', 'V.-13.309.08', 'media/mediaDA/José Márquez 13309083 dueño 026.jpg', 'CARVAJAL ROSALES, JOSÉ ANTONIO', 'V.-13.761.03', 'media/mediaDA/José Carvajal 13761031 avance 26.jpg', 'ENCAVA', '610', '23A79AM', 1998, 'BLANCO MULTICOLOR', '2023-09-01', '2024-09-01', '2025-03-15'),
(164, 13, 30, '', 'FERNANDEZ DELGADO, JOSÉ RAMON', 'V.-6.682.417', 'media/mediaDA/José Fernández 6682417 dueño 030.jpg', 'MELENDEZ BELLO, WILLIAM DAVID', 'V.- 22.016.8', 'media/mediaDA/William Meléndez 22016830 Avance 30.jpg', 'ENCAVA', '3100A', '34AA87M', 1998, 'BLANCO MULTICOLOR', '2023-09-01', '2024-09-01', '2025-03-15'),
(165, 13, 34, '', 'DIAZ , LILIANA COROMOTO', 'V.-8.568.260', 'media/mediaDA/Liliana Díaz 8568260 Dueña 34.jpg', 'ANGULO LOPEZ, EULOGIO', 'V.-5.668.317', 'media/mediaDA/Eulogio Angulo 5668317 Avance 34.jpg', 'ENCAVA', 'ENT-3200', '09AA6DG', 2000, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(166, 13, 55, '', 'LUIS MARQUEZ', 'V- 24.455.97', 'media/mediaDA/Luis Márquez 24455971 avance 55.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '23A81AM', 2001, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(167, 13, 36, '', 'FERNANDEZ CERON,JOSÉ FRANCISCO', 'V.-20.653.47', 'media/mediaDA/Francisco Fernández 20653473 avance 25.jpg', 'GUEDEZ MORGADO, DARIO DAYACSON', 'V.-25.718.57', 'media/mediaDA/Dairo Guedez 25718574 Avance 36.jpg', 'ENCAVA', 'ENT-610', '25A96AM', 2011, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(168, 13, 57, '', 'ROGER RUIZ', 'V- 15.588.14', 'media/mediaDA/Roger Ruiz 15588142 Dueño 57.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '01AA4OM', 1992, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(169, 13, 39, '', 'PARRA BRICEÑO, LUCIO FRANCISCO', 'V.-13.309.55', 'media/mediaDA/Lucio Parra 13309559 dueño 39.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '21A40AA', 2001, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(170, 13, 59, '', 'MIGUEL FERNANDEZ', 'V- 19.378.67', 'media/mediaDA/Miguel Fernández 19378675 Dueño 59.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '27A14AG', 2002, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(171, 13, 40, '', 'GONCALVES FERNANDES, NELSON', 'V.-11.733.98', 'media/mediaDA/Nelson Goncalves 11733988 dueño 83.jpg', 'GONCALVES GOMES, NELSON MANUEL', 'V.- 25.533.7', 'media/mediaDA/na.jpg', 'ENCAVA', '3100', '32AA51A', 1999, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(172, 13, 64, '', 'DANNY MONCAYO', 'V-14.889.962', 'media/mediaDA/Danny Moncayo 14889962 Dueño 64.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '06AA8DH', 1998, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(173, 13, 41, '', 'ESCALANTE CARRILLO, JOSÉ GIOVANNI', 'V.-11.935.97', 'media/mediaDA/José Escalante 11935979 Dueño 011.jpg', 'SOTO PERNIA, RICHARD ALEXANDER', 'V.-18.425.21', 'media/mediaDA/Richard Soto 18425211 dueño 041.jpg', 'MERCEDES BENZ', 'OH-1420', '03AA2JM', 1999, 'NARANJA MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(174, 13, 66, '', 'JOSE VIEIRA', '  V- 10.507.', 'media/mediaDA/José Vieira 10507128 Dueño 88.jpg', 'FREDDY GUALDRON', 'V- 6.404.719', 'media/mediaDA/Freddy Gualdron 64041719 avance 066.jpg', 'ENCAVA', '1992', '22A11AA', 2010, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(175, 13, 43, '', 'GOMES SOUSA, ERIKA', 'V.-16.460.77', 'media/mediaDA/Erika Gomes 16460774 Dueña 43.jpg', 'ANGULO LUGO, YEIDERMAN JOSÉ', 'V.-18.314.63', 'media/mediaDA/Yeiderman Angulo 18314636 Avance 43.jpg', 'ENCAVA', 'ENT-610', '00AA8KA', 2001, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(176, 13, 50, '', 'MARTINEZ ROJAS, JESÚS JOSÉ', 'V.-11.226.83', 'media/mediaDA/Jesús Martínez 11226839 Dueño 50.jpg', 'SALCEDO RONDON, ARTURO', 'V.-5.197.061', 'media/mediaDA/Arturo Salcedo 5197061 Avance 50.jpg', 'ENCAVA', 'ENT-610', '24A34AM', 2010, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(177, 13, 74, '', 'DARWIN OSORIO', 'V- 23.685.07', 'media/mediaDA/Darwin Osorio 23685075 Dueño 106 074.jpg', 'GABRIEL PARRA', 'V- 18.348.51', 'media/mediaDA/Gabriel Parra 18348511 Avance 74.jpg', 'ENCAVA', 'E-NT610', '05AA8JM', 2007, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(178, 13, 77, '', 'AVELINO TEIXEIRA', 'V-15.488.739', 'media/mediaDA/Avelino Teixeira 15488739 Dueño 77.jpg', 'FRANCISCO MATOS', 'V- 19.693.84', 'media/mediaDA/Francisco Matos 19693843 avance 77.jpg', 'ENCAVA', '3100', '32AA57A', 1999, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(179, 1, 170, '', 'ROZO PARADA, LUIS WALDO', 'V.-9.240.071', 'media/mediaDA/170.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'P31', '03AA1EP', 1997, 'BLANCO MULTICOLOR', '2023-05-29', '2024-05-29', '2025-03-15'),
(180, 13, 83, '', 'NELSON GONGALVES', 'V- 11.733.98', 'media/mediaDA/Nelson Goncalves 11733988 dueño 83.jpg', 'JOSE GUILLEN', 'V- 11.313.68', 'media/mediaDA/José Guillén 11313689 Avance 083.jpg', 'ENCAVA', 'ENT 32', '00AB6KG', 2001, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(181, 13, 88, '', 'JOSE VIEIRA', 'V- 10.507.12', 'media/mediaDA/José Vieira 10507128 Dueño 88.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '22A15AA', 2003, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(183, 13, 101, '', 'LUIS VIEIRA', 'V- 6.168.628', 'media/mediaDA/Luis vieeira 6168628 dueño 101.jpg', 'RAFAEL GRATEROL', 'V- 16.805.45', 'media/mediaDA/Rafael Graterol 16805450 Avance 101.jpg', 'ENCAVA', 'ISUZU', '05AA0AC', 1990, 'BLANCO Y AZUL', '2023-09-09', '2024-09-09', '2025-03-15'),
(185, 13, 102, '', 'JOSE MARQUES', 'V- 16.248.80', 'media/mediaDA/José Márquez 16248803 Dueño 102.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', '89', '23A60AM', 1989, 'BLANCO MULTICOLOR', '2023-09-09', '2024-09-09', '2025-03-15'),
(190, 1, 111, '', 'PRUEBA DE FOTO1', 'V-29832907', 'media/mediaDA/bk.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '000FFF', 2000, 'BLANCO - MULTICOLOR', '2023-12-31', '2023-12-31', '2025-03-15'),
(191, 1, 111, '', 'PRUEBA DE FOTO', 'V-29832907', 'media/mediaDA/moto taxi.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '000FFF', 2000, 'BLANCO - MULTICOLOR', '2023-12-31', '2024-12-31', '2025-03-15'),
(192, 1, 111, '', 'PRUEBA DE FOTO', 'V-29832907', 'media/mediaDA/moto taxi.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '000FFF', 2000, 'BLANCO - MULTICOLOR', '2023-12-31', '2024-12-31', '2025-03-15'),
(193, 1, 111, '', 'PRUEBA DE FOTO', 'V-29832907', 'media/mediaDA/moto taxi.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '000FFF', 2000, 'BLANCO - MULTICOLOR', '2023-12-31', '2024-12-31', '2025-03-15'),
(194, 1, 185, '', 'NUÑEZ BANDA, FRANCISCO JAVIER', 'V.-6.200.286', 'media/mediaDA/185.jpg', 'CHACON, FRANCISCO', 'V.-13.171.25', 'media/mediaDA/na.jpg', 'ENCAVA', '87', '09AJ6SV', 1987, 'AMARILLO MULTICOLOR', '2021-12-21', '2022-12-21', '2025-03-15'),
(195, 1, 192, '', 'MEJIAS MONTAÑA, RAFAEL ANTONIO', 'V.-10.546.83', 'media/mediaDA/192.jpg', 'CAMACHO GALVIS, JEAMPEAR ALFONSO', ' V.-18.110.3', 'media/mediaDA/Jeampear Camacho 18110371 avance.jpg', 'FORD', 'ALKON', '26A43AT', 1991, 'BLANCO MULTICOLOR', '2023-05-05', '2024-05-05', '2025-03-15'),
(196, 1, 195, '', 'OCHOA, TOMÁS', 'V.-637.055', 'media/mediaDA/195.jpg', 'RODRIGEZ, CARLOS', 'V.-15.960.19', 'media/mediaDA/na.jpg', 'FORD', 'B-350', 'AA2243', 1993, 'BLANCO VINOTINTO', '2022-08-15', '2023-08-15', '2025-03-15'),
(197, 1, 200, '', 'PEREIRA DE MORALES, TERESA ELENA', 'V.-5.728.342', 'media/mediaDA/200.jpg', 'MEDINA, ISAIAS', 'V.-11.975.85', 'media/mediaDA/na.jpg', 'ENCAVA', '610-32', '524AA0P', 1996, 'BLANCO MULTICOLOR', '2022-07-08', '2023-07-08', '2025-03-15'),
(198, 1, 208, '', 'PEÑALOZA CASTILLO,JOSÉ ALIRIO', 'V.-10.804.40', 'media/mediaDA/208.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', '610-32', '552AA9O', 1998, 'BLANCO MULTICOLOR', '2022-08-24', '2023-08-24', '2025-03-15'),
(199, 1, 213, '', 'GIRALDO DUQUE, UILFRE ALEXI', 'V.-13.793.11', 'media/mediaDA/213.jpg', 'SUAREZ CRESPO, DARWIN JESUS', 'V.-14.444.55', 'media/mediaDA/Darwin Suárez 14444555 dueño 213.jpg', 'ENCAVA', 'ENT-610', '24A27AM', 2010, 'BLANCO MULTICOLOR', '2022-08-08', '2023-08-08', '2025-03-15'),
(200, 1, 228, '', 'SOTO BOSCAN. HERMINIO', 'V.-2.878.348', 'media/mediaDA/228.jpg', 'BARRIENTOS, ADELBIS', 'V.-12.177.43', 'media/mediaDA/Adelvis Arriendo 12177430 Avance.jpg', 'ENCAVA', 'ENT-610', '00AA6VM', 2008, 'BLANCO MULTICOLOR', '2023-04-13', '2024-04-13', '2025-03-15'),
(201, 1, 237, '', 'CONTRERAS CONTRERAS, LUIS ALIPIO ', 'V.-6.621.970', 'media/mediaDA/237.jpg', 'ROMERO VALERA, MARLON ANDRESON', 'V.-10.814.32', 'media/mediaDA/Marlon Romero 10814362 Dueño.jpg', 'FORD', 'ANDINO', 'AA0834', 1986, 'BLANCO Y AZUL', '2023-02-16', '2024-02-16', '2025-03-15'),
(202, 1, 246, '', 'RAMIREZ ARAQUE, JOSÉ PATROCINIO', 'V.-3.818.687', 'media/mediaDA/246.jpg', 'ACOSTA, EDUARDO', 'V.-13.406.38', 'media/mediaDA/Eduardo Acosta 13406385 Avance 246.jpg', 'ENCAVA', 'ENT-610', '06AA7NA', 2007, 'BLANCO MULTICOLOR', '2022-09-15', '2023-09-15', '2025-03-15'),
(203, 1, 248, '', 'INARES OYOQUE, PEDRO JOSÉ', 'V.-12.096.81', 'media/mediaDA/248.jpg', 'ROSCIANO GALAVIZ, CARLOS', 'V.-7.953.660', 'media/mediaDA/Carlos Rosiano 7953660 UND 248.jpg', 'ENCAVA', 'MINIBUS', '06AD9KS', 1987, 'BLANCO MULTICOLOR', '2023-06-15', '2024-06-15', '2025-03-15'),
(204, 1, 250, '', 'MORENO GUERRERO, ABEL', 'V.-14.707.52', 'media/mediaDA/250.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', '610-32', '02AA4MS', 1987, 'BLANCO MULTICOLOR', '2023-01-24', '2024-01-24', '2025-03-15'),
(205, 1, 258, '', 'SOTO CANSELADO, MIGUEL ANGEL', 'V.-2.146.673', 'media/mediaDA/258.jpg', 'VIVAS SANTIAGO, VICTOR MANUEL', 'V.-15.264.96', 'media/mediaDA/Víctor Vivas 15264965 Dueño.jpg', 'EBRO', 'EBRO', 'AA0257', 1981, 'MORADO', '2022-09-10', '2023-09-10', '2025-03-15'),
(206, 1, 273, '', 'NIÑO, FRANCISCO ANTONIO', 'V.-2.987.005', 'media/mediaDA/273.jpg', 'RAMIREZ, CLAUDIO', 'V.-12.640.36', 'media/mediaDA/Claudio Ramírez 12640368 Dueño.jpg', 'FORD', 'BLUE BIRD', 'AA016X', 1969, 'VERDE', '2023-05-26', '2024-05-26', '2025-03-15'),
(207, 1, 283, '', 'MONTOYA ZERPA, JOSE RAMON', 'V.-6.340.940', 'media/mediaDA/283.jpg', 'RODRIGEZ, DOUGLAS', 'V.-13.068.77', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '00AA51D', 1993, 'BLANCO MULTICOLOR', '2022-07-26', '2023-07-26', '2025-03-15'),
(208, 1, 287, '', 'CORREDOR SUAREZ, LUIS ALEXANDER', 'V.-6.330.098', 'media/mediaDA/287.jpg', 'GIL, ELIO', 'V.-10.556.98', 'media/mediaDA/Helio Gil 10556985 Dueño.jpg', 'YUTONG BUS', '6896', 'LZYTDGD61G1000641', 2016, 'ROJO', '2022-09-13', '2023-09-13', '2025-03-15'),
(209, 1, 291, '', '  OLIVEIRA MASIAS, ARMINDA MARGARITA', 'V.-15.757.26', 'media/mediaDA/291.jpg', 'DELGADO , JACKSON', 'V.-15.898.94', 'media/mediaDA/na.jpg', 'ISUZU', '681DT', '566AA0P', 1997, 'BLANCO MULTICOLOR', '2023-08-09', '2024-08-09', '2025-03-15'),
(214, 16, 4, '', 'RICARDO VELASQUEZ', 'V. 9.938.538', 'media/mediaDA/Ricardo Vasquez 9938538 unidad 64 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '22A02BR', 2010, 'BLANCO', '2022-10-20', '2023-10-20', '2025-03-15'),
(215, 16, 8, '', 'OMAR MARTINEZ', 'V.-11.592.94', 'media/mediaDA/Omar Martinez 11592943 unidad 08 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT900', '20A19BP', 2004, 'BLANCO MULTICOLOR', '2023-04-01', '2024-04-01', '2025-03-15'),
(216, 16, 15, '', 'CARLOS MILANI', 'V.-16.227.97', 'media/mediaDA/Carlos Milani 16227971 unidad 15 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '20A30BP', 2001, 'BLANCO MULTICOLOR', '2023-03-31', '2024-03-31', '2025-03-15'),
(217, 16, 18, '', 'RUBEN CEBALLOS', 'V.-13.763.76', 'media/mediaDA/Ruben Ceballos 13763764 unidad 18 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT3300', '6074A1S', 2014, 'BLANCO', '2022-12-09', '2023-12-09', '2025-03-15'),
(218, 16, 21, '', 'ANDERSON MORA', 'V.-18.935.38', 'media/mediaDA/Anderson Mora 18935386 unidad 21 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT900', '23A58AX', 2013, 'BLANCO DOS TONOS', '2023-06-06', '2024-06-06', '2025-03-15'),
(219, 16, 27, '', 'YAN PLATA', 'V.-16.869.27', 'media/mediaDA/Yan Plata 16869278 unidad 27 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '09AA8KM', 2002, 'BLANCO MULTICOLOR', '2022-12-21', '2023-12-21', '2025-03-15'),
(221, 16, 28, '', 'EMERSON HIDALGO', 'V.-19.031.35', 'media/mediaDA/Emerson Hidalgo 19031350 unidad 28 dueño.JPG', 'ELIAS REVETTE', 'V.-16.805.67', 'media/mediaDA/Elias Revette 16805677 unidad 28 avance.JPG', 'ENCAVA', 'E-NT610', '22A16BS', 2010, 'BLANCO MULTICOLOR', '2022-11-14', '2023-11-14', '2025-03-15'),
(222, 16, 31, '', 'HERNANDO MENDEZ', 'V.-12.685.15', 'media/mediaDA/Humberto Mendez 12685150 unidad 31 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'MERCEDES BENZ', 'OH1420', '30AA28M', 2008, 'GRIS MULTICOLOR', '2023-04-01', '2024-04-01', '2025-03-15'),
(223, 16, 34, '', 'JOSE VELASQUEZ', 'V.-V.-3.783.', 'media/mediaDA/Jose Velasquez 3783366 unidad 34 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'MERCEDES BENZ', 'OH1420', 'AD5536', 1998, 'BLANCO MULTICOLOR', '2023-04-26', '2024-04-26', '2025-03-15'),
(224, 16, 41, '', 'FRANKLIN MATOS', 'V.-10.186.11', 'media/mediaDA/Franklin Matos 10186117 unidad 41 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'MERCEDES BENZ', 'OH1420', '38AA23A', 2008, 'GRIS MULTICOLOR', '2023-02-24', '2024-03-24', '2025-03-15'),
(225, 16, 44, '', 'JONATHAN BECERRA', 'V.-16.564.98', 'media/mediaDA/Jonathan Becerra 16564984 unidad 146 dueño.JPG', 'ENDER HERNANDEZ', 'V.-15.085.61', 'media/mediaDA/Ender Prato 15085616 unidad 141 dueño.JPG', 'ENCAVA', 'E-NT610', '22A22AS', 2006, 'BLANCO MULTICOLOR', '2023-05-30', '2024-05-30', '2025-03-15'),
(226, 17, 12, '20230004', 'VASQUEZ ROJAS, JOHAN JOSÉ', 'V.-17.049.03', 'media/mediaDA/Johan Vasquez 17049036 dueño unidad 12.HEIC', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '22A90AS', 2007, 'BLANCO', '2022-12-29', '2023-12-29', '2025-03-15'),
(227, 16, 45, '', 'JOSE PEREZ', 'V.-15.760.21', 'media/mediaDA/Jose Perez 15760219 unidad 45 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '523AB8S', 2015, 'BLANCO', '2023-08-25', '2024-08-25', '2025-03-15'),
(228, 16, 46, '', 'JOSE OLIVO', 'V.6.398.114', 'media/mediaDA/Jose Olivo 6398114 unidad 46 dueño.JPG', 'MANUEL SANCHEZ', 'V.-16.301.56', 'media/mediaDA/Manuel Sanchez 16301564 unidad 46 avance.JPG', 'CHEVROLET', 'NPR BUS', '04AB2KM', 2013, 'BLANCO MULTICOLOR', '2023-01-27', '2024-01-27', '2025-03-15'),
(230, 16, 50, '', 'DORIS SALAZAR', 'V.-13.993.56', 'media/mediaDA/Doris Salazar 13993565 unidad 52 dueña.JPG', 'GABRIEL BORGES', 'V.-19.378.91', 'media/mediaDA/Gabriel Borges 19378917 unidad 52 avance.JPG', 'MERCEDES BENZ', 'OH1420', '30AA91A', 2008, 'GRIS MULTICOLOR', '2023-09-13', '2024-09-13', '2025-03-15');
INSERT INTO `registros` (`id`, `id_organizacion`, `nsocio`, `qs`, `nombrec`, `cedulac`, `fotoc`, `nombrea`, `cedulaa`, `fotoa`, `marca`, `modelo`, `placa`, `year`, `color`, `rcv`, `rcvv`, `permiso`) VALUES
(231, 16, 55, '', 'JOSE CONTRERAS', 'V.-12.799.50', 'media/mediaDA/Jose Contreras 12799502 unidad 55 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/Orlando Gudiño 10256668 unidad 53 avance.JPG', 'ENCAVA', 'E-NT610', '26A54AM', 2006, 'BLANCO MULTICOLOR', '2023-02-24', '2024-02-24', '2025-03-15'),
(232, 16, 57, '', 'TEOLINDO GIL', 'V.-14.350.12', 'media/mediaDA/Teolindo Gil 14350122 unidad 57 dueño.JPG', 'JOSE DOMINGUEZ', 'V.-15.408.93', 'media/mediaDA/Jose Dominguez 15408935 unidad 57 avance.JPG', 'MERCEDES BENZ', 'OH1420', '30AA27M', 2008, 'GRIS MULTICOLOR', '2023-04-27', '2024-04-27', '2025-03-15'),
(233, 16, 58, '', 'JOSE RODRIGUEZ', 'V.-9.970.712', 'media/mediaDA/Jose Rodriguez 9970712 unidad 58 dueño.JPG', 'ERICK CASTELLANOS', 'V.-19.335.96', 'media/mediaDA/Eric Castellano J 19335596 unidad 58 avnace.JPG', 'CHEVROLET', 'NPR BUS', '05AA2MA', 2009, 'BLANCO', '2022-12-09', '2023-12-09', '2025-03-15'),
(234, 16, 62, '', 'ALEXANDER GRATEROL', 'V.-10.821.95', 'media/mediaDA/Alexander Graterol 10821954 unidad 62 dueño.JPG', 'JOSE LOPEZ', 'V.-13.580.79', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '29A35AU', 1993, 'BLANCO', '2022-10-20', '2023-10-20', '2025-03-15'),
(235, 16, 66, '', 'EDUARDO GONZALEZ', 'V.-14.203.52', 'media/mediaDA/Eduardo Gonzalez 14203529 unidad 66 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '562AA7A', 2007, 'BLANCO', '2022-12-14', '2023-12-14', '2025-03-15'),
(236, 16, 108, '', 'HERRERA BRACAMONTE, JULIO CESAR', 'V.-6.234.043', 'media/mediaDA/Julio Herrera 6234043 unidad 108 dueño.JPG', 'CAMACHO GOMEZ, JOAQUIN', 'V.-6.682.724', 'media/mediaDA/Joaquin Camacho 6682724 unidad 108 avance.JPG', 'HINO MOTORS DE VENEZUELA C.A.', 'FC4KUZ-NZL', '22A01BR', 2012, 'AMARILLO MULTICOLOR', '2023-03-29', '2024-03-29', '2025-03-15'),
(237, 16, 109, '', 'ZAMBRANO RAMIREZ, YELITZA CAROLINA', 'V.-18.161.31', 'media/mediaDA/Yelitza Zambrano 18161316 unidad 109 dueña.JPG', 'ZAMBRANO RAMIREZ, ANGEL LEONARDO', 'V.-20.755.89', 'media/mediaDA/Angel Zambrano 20755895 unidad 109 avance.JPG', 'MERCEDES BENZ', 'OH1420', '34AA05E', 1998, 'BLANCO Y VERDE', '2022-11-23', '2023-11-23', '2025-03-15'),
(238, 16, 111, '', 'DEL TORO DE RIVERA, GRACIELA', 'V.-14.203.53', 'media/mediaDA/Graciela Del Toro 14203532 unidad 111 dueña.JPG', 'RAMOS SILVA, JADER JOSE', 'V.-19.571.25', 'media/mediaDA/Jander Ramos 19571255 unidad 111 avance.JPG', 'ENCAVA', 'ENT-610', '27A05AG', 2002, 'BLANCO - MULTICOLOR', '2022-10-03', '2023-10-03', '2025-03-15'),
(239, 16, 72, '', 'RAFAEL DELFIN', 'V.-11.704.09', 'media/mediaDA/Rafael Delfin 11704092 unidad 72 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'MERCEDES BENZ', 'OH1420', '22A88AA', 2008, 'GRIS MULTICOLOR', '2022-10-02', '2023-10-02', '2025-03-15'),
(240, 16, 114, '', 'ABAD FEBLES, DINES ANTONIO', 'V.-13.308.54', 'media/mediaDA/Denis Abad 13308546 unidad 114 dueño.JPG', 'GUDIÑO CHINCHILLA, RAIMUNDO ANTONIO', 'V.-12.332.02', 'media/mediaDA/Raimundo Gudiño 12332026 unidad 114 avance.JPG', 'MERCEDES BENZ', 'OH1420', '23A63AA', 2008, 'GRIS MULTICOLOR', '2022-10-16', '2023-10-16', '2025-03-15'),
(241, 16, 77, '', 'JONATHAN BECERRA', 'V.- 16.564.9', 'media/mediaDA/Jonathan Becerra 16564984 unidad 146 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'MERCEDES BENZ', 'OH1420', '29A53AM', 2008, 'GRIS MULTICOLOR', '2023-03-24', '2024-03-24', '2025-03-15'),
(242, 16, 116, '', 'MONTEAGUDO GARCIA,JOSE ALTAGRACIA', 'E.-81.963.42', 'media/mediaDA/Jose Monterrudo 81963425 unidad 116 dueño.JPG', 'MACHADO ANGULO, DAIRO JESUS', 'E.-81.458.01', 'media/mediaDA/Jesus Machado 81458012 unidad 116 avance.JPG', 'MERCEDES BENZ', 'OH1420', '38AA20A', 2001, 'BLANCO Y VERDE', '2023-02-07', '2024-02-07', '2025-03-15'),
(243, 16, 118, '', 'AGUILAR CASTILLO, FRANCISCO JAVIER', 'V.-6.682.376', 'media/mediaDA/Javier Aguilar 6682376 unidad 50 avance.JPG', 'DIAZ HERNANDEZ, DAINER DE JESUS', 'V.-17.555.31', 'media/mediaDA/Dainer Diaz 17555317 unidad 118 avance.JPG', 'MERCEDES BENZ', 'L0 915', '550AA3U', 2012, 'BLANCO', '2023-04-05', '2024-04-05', '2025-03-15'),
(244, 16, 120, '', 'BORGES OJEDA, JHONALBERT', 'V.-17.926.71', 'media/mediaDA/Jhonalbert Borges 17926711 unidad 120 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'MERCEDES BENZ', 'OH1420', '34AA06E', 2008, 'GRIS MULTICOLOR', '2022-11-08', '2023-11-08', '2025-03-15'),
(245, 16, 123, '', 'ORTIZ GUTIERREZ, JONATHAN JAVIER', 'V.-16.541.52', 'media/mediaDA/Jonathan Ortiz 16541521 unidad 123 dueño.JPG', 'ARAQUE  BRICEÑO, JAIRO DEL CARMEN', 'V.-13.762.03', 'media/mediaDA/Jairo Araque 13762033 unidad 123 avance.JPG', 'ENCAVA', 'ENT-900', '08AB6FG', 2010, 'BLANCO - MULTICOLOR', '2023-05-10', '2024-05-10', '2025-03-15'),
(246, 16, 126, '', 'THEOT MONSALVE, ROSALIANNY', 'V.-15.457.31', 'media/mediaDA/Rosalianny Theot 15457317 unidad 126 dueña.JPG', 'GIL BUITRAGO, HECTOR JOSE', 'V.-11.740.17', 'media/mediaDA/Hector Gil 11740175 unidad 126 avance.JPG', 'ENCAVA', 'ENT-610', '20A12AM', 2008, 'BLANCO - MULTICOLOR', '2023-03-22', '2024-03-22', '2025-03-15'),
(247, 16, 86, '', 'TULIO RODRIGUEZ', 'V.-6.197.002', 'media/mediaDA/Tulio Rodriguez 6197002 unidad 86 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '511AA3A', 2004, 'BLANCO MULTICOLOR', '2022-10-28', '2023-10-28', '2025-03-15'),
(248, 16, 139, '', 'ROJAS VERGARA, JOSÉ ALÍ', 'V.-16.704.36', 'media/mediaDA/Jose Rojas 16704363 unidad 139 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '21A35BA', 2008, 'BLANCO MULTICOLOR', '2023-04-21', '2024-04-21', '2025-03-15'),
(249, 16, 93, '', 'RAMON QUINTERO', 'V.-10.712.49', 'media/mediaDA/Ramon Quintero 10712497 unidad 93 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'AUTOGAGO', 'A-475', '554AA4U', 1993, 'BLANCO MULTICOLOR', '2023-04-11', '2024-04-11', '2025-03-15'),
(250, 16, 143, '', 'MENDEZ, ALIRIO ANTONIO', 'V.-9.965.185', 'media/mediaDA/Alirio Mendez 9965185 unidad 147 dueño.JPG', 'PAREDES FLORES, OSCAR MANUEL', 'V.-17.982.53', 'media/mediaDA/Oscar Paredes 17982539 unidad 143 avance.JPG', 'MERCEDES BENZ', 'OH1420', '29A39AM', 2008, 'GRIS MULTICOLOR', '2023-03-31', '2024-03-31', '2025-03-15'),
(252, 16, 95, '', 'LUIS CEBALLOS', 'V- 15.024.84', 'media/mediaDA/Luis Ceballos 15024842 unidad 95 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '531AA1Y', 2010, 'BLANCO MULTICOLOR', '2022-11-29', '2023-11-29', '2025-03-15'),
(253, 16, 147, '', 'MENDEZ ALIRIO ANTONIO', 'V.-9.965.185', 'media/mediaDA/Alirio Mendez 9965185 unidad 147 dueño.JPG', 'CHACON MORA, JESUS BERNARDINO', 'V.-13.762.25', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '20A32BP', 2008, 'BLANCO MULTICOLOR', '2023-03-31', '2024-03-31', '2025-03-15'),
(254, 16, 96, '', 'LUIS APONTE', 'V.-19.513.07', 'media/mediaDA/Luis Aponte 19513078 unidad 96 dueño.JPG', 'FRANCISCO ACEVEDO', 'V- 21.551.24', 'media/mediaDA/Francisco Acevedo 21551246 unidad 96 avance.JPG', 'ENCAVA', 'E-NT610', '09AB0RG', 2002, 'BLANCO MULTICOLOR', '2023-03-29', '2024-03-29', '2025-03-15'),
(255, 16, 155, '', 'VELASQUEZ HOLLED, JOSE MARTIN', 'V.-3.783.366', 'media/mediaDA/Jose Velasquez 3783366 unidad 34 dueño.JPG', 'VALERA VARGAS, JOSÉ LEONARDO', 'V.-19.270.79', 'media/mediaDA/Leonardo Valera 19270795 unidad 155 avance.JPG', 'ENCAVA', 'ENT-610', '20A23BP', 2007, 'BLANCO MULTICOLOR', '2023-04-11', '2024-04-11', '2025-03-15'),
(256, 16, 156, '', 'MENDEZ, ALIRIO ANTONIO', 'V.-9.965.185', 'media/mediaDA/Alirio Mendez 9965185 unidad 147 dueño.JPG', 'BELLO CISNEROS,CARLOS RAMON', 'V.-13.693.61', 'media/mediaDA/Carlos Bello 13693612 unidad 156 avance.JPG', 'MERCEDES BENZ', 'OH1420', 'AD4992', 1998, 'BLANCO Y AZUL', '2023-03-31', '2024-03-31', '2025-03-15'),
(257, 16, 160, '', 'BRICEÑO PEREZ, HERMINIO', 'V.- 9.128.08', 'media/mediaDA/Erminio Briceño 9128085 unidad 160 dueño.JPG', 'BRICEÑO BRICEÑO, CARLOS EDUARDO', 'V.-17.527.74', 'media/mediaDA/Carlos Briceño 17527741 unidad 160 avance.JPG', 'ENCAVA', 'ENT-610', '28A32AO', 1992, 'BLANCO MULTICOLOR', '2023-07-06', '2024-07-06', '2025-03-15'),
(258, 16, 98, '', 'ALEXANDER MARQUEZ', 'V.-15.927.00', 'media/mediaDA/Alexander Marquez 15927008 unidad 98 dueño.JPG', 'ANGEL MOLINA ', 'V.-10.875.60', 'media/mediaDA/Angel Molina 10875602 unidad 98 avance.JPG', 'ENCAVA', 'E-NT610', '22A10AE', 2006, 'BLANCO MULTICOLOR', '2022-11-07', '2023-11-07', '2025-03-15'),
(259, 16, 163, '', 'DEL TORO DE RIVERA, GRACIELA', 'V.-14.203.53', 'media/mediaDA/Graciela Del Toro 14203532 unidad 111 dueña.JPG', 'HERNANDEZ VARGAS, YEIBEL MANUEL', 'V.-24.887.90', 'media/mediaDA/Yeibel Hernandez 24887908 unidad 163 avance.JPG', 'MERCEDES BENZ', 'OH1420', '21A06BA', 2008, 'GRIS MULTICOLOR', '2022-12-03', '2023-12-03', '2025-03-15'),
(260, 16, 167, '', 'ALVARADO ZAMBRANO, POL GUILLERMO', 'V.-14.486.65', 'media/mediaDA/Pol Alvarado 14486654 unidad 167 dueño.JPG', 'LOBO CAMACHO, YIRMIN OSCAR', 'V.-15.665.24', 'media/mediaDA/Jimmy Lobo 15665246 unidad 167 avance.JPG', 'MERCEDES BENZ', '1721', '6051A7A', 2010, 'BLANCO MULTICOLOR', '2022-11-23', '2023-11-23', '2025-03-15'),
(261, 16, 99, '', 'FRANK BLANCO ', 'V.-14.890.98', 'media/mediaDA/Frank Blanco 14890987 unidad 99 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'NPR BUS', '28A04AA', 2014, 'BLANCO MULTICOLOR', '2023-04-01', '2024-04-01', '2025-03-15'),
(262, 16, 171, '', 'MANUEL MENESES', 'V.-11.681.82', 'media/mediaDA/Manuel Meneses 11681827 unidad 171.JPG', 'ARNOLDO SULBARAN', 'V.-12.718.01', 'media/mediaDA/Ramon Sulbaran 12718013 unidad 171 avance.JPG', 'MERCEDES BENZ', 'OH1420', '38AA36A', 2001, 'BLANCO Y VERDE', '2023-03-03', '2024-03-03', '2025-03-15'),
(263, 16, 92, '', 'FERNANDO ORFAO', 'V.-10.533.74', 'media/mediaDA/Fernando Orfao 10533741 dueño 092.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT900', '20A35AM', 2008, 'BLANCO MULTICOLOR', '2023-11-10', '2024-11-10', '2025-03-15'),
(264, 16, 78, '', 'YUBER VELASQUEZ', 'V.-14.015.14', 'media/mediaDA/Yuber Velásquez 14015144 dueño 078.jpg', 'N/A', 'N/A', '', 'MERCEDES BENZ', 'OH1420', '38AA16A', 2008, 'GRIS MULTICOLOR', '2022-12-15', '2022-12-15', '2025-03-15'),
(265, 16, 16, '', 'WILSON CUADROS', 'E.-82.283.67', 'media/mediaDA/Wilson Cuadros 82263673 dueño 016.jpg', 'ARGENIS BRACAMONTE', 'V.-22.671.41', 'media/mediaDA/Argenis Bracamonte 22671416 avance 016.jpg', 'ENCAVA', 'ENT 610', '24A84AS', 2007, 'BLANCO MULTICOLOR', '2023-03-29', '2024-03-29', '2025-03-15'),
(267, 16, 80, '', 'JHONALBERT BORGES', 'V.-17.926.71', 'media/mediaDA/Jhonalbert Borges 17926711 dueño 080.jpg', 'UBALDO FLEBES', 'V.-18.589.73', 'media/mediaDA/Ubaldo Febles 18589732 avance 080.jpg', 'MERCEDES BENZ', '366', '32AA00Y', 1998, 'BLANCO MULTICOLOR', '2023-03-31', '2024-03-31', '2025-03-15'),
(268, 16, 104, '', 'RAFAEL DURAN', 'V.-9.159.925', 'media/mediaDA/Rafael Durán 9159925 dueño 104.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT 610', '06AA7FW', 2002, 'BLANCO MULTICOLOR', '2023-09-28', '2024-09-28', '2025-03-15'),
(269, 16, 66, '', 'JESUS POLANCO', 'V.-14.017.70', 'media/mediaDA/Abraham Antesano 81332354 unidad 60 dueño.JPG', 'ENDER VELASQUEZ', 'V.- 14.829.4', 'media/mediaDA/Adolfo Ortiz 19084902 unidad 137 avance.JPG', 'MERCEDES BENZ', 'OH1420', '38AA41A', 1998, 'BLANCO Y AZUL', '2022-12-12', '2023-12-12', '2025-03-15'),
(270, 17, 13, '20230009', 'CARRASQUEL RINCON, GABRIEL GREGORIO', 'V.-16.380.02', 'media/mediaDA/Gabriel Carrasquel 16380020 dueño unidad 13.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'VOLKSWAGEN', 'NEOBUS', '02AA1FA', 1998, 'BLANCO', '2023-02-17', '2024-02-17', '2025-03-15'),
(271, 17, 21, '', 'VASQUEZ ROJAS, JESUS ALEXANDER', 'V.-15.588.85', 'media/mediaDA/Jesus Vasquez 15588850 dueño unidad 08.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'MITSUBISHI', 'CANTER FE 649-D', 'AF2516', 1999, 'BLANCO', '2023-03-03', '2024-03-03', '2025-03-15'),
(272, 17, 23, '', 'VASQUEZ ROJAS, JESUS ALEXANDER', 'V.-15.588.85', 'media/mediaDA/Jesus Vasquez 15588850 dueño unidad 08.JPG', 'GONZALEZ RANGEL, CARLOS LEANDRO', 'V.-18.369.35', 'media/mediaDA/Carlos Gonzalez 18369352 avance unidad 23.JPG', 'ENCAVA', 'ENT-610', 'AF1570', 2001, 'BLANCO MULTICOLOR', '2023-03-03', '2024-03-03', '2025-03-15'),
(273, 17, 29, '', 'ARAUJO PALENCIA, RIGOBERTO ANTONIO', 'V.-9.176.253', 'media/mediaDA/Rigoberto Araujo 9176253 dueño unidad 29.JPG', 'ARAUJO PALENCIA, NELSON ANTONIO', 'V.-14.237.38', 'media/mediaDA/Nelson Araujo 14237384 avance unidad 29.JPG', 'CHEVROLET', 'ANDINA', 'AC1422', 1984, 'AZUL', '2023-05-04', '2024-05-04', '2025-03-15'),
(274, 17, 31, '', 'MEJIA, JEAN CARLOS', 'V.-16.806.09', 'media/mediaDA/Giancarlo Mejia 16806096 unidad 31 dueño.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'MITSUBISHI', 'BUS CHASIS', '08AB5LM', 2004, 'BLANCO MULTICOLOR', '2023-02-17', '2024-02-17', '2025-03-15'),
(275, 16, 152, '', 'ZACCARIA PERDOMO, FRANCISCO GERARDO', 'V.-14.486.53', 'media/mediaDA/Francisco Zaccaria 14486533 unidad 152 dueño.JPG', 'VALERA VARGAS, JOSÉ LEONARDO', 'V.-19.270.79', 'media/mediaDA/Leonardo Valera 19270795 unidad 155 avance.JPG', 'ENCAVA', 'ENT-610', '20A37AP', 2015, 'BLANCO', '2023-11-24', '2024-11-24', '2025-03-15'),
(276, 2, 42, '', ' MORALES OLIVIER, HUMBERTO JOSE', 'V.-17.060.72', 'media/mediaDA/Morales Humberto 17060725 Dueño 042.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'ANDINA', '01AA3FS', 1983, 'CREMA', '2023-06-21', '2024-06-21', '2025-03-15'),
(277, 2, 119, '', 'OROZCO MEDINA, ONESIMO', 'V.-5.126.006', 'media/mediaDA/Onésimo Orozco 5126006 Dueño 035.jpg', 'OROZCO GARCÍA, HERMINIO', 'V.-9.356.052', 'media/mediaDA/Herminio Orozco 9356052 Avance 119.jpg', 'MERCEDES BENZ', 'LO 915/48 AUTO', '27A73AA', 2013, 'GRIS MULTICOLOR', '2023-06-02', '2024-06-02', '2025-03-15'),
(279, 2, 153, '', 'MORENO SALAS, HENDER ALBERTO', 'V.-6.689.182', 'media/mediaDA/Ender Moreno 6689182 Dueño 153.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'NPR BUS', 'AA438UG', 2008, 'BLANCO', '2023-08-24', '2024-08-24', '2025-03-15'),
(280, 18, 1, '', 'ZALAZAR, LEOBARDO JAVIER', 'V.-13.021.88', 'media/mediaDA/Javier Salazar 13021884 dueño unidad 01.JPG', 'CHACON PEREZ, JIMI ALBERTO', 'V.-19.358.70', 'media/mediaDA/Jimmy Chacon 19358709 avance unidad 01.JPG', 'ENCAVA', 'ENT-900', 'A27AT2G', 2009, 'BLANCO', '2023-09-29', '2024-09-29', '2025-03-15'),
(281, 18, 3, '', 'PERDOMO QUEVEDO, ARGENIS JOSÉ', 'V.- 8.064.68', 'media/mediaDA/Argenis perdomo 8064685 dueño unidad 03.JPG', 'PERDOMO HERNANDEZ, JHONN JOSE', 'V.-19.740.26', 'media/mediaDA/Jhon Perdomo 19740264 avance unidad 03 (2).JPG', 'FORD', 'ANDINA', '08AA9PD', 1991, 'BLANCO MULTICOLOR', '2023-09-08', '2024-09-08', '2025-03-15'),
(282, 18, 4, '', 'CONTRERAS CARRERO, TITO LINO', 'V.-13.965.56', 'media/mediaDA/Titolino Contreras 13965562 dueño unidad 04.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-900', 'A45AF1U', 2012, 'BLANCO DOS TONOS', '2023-02-27', '2024-02-27', '2025-03-15'),
(283, 18, 5, '', 'GARCIA ORTIZ, MARIBEL DEL CARMEN', 'V.- 12.501.1', 'media/mediaDA/Maribel Garcia 12501153 dueña unidad 05.JPG', 'MADERA SAMPAYO, FRANKLIN DARIO', 'V.-16.027.91', 'media/mediaDA/Franklin Madera 16027912 avance unidad 05.JPG', 'ENCAVA', 'ENT-900', '04AC2NL', 2012, 'AZUL DOS TONOS ', '2023-02-14', '2024-02-14', '2025-03-15'),
(284, 18, 8, '', 'MEDINA, DANIEL ONEIVER', 'V.-13.965.91', 'media/mediaDA/Daniel Medina 13965911 dueño.PNG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '01AD7EL', 2000, 'BLANCO MULTICOLOR', '2023-05-23', '2024-05-23', '2025-03-15'),
(285, 18, 10, '', 'GUERRA BRITO, OSWALDO JOSÉ', 'V.- 14.745.8', 'media/mediaDA/Oswaldo Guerra 14745818 dueño unidad 10.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'B-350', '01AA2PA', 1984, 'BLANCO MULTICOLOR', '2023-03-14', '2024-03-14', '2025-03-15'),
(286, 18, 11, '', 'INFANTE INFANTE, ANTONIO JOSE', 'V.-5.785.457', 'media/mediaDA/Antonio Infante 5785457 dueño unidad 11.JPG', 'CAMPOS COLMENARES, JUAN ALEXANDER', 'V.-26.209.60', 'media/mediaDA/na.jpg', 'IVECO', 'CC100E18M', '08AB59G', 2003, 'BLANCO MULTICOLOR', '2023-04-25', '2024-04-25', '2025-03-15'),
(287, 18, 17, '', 'RODRIGUEZ LEAL, REINALDO JESUS', 'V.-22.027.27', 'media/mediaDA/Reinaldo Rodriguez 22027278 dueño unidad 17.JPG', 'DELGADO HENAO, RICARDO', 'V.-16.378.23', 'media/mediaDA/Ricardo Delgado 16378239 avance unidad 17.JPG', 'FORD', 'ANDINO', '07AA7HW', 1985, 'BLANCO MULTICOLOR', '2023-06-17', '2024-06-17', '2025-03-15'),
(289, 18, 23, '', 'PALOMINO GAONA, MARGARITA', 'V.-22.026.97', 'media/mediaDA/Margarita Palomino 22026973 dueña unidad 30 25 29 23 28.JPG', 'TORRES HOYO, VICTOR MANUEL', 'V.-16.635.80', 'media/mediaDA/Victor Torres 16635809 avance unidad 23.JPG', 'ENCAVA', 'ENT-610', '02AA5FW', 2008, 'BLANCO MULTICOLOR', '2023-04-05', '2024-04-05', '2025-03-15'),
(290, 18, 28, '', 'PALOMINO GAONA, MARGARITA', 'V. 22.026.97', 'media/mediaDA/Margarita Palomino 22026973 dueña unidad 30 25 29 23 28.JPG', 'SANCHEZ BARBA, DEYVIS ALÍ', 'V.-15.612.48', 'media/mediaDA/Deivis Sanchez 15612488 avance unidad 28.JPG', 'ENCAVA', '610-32', '05AD1PS', 1996, 'BLANCO MULTICOLOR', '2023-04-05', '2024-04-05', '2025-03-15'),
(291, 18, 33, '', 'MENDEZ GONZALEZ, ALVARO DARIO', 'V.-10.236.97', 'media/mediaDA/Alvaro Mendez 10236970 dueño unidad 33.JPG', 'CHACON, JHONALBERT IVAN', 'V.-22.522.02', 'media/mediaDA/Jhonalbert Chacon 22522023 avance unidad 33.JPG', 'IVECO', 'CC100E18M', '04AB5PA', 2003, 'BLANCO MULTICOLOR', '2023-04-10', '2024-04-10', '2025-03-15'),
(292, 18, 42, '', 'HERNANDEZ TORO, CESAR JAVIER', 'V.-15.172.68', 'media/mediaDA/Cesar Hernandez 15172685 dueño unidad 42.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'B350', '21A00AA', 1985, 'BLANCO MULTICOLOR', '2023-08-18', '2024-08-18', '2025-03-15'),
(294, 18, 48, '', 'MACIAS CEDEÑO, MIGUEL ANGEL', 'V.-24.977.92', 'media/mediaDA/Miguel Macias 24977920 dueño unidad 48.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'YUTONG BUS', 'ZK6752D', '01AB4XT', 2015, 'ROJO', '2023-01-15', '2024-01-15', '2025-03-15'),
(295, 18, 50, '', 'RAMIREZ ALVIAREZ, JHAN CARLOS', 'V.- 16.409.8', 'media/mediaDA/Carlos Ramirez 16409848 dueño unidad 50.JPG', 'COLMENARES ALVIAREZ, JUNIOR JOSÉ', 'V.-19.135.33', 'media/mediaDA/Junior Colmenares 19135332 avance unidad 50 (2).JPG', 'ENCAVA', 'ISUZU', '02AA6JG', 1986, 'BLANCO MULTICOLOR', '2023-06-07', '2024-06-07', '2025-03-15'),
(296, 18, 51, '', 'PERNIA ESCALANTE, ALVARO ENRIQUE', 'V.-16.663.56', 'media/mediaDA/Alvaro Pernia 16663563 dueño unidad 51.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ISUZU', '01AB91G', 1997, 'BLANCO MULTICOLOR', '2023-03-28', '2024-03-28', '2025-03-15'),
(297, 18, 58, '', 'ZAMBRANO , JAVIER JOSÉ', 'V.-13.426.36', 'media/mediaDA/Jose Zambrano 13426361 dueño unidad 58.JPG', 'RAMIREZ PERNIA, JEANN CARLOS', 'V.-18.762.16', 'media/mediaDA/Geann Ramirez 18762166 avance unidad 58.JPG', 'FORD', 'ANDINO', '04AB0US', 1992, 'BLANCO Y AZUL', '2023-11-02', '2024-11-02', '2025-03-15'),
(298, 18, 64, '', 'VIVAS BELANDRIA, YORMAN DAVID', 'V.16.020.458', 'media/mediaDA/Yorman Vivas 16020458 dueño unidad 64.JPG', 'GRANADOS INFANTE, JOSE GREGORIO', 'V.-17.342.90', 'media/mediaDA/Jose Granados 17342906 avance unidad 64.JPG', 'ENCAVA', 'ENT-610', '28A51AL', 2004, 'BLANCO', '2023-09-19', '2024-09-19', '2025-03-15'),
(299, 18, 68, '', 'RODRIGUEZ, ALEJANDRO', 'V.-9.131.963', 'media/mediaDA/socio 68.jpeg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'ANDINO', '01AB4BS', 1983, 'PLATA', '2023-09-20', '2024-09-20', '2025-03-15'),
(300, 18, 69, '', 'JUREGUI PALOMINO, YENNY MARGARITA', 'V.- 17.758.8', 'media/mediaDA/Yenny Haureli 17758878 dueña unidad 69.JPG', 'COCHO JAEN, JORGE RAFAEL', 'V.-18.816.93', 'media/mediaDA/Jorge Cocho 18816931 avance unidad 69.JPG', 'ENCAVA', 'ISUZU', '00AC7TL ', 1991, 'AZUL MULTICOLOR', '2023-04-10', '2024-04-10', '2025-03-15'),
(301, 18, 70, '', 'PALMA EDUARTE,CARLOS ALEXIS', 'V.-17.429.14', 'media/mediaDA/Carlos Palma 17429142 dueño unidad 70.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT900', '23A90AM', 2007, 'BLANCO MULTICOLOR', '2023-11-03', '2024-11-03', '2025-03-15'),
(302, 18, 73, '', 'VIVAS BELANDRIA, JUAN CARLOS', 'V.-16.020.45', 'media/mediaDA/Juan Carlos Vivas 16020457 dueño unidad 73.JPG', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '08AC0NL', 2000, 'BLANCO MULTICOLOR', '2023-11-02', '2024-11-02', '2025-03-15'),
(303, 18, 74, '', 'LUCAS FLORES, LUIS ROBERTO', 'V.-22.016.76', 'media/mediaDA/socio 74.jpeg', 'SILVA PAREDES, GIOVASNNI ANTONIO', 'V.-15.968.05', 'media/mediaDA/avance 74.jpeg', 'IVECO', '59.12 DAILY', '00AB7UG', 2001, 'BLANCO MULTICOLOR', '2023-01-16', '2024-01-16', '2025-03-15'),
(304, 18, 75, '', 'LABRADOR GARCIA, ORLANDO JOSE', 'V.-18.762.96', 'media/mediaDA/socio 75.jpeg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'B350', '21A27AS', 1988, 'CREMA MULTICOLOR', '2023-09-14', '2024-09-14', '2025-03-15'),
(305, 18, 79, '', 'ANDARA MORA, RAFAEL ROMAN', 'V.-11.616.79', 'media/mediaDA/Rafael Andarra 11616798 dueño unidad 79.JPG', 'RUMBOS OSPINO, JULIO ENRIQUE', 'V.-19.354.36', 'media/mediaDA/Julio Rumbo 19354368 avance unidad 79.JPG', 'MERCEDES BENZ', 'LO 915', '27A64AM', 2009, 'BLANCO', '2023-10-19', '2024-10-19', '2025-03-15'),
(306, 20, 1, '', 'CARDENAS, BELKIS MARI', 'V.- 5.433.20', 'media/mediaDA/Belkis Cárdenas 5433201 dueña 001.jpg', 'ROJAS, JORGE LUIS.', 'V.-10.515.35', 'media/mediaDA/Jorge Rojas 10515355 avance 001.jpg', 'FORD', 'ALKON', '03AB6NA', 1987, 'BLANCO MULTICOLOR', '2024-01-11', '2025-01-11', '2025-03-15'),
(307, 20, 84, '', 'EDGAR MORENO', 'V.- 14.963.7', 'media/mediaDA/Edgar Moreno 14963738 dueño 84.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'F-350', '544AA7G', 1981, 'AZUL MULTICOLOR', '2023-07-24', '2024-07-24', '2025-03-15'),
(308, 20, 87, '', 'GUZMAN MAZZEY', 'V.- 14.150.7', 'media/mediaDA/mazzey Guzmán 14150705 87 dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '01AA0OG', 2001, 'BLANCO MULTICOLOR', '2023-09-27', '2024-09-27', '2025-03-15'),
(309, 20, 39, '', 'ESCALONA GONZALEZ, JHON LENIN', 'V.-10.869.78', 'media/mediaDA/Jhon Escalona 10869782 dueño 39.jpg', 'AZUAJE GONZALEZ, JOSÉ YOHY', 'V.-13.866.25', 'media/mediaDA/José Azuaje 13866251 avance 039.jpg', 'MERCEDES BENZ', 'CHASIS LO', '22A50AA', 2010, 'BLANCO MULTICOLOR', '2023-09-13', '2024-09-13', '2025-03-15'),
(310, 20, 44, '', 'VETANCOURT DE LA CRUZ, WILMER GREGORIO', 'V.-14.273.76', 'media/mediaDA/Wilmer Betancourt 14273765 dueño 44.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT610', '501AA4Y', 2007, 'BLANCO MULTICOLOR', '2023-12-23', '2024-12-23', '2025-03-15'),
(311, 20, 89, '', 'ILDEFONSO ROMERO', 'V.- 6546321', 'media/mediaDA/Ildefonso Romero 6546321 dueño 89.jpg', 'ILDEFONSO ROMERO', 'V.- 16.084.3', 'media/mediaDA/Ildefonso Romero 16084379 avance 89.jpg', 'CHEVROLET', 'P31', '505AA7V', 1993, 'BLANCO MULTICOLOR', '2023-10-16', '2025-10-16', '2025-03-15'),
(312, 20, 3, '', 'JAVIER VELASQUEZ', 'V.- 14.789.3', 'media/mediaDA/socio 03 Javier Velazquez.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'P31', '05AD0KS', 1995, 'BLANCO MULTICOLOR', '2023-08-05', '2024-08-05', '2025-03-15'),
(313, 20, 10, '', 'TRINO ALVARADO', 'V.-21.794.11', 'media/mediaDA/Trino Alvarado 21794113 dueño 010.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'ENT-610', '20A79AM', 2008, 'BLANCO MULTICOLOR', '2023-04-14', '2024-04-14', '2025-03-15'),
(314, 20, 11, '', 'WILSON SANTIAGO', 'V.-13.747.18', 'media/mediaDA/socio 11 Wilson Santiago.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'ALKON', 'AC8572', 1993, 'BLANCO', '2023-05-06', '2024-05-06', '2025-03-15'),
(315, 20, 12, '', 'JUNIOR VALENCIA', 'V.-16.083.81', 'media/mediaDA/junior Valencia 16083816 dueño 012.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', '1998', '01AB7FT', 1998, 'VERDE DOS TONOS', '2024-02-20', '2025-02-20', '2025-03-15'),
(316, 20, 21, '', 'MARCOS PALACIOS', 'V.-13.865.13', 'media/mediaDA/socio 21 marcos Palacios.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'B-350', 'AD058', 1986, 'ROJO MULTICOLOR', '2023-10-22', '2024-10-22', '2025-03-15'),
(317, 20, 22, '', 'CARLOS GIRALDO', 'V.-16.226.84', 'media/mediaDA/Carlos Giraldo 16226844 dueño 22.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'F350', '07AD8GL', 1977, 'NARANJA MULTICOLOR', '2023-09-07', '2024-09-07', '2025-03-15'),
(318, 20, 30, '', 'DICSON BRICEÑO', 'V.-16.589.93', 'media/mediaDA/socio 030.jpg', 'WILBUR GEE', 'V.-14.214.18', 'media/mediaDA/Wilbur gee 14214181 avance 30.jpg', 'CHEVROLET', 'ALKON', 'AE0186', 1994, 'BLANCO MULTICOLOR', '2024-01-30', '2025-01-20', '2025-03-15'),
(319, 20, 35, '', 'ANTONIO HENRIQUEZ', 'V.-6.261.696', 'media/mediaDA/Antonio Henríquez 6261696 dueño 035.jpg', 'LUIS BARRIOS ', 'V.-6.968.197', 'media/mediaDA/Luis barrio 6968197 avance 35.jpg', 'CHEVROLET', 'TITAN', '06AB71M', 1987, 'BLANCO Y AZUL', '2024-02-15', '2025-02-15', '2025-03-15'),
(320, 20, 45, '', 'ROBERTO URIETA', 'V.-13.128.66', 'media/mediaDA/Robert Urrieta socio 45.jpg', 'OSWALDO GIL', 'V.-6.692.749', 'media/mediaDA/Oswaldo Gil 6692749 avance 45.jpg', 'ENCAVA', 'ENT-900', 'AC2444', 1975, 'BLANCO MULTICOLOR', '2023-11-21', '2024-11-21', '2025-03-15'),
(321, 20, 84, '', 'MORENO, EDGAR JESUS', 'V.- 14.963.7', 'media/mediaDA/Edgar Moreno 14963738 dueño 84.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'F-350', '544AA7G', 1981, 'AZUL       MULTICOLOR', '2023-09-24', '2024-09-24', '2025-03-15'),
(322, 20, 48, '', 'ARCADIO MARQUEZ', 'V.-10.899.47', 'media/mediaDA/Arcadio Márquez 10899473 dueño 048.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'P31', '24A54AS', 1994, 'GRIS MULTICOLOR', '2023-06-08', '2024-06-08', '2025-03-15'),
(323, 20, 87, '', 'MAZZEY RODRIGUEZ GUZMAN ALFREDO', 'V.- 14.150.7', 'media/mediaDA/mazzey Guzmán 14150705 87 dueño.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'ENCAVA', 'E-NT610', '01AA0OG', 2001, 'BLANCO MULTICOLOR', '2023-09-27', '2024-09-27', '2025-03-15'),
(324, 20, 53, '', 'MIGUEL SAMPER', 'V.-10.441.26', 'media/mediaDA/Miguel samperti 10441269 dueño 53.jpg', 'JUAN RIVAS', 'V.-19.042.46', 'media/mediaDA/Juan Carlos Rivas 19042469 avance 53.jpg', 'ENCAVA', '1991', '26A76AA', 1991, 'BLANCO MULTICOLOR', '2023-06-15', '2024-06-15', '2025-03-15'),
(325, 20, 89, '', 'ROMERO APONTE, ILDEFONSO', 'V.V.-16.084.', 'media/mediaDA/Ildefonso Romero 6546321 dueño 89.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'P31', '505AA7V', 1993, 'BLANCO MULTICOLOR', '2023-10-16', '2025-10-16', '2025-03-15'),
(326, 20, 65, '', 'ENA RICO', 'V.-12.403.95', 'media/mediaDA/Ena Rico 12403955 dueña 65.jpg', 'JOSE FLORES', 'V.-12.220.11', 'media/mediaDA/José flores 12220115 avance 65.jpg', 'CHEVROLET', '1971', 'AA044X', 1971, 'AMARILLO NEGRO', '2024-02-06', '2025-02-06', '2025-03-15'),
(327, 20, 69, '', 'ROBERTO GONZALEZ', 'V.-13.378.26', 'media/mediaDA/Roberto González 13378262 dueño 069.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'P31', '09AC3LS', 1984, 'AZUL MULTICOLOR', '2023-05-20', '2024-05-20', '2025-03-15'),
(328, 20, 96, '', 'PEZZO SEQUEDA, GIANCARLO', 'V.-17.643.45', 'media/mediaDA/Giancarlo Pezzo 17643450 dueño 096.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'CHEVROLET', 'ALKON', '08AB4BA', 1989, 'BLANCO MULTICOLOR', '2023-09-04', '2024-09-04', '2025-03-15'),
(329, 20, 76, '', 'JUSTO RONDON', 'V.-14.385.73', 'media/mediaDA/justo Rondón 14385733 dueño 76.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'ALKON', '09AC1LS', 1988, 'BLANCO ROJO', '2023-11-07', '2024-11-07', '2025-03-15'),
(330, 20, 105, '', 'GIFFONI, DANIELA', 'V.-21.377.76', 'media/mediaDA/Daniela giffoni 21377763 dueña 105.jpg', 'RODRIGUEZ, GERARDO', 'V.-17.643.26', 'media/mediaDA/Gerardo Rodríguez 17643268 avance 105.jpg', 'CHEVROLET', '1987', '03AA0JN', 1987, 'BLANCO', '2023-10-13', '2024-09-13', '2025-03-15'),
(331, 20, 107, '', 'MARTINEZ VILLA, LEÓN EDUARDO', 'V.-24.698.99', 'media/mediaDA/Eduardo Martínez 24698994 dueño 107.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'FORD', 'MAXI WAGON', '03AA0JN', 1987, 'GRIS       MULTICOLOR', '2023-08-24', '2024-08-24', '2025-03-15'),
(332, 20, 116, '', 'ORTEGA HIDALGO, RICHAR RAMON', 'V.- 23.595.5', 'media/mediaDA/Richard Ortega 23595509 dueño 116.jpg', 'PEREZ MARQUEZ, JORGE OMAR', 'V.-9.238.104', 'media/mediaDA/na.jpg', 'CHEVROLET', 'NPR', '24A45AA', 2011, 'BLANCO  ', '2023-10-19', '2024-10-19', '2025-03-15'),
(333, 20, 132, '', 'RAFAEL BARRUETA', 'V.-24.786.52', 'media/mediaDA/Rafael Durán 24786527 dueño 131.jpg', 'DAVID BLANCO', 'V.-13.758.32', 'media/mediaDA/David blanco 13758328 avance 132.jpg', 'FORD', 'F350', '554AA4T', 1991, 'BLANCO ROJO', '2024-02-07', '2025-02-07', '2025-03-15'),
(334, 20, 138, '', 'RICHARD CALDERA', 'V.-17.038.13', 'media/mediaDA/Richard Caldera 17038132 dueño 138.jpg', 'N/A', 'N/A', 'media/mediaDA/na.jpg', 'TITAN', 'T31', '06AA1PD', 1983, 'BLANCO MULTICOLOR', '2024-02-01', '2025-02-01', '2025-03-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(255) NOT NULL,
  `expiration_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_incidencias`
--

CREATE TABLE `t_incidencias` (
  `id_incidencias` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `t_incidencias`
--

INSERT INTO `t_incidencias` (`id_incidencias`, `nombre`) VALUES
(1, 'Trato irrespetuoso al usuario'),
(2, 'No acatar instrucciones del personal identificado'),
(3, 'Incumplimiento del horario de servicio comercial'),
(4, 'Incumplimiento de la ruta de servicio'),
(5, 'Embarque y Desembarque fuera de las paradas demarcadas'),
(6, 'Exceder capacidad máxima de usuarios'),
(7, 'Negarse a transportar a estudiantes o adultos de tercera edad'),
(8, 'Cobro de tarifa de servicio no aprobada'),
(9, 'Realizar trabajos de mecánica en las vías públicas'),
(10, 'Infrigir luz roja de semáforo'),
(11, 'Puerta(s) abierta(s)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usu` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('Admin','Operador','Consulta','Policia') NOT NULL,
  `status` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `usuario`, `password`, `rol`, `status`) VALUES
(1, 'Admin', '123456', 'Admin', 'Activo'),
(2, 'JGelvez', '123456', 'Admin', 'Activo'),
(8, 'LGuerrero', '123456', 'Admin', 'Activo'),
(10, 'HMorales', '123456', 'Operador', 'Activo'),
(11, 'MInfante', '123456', 'Admin', 'Activo'),
(12, 'MMoreno', '123456', 'Admin', 'Activo'),
(13, 'Oficial1', '123456', 'Policia', 'Activo'),
(14, 'Mnarvaez', '123456', 'Admin', 'Activo'),
(15, 'FAraujo', '123456', 'Admin', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contenido_protegido`
--
ALTER TABLE `contenido_protegido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `organizaciones`
--
ALTER TABLE `organizaciones`
  ADD PRIMARY KEY (`id_organizacion`);

--
-- Indices de la tabla `regincidencias`
--
ALTER TABLE `regincidencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_organizaciones` (`id_organizacion`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indices de la tabla `t_incidencias`
--
ALTER TABLE `t_incidencias`
  ADD PRIMARY KEY (`id_incidencias`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contenido_protegido`
--
ALTER TABLE `contenido_protegido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT de la tabla `organizaciones`
--
ALTER TABLE `organizaciones`
  MODIFY `id_organizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `regincidencias`
--
ALTER TABLE `regincidencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_incidencias`
--
ALTER TABLE `t_incidencias`
  MODIFY `id_incidencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `fk_organizaciones` FOREIGN KEY (`id_organizacion`) REFERENCES `organizaciones` (`id_organizacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
