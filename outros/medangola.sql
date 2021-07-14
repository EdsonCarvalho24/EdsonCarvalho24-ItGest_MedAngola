-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 14-Jul-2021 às 20:59
-- Versão do servidor: 5.7.23
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medangola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

DROP TABLE IF EXISTS `candidato`;
CREATE TABLE IF NOT EXISTS `candidato` (
  `id_candidato` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `id_municipio` int(11) NOT NULL,
  `id_nivelacademico` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `id_especialidade` int(11) NOT NULL,
  `id_escolaformacao` int(11) NOT NULL,
  PRIMARY KEY (`id_candidato`),
  KEY `fk_candidato_municipio1_id_x` (`id_municipio`),
  KEY `fk_candidato_nivelacademico1_id_x` (`id_nivelacademico`),
  KEY `fk_candidato_genero1_id_x` (`id_genero`),
  KEY `fk_candidato_especialidade1_id_x` (`id_especialidade`),
  KEY `fk_candidato_escolaformacao1_id_x` (`id_escolaformacao`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `candidato`
--

INSERT INTO `candidato` (`id_candidato`, `nome`, `telefone`, `data_nascimento`, `data_registro`, `email`, `senha`, `id_municipio`, `id_nivelacademico`, `id_genero`, `id_especialidade`, `id_escolaformacao`) VALUES
(1, 'Edson de Carvalho', '936068390', '1997-12-24', '2021-07-08 22:07:51', 'ed@gmail.com', '123456789', 1, 2, 1, 1, 1),
(2, 'Pedro Epalanca', '999999', '1995-10-23', '2021-07-09 17:09:52', 'pedro@gmail.com', '1234567', 2, 3, 1, 2, 2),
(3, 'Ana Manuel ', '934565656', '1992-12-12', '2021-07-11 13:57:40', 'ana@gmail', '123323', 14, 1, 2, 1, 1),
(4, 'Edna', '934567756', '2002-11-01', '2021-07-12 23:30:35', 'edna@gmail.com', '$2b$10$oDphyCm7F2I6KdoocFRqkuCRom/zywonrZzL0wlhMTVGOxFGgLl6q', 1, 1, 2, 1, 1),
(5, 'Valetão', '93456744', '1997-11-02', '2021-07-12 23:47:29', 'valeta@gmail.com', '$2b$10$1ZB6l1itnXiPgCLxipThIOWgLH7yJJ.Y9Kq2pQ9/I02ZkpWQJkXP.', 1, 1, 1, 1, 1),
(6, 'Coxi', '93456644', '1994-11-02', '2021-07-13 11:24:36', 'coxi@gmail.com', '$2b$10$e6SM6fwF17uooTsncUc1wemX8aBvU8WwvhS7PWR4irsshyWBayDO.', 1, 1, 1, 1, 1),
(7, 'Cristina', '998345656', '1996-11-12', '2021-07-13 22:47:02', 'cris@gmail.com', '$2b$10$ZXjOGjwx1FazhBiwCnh2A.W71UFq1voR4ltznDnx7CA4Jh9NDzTva', 35, 1, 1, 1, 1),
(8, 'Solanje', '934585754', '1999-04-26', '2021-07-14 08:56:24', 'solanje@gmail.com', '$2b$10$/Qq/zITNovqBpxQ335vrzeFDs5BvM2vqKEYk3tgpVgGauNX.IQp3.', 123, 2, 2, 2, 2),
(9, 'Micaela', '995678765', '1992-03-12', '2021-07-14 09:04:38', 'micaela@gmail.com', '$2b$10$U.34iqkozs0yYmBp8Tj5Xu8T2dmoiAQCTA7uvf7Nd7giWHOpGxtRa', 96, 1, 2, 2, 2),
(10, 'Nelson', '934256735', '1992-12-11', '2021-07-14 09:14:13', 'nelson@gmail.com', '$2b$10$P0ilnqLGK6l5b.Ioqv9FA.clM68.RpR.spLJxKMt3RmUC8DmoPgBO', 92, 2, 1, 1, 2),
(11, 'Bento', '923747464', '1997-09-10', '2021-07-14 10:46:28', 'bento@gmail.com', '$2b$10$0d62VF64fqFvZnkOIvnTqelGjpKxUs3oP7b0bqpy2i3jdBKKWO0FO', 123, 2, 1, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatura`
--

DROP TABLE IF EXISTS `candidatura`;
CREATE TABLE IF NOT EXISTS `candidatura` (
  `id_candidatura` int(11) NOT NULL AUTO_INCREMENT,
  `id_candidato` int(11) NOT NULL,
  `id_escalao` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `id_escola_aplicacao` int(11) NOT NULL,
  `id_estado_cadidatura` int(11) NOT NULL,
  `id_nivel_ensino` int(11) NOT NULL,
  `data_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_candidatura`),
  KEY `fk_candidatura_candidato1_id_x` (`id_candidato`),
  KEY `fk_candidatura_escalao1_id_x` (`id_escalao`),
  KEY `fk_candidatura_funcionario1_id_x` (`id_funcionario`),
  KEY `fk_candidatura_escola_aplicacao1_id_x` (`id_escola_aplicacao`),
  KEY `fk_candidatura_estado_cadidatura1_id_x` (`id_estado_cadidatura`),
  KEY `fk_candidatura_nivel_ensino1_id_x` (`id_nivel_ensino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE IF NOT EXISTS `disciplina` (
  `id_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escalao`
--

DROP TABLE IF EXISTS `escalao`;
CREATE TABLE IF NOT EXISTS `escalao` (
  `id_escalao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_escalao`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolaformacao`
--

DROP TABLE IF EXISTS `escolaformacao`;
CREATE TABLE IF NOT EXISTS `escolaformacao` (
  `id_escolaformacao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_escolaformacao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `escolaformacao`
--

INSERT INTO `escolaformacao` (`id_escolaformacao`, `nome`) VALUES
(1, 'IMNE MARISTA'),
(2, 'GARCIA NETO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola_aplicacao`
--

DROP TABLE IF EXISTS `escola_aplicacao`;
CREATE TABLE IF NOT EXISTS `escola_aplicacao` (
  `id_escola_aplicacao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  PRIMARY KEY (`id_escola_aplicacao`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  KEY `fk_escola_aplicacao_municipio1_id_x` (`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
CREATE TABLE IF NOT EXISTS `especialidade` (
  `id_especialidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_especialidade`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `especialidade`
--

INSERT INTO `especialidade` (`id_especialidade`, `nome`) VALUES
(1, 'BIOLOGIA'),
(2, 'MATEMÁTICA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_cadidatura`
--

DROP TABLE IF EXISTS `estado_cadidatura`;
CREATE TABLE IF NOT EXISTS `estado_cadidatura` (
  `id_estado_cadidatura` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_cadidatura`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estado_cadidatura`
--

INSERT INTO `estado_cadidatura` (`id_estado_cadidatura`, `nome`) VALUES
(2, 'Admitida'),
(3, 'Barrada'),
(1, 'Processando');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `morada` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE IF NOT EXISTS `genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id_genero`, `nome`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipio`
--

DROP TABLE IF EXISTS `municipio`;
CREATE TABLE IF NOT EXISTS `municipio` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `id_provincia` int(11) NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `fk_municipio_provincia1_id_x` (`id_provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `municipio`
--

INSERT INTO `municipio` (`id_municipio`, `nome`, `id_provincia`) VALUES
(1, 'Ambriz', 1),
(2, 'Dande', 1),
(3, 'Dembos', 1),
(4, 'Bula Atumba', 1),
(5, 'Nambuangongo', 1),
(6, 'Pango Aluquém (Pango Aluquêm)', 1),
(7, 'Balombo', 2),
(8, 'Baía Farta', 2),
(9, 'Benguela', 2),
(10, 'Bocoio', 2),
(11, 'Caimbambo', 2),
(12, 'Catumbela', 2),
(13, 'Chongoroi', 2),
(14, 'Cubal', 2),
(15, 'Ganda', 2),
(16, 'Lobito', 2),
(17, 'Andulo', 3),
(18, 'Camacupa', 3),
(19, 'Catabola', 3),
(20, 'Chinguar', 3),
(21, 'Chitembo', 3),
(22, 'Cuemba', 3),
(23, 'Cunhinga', 3),
(24, 'Cuito (Kuito)', 3),
(25, 'Nharêa', 3),
(26, 'Belize', 4),
(27, 'Buco-Zau', 4),
(28, 'Cabinda', 4),
(29, 'Cacongo', 4),
(30, 'Cahama', 5),
(31, 'Cuanhama (Kwanhama)', 5),
(32, 'Curoca', 5),
(33, 'Cuvelai', 5),
(34, 'Namacunde', 5),
(35, 'Ombadja', 5),
(36, 'Bailundo', 6),
(37, 'Cachiungo (Catchiungo)', 6),
(38, 'Caála', 6),
(39, 'Ecunha (Ekunha)', 6),
(40, 'Huambo', 6),
(41, 'Londuimbali', 6),
(42, 'Longonjo (Longongo)', 6),
(43, 'Mungo', 6),
(44, 'Chicala-Cholohanga (Tchicala-Tcholoanga)', 6),
(45, 'Chinjenje (Tchindjenje)', 6),
(46, 'Ucuma', 6),
(47, 'Caconda', 7),
(48, 'Cacula', 7),
(49, 'Caluquembe', 7),
(50, 'Gambos', 7),
(51, 'Chibia', 7),
(52, 'Chicomba', 7),
(53, 'Chipindo', 7),
(54, 'Humpata', 7),
(55, 'Jamba', 7),
(56, 'Cuvango (Kuvango)', 7),
(57, 'Lubango', 7),
(58, 'Matala', 7),
(59, 'Quilengues', 7),
(60, 'Quipungo', 7),
(61, 'Calai', 8),
(62, 'Cuangar', 8),
(63, 'Cuchi', 8),
(64, 'Cuito Cuanavale (Kuito Kuanavale)', 8),
(65, 'Dirico', 8),
(66, 'Nancova (Nankova)', 8),
(67, 'Mavinga', 8),
(68, 'Menongue', 8),
(69, 'Rivungo', 8),
(70, 'Ambaca', 9),
(71, 'Banga', 9),
(72, 'Bolongongo', 9),
(73, 'Cambambe', 9),
(74, 'Cazengo', 9),
(75, 'Golungo Alto', 9),
(76, 'Ngonguembo (Gonguembo)', 9),
(77, 'Lucala', 9),
(78, 'Quiculungo', 9),
(79, 'Samba Caju', 9),
(80, 'Amboim', 10),
(81, 'Cassongue', 10),
(82, 'Conda', 10),
(83, 'Ebo', 10),
(84, 'Libolo', 10),
(85, 'Mussende', 10),
(86, 'Porto Amboim', 10),
(87, 'Quibala', 10),
(88, 'Quilenda', 10),
(89, 'Seles', 10),
(90, 'Sumbe', 10),
(91, 'Cela', 10),
(92, 'Belas', 11),
(93, 'Cacuaco', 11),
(94, 'Cazenga', 11),
(95, 'Icolo e Bengo', 11),
(96, 'Luanda', 11),
(97, 'Quiçama (Quissama)', 11),
(98, 'Kilamba Kiaxi', 11),
(99, 'Talatona', 11),
(100, 'Viana', 11),
(101, 'Cambulo', 12),
(102, 'Capenda Camulemba', 12),
(103, 'Caungula', 12),
(104, 'Chitato (Tchitato)', 12),
(105, 'Cuango', 12),
(106, 'Cuilo', 12),
(107, 'Lubalo', 12),
(108, 'Lucapa', 12),
(109, 'Xá Muteba', 12),
(110, 'Lóvua', 12),
(111, 'Cacolo', 13),
(112, 'Dala', 13),
(113, 'Muconda', 13),
(114, 'Saurimo', 13),
(115, 'Cacuso', 14),
(116, 'Calandula', 14),
(117, 'Cambundi Catembo', 14),
(118, 'Cangandala', 14),
(119, 'Cahombo (Caombo)', 14),
(120, 'Kiwaba Nzoji (Cuaba Nzogo)', 14),
(121, 'Kunda dya Baze (Cunda-Diaza)', 14),
(122, 'Luquembo', 14),
(123, 'Malange', 14),
(124, 'Marimba', 14),
(125, 'Massango', 14),
(126, 'Mucari', 14),
(127, 'Quela', 14),
(128, 'Quirima', 14),
(129, 'Alto Zambeze', 15),
(130, 'Bundas', 15),
(131, 'Camanongue', 15),
(132, 'Cameia (Lumeji)', 15),
(133, 'Luau', 15),
(134, 'Luacano (Lucano)', 15),
(135, 'Luchazes', 15),
(136, 'Léua', 15),
(137, 'Moxico', 15),
(138, 'Bibala', 16),
(139, 'Camacuio (Camulo)', 16),
(140, 'Moçâmedes (Namibe)', 16),
(141, 'Tômbwa (Tômbua)', 16),
(142, 'Virei', 16),
(143, 'Alto Cauale', 17),
(144, 'Ambuíla', 17),
(145, 'Bembe', 17),
(146, 'Buengas', 17),
(147, 'Bungo', 17),
(148, 'Damba', 17),
(149, 'Milunga', 17),
(150, 'Mucaba', 17),
(151, 'Negage', 17),
(152, 'Puri', 17),
(153, 'Quimbele', 17),
(154, 'Dange-Quitexe', 17),
(155, 'Pombo', 17),
(156, 'Songo', 17),
(157, 'Uíge', 17),
(158, 'Maquela do Zombo', 17),
(159, 'Cuimba', 18),
(160, 'MBanza Kongo', 18),
(161, 'Noqui', 18),
(162, 'NZeto', 18),
(163, 'Soyo', 18),
(164, 'Tomboco', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivelacademico`
--

DROP TABLE IF EXISTS `nivelacademico`;
CREATE TABLE IF NOT EXISTS `nivelacademico` (
  `id_nivelacademico` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id_nivelacademico`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nivelacademico`
--

INSERT INTO `nivelacademico` (`id_nivelacademico`, `nome`) VALUES
(1, 'ENSINO MÉDIO'),
(2, 'ENSINO SUPERIOR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivel_ensino`
--

DROP TABLE IF EXISTS `nivel_ensino`;
CREATE TABLE IF NOT EXISTS `nivel_ensino` (
  `id_nivel_ensino` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_nivel_ensino`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacao`
--

DROP TABLE IF EXISTS `notificacao`;
CREATE TABLE IF NOT EXISTS `notificacao` (
  `id_notificacao` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `mensagem` varchar(200) NOT NULL,
  PRIMARY KEY (`id_notificacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pivot_candidato_notificacao`
--

DROP TABLE IF EXISTS `pivot_candidato_notificacao`;
CREATE TABLE IF NOT EXISTS `pivot_candidato_notificacao` (
  `id_pivot_candidato_notificacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_notificacao` int(11) NOT NULL,
  `id_candidato` int(11) NOT NULL,
  PRIMARY KEY (`id_pivot_candidato_notificacao`),
  KEY `fk_pivot_candidato_notificacao_notificacao1_id_x` (`id_notificacao`),
  KEY `fk_pivot_candidato_notificacao_candidato1_id_x` (`id_candidato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pivot_escola_aplicacao_disciplina`
--

DROP TABLE IF EXISTS `pivot_escola_aplicacao_disciplina`;
CREATE TABLE IF NOT EXISTS `pivot_escola_aplicacao_disciplina` (
  `id_pivot_escola_disciplina` int(11) NOT NULL,
  `id_escola_aplicacao` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_pivot_escola_disciplina`),
  KEY `fk_pivot_escola_aplicacao_disciplina_escola_aplicacao1_id_x` (`id_escola_aplicacao`),
  KEY `fk_pivot_escola_aplicacao_disciplina_disciplina1_id_x` (`id_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `provincia`
--

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE IF NOT EXISTS `provincia` (
  `id_provincia` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `nome`) VALUES
(1, 'Bengo'),
(2, 'Benguela'),
(3, 'Bié'),
(4, 'Cabinda'),
(5, 'Cunene'),
(6, 'Huambo'),
(7, 'Huíla'),
(8, 'Kuando Kubango'),
(9, 'Kwanza Norte'),
(10, 'Kwanza Sul'),
(11, 'Luanda'),
(12, 'Lunda Norte'),
(13, 'Lunda Sul'),
(14, 'Malange'),
(15, 'Moxico'),
(16, 'Namibe'),
(17, 'Uíge'),
(18, 'Zaire');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `fk_candidato_escolaformacao1` FOREIGN KEY (`id_escolaformacao`) REFERENCES `escolaformacao` (`id_escolaformacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidato_especialidade1` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id_especialidade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidato_genero1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidato_municipio1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidato_nivelacademico1` FOREIGN KEY (`id_nivelacademico`) REFERENCES `nivelacademico` (`id_nivelacademico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `candidatura`
--
ALTER TABLE `candidatura`
  ADD CONSTRAINT `fk_candidatura_candidato1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidatura_escalao1` FOREIGN KEY (`id_escalao`) REFERENCES `escalao` (`id_escalao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidatura_escola_aplicacao1` FOREIGN KEY (`id_escola_aplicacao`) REFERENCES `escola_aplicacao` (`id_escola_aplicacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidatura_estado_cadidatura1` FOREIGN KEY (`id_estado_cadidatura`) REFERENCES `estado_cadidatura` (`id_estado_cadidatura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidatura_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidatura_nivel_ensino1` FOREIGN KEY (`id_nivel_ensino`) REFERENCES `nivel_ensino` (`id_nivel_ensino`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `escola_aplicacao`
--
ALTER TABLE `escola_aplicacao`
  ADD CONSTRAINT `fk_escola_aplicacao_municipio1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `fk_municipio_provincia1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pivot_candidato_notificacao`
--
ALTER TABLE `pivot_candidato_notificacao`
  ADD CONSTRAINT `fk_pivot_candidato_notificacao_candidato1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pivot_candidato_notificacao_notificacao1` FOREIGN KEY (`id_notificacao`) REFERENCES `notificacao` (`id_notificacao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pivot_escola_aplicacao_disciplina`
--
ALTER TABLE `pivot_escola_aplicacao_disciplina`
  ADD CONSTRAINT `fk_pivot_escola_aplicacao_disciplina_disciplina1` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina` (`id_disciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pivot_escola_aplicacao_disciplina_escola_aplicacao1` FOREIGN KEY (`id_escola_aplicacao`) REFERENCES `escola_aplicacao` (`id_escola_aplicacao`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
