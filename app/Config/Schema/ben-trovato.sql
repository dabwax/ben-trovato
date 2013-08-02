-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 01/08/2013 às 08:42
-- Versão do servidor: 10.0.3-MariaDB
-- Versão do PHP: 5.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `ben-trovato`
--
CREATE DATABASE IF NOT EXISTS `ben-trovato` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ben-trovato`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` enum('encima','embaixo') NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_dir` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Fazendo dump de dados para tabela `banners`
--

INSERT INTO `banners` (`id`, `position`, `image`, `image_dir`, `link`, `created`, `modified`) VALUES
(4, 'encima', 'Desert.jpg', '4', '', '0000-00-00 00:00:00', '2013-08-01 00:00:00'),
(5, 'encima', 'Koala.jpg', '5', 'http://google.com', '0000-00-00 00:00:00', '2013-08-01 06:41:53'),
(6, 'embaixo', 'sub-1.jpg', '6', '', '2013-08-01 06:43:31', '2013-08-01 06:43:31'),
(7, 'embaixo', 'sub-2.jpg', '7', '', '2013-08-01 06:43:36', '2013-08-01 06:43:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glasses`
--

CREATE TABLE IF NOT EXISTS `glasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `photo_1` varchar(255) NOT NULL,
  `photo_1_dir` varchar(255) DEFAULT NULL,
  `photo_2` varchar(255) NOT NULL,
  `photo_2_dir` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `the_style` text,
  `character_frame` text,
  `character_lenses` text,
  `image_hover` varchar(255) NOT NULL,
  `image_hover_dir` varchar(255) DEFAULT NULL,
  `sex` enum('masculino','feminino') NOT NULL,
  `color` enum('tartaruga','verde','listrado','azul','cinza','amarelo','preto','vermelho','marrom','castanho','crystal','') NOT NULL,
  `material` enum('acetato') NOT NULL,
  `format` enum('quadrado','retangulo','redondo') NOT NULL,
  `size` enum('estreito','medio','largo') NOT NULL,
  `type` enum('grau','solar') NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Fazendo dump de dados para tabela `glasses`
--

INSERT INTO `glasses` (`id`, `sku`, `name`, `photo_1`, `photo_1_dir`, `photo_2`, `photo_2_dir`, `price`, `the_style`, `character_frame`, `character_lenses`, `image_hover`, `image_hover_dir`, `sex`, `color`, `material`, `format`, `size`, `type`, `created`, `modified`) VALUES
(6, '123', 'Teste de Óculos', 'Chrysanthemum.jpg', '6', 'Hydrangeas.jpg', '6', 142, '', '', '', 'Jellyfish.jpg', '6', 'masculino', 'tartaruga', 'acetato', 'quadrado', 'estreito', 'grau', '2013-08-01', '2013-08-01'),
(7, '0076', 'Lucca', 'wallpaper-2918823.jpg', '7', 'wallpaper-2921849.jpg', '7', 140, '', '', '', 'Penguins.jpg', '7', 'masculino', 'tartaruga', 'acetato', 'quadrado', 'estreito', 'grau', '2013-08-01', '2013-08-01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
