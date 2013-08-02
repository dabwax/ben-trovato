-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 02/08/2013 às 05:10
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

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
(6, '123', 'Teste de Óculos', 'Chrysanthemum.jpg', '6', 'Hydrangeas.jpg', '6', 1.42, '', '', '', 'Jellyfish.jpg', '6', 'masculino', 'tartaruga', 'acetato', 'quadrado', 'estreito', 'grau', '2013-08-01', '2013-08-02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `related_glasses`
--

CREATE TABLE IF NOT EXISTS `related_glasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glass_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `related_glasses`
--

INSERT INTO `related_glasses` (`id`, `glass_id`, `related_id`) VALUES
(2, 6, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `key` text NOT NULL,
  `value` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Fazendo dump de dados para tabela `settings`
--

INSERT INTO `settings` (`id`, `name`, `key`, `value`, `created`, `modified`) VALUES
(1, 'E-mail de Contato', 'email_contato', 'contato@bentrovato.com.br', '2013-08-02 00:55:32', '2013-08-02 00:58:45'),
(2, 'Fittingbox - CustomerID', 'fittingbox_customerid', 'bentrovato', '2013-08-02 00:56:22', '2013-08-02 00:56:22'),
(3, 'Google Analytics', 'google_analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-XXXXX-Y'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', '2013-08-02 03:18:27', '2013-08-02 03:49:06'),
(4, 'ClickTale - after the body tag', 'click_tale_after_body_tag', '<!-- ClickTale Top part -->\r\n<script type="text/javascript">\r\nvar WRInitTime=(new Date()).getTime();\r\n</script>\r\n<!-- ClickTale end of Top part -->', '2013-08-02 03:18:54', '2013-08-02 03:18:54'),
(5, 'ClickTale - before the body tag', 'clicktale_before_body_tag', '  \r\n<!-- ClickTale Bottom part -->\r\n\r\n<script type=''text/javascript''>\r\n// The ClickTale Balkan Tracking Code may be programmatically customized using hooks:\r\n// \r\n//   function ClickTalePreRecordingHook() { /* place your customized code here */  }\r\n//\r\n// For details about ClickTale hooks, please consult the wiki page http://wiki.clicktale.com/Article/Customizing_code_version_2\r\n\r\ndocument.write(unescape("%3Cscript%20src=''"+\r\n(document.location.protocol==''https:''?\r\n"https://clicktalecdn.sslcs.cdngc.net/www08/ptc/55d5f1ba-bd99-4569-b7fd-87c0f6362446.js":\r\n"http://cdn.clicktale.net/www08/ptc/55d5f1ba-bd99-4569-b7fd-87c0f6362446.js")+"''%20type=''text/javascript''%3E%3C/script%3E"));\r\n</script>\r\n\r\n<!-- ClickTale end of Bottom part -->\r\n', '2013-08-02 03:19:21', '2013-08-02 03:19:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subscriptions`
--

CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`) VALUES
(1, 'luizhrqas@gmail.com'),
(2, 'teste@teste.com'),
(3, 'dsadada@fdasfsa.com'),
(4, 'abacate@abacate.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','client') NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `role`, `created`, `modified`) VALUES
(2, 'luizhrqas', 'Luiz Henrique', 'e497274005614e7cb7142b08b6544bcb80794522', 'client', '2013-08-02 02:31:46', '2013-08-02 02:31:46'),
(3, 'bentrovato', 'João Ferraz', '99e4ac1e2734da29ad97136c041f92418437376b', 'admin', '2013-08-02 02:35:39', '2013-08-02 02:35:39'),
(4, 'marketingshop', 'Marketing Shop', '546e0d17358d9502dc6d4e211d3f85f4b746f482', 'admin', '2013-08-02 03:04:01', '2013-08-02 03:04:01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
