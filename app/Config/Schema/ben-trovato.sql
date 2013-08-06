-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 06/08/2013 às 09:48
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
  `link` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Fazendo dump de dados para tabela `banners`
--

INSERT INTO `banners` (`id`, `position`, `image`, `link`, `created`, `modified`) VALUES
(8, 'encima', '/files/uploads/wallpaper-2918823.jpg', 'http://google.com/', '2013-08-06 06:57:49', '2013-08-06 07:02:39'),
(9, 'embaixo', '/files/uploads/wallpaper-2921849.jpg', '', '2013-08-06 07:03:37', '2013-08-06 07:03:37'),
(10, 'embaixo', '/files/uploads/Penguins.jpg', '', '2013-08-06 07:03:44', '2013-08-06 07:03:44');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Fazendo dump de dados para tabela `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `phone`, `email`, `billing_company`, `billing_street1`, `billing_street2`, `billing_street3`, `billing_street4`, `billing_city`, `billing_state`, `billing_cep`, `delivery_company`, `delivery_street1`, `delivery_street2`, `delivery_street3`, `delivery_street4`, `delivery_city`, `delivery_state`, `delivery_cep`, `billing_is_same_as_delivery_address`) VALUES
(6, 11, '(21) 3586-8412', 'luizhrqas@gmail.com', '', '', '', '', '', '', '', '', '', 'Praça Barão de Drumond', 'Vila Isabel', '10', 'apto. 202', 'Rio de Janeiro', 'RJ', '20560020', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `discount` float DEFAULT NULL,
  `is_used` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `coupons`
--

INSERT INTO `coupons` (`id`, `number`, `discount`, `is_used`, `created`) VALUES
(2, 199985200, 50, 1, '2013-08-06 08:27:16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `glasses`
--

CREATE TABLE IF NOT EXISTS `glasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `photo_1` varchar(255) NOT NULL,
  `photo_2` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `the_style` text,
  `character_frame` text,
  `character_lenses` text,
  `image_hover` varchar(255) NOT NULL,
  `sex` enum('masculino','feminino') NOT NULL,
  `color` enum('tartaruga','verde','listrado','azul','cinza','amarelo','preto','vermelho','marrom','castanho','crystal','') NOT NULL,
  `color2` varchar(255) NOT NULL,
  `material` enum('acetato') NOT NULL,
  `format` enum('quadrado','retangulo','redondo') NOT NULL,
  `size` enum('estreito','medio','largo') NOT NULL,
  `type` enum('grau','solar') NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Fazendo dump de dados para tabela `glasses`
--

