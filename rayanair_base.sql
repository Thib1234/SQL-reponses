-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 25 Janvier 2019 à 14:04
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rayanair`
--
CREATE DATABASE IF NOT EXISTS `rayanair` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rayanair`;

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `essai` (IN `a` INT)  NO SQL
BEGIN
declare marc int;
set marc=5+a;
select marc;
select count(volid) into marc from vols;
select marc;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `avions`
--

CREATE TABLE `avions` (
  `AviID` int(11) NOT NULL,
  `AviModID` int(11) DEFAULT NULL,
  `AviNombreDePlaces` int(11) DEFAULT NULL,
  `AviVilID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `avions`
--

INSERT INTO `avions` (`AviID`, `AviModID`, `AviNombreDePlaces`, `AviVilID`) VALUES
(1, 2, 300, 1),
(2, 3, 300, 1),
(3, 5, 250, 2),
(4, 2, 280, 3),
(5, 5, 160, 1),
(6, 1, 460, 2),
(7, 4, 250, 2),
(8, 3, 300, 4),
(9, 6, 180, 3),
(10, 5, 160, 2);

-- --------------------------------------------------------

--
-- Structure de la table `modeles`
--

CREATE TABLE `modeles` (
  `ModID` int(11) NOT NULL,
  `ModNom` varchar(20) DEFAULT NULL,
  `ModVitesse` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `modeles`
--

INSERT INTO `modeles` (`ModID`, `ModNom`, `ModVitesse`) VALUES
(1, 'Boeing 747	', '1200km/h'),
(2, 'A300', '700km/h'),
(3, 'A310', '915km/h'),
(4, 'Boeing 707', '984km/h'),
(5, 'Concorde', '2145km/h'),
(6, 'Mercure', '932km/h');

-- --------------------------------------------------------

--
-- Structure de la table `pilotes`
--

CREATE TABLE `pilotes` (
  `PilID` int(11) NOT NULL,
  `PilNom` varchar(20) DEFAULT NULL,
  `PilPrenom` varchar(20) DEFAULT NULL,
  `PilVilID` int(11) DEFAULT NULL,
  `PilSalaire` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pilotes`
--

INSERT INTO `pilotes` (`PilID`, `PilNom`, `PilPrenom`, `PilVilID`, `PilSalaire`) VALUES
(1, 'TIM', 'Vincent', 2, 26000),
(2, 'CLETTE', 'Lara', 4, 21000),
(3, 'AIPAN', 'Ahmed', 1, 18000),
(4, 'TERIEUR', 'Alain', 2, 17000),
(5, 'LAIBOUL', 'Ella', 4, 19000),
(6, 'TERIEUR', 'Alex', 2, 18000),
(7, 'DON', 'Guy', 1, 17000),
(8, 'RATAMAIR', 'Waldi', 3, 15000),
(9, 'OUIN', 'Serge', 5, 18000),
(10, 'GRAFFE', 'Otto', 1, NULL),
(11, 'popo', NULL, NULL, NULL);

--
-- Déclencheurs `pilotes`
--
DELIMITER $$
CREATE TRIGGER `insert` BEFORE INSERT ON `pilotes` FOR EACH ROW BEGIN
IF NEW.pilnom='popo' THEN
		INSERT INTO villes (vilnom) values ('namur');
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `VilID` int(11) NOT NULL,
  `VilNom` varchar(20) DEFAULT NULL,
  `VilNbHabitants` varchar(20) DEFAULT NULL,
  `VilSuperficie` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `villes`
--

INSERT INTO `villes` (`VilID`, `VilNom`, `VilNbHabitants`, `VilSuperficie`) VALUES
(1, 'Nice', '343304', '71,92'),
(2, 'Paris', '2244000', '105,4'),
(3, 'Lyon', '484344', '47,95'),
(4, 'Toulouse', '441802', '118,3'),
(5, 'Lens', '4277	', '46,61'),
(6, 'Nantes', '284970', '65,19'),
(9, 'charleroi', NULL, NULL);

--
-- Déclencheurs `villes`
--
DELIMITER $$
CREATE TRIGGER `sup` BEFORE DELETE ON `villes` FOR EACH ROW BEGIN
 if OLD.vilnom="namur" THEN 
   insert into villes2 (vilnom) values (old.vilnom);
 end if;  
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `villes2`
--

CREATE TABLE `villes2` (
  `VilID` int(11) NOT NULL DEFAULT '0',
  `VilNom` varchar(20) DEFAULT NULL,
  `VilNbHabitants` varchar(20) DEFAULT NULL,
  `VilSuperficie` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `villes2`
--

INSERT INTO `villes2` (`VilID`, `VilNom`, `VilNbHabitants`, `VilSuperficie`) VALUES
(1, 'Nice', '343304', '71,92'),
(2, 'Paris', '2244000', '105,4'),
(3, 'Lyon', '484344', '47,95'),
(4, 'Toulouse', '441802', '118,3'),
(5, 'Lens', '4277	', '46,61'),
(6, 'Nantes', '284970', '65,19'),
(0, 'namur', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `villes3`
--

CREATE TABLE `villes3` (
  `VilID` int(11) NOT NULL DEFAULT '0',
  `VilNom` varchar(20) DEFAULT NULL,
  `VilNbHabitants` varchar(20) DEFAULT NULL,
  `VilSuperficie` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `villes3`
--

INSERT INTO `villes3` (`VilID`, `VilNom`, `VilNbHabitants`, `VilSuperficie`) VALUES
(1, 'Nice', '343304', '71,92'),
(2, 'Paris', '2244000', '105,4'),
(3, 'Lyon', '484344', '47,95'),
(4, 'Toulouse', '441802', '118,3'),
(5, 'Lens', '4277	', '46,61'),
(6, 'Nantes', '284970', '65,19'),
(9, 'charleroi', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vols`
--

CREATE TABLE `vols` (
  `VolID` int(11) NOT NULL,
  `VolPilID` int(11) DEFAULT NULL,
  `VolDate` date DEFAULT NULL,
  `VolDepartVilID` int(11) DEFAULT NULL,
  `VolArriveVilID` int(11) DEFAULT NULL,
  `VolHeureDepart` time DEFAULT NULL,
  `VolHeureArrive` time DEFAULT NULL,
  `VolAviID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vols`
--

INSERT INTO `vols` (`VolID`, `VolPilID`, `VolDate`, `VolDepartVilID`, `VolArriveVilID`, `VolHeureDepart`, `VolHeureArrive`, `VolAviID`) VALUES
(1, 1, '2013-10-30', 1, 4, '11:00:00', '12:30:00', 1),
(2, 1, '2013-10-30', 2, 4, '17:00:00', '18:30:00', 8),
(3, 2, '2013-10-30', 4, 3, '14:00:00', '16:00:00', 1),
(4, 5, '2013-10-30', 4, 3, '18:00:00', '20:00:00', 3),
(5, 9, '2013-10-30', 2, 1, '06:45:00', '08:15:00', 1),
(6, 10, '2013-10-30', 3, 1, '11:00:00', '12:00:00', 2),
(7, 1, '2013-10-30', 2, 3, '08:00:00', '09:00:00', 4),
(8, 8, '2013-10-30', 1, 2, '07:15:00', '08:45:00', 4),
(9, 1, '2013-10-31', 6, 3, '09:00:00', '15:30:00', 8),
(10, 8, '2013-10-31', 1, 2, '12:15:00', '13:45:00', 2),
(11, 9, '2013-10-31', 2, 3, '15:00:00', '16:00:00', 2),
(12, 1, '2013-10-31', 3, 6, '16:30:00', '20:00:00', 2),
(13, 4, '2013-10-31', 1, 5, '11:00:00', '14:00:00', 5),
(14, 3, '2013-10-31', 5, 2, '15:00:00', '16:00:00', 5),
(15, 8, '2013-10-31', 2, 4, '17:00:00', '18:00:00', 9),
(16, 7, '2013-10-31', 2, 4, '18:00:00', '19:00:00', 5);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `avions`
--
ALTER TABLE `avions`
  ADD PRIMARY KEY (`AviID`),
  ADD KEY `FK_Mod` (`AviModID`),
  ADD KEY `FK_Vil` (`AviVilID`);

--
-- Index pour la table `modeles`
--
ALTER TABLE `modeles`
  ADD PRIMARY KEY (`ModID`);

--
-- Index pour la table `pilotes`
--
ALTER TABLE `pilotes`
  ADD PRIMARY KEY (`PilID`),
  ADD KEY `FK_Vil2` (`PilVilID`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`VilID`);

--
-- Index pour la table `vols`
--
ALTER TABLE `vols`
  ADD PRIMARY KEY (`VolID`),
  ADD KEY `FK_Pil` (`VolPilID`),
  ADD KEY `FK_Avi` (`VolAviID`),
  ADD KEY `FK_Vil3` (`VolDepartVilID`),
  ADD KEY `FK_Vil4` (`VolArriveVilID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `avions`
--
ALTER TABLE `avions`
  MODIFY `AviID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `modeles`
--
ALTER TABLE `modeles`
  MODIFY `ModID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `pilotes`
--
ALTER TABLE `pilotes`
  MODIFY `PilID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `VilID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `vols`
--
ALTER TABLE `vols`
  MODIFY `VolID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `avions`
--
ALTER TABLE `avions`
  ADD CONSTRAINT `FK_Mod` FOREIGN KEY (`AviModID`) REFERENCES `modeles` (`ModID`),
  ADD CONSTRAINT `FK_Vil` FOREIGN KEY (`AviVilID`) REFERENCES `villes` (`VilID`);

--
-- Contraintes pour la table `pilotes`
--
ALTER TABLE `pilotes`
  ADD CONSTRAINT `FK_Vil2` FOREIGN KEY (`PilVilID`) REFERENCES `villes` (`VilID`);

--
-- Contraintes pour la table `vols`
--
ALTER TABLE `vols`
  ADD CONSTRAINT `FK_Avi` FOREIGN KEY (`VolAviID`) REFERENCES `avions` (`AviID`),
  ADD CONSTRAINT `FK_Pil` FOREIGN KEY (`VolPilID`) REFERENCES `pilotes` (`PilID`),
  ADD CONSTRAINT `FK_Vil3` FOREIGN KEY (`VolDepartVilID`) REFERENCES `villes` (`VilID`),
  ADD CONSTRAINT `FK_Vil4` FOREIGN KEY (`VolArriveVilID`) REFERENCES `villes` (`VilID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
