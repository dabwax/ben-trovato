-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 05/08/2013 às 08:02
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
-- Estrutura para tabela `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `billing_company` varchar(255) DEFAULT NULL,
  `billing_street1` varchar(255) DEFAULT NULL,
  `billing_street2` varchar(255) DEFAULT NULL,
  `billing_street3` varchar(255) DEFAULT NULL,
  `billing_street4` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_cep` varchar(255) DEFAULT NULL,
  `delivery_company` varchar(255) DEFAULT NULL,
  `delivery_street1` varchar(255) DEFAULT NULL,
  `delivery_street2` varchar(255) DEFAULT NULL,
  `delivery_street3` varchar(255) DEFAULT NULL,
  `delivery_street4` varchar(255) DEFAULT NULL,
  `delivery_city` varchar(255) DEFAULT NULL,
  `delivery_state` varchar(255) DEFAULT NULL,
  `delivery_cep` varchar(255) DEFAULT NULL,
  `billing_is_same_as_delivery_address` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `is_used` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Fazendo dump de dados para tabela `glasses`
--

INSERT INTO `glasses` (`id`, `sku`, `name`, `photo_1`, `photo_1_dir`, `photo_2`, `photo_2_dir`, `price`, `the_style`, `character_frame`, `character_lenses`, `image_hover`, `image_hover_dir`, `sex`, `color`, `material`, `format`, `size`, `type`, `created`, `modified`) VALUES
(6, '0076', 'Teste de Óculos', 'Chrysanthemum.jpg', '6', 'Hydrangeas.jpg', '6', 198, '', '', '', 'Jellyfish.jpg', '6', 'masculino', 'tartaruga', 'acetato', 'quadrado', 'estreito', 'grau', '2013-08-01', '2013-08-02'),
(7, '0075', 'Teste de Óculos', 'wallpaper-2918823.jpg', '7', 'wallpaper-2921849.jpg', '7', 198, '', '', '', 'Koala.jpg', '7', 'masculino', 'verde', 'acetato', 'quadrado', 'estreito', 'grau', '2013-08-03', '2013-08-03'),
(8, '0080', 'Solar', 'Tulips.jpg', '8', 'Jellyfish.jpg', '8', 198, '<p>Esse &eacute; o estilo do &oacute;culos de Sol.</p>', '<p>- Caracter&iacute;stica 1;</p><p>- Caracter&iacute;stica 2;</p><p>- Caracter&iacute;stica 3;</p>', '<p>- Caracter&iacute;stica 3;</p><p>- Caracter&iacute;stica 2;</p><p>- Caracter&iacute;stica 1;</p>', 'Koala.jpg', '8', 'masculino', 'listrado', 'acetato', 'quadrado', 'estreito', 'solar', '2013-08-05', '2013-08-05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lenses`
--

CREATE TABLE IF NOT EXISTS `lenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `type` enum('de_grau','sem_grau','demonstracao','de_sol','de_sol_com_grau') NOT NULL,
  `label` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Fazendo dump de dados para tabela `lenses`
--

INSERT INTO `lenses` (`id`, `name`, `description`, `price`, `discount`, `type`, `label`, `created`, `modified`) VALUES
(1, 'Lente Fina 1.56', 'Receita no intervalo de + a - 4, com astigmatismo até -2.', 0, 0, 'de_grau', 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(2, 'Lente Fina 1.56', 'Receita no intervalo de + a - 4, com astigmatismo superior a -2.', 40, 0, 'de_grau', 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(3, 'Lente Super Fina 1.67', 'Receita para miopia superior a -4.', 140, 0, 'de_grau', 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(4, 'Lente Sem Grau', '', 0, 0, 'sem_grau', 'Lentes sem grau – vou usar apenas por estilo', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(5, 'Lentes de Demonstração', '', 0, 20, 'demonstracao', 'Lentes de demonstração – vou colocar em outro lugar', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(6, 'Lentes de Sol', '', 0, 0, 'de_sol', 'Lentes de sol – vou usar para proteger meus olhos (com proteção UVA/UVB)', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(7, 'Lentes de Sol com Grau', 'Receita no intervalo de + a - 4, com astigmatismo até -4.', 40, 0, 'de_sol_com_grau', 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail (com proteção UVA/UVB)', '2013-08-04 00:00:00', '2013-08-04 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `total_items` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glass_id` int(11) NOT NULL,
  `lense_type` varchar(255) NOT NULL,
  `lense_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `related_glasses`
--

CREATE TABLE IF NOT EXISTS `related_glasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glass_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Fazendo dump de dados para tabela `related_glasses`
--

INSERT INTO `related_glasses` (`id`, `glass_id`, `related_id`) VALUES
(3, 6, 6),
(4, 7, 6),
(5, 8, 6),
(6, 8, 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Fazendo dump de dados para tabela `settings`
--

INSERT INTO `settings` (`id`, `name`, `key`, `value`, `created`, `modified`) VALUES
(1, 'E-mail de Contato', 'email_contato', 'contato@bentrovato.com.br', '2013-08-02 00:55:32', '2013-08-02 00:58:45'),
(2, 'Fittingbox - CustomerID', 'fittingbox_customerid', 'bentrovato', '2013-08-02 00:56:22', '2013-08-02 00:56:22'),
(3, 'Google Analytics', 'google_analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-XXXXX-Y'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', '2013-08-02 03:18:27', '2013-08-02 03:49:06'),
(4, 'ClickTale - after the body tag', 'click_tale_after_body_tag', '<!-- ClickTale Top part -->\r\n<script type="text/javascript">\r\nvar WRInitTime=(new Date()).getTime();\r\n</script>\r\n<!-- ClickTale end of Top part -->', '2013-08-02 03:18:54', '2013-08-02 03:18:54'),
(5, 'ClickTale - before the body tag', 'clicktale_before_body_tag', '  \r\n<!-- ClickTale Bottom part -->\r\n\r\n<script type=''text/javascript''>\r\n// The ClickTale Balkan Tracking Code may be programmatically customized using hooks:\r\n// \r\n//   function ClickTalePreRecordingHook() { /* place your customized code here */  }\r\n//\r\n// For details about ClickTale hooks, please consult the wiki page http://wiki.clicktale.com/Article/Customizing_code_version_2\r\n\r\ndocument.write(unescape("%3Cscript%20src=''"+\r\n(document.location.protocol==''https:''?\r\n"https://clicktalecdn.sslcs.cdngc.net/www08/ptc/55d5f1ba-bd99-4569-b7fd-87c0f6362446.js":\r\n"http://cdn.clicktale.net/www08/ptc/55d5f1ba-bd99-4569-b7fd-87c0f6362446.js")+"''%20type=''text/javascript''%3E%3C/script%3E"));\r\n</script>\r\n\r\n<!-- ClickTale end of Bottom part -->\r\n', '2013-08-02 03:19:21', '2013-08-02 03:19:21'),
(6, 'E-mail do PagSeguro', 'pagseguro_email', 'akuraaaa0@gmail.com', '2013-08-05 00:00:00', '2013-08-05 00:00:00'),
(7, 'Token do PagSeguro', 'pagseguro_token', 'F292A6D470E84A218CC1EC5D023A89DE', '2013-08-05 00:00:00', '2013-08-05 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subscriptions`
--

CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `role`, `created`, `modified`) VALUES
(3, 'bentrovato', 'João Ferraz', '99e4ac1e2734da29ad97136c041f92418437376b', 'admin', '2013-08-02 02:35:39', '2013-08-02 02:35:39'),
(4, 'marketingshop', 'Marketing Shop', '546e0d17358d9502dc6d4e211d3f85f4b746f482', 'admin', '2013-08-02 03:04:01', '2013-08-02 03:04:01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