INSERT INTO `glasses` (`id`, `sku`, `name`, `photo_1`, `photo_2`, `price`, `the_style`, `character_frame`, `character_lenses`, `image_hover`, `sex`, `color`, `color2`, `material`, `format`, `size`, `type`, `created`, `modified`) VALUES
(9, '0074', 'John Arm', '/files/uploads/Tulips.jpg', '/files/uploads/Lighthouse.jpg', 198, '', '', '', '/files/uploads/Penguins-1.jpg', 'masculino', 'tartaruga', 'Black Piano', 'acetato', 'quadrado', 'estreito', 'grau', '2013-08-06', '2013-08-06');

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
  `json_items` text NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Fazendo dump de dados para tabela `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `reference`, `payment_type`, `payment_status`, `payment_date`, `total_items`, `total_price`, `json_items`, `coupon`, `created`, `modified`) VALUES
(24, 11, 250535200, NULL, NULL, NULL, 1, 178, '[{"OrderItem":{"id":"22","glass_id":"9","lense_type":"demonstracao","lense_id":"5","enabled":true,"created":"2013-08-06 07:13:19","modified":"2013-08-06 07:13:19"},"Glass":{"id":"9","sku":"0074","name":"John Arm","photo_1":"\\/files\\/uploads\\/Tulips.jpg","photo_2":"\\/files\\/uploads\\/Lighthouse.jpg","price":"198","the_style":"","character_frame":"","character_lenses":"","image_hover":"\\/files\\/uploads\\/Penguins-1.jpg","sex":"masculino","color":"tartaruga","color2":"Black Piano","material":"acetato","format":"quadrado","size":"estreito","type":"grau","created":"2013-08-06","modified":"2013-08-06"},"Lense":{"id":"5","name":"Lentes de Demonstra\\u00e7\\u00e3o","description":"","price":"0","discount":"20","type":"demonstracao","label":"Lentes de demonstra\\u00e7\\u00e3o \\u2013 vou colocar em outro lugar","created":"2013-08-04 00:00:00","modified":"2013-08-04 00:00:00"},"price":178}]', '199985200', '2013-08-06 08:40:39', '2013-08-06 08:40:39'),
(25, 11, 72255200, NULL, NULL, NULL, 1, 178, '[{"OrderItem":{"id":"22","glass_id":"9","lense_type":"demonstracao","lense_id":"5","enabled":true,"created":"2013-08-06 07:13:19","modified":"2013-08-06 07:13:19"},"Glass":{"id":"9","sku":"0074","name":"John Arm","photo_1":"\\/files\\/uploads\\/Tulips.jpg","photo_2":"\\/files\\/uploads\\/Lighthouse.jpg","price":"198","the_style":"","character_frame":"","character_lenses":"","image_hover":"\\/files\\/uploads\\/Penguins-1.jpg","sex":"masculino","color":"tartaruga","color2":"Black Piano","material":"acetato","format":"quadrado","size":"estreito","type":"grau","created":"2013-08-06","modified":"2013-08-06"},"Lense":{"id":"5","name":"Lentes de Demonstra\\u00e7\\u00e3o","description":"","price":"0","discount":"20","type":"demonstracao","label":"Lentes de demonstra\\u00e7\\u00e3o \\u2013 vou colocar em outro lugar","created":"2013-08-04 00:00:00","modified":"2013-08-04 00:00:00"},"price":178}]', '', '2013-08-06 08:59:43', '2013-08-06 08:59:43'),
(26, 11, 47345200, NULL, NULL, NULL, 1, 178, '[{"OrderItem":{"id":"22","glass_id":"9","lense_type":"demonstracao","lense_id":"5","enabled":true,"created":"2013-08-06 07:13:19","modified":"2013-08-06 07:13:19"},"Glass":{"id":"9","sku":"0074","name":"John Arm","photo_1":"\\/files\\/uploads\\/Tulips.jpg","photo_2":"\\/files\\/uploads\\/Lighthouse.jpg","price":"198","the_style":"","character_frame":"","character_lenses":"","image_hover":"\\/files\\/uploads\\/Penguins-1.jpg","sex":"masculino","color":"tartaruga","color2":"Black Piano","material":"acetato","format":"quadrado","size":"estreito","type":"grau","created":"2013-08-06","modified":"2013-08-06"},"Lense":{"id":"5","name":"Lentes de Demonstra\\u00e7\\u00e3o","description":"","price":"0","discount":"20","type":"demonstracao","label":"Lentes de demonstra\\u00e7\\u00e3o \\u2013 vou colocar em outro lugar","created":"2013-08-04 00:00:00","modified":"2013-08-04 00:00:00"},"price":178}]', '', '2013-08-06 09:00:01', '2013-08-06 09:00:01');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Fazendo dump de dados para tabela `order_items`
--

INSERT INTO `order_items` (`id`, `glass_id`, `lense_type`, `lense_id`, `enabled`, `created`, `modified`) VALUES
(21, 8, 'de_sol_com_grau', 7, 1, '2013-08-05 17:43:15', '2013-08-05 17:43:15'),
(22, 9, 'demonstracao', 5, 1, '2013-08-06 07:13:19', '2013-08-06 07:13:19');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `role`, `created`, `modified`) VALUES
(3, 'bentrovato', 'João Ferraz', '99e4ac1e2734da29ad97136c041f92418437376b', 'admin', '2013-08-02 02:35:39', '2013-08-02 02:35:39'),
(4, 'marketingshop', 'Marketing Shop', '546e0d17358d9502dc6d4e211d3f85f4b746f482', 'admin', '2013-08-02 03:04:01', '2013-08-02 03:04:01'),
(11, 'luizhrqas', 'Luiz Henrique', '02c9f1731847db6f2dc34755bbe2935af0d4c3be', 'client', '2013-08-05 08:35:32', '2013-08-05 08:35:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
