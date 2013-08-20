-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 20/08/2013 às 22h04min
-- Versão do Servidor: 5.5.32
-- Versão do PHP: 5.3.10-1ubuntu3.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `ben-trovato`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` enum('encima','embaixo') NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Extraindo dados da tabela `banners`
--

INSERT INTO `banners` (`id`, `position`, `image`, `link`, `created`, `modified`) VALUES
(25, 'encima', '/files/uploads/Banner-Home-08.jpg', '', '2013-08-15 20:19:36', '2013-08-15 23:02:57'),
(26, 'encima', '/files/uploads/Banner-Home-05.jpg', 'http://www.bentrovato.com.br/preco', '2013-08-15 20:19:58', '2013-08-15 23:03:14'),
(27, 'encima', '/files/uploads/Banner-Home-07.jpg', 'http://www.bentrovato.com.br/oculos-feminino/grau', '2013-08-15 20:20:19', '2013-08-15 23:03:17'),
(29, 'embaixo', '/files/uploads/Sub-Banner-02.jpg', 'http://www.bentrovato.com.br/oculos-feminino/grau', '2013-08-15 23:03:39', '2013-08-15 23:03:39'),
(30, 'embaixo', '/files/uploads/Sub-Banner-01.jpg', 'http://www.bentrovato.com.br/oculos-masculino/grau', '2013-08-15 23:03:57', '2013-08-15 23:03:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cpf` varchar(255) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `discount` float DEFAULT NULL,
  `limit` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `glasses`
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
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=237 ;

--
-- Extraindo dados da tabela `glasses`
--

