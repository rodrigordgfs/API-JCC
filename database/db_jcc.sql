-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 13-Jun-2019 às 12:20
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add horario', 7, 'add_horario'),
(26, 'Can change horario', 7, 'change_horario'),
(27, 'Can delete horario', 7, 'delete_horario'),
(28, 'Can view horario', 7, 'view_horario'),
(29, 'Can add servico', 8, 'add_servico'),
(30, 'Can change servico', 8, 'change_servico'),
(31, 'Can delete servico', 8, 'delete_servico'),
(32, 'Can view servico', 8, 'view_servico'),
(33, 'Can add usuario', 9, 'add_usuario'),
(34, 'Can change usuario', 9, 'change_usuario'),
(35, 'Can delete usuario', 9, 'delete_usuario'),
(36, 'Can view usuario', 9, 'view_usuario'),
(37, 'Can add horario agendado', 10, 'add_horarioagendado'),
(38, 'Can change horario agendado', 10, 'change_horarioagendado'),
(39, 'Can delete horario agendado', 10, 'delete_horarioagendado'),
(40, 'Can view horario agendado', 10, 'view_horarioagendado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'horario', 'horario'),
(8, 'servico', 'servico'),
(9, 'usuario', 'usuario'),
(10, 'horario_agendado', 'horarioagendado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-06-13 12:08:00.760042'),
(2, 'auth', '0001_initial', '2019-06-13 12:08:00.830042'),
(3, 'admin', '0001_initial', '2019-06-13 12:08:04.462671'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-06-13 12:08:04.532674'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-06-13 12:08:04.549674'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-06-13 12:08:04.614672'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-06-13 12:08:04.637676'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-06-13 12:08:04.664671'),
(9, 'auth', '0004_alter_user_username_opts', '2019-06-13 12:08:04.677671'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-06-13 12:08:04.703674'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-06-13 12:08:04.706674'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-06-13 12:08:04.719672'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-06-13 12:08:04.743672'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-06-13 12:08:04.771675'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-06-13 12:08:04.794672'),
(16, 'auth', '0011_update_proxy_permissions', '2019-06-13 12:08:04.807673'),
(17, 'horario', '0001_initial', '2019-06-13 12:08:04.819674'),
(18, 'servico', '0001_initial', '2019-06-13 12:08:04.835674'),
(19, 'servico', '0002_auto_20190612_0902', '2019-06-13 12:08:04.843671'),
(20, 'servico', '0003_auto_20190612_0908', '2019-06-13 12:08:04.862672'),
(21, 'servico', '0004_auto_20190612_0913', '2019-06-13 12:08:04.866672'),
(22, 'usuario', '0001_initial', '2019-06-13 12:08:04.881672'),
(23, 'usuario', '0002_auto_20190612_0950', '2019-06-13 12:08:04.897670'),
(24, 'horario_agendado', '0001_initial', '2019-06-13 12:08:04.918671'),
(25, 'horario_agendado', '0002_auto_20190612_1957', '2019-06-13 12:08:05.030674'),
(26, 'horario_agendado', '0003_auto_20190612_1959', '2019-06-13 12:08:05.072678'),
(27, 'horario_agendado', '0002_auto_20190612_1629', '2019-06-13 12:08:05.108673'),
(28, 'horario_agendado', '0004_merge_20190613_0907', '2019-06-13 12:08:05.165512'),
(29, 'horario_agendado', '0005_auto_20190613_0907', '2019-06-13 12:08:05.197508'),
(30, 'sessions', '0001_initial', '2019-06-13 12:08:05.229507');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_horario`
--

DROP TABLE IF EXISTS `tb_horario`;
CREATE TABLE IF NOT EXISTS `tb_horario` (
  `id` int(11) NOT NULL,
  `horario` time(6) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `horario` (`horario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_horario`
--

INSERT INTO `tb_horario` (`id`, `horario`, `ativo`) VALUES
(1, '08:00:00.000000', 1),
(2, '09:00:00.000000', 0),
(3, '10:00:00.000000', 1),
(4, '11:00:00.000000', 0),
(5, '12:00:00.000000', 0),
(6, '13:00:00.000000', 1),
(7, '14:00:00.000000', 0),
(8, '15:00:00.000000', 0),
(9, '16:00:00.000000', 1),
(10, '17:00:00.000000', 0),
(11, '18:00:00.000000', 0),
(12, '19:00:00.000000', 1),
(13, '20:00:00.000000', 0),
(14, '21:00:00.000000', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_horario_agendado`
--

DROP TABLE IF EXISTS `tb_horario_agendado`;
CREATE TABLE IF NOT EXISTS `tb_horario_agendado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `criado` datetime(6) NOT NULL,
  `confirmado` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `horario_id` int(11) NOT NULL,
  `usuario_id` varchar(30) NOT NULL,
  `servico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_horario_agendado_id_horario_61f9ee80` (`horario_id`),
  KEY `tb_horario_agendado_id_usuario_66dca0d7` (`usuario_id`),
  KEY `tb_horario_agendado_servico_id_41320580` (`servico_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_horario_agendado`
--

INSERT INTO `tb_horario_agendado` (`id`, `data`, `criado`, `confirmado`, `status`, `horario_id`, `usuario_id`, `servico_id`) VALUES
(1, '2019-06-13', '2019-06-11 00:00:00.000000', 1, 0, 4, '49XdKSojbCSBtIkA1pRAonW0xfG2', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_servico`
--

DROP TABLE IF EXISTS `tb_servico`;
CREATE TABLE IF NOT EXISTS `tb_servico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servico` varchar(100) NOT NULL,
  `preco` decimal(4,2) NOT NULL,
  `tempo` int(11) NOT NULL,
  `icone` varchar(255) NOT NULL,
  `criado` datetime(6) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_servico`
--

INSERT INTO `tb_servico` (`id`, `servico`, `preco`, `tempo`, `icone`, `criado`, `ativo`) VALUES
(3, 'Corte com Tesoura', '20.00', 30, 'https://img.icons8.com/ios-glyphs/72/separate-by-using-blank-sheets.png', '2019-06-12 12:17:15.578271', 1),
(4, 'Corte com Máquina', '15.00', 25, 'https://img.icons8.com/ios-glyphs/72/separate-by-using-blank-sheets.png', '2019-06-12 12:17:30.082066', 1),
(5, 'Corte Promoção', '10.00', 20, 'https://img.icons8.com/ios-glyphs/72/separate-by-using-blank-sheets.png', '2019-06-12 18:36:26.988955', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id` varchar(30) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `nome`, `imagem`, `telefone`) VALUES
('49XdKSojbCSBtIkA1pRAonW0xfG2', 'RODRIGO VIEGAS RODRIGUES', 'https://lh4.googleusercontent.com/-iZELkwUHvnA/AAAAAAAAAAI/AAAAAAAAAIA/WEHWNKm-g98/s96-c/photo.jpg', ''),
('4EgtKTGKOta8YjZSTRPiMjv0SH73', 'ViiniciusMB', 'https://lh3.googleusercontent.com/-iK3cGpCQeWA/AAAAAAAAAAI/AAAAAAAANaw/2b0EgxJ8nWo/s96-c/photo.jpg', ''),
('HVDDfXA0AtfVZLpjLzYV1IIxmd53', 'Shinoda Labs', 'https://lh3.googleusercontent.com/-fqWvaNDUvyI/AAAAAAAAAAI/AAAAAAAAAAc/zS0TS2peer8/s96-c/photo.jpg', '51996236798'),
('OQTMgByVjeQirr46gH4LhwglocF2', 'Rodrigo Shinoda', 'https://lh4.googleusercontent.com/-qdoSve4blqM/AAAAAAAAAAI/AAAAAAAAAIg/Y2cjU8CDRS4/s96-c/photo.jpg', '51996236798');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
