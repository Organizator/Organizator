-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Lun 12 Mai 2014 à 23:51
-- Version du serveur :  5.5.34
-- Version de PHP :  5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `organizator`
--

-- --------------------------------------------------------

--
-- Structure de la table `associations`
--

CREATE TABLE `associations` (
  `idAssociation` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mail` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pole` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idAssociation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Contenu de la table `associations`
--

INSERT INTO `associations` (`idAssociation`, `nom`, `mail`, `pole`) VALUES
(8, 'DECLIC HEI', 'declic@hei.fr', 'BDA'),
(9, 'WHEI', 'whei@hei.fr', 'PES'),
(10, '4L Trophy', '4ltrophy@hei.fr', 'Cap''so'),
(11, 'Amaryllis', 'amaryllis@hei.fr', 'Cap''so'),
(12, 'Baobab', 'baobab@hei.fr', 'Cap''so'),
(13, 'Scoutisme', 'scoutisme@hei.fr', 'Cap''so'),
(14, 'Un toit pour Cuernavaca', 'cuernavaca@hei.fr', 'Cap''so'),
(15, 'Un jour à la ferme', 'unjouralaferme@hei.fr', 'Cap''so'),
(16, 'Sans Faute', 'sans.faute@hei.fr', 'Cap''so'),
(17, 'Saturne', 'saturne@hei.fr', 'BDA'),
(18, 'Unizik', 'unizik@hei.fr', 'Cap''so'),
(19, 'Origami', 'origami@hei.fr', 'BDA'),
(21, 'Aparté', 'aparte@hei.fr', 'BDA'),
(22, 'Cinéfiles', 'cinefils@hei.fr', 'BDA'),
(23, 'Biérologie', 'bierologie@hei.fr', 'BDA'),
(24, 'So Chasse', 'chasse@hei.fr', 'PES'),
(25, 'L''arena', 'arena@hei.fr', 'PES'),
(26, 'HEI Evasion', 'evasion@hei.fr', 'PES'),
(27, 'GB Radio', 'gbradio@hei.fr', 'PES'),
(28, 'Gala', 'gala@hei.fr', 'PES'),
(29, 'djHEIs', 'djheis@hei.fr', 'PES'),
(30, 'HEI Micro', 'micro@hei.fr', 'PES'),
(31, 'HEI Poker Tour', 'poker@hei.fr', 'PES'),
(32, 'Père Noël ', 'pere.noel@hei.fr', 'PES'),
(33, 'Citarun', 'citarun@hei.fr', 'BDS'),
(34, 'Raid HEI', 'raid@hei.fr', 'BDS'),
(35, 'HEI Motors', 'motors@hei.fr', 'BDS'),
(36, 'Club Rock HEI', 'rockhei@hei.fr', 'BDS'),
(37, 'Jumping HEI', 'jumping-hei@hei.fr', 'BDS'),
(38, 'Ski HEI', 'ski@hei.fr', 'BDS'),
(39, 'Trophée aviron', 'trophee.aviron@hei.fr', 'BDS'),
(40, 'Tournoi Open Students', 'tos@hei.fr', 'BDS'),
(41, 'Voile', '', 'BDS'),
(42, 'Natation', '', 'BDS'),
(43, 'Golf', '', 'BDS'),
(44, 'Football', '', 'BDS'),
(45, 'Handball', '', 'BDS'),
(46, 'Rugby', '', 'BDS');

-- --------------------------------------------------------

--
-- Structure de la table `batiments`
--

CREATE TABLE `batiments` (
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

CREATE TABLE `communications` (
  `idComm` int(45) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`idComm`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `communications`
--

INSERT INTO `communications` (`idComm`, `nom`, `contact`, `message`) VALUES
(3, 'Depeche', 'depeche@hei.fr', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(4, 'TV', 'tv@hei.fr', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(5, 'Affiche', 'affiches@hei.fr', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(6, 'Reseau', '', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(7, 'Radio', '', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(8, 'Newsletter', '', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(9, 'Flyers', '', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(10, 'Son', '', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(11, 'Lumiere', '', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(12, 'Photo', 'declic@hei.fr', 'Bonjour, Nous recherchons actuellement un ou plusieurs photographes afin de couvrir notre évènement.'),
(13, 'Video', 'saturne@hei.fr', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(15, 'Pole', '', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(16, 'Administration', 'administrationhei@hei.fr', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(17, 'Demande de Lieu', 'Sophie.verny@hei.fr', 'Bonjour, je vous écris ce message à propros de notre évènement'),
(18, 'Logistique HEI', 'logistique@hei.fr', ''),
(19, 'Administrateur système', 'louis.sautelet@hei.fr', '');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
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
  `statutTV` varchar(50) DEFAULT 'pasok',
  `statutAffiche` varchar(50) DEFAULT 'pasok',
  `statutReseau` varchar(50) DEFAULT 'pasok',
  `statutRadio` varchar(50) DEFAULT 'pasok',
  `statutNewsletter` varchar(50) DEFAULT 'pasok',
  `statutDepeche` varchar(50) DEFAULT 'pasok',
  `statutFlyers` varchar(50) DEFAULT 'pasok',
  `ignoreTV` varchar(50) DEFAULT 'off',
  `ignoreAffiche` varchar(50) DEFAULT 'off',
  `ignoreReseau` varchar(50) DEFAULT 'off',
  `ignoreRadio` varchar(50) DEFAULT 'off',
  `ignoreNewsletter` varchar(50) DEFAULT 'off',
  `ignoreDepeche` varchar(50) DEFAULT 'off',
  `ignoreFlyers` varchar(50) DEFAULT 'off',
  `statutSon` varchar(50) DEFAULT 'pasok',
  `statutLumiere` varchar(50) DEFAULT 'pasok',
  `ignoreSon` varchar(50) DEFAULT 'off',
  `ignoreLumiere` varchar(50) DEFAULT 'off',
  `statutPhoto` varchar(50) DEFAULT 'pasok',
  `statutVideo` varchar(50) DEFAULT 'pasok',
  `ignorePhoto` varchar(50) DEFAULT 'off',
  `ignoreVideo` varchar(50) DEFAULT 'off',
  `statutLieu` varchar(50) DEFAULT 'pasok',
  `statutPole` varchar(50) DEFAULT 'pasok',
  `statutAdmin` varchar(50) DEFAULT 'pasok',
  `ignoreLieu` varchar(50) DEFAULT 'off',
  `ignorePole` varchar(50) DEFAULT 'off',
  `ignoreAdmin` varchar(50) DEFAULT 'off',
  PRIMARY KEY (`idEvent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `events`
--

INSERT INTO `events` (`idEvent`, `nom`, `asso`, `date`, `heuredebut`, `heurefin`, `type`, `danshei`, `organisateur`, `mailorganisateur`, `batiment`, `salle`, `affluence`, `statutTV`, `statutAffiche`, `statutReseau`, `statutRadio`, `statutNewsletter`, `statutDepeche`, `statutFlyers`, `ignoreTV`, `ignoreAffiche`, `ignoreReseau`, `ignoreRadio`, `ignoreNewsletter`, `ignoreDepeche`, `ignoreFlyers`, `statutSon`, `statutLumiere`, `ignoreSon`, `ignoreLumiere`, `statutPhoto`, `statutVideo`, `ignorePhoto`, `ignoreVideo`, `statutLieu`, `statutPole`, `statutAdmin`, `ignoreLieu`, `ignorePole`, `ignoreAdmin`) VALUES
(9, 'Babyfoot Contest 2', 'WHEI', '2014-05-23', '20:00', '23:00', 'Afterwork', 'Non', 'test@hei.fr', NULL, 'Bâtiment (si dans HEI)', NULL, '100', 'encours', 'ok', 'encours', 'encours', 'ok', 'encours', 'pasok', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'encours', 'pasok', 'off', 'on', 'pasok', 'ok', 'off', 'on', 'encours', 'ok', 'encours', 'off', 'off', 'off'),
(14, 'Test', 'DECLIC', '2014-06-12', '23:34', '04:34', 'Petit déjeuner', 'Oui', 'test@hei.fr', NULL, 'Toul', NULL, '123', 'encours', 'encours', 'ok', 'encours', 'pasok', 'pasok', 'ok', 'off', 'off', 'off', 'off', 'off', 'off', 'off', 'ok', 'ok', 'off', 'off', 'pasok', 'pasok', 'off', 'off', 'pasok', 'pasok', 'pasok', 'off', 'off', 'off');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `idmembre` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mdp` varchar(20) CHARACTER SET utf8 NOT NULL,
  `association` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `pole` varchar(10) CHARACTER SET utf8 NOT NULL,
  `responsabilite` varchar(25) CHARACTER SET utf8 NOT NULL,
  `admin` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT 'non',
  PRIMARY KEY (`idmembre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`idmembre`, `mail`, `mdp`, `association`, `pole`, `responsabilite`, `admin`) VALUES
(4, 'test@hei.fr', 'lol', 'WhEI', 'PES', 'Président', 'oui'),
(8, 'test@pou.fr', 'aze', 'test', 'PES', 'Président', 'oui'),
(10, 'dfgfdg@gssg.fr', 'pos', 'dfgdf', 'PES', 'Communication', 'non'),
(11, 'essai@essai.fr', 'loli', 'DECLIC', 'BDA', 'Président', 'non'),
(12, 'test@hei.fr', 'lol', 'test', 'PET', 'Communication', 'non'),
(13, 'test@hei.fr', 'lol', 'rest', 'PET', 'Communication', 'oui'),
(14, 'test@hei.fr', 'lol', 'lol', '0', '0', 'oui'),
(15, 'walou@test.fr', 'poiu', 'Declic', 'PET', 'Président', 'non'),
(16, 'test2@hei.fr', 'mpm', 'DECLIC HEI', 'Cap''so', 'Communication', 'non');

-- --------------------------------------------------------

--
-- Structure de la table `poles`
--

CREATE TABLE `poles` (
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
