-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 24 Janvier 2019 à 15:51
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bibliotheque`
--
CREATE DATABASE IF NOT EXISTS `bibliotheque` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bibliotheque`;

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `AutID` int(11) NOT NULL,
  `AutNom` varchar(20) DEFAULT NULL,
  `AutPrenom` varchar(20) DEFAULT NULL,
  `AutDateNaiss` date DEFAULT NULL,
  `AutDateDeces` date DEFAULT NULL,
  `AutBibliographie` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`AutID`, `AutNom`, `AutPrenom`, `AutDateNaiss`, `AutDateDeces`, `AutBibliographie`) VALUES
(1, 'ADAMS', 'Douglas', '1999-01-18', '2014-07-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(2, 'ALAIN-FOURNIER', '', '1923-04-21', '2019-03-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(3, 'AMROUCHE', 'Taos', '1991-08-22', '2029-04-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(4, 'ANDERSEN', 'HansCh...', '1964-08-22', '2023-07-05', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(5, 'ANOUILH', 'Jean', '1938-06-23', '2017-09-01', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(6, 'APOLLINAIRE', 'Guil...', '1975-07-19', '2013-09-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(7, 'ARAGON', 'Louis', '2003-02-19', '2016-04-24', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(8, 'ARISTOPHANE', '', '1942-03-17', '2020-02-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(9, 'ASIMOV', 'Isaac', '1910-12-18', '2014-12-28', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(10, 'AUBRY', 'Ccile', '1955-10-24', '2019-09-09', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(11, 'AUSTEN', 'Jane', '1943-05-05', '2024-12-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(12, 'AYME', 'Marcel', '1933-12-16', '2028-05-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(13, 'BALZAC', '', '2010-10-20', '2014-08-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(14, 'BATAILLE', 'Michel', '1943-01-17', '2021-03-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(15, 'BAUDELAIRE', 'Charl...', '1930-06-07', '2023-03-07', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(16, 'BENEDETTI', 'Mario', '1953-02-25', '2033-11-29', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(17, 'BERNARDIN DE SAI…', '', '1909-06-06', '2034-03-06', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(18, 'BERTRAND', 'Aloysiu...', '1979-10-28', '2020-06-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(19, 'BLIXEN', 'Karen', '1936-01-01', '2034-08-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(20, 'BLYTON', 'Enid', '1940-02-28', '2014-01-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(21, 'BOSCO', 'Henri', '1958-09-12', '2019-11-29', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(22, 'BOUJUT', 'Michel', '1959-02-24', '2033-01-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(23, 'BOULGAKOV', 'Mikha...', '1902-10-09', '2013-11-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(24, 'BRECHT', 'Bertolt', '1954-02-10', '2017-09-29', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(25, 'BUKOWSKI', 'Charles', '1904-02-12', '2020-09-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(26, 'BYRON', 'Lord', '1913-04-21', '2014-09-04', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(27, 'CAMUS', 'Albert', '1905-04-06', '2031-02-24', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(28, 'CARRINGTON', 'Leono...', '1990-01-04', '2023-11-17', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(29, 'CARROLL', 'Jim', '1937-11-28', '2031-12-09', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(30, 'CAUVIN', 'Patrick', '1975-04-08', '2015-08-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(31, 'CLINE', 'Louis-Fer...', '1909-12-14', '2018-11-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(32, 'CSAIRE', 'Aim', '1908-01-22', '2019-04-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(33, 'CSAR', 'Jules', '1923-03-10', '2019-07-10', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(34, 'CHATEAUBRIAND', '', '1926-08-09', '2013-07-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(35, 'CHEDID', 'Andre', '1934-03-23', '2017-02-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(36, 'CHOUKRI', 'Mohamed', '1995-06-13', '2019-01-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(37, 'CHOURAQUI', 'Andr', '1997-12-20', '2024-01-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(38, 'CHRISTIE', 'Agatha', '1950-01-05', '2027-05-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(39, 'CLARKE', 'ArthurC.', '1991-07-27', '2025-01-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(40, 'CLAUDEL', 'Paul', '1978-06-14', '2032-05-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(41, 'CLAUS', 'Hugo', '1946-01-14', '2023-01-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(42, 'CLAVEL', 'Bernard', '1952-07-17', '2027-12-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(43, 'COCTEAU', 'Jean', '1921-06-12', '2034-03-13', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(44, 'COLETTE', '', '1948-09-13', '2021-10-07', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(45, 'COLLARD', 'Cyril', '2008-01-12', '2029-06-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(46, 'COMTESSE', 'DESGU...', '1903-05-12', '2035-11-04', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(47, 'COPI', '', '1997-10-22', '2013-07-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(48, 'CORNEILLE', 'Pierre', '1989-04-21', '2025-07-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(49, 'COURTEMANCHE', 'Gil', '1911-02-14', '2028-08-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(50, 'CRICHTON', 'Michael', '1919-11-26', '2030-04-10', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(51, 'D\'AUREVILLY', 'Jule...', '1997-01-08', '2027-09-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(52, 'DARD', 'Frdric', '1979-04-14', '2034-05-04', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(53, 'DARNAL', 'Jean-Clau...', '1927-03-27', '2022-10-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(54, 'DAUDET', 'Alphonse', '2007-02-13', '2028-09-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(55, 'DE BEAUVOIR', 'Simo...', '2000-02-14', '2035-11-07', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(56, 'DE CHAMPLAIN', 'Sam...', '1970-11-29', '2019-08-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(57, 'DE GONCOURT', 'Edmo...', '1961-03-04', '2016-07-27', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(58, 'DE HABSBOURG-LOR...', '', '1969-04-14', '2017-06-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(59, 'DE LA FONTAINE', 'J...', '1954-02-21', '2033-10-27', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(60, 'DE MAUPASSANT', 'Gu...', '1976-04-19', '2029-07-11', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(61, 'DE MONTAIGNE', 'Mic...', '1926-08-26', '2035-02-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(62, 'DE MONTHERLANT', 'H...', '1999-01-08', '2025-11-06', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(63, 'DE MUSSET', 'Alfred', '1966-09-09', '2026-02-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(64, 'DE ROMILLY', 'Jacqu...', '2000-07-21', '2022-03-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(65, 'DE RONSARD', 'Pierr...', '1979-01-04', '2027-08-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(66, 'DE SAINT-EXUPRY...', '', '1933-08-28', '2031-03-05', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(67, 'DEFOE', 'Daniel', '1942-12-13', '2029-02-27', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(68, 'DESANTI', 'Dominiqu...', '1924-06-21', '2032-06-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(69, 'DICKENS', 'Charles', '1962-08-15', '2024-05-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(70, 'DIDEROT', 'Denis', '2000-07-05', '2028-04-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(71, 'DIMEY', 'Bernard', '1961-07-04', '2034-11-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(72, 'DIMITRIJEVIC', 'Vla...', '2005-03-15', '2033-03-07', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(73, 'DIWO', 'Jean', '1989-04-07', '2014-10-03', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(74, 'DOSTOEVSKI', 'Fedo...', '1974-02-10', '2013-04-15', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(75, 'DOYLE', 'Conan', '1990-06-25', '2017-07-09', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(76, 'DRUON', 'Maurice', '1961-12-04', '2015-10-01', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(77, 'DU BELLAY', 'Joachi...', '1956-10-21', '2035-05-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(78, 'DUMAS', 'Alexandre', '1936-01-07', '2030-04-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(79, 'DURAS', 'Marguerite', '1934-08-23', '2030-05-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(80, 'DUTOURD', 'Jean', '1973-09-17', '2022-07-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(81, 'EL-KADER', 'Abd', '1966-06-16', '2027-10-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(82, 'ELUARD', 'Paul', '1918-10-01', '2015-07-07', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(83, 'EURIPIDE', '', '1968-06-29', '2030-03-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(84, 'FERR', 'Lo', '1961-11-12', '2033-12-07', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(85, 'FEYDEAU', 'Georges', '1973-03-22', '2030-05-13', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(86, 'FLAUBERT', 'Gustave', '1909-07-18', '2031-07-01', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(87, 'FLEMING', 'Ian', '1923-09-17', '2034-05-12', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(88, 'FOLLEREAU', 'Raoul', '1930-02-23', '2017-08-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(89, 'FORLANI', 'Remo', '1957-03-28', '2018-07-27', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(90, 'FRANCE', 'Anatole', '1930-11-16', '2025-12-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(91, 'FRANKLIN', 'Benjami...', '1934-08-26', '2014-08-05', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(92, 'FRIANG', 'Brigitte', '1972-10-18', '2017-06-12', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. ');
INSERT INTO `auteurs` (`AutID`, `AutNom`, `AutPrenom`, `AutDateNaiss`, `AutDateDeces`, `AutBibliographie`) VALUES
(93, 'GARY', 'Romain', '1946-03-20', '2033-12-15', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(94, 'GAUTIER', 'Thophil...', '1980-06-28', '2034-12-01', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(95, 'GAUVREAU', 'Pierre', '1941-04-12', '2032-07-13', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(96, 'GILBERTAS', 'Andr', '1965-01-07', '2028-11-24', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(97, 'GILLON', 'Paul', '1919-12-04', '2028-06-17', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(98, 'GIONO', 'Jean', '1918-01-11', '2014-05-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(99, 'GIRAUDOUX', 'Jean', '1948-11-09', '2023-10-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(100, 'GIROUD', 'Franoise', '1991-10-03', '2031-03-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(101, 'GLISSANT', 'Edouard', '1992-09-02', '2032-09-10', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(102, 'GOETHE', '', '1937-04-24', '2031-08-01', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(103, 'GOSCINNY', 'Ren', '1925-03-12', '2025-02-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(104, 'GRACQ', 'Julien', '1997-03-09', '2027-08-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(105, 'GUIBERT', 'Herv', '1937-11-23', '2031-05-06', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(106, 'GUTH', 'Paul', '1942-10-13', '2035-02-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(107, 'GUY DES CARS', '', '1966-11-24', '2032-12-28', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(108, 'GYGAX', 'Gary', '1924-04-24', '2034-10-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(109, 'HALDAS', 'Georges', '1936-05-03', '2031-03-27', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(110, 'HALEY', 'Alex', '1948-06-10', '2033-10-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(111, 'HEMINGWAY', 'Ernest', '1949-11-18', '2027-07-07', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(112, 'HETZEL', 'Pierre-Ju...', '2000-12-22', '2024-06-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(113, 'HOPPER', 'Dennis', '1928-07-02', '2035-02-10', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(114, 'HOWARD', 'RobertEr...', '1973-11-23', '2013-05-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(115, 'HUGO', 'Victor', '1972-03-07', '2015-08-03', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(116, 'INGALLS WILDER', 'L...', '1959-12-27', '2014-02-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(117, 'IONESCO', 'Eugne', '1943-04-02', '2028-03-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(118, 'J. CANNELL', 'Steph...', '1985-02-10', '2013-01-13', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(119, 'KANT', 'Emmanuel', '1919-06-17', '2026-06-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(120, 'KAZANTZAKIS', 'Niko...', '1944-10-25', '2022-02-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(121, 'KESSEL', 'Joseph', '1962-01-03', '2021-01-12', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(122, 'KHAR-EDDINE', 'Moh...', '1992-10-05', '2021-07-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(123, 'KIPLING', 'Rudyard', '2009-05-20', '2031-02-15', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(124, 'KRISTOF', 'Agota', '1949-05-14', '2029-12-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(125, 'KROP', 'Pascal', '1990-03-22', '2034-07-15', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(126, 'L\'HERMITE', 'Trista...', '1925-06-22', '2028-09-16', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(127, 'LA BRUYER', '', '1977-08-09', '2035-08-09', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(128, 'LAMARTINE', '', '1917-01-15', '2024-04-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(129, 'LAPOINTE', 'Marc', '1900-01-05', '2021-10-23', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(130, 'LARTGUY', 'Jean', '1918-10-03', '2029-11-03', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(131, 'LAWRENCE D\'ARABI…', '', '1968-06-29', '2025-01-29', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(132, 'LAUTAUD', 'Paul', '1999-12-03', '2032-11-11', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(133, 'LEBLANC', 'Maurice', '1943-02-06', '2013-09-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(134, 'LECLERC', 'Guillaume', '1930-07-25', '2024-04-11', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(135, 'LOTARD', 'Philippe', '1931-04-28', '2031-01-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(136, 'LEVI', 'Primo', '1968-04-16', '2029-11-03', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(137, 'LINDGREN', 'Astrid', '1938-02-13', '2027-11-11', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(138, 'LONDON', 'Jack', '1911-12-17', '2019-01-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(139, 'LOTI', 'Pierre', '2003-08-12', '2020-02-06', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(140, 'LOUNS', 'Matoub', '1987-03-14', '2033-04-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(141, 'LOVECRAFT', 'H.P.', '1990-02-10', '2032-10-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(142, 'LUND', 'Zo', '1977-11-26', '2027-02-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(143, 'MADAME DE SVIGN', '', '1983-02-28', '2032-02-17', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(144, 'MALLARM', '', '2000-05-10', '2025-10-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(145, 'MALOT', 'Hector', '1979-06-29', '2024-10-23', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(146, 'MALRAUX', 'Andr', '1948-07-03', '2028-12-24', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(147, 'MANN', 'Thomas', '1947-01-15', '2013-07-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(148, 'MARIVAUX', '', '1948-06-18', '2025-01-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(149, 'MARQUIS DE SADE', '', '1900-06-18', '2035-03-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(150, 'MARTENS', '(AUTEUR)...', '1970-02-21', '2034-11-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(151, 'MARTIN', '(AUTEUR)...', '1906-01-18', '0000-00-00', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(152, 'MAY', 'Karl', '1921-10-11', '2032-05-04', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(153, 'MCCOURT', 'Frank', '1986-01-24', '2026-02-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(154, 'MRIME', 'Prosper', '1980-04-29', '2022-05-27', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(155, 'MICHEL-ANGE', '', '1988-11-04', '2019-06-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(156, 'MIKHALKOV', 'Sergue...', '2001-06-15', '2031-05-01', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(157, 'MILLER', 'Arthur', '1953-03-25', '2013-10-06', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(158, 'MIMOUNI', 'Rachid', '2007-07-27', '2035-05-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(159, 'MOHRT', 'Michel', '1956-07-26', '2034-07-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(160, 'MOLIRE', '', '1989-02-05', '2014-05-04', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(161, 'MONTESQUIEU', '', '2008-04-25', '2024-02-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(162, 'NELLIGAN', 'Emile', '1913-03-04', '2029-03-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(163, 'NERVAL', 'GrardDe', '1921-11-28', '2028-09-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(164, 'NIETZSCHE', 'Friedr...', '1973-04-26', '2013-12-10', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(165, 'NOURISSIER', 'Fran...', '1924-01-14', '2017-04-06', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(166, 'PAGNOL', 'Marcel', '1914-01-10', '2025-06-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(167, 'PASOLINI', 'PierPa...', '1941-03-27', '2033-01-03', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(168, 'PEREC', 'Georges', '2008-10-22', '2031-09-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(169, 'PERRAULT', 'Charles', '1919-07-13', '2023-06-14', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(170, 'PINGET', 'Robert', '1953-12-11', '2033-12-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(171, 'PISIER', 'Marie-Fra...', '1940-04-15', '2035-01-03', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(172, 'POE', 'EdgarAllan', '1987-06-08', '2033-02-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(173, 'PRVERT', 'Jacques', '1964-06-07', '2031-11-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(174, 'PROUST', 'Marcel', '1959-10-06', '2032-07-09', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(175, 'QUENEAU', 'Raymond', '1914-12-26', '2026-03-23', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(176, 'RABELAIS', 'Franoi...', '1947-07-25', '2025-06-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(177, 'RACINE', '', '1920-06-29', '2026-03-11', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(178, 'RAPP', 'Bernard', '1985-08-03', '2024-05-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(179, 'RENARD', 'Jules', '1991-08-14', '2028-06-08', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(180, 'RIMBAUD', 'Arthur', '1946-11-06', '2014-08-13', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(181, 'ROSA', 'Salvator', '1965-03-17', '2018-06-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(182, 'ROSTAND', 'Jean', '2008-05-17', '2016-06-23', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(183, 'ROSTAND', 'Edmond', '1963-05-17', '2018-07-10', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(184, 'ROUSSEAU', 'Jean-Ja...', '1930-08-18', '2015-01-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. ');
INSERT INTO `auteurs` (`AutID`, `AutNom`, `AutPrenom`, `AutDateNaiss`, `AutDateDeces`, `AutBibliographie`) VALUES
(185, 'ROUSSELOT', 'Jean', '1977-05-06', '2031-11-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(186, 'ROY (CRIVAIN)', 'C...', '1908-04-28', '2033-06-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(187, 'SABATO', 'Ernesto', '1973-04-28', '2028-12-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(188, 'SAGAN', 'Franoise', '1979-04-12', '2023-01-29', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(189, 'SALINGER', 'J.D.', '2001-08-09', '2027-11-03', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(190, 'SAND', 'George', '1914-01-24', '2021-01-27', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(191, 'SARRAUTE', 'Nathali...', '1910-11-03', '2034-11-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(192, 'SARRAZIN', 'Alberti...', '1961-08-07', '2035-11-29', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(193, 'SARTRE', 'Jean-Paul', '1957-10-29', '2032-08-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(194, 'SCOTT HERON', 'Gil', '1978-01-28', '2026-05-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(195, 'SEFRIOUI', 'Ahmed', '1990-06-05', '2020-09-15', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(196, 'SEGAL', 'Erich', '1995-03-24', '2017-10-04', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(197, 'SEMPRUN', 'Jorge', '1901-10-15', '2033-03-10', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(198, 'SEMPRUN', 'Jaime', '1956-07-11', '2034-12-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(199, 'SENGHOR', 'Lopold...', '1983-06-18', '2022-02-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(200, 'SEVRAN', 'Pascal', '1941-08-19', '2029-08-04', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(201, 'SHAKESPEARE', 'Will...', '1929-12-19', '2026-03-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(202, 'SIM', '', '1983-05-05', '2025-08-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(203, 'SKIF', 'Hamid', '2000-01-05', '2020-10-19', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(204, 'STEINBECK', 'John', '1924-08-21', '2023-06-03', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(205, 'STENDHAL', '', '1933-07-13', '2021-01-06', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(206, 'STEVENSON', 'Robert', '1932-03-24', '2015-05-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(207, 'TIROLIEN', 'Guy', '1975-10-19', '2014-04-25', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(208, 'TISOT', 'Henri', '2010-03-17', '2029-04-07', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(209, 'TOLKIEN', '', '2001-11-29', '2030-09-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(210, 'TOLSTO', '', '1987-09-22', '2015-12-26', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(211, 'TOURGUENIEV', 'Ivan', '1994-01-24', '2029-09-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(212, 'TWAIN', 'Mark', '1981-03-26', '2022-06-20', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(213, 'VADIM', 'Roger', '1916-11-19', '2019-06-13', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(214, 'VALLS', 'Jules', '1938-02-27', '2019-04-17', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(215, 'VERHAEREN', 'mile', '1972-01-16', '2028-10-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(216, 'VERLAINE', 'Paul', '1902-02-14', '2018-06-28', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(217, 'VERNE', 'Jules', '1944-07-19', '2014-05-13', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(218, 'VIAN', 'Boris', '1923-11-05', '2021-11-23', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(219, 'VICTOR', 'Paul-Emil...', '1967-08-20', '2026-11-23', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(220, 'VISCONTI', 'Luchino', '1990-08-07', '2020-06-18', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(221, 'VOLTAIRE', '', '1929-07-10', '2016-02-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(222, 'WELLS', 'FerbertGe...', '1971-10-21', '2023-01-03', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(223, 'WILDE', 'Oscar', '1972-04-23', '2033-01-22', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(224, 'WYNNE JONES', 'Dian...', '1948-11-06', '2034-04-24', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(225, 'YONNET', 'Paul', '1911-05-13', '2024-01-21', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(226, 'YOURCENAR', 'Margue...', '1915-06-16', '2027-04-02', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. '),
(227, 'ZOLA', 'Emile', '1995-12-03', '2024-07-05', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ligula turpis, gravida et placerat in, malesuada ut nibh. Proin vel condimentum risus. Aenean quis magna urna, vel fermentum erat. Nunc quam ante, ornare nec consectetur at, pulvinar id sapien. Vestibulum vel sodales urna. Nulla laoreet varius mauris at ultrices. Ut ligula nulla, egestas at ornare in, scelerisque in ipsum. Donec faucibus rhoncus sem vitae ultricies. Aliquam erat volutpat. Duis ac lobortis turpis. ');

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
-- Structure de la table `editeurs`
--

CREATE TABLE `editeurs` (
  `EdiID` int(11) NOT NULL,
  `EdiNom` varchar(20) DEFAULT NULL,
  `EdiAdresse` varchar(50) DEFAULT NULL,
  `EdiCP` int(5) DEFAULT NULL,
  `EdiVille` varchar(30) DEFAULT NULL,
  `EdiPays` varchar(30) DEFAULT NULL,
  `EdiTelephone` varchar(30) DEFAULT NULL,
  `EdiEmail` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `editeurs`
--

INSERT INTO `editeurs` (`EdiID`, `EdiNom`, `EdiAdresse`, `EdiCP`, `EdiVille`, `EdiPays`, `EdiTelephone`, `EdiEmail`) VALUES
(1, 'Hachette', '698 chemin de l\'Eglise', 77160, 'Cucharmoy', 'France', '0881586821', 'info@hachette.com'),
(2, 'Editis', '891 cours Sainte-Catherine', 77320, 'Lescherolles', 'France', '0163079849', 'info@editis.com'),
(3, 'France Loisir', '614 alle Alsace-Lorraine', 77130, 'Saint Germain Laval', 'France', '0842815208', 'info@france loisir.com'),
(4, 'Eyrolles', '206 place Heni IV', 77118, 'Bazoches ls Bray', 'France', '0459986083', 'info@eyrolles.com'),
(5, 'Edition Atlas', '443 cours de l\'Eglise', 77130, 'La Tombe', 'France', '0848369156', 'info@edition atlas.com'),
(6, 'Mdia-Participation', '918 chemin de la gare', 77120, 'Giremoutiers', 'France', '0694864973', 'info@mdia-participation.com'),
(7, 'Le Seuil', '541 impasse Gambetta', 77280, 'Othis', 'France', '0785007296', 'info@le_seuil.com'),
(8, 'Flammarion', '268 place de la gare', 77320, 'Saint Barthlemy', 'France', '0813686618', 'info@flammarion.com'),
(9, 'Gallimard', '708 rue Heni IV', 77171, 'Sourdun', 'France', '0538924936', 'info@gallimard.com'),
(10, 'Lefebvre Sarrut', '920 quai du moulin', 77140, 'Nonville', 'France', '0710034643', 'info@lefebvre_sarrut.com'),
(11, 'Albin Michel', '435 impasse Alsace-Lorraine', 77169, 'Saint Germain sous Doue', 'France', '0572628771', 'info@albin_michel.com'),
(12, 'Elsevier', '975 chemin de la mairie', 77160, 'Rouilly', 'France', '0459805344', 'info@elsevier.com'),
(13, 'Truc', '5 boulevard Olof Palme', 77436, 'Emerainville', 'France', '0261706556', 'info@truc.com');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE `emprunts` (
  `EmpID` int(11) NOT NULL,
  `EmpLivID` int(11) DEFAULT NULL,
  `EmpPerID` int(11) DEFAULT NULL,
  `EmpDatePret` date DEFAULT NULL,
  `EmpDateRendu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`EmpID`, `EmpLivID`, `EmpPerID`, `EmpDatePret`, `EmpDateRendu`) VALUES
(113, 43, 37, '2013-12-17', '2014-01-01'),
(114, 35, 4, '2013-10-06', '2013-10-21'),
(115, 5, 30, '2013-02-01', '2013-02-16'),
(116, 54, 29, '2013-03-27', '2013-04-11'),
(117, 42, 8, '2013-03-25', '2013-04-09'),
(118, 42, 34, '2013-03-06', '2013-03-21'),
(119, 59, 13, '2013-02-16', '2013-03-03'),
(120, 63, 26, '2013-03-26', '2013-04-10'),
(121, 60, 14, '2013-06-17', '2013-07-02'),
(122, 34, 20, '2013-03-15', '2013-03-30'),
(123, 12, 20, '2013-04-10', '2013-04-25'),
(124, 16, 27, '2013-08-27', '2013-09-11'),
(125, 39, 15, '2013-02-12', '2013-02-27'),
(126, 4, 7, '2013-04-19', '2013-05-04'),
(127, 18, 17, '2013-09-27', '2013-10-12'),
(128, 14, 28, '2013-09-08', '2013-09-23'),
(129, 56, 12, '2013-08-20', '2013-09-04'),
(130, 2, 21, '2013-07-08', '2013-07-23'),
(131, 30, 33, '2013-02-21', '2013-03-08'),
(132, 39, 31, '2013-01-20', '2013-02-04'),
(133, 28, 36, '2013-09-04', '2013-09-19'),
(134, 7, 6, '2013-09-01', '2013-09-16'),
(135, 23, 32, '2013-06-20', '2013-07-05'),
(136, 29, 11, '2013-11-20', '2013-12-05'),
(137, 60, 4, '2013-03-25', '2013-04-09'),
(138, 21, 11, '2013-12-06', '2013-12-21'),
(139, 26, 4, '2013-04-19', '2013-05-04'),
(140, 11, 20, '2013-09-08', '2013-09-23'),
(141, 30, 6, '2013-04-08', '2013-04-23'),
(142, 28, 31, '2013-10-06', '2013-10-21'),
(143, 39, 7, '2013-07-05', '2013-07-20'),
(144, 62, 12, '2013-12-16', '2013-12-31'),
(145, 55, 13, '2013-01-18', '2013-02-02'),
(146, 39, 29, '2013-01-17', '2013-02-01'),
(147, 34, 35, '2013-11-20', '2013-12-05'),
(148, 62, 17, '2013-09-07', '2013-09-22'),
(149, 37, 34, '2013-08-01', '2013-08-16'),
(150, 48, 2, '2013-01-28', '2013-02-12'),
(151, 51, 10, '2013-03-03', '2013-03-18'),
(152, 50, 30, '2013-11-12', '2013-11-27'),
(153, 23, 10, '2013-01-05', '2013-01-20'),
(154, 57, 15, '2013-02-01', '2013-02-16'),
(155, 57, 1, '2013-08-29', '2013-09-13'),
(156, 42, 10, '2013-01-05', '2013-01-20'),
(157, 33, 28, '2013-12-09', '2013-12-24'),
(158, 17, 35, '2013-08-21', '2013-09-05'),
(159, 24, 18, '2013-05-03', '2013-05-18'),
(160, 7, 2, '2013-12-25', '2014-01-09'),
(161, 26, 20, '2013-11-08', '2013-11-23'),
(162, 60, 20, '2013-05-26', '2013-06-10'),
(163, 6, 28, '2013-08-22', '2013-09-06'),
(164, 34, 30, '2013-12-06', '2013-12-21'),
(165, 2, 21, '2013-08-01', '2013-08-16'),
(166, 16, 27, '2013-11-22', '2013-12-07'),
(167, 40, 31, '2013-04-05', '2013-04-20'),
(168, 45, 28, '2013-11-05', '2013-11-20');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `LivID` int(11) NOT NULL,
  `LivISBN` varchar(20) DEFAULT NULL,
  `LivTitre` varchar(20) DEFAULT NULL,
  `LivNbPages` int(11) DEFAULT NULL,
  `LivDate` date DEFAULT NULL,
  `LivPrix` int(11) DEFAULT NULL,
  `LivFormat` varchar(20) DEFAULT NULL,
  `LivEdiID` int(11) DEFAULT NULL,
  `LivAutID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`LivID`, `LivISBN`, `LivTitre`, `LivNbPages`, `LivDate`, `LivPrix`, `LivFormat`, `LivEdiID`, `LivAutID`) VALUES
(1, '96496979669', 'Jacinthe noire', 447, '1918-09-01', 13, 'in-plano', 11, 27),
(2, '98658106774', 'Le Grand Meaulnes', 282, '1921-10-03', 8, 'in-folio', 11, 27),
(3, '74833071691', 'Le Boulanger, la Bou', 279, '1986-04-05', 7, 'in-4 ', 11, 24),
(4, '75896704356', 'Alcools', 404, '1984-08-05', 11, 'in-8 ', 2, 4),
(5, '35686018881', 'calligrammes', 137, '1995-02-18', 25, 'in-16 ', 7, 24),
(6, '71987057213', 'la semaine sainte', 425, '1986-04-22', 8, 'in-18', 1, 27),
(7, '72489027227', 'les grenouilles', 171, '1965-01-13', 22, 'in-folio', 13, 37),
(8, '56379153444', 'belle et sébastien', 349, '1942-10-21', 9, 'in-folio', 11, 25),
(9, '78509501263', 'la jument verte', 200, '1939-01-01', 12, 'in-folio', 9, 227),
(10, '93853699313', 'eugnie grandet', 316, '2008-09-23', 12, 'in-folio', 6, 215),
(11, '29826380403', 'la ville des fous', 395, '1919-01-05', 19, 'in-folio', 11, 41),
(12, '39417588258', 'paul et virginie', 341, '1915-09-03', 19, 'in-folio', 8, 92),
(13, '92960914919', 'les fleurs du mal', 333, '1926-08-26', 14, 'in-folio', 11, 45),
(14, '97909033032', 'le club des 5', 128, '1904-07-17', 23, 'in-folio', 11, 125),
(15, '67307536828', 'l\'enfant et la rivir', 380, '1900-06-14', 8, 'in-folio', 6, 187),
(16, '99756511866', 'la promenade du crit', 301, '1922-11-03', 16, 'in-folio', 12, 136),
(17, '61498428767', 'les justes', 120, '1977-08-25', 9, 'in-folio', 7, 120),
(18, '77011241803', 'Voyage au bout de la', 115, '1967-10-26', 11, 'in-folio', 12, 179),
(19, '28430357423', 'Discours sur le colo', 233, '1973-04-23', 11, 'in-folio', 9, 29),
(20, '60025975246', 'Mmoires d\'outre-tomb', 135, '2006-01-12', 19, 'in-plano', 12, 145),
(21, '90712379835', 'Prote', 385, '1950-10-26', 8, 'in-folio', 4, 112),
(22, '91089808456', 'Claudine', 175, '2001-04-06', 18, 'in-4 ', 8, 152),
(23, '69546967984', 'Les nuits fauves', 320, '1948-12-18', 21, 'in-folio', 3, 146),
(24, '30073003934', 'les malheures de sop', 180, '1916-05-22', 7, 'in-folio', 5, 47),
(25, '25051023603', 'mémoires d\'un ane', 199, '1920-10-13', 6, 'in-folio', 2, 31),
(26, '57716076146', 'le cid', 485, '1990-06-28', 11, 'in-folio', 11, 36),
(27, '59672984431', 'lettres de mon mouli', 307, '1918-01-06', 23, 'in-folio', 6, 83),
(28, '61498238771', 'Mmoires d\'une jeune ', 187, '1909-10-25', 5, 'in-folio', 2, 35),
(29, '76919702031', 'fables', 375, '1962-05-09', 19, 'in-folio', 2, 72),
(30, '90247077928', 'boule de suif', 497, '1918-09-10', 22, 'in-folio', 4, 128),
(31, '38996610634', 'Bel-Ami', 431, '1917-04-10', 24, 'in-8 ', 4, 162),
(32, '63437081844', 'Musotte', 206, '1901-09-11', 15, 'in-16 ', 2, 194),
(33, '55760463437', 'Essais', 495, '1967-12-23', 18, 'in-18', 8, 197),
(34, '88760925245', 'le petit prince', 270, '1909-01-26', 7, 'in-folio', 7, 199),
(35, '55409917939', 'vol de nuit', 481, '1951-02-08', 21, 'in-folio', 5, 138),
(36, '92691489795', 'Jacques le fataliste', 157, '1944-12-21', 8, 'in-folio', 12, 170),
(37, '97854586027', 'les regrets', 78, '1949-09-21', 14, 'in-folio', 6, 142),
(38, '36250251922', 'Le Comte de Monte-Cr', 458, '1956-11-01', 16, 'in-8 ', 12, 41),
(39, '60704225610', 'la reine margot', 265, '1955-08-29', 16, 'in-16 ', 13, 28),
(40, '60855234197', 'l\'amant', 257, '1940-09-15', 6, 'in-18', 1, 151),
(41, '89681332500', 'Libert', 141, '1913-02-25', 11, 'in-folio', 4, 183),
(42, '67269764311', 'un fil à la patte', 149, '1929-07-26', 24, 'in-folio', 8, 188),
(43, '55921279373', 'Madame Bovary', 175, '1964-01-22', 11, 'in-folio', 5, 116),
(44, '90649019568', 'la promesse de l\'aub', 483, '2010-03-01', 20, 'in-folio', 13, 132),
(45, '37471108819', 'regain', 384, '1940-07-02', 11, 'in-folio', 10, 193),
(46, '88213128729', 'Faust', 341, '1960-04-21', 11, 'in-folio', 3, 179),
(47, '77225651407', 'Hernani', 359, '1992-05-02', 13, 'in-folio', 13, 122),
(48, '79022844521', 'Ruy blas', 161, '1995-03-06', 9, 'in-8 ', 10, 139),
(49, '57038771735', 'les misérables', 439, '1934-09-18', 19, 'in-16 ', 11, 102),
(50, '97210993299', 'les contemplations', 485, '1946-10-12', 14, 'in-18', 7, 144),
(51, '84398708486', 'la condition humaine', 337, '1941-10-20', 25, 'in-folio', 2, 113),
(52, '25089538712', 'Les 120 journes de S', 393, '1977-12-24', 14, 'in-folio', 10, 116),
(53, '36139178499', 'L\'école des femmes', 380, '1927-02-02', 7, 'in-folio', 5, 104),
(54, '94686128791', 'Le Médecin malgré lu', 178, '1974-11-06', 22, 'in-folio', 5, 122),
(55, '64395903423', 'Les Fourberies de Sc', 74, '1952-02-20', 12, 'in-folio', 4, 171),
(56, '12437892566', 'de l\'esprit des lois', 363, '1977-07-16', 15, 'in-folio', 4, 138),
(57, '25099449175', 'lettres persanes', 134, '1981-07-27', 15, 'in-folio', 6, 109),
(58, '71938893439', 'la gloire de mon pèr', 275, '1982-12-05', 24, 'in-folio', 8, 114),
(59, '56056967511', 'Marius', 292, '1926-08-04', 7, 'in-folio', 1, 149),
(60, '99771340905', 'Gargantua', 460, '1950-10-10', 22, 'in-folio', 11, 195),
(61, '68420378260', 'Pantagruel', 458, '1948-09-27', 12, 'in-folio', 8, 157),
(62, '66173366501', 'cyrano de bergerac', 471, '1938-10-22', 13, 'in-folio', 4, 215),
(63, '25500924769', 'le tour du monde en ', 102, '1993-05-22', 23, 'in-folio', 9, 140);

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
-- Structure de la table `personnes`
--

CREATE TABLE `personnes` (
  `PerID` int(11) NOT NULL,
  `PerNom` varchar(20) DEFAULT NULL,
  `PerPrenom` varchar(20) DEFAULT NULL,
  `PerAdresse` varchar(50) DEFAULT NULL,
  `PerCP` int(5) DEFAULT NULL,
  `PerVille` varchar(30) DEFAULT NULL,
  `PerTelephone` varchar(30) DEFAULT NULL,
  `PerEmail` varchar(30) DEFAULT NULL,
  `PerSexe` enum('H','F') DEFAULT NULL,
  `PerDateNaiss` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnes`
--

INSERT INTO `personnes` (`PerID`, `PerNom`, `PerPrenom`, `PerAdresse`, `PerCP`, `PerVille`, `PerTelephone`, `PerEmail`, `PerSexe`, `PerDateNaiss`) VALUES
(1, 'Gagnon', 'Philippe', '468, quai Pasteur ', 77230, 'Villeneuve', '0009805759', 'Gagnon.Philippe@biblio.com', 'H', '1952-06-27'),
(2, 'Roy', 'Alain', '848, rue de la Somme ', 77090, 'Somme', '0866054237', 'Roy.Alain@biblio.com', 'H', '1969-03-10'),
(3, 'Ct', 'Nathalie', '918, boulevard henri IV Sivry ', 77115, 'Courtry', '0771564094', 'Ct.Nathalie@biblio.com', 'F', '1935-05-14'),
(4, 'Bouchard', 'Monique', '272, impasse de l\'Yser La Chapelle', 77320, 'Moutils', '0144692327', 'Bouchard.Monique@biblio.com', 'F', '1978-03-06'),
(5, 'Gauthier', 'Franoise', '254, rue de l\'Eglise', 77320, 'Choisy', '0886361062', 'Gauthier.Franoise@biblio.com', 'F', '1994-05-12'),
(6, 'Morin', 'Sylvie', '74, impasse henri IV', 77181, 'Le Pin', '0642547625', 'Morin.Sylvie@biblio.com', 'F', '1933-04-27'),
(7, 'Lavoie', 'Christophe', '87, place Pasteur Seine', 77240, 'Port', '0797091777', 'Lavoie.Christophe@biblio.com', 'F', '1972-10-05'),
(8, 'Ouellet', 'Frdric', '737, chemin Alsace-LorrainePontault ', 77340, 'Combault', '0320205574', 'Ouellet.Frdric@biblio.com', 'H', '1932-09-01'),
(9, 'Blanger', 'Stphane', '471, impasse d\'Albret ', 77176, 'Nandy', '0666830886', 'Blanger.Stphane@biblio.com', 'H', '1964-05-17'),
(10, 'Paquette', 'Thierry', '417, chemin de la Somme ', 77360, 'Vaires sur Marne', '0269370329', 'Paquette.Thierry@biblio.com', 'H', '1933-03-22'),
(11, 'Girard', 'Franois', '406, quai du moulin La Fert', 77320, 'Gaucher', '0932175714', 'Girard.Franois@biblio.com', 'H', '1948-11-11'),
(12, 'Simard', 'Olivier', '276, avenue des coles Saint Pierre', 77140, 'Nemours', '0836013591', 'Simard.Olivier@biblio.com', 'H', '1979-04-24'),
(13, 'Boucher', 'Ren', '232, boulevard d\'Albret ', 77144, 'Chalifert', '0642815124', 'Boucher.Ren@biblio.com', 'H', '1974-09-28'),
(14, 'Beaulieu', 'Vronique', '934, cours henri IV', 77320, 'Lescherolles', '0244751528', 'Beaulieu.Vronique@biblio.com', 'F', '1989-11-06'),
(15, 'Cloutier', 'Cline', '141, boulevard des coles', 77230, 'Juilly', '0389945383', 'Cloutier.Cline@biblio.com', 'F', '1935-08-11'),
(16, 'Dub', 'Jeanne', '887, rue du moulin', 77123, 'Tousson', '0010629210', 'Dub.Jeanne@biblio.com', 'F', '1937-05-02'),
(17, 'Poirier', 'Dominique', '296, impasse de la Somme ', 77154, 'Coutenon', '0596862460', 'Poirier.Dominique@biblio.com', 'F', '1995-04-27'),
(18, 'Fournier', 'Didier', '378, rue Sainte-Catherine ', 77260, 'Reuil en Brie', '0339471699', 'Fournier.Didier@biblio.com', 'H', '1968-09-04'),
(19, 'Lapointe', 'Marc', '983, place henri IV', 77160, 'La Chapelle', '0376360548', 'Lapointe.Marc@biblio.com', 'H', '1991-09-25'),
(20, 'Leclerc', 'Guillaume', '366, boulevard du moulin', 77160, 'Rouilly', '0461577567', 'Leclerc.Guillaume@biblio.com', 'H', '1939-04-26'),
(21, 'Lefebvre', 'Georges', '558, alle de la Marne ', 77127, 'Lieusaint', '0176377491', 'Lefebvre.Georges@biblio.com', 'H', '1947-08-18'),
(22, 'Poulin', 'Serge', '892, avenue de la gare ', 77130, 'Saint Germain Laval', '0942279124', 'Poulin.Serge@biblio.com', 'H', '1955-10-28'),
(23, 'Thibault', 'Christophe', '223, place Alsace-Lorraine ', 77320, 'Chartronges', '0634461661', 'Thibault.Christophe@biblio.com', 'H', '1969-09-20'),
(24, 'St-Pierre', 'Jacques', '480, quai du stade', 77260, 'Sammeron', '0735136630', 'St-Pierre.Jacques@biblio.com', 'H', '1955-05-09'),
(25, 'Nadeau', 'Martine', '781, rue de la gare ', 77320, 'Provins', '0570568307', 'Nadeau.Martine@biblio.com', 'F', '1976-04-20'),
(26, 'Landry', 'Laurent', '503, chemin Sainte-Catherine ', 77178, 'Saint', '0427084177', 'Landry.Laurent@biblio.com', 'H', '1969-05-18'),
(27, 'Martel', 'Stphane', '434, impasse de la Somme ', 77123, 'Noisy', '0269598115', 'Martel.Stphane@biblio.com', 'H', '1948-10-02'),
(28, 'Bdard', 'Sbastien', '956, boulevard de l\'Eglise', 77320, 'Choisy', '0295772756', 'Bdard.Sbastien@biblio.com', 'H', '1951-03-29'),
(29, 'Lessard', 'Antoine', '472, route d\'Albret ', 77320, 'Gaucher', '0998797192', 'Lessard.Antoine@biblio.com', 'H', '1967-01-01'),
(30, 'Bernier', 'Yves', '375, cours Gambetta ', 77169, 'Germain', '0652922875', 'Bernier.Yves@biblio.com', 'H', '1997-02-16'),
(31, 'Michaud', 'Henri', '117, boulevard de la Somme ', 77120, 'Amillis', '0067404123', 'Michaud.Henri@biblio.com', 'H', '1943-07-28'),
(32, 'Hbert', 'Corinne', '574, quai des coles', 77138, 'Luzancy', '0123202425', 'Hbert.Corinne@biblio.com', 'F', '1968-08-08'),
(33, 'Desjardins', 'Romain', '365, route Gambetta ', 77114, 'Villiers', '0820867981', 'Desjardins.Romain@biblio.com', 'H', '0000-00-00'),
(34, 'Couture', 'Yvette', '303, rue de l\'Yser', 77220, 'Favires', '0377058411', 'Couture.Yvette@biblio.com', 'F', '1957-09-06'),
(35, 'Lachance', 'Maxime', '359, place de l\'Eglise', 77169, 'Germain', '0592108471', 'Lachance.Maxime@biblio.com', 'H', '1933-02-17'),
(36, 'Parent', 'lodie', '410, impasse de l\'Yser', 77165, 'Gesvres', '0077585636', 'Parent.lodie@biblio.com', 'F', '1966-11-13'),
(37, 'Gosselin', 'Christelle', '950, impasse du moulin', 77154, 'Villeneuve', '0165835278', 'Gosselin.Christelle@biblio.com', 'F', '1961-08-29');

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
(10, 'GRAFFE', 'Otto', 1, NULL);

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
(6, 'Nantes', '284970', '65,19');

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
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`AutID`);

--
-- Index pour la table `avions`
--
ALTER TABLE `avions`
  ADD PRIMARY KEY (`AviID`),
  ADD KEY `FK_Mod` (`AviModID`),
  ADD KEY `FK_Vil` (`AviVilID`);

--
-- Index pour la table `editeurs`
--
ALTER TABLE `editeurs`
  ADD PRIMARY KEY (`EdiID`);

--
-- Index pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD PRIMARY KEY (`EmpID`),
  ADD KEY `FK_Per` (`EmpPerID`),
  ADD KEY `FK_Liv` (`EmpLivID`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`LivID`),
  ADD KEY `FK_Edi` (`LivEdiID`),
  ADD KEY `FK_Aut` (`LivAutID`);

--
-- Index pour la table `modeles`
--
ALTER TABLE `modeles`
  ADD PRIMARY KEY (`ModID`);

--
-- Index pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`PerID`);

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
-- AUTO_INCREMENT pour la table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `AutID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT pour la table `avions`
--
ALTER TABLE `avions`
  MODIFY `AviID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `editeurs`
--
ALTER TABLE `editeurs`
  MODIFY `EdiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `emprunts`
--
ALTER TABLE `emprunts`
  MODIFY `EmpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `LivID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `modeles`
--
ALTER TABLE `modeles`
  MODIFY `ModID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `PerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `pilotes`
--
ALTER TABLE `pilotes`
  MODIFY `PilID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `VilID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `FK_Liv` FOREIGN KEY (`EmpLivID`) REFERENCES `livres` (`LivID`),
  ADD CONSTRAINT `FK_Per` FOREIGN KEY (`EmpPerID`) REFERENCES `personnes` (`PerID`);

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `FK_Aut` FOREIGN KEY (`LivAutID`) REFERENCES `auteurs` (`AutID`),
  ADD CONSTRAINT `FK_Edi` FOREIGN KEY (`LivEdiID`) REFERENCES `editeurs` (`EdiID`);

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
