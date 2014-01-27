-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 26 Janvier 2014 à 18:13
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `tutoret`
--

-- --------------------------------------------------------

--
-- Structure de la table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
  `idApplications` int(11) NOT NULL AUTO_INCREMENT,
  `nomApplications` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idApplications`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `applications`
--

INSERT INTO `applications` (`idApplications`, `nomApplications`) VALUES
(1, 'emacs'),
(2, 'firefox'),
(3, 'sublime'),
(4, 'geany');

-- --------------------------------------------------------

--
-- Structure de la table `configapplication`
--

CREATE TABLE IF NOT EXISTS `configapplication` (
  `idConfigapplication` int(11) NOT NULL AUTO_INCREMENT,
  `etatConfigapplication` varchar(45) DEFAULT NULL,
  `idOrdinateurs` int(11) NOT NULL,
  `idApplications` int(11) NOT NULL,
  PRIMARY KEY (`idConfigapplication`),
  KEY `fk_Configapplication_Ordinateurs1_idx` (`idOrdinateurs`),
  KEY `fk_Configapplication_Applications1_idx` (`idApplications`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `configpost`
--

CREATE TABLE IF NOT EXISTS `configpost` (
  `idConfigpost` int(11) NOT NULL AUTO_INCREMENT,
  `etatConfigpost` tinyint(1) DEFAULT NULL,
  `userConfigpost` varchar(45) DEFAULT NULL,
  `idOrdinateurs` int(11) NOT NULL,
  PRIMARY KEY (`idConfigpost`),
  KEY `fk_Configpost_Ordinateurs1_idx` (`idOrdinateurs`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=417 ;

--
-- Contenu de la table `configpost`
--

INSERT INTO `configpost` (`idConfigpost`, `etatConfigpost`, `userConfigpost`, `idOrdinateurs`) VALUES
(210, 0, 'thomas', 1),
(211, 0, 'thomas', 2),
(212, 0, 'thomas', 3),
(213, 0, 'thomas', 4),
(214, 0, 'thomas', 5),
(215, 0, 'thomas', 6),
(216, 0, 'thomas', 7),
(217, 0, 'thomas', 8),
(218, 0, 'thomas', 9),
(219, 0, 'thomas', 10),
(220, 0, 'thomas', 11),
(221, 0, 'thomas', 12),
(222, 0, 'thomas', 13),
(223, 0, 'thomas', 14),
(224, 0, 'thomas', 15),
(225, 0, 'thomas', 16),
(226, 0, 'thomas', 17),
(227, 0, 'thomas', 18),
(228, 0, 'thomas', 19),
(229, 0, 'thomas', 20),
(230, 0, 'thomas', 21),
(231, 0, 'thomas', 22),
(232, 0, 'thomas', 23),
(233, 0, 'thomas', 24),
(234, 0, 'thomas', 25),
(235, 0, 'thomas', 26),
(236, 0, 'thomas', 27),
(237, 0, 'thomas', 28),
(238, 0, 'thomas', 29),
(239, 0, 'thomas', 30),
(240, 0, 'thomas', 31),
(241, 0, 'thomas', 32),
(242, 0, 'thomas', 33),
(243, 0, 'thomas', 34),
(244, 0, 'thomas', 35),
(245, 0, 'thomas', 36),
(246, 0, 'thomas', 37),
(247, 0, 'thomas', 38),
(248, 0, 'thomas', 39),
(249, 0, 'thomas', 40),
(250, 0, 'thomas', 41),
(251, 0, 'thomas', 42),
(252, 0, 'thomas', 43),
(253, 0, 'thomas', 44),
(254, 0, 'thomas', 45),
(255, 0, 'thomas', 46),
(256, 0, 'thomas', 47),
(257, 0, 'thomas', 48),
(258, 0, 'thomas', 49),
(259, 0, 'thomas', 50),
(260, 0, 'thomas', 51),
(261, 0, 'thomas', 52),
(262, 0, 'thomas', 53),
(263, 0, 'thomas', 54),
(264, 0, 'thomas', 55),
(265, 0, 'thomas', 56),
(266, 0, 'thomas', 57),
(267, 0, 'thomas', 58),
(268, 0, 'thomas', 59),
(269, 0, 'thomas', 60),
(270, 0, 'thomas', 61),
(271, 0, 'thomas', 62),
(272, 0, 'thomas', 63),
(273, 0, 'thomas', 64),
(274, 0, 'thomas', 65),
(275, 0, 'thomas', 66),
(276, 0, 'thomas', 67),
(277, 0, 'thomas', 68),
(278, 0, 'thomas', 69),
(279, 0, 'thomas', 70),
(280, 0, 'thomas', 71),
(281, 0, 'thomas', 72),
(282, 0, 'thomas', 73),
(283, 0, 'thomas', 74),
(284, 0, 'thomas', 75),
(285, 0, 'thomas', 76),
(286, 0, 'thomas', 77),
(287, 0, 'thomas', 78),
(288, 0, 'thomas', 79),
(289, 0, 'thomas', 80),
(290, 0, 'thomas', 81),
(291, 0, 'thomas', 82),
(292, 0, 'thomas', 83),
(293, 0, 'thomas', 84),
(294, 0, 'thomas', 85),
(295, 0, 'thomas', 86),
(296, 0, 'thomas', 87),
(297, 0, 'thomas', 88),
(298, 0, 'thomas', 89),
(299, 0, 'thomas', 90),
(300, 0, 'thomas', 91),
(301, 0, 'thomas', 92),
(302, 0, 'thomas', 93),
(303, 0, 'thomas', 94),
(304, 0, 'thomas', 95),
(305, 0, 'thomas', 96),
(306, 0, 'thomas', 97),
(307, 0, 'thomas', 98),
(308, 0, 'thomas', 99),
(309, 0, 'thomas', 100),
(310, 0, 'thomas', 101),
(311, 0, 'thomas', 102),
(312, 0, 'thomas', 103),
(313, 0, 'thomas', 104),
(314, 0, 'thomas', 105),
(315, 0, 'thomas', 106),
(316, 0, 'thomas', 107),
(317, 0, 'thomas', 108),
(318, 0, 'thomas', 109),
(319, 0, 'thomas', 110),
(320, 0, 'thomas', 111),
(321, 0, 'thomas', 112),
(322, 0, 'thomas', 113),
(323, 0, 'thomas', 114),
(324, 0, 'thomas', 115),
(325, 0, 'thomas', 116),
(326, 0, 'thomas', 117),
(327, 0, 'thomas', 118),
(328, 0, 'thomas', 119),
(329, 0, 'thomas', 120),
(330, 0, 'thomas', 121),
(331, 0, 'thomas', 122),
(332, 0, 'thomas', 123),
(333, 0, 'thomas', 124),
(334, 0, 'thomas', 125),
(335, 0, 'thomas', 126),
(336, 0, 'thomas', 127),
(337, 0, 'thomas', 128),
(338, 0, 'thomas', 129),
(339, 0, 'thomas', 130),
(340, 0, 'thomas', 131),
(341, 0, 'thomas', 132),
(342, 0, 'thomas', 133),
(343, 0, 'thomas', 134),
(344, 0, 'thomas', 135),
(345, 0, 'thomas', 136),
(346, 0, 'thomas', 137),
(347, 0, 'thomas', 138),
(348, 0, 'thomas', 139),
(349, 0, 'thomas', 140),
(350, 0, 'thomas', 141),
(351, 0, 'thomas', 142),
(352, 0, 'thomas', 143),
(353, 0, 'thomas', 144),
(354, 0, 'thomas', 145),
(355, 0, 'thomas', 146),
(356, 0, 'thomas', 147),
(357, 0, 'thomas', 148),
(358, 0, 'thomas', 149),
(359, 0, 'thomas', 150),
(360, 0, 'thomas', 151),
(361, 0, 'thomas', 152),
(362, 0, 'thomas', 153),
(363, 0, 'thomas', 154),
(364, 0, 'thomas', 155),
(365, 0, 'thomas', 156),
(366, 0, 'thomas', 157),
(367, 0, 'thomas', 158),
(368, 0, 'thomas', 159),
(369, 0, 'thomas', 160),
(370, 0, 'thomas', 161),
(371, 0, 'thomas', 162),
(372, 0, 'thomas', 163),
(373, 0, 'thomas', 164),
(374, 0, 'thomas', 165),
(375, 0, 'thomas', 166),
(376, 0, 'thomas', 167),
(377, 0, 'thomas', 168),
(378, 0, 'thomas', 169),
(379, 0, 'thomas', 170),
(380, 0, 'thomas', 171),
(381, 0, 'thomas', 172),
(382, 0, 'thomas', 173),
(383, 0, 'thomas', 174),
(384, 0, 'thomas', 175),
(385, 0, 'thomas', 176),
(386, 0, 'thomas', 177),
(387, 0, 'thomas', 178),
(388, 0, 'thomas', 179),
(389, 0, 'thomas', 180),
(390, 0, 'thomas', 181),
(391, 0, 'thomas', 182),
(392, 0, 'thomas', 183),
(393, 0, 'thomas', 184),
(394, 0, 'thomas', 185),
(395, 0, 'thomas', 186),
(396, 0, 'thomas', 187),
(397, 0, 'thomas', 188),
(398, 0, 'thomas', 189),
(399, 0, 'thomas', 190),
(400, 0, 'thomas', 191),
(401, 0, 'thomas', 192),
(402, 0, 'thomas', 193),
(403, 0, 'thomas', 194),
(404, 0, 'thomas', 195),
(405, 0, 'thomas', 196),
(406, 0, 'thomas', 197),
(407, 0, 'thomas', 198),
(408, 0, 'thomas', 199),
(409, 0, 'thomas', 200),
(410, 0, 'thomas', 201),
(411, 0, 'thomas', 202),
(412, 0, 'thomas', 203),
(413, 0, 'thomas', 204),
(414, 0, 'thomas', 205),
(415, 0, 'thomas', 206),
(416, 0, 'thomas', 207);

-- --------------------------------------------------------

--
-- Structure de la table `configsalle`
--

CREATE TABLE IF NOT EXISTS `configsalle` (
  `idConfigsalle` int(11) NOT NULL AUTO_INCREMENT,
  `nbpostallumerConfigsalle` varchar(45) DEFAULT NULL,
  `idSalles` int(11) NOT NULL,
  PRIMARY KEY (`idConfigsalle`),
  KEY `fk_Configsalle_Salles1_idx` (`idSalles`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `configsalle`
--

INSERT INTO `configsalle` (`idConfigsalle`, `nbpostallumerConfigsalle`, `idSalles`) VALUES
(1, '1', 1),
(2, '2', 2),
(3, '3', 3),
(4, '4', 4),
(5, '5', 5),
(6, '6', 6),
(7, '7', 7),
(8, '8', 8),
(9, '9', 9);

-- --------------------------------------------------------

--
-- Structure de la table `configservice`
--

CREATE TABLE IF NOT EXISTS `configservice` (
  `idConfigservice` int(11) NOT NULL AUTO_INCREMENT,
  `etatConfigservice` varchar(45) DEFAULT NULL,
  `idServices` int(11) NOT NULL,
  `idOrdinateurs` int(11) NOT NULL,
  PRIMARY KEY (`idConfigservice`),
  KEY `fk_Configservice_Ordinateurs1_idx` (`idOrdinateurs`),
  KEY `fk_Configservice_Services1_idx` (`idServices`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `droitscripts`
--

CREATE TABLE IF NOT EXISTS `droitscripts` (
  `idDroitscripts` int(11) NOT NULL AUTO_INCREMENT,
  `idScripts` int(11) NOT NULL,
  `idGroupes` int(11) NOT NULL,
  PRIMARY KEY (`idDroitscripts`),
  KEY `fk_Droitscripts_Scripts1_idx` (`idScripts`),
  KEY `fk_Droitscripts_Groupes1_idx` (`idGroupes`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `droitscripts`
--

INSERT INTO `droitscripts` (`idDroitscripts`, `idScripts`, `idGroupes`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE IF NOT EXISTS `groupes` (
  `idGroupes` int(11) NOT NULL AUTO_INCREMENT,
  `nomGroupes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGroupes`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `groupes`
--

INSERT INTO `groupes` (`idGroupes`, `nomGroupes`) VALUES
(1, 'admin'),
(2, 'prof'),
(3, 'etu'),
(4, 'default');

-- --------------------------------------------------------

--
-- Structure de la table `ordinateurs`
--

CREATE TABLE IF NOT EXISTS `ordinateurs` (
  `idOrdinateurs` int(11) NOT NULL AUTO_INCREMENT,
  `nomOrdinateurs` varchar(2) DEFAULT NULL,
  `idSalles` int(11) NOT NULL,
  PRIMARY KEY (`idOrdinateurs`),
  KEY `fk_Ordinateurs_Salles_idx` (`idSalles`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=208 ;

--
-- Contenu de la table `ordinateurs`
--

INSERT INTO `ordinateurs` (`idOrdinateurs`, `nomOrdinateurs`, `idSalles`) VALUES
(1, '01', 1),
(2, '02', 1),
(3, '03', 1),
(4, '04', 1),
(5, '05', 1),
(6, '06', 1),
(7, '07', 1),
(8, '08', 1),
(9, '09', 1),
(10, '10', 1),
(11, '11', 1),
(12, '12', 1),
(13, '13', 1),
(14, '14', 1),
(15, '15', 1),
(16, '16', 1),
(17, '01', 2),
(18, '02', 2),
(19, '03', 2),
(20, '04', 2),
(21, '05', 2),
(22, '06', 2),
(23, '07', 2),
(24, '08', 2),
(25, '09', 2),
(26, '10', 2),
(27, '11', 2),
(28, '12', 2),
(29, '13', 2),
(30, '14', 2),
(31, '15', 2),
(32, '16', 2),
(33, '17', 2),
(34, '18', 2),
(35, '19', 2),
(36, '20', 2),
(37, '21', 2),
(38, '22', 2),
(39, '23', 2),
(40, '24', 2),
(41, '25', 2),
(42, '26', 2),
(43, '27', 2),
(44, '01', 3),
(45, '02', 3),
(46, '03', 3),
(47, '04', 3),
(48, '05', 3),
(49, '06', 3),
(50, '07', 3),
(51, '08', 3),
(52, '09', 3),
(53, '10', 3),
(54, '11', 3),
(55, '12', 3),
(56, '13', 3),
(57, '14', 3),
(58, '15', 3),
(59, '16', 3),
(60, '17', 3),
(61, '18', 3),
(62, '19', 3),
(63, '20', 3),
(64, '21', 3),
(65, '22', 3),
(66, '23', 3),
(67, '24', 3),
(68, '25', 3),
(69, '26', 3),
(70, '27', 3),
(71, '28', 3),
(72, '29', 3),
(73, '30', 3),
(74, '01', 4),
(75, '02', 4),
(76, '03', 4),
(77, '04', 4),
(78, '05', 4),
(79, '06', 4),
(80, '07', 4),
(81, '08', 4),
(82, '09', 4),
(83, '10', 4),
(84, '11', 4),
(85, '12', 4),
(86, '13', 4),
(87, '14', 4),
(88, '15', 4),
(89, '16', 4),
(90, '17', 4),
(91, '18', 4),
(92, '19', 4),
(93, '20', 4),
(94, '01', 5),
(95, '02', 5),
(96, '03', 5),
(97, '04', 5),
(98, '05', 5),
(99, '06', 5),
(100, '07', 5),
(101, '08', 5),
(102, '09', 5),
(103, '10', 5),
(104, '11', 5),
(105, '12', 5),
(106, '13', 5),
(107, '14', 5),
(108, '15', 5),
(109, '16', 5),
(110, '17', 5),
(111, '18', 5),
(112, '19', 5),
(113, '20', 5),
(114, '21', 5),
(115, '22', 5),
(116, '23', 5),
(117, '24', 5),
(118, '25', 5),
(119, '26', 5),
(120, '27', 5),
(121, '28', 5),
(122, '29', 5),
(123, '30', 5),
(124, '31', 5),
(125, '32', 5),
(126, '01', 6),
(127, '02', 6),
(128, '03', 6),
(129, '04', 6),
(130, '05', 6),
(131, '06', 6),
(132, '07', 6),
(133, '08', 6),
(134, '09', 6),
(135, '10', 6),
(136, '11', 6),
(137, '12', 6),
(138, '13', 6),
(139, '14', 6),
(140, '15', 6),
(141, '16', 6),
(142, '01', 7),
(143, '02', 7),
(144, '03', 7),
(145, '04', 7),
(146, '05', 7),
(147, '06', 7),
(148, '07', 7),
(149, '08', 7),
(150, '09', 7),
(151, '10', 7),
(152, '11', 7),
(153, '12', 7),
(154, '13', 7),
(155, '14', 7),
(156, '15', 7),
(157, '16', 7),
(158, '17', 7),
(159, '18', 7),
(160, '01', 8),
(161, '02', 8),
(162, '03', 8),
(163, '04', 8),
(164, '05', 8),
(165, '06', 8),
(166, '07', 8),
(167, '08', 8),
(168, '09', 8),
(169, '10', 8),
(170, '11', 8),
(171, '12', 8),
(172, '13', 8),
(173, '14', 8),
(174, '15', 8),
(175, '16', 8),
(176, '17', 8),
(177, '18', 8),
(178, '01', 9),
(179, '02', 9),
(180, '03', 9),
(181, '04', 9),
(182, '05', 9),
(183, '06', 9),
(184, '07', 9),
(185, '08', 9),
(186, '09', 9),
(187, '10', 9),
(188, '11', 9),
(189, '12', 9),
(190, '13', 9),
(191, '14', 9),
(192, '15', 9),
(193, '16', 9),
(194, '17', 9),
(195, '18', 9),
(196, '19', 9),
(197, '20', 9),
(198, '21', 9),
(199, '22', 9),
(200, '23', 9),
(201, '24', 9),
(202, '25', 9),
(203, '26', 9),
(204, '27', 9),
(205, '28', 9),
(206, '29', 9),
(207, '30', 9);

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE IF NOT EXISTS `salles` (
  `idSalles` int(11) NOT NULL AUTO_INCREMENT,
  `nomSalles` varchar(45) DEFAULT NULL,
  `identificateurSalles` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSalles`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `salles`
