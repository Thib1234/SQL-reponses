-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 25 Janvier 2019 à 14:05
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecole`
--
CREATE DATABASE IF NOT EXISTS `ecole` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecole`;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `CouID` int(11) NOT NULL,
  `CouNom` varchar(20) DEFAULT NULL,
  `CouProID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`CouID`, `CouNom`, `CouProID`) VALUES
(1, 'Histoire', 1),
(2, 'Sociologie', 1),
(3, 'Mathématique', 3),
(4, 'Informatique', 3),
(5, 'Oenologie', 3),
(6, 'Economie', 4),
(7, 'Biologie', 2);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `EtuID` int(11) NOT NULL,
  `EtuNom` varchar(20) DEFAULT NULL,
  `EtuPrenom` varchar(20) DEFAULT NULL,
  `EtuAdresse` varchar(50) DEFAULT NULL,
  `EtuCP` int(5) DEFAULT NULL,
  `EtuVille` varchar(20) DEFAULT NULL,
  `EtuSexe` enum('F','M') DEFAULT NULL,
  `EtuNaiss` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiants`
--

INSERT INTO `etudiants` (`EtuID`, `EtuNom`, `EtuPrenom`, `EtuAdresse`, `EtuCP`, `EtuVille`, `EtuSexe`, `EtuNaiss`) VALUES
(1, 'AUBOISDORMANT', 'Abel', '12 Rue des arbres', 1300, 'Wavre', 'M', '1977-06-24'),
(2, 'ZIEUVAIR', 'Bruno', '1323 Clos de l\'Armoise', 1300, 'Wavre', 'M', '1975-08-23'),
(3, 'HONNETE', 'Camille', '1 Rue des fraises', 1342, 'Limelette', 'F', '1973-08-25'),
(4, 'ALAVANILLESIOUPLAIT', 'Douglas', '2 Place de l\'Ornoy', 1348, 'Louvain-La-Neuve', 'M', '1976-05-23'),
(5, 'AVULEUR', 'Edith', '2 Chemin de traverses', 1332, 'Genval', 'F', '1974-04-25'),
(6, 'UJOUR', 'Fred', '32 Rond-Point de la gare', 1332, 'Genval', 'M', '1977-02-12'),
(7, 'MENSOIF', 'Gérard', '89 Rue de la boisson', 1348, 'Louvain-La-Neuve', 'M', '1977-05-12'),
(8, 'AVRANTE', 'Hélène', '12b Avenue des combattants', 1300, 'Wavre', 'F', '1977-05-05'),
(9, 'DRÉSSAMÈRE', 'Ivan', '1 Avenue des combattants', 1348, 'Louvain-La-Neuve', 'M', '1977-07-06'),
(10, 'UMUL', 'Jacques', '55 Rue des indépendants', 1300, 'Wavre', 'M', '1978-05-05'),
(11, 'ORDINE', 'Kid', '1 Place rouge', 1348, 'Louvain-La-Neuve', 'M', '1972-03-05'),
(12, 'TROUILLE', 'Lassie', '122 Rue des légumes', 1332, 'Genval', 'F', '1973-05-03'),
(13, 'HONNETE', 'Marie', '1 Rue des fraises', 1342, 'Limelette', 'F', '1973-08-05'),
(14, 'OTINE', 'Nick', '5 Rue de la pharmacie', 1332, 'Genval', 'M', '1977-04-05'),
(15, 'HERME', 'Olaf', '0 Rue du silence', 1332, 'Genval', 'M', '1975-07-06');

-- --------------------------------------------------------

--
-- Structure de la table `points`
--

