-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 07 Février 2019 à 16:00
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `voyage`
--

CREATE DATABASE IF NOT EXISTS `voyage` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `voyage`;

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE `activites` (
  `ActID` int(11) NOT NULL,
  `ActStaID` int(11) NOT NULL,
  `ActLibelle` varchar(30) NOT NULL,
  `ActPrix` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `activites`
--

INSERT INTO `activites` (`ActID`, `ActStaID`, `ActLibelle`, `ActPrix`) VALUES
(1, 1, 'Plong', '130.00'),
(2, 2, 'Piscine', '20.00'),
(3, 2, 'Ski', '200.00'),
(4, 4, 'Kayac', '50.00'),
(5, 4, 'Plong', '0.00'),
(6, 4, 'Voile', '150.00');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `CliID` int(11) NOT NULL,
  `CliNom` varchar(30) NOT NULL,
  `CliPrenom` varchar(30) DEFAULT NULL,
  `CliVille` varchar(30) DEFAULT NULL,
  `CliRegion` varchar(30) DEFAULT NULL,
  `CliSolde` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`CliID`, `CliNom`, `CliPrenom`, `CliVille`, `CliRegion`, `CliSolde`) VALUES
(1, 'Fogg', 'Phileas', 'Londres', 'Europe', '12465.00'),
(2, 'Pascal', 'Blaise', 'Paris', 'Europe', '6763.00'),
(3, 'Kerouac', 'Jack', 'New York', 'Am?rique', '9812.00');

-- --------------------------------------------------------

--
-- Structure de la table `sejours`
--

CREATE TABLE `sejours` (
  `SejID` int(11) NOT NULL,
  `SejCliID` int(11) NOT NULL,
  `SejStaID` int(11) NOT NULL,
  `Sejdebut` date NOT NULL DEFAULT '0000-00-00',
  `SejnbPlaces` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sejours`
--

INSERT INTO `sejours` (`SejID`, `SejCliID`, `SejStaID`, `Sejdebut`, `SejnbPlaces`) VALUES
(1, 1, 1, '2015-07-01', 3),
(2, 1, 2, '2015-08-14', 2),
(3, 2, 3, '2015-08-03', 4),
(4, 2, 4, '2015-08-15', 6),
(5, 3, 1, '2015-09-24', 5),
(6, 3, 2, '2015-08-03', 3),
(7, 3, 3, '2015-06-24', 5),
(8, 3, 4, '2015-09-05', 3);

-- --------------------------------------------------------

--
-- Structure de la table `stations`
--

CREATE TABLE `stations` (
  `StaID` int(11) NOT NULL,
  `StaNom` varchar(30) NOT NULL DEFAULT '',
  `StaCapacite` int(11) NOT NULL,
  `StaLieu` varchar(30) NOT NULL,
  `StaRegion` varchar(30) DEFAULT NULL,
  `StaTarif` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `stations`
--

INSERT INTO `stations` (`StaID`, `StaNom`, `StaCapacite`, `StaLieu`, `StaRegion`, `StaTarif`) VALUES
(1, 'Farniente', 200, 'Sicile', 'Europe', '1500.00'),
(2, 'Passac', 400, 'Alpes', 'Europe', '1000.00'),
(3, 'Santalba', 250, 'Martinique', 'Antilles', '1200.00'),
(4, 'Venusa', 350, 'Guadeloupe', 'Antilles', '1200.00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`ActID`),
  ADD KEY `FK_ActSta` (`ActStaID`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`CliID`);

--
-- Index pour la table `sejours`
--
ALTER TABLE `sejours`
  ADD PRIMARY KEY (`SejID`),
  ADD KEY `FK_SejCli` (`SejCliID`),
  ADD KEY `FK_SejSta` (`SejStaID`);

--
-- Index pour la table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`StaID`),
  ADD UNIQUE KEY `LieuRegion` (`StaLieu`,`StaRegion`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
  MODIFY `ActID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `CliID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `sejours`
--
ALTER TABLE `sejours`
  MODIFY `SejID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `stations`
--
ALTER TABLE `stations`
  MODIFY `StaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `activites`
--
ALTER TABLE `activites`
  ADD CONSTRAINT `FK_ActSta` FOREIGN KEY (`ActStaID`) REFERENCES `stations` (`StaID`);

--
-- Contraintes pour la table `sejours`
--
ALTER TABLE `sejours`
  ADD CONSTRAINT `FK_SejCli` FOREIGN KEY (`SejCliID`) REFERENCES `clients` (`CliID`),
  ADD CONSTRAINT `FK_SejSta` FOREIGN KEY (`SejStaID`) REFERENCES `stations` (`StaID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
