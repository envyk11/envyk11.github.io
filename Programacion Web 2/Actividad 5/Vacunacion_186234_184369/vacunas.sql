-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-08-2025 a las 12:33:42
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `vacunas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicación`
--

CREATE TABLE IF NOT EXISTS `aplicación` (
  `idAplicacion` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` int(11) NOT NULL,
  `idVacuna` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `NumeroDosis` int(11) NOT NULL,
  `NombreAplicador` varchar(100) NOT NULL,
  PRIMARY KEY (`idAplicacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `aplicación`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `Edad` int(11) NOT NULL,
  `Curp` varchar(150) NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `Folio` int(11) NOT NULL,
  `VacunaAplicada` varchar(150) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `ApellidoPaterno` varchar(100) NOT NULL,
  `ApellidoMaterno` varchar(100) NOT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `persona`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna`
--

CREATE TABLE IF NOT EXISTS `vacuna` (
  `idvacuna` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `laboratorio` varchar(150) NOT NULL,
  `dosisNecesarias` int(11) NOT NULL,
  `efectividad` varchar(100) NOT NULL,
  PRIMARY KEY (`idvacuna`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `vacuna`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
