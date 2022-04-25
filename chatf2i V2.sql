-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 16 déc. 2021 à 13:47
-- Version du serveur : 
-- Version de PHP : 7.3.21
create database chatF2iV2;
use chatF2iV2;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chatf2i`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `idm` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `destinataire` varchar(30) NOT NULL DEFAULT 'tous',
  PRIMARY KEY (`idm`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`idm`, `pseudo`, `message`, `date`, `destinataire`) VALUES
(2, 'Eleve', 'Super chouette', '2021-07-13 15:37:55', 'prof'),
(7, 'Steeve', 'rebelotte', '2021-12-02 16:45:12', 'prof'),
(4, 'Dupont', 'Il fait beau', '2021-12-02 16:20:53', 'tous'),
(5, 'POLO', 'Salut Ã  tous', '2021-12-02 16:42:27', 'prof'),
(16, 'Fred', 'Test 17', '2021-12-16 14:42:31', 'prof'),
(15, 'prof', 'Test 16', '2021-12-16 14:39:15', 'eleve'),
(11, 'test', 'test', '2021-12-09 13:35:42', 'eleve'),
(12, 'Paul', 'Il fait beau', '2021-12-09 13:38:37', 'eleve'),
(13, 'Toto', 'toto', '2021-12-09 13:45:50', 'tous'),
(14, 'Toto', 'toto', '2021-12-09 13:46:15', 'tous'),
(17, 'prof', 'Test 18', '2021-12-16 14:43:44', 'tous');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idu` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `niveau` int(1) NOT NULL,
  PRIMARY KEY (`idu`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idu`, `pseudo`, `mdp`, `niveau`) VALUES
(1, 'prof', 'prof', 2),
(2, 'eleve', 'eleve', 1),
(3, 'Fred', 'fred', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