INSERT INTO `glasses` (`id`, `sku`, `name`, `photo_1`, `photo_2`, `price`, `the_style`, `character_frame`, `character_lenses`, `image_hover`, `sex`, `color`, `color2`, `material`, `format`, `size`, `type`, `created`, `modified`) VALUES
(14, '0005', 'Carrara', '/files/uploads/CARRARA-C2-G-F-1.jpg', '/files/uploads/CARRARA-C2-G-L-1.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO OS &Oacute;CULOS REDONDOS VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Feminino.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 12:50:12'),
(15, '0006', 'Carrara', '/files/uploads/CARRARA-C5-G-F-1.jpg', '/files/uploads/CARRARA-C5-G-L-1.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO OS &Oacute;CULOS REDONDOS VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 47&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino.jpg', 'feminino', 'marrom', 'Ape', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 12:51:18'),
(16, '0007', 'Ferrara', '/files/uploads/FERRARA-C1-G-F.jpg', '/files/uploads/FERRARA-C1-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-1.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 12:52:17'),
(17, '0012', 'Firenze', '/files/uploads/FIRENZE-C1-G-F.jpg', '/files/uploads/FIRENZE-C1-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-2.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 12:53:04'),
(19, '0016', 'Genova', '/files/uploads/GENOVA-C1-G-F.jpg', '/files/uploads/GENOVA-C1-G-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-4.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 12:55:29'),
(20, '0021', 'Lucca', '/files/uploads/LUCCA-C1-G-F.jpg', '/files/uploads/LUCCA-C1-G-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-3.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 12:55:59'),
(22, '0035', 'Napoli', '/files/uploads/NAPOLI-C13-G-F.jpg', '/files/uploads/NAPOLI-C13-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-5.jpg', 'feminino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 12:56:30'),
(23, '0038', 'Parma', '/files/uploads/PARMA-C1-G-F.jpg', '/files/uploads/PARMA-C1-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-6.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 12:57:03'),
(24, '0043', 'Perugia', '/files/uploads/PERUGIA-C1-G-F.jpg', '/files/uploads/PERUGIA-C1-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-7.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'retangulo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:01:28'),
(25, '0046', 'Pisa', '/files/uploads/PISA-C14-G-F.jpg', '/files/uploads/PISA-C14-G-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-8.jpg', 'feminino', 'cinza', 'Grafite Marine', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:02:08'),
(26, '0051', 'Roma', '/files/uploads/ROMA-C11-G-F.jpg', '/files/uploads/ROMA-C11-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-9.jpg', 'feminino', 'cinza', 'Grigio', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:02:30'),
(27, '0054', 'San Remo', '/files/uploads/SANREMO-C1-G-F.jpg', '/files/uploads/SANREMO-C1-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-10.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:03:02'),
(28, '0059', 'Siena', '/files/uploads/SIENA-C1-G-F.jpg', '/files/uploads/SIENA-C1-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-11.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:03:34'),
(29, '0062', 'Sorrento', '/files/uploads/SORRENTO-C1-G-F.jpg', '/files/uploads/SORRENTO-C1-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-12.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:04:09'),
(30, '0071', 'Venezia', '/files/uploads/VENEZIA-C1-G-F.jpg', '/files/uploads/VENEZIA-C1-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-13.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:04:30'),
(31, '0078', 'Carrara', '/files/uploads/CARRARA-C2-S-F.jpg', '/files/uploads/CARRARA-C2-S-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON E OZZY OSBOURNE, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.&nbsp;</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-15.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:08:43'),
(32, '0080', 'Ferrara', '/files/uploads/FERRARA-C1-S-F.jpg', '/files/uploads/FERRARA-C1-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-16.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:09:00'),
(33, '0085', 'Firenze', '/files/uploads/FIRENZE-C1-S-F.jpg', '/files/uploads/FIRENZE-C1-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-17.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:09:24'),
(34, '0089', 'Genova', '/files/uploads/GENOVA-C1-S-F.jpg', '/files/uploads/GENOVA-C1-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-18.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:09:46'),
(35, '0097', 'Lucca', '/files/uploads/LUCCA-C6-S-F.jpg', '/files/uploads/LUCCA-C6-S-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-19.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:17:22'),
(36, '0111', 'Parma', '/files/uploads/PARMA-C1-S-F.jpg', '/files/uploads/PARMA-C1-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-20.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:18:43'),
(37, '0116', 'Perugia', '/files/uploads/PERUGIA-C1-S-F.jpg', '/files/uploads/PERUGIA-C1-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-21.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'retangulo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:20:36'),
(38, '0119', 'Pisa', '/files/uploads/PISA-C14-S-F.jpg', '/files/uploads/PISA-C14-S-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-22.jpg', 'feminino', 'cinza', 'Grafite Marine', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:20:53'),
(39, '0126', 'Roma', '/files/uploads/ROMA-C6-S-F.jpg', '/files/uploads/ROMA-C6-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-23.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:21:16'),
(40, '0127', 'San Remo', '/files/uploads/SANREMO-C1-S-F.jpg', '/files/uploads/SANREMO-C1-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-24.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:21:40'),
(41, '0132', 'Siena', '/files/uploads/SIENA-C1-S-F.jpg', '/files/uploads/SIENA-C1-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-25.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:24:13'),
(42, '0136', 'Sorrento', '/files/uploads/SORRENTO-C12-S-F.jpg', '/files/uploads/SORRENTO-C12-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-26.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:24:32'),
(43, '0144', 'Venezia', '/files/uploads/VENEZIA-C1-S-F.jpg', '/files/uploads/VENEZIA-C1-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O VENEZIA POSSUI UMA ESTRUTURA GRANDE, POR&Eacute;M COM TRA&Ccedil;OS MAIS SUAVES.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-27.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:24:48'),
(44, '0108', 'Napoli', '/files/uploads/NAPOLI-C13-S-F.jpg', '/files/uploads/NAPOLI-C13-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Feminino-1.jpg', 'feminino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:25:38'),
(50, '0003', 'Carrara', '/files/uploads/CARRARA-C11-G-F-2.jpg', '/files/uploads/CARRARA-C11-G-L-2.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO OS &Oacute;CULOS REDONDOS VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 47&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino.jpg', 'feminino', 'cinza', 'Grigio', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:12:12'),
(51, '0004', 'Carrara', '/files/uploads/CARRARA-C14-G-F.jpg', '/files/uploads/CARRARA-C14-G-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO OS &Oacute;CULOS REDONDOS VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Feminino.jpg', 'feminino', 'cinza', 'Grafite Marine', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:12:35'),
(52, '0010', 'Ferrara', '/files/uploads/FERRARA-C3-G-F.jpg', '/files/uploads/FERRARA-C3-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-1.jpg', 'feminino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:12:51'),
(53, '0011', 'Ferrara', '/files/uploads/FERRARA-C6-G-F.jpg', '/files/uploads/FERRARA-C6-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-1.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:13:28'),
(54, '0008', 'Ferrara', '/files/uploads/FERRARA-C13-G-F.jpg', '/files/uploads/FERRARA-C13-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-1.jpg', 'feminino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:14:06'),
(55, '0009', 'Ferrara', '/files/uploads/FERRARA-C15-G-F.jpg', '/files/uploads/FERRARA-C15-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-1.jpg', 'feminino', 'crystal', 'Cristallo', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:14:38'),
(56, '0013', 'Firenze', '/files/uploads/FIRENZE-C2-G-F.jpg', '/files/uploads/FIRENZE-C2-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-2.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:14:56'),
(57, '0014', 'Firenze', '/files/uploads/FIRENZE-C10-G-F.jpg', '/files/uploads/FIRENZE-C10-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-2.jpg', 'feminino', 'cinza', 'Cenere', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:15:20'),
(58, '0015', 'Firenze', '/files/uploads/FIRENZE-C12-G-F.jpg', '/files/uploads/FIRENZE-C12-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-2.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:15:42'),
(59, '0019', 'Genova', '/files/uploads/GENOVA-C2-G-F.jpg', '/files/uploads/GENOVA-C2-G-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-4.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:16:01'),
(60, '0020', 'Genova', '/files/uploads/GENOVA-C4-G-F.jpg', '/files/uploads/GENOVA-C4-G-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-4.jpg', 'feminino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:16:19'),
(61, '0017', 'Genova', '/files/uploads/GENOVA-C12-G-F.jpg', '/files/uploads/GENOVA-C12-G-L-1.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-4.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:17:44'),
(62, '0018', 'Genova', '/files/uploads/GENOVA-C15-G-F.jpg', '/files/uploads/GENOVA-C15-G-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-4.jpg', 'feminino', 'crystal', 'Cristallo', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:17:59'),
(63, '0023', 'Lucca', '/files/uploads/LUCCA-C3-G-F.jpg', '/files/uploads/LUCCA-C3-G-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-3.jpg', 'feminino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:18:11'),
(64, '0024', 'Lucca', '/files/uploads/LUCCA-C6-G-F.jpg', '/files/uploads/LUCCA-C6-G-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-3.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:18:27'),
(65, '0022', 'Lucca', '/files/uploads/LUCCA-C11-G-F.jpg', '/files/uploads/LUCCA-C11-G-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-3.jpg', 'feminino', 'cinza', 'Grigio', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:18:43'),
(66, '0036', 'Napoli', '/files/uploads/NAPOLI-C4-G-F.jpg', '/files/uploads/NAPOLI-C4-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-5.jpg', 'feminino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:18:58'),
(67, '0037', 'Napoli', '/files/uploads/NAPOLI-C6-G-F.jpg', '/files/uploads/NAPOLI-C6-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-5.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:20:02'),
(68, '0040', 'Parma', '/files/uploads/PARMA-C2-G-F.jpg', '/files/uploads/PARMA-C2-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-6.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:20:21'),
(69, '0041', 'Parma', '/files/uploads/PARMA-C4-G-F.jpg', '/files/uploads/PARMA-C4-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-6.jpg', 'feminino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:20:59'),
(70, '0042', 'Parma', '/files/uploads/PARMA-C8-G-F.jpg', '/files/uploads/PARMA-C8-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-6.jpg', 'feminino', 'marrom', 'Noce', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:21:12'),
(71, '0039', 'Parma', '/files/uploads/PARMA-C10-G-F.jpg', '/files/uploads/PARMA-C10-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-6.jpg', 'feminino', 'cinza', 'Cenere', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:21:24'),
(72, '0044', 'Perugia', '/files/uploads/PERUGIA-C11-G-F.jpg', '/files/uploads/PERUGIA-C11-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-7.jpg', 'feminino', 'cinza', 'Grigio', 'acetato', 'retangulo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:21:40'),
(73, '0045', 'Perugia', '/files/uploads/PERUGIA-C12-G-F.jpg', '/files/uploads/PERUGIA-C12-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-7.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-18 21:30:18'),
(74, '0047', 'Pisa', '/files/uploads/PISA-C3-G-F.jpg', '/files/uploads/PISA-C3-G-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-8.jpg', 'feminino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:22:07'),
(75, '0048', 'Pisa', '/files/uploads/PISA-C6-G-F.jpg', '/files/uploads/PISA-C6-G-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-8.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:22:21'),
(76, '0052', 'Roma', '/files/uploads/ROMA-C2-G-F-1.jpg', '/files/uploads/ROMA-C2-G-L-1.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-9.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:22:32'),
(77, '0053', 'Roma', '/files/uploads/ROMA-C6-G-F.jpg', '/files/uploads/ROMA-C6-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-9.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:24:01'),
(78, '0057', 'San Remo', '/files/uploads/SANREMO-C2-G-F.jpg', '/files/uploads/SANREMO-C2-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-10.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:24:14');
INSERT INTO `glasses` (`id`, `sku`, `name`, `photo_1`, `photo_2`, `price`, `the_style`, `character_frame`, `character_lenses`, `image_hover`, `sex`, `color`, `color2`, `material`, `format`, `size`, `type`, `created`, `modified`) VALUES
(79, '0058', 'San Remo', '/files/uploads/SANREMO-C6-G-F.jpg', '/files/uploads/SANREMO-C6-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-10.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:24:26'),
(80, '0055', 'San Remo', '/files/uploads/SANREMO-C12-G-F.jpg', '/files/uploads/SANREMO-C12-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-10.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:24:36'),
(81, '0056', 'San Remo', '/files/uploads/SANREMO-C13-G-F.jpg', '/files/uploads/SANREMO-C13-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-10.jpg', 'feminino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:25:55'),
(82, '0061', 'Siena', '/files/uploads/SIENA-C5-G-F.jpg', '/files/uploads/SIENA-C5-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-11.jpg', 'feminino', 'marrom', 'Ape', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:26:15'),
(83, '0060', 'Siena', '/files/uploads/SIENA-C10-G-F.jpg', '/files/uploads/SIENA-C10-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-11.jpg', 'feminino', 'cinza', 'Cenere', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:26:44'),
(84, '0064', 'Sorrento', '/files/uploads/SORRENTO-C5-G-F.jpg', '/files/uploads/SORRENTO-C5-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-12.jpg', 'feminino', 'marrom', 'Ape', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:26:59'),
(85, '0065', 'Sorrento', '/files/uploads/SORRENTO-C9-G-F.jpg', '/files/uploads/SORRENTO-C9-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-12.jpg', 'feminino', 'verde', 'Giada', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:27:08'),
(86, '0063', 'Sorrento', '/files/uploads/SORRENTO-C12-G-F.jpg', '/files/uploads/SORRENTO-C12-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-12.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:27:19'),
(87, '0072', 'Venezia', '/files/uploads/VENEZIA-C2-G-F.jpg', '/files/uploads/VENEZIA-C2-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-13.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:27:37'),
(88, '0073', 'Venezia', '/files/uploads/VENEZIA-C8-G-F.jpg', '/files/uploads/VENEZIA-C8-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/-Em-breve-Feminino-13.jpg', 'feminino', 'marrom', 'Noce', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:27:48'),
(89, '0005', 'Carrara', '/files/uploads/CARRARA-C2-G-F-1.jpg', '/files/uploads/CARRARA-C2-G-L-1.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO OS &Oacute;CULOS REDONDOS VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-1.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:32:58'),
(90, '0021', 'Lucca', '/files/uploads/LUCCA-C1-G-F.jpg', '/files/uploads/LUCCA-C1-G-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:41:57'),
(91, '0006', 'Carrara', '/files/uploads/CARRARA-C5-G-F-1.jpg', '/files/uploads/CARRARA-C5-G-L-1.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO OS &Oacute;CULOS REDONDOS VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 47&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-2.jpg', 'masculino', 'marrom', 'Ape', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:42:15'),
(92, '0007', 'Ferrara', '/files/uploads/FERRARA-C1-G-F.jpg', '/files/uploads/FERRARA-C1-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-3.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:43:03'),
(93, '0012', 'Firenze', '/files/uploads/FIRENZE-C1-G-F.jpg', '/files/uploads/FIRENZE-C1-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-4.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:43:27'),
(94, '0016', 'Genova', '/files/uploads/GENOVA-C1-G-F.jpg', '/files/uploads/GENOVA-C1-G-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-5.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:43:47'),
(95, '0035', 'Napoli', '/files/uploads/NAPOLI-C13-G-F.jpg', '/files/uploads/NAPOLI-C13-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-6.jpg', 'masculino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:44:09'),
(96, '0038', 'Parma', '/files/uploads/PARMA-C1-G-F.jpg', '/files/uploads/PARMA-C1-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-7.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:44:32'),
(97, '0043', 'Perugia', '/files/uploads/PERUGIA-C1-G-F.jpg', '/files/uploads/PERUGIA-C1-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-8.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'retangulo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:44:56'),
(98, '0046', 'Pisa', '/files/uploads/PISA-C14-G-F.jpg', '/files/uploads/PISA-C14-G-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-9.jpg', 'masculino', 'cinza', 'Grafite Marine', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:45:15'),
(99, '0051', 'Roma', '/files/uploads/ROMA-C11-G-F.jpg', '/files/uploads/ROMA-C11-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-10.jpg', 'masculino', 'cinza', 'Grigio', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:45:32'),
(100, '0054', 'San Remo', '/files/uploads/SANREMO-C1-G-F.jpg', '/files/uploads/SANREMO-C1-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-11.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 13:45:49'),
(101, '0059', 'Siena', '/files/uploads/SIENA-C1-G-F.jpg', '/files/uploads/SIENA-C1-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-12.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:10:26'),
(102, '0062', 'Sorrento', '/files/uploads/SORRENTO-C1-G-F.jpg', '/files/uploads/SORRENTO-C1-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-13.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:11:05'),
(103, '0071', 'Venezia', '/files/uploads/VENEZIA-C1-G-F.jpg', '/files/uploads/VENEZIA-C1-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-14.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:11:20'),
(104, '0003', 'Carrara', '/files/uploads/CARRARA-C11-G-F-2.jpg', '/files/uploads/CARRARA-C11-G-L-2.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO OS &Oacute;CULOS REDONDOS VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 47&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/MASCULINO-CARRARA-GRAU.jpg', 'masculino', 'cinza', 'Grigio', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:11:44'),
(105, '0004', 'Carrara', '/files/uploads/CARRARA-C14-G-F.jpg', '/files/uploads/CARRARA-C14-G-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO OS &Oacute;CULOS REDONDOS VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-16.jpg', 'masculino', 'cinza', 'Grafite Marine', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:11:59'),
(106, '0010', 'Ferrara', '/files/uploads/FERRARA-C3-G-F.jpg', '/files/uploads/FERRARA-C3-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-17.jpg', 'masculino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:12:16'),
(107, '0011', 'Ferrara', '/files/uploads/FERRARA-C6-G-F.jpg', '/files/uploads/FERRARA-C6-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-18.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:12:54'),
(108, '0008', 'Ferrara', '/files/uploads/FERRARA-C13-G-F.jpg', '/files/uploads/FERRARA-C13-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-19.jpg', 'masculino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:13:12'),
(109, '0009', 'Ferrara', '/files/uploads/FERRARA-C15-G-F.jpg', '/files/uploads/FERRARA-C15-G-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-20.jpg', 'masculino', 'crystal', 'Cristallo', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:13:35'),
(110, '0013', 'Firenze', '/files/uploads/FIRENZE-C2-G-F.jpg', '/files/uploads/FIRENZE-C2-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-21.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:13:55'),
(111, '0014', 'Firenze', '/files/uploads/FIRENZE-C10-G-F.jpg', '/files/uploads/FIRENZE-C10-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-22.jpg', 'masculino', 'cinza', 'Cenere', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:14:12'),
(112, '0015', 'Firenze', '/files/uploads/FIRENZE-C12-G-F.jpg', '/files/uploads/FIRENZE-C12-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-23.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:14:29'),
(113, '0019', 'Genova', '/files/uploads/GENOVA-C2-G-F.jpg', '/files/uploads/GENOVA-C2-G-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-24.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:14:42'),
(114, '0020', 'Genova', '/files/uploads/GENOVA-C4-G-F.jpg', '/files/uploads/GENOVA-C4-G-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-25.jpg', 'masculino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:14:59'),
(115, '0017', 'Genova', '/files/uploads/GENOVA-C12-G-F.jpg', '/files/uploads/GENOVA-C12-G-L-1.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-26.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:15:25'),
(116, '0018', 'Genova', '/files/uploads/GENOVA-C15-G-F.jpg', '/files/uploads/GENOVA-C15-G-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-27.jpg', 'masculino', 'crystal', 'Cristallo', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:15:41'),
(117, '0023', 'Lucca', '/files/uploads/LUCCA-C3-G-F.jpg', '/files/uploads/LUCCA-C3-G-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-28.jpg', 'masculino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:16:19'),
(118, '0024', 'Lucca', '/files/uploads/LUCCA-C6-G-F.jpg', '/files/uploads/LUCCA-C6-G-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-29.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:16:37'),
(119, '0022', 'Lucca', '/files/uploads/LUCCA-C11-G-F.jpg', '/files/uploads/LUCCA-C11-G-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-30.jpg', 'masculino', 'cinza', 'Grigio', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:16:53'),
(120, '0036', 'Napoli', '/files/uploads/NAPOLI-C4-G-F.jpg', '/files/uploads/NAPOLI-C4-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-31.jpg', 'masculino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:17:16'),
(121, '0037', 'Napoli', '/files/uploads/NAPOLI-C6-G-F.jpg', '/files/uploads/NAPOLI-C6-G-L-1.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-32.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:18:34'),
(122, '0040', 'Parma', '/files/uploads/PARMA-C2-G-F.jpg', '/files/uploads/PARMA-C2-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-33.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:19:19'),
(123, '0041', 'Parma', '/files/uploads/PARMA-C4-G-F.jpg', '/files/uploads/PARMA-C4-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-34.jpg', 'masculino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:19:38'),
(124, '0042', 'Parma', '/files/uploads/PARMA-C8-G-F.jpg', '/files/uploads/PARMA-C8-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-35.jpg', 'masculino', 'marrom', 'Noce', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:19:58'),
(125, '0039', 'Parma', '/files/uploads/PARMA-C10-G-F.jpg', '/files/uploads/PARMA-C10-G-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-36.jpg', 'masculino', 'cinza', 'Cenere', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:20:47'),
(126, '0044', 'Perugia', '/files/uploads/PERUGIA-C11-G-F.jpg', '/files/uploads/PERUGIA-C11-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-37.jpg', 'masculino', 'cinza', 'Grigio', 'acetato', 'retangulo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:21:06'),
(127, '0045', 'Perugia', '/files/uploads/PERUGIA-C12-G-F.jpg', '/files/uploads/PERUGIA-C12-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-38.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:52:58'),
(128, '0047', 'Pisa', '/files/uploads/PISA-C3-G-F.jpg', '/files/uploads/PISA-C3-G-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-39.jpg', 'masculino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:53:18'),
(129, '0048', 'Pisa', '/files/uploads/PISA-C6-G-F.jpg', '/files/uploads/PISA-C6-G-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-40.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:54:09'),
(130, '0052', 'Roma', '/files/uploads/ROMA-C2-G-F-1.jpg', '/files/uploads/ROMA-C2-G-L-1.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-41.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:54:24'),
(131, '0053', 'Roma', '/files/uploads/ROMA-C6-G-F.jpg', '/files/uploads/ROMA-C6-G-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-42.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'quadrado', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:54:50'),
(132, '0057', 'San Remo', '/files/uploads/SANREMO-C2-G-F.jpg', '/files/uploads/SANREMO-C2-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-43.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:55:06'),
(133, '0058', 'San Remo', '/files/uploads/SANREMO-C6-G-F.jpg', '/files/uploads/SANREMO-C6-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-44.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:55:19'),
(134, '0055', 'San Remo', '/files/uploads/SANREMO-C12-G-F.jpg', '/files/uploads/SANREMO-C12-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-45.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:55:36'),
(135, '0056', 'San Remo', '/files/uploads/SANREMO-C13-G-F.jpg', '/files/uploads/SANREMO-C13-G-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-46.jpg', 'masculino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:55:49');
INSERT INTO `glasses` (`id`, `sku`, `name`, `photo_1`, `photo_2`, `price`, `the_style`, `character_frame`, `character_lenses`, `image_hover`, `sex`, `color`, `color2`, `material`, `format`, `size`, `type`, `created`, `modified`) VALUES
(136, '0061', 'Siena', '/files/uploads/SIENA-C5-G-F.jpg', '/files/uploads/SIENA-C5-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-47.jpg', 'masculino', 'marrom', 'Ape', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:56:19'),
(137, '0060', 'Siena', '/files/uploads/SIENA-C10-G-F.jpg', '/files/uploads/SIENA-C10-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-48.jpg', 'masculino', 'cinza', 'Cenere', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:56:32'),
(138, '0064', 'Sorrento', '/files/uploads/SORRENTO-C5-G-F.jpg', '/files/uploads/SORRENTO-C5-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-49.jpg', 'masculino', 'marrom', 'Ape', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:56:46'),
(139, '0065', 'Sorrento', '/files/uploads/SORRENTO-C9-G-F.jpg', '/files/uploads/SORRENTO-C9-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-50.jpg', 'masculino', 'verde', 'Giada', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:57:01'),
(140, '0063', 'Sorrento', '/files/uploads/SORRENTO-C12-G-F.jpg', '/files/uploads/SORRENTO-C12-G-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-51.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'estreito', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:57:17'),
(141, '0072', 'Venezia', '/files/uploads/VENEZIA-C2-G-F.jpg', '/files/uploads/VENEZIA-C2-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-52.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:57:46'),
(142, '0073', 'Venezia', '/files/uploads/VENEZIA-C8-G-F.jpg', '/files/uploads/VENEZIA-C8-G-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes finas 1.56 de vis&atilde;o simples</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: antirreflexo, antirrisco e prote&ccedil;&atilde;o UVA/UVB</p><p>- Montadas em laborat&oacute;rio renomado</p>', '/files/uploads/Em-breve-Masculino-53.jpg', 'masculino', 'marrom', 'Noce', 'acetato', 'redondo', 'largo', 'grau', '2013-08-12 00:00:00', '2013-08-20 14:58:00'),
(143, '0086', 'Firenze', '/files/uploads/FIRENZE-C10-S-F.jpg', '/files/uploads/FIRENZE-C10-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-17.jpg', 'feminino', 'cinza', 'Cenere', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:27:31'),
(144, '0079', 'Carrara', '/files/uploads/CARRARA-C5-S-F.jpg', '/files/uploads/CARRARA-C5-S-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON E OZZY OSBOURNE, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.&nbsp;</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-15.jpg', 'feminino', 'marrom', 'Ape', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:27:46'),
(145, '0076', 'Carrara', '/files/uploads/CARRARA-C11-S-F.jpg', '/files/uploads/CARRARA-C11-S-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON E OZZY OSBOURNE, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.&nbsp;</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-15.jpg', 'feminino', 'cinza', 'Grigio', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:28:01'),
(146, '0077', 'Carrara', '/files/uploads/CARRARA-C14-S-F.jpg', '/files/uploads/CARRARA-C14-S-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON E OZZY OSBOURNE, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.&nbsp;</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-15.jpg', 'feminino', 'cinza', 'Grafite Marine', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:28:32'),
(147, '0081', 'Ferrara', '/files/uploads/FERRARA-C13-S-F.jpg', '/files/uploads/FERRARA-C13-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-16.jpg', 'feminino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:31:40'),
(148, '0082', 'Ferrara', '/files/uploads/FERRARA-C15-S-F.jpg', '/files/uploads/FERRARA-C15-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-16.jpg', 'feminino', 'crystal', 'Cristallo', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:31:58'),
(149, '0083', 'Ferrara', '/files/uploads/FERRARA-C3-S-F.jpg', '/files/uploads/FERRARA-C3-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-16.jpg', 'feminino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:32:16'),
(150, '0084', 'Ferrara', '/files/uploads/FERRARA-C6-S-F.jpg', '/files/uploads/FERRARA-C6-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-16.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:32:31'),
(151, '0087', 'Firenze', '/files/uploads/FIRENZE-C12-S-F.jpg', '/files/uploads/FIRENZE-C12-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-17.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:32:49'),
(152, '0088', 'Firenze', '/files/uploads/FIRENZE-C2-S-F.jpg', '/files/uploads/FIRENZE-C2-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-17.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:33:03'),
(153, '0090', 'Genova', '/files/uploads/GENOVA-C12-S-F.jpg', '/files/uploads/GENOVA-C12-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-18.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:33:27'),
(154, '0091', 'Genova', '/files/uploads/GENOVA-C15-S-F.jpg', '/files/uploads/GENOVA-C15-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-18.jpg', 'feminino', 'crystal', 'Cristallo', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:33:43'),
(155, '0092', 'Genova', '/files/uploads/GENOVA-C2-S-F.jpg', '/files/uploads/GENOVA-C2-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-18.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:33:56'),
(156, '0093', 'Genova', '/files/uploads/GENOVA-C4-S-F.jpg', '/files/uploads/GENOVA-C4-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/-Em-breve-Feminino-18.jpg', 'feminino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:34:10'),
(157, '0094', 'Lucca', '/files/uploads/LUCCA-C1-S-F.jpg', '/files/uploads/LUCCA-C1-S-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-19.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:34:29'),
(158, '0095', 'Lucca', '/files/uploads/LUCCA-C11-S-F.jpg', '/files/uploads/LUCCA-C11-S-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-19.jpg', 'feminino', 'cinza', 'Grigio', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:34:41'),
(159, '0096', 'Lucca', '/files/uploads/LUCCA-C3-S-F.jpg', '/files/uploads/LUCCA-C3-S-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-19.jpg', 'feminino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:34:55'),
(160, '0112', 'Parma', '/files/uploads/PARMA-C10-S-F.jpg', '/files/uploads/PARMA-C10-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-20.jpg', 'feminino', 'cinza', 'Cenere', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:35:18'),
(161, '0113', 'Parma', '/files/uploads/PARMA-C2-S-F.jpg', '/files/uploads/PARMA-C2-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-20.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:52:52'),
(162, '0114', 'Parma', '/files/uploads/PARMA-C4-S-F.jpg', '/files/uploads/PARMA-C4-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-20.jpg', 'feminino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:53:16'),
(163, '0115', 'Parma', '/files/uploads/PARMA-C8-S-F.jpg', '/files/uploads/PARMA-C8-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-20.jpg', 'feminino', 'marrom', 'Noce', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:53:45'),
(164, '0117', 'Perugia', '/files/uploads/PERUGIA-C11-S-F.jpg', '/files/uploads/PERUGIA-C11-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-21.jpg', 'feminino', 'cinza', 'Grigio', 'acetato', 'retangulo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:54:08'),
(165, '0118', 'Perugia', '/files/uploads/PERUGIA-C12-S-F.jpg', '/files/uploads/PERUGIA-C12-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-21.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:54:25'),
(166, '0120', 'Pisa', '/files/uploads/PISA-C3-S-F.jpg', '/files/uploads/PISA-C3-S-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-22.jpg', 'feminino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:54:37'),
(167, '0121', 'Pisa', '/files/uploads/PISA-C6-S-F.jpg', '/files/uploads/PISA-C6-S-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-22.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:54:57'),
(168, '0124', 'Roma', '/files/uploads/ROMA-C11-S-F.jpg', '/files/uploads/ROMA-C11-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-23.jpg', 'feminino', 'cinza', 'Grigio', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:55:27'),
(169, '0125', 'Roma', '/files/uploads/ROMA-C2-S-F.jpg', '/files/uploads/ROMA-C2-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-23.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:55:46'),
(170, '0128', 'San Remo', '/files/uploads/SANREMO-C12-S-F.jpg', '/files/uploads/SANREMO-C12-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-24.jpg', 'feminino', 'castanho', 'Sabbia', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:56:01'),
(171, '0129', 'San Remo', '/files/uploads/SANREMO-C13-S-F.jpg', '/files/uploads/SANREMO-C13-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-24.jpg', 'feminino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:56:16'),
(172, '0130', 'San Remo', '/files/uploads/SANREMO-C2-S-F.jpg', '/files/uploads/SANREMO-C2-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-24.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:59:42'),
(173, '0131', 'San Remo', '/files/uploads/SANREMO-C6-S-F.jpg', '/files/uploads/SANREMO-C6-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-24.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 18:59:58'),
(174, '0133', 'Siena', '/files/uploads/SIENA-C10-S-F.jpg', '/files/uploads/SIENA-C10-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-25.jpg', 'feminino', 'cinza', 'Cenere', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 19:00:19'),
(175, '0134', 'Siena', '/files/uploads/SIENA-C5-S-F.jpg', '/files/uploads/SIENA-C5-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-25.jpg', 'feminino', 'marrom', 'Ape', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 19:04:23'),
(176, '0135', 'Sorrento', '/files/uploads/SORRENTO-C1-S-F.jpg', '/files/uploads/SORRENTO-C1-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-26.jpg', 'feminino', 'preto', 'Nero', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:24:21'),
(177, '0137', 'Sorrento', '/files/uploads/SORRENTO-C5-S-F.jpg', '/files/uploads/SORRENTO-C5-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-26.jpg', 'feminino', 'marrom', 'Ape', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:25:36'),
(178, '0138', 'Sorrento', '/files/uploads/SORRENTO-C9-S-F.jpg', '/files/uploads/SORRENTO-C9-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-26.jpg', 'feminino', 'marrom', 'Noce', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:26:32'),
(179, '0145', 'Venezia', '/files/uploads/VENEZIA-C2-S-F.jpg', '/files/uploads/VENEZIA-C2-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O VENEZIA POSSUI UMA ESTRUTURA GRANDE, POR&Eacute;M COM TRA&Ccedil;OS MAIS SUAVES.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-27.jpg', 'feminino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:27:12'),
(180, '0146', 'Venezia', '/files/uploads/VENEZIA-C8-S-F.jpg', '/files/uploads/VENEZIA-C8-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O VENEZIA POSSUI UMA ESTRUTURA GRANDE, POR&Eacute;M COM TRA&Ccedil;OS MAIS SUAVES.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/-Em-breve-Feminino-27.jpg', 'feminino', 'marrom', 'Noce', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:28:03'),
(181, '0109', 'Napoli', '/files/uploads/NAPOLI-C4-S-F.jpg', '/files/uploads/NAPOLI-C4-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Feminino-3.jpg', 'feminino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:43:29'),
(182, '0110', 'Napoli', '/files/uploads/NAPOLI-C6-S-F.jpg', '/files/uploads/NAPOLI-C6-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Feminino-2.jpg', 'feminino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:43:13'),
(183, '0078', 'Carrara', '/files/uploads/CARRARA-C2-S-F.jpg', '/files/uploads/CARRARA-C2-S-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON E OZZY OSBOURNE, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.&nbsp;</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-54.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:36:09'),
(184, '0080', 'Ferrara', '/files/uploads/FERRARA-C1-S-F.jpg', '/files/uploads/FERRARA-C1-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-55.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:38:08'),
(185, '0085', 'Firenze', '/files/uploads/FIRENZE-C1-S-F.jpg', '/files/uploads/FIRENZE-C1-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-56.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:38:22'),
(186, '0089', 'Genova', '/files/uploads/GENOVA-C1-S-F.jpg', '/files/uploads/GENOVA-C1-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-57.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:38:35'),
(187, '0097', 'Lucca', '/files/uploads/LUCCA-C6-S-F.jpg', '/files/uploads/LUCCA-C6-S-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-58.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:38:53'),
(188, '0111', 'Parma', '/files/uploads/PARMA-C1-S-F.jpg', '/files/uploads/PARMA-C1-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-59.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:39:41'),
(189, '0116', 'Perugia', '/files/uploads/PERUGIA-C1-S-F.jpg', '/files/uploads/PERUGIA-C1-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-60.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'retangulo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:39:54'),
(190, '0119', 'Pisa', '/files/uploads/PISA-C14-S-F.jpg', '/files/uploads/PISA-C14-S-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-61.jpg', 'masculino', 'cinza', 'Grafite Marine', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:40:25'),
(191, '0126', 'Roma', '/files/uploads/ROMA-C6-S-F.jpg', '/files/uploads/ROMA-C6-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-62.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:40:37'),
(192, '0127', 'San Remo', '/files/uploads/SANREMO-C1-S-F.jpg', '/files/uploads/SANREMO-C1-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-63.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:40:54'),
(193, '0132', 'Siena', '/files/uploads/SIENA-C1-S-F.jpg', '/files/uploads/SIENA-C1-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-64.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:42:01'),
(194, '0136', 'Sorrento', '/files/uploads/SORRENTO-C12-S-F.jpg', '/files/uploads/SORRENTO-C12-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-65.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:42:12'),
(195, '0144', 'Venezia', '/files/uploads/VENEZIA-C1-S-F.jpg', '/files/uploads/VENEZIA-C1-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O VENEZIA POSSUI UMA ESTRUTURA GRANDE, POR&Eacute;M COM TRA&Ccedil;OS MAIS SUAVES.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-66.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:42:23'),
(196, '0108', 'Napoli', '/files/uploads/NAPOLI-C13-S-F.jpg', '/files/uploads/NAPOLI-C13-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-67.jpg', 'masculino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:42:37'),
(197, '0086', 'Firenze', '/files/uploads/FIRENZE-C10-S-F.jpg', '/files/uploads/FIRENZE-C10-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-68.jpg', 'masculino', 'cinza', 'Cenere', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:44:55');
INSERT INTO `glasses` (`id`, `sku`, `name`, `photo_1`, `photo_2`, `price`, `the_style`, `character_frame`, `character_lenses`, `image_hover`, `sex`, `color`, `color2`, `material`, `format`, `size`, `type`, `created`, `modified`) VALUES
(198, '0079', 'Carrara', '/files/uploads/CARRARA-C5-S-F.jpg', '/files/uploads/CARRARA-C5-S-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON E OZZY OSBOURNE, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.&nbsp;</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-69.jpg', 'masculino', 'marrom', 'Ape', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:45:11'),
(199, '0076', 'Carrara', '/files/uploads/CARRARA-C11-S-F.jpg', '/files/uploads/CARRARA-C11-S-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON E OZZY OSBOURNE, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.&nbsp;</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-70.jpg', 'masculino', 'cinza', 'Grigio', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:45:23'),
(200, '0077', 'Carrara', '/files/uploads/CARRARA-C14-S-F.jpg', '/files/uploads/CARRARA-C14-S-L.jpg', 237, '<p>INSPIRADA NOS ANOS 70, QUANDO VIRARAM MARCA REGISTRADA DE FAMOSOS COMO JOHN LENNON E OZZY OSBOURNE, A ARMA&Ccedil;&Atilde;O CARRARA POSSUI BASTANTE PERSONALIDADE E AR RETR&Ocirc;.&nbsp;</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 42&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-71.jpg', 'masculino', 'cinza', 'Grafite Marine', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:45:39'),
(201, '0081', 'Ferrara', '/files/uploads/FERRARA-C13-S-F.jpg', '/files/uploads/FERRARA-C13-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-72.jpg', 'masculino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:45:51'),
(202, '0082', 'Ferrara', '/files/uploads/FERRARA-C15-S-F.jpg', '/files/uploads/FERRARA-C15-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-73.jpg', 'masculino', 'crystal', 'Cristallo', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:46:43'),
(203, '0083', 'Ferrara', '/files/uploads/FERRARA-C3-S-F.jpg', '/files/uploads/FERRARA-C3-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-74.jpg', 'masculino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:46:56'),
(204, '0084', 'Ferrara', '/files/uploads/FERRARA-C6-S-F.jpg', '/files/uploads/FERRARA-C6-S-L.jpg', 237, '<p>UMA RELEITURA DOS MODELOS MAIS UTILIZADOS NOS ANOS 50, A ARMA&Ccedil;&Atilde;O FERRARA POSSUI AS SUAS EXTREMIDADES SUPERIORES MAIS ELEVADAS, O QUE CONTRIBUI PARA LEVANTAR A EXPRESS&Atilde;O FACIAL.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 20&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-75.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:47:08'),
(205, '0087', 'Firenze', '/files/uploads/FIRENZE-C12-S-F.jpg', '/files/uploads/FIRENZE-C12-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-76.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:47:19'),
(206, '0088', 'Firenze', '/files/uploads/FIRENZE-C2-S-F.jpg', '/files/uploads/FIRENZE-C2-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O FIRENZE POSSUI UM FORMATO QUADRADO, COM LINHAS RETAS E MARCANTES. SEU DESIGN &Eacute; INSPIRADO NOS &Oacute;CULOS DOS ANOS 50, MANTENDO A FORMALIDADE COMO HERAN&Ccedil;A.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 34&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-77.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:47:31'),
(207, '0090', 'Genova', '/files/uploads/GENOVA-C12-S-F.jpg', '/files/uploads/GENOVA-C12-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-78.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:47:44'),
(208, '0091', 'Genova', '/files/uploads/GENOVA-C15-S-F.jpg', '/files/uploads/GENOVA-C15-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-79.jpg', 'masculino', 'crystal', 'Cristallo', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:47:55'),
(209, '0092', 'Genova', '/files/uploads/GENOVA-C2-S-F.jpg', '/files/uploads/GENOVA-C2-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-80.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:48:06'),
(210, '0093', 'Genova', '/files/uploads/GENOVA-C4-S-F.jpg', '/files/uploads/GENOVA-C4-S-L.jpg', 237, '<p>COM FORMATO RETANGULAR E LINHAS SUAVES, GENOVA &Eacute; A MENOR ARMA&Ccedil;&Atilde;O DA NOSSA COLE&Ccedil;&Atilde;O. ELA POSSUI UM DESIGN ELEGANTE E ATEMPORAL, GARANTINDO UM ESTILO MINIMALISTA.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 30&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p><p>&nbsp;</p>', '/files/uploads/Em-breve-Masculino-81.jpg', 'masculino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:48:17'),
(211, '0094', 'Lucca', '/files/uploads/LUCCA-C1-S-F.jpg', '/files/uploads/LUCCA-C1-S-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-82.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:48:29'),
(212, '0095', 'Lucca', '/files/uploads/LUCCA-C11-S-F.jpg', '/files/uploads/LUCCA-C11-S-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-83.jpg', 'masculino', 'cinza', 'Grigio', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:48:42'),
(213, '0096', 'Lucca', '/files/uploads/LUCCA-C3-S-F.jpg', '/files/uploads/LUCCA-C3-S-L.jpg', 237, '<p>INSPIRADA NOS V&Aacute;RIOS MODELOS DE &Oacute;CULOS UTILIZADOS PELO ATOR MICHAEL CAINE AO LONGO DOS ANOS 60, A ARMA&Ccedil;&Atilde;O LUCCA POSSUI UMA ESTRUTURA MARCANTE COM LINHAS RETAS.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-84.jpg', 'masculino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:49:35'),
(214, '0112', 'Parma', '/files/uploads/PARMA-C10-S-F.jpg', '/files/uploads/PARMA-C10-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-85.jpg', 'masculino', 'cinza', 'Cenere', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:49:47'),
(215, '0113', 'Parma', '/files/uploads/PARMA-C2-S-F.jpg', '/files/uploads/PARMA-C2-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-86.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:51:47'),
(216, '0114', 'Parma', '/files/uploads/PARMA-C4-S-F.jpg', '/files/uploads/PARMA-C4-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-87.jpg', 'masculino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:52:04'),
(217, '0115', 'Parma', '/files/uploads/PARMA-C8-S-F.jpg', '/files/uploads/PARMA-C8-S-L.jpg', 237, '<p>INTRODUZIDO INICIALMENTE NOS ANOS 30, A ARMA&Ccedil;&Atilde;O PARMA &Eacute; UMA RELEITURA DAS ARMA&Ccedil;&Otilde;ES REDONDAS E MARCANTES QUE FICARAM FAMOSAS NAS D&Eacute;CADAS SEGUINTES NOS ROSTOS DE GRANDES PERSONALIDADES.</p>', '<p>- Frente: 134&nbsp;mm</p><p>- Ponte: 23&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-88.jpg', 'masculino', 'marrom', 'Noce', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:52:18'),
(218, '0117', 'Perugia', '/files/uploads/PERUGIA-C11-S-F.jpg', '/files/uploads/PERUGIA-C11-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-89.jpg', 'masculino', 'cinza', 'Grigio', 'acetato', 'retangulo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:52:28'),
(219, '0118', 'Perugia', '/files/uploads/PERUGIA-C12-S-F.jpg', '/files/uploads/PERUGIA-C12-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O PERUGIA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO RETANGULAR, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 135&nbsp;mm</p><p>- Ponte: 16&nbsp;mm</p><p>- Altura: 35&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-90.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'retangulo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:52:43'),
(220, '0120', 'Pisa', '/files/uploads/PISA-C3-S-F.jpg', '/files/uploads/PISA-C3-S-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-91.jpg', 'masculino', 'tartaruga', 'Tartaruga Classica', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:52:55'),
(221, '0121', 'Pisa', '/files/uploads/PISA-C6-S-F.jpg', '/files/uploads/PISA-C6-S-L.jpg', 237, '<p>COM UMA ESTRUTURA FINA E LINHAS SUAVES, A ARMA&Ccedil;&Atilde;O PISA &Eacute; ELEGANTE E IDEAL PARA QUEM GOSTAR DE SIMPLICIDADE COM ESTILO. SEU FORMATO ARREDONDADO E EQUILIBRADO HARMONIZAM O ROSTO.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 36,5&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-92.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:53:05'),
(222, '0124', 'Roma', '/files/uploads/ROMA-C11-S-F.jpg', '/files/uploads/ROMA-C11-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-93.jpg', 'masculino', 'cinza', 'Grigio', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:53:17'),
(223, '0125', 'Roma', '/files/uploads/ROMA-C2-S-F.jpg', '/files/uploads/ROMA-C2-S-L.jpg', 237, '<p>COM LINHAS FINAS, A ARMA&Ccedil;&Atilde;O ROMA TEM EM SEU DESIGN ESSA CARACTER&Iacute;STICA MUITO COMUM NOS ANOS 80. SEU FORMATO QUADRADO, COM LINHAS RETAS, A TORNA MAIS ATUAL, TRAZENDO ELEG&Acirc;NCIA COM SIMPLICIDADE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-94.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'quadrado', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:53:30'),
(224, '0128', 'San Remo', '/files/uploads/SANREMO-C12-S-F.jpg', '/files/uploads/SANREMO-C12-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-95.jpg', 'masculino', 'castanho', 'Sabbia', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:53:43'),
(225, '0129', 'San Remo', '/files/uploads/SANREMO-C13-S-F.jpg', '/files/uploads/SANREMO-C13-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-96.jpg', 'masculino', 'vermelho', 'Carminio', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:53:55'),
(226, '0130', 'San Remo', '/files/uploads/SANREMO-C2-S-F.jpg', '/files/uploads/SANREMO-C2-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-97.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:54:08'),
(227, '0131', 'San Remo', '/files/uploads/SANREMO-C6-S-F.jpg', '/files/uploads/SANREMO-C6-S-L.jpg', 237, '<p>INPIRADA NOS &Oacute;CULOS USADOS NOS FILMES PARA ADOLESCENTES DOS ANOS 80, A ARMA&Ccedil;&Atilde;O SAN REMO POSSUI UM DESIGN DE LINHAS MARCANTES NA SUA PARTE SUPERIOR, QUE CONTRASTAM COM LINHAS FINAS NA PARTE INFERIOR.</p>', '<p>- Frente: 137&nbsp;mm</p><p>- Ponte: 22&nbsp;mm</p><p>- Altura: 38&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-98.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:54:19'),
(228, '0133', 'Siena', '/files/uploads/SIENA-C10-S-F.jpg', '/files/uploads/SIENA-C10-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-99.jpg', 'masculino', 'cinza', 'Cenere', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:54:31'),
(229, '0134', 'Siena', '/files/uploads/SIENA-C5-S-F.jpg', '/files/uploads/SIENA-C5-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O SIENA TRAZ DE HERAN&Ccedil;A TRA&Ccedil;OS MARCANTES E UMA ESTRUTURA GRANDE.</p>', '<p>- Frente: 140&nbsp;mm</p><p>- Ponte: 18&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-100.jpg', 'masculino', 'marrom', 'Ape', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:54:44'),
(230, '0135', 'Sorrento', '/files/uploads/SORRENTO-C1-S-F.jpg', '/files/uploads/SORRENTO-C1-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-101.jpg', 'masculino', 'preto', 'Nero', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:55:13'),
(231, '0137', 'Sorrento', '/files/uploads/SORRENTO-C5-S-F.jpg', '/files/uploads/SORRENTO-C5-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-102.jpg', 'masculino', 'marrom', 'Ape', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:55:24'),
(232, '0138', 'Sorrento', '/files/uploads/SORRENTO-C9-S-F.jpg', '/files/uploads/SORRENTO-C9-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O SORRENTO POSSUI UM FORMATO RETANGULAR, COM LINHAS RETAS. POSSUI UM DESIGN MAIS FORMAL, O QUE A TORNA A PREFERIDA DE QUEM GOSTA DE TER ESTILO COM DISCRI&Ccedil;&Atilde;O.</p>', '<p>- Frente: 138&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 32&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-103.jpg', 'masculino', 'marrom', 'Noce', 'acetato', 'retangulo', 'estreito', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:55:35'),
(233, '0145', 'Venezia', '/files/uploads/VENEZIA-C2-S-F.jpg', '/files/uploads/VENEZIA-C2-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O VENEZIA POSSUI UMA ESTRUTURA GRANDE, POR&Eacute;M COM TRA&Ccedil;OS MAIS SUAVES.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-104.jpg', 'masculino', 'tartaruga', 'Tartaruga Scura', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:55:47'),
(234, '0146', 'Venezia', '/files/uploads/VENEZIA-C8-S-F.jpg', '/files/uploads/VENEZIA-C8-S-L.jpg', 237, '<p>UTILIZANDO COMO REFER&Ecirc;NCIA O ESTILO ROCKABILLY QUE SURGIU NOS ANOS 50 COM A MISTURA DO ROCK COM O COUNTRY, A ARMA&Ccedil;&Atilde;O VENEZIA POSSUI UMA ESTRUTURA GRANDE, POR&Eacute;M COM TRA&Ccedil;OS MAIS SUAVES.</p>', '<p>- Frente: 145&nbsp;mm</p><p>- Ponte: 19&nbsp;mm</p><p>- Altura: 40&nbsp;mm</p><p>- Hastes: 145&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-105.jpg', 'masculino', 'marrom', 'Noce', 'acetato', 'redondo', 'largo', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:56:01'),
(235, '0109', 'Napoli', '/files/uploads/NAPOLI-C4-S-F.jpg', '/files/uploads/NAPOLI-C4-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-106.jpg', 'masculino', 'tartaruga', 'Tartaruga Ambra', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:56:12'),
(236, '0110', 'Napoli', '/files/uploads/NAPOLI-C6-S-F.jpg', '/files/uploads/NAPOLI-C6-S-L.jpg', 237, '<p>A ARMA&Ccedil;&Atilde;O NAPOLI POSSUI UMA ESTRUTURA MARCANTE E LINHAS SUAVES. SEU DESIGN ARREDONDADO E EQUILIBRADO DESTACA A PERSONALIDADE DE QUEM USA, COM ELEG&Acirc;NCIA E ESTILO.</p>', '<p>- Frente: 136&nbsp;mm</p><p>- Ponte: 17&nbsp;mm</p><p>- Altura: 39&nbsp;mm</p><p>- Hastes: 140&nbsp;mm</p><p>- Material: Acetato de primeiro corte</p>', '<p>- Tipo: lentes sem grau</p><p>- Material: resina org&acirc;nica</p><p>- Tratamento: prote&ccedil;&atilde;o UVA/UVB</p><p>- Importadas</p>', '/files/uploads/Em-breve-Masculino-107.jpg', 'masculino', 'tartaruga', 'Tartaruga Gialla', 'acetato', 'redondo', 'medio', 'solar', '2013-08-12 00:00:00', '2013-08-20 16:56:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lenses`
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
-- Extraindo dados da tabela `lenses`
--

INSERT INTO `lenses` (`id`, `name`, `description`, `price`, `discount`, `type`, `label`, `created`, `modified`) VALUES
(1, 'Lente Fina 1.56', 'Receita no intervalo de + a - 4, com astigmatismo até -2.', 0, 0, 'de_grau', 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(2, 'Lente Fina 1.56', 'Receita no intervalo de + a - 4, com astigmatismo superior a -2.', 40, 0, 'de_grau', 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(3, 'Lente Super Fina 1.67', 'Receita para miopia superior a -4.', 140, 0, 'de_grau', 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(4, 'Lente Sem Grau', '', 0, 0, 'sem_grau', 'Lentes sem grau – vou usar apenas por estilo', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(5, 'Lentes de Demonstração', '', 0, 23, 'demonstracao', 'Lentes de demonstração – vou colocar em outro lugar', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(6, 'Lentes de Sol', '', 0, 0, 'de_sol', 'Lentes de sol – vou usar para proteger meus olhos (com proteção UVA/UVB)', '2013-08-04 00:00:00', '2013-08-04 00:00:00'),
(7, 'Lentes de Sol com Grau', 'Receita no intervalo de + a - 4, com astigmatismo até -4.', 40, 0, 'de_sol_com_grau', 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail (com proteção UVA/UVB)', '2013-08-04 00:00:00', '2013-08-04 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `tracking_code` varchar(255) NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `total_items` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `json_items` text NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_items`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Extraindo dados da tabela `order_items`
--

INSERT INTO `order_items` (`id`, `glass_id`, `lense_type`, `lense_id`, `enabled`, `created`, `modified`) VALUES
(21, 8, 'de_sol_com_grau', 7, 1, '2013-08-05 17:43:15', '2013-08-05 17:43:15'),
(22, 9, 'demonstracao', 5, 1, '2013-08-06 07:13:19', '2013-08-06 07:13:19'),
(23, 13, 'de_grau', 3, 1, '2013-08-06 17:33:12', '2013-08-06 17:33:12'),
(24, 11, 'de_grau', 1, 1, '2013-08-06 19:54:27', '2013-08-06 19:54:27'),
(25, 13, 'de_grau', 1, 1, '2013-08-06 20:28:59', '2013-08-06 20:28:59'),
(26, 13, 'sem_grau', 4, 1, '2013-08-06 22:01:52', '2013-08-06 22:01:52'),
(27, 10, 'demonstracao', 5, 1, '2013-08-07 04:44:40', '2013-08-07 04:44:40'),
(28, 11, 'de_grau', 1, 1, '2013-08-07 13:19:50', '2013-08-07 13:19:50'),
(29, 12, 'de_grau', 1, 1, '2013-08-07 22:41:48', '2013-08-07 22:41:48'),
(31, 12, 'sem_grau', 4, 1, '2013-08-08 10:16:51', '2013-08-08 10:16:51'),
(32, 10, 'sem_grau', 4, 1, '2013-08-08 10:17:02', '2013-08-08 10:17:02'),
(33, 10, 'de_grau', 2, 1, '2013-08-08 10:39:16', '2013-08-08 10:39:16'),
(34, 13, 'de_grau', 3, 1, '2013-08-08 20:07:56', '2013-08-08 20:07:56'),
(35, 13, 'de_grau', 1, 1, '2013-08-08 20:39:55', '2013-08-08 20:39:55'),
(37, 11, 'demonstracao', 5, 1, '2013-08-09 12:15:54', '2013-08-09 12:15:54'),
(39, 10, 'demonstracao', 5, 1, '2013-08-09 14:07:14', '2013-08-09 14:07:14'),
(40, 13, 'demonstracao', 5, 1, '2013-08-09 14:08:07', '2013-08-09 14:08:07'),
(41, 10, 'demonstracao', 5, 1, '2013-08-09 18:54:24', '2013-08-09 18:54:24'),
(42, 12, 'demonstracao', 5, 1, '2013-08-09 18:54:35', '2013-08-09 18:54:35'),
(43, 35, 'de_sol_com_grau', 7, 1, '2013-08-12 18:39:15', '2013-08-12 18:39:15'),
(44, 15, 'de_grau', 3, 1, '2013-08-12 20:04:21', '2013-08-12 20:04:21'),
(45, 22, 'de_grau', 2, 0, '2013-08-13 00:00:18', '2013-08-13 00:02:08'),
(47, 19, 'de_grau', 2, 0, '2013-08-13 00:03:02', '2013-08-13 00:03:20'),
(48, 24, 'de_grau', 1, 1, '2013-08-13 00:05:59', '2013-08-13 00:05:59'),
(49, 14, 'de_grau', 1, 1, '2013-08-14 21:21:29', '2013-08-14 21:21:29'),
(50, 17, 'demonstracao', 5, 0, '2013-08-17 12:48:06', '2013-08-17 12:48:31'),
(51, 30, 'demonstracao', 5, 0, '2013-08-17 12:53:29', '2013-08-17 12:53:37'),
(52, 67, 'de_grau', 1, 1, '2013-08-18 21:24:59', '2013-08-18 21:24:59'),
(53, 14, 'de_grau', 2, 1, '2013-08-18 22:18:48', '2013-08-18 22:18:48'),
(54, 61, 'demonstracao', 5, 1, '2013-08-19 15:24:18', '2013-08-19 15:24:18'),
(55, 92, 'de_grau', 1, 1, '2013-08-19 18:49:01', '2013-08-19 18:49:01'),
(56, 73, 'demonstracao', 5, 1, '2013-08-19 20:07:10', '2013-08-19 20:07:10'),
(57, 130, 'de_grau', 2, 1, '2013-08-19 20:49:10', '2013-08-19 20:49:10'),
(58, 135, 'sem_grau', 4, 1, '2013-08-19 22:41:12', '2013-08-19 22:41:12'),
(60, 109, 'de_grau', 3, 0, '2013-08-19 23:24:33', '2013-08-20 01:13:47'),
(61, 89, 'demonstracao', 5, 1, '2013-08-19 23:29:42', '2013-08-19 23:29:42'),
(62, 121, 'demonstracao', 5, 1, '2013-08-20 00:32:12', '2013-08-20 00:32:12'),
(64, 82, 'demonstracao', 5, 0, '2013-08-20 00:59:36', '2013-08-20 01:06:00'),
(65, 34, 'de_sol', 6, 0, '2013-08-20 01:21:34', '2013-08-20 01:21:57'),
(66, 142, 'de_grau', 1, 0, '2013-08-20 01:22:13', '2013-08-20 01:22:26'),
(67, 80, 'sem_grau', 4, 0, '2013-08-20 11:08:43', '2013-08-20 11:09:31'),
(68, 56, 'demonstracao', 5, 0, '2013-08-20 11:34:58', '2013-08-20 11:35:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `related_glasses`
--

CREATE TABLE IF NOT EXISTS `related_glasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glass_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=875 ;

--
-- Extraindo dados da tabela `related_glasses`
--

INSERT INTO `related_glasses` (`id`, `glass_id`, `related_id`) VALUES
(398, 73, 20),
(399, 73, 130),
(400, 73, 140),
(410, 14, 23),
(411, 14, 74),
(412, 14, 79),
(413, 15, 60),
(414, 15, 64),
(415, 15, 71),
(416, 16, 74),
(417, 16, 80),
(418, 16, 84),
(419, 17, 60),
(420, 17, 72),
(421, 17, 85),
(422, 19, 53),
(423, 19, 57),
(424, 19, 72),
(425, 20, 24),
(426, 20, 83),
(427, 20, 84),
(428, 22, 25),
(429, 22, 54),
(430, 22, 82),
(431, 23, 14),
(432, 23, 55),
(433, 23, 66),
(434, 24, 60),
(435, 24, 77),
(436, 24, 86),
(437, 25, 52),
(438, 25, 66),
(439, 25, 78),
(440, 26, 24),
(441, 26, 57),
(442, 26, 64),
(443, 27, 54),
(444, 27, 75),
(445, 27, 87),
(446, 28, 66),
(447, 28, 80),
(448, 28, 88),
(449, 29, 15),
(450, 29, 17),
(451, 29, 61),
(452, 30, 63),
(453, 30, 66),
(454, 30, 82),
(455, 50, 23),
(456, 50, 81),
(457, 50, 86),
(458, 51, 53),
(459, 51, 61),
(460, 51, 70),
(461, 52, 25),
(462, 52, 79),
(463, 52, 87),
(464, 53, 61),
(465, 53, 67),
(466, 53, 74),
(467, 54, 25),
(468, 54, 79),
(469, 54, 88),
(470, 55, 65),
(471, 55, 66),
(472, 55, 81),
(473, 56, 29),
(474, 56, 64),
(475, 56, 72),
(476, 57, 63),
(477, 57, 73),
(478, 57, 84),
(479, 58, 24),
(480, 58, 26),
(481, 58, 29),
(482, 59, 16),
(483, 59, 57),
(484, 59, 67),
(485, 60, 24),
(486, 60, 26),
(487, 60, 29),
(488, 61, 64),
(489, 61, 68),
(490, 61, 72),
(491, 62, 71),
(492, 62, 80),
(493, 62, 83),
(494, 63, 14),
(495, 63, 16),
(496, 63, 22),
(497, 64, 24),
(498, 64, 25),
(499, 64, 29),
(500, 65, 67),
(501, 65, 76),
(502, 65, 81),
(503, 66, 16),
(504, 66, 28),
(505, 66, 30),
(509, 67, 79),
(510, 67, 82),
(511, 67, 87),
(512, 68, 15),
(513, 68, 17),
(514, 68, 22),
(515, 69, 50),
(516, 69, 54),
(517, 69, 56),
(518, 70, 51),
(519, 70, 61),
(520, 70, 63),
(521, 71, 15),
(522, 71, 22),
(523, 71, 28),
(524, 72, 54),
(525, 72, 60),
(526, 72, 65),
(527, 74, 26),
(528, 74, 27),
(529, 74, 68),
(530, 75, 76),
(531, 75, 78),
(532, 75, 82),
(533, 76, 15),
(534, 76, 16),
(535, 76, 17),
(536, 77, 57),
(537, 77, 60),
(538, 77, 66),
(539, 78, 83),
(540, 78, 86),
(541, 78, 87),
(542, 79, 14),
(543, 79, 17),
(544, 79, 25),
(545, 80, 61),
(546, 80, 63),
(547, 80, 69),
(548, 81, 22),
(549, 81, 25),
(550, 81, 26),
(551, 82, 25),
(552, 82, 27),
(553, 82, 30),
(554, 83, 71),
(555, 83, 72),
(556, 83, 87),
(557, 84, 25),
(558, 84, 26),
(559, 84, 27),
(560, 85, 55),
(561, 85, 57),
(562, 85, 62),
(563, 86, 68),
(564, 86, 72),
(565, 86, 74),
(566, 87, 69),
(567, 87, 82),
(568, 87, 86),
(569, 88, 60),
(570, 88, 64),
(571, 88, 71),
(572, 89, 128),
(573, 89, 130),
(574, 89, 133),
(575, 90, 102),
(576, 90, 136),
(577, 90, 141),
(578, 91, 116),
(579, 91, 120),
(580, 91, 123),
(581, 92, 119),
(582, 92, 120),
(583, 92, 127),
(584, 93, 107),
(585, 93, 114),
(586, 93, 117),
(587, 94, 104),
(588, 94, 110),
(589, 94, 118),
(590, 95, 102),
(591, 95, 103),
(592, 95, 107),
(593, 96, 104),
(594, 96, 138),
(595, 96, 141),
(596, 97, 99),
(597, 97, 107),
(598, 97, 122),
(599, 98, 134),
(600, 98, 138),
(601, 98, 142),
(602, 99, 115),
(603, 99, 118),
(604, 99, 122),
(605, 100, 111),
(606, 100, 115),
(607, 100, 128),
(608, 101, 134),
(609, 101, 138),
(610, 101, 141),
(611, 102, 130),
(612, 102, 134),
(613, 102, 141),
(614, 103, 127),
(615, 103, 128),
(616, 103, 137),
(617, 104, 116),
(618, 104, 118),
(619, 104, 124),
(620, 105, 111),
(621, 105, 123),
(622, 105, 127),
(623, 106, 122),
(624, 106, 128),
(625, 106, 139),
(626, 107, 112),
(627, 107, 115),
(628, 107, 119),
(629, 108, 126),
(630, 108, 130),
(631, 108, 133),
(632, 109, 133),
(633, 109, 137),
(634, 109, 141),
(635, 110, 95),
(636, 110, 100),
(637, 110, 118),
(638, 111, 115),
(639, 111, 133),
(640, 111, 139),
(641, 112, 128),
(642, 112, 130),
(643, 112, 139),
(644, 113, 118),
(645, 113, 120),
(646, 113, 122),
(647, 114, 108),
(648, 114, 112),
(649, 114, 136),
(650, 115, 112),
(651, 115, 127),
(652, 115, 139),
(653, 116, 135),
(654, 116, 138),
(655, 116, 141),
(656, 117, 129),
(657, 117, 131),
(658, 117, 133),
(659, 118, 122),
(660, 118, 127),
(661, 118, 129),
(662, 119, 114),
(663, 119, 135),
(664, 119, 140),
(665, 120, 129),
(666, 120, 133),
(667, 120, 142),
(668, 121, 109),
(669, 121, 137),
(670, 121, 141),
(671, 122, 104),
(672, 122, 119),
(673, 122, 121),
(674, 123, 89),
(675, 123, 90),
(676, 123, 94),
(677, 124, 105),
(678, 124, 108),
(679, 124, 135),
(680, 125, 89),
(681, 125, 116),
(682, 125, 140),
(683, 126, 131),
(684, 126, 133),
(685, 126, 136),
(686, 127, 130),
(687, 127, 134),
(688, 127, 139),
(689, 128, 111),
(690, 128, 136),
(691, 128, 141),
(692, 129, 135),
(693, 129, 137),
(694, 129, 142),
(695, 130, 117),
(696, 130, 121),
(697, 130, 123),
(698, 131, 89),
(699, 131, 108),
(700, 131, 121),
(701, 132, 111),
(702, 132, 114),
(703, 132, 141),
(704, 133, 125),
(705, 133, 129),
(706, 133, 131),
(707, 134, 108),
(708, 134, 118),
(709, 134, 121),
(710, 135, 136),
(711, 135, 139),
(712, 135, 142),
(713, 136, 118),
(714, 136, 122),
(715, 136, 129),
(716, 137, 122),
(717, 137, 139),
(718, 137, 142),
(719, 138, 118),
(720, 138, 134),
(721, 138, 142),
(722, 139, 108),
(723, 139, 127),
(724, 139, 130),
(725, 140, 100),
(726, 140, 104),
(727, 140, 112),
(728, 141, 126),
(729, 141, 129),
(730, 141, 136),
(731, 142, 102),
(732, 142, 110),
(733, 142, 115),
(734, 31, 152),
(735, 31, 153),
(736, 31, 160),
(737, 32, 38),
(738, 32, 40),
(739, 32, 41),
(740, 33, 36),
(741, 33, 146),
(742, 33, 172),
(743, 34, 163),
(744, 34, 166),
(745, 34, 169),
(746, 35, 174),
(747, 35, 177),
(748, 35, 180),
(749, 36, 147),
(750, 36, 153),
(751, 36, 159),
(752, 37, 162),
(753, 37, 167),
(754, 37, 168),
(755, 38, 151),
(756, 38, 170),
(757, 38, 178),
(758, 39, 173),
(759, 39, 176),
(760, 39, 181),
(761, 40, 147),
(762, 40, 153),
(763, 40, 158),
(764, 41, 161),
(765, 41, 165),
(766, 41, 166),
(767, 42, 172),
(768, 42, 180),
(769, 42, 181),
(770, 43, 154),
(771, 43, 158),
(772, 43, 164),
(773, 44, 164),
(774, 44, 168),
(775, 44, 177),
(776, 143, 156),
(777, 143, 159),
(778, 143, 164),
(779, 144, 162),
(780, 144, 167),
(781, 144, 169),
(782, 145, 162),
(783, 145, 169),
(784, 145, 170),
(785, 146, 154),
(786, 146, 169),
(787, 146, 181),
(788, 147, 161),
(789, 147, 174),
(790, 147, 182),
(791, 148, 167),
(792, 148, 171),
(793, 148, 181),
(794, 149, 158),
(795, 149, 162),
(796, 149, 165),
(797, 150, 152),
(798, 150, 154),
(799, 150, 174),
(800, 151, 168),
(801, 151, 170),
(802, 151, 181),
(803, 152, 164),
(804, 152, 168),
(805, 152, 176),
(806, 153, 149),
(807, 153, 157),
(808, 153, 177),
(809, 154, 152),
(810, 154, 170),
(811, 154, 177),
(812, 155, 158),
(813, 155, 162),
(814, 155, 169),
(815, 156, 171),
(816, 156, 179),
(817, 156, 182),
(818, 157, 155),
(819, 157, 164),
(820, 157, 170),
(821, 158, 167),
(822, 158, 168),
(823, 158, 170),
(824, 159, 152),
(825, 159, 154),
(826, 159, 160),
(827, 160, 145),
(828, 160, 154),
(829, 160, 158),
(830, 161, 146),
(831, 161, 152),
(832, 161, 154),
(833, 162, 145),
(834, 162, 156),
(835, 162, 165),
(836, 163, 31),
(837, 163, 32),
(838, 163, 33),
(839, 164, 159),
(840, 164, 161),
(841, 164, 174),
(842, 165, 174),
(843, 165, 177),
(844, 165, 182),
(845, 166, 173),
(846, 166, 175),
(847, 166, 177),
(848, 167, 162),
(849, 167, 172),
(850, 167, 182),
(851, 168, 143),
(852, 168, 145),
(853, 168, 159),
(854, 169, 146),
(855, 169, 154),
(856, 169, 166),
(857, 170, 166),
(858, 170, 174),
(859, 170, 182),
(860, 171, 144),
(861, 171, 152),
(862, 171, 158),
(863, 172, 148),
(864, 172, 166),
(865, 172, 181),
(866, 173, 154),
(867, 173, 157),
(868, 173, 160),
(869, 174, 177),
(870, 174, 180),
(871, 174, 181),
(872, 175, 144),
(873, 175, 157),
(874, 175, 165);

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
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
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `name`, `key`, `value`, `created`, `modified`) VALUES
(1, 'E-mail de Contato', 'email_contato', 'contato@bentrovato.com.br', '2013-08-02 00:55:32', '2013-08-02 00:58:45'),
(2, 'Fittingbox - CustomerID', 'fittingbox_customerid', 'bentrovato', '2013-08-02 00:56:22', '2013-08-02 00:56:22'),
(3, 'Google Analytics', 'google_analytics', '<script type="text/javascript">\r\n\r\n  var _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''UA-XXXXX-Y'']);\r\n  _gaq.push([''_trackPageview'']);\r\n\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();\r\n\r\n</script>', '2013-08-02 03:18:27', '2013-08-02 03:49:06'),
(4, 'ClickTale - after the body tag', 'click_tale_after_body_tag', '<!-- ClickTale Top part -->\r\n<script type="text/javascript">\r\nvar WRInitTime=(new Date()).getTime();\r\n</script>\r\n<!-- ClickTale end of Top part -->\r\n', '2013-08-02 03:18:54', '2013-08-16 17:20:47'),
(5, 'ClickTale - before the body tag', 'clicktale_before_body_tag', '  \r\n<!-- ClickTale Bottom part -->\r\n\r\n<script type=''text/javascript''>\r\n// The ClickTale Balkan Tracking Code may be programmatically customized using hooks:\r\n// \r\n//   function ClickTalePreRecordingHook() { /* place your customized code here */  }\r\n//\r\n// For details about ClickTale hooks, please consult the wiki page http://wiki.clicktale.com/Article/Customizing_code_version_2\r\n\r\ndocument.write(unescape("%3Cscript%20src=''"+\r\n(document.location.protocol==''https:''?\r\n"https://clicktalecdn.sslcs.cdngc.net/www08/ptc/3f6b0c82-0da4-44ee-a21c-beebcffd1c50.js":\r\n"http://cdn.clicktale.net/www08/ptc/3f6b0c82-0da4-44ee-a21c-beebcffd1c50.js")+"''%20type=''text/javascript''%3E%3C/script%3E"));\r\n</script>\r\n\r\n<!-- ClickTale end of Bottom part -->\r\n', '2013-08-02 03:19:21', '2013-08-16 17:21:02'),
(6, 'E-mail do PagSeguro', 'pagseguro_email', 'joao@bentrovato.com.br', '2013-08-05 00:00:00', '2013-08-11 01:40:21'),
(7, 'Token do PagSeguro', 'pagseguro_token', '982E994EF7A5489C904291DBB1B868C2', '2013-08-05 00:00:00', '2013-08-11 13:50:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subscriptions`
--

CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`) VALUES
(1, 'ferrazjpg@hotmail.com'),
(2, 'alfredocbs@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `testemonials`
--

CREATE TABLE IF NOT EXISTS `testemonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `glass_id` int(11) NOT NULL,
  `testemonial` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `used_coupons`
--

CREATE TABLE IF NOT EXISTS `used_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `role`, `created`, `modified`) VALUES
(3, 'bentrovato', 'João Ferraz', '99e4ac1e2734da29ad97136c041f92418437376b', 'admin', '2013-08-02 02:35:39', '2013-08-02 02:35:39'),
(4, 'marketingshop', 'Marketing Shop', '546e0d17358d9502dc6d4e211d3f85f4b746f482', 'admin', '2013-08-02 03:04:01', '2013-08-02 03:04:01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