CREATE TABLE `points` (
  `PtsID` int(11) NOT NULL,
  `PtsCouID` int(11) DEFAULT NULL,
  `PtsEtuID` int(11) DEFAULT NULL,
  `PtsCote` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `points`
--

INSERT INTO `points` (`PtsID`, `PtsCouID`, `PtsEtuID`, `PtsCote`) VALUES
(1, 1, 1, 13),
(2, 1, 2, 11),
(3, 1, 3, 18),
(4, 1, 4, 18),
(5, 1, 5, 13),
(6, 1, 6, 2),
(7, 1, 7, 8),
(8, 1, 8, 15),
(9, 1, 9, 12),
(10, 1, 10, 8),
(11, 1, 11, 16),
(12, 1, 12, 16),
(13, 1, 13, 14),
(14, 1, 14, 10),
(15, 1, 15, NULL),
(16, 2, 1, 4),
(17, 2, 2, NULL),
(18, 2, 3, 18),
(19, 2, 4, 14),
(20, 2, 5, 18),
(21, 2, 6, 4),
(22, 2, 7, 16),
(23, 2, 8, 4),
(24, 2, 9, 9),
(25, 2, 10, 7),
(26, 2, 11, 13),
(27, 2, 12, 1),
(28, 2, 13, 15),
(29, 2, 14, 19),
(30, 2, 15, 14),
(31, 3, 1, 10),
(32, 3, 2, 17),
(33, 3, 3, 15),
(34, 3, 4, NULL),
(35, 3, 5, 4),
(36, 3, 6, 0),
(37, 3, 7, 13),
(38, 3, 8, 6),
(39, 3, 9, 6),
(40, 3, 10, 6),
(41, 3, 11, 5),
(42, 3, 12, 8),
(43, 3, 13, 5),
(44, 3, 14, 15),
(45, 3, 15, 11),
(46, 4, 1, 16),
(47, 4, 2, 14),
(48, 4, 3, 11),
(49, 4, 4, NULL),
(50, 4, 5, 9),
(51, 4, 6, 9),
(52, 4, 7, 15),
(53, 4, 8, NULL),
(54, 4, 9, 16),
(55, 4, 10, 2),
(56, 4, 11, 7),
(57, 4, 12, 14),
(58, 4, 13, 19),
(59, 4, 14, 19),
(60, 4, 15, 10),
(61, 5, 1, 11),
(62, 5, 2, 15),
(63, 5, 3, 15),
(64, 5, 4, 12),
(65, 5, 5, 13),
(66, 5, 6, 5),
(67, 5, 7, 17),
(68, 5, 8, NULL),
(69, 5, 9, 10),
(70, 5, 10, 17),
(71, 5, 11, 16),
(72, 5, 12, 19),
(73, 5, 13, 17),
(74, 5, 14, 12),
(75, 5, 15, NULL),
(76, 6, 1, 13),
(77, 6, 2, 12),
(78, 6, 3, 15),
(79, 6, 4, 9),
(80, 6, 5, 4),
(81, 6, 6, 7),
(82, 6, 7, 10),
(83, 6, 8, 11),
(84, 6, 9, 3),
(85, 6, 10, 9),
(86, 6, 11, 14),
(87, 6, 12, 11),
(88, 6, 13, 8),
(89, 6, 14, 12),
(90, 6, 15, 14),
(91, 7, 1, 20),
(92, 7, 2, 2),
(93, 7, 3, 16),
(94, 7, 4, 16),
(95, 7, 5, 17),
(96, 7, 6, 3),
(97, 7, 7, 14),
(98, 7, 8, 17),
(99, 7, 9, 16),
(100, 7, 10, 14),
(101, 7, 11, 16),
(102, 7, 12, 10),
(103, 7, 13, 19),
(104, 7, 14, 10),
(105, 7, 15, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE `professeurs` (
  `ProID` int(11) NOT NULL,
  `ProNom` varchar(20) DEFAULT NULL,
  `ProPrenom` varchar(20) DEFAULT NULL,
  `ProMatricule` int(11) DEFAULT NULL,
  `ProDiplome` varchar(50) DEFAULT NULL,
  `ProStatut` enum('AS','MCF','PR') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `professeurs`
--

INSERT INTO `professeurs` (`ProID`, `ProNom`, `ProPrenom`, `ProMatricule`, `ProDiplome`, `ProStatut`) VALUES
(1, 'Jacquet', 'Marc', 7, 'Régendat Histoire', 'MCF'),
(2, 'Renard', 'Rudy', 9, 'Informaticien, Master en Biologie', 'AS'),
(3, 'Martin', 'Bruno', 8, 'Doctorat Mathématique', 'PR'),
(4, 'Vanassche', 'Nathalie', 3, 'Master en Histoire', 'PR');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`CouID`),
  ADD KEY `FK_Pro` (`CouProID`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`EtuID`);

--
-- Index pour la table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`PtsID`),
  ADD KEY `FK_Cou` (`PtsCouID`),
  ADD KEY `FK_Etu` (`PtsEtuID`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`ProID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `CouID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `EtuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `points`
--
ALTER TABLE `points`
  MODIFY `PtsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `ProID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `FK_Pro` FOREIGN KEY (`CouProID`) REFERENCES `professeurs` (`ProID`);

--
-- Contraintes pour la table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `FK_Cou` FOREIGN KEY (`PtsCouID`) REFERENCES `cours` (`CouID`),
  ADD CONSTRAINT `FK_Etu` FOREIGN KEY (`PtsEtuID`) REFERENCES `etudiants` (`EtuID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
