-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Dim 11 Mai 2014 à 16:47
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `organizator`
--
CREATE DATABASE IF NOT EXISTS `organizator` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `organizator`;

-- --------------------------------------------------------

--
-- Structure de la table `associations`
--

CREATE TABLE IF NOT EXISTS `associations` (
  `idAssociation` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mail` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pole` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idAssociation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `associations`
--

INSERT INTO `associations` (`idAssociation`, `nom`, `mail`, `pole`) VALUES
(1, 'Whei', 'whei@hei.fr', 'PES'),
(3, 'Declic', 'declic@hei.fr', 'PES'),
(5, 'Rock''hei', 'jaimelerock@hei.fr', 'BDS');

-- --------------------------------------------------------

--
-- Structure de la table `batiments`
--

CREATE TABLE IF NOT EXISTS `batiments` (
  `idBatiment` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idBatiment`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `batiments`
--

INSERT INTO `batiments` (`idBatiment`, `nom`) VALUES
(8, 'Colbert'),
(9, 'Toul'),
(10, 'Roland');

-- --------------------------------------------------------

--
-- Structure de la table `communications`
--

CREATE TABLE IF NOT EXISTS `communications` (
  `idComm` int(45) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`idComm`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `communications`
--

INSERT INTO `communications` (`idComm`, `nom`, `contact`, `message`) VALUES
(3, 'Depeche', 'depeche@hei.fr', 'Bonjour,'),
(4, 'TV', 'tv@hei.fr', 'Bonsoir,'),
(5, 'Affiche', 'affiches@hei.fr', 'Bonne nuit,'),
(6, 'Reseau', '', 'Bonne matinée,'),
(7, 'Radio', '', 'Bon après midi,'),
(8, 'Newsletter', '', 'Cordialement,'),
(9, 'Flyers', '', 'Bisoux'),
(10, 'Son', '', ''),
(11, 'Lumiere', '', ''),
(12, 'Photo', 'declic@hei.fr', 'Bonjour, Nous recherchons actuellement un ou plusieurs photographes afin de couvrir notre évènement.'),
(13, 'Video', 'saturne@hei.fr', '');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `idEvent` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `asso` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `heuredebut` varchar(50) DEFAULT NULL,
  `heurefin` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `danshei` varchar(50) DEFAULT NULL,
  `organisateur` varchar(50) DEFAULT NULL,
  `mailorganisateur` varchar(50) DEFAULT NULL,
  `batiment` varchar(50) DEFAULT NULL,
  `salle` varchar(50) DEFAULT NULL,
  `affluence` varchar(50) DEFAULT NULL,
  `statutTV` varchar(50) DEFAULT NULL,
  `statutAffiche` varchar(50) DEFAULT NULL,
  `statutReseau` varchar(50) DEFAULT NULL,
  `statutRadio` varchar(50) DEFAULT NULL,
  `statutNewsletter` varchar(50) DEFAULT NULL,
  `statutDepeche` varchar(50) DEFAULT NULL,
  `statutFlyers` varchar(50) DEFAULT NULL,
  `ignoreTV` varchar(50) DEFAULT NULL,
  `ignoreAffiche` varchar(50) DEFAULT NULL,
  `ignoreReseau` varchar(50) DEFAULT NULL,
  `ignoreRadio` varchar(50) DEFAULT NULL,
  `ignoreNewsletter` varchar(50) DEFAULT NULL,
  `ignoreDepeche` varchar(50) DEFAULT NULL,
  `ignoreFlyers` varchar(50) DEFAULT NULL,
  `statutSon` varchar(50) DEFAULT NULL,
  `statutLumiere` varchar(50) DEFAULT NULL,
  `ignoreSon` varchar(50) DEFAULT NULL,
  `ignoreLumiere` varchar(50) DEFAULT NULL,
  `statutPhoto` varchar(50) DEFAULT NULL,
  `statutVideo` varchar(50) DEFAULT NULL,
  `ignorePhoto` varchar(50) DEFAULT NULL,
  `ignoreVideo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEvent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `events`
--

INSERT INTO `events` (`idEvent`, `nom`, `asso`, `date`, `heuredebut`, `heurefin`, `type`, `danshei`, `organisateur`, `mailorganisateur`, `batiment`, `salle`, `affluence`, `statutTV`, `statutAffiche`, `statutReseau`, `statutRadio`, `statutNewsletter`, `statutDepeche`, `statutFlyers`, `ignoreTV`, `ignoreAffiche`, `ignoreReseau`, `ignoreRadio`, `ignoreNewsletter`, `ignoreDepeche`, `ignoreFlyers`, `statutSon`, `statutLumiere`, `ignoreSon`, `ignoreLumiere`, `statutPhoto`, `statutVideo`, `ignorePhoto`, `ignoreVideo`) VALUES
(4, 'Citarun', NULL, '2014-05-10', '20:30', '23:00', 'Petit déjeuner', 'Non', NULL, NULL, 'Colbert', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Marathon', NULL, '2014-05-08', '09:00', '13:00', 'Autre', 'Non', 'test@hei.fr', NULL, '0', NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Babyfoot Contest 2', NULL, '2014-05-24', '20:00', '23:00', 'Afterwork', 'Non', 'test@hei.fr', NULL, 'Bâtiment (si dans HEI)', NULL, '100', 'pasok', 'pasok', 'pasok', 'pasok', 'pasok', 'ok', 'ok', 'off', 'off', 'on', 'on', 'off', 'on', 'on', NULL, 'pasok', 'off', 'off', 'pasok', NULL, 'off', 'off');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
  `idmembre` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mdp` varchar(20) CHARACTER SET utf8 NOT NULL,
  `association` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `pole` varchar(10) CHARACTER SET utf8 NOT NULL,
  `responsabilite` varchar(25) CHARACTER SET utf8 NOT NULL,
  `admin` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT 'non',
  PRIMARY KEY (`idmembre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`idmembre`, `mail`, `mdp`, `association`, `pole`, `responsabilite`, `admin`) VALUES
(4, 'test@hei.fr', 'lol', 'WhEI', 'PES', 'Président', 'oui'),
(8, 'test@pou.fr', 'aze', 'test', 'PES', 'Président', 'non'),
(10, 'dfgfdg@gssg.fr', 'pos', 'dfgdf', 'PES', 'Communication', 'non');

-- --------------------------------------------------------

--
-- Structure de la table `poles`
--

CREATE TABLE IF NOT EXISTS `poles` (
  `idpole` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idpole`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `poles`
--

INSERT INTO `poles` (`idpole`, `nom`) VALUES
(6, 'PES'),
(7, 'PET'),
(8, 'BDA'),
(9, 'Cap''so'),
(10, 'BDS');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