--

INSERT INTO `salles` (`idSalles`, `nomSalles`, `identificateurSalles`) VALUES
(1, 'info07', 'info07'),
(2, 'info12', 'info12'),
(3, 'info21', 'info21'),
(4, 'info22', 'info22'),
(5, 'info23', 'info23'),
(6, 'info24', 'info24'),
(7, 'info25', 'info25'),
(8, 'info26', 'info26'),
(9, 'info27', 'info27');

-- --------------------------------------------------------

--
-- Structure de la table `scripts`
--

CREATE TABLE IF NOT EXISTS `scripts` (
  `idScripts` int(11) NOT NULL AUTO_INCREMENT,
  `nomScripts` varchar(45) DEFAULT NULL,
  `descriptionScripts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idScripts`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `scripts`
--

INSERT INTO `scripts` (`idScripts`, `nomScripts`, `descriptionScripts`) VALUES
(1, 'ping', 'affiche les pc allumer'),
(2, 'who', 'trouve l''utilisateur des pc allumer');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `idServices` int(11) NOT NULL AUTO_INCREMENT,
  `nomServices` varchar(45) DEFAULT NULL,
  `portServices` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`idServices`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `services`
--

INSERT INTO `services` (`idServices`, `nomServices`, `portServices`) VALUES
(1, 'web', '80');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `idUtilisateurs` int(11) NOT NULL AUTO_INCREMENT,
  `nomUtilisateurs` varchar(45) DEFAULT NULL,
  `prenomUtilisateurs` varchar(45) DEFAULT NULL,
  `pseudoUtilisateurs` varchar(45) DEFAULT NULL,
  `mdpUtilisateurs` varchar(255) DEFAULT NULL,
  `emailUtilisateurs` varchar(255) DEFAULT NULL,
  `tokenUtilisateurs` varchar(255) DEFAULT NULL,
  `etatUtilisateurs` tinyint(1) DEFAULT NULL,
  `idGroupes` int(11) NOT NULL,
  PRIMARY KEY (`idUtilisateurs`),
  KEY `fk_Utilisateurs_Groupes1_idx` (`idGroupes`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`idUtilisateurs`, `nomUtilisateurs`, `prenomUtilisateurs`, `pseudoUtilisateurs`, `mdpUtilisateurs`, `emailUtilisateurs`, `tokenUtilisateurs`, `etatUtilisateurs`, `idGroupes`) VALUES
(3, NULL, NULL, 'thomas', 'db826e55056372d78fa4e5021e9222cd2fa4a10c', 'thomas.rangeard@etu.univ-orleans.fr', 'e4c4523337d14d8a551c07ae5c13bea5d77db3ea', 1, 1),
(4, NULL, NULL, 'thomas2', 'db826e55056372d78fa4e5021e9222cd2fa4a10c', 'thomas45100@hotmail.fr', 'a3dc1fca70fe16efb9abe980af910961c7c216cb', 0, 3);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `configapplication`
--
ALTER TABLE `configapplication`
  ADD CONSTRAINT `fk_Configapplication_Applications1` FOREIGN KEY (`idApplications`) REFERENCES `applications` (`idApplications`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Configapplication_Ordinateurs1` FOREIGN KEY (`idOrdinateurs`) REFERENCES `ordinateurs` (`idOrdinateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `configpost`
--
ALTER TABLE `configpost`
  ADD CONSTRAINT `fk_Configpost_Ordinateurs1` FOREIGN KEY (`idOrdinateurs`) REFERENCES `ordinateurs` (`idOrdinateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `configsalle`
--
ALTER TABLE `configsalle`
  ADD CONSTRAINT `fk_Configsalle_Salles1` FOREIGN KEY (`idSalles`) REFERENCES `salles` (`idSalles`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `configservice`
--
ALTER TABLE `configservice`
  ADD CONSTRAINT `fk_Configservice_Ordinateurs1` FOREIGN KEY (`idOrdinateurs`) REFERENCES `ordinateurs` (`idOrdinateurs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Configservice_Services1` FOREIGN KEY (`idServices`) REFERENCES `services` (`idServices`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `droitscripts`
--
ALTER TABLE `droitscripts`
  ADD CONSTRAINT `fk_Droitscripts_Scripts1` FOREIGN KEY (`idScripts`) REFERENCES `scripts` (`idScripts`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Droitscripts_Groupes1` FOREIGN KEY (`idGroupes`) REFERENCES `groupes` (`idGroupes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `ordinateurs`
--
ALTER TABLE `ordinateurs`
  ADD CONSTRAINT `fk_Ordinateurs_Salles` FOREIGN KEY (`idSalles`) REFERENCES `salles` (`idSalles`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `fk_Utilisateurs_Groupes1` FOREIGN KEY (`idGroupes`) REFERENCES `groupes` (`idGroupes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
