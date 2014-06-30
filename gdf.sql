-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 30-Jun-2014 às 18:29
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `gdf`
--
CREATE DATABASE IF NOT EXISTS `gdf` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gdf`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filme`
--

CREATE TABLE IF NOT EXISTS `filme` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Diretor` varchar(50) NOT NULL,
  `Genero` varchar(30) NOT NULL,
  `Enredo` varchar(500) NOT NULL,
  `Ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_has_filme`
--

CREATE TABLE IF NOT EXISTS `usuario_has_filme` (
  `ID_Filme` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `Pontuacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_has_usuario`
--

CREATE TABLE IF NOT EXISTS `usuario_has_usuario` (
  `ID_Usuario1` int(11) NOT NULL,
  `ID_Usuario2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
