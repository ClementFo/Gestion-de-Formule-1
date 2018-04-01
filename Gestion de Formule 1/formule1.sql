-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 13 Octobre 2015 à 17:12
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `formule1`
--

-- --------------------------------------------------------

--
-- Structure de la table `courir`
--

CREATE TABLE IF NOT EXISTS `courir` (
  `IDSAISON` int(11) NOT NULL,
  `IDPILOTE` int(11) NOT NULL,
  PRIMARY KEY (`IDSAISON`,`IDPILOTE`),
  KEY `I_FK_COURIR_SAISON` (`IDSAISON`),
  KEY `I_FK_COURIR_PILOTE` (`IDPILOTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detenir`
--

CREATE TABLE IF NOT EXISTS `detenir` (
  `IDECU` int(11) NOT NULL,
  `IDDIRECT` int(11) NOT NULL,
  PRIMARY KEY (`IDECU`,`IDDIRECT`),
  KEY `I_FK_DETENIR_ECURIE` (`IDECU`),
  KEY `I_FK_DETENIR_DIRECTEUR_TECH` (`IDDIRECT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `directeur_tech`
--

CREATE TABLE IF NOT EXISTS `directeur_tech` (
  `IDDIRECT` int(11) NOT NULL AUTO_INCREMENT,
  `IDTAG` int(11) NOT NULL,
  `NOMDIRECT` char(50) DEFAULT NULL,
  `PRENOMDIRECT` char(50) DEFAULT NULL,
  `NATIONDIRECT` char(50) DEFAULT NULL,
  `DATENAISSANCEDIRECT` date DEFAULT NULL,
  `DATEDECESDIRECT` date DEFAULT NULL,
  `PHOTODIRECT` varchar(1000) DEFAULT NULL,
  `DESCRIPTIONDIRECT` char(255) DEFAULT NULL,
  PRIMARY KEY (`IDDIRECT`),
  KEY `I_FK_DIRECTEUR_TECH_TAG` (`IDTAG`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Contenu de la table `directeur_tech`
--

INSERT INTO `directeur_tech` (`IDDIRECT`, `IDTAG`, `NOMDIRECT`, `PRENOMDIRECT`, `NATIONDIRECT`, `DATENAISSANCEDIRECT`, `DATEDECESDIRECT`, `PHOTODIRECT`, `DESCRIPTIONDIRECT`) VALUES
(1, 0, 'Allison\n', 'James\n', 'Britannique\n', '1968-02-22', NULL, 'photo-Direct-tech/James_Allison.jpg', 'En 2009 Allison propose le rôle de directeur technique à Lotus F1 Team.\nEn 2013, Allison a quitté que Lotus F1 Team pour rejoindre Ferrari en tant que Directeur Technique Châssis.'),
(2, 0, 'Bell\n', 'Bob\n', 'Britannique\n', '1958-04-10', NULL, 'photo-Direct-tech/Bob_Bell.jpg', 'Il a fait ses débuts en F1 en 1982, chez McLaren, en tant qu''aérodynamicien. Il a rejoint Benetton en 1997. Après un passage de deux ans chez Jordan, en 1999 et 2000, il est revenu dans l''équipe en 2001, au poste de directeur technique adjoint.'),
(3, 0, 'Boyer\n', 'Bernard\n', 'Français', NULL, NULL, NULL, NULL),
(4, 0, 'Brawn\n', 'Ross\n', 'Britannique\n', '1954-11-23', NULL, 'photo-Direct-tech/Ross_Brawn.jpg', 'Il a travailler pour l''écurie Benetton puis Ferrari, avec qui il a remporté 14 titres pilotes et constructeur en tant que directeur technique. \n'),
(5, 0, 'Byrne\n', 'Rory\n', 'Britannique\n', '1944-01-10', NULL, 'photo-Direct-tech/Rory_Byrne.jpg', 'Présent en Formule 1 depuis 1981, il a conçu toutes les monoplaces avec lesquelles Michael Schumacher est devenu champion du monde, chez Benetton puis chez Ferrari. En semi-retraite depuis fin 2004, Byrne collabore toujours avec la Scuderia Ferrari.'),
(6, 0, 'Chapman\n', 'Colin\n', 'Britannique\n', '1928-05-19', '1982-12-16', 'photo-Direct-tech/Colin_Chapman.jpg', 'Il est un ingénieur automobile britannique et fondateur de l''industrie automobiles sportives Lotus et a eu une grande influence dans le sport automobile, et nombre de ses innovations sont devenues des techniques classiques.\n'),
(7, 0, 'Chester\n', 'Nick\n', 'Britannique\n', NULL, NULL, NULL, NULL),
(8, 0, 'Chiti\n', 'Carlo\n', 'Italien', '1924-12-19', '1994-07-07', 'photo-Direct-tech/Carlo_Chiti.jpg', 'Carlo Chiti était un ingénieur italien, diplômé en ingénierie aéronautique de l''université de Pise, qui se spécialisa dans le sport automobile.\n'),
(9, 0, 'Choulet\n', 'Robert\n', 'Français', '1935-02-28', NULL, NULL, 'De 1976 à 1980, Choulet a travaillé avec l''équipe de Formule Un Ligier et a été impliqué dans la conception de la JS5, JS7, JS9, JS11 et JS11 / 15 modèles.'),
(10, 0, 'Colombo\n', 'Gioacchino\n', 'Italien', '1903-01-09', '1987-04-27', 'photo-Direct-tech/gioacchino_colombo.jpg', 'Gioacchino Colombo a commencé à travailler comme apprenti de Vittorio Jano chez Alfa Romeo. \n'),
(11, 0, 'Cooper', 'John\n', 'Britannique\n', '1923-07-17', '2000-12-24', 'photo-Direct-tech/John_Cooper.jpg', 'Cofondateur de Cooper Car Company avec son père Charles Cooper, il créa la première monoplace au moteur en position centrale-arrière.\n'),
(12, 0, 'Coughlan\n', 'Mike\n', 'Britannique\n', '1959-02-17', NULL, 'photo-Direct-tech/Mike_Coughlan.jpg', 'De 2002 à 2007, il a été le designer en chef des monoplaces de Formule 1 de l''écurie McLaren-Mercedes.\n'),
(13, 0, 'De Chaunac\n', 'Hugues\n', 'Français', '1946-04-30', NULL, 'photo-Direct-tech/Hugues_De_Chaunac.jpg', 'Il est un homme d''affaires et un dirigeant français du sport automobile.Il a fondé en1973 le Groupe ORECA, dont il est toujours le président.\n'),
(14, 0, 'De Cortanze\n', 'André \n', 'Français', '1941-03-30', NULL, 'photo-Direct-tech/André_De_Cortanze.jpg', 'Il possède une grande maîtrise dans la construction de châssis. Il est aussi à l''origine de ELF en moto.\n'),
(15, 0, 'Dernie', 'Frank\n', 'Britannique\n', '1950-04-03', NULL, 'photo-Direct-tech/Frank_Dernie.jpg', 'En 1978 Frank Dernie entre chez Williams et quittera l''écurie Williams en 1988. En 1989, il devient directeur technique chez Lotus puis de Ligier entre 1991 et 1992. En 1996, Frank Dernie devient directeur technique chez Arrows puis quitte la F1 en 1997.'),
(16, 0, 'Ducarouge\n', 'Gérard\n', 'Français', '1941-10-23', '2015-02-19', 'photo-Direct-tech/Gérard_Ducarouge.jpg', 'Gérard Ducarouge est un ingénieur français, spécialisé dans les sports mécaniques, a été l''une des figures marquantes du monde de la Formule 1.\n'),
(17, 0, 'Gardner\n', 'Derek\n', 'Britannique\n', '1931-09-19', '2011-01-07', 'photo-Direct-tech/Derek_Gardner.jpg', 'Il entre chez Matra en 1970. Il dessine les Tyrrell championnes du monde en 1971 et 1973. Il se retire en 1977.'),
(18, 0, 'Gascoyne\n', 'Mike\n', 'Britannique\n', '1963-04-02', NULL, 'photo-Direct-tech/Mike_gascoyne.jpg', 'Ingénieur britannique et aérodynamicien de formation, il fait partie des ingénieurs les plus réputés du monde de la Formule 1.\n'),
(19, 0, 'Gentry\n', 'John\n', 'Britannique\n', NULL, NULL, NULL, NULL),
(20, 0, 'Goss\n', 'Tim\n', 'Britannique\n', '1963-02-28', NULL, 'photo-Direct-tech/Tim_Goss.jpg', 'Il est depuis 2013 le directeur technique du McLaren Racing et il a occupé une grande partie des postes techniques de la maison\n'),
(21, 0, 'Lowe\n', 'Paddy\n', 'Britannique\n', '1962-04-08', NULL, 'photo-Direct-tech/Paddy_Lowe.jpg', 'Il est, depuis 2011, directeur technique de l''écurie de Formule 1 McLaren Racing puis en février 2013, il annonce son futur départ pour Mercedes Grand Prix.\n'),
(22, 0, 'Marmiroli', 'Luigi\n', 'Italien', NULL, NULL, NULL, NULL),
(23, 0, 'Newey\n', 'Adrian\n', 'Britannique\n', '1958-12-26', NULL, 'photo-Direct-tech/Adrian_Newey.jpg', 'Il est l''actuel directeur technique de l''écurie Red Bull Racing quatre fois championne du monde et il est considéré comme l''un des ingénieurs les plus doués de sa génération.\n'),
(24, 0, 'Philippe\n', 'Maurice\n', 'Britannique\n', NULL, NULL, NULL, NULL),
(25, 0, 'Postlethwaite\n', 'Harvey\n', 'Britannique\n', '1944-03-04', '1999-04-15', 'photo-Direct-tech/Harvey_Postlethwaite.jpg', 'Harvey Postlethwaite est un ingénieur britannique, directeur technique de plusieurs écuries de Formule 1 des années 1970 aux années 1990.\n'),
(26, 0, 'Ryton\n', 'George\n', 'Britannique\n', '1948-08-15', NULL, NULL, 'George Ryton commence sa carrière en Formule 1 dans l''écurie Team Haas Lola en 1985. Lorsque l''équipe quitte la discipline à la fin de la saison 1986, il rejoint Reynard Motorsport. Peu de temps après, il rejoint John Barnard à Scuderia Ferrari.'),
(27, 0, 'Scalabroni\n', 'Enrique\n', 'Argentin', '1949-10-20', NULL, 'photo-Direct-tech/Enrique_Scalabroni.jpg', 'Il était employé par Dallara, Williams, Ferrari, Lotus et Peugeot Sport entre 1985 et 2002, avant de créer sa propre équipe F 3000 et GP2 en 2003, BCN Competicion, qui a duré jusqu''à la fin de 2008.'),
(28, 0, 'Symonds\n', 'Pat\n', 'Britannique\n', '1953-06-11', NULL, 'photo-Direct-tech/Pat_Symonds.jpg', 'Il est actuellement le directeur technique de Williams Grand Prix Engineering après avoir travaillé à la Benetton, Renault et Virgin équipes de Formule Un.'),
(29, 0, 'Tauranac\n', 'Ron\n', 'Australien', '1924-01-13', NULL, 'photo-Direct-tech/Ron_Tauranac.jpg', 'Ron Tauranac et son frère Austin construisent leurs premières voitures de course automobile en Australie.\n'),
(30, 0, 'Taylor\n', 'Geoffrey\n', 'Britannique\n', NULL, NULL, NULL, NULL),
(31, 0, 'Tolentino', 'Mario\n', 'Italien', NULL, NULL, NULL, NULL),
(32, 0, 'Von Falkenhausen\n', 'Alexander\n', 'Allemand', NULL, NULL, '', NULL),
(33, 0, 'Wright\n', 'Peter\n', 'Britannique\n', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ecurie`
--

CREATE TABLE IF NOT EXISTS `ecurie` (
  `IDECU` int(11) NOT NULL AUTO_INCREMENT,
  `IDTAG` int(11) NOT NULL,
  `NOMECU` char(50) DEFAULT NULL,
  `PAYSECU` char(50) DEFAULT NULL,
  `LOGOECU` varchar(1000) DEFAULT NULL,
  `DESCRIPTIONECU` char(255) DEFAULT NULL,
  PRIMARY KEY (`IDECU`),
  KEY `I_FK_ECURIE_TAG` (`IDTAG`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `ecurie`
--

INSERT INTO `ecurie` (`IDECU`, `IDTAG`, `NOMECU`, `PAYSECU`, `LOGOECU`, `DESCRIPTIONECU`) VALUES
(14, 0, 'McLaren Racing', 'Royaume-Uni / Nouvelle-Zélande', 'logo-ecurie/McLaren.jpg', 'McLaren Racing, fondée en 1963 par Bruce McLaren sous le nom Bruce McLaren Motor Racing Ltd, est la branche du McLaren Technology Group chargée de l''engagement en compétition des voitures de la marque britannique McLaren et démarre en Formule 1 en 1966.'),
(13, 0, 'Matra Sports', 'France', 'logo-ecurie/Matra_Sports.jpg', 'Matra Sports est la branche sportive du constructeur automobile français Matra Automobiles, impliquée en compétition en Formule 1, Formule 2, Formule 3 et Sport-Prototypes dans les années 1960 et 1970.'),
(12, 0, 'Maserati', 'Italie', 'logo-ecurie/Maserati.jpg', 'Maserati est la marque d''un constructeur italien de voitures de sport et de course fondé par les frères Maserati en 1914 et dont le symbole est un trident inspiré de la fontaine de Neptune de Bologne.'),
(11, 0, 'Lotus F1 Team', 'Royaume-Uni', 'logo-ecurie/Lotus_F1_Team.jpg', 'Lotus F1 Team est une écurie de Formule 1 britannique qui débute en compétition en tant que constructeur lors de la saison 2012.Il est basée à Enstone en Angleterre. Lotus F1 Team est bien que distincte de Team Lotus présente en Formule 1 de 1958 à 1994.'),
(9, 0, 'Cooper', 'Royaume-Uni', 'logo-ecurie/Cooper.jpg', 'Cooper Car Company est une écurie de course automobile fondée par Charles et John Cooper.Cooper a participé notamment à 113 Grands Prix de Formule 1 entre 1950 et 1968 et remporté le championnat du monde des constructeurs en 1959 et 1960.'),
(8, 0, 'BRM', 'Royaume-Uni', 'logo-ecurie/BRM.jpg', 'British Racing Motors (BRM) est une ancienne écurie de sport automobile britannique, présente en Formule 1 de 1951 à 1977.'),
(7, 0, 'Brawn GP', 'Royaume-Uni', 'logo-ecurie/Brawn_GP.jpg', 'Brawn GP Formula One Team ou plus simplement Brawn GP est une ancienne écurie de Formule 1 britannique qui a vu le jour le 6 mars 2009 pour débuter en compétition à l''occasion du championnat du monde de Formule 1 2009.'),
(6, 0, 'Brabham', 'Royaume-Uni', 'logo-ecurie/Brabham.jpg', 'Brabham Racing Organisation est une écurie de Formule 1 britannique fondée en 1960 par les Australiens Jack Brabham et Ron Tauranac l''écurie remporte quatre titres de champions du monde des pilotes et deux titres de champion du monde des constructeurs.'),
(5, 0, 'Benetton', 'Italie / Royaume-Uni', 'logo-ecurie/Benetton.jpg', 'Benetton Formula 1 était une écurie de Formule 1 fondée par Luciano Benetton à la suite du rachat de l''écurie anglaise Toleman. L''écurie a remporté 27 victoires, décroché 102 podiums, 15 pole positions et signé 36 meilleurs tours en course.'),
(1, 0, 'AFM', 'Allemagne', 'logo-ecurie/AFM.jpg', 'AFM fut fondée en 1948 par l''allemand Alexander von Falkenhausen.\r\n\r\nEn 1952, AFM participe au Grand Prix de Suisse avec l''Allemand Hans Stuck.'),
(2, 0, 'AGS', 'France', 'logo-ecurie/AGS.jpg', 'AGS a été fondée en 1969 par l''ancien pilote Henri Julien et a disputé 47 Grands Prix entre 1986 et 1991.'),
(3, 0, 'Alfa Romeo', 'Italie', 'logo-ecurie/Alfa_Romeo.jpg', 'Alfa Romeo participa aux compétitions de Formule 1 en tant que constructeur et motoriste de 1950 à 1988.'),
(4, 0, 'Alta', 'Royaume-Uni', 'logo-ecurie/Alta.jpg', 'Alta Car and Engineering Company était une officine britannique de construction de voitures de course automobile fondée par Geoffrey Taylor. Alta a débuté en Formule 1 en 1950 et a disputé 5 Grands Prix de championnat du monde jusqu''en 1952.'),
(19, 0, 'Team Lotus', 'Royaume-Uni', 'logo-ecurie/Team_Lotus.jpg', 'Le Team Lotus a été présente en Formule 1 de 1958 à 1994. Elle s''y est distinguée par ses multiples victoires et titres mondiaux,il remporta six titres mondiaux des pilotes et sept titres constructeurs.'),
(20, 0, 'Tyrell Racing', 'Royaume-Uni', 'logo-ecurie/Tyrrell_Racing.jpg', 'Tyrrell Racing (ou Tyrrell Racing Organisation) est une ancienne écurie britannique de sport automobile, fondée en 1960. Présente en Formule 1 de 1968 à 1998, elle a connu son heure de gloire avec les trois titres mondiaux de Jackie Stewart.'),
(15, 0, 'Mercedes-Benz', 'Allemagne', 'logo-ecurie/Mercedes_Benz.jpg', 'Mercedes Grand Prix est une écurie de Formule 1, appartenant au constructeur automobile allemand Mercedes-Benz qui a débuté en Formule 1 en tant que constructeur en 1954 sous le nom Daimler-Benz AG avant de se retirer du championnat du monde fin 1955.'),
(16, 0, 'Red Bull Racing', 'Autriche / Royaume-Uni', 'logo-ecurie/Red_Bull_Racing.jpg', 'Red Bull Racing est une écurie britannique puis autrichienne de Formule 1, fondée en 2005 à la suite du rachat par Red Bull de l''écurie Jaguar Racing. De 2010 à 2013 Red Bull Racing remporte quatre titres de champion du monde des constructeurs.'),
(18, 0, 'Scuderia Ferrari', 'Italie', 'logo-ecurie/Scuderia_Ferrari.jpg', 'La Scuderia Ferrari, fondée en 1929 par Enzo Ferrari est depuis 1947 la branche chargée de l''engagement en compétition des voitures de la marque Ferrari.'),
(17, 0, 'Renault F1 Team', 'France', 'logo-ecurie/Renault_F1_Team.jpg', 'Renault F1 Team a débuté en Formule 1 en tant que constructeur en 1977, avant de se retirer du championnat du monde fin 1985, préférant s''en tenir à un simple rôle de motoriste.'),
(21, 0, 'William F1 Team', 'Royaume-Uni', 'logo-ecurie/Williams_F1_Team.jpg', 'Williams Grand Prix Engineering a été fondée en 1977 par Frank Williams et Patrick Head'),
(10, 0, 'Ligier', 'France', 'logo-ecurie/Ligier.jpg', 'Aujourd''hui, Ligier est surtout connu pour son implication dans le championnat du monde de Formule 1 entre 1976 et 1996.');

-- --------------------------------------------------------

--
-- Structure de la table `enroler`
--

CREATE TABLE IF NOT EXISTS `enroler` (
  `IDECU` int(11) NOT NULL,
  `IDPILOTE` int(11) NOT NULL,
  PRIMARY KEY (`IDECU`,`IDPILOTE`),
  KEY `I_FK_ENROLER_ECURIE` (`IDECU`),
  KEY `I_FK_ENROLER_PILOTE` (`IDPILOTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `monoplace`
--

CREATE TABLE IF NOT EXISTS `monoplace` (
  `IDMONO` int(11) NOT NULL AUTO_INCREMENT,
  `IDTAG` int(11) NOT NULL,
  `IDECU` int(11) NOT NULL,
  `NOMMONO` char(32) DEFAULT NULL,
  `PHOTOMONO` varchar(1000) DEFAULT NULL,
  `DESCRIPTIONMONO` char(255) DEFAULT NULL,
  PRIMARY KEY (`IDMONO`),
  KEY `I_FK_MONOPLACE_TAG` (`IDTAG`),
  KEY `I_FK_MONOPLACE_ECURIE` (`IDECU`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Contenu de la table `monoplace`
--

INSERT INTO `monoplace` (`IDMONO`, `IDTAG`, `IDECU`, `NOMMONO`, `PHOTOMONO`, `DESCRIPTIONMONO`) VALUES
(9, 0, 19, 'Ferrari 156', 'Monoplace/Ferrari156.jpg', 'Année : 1961, \nCylindrée : 1 476,60 cm³,\nPuissance : 190 ch,\nLongueur : 4,06 m'),
(8, 0, 11, 'Cooper T53', 'Monoplace/CooperT53.jpg', 'Année : 1960, Cylindrée : -, Puissance : -, Empattement : -, Poids : -'),
(7, 0, 11, 'Cooper T51', 'Monoplace/CooperT51.jpg', 'Année : 1959-1960, Cylindrée : -, Puissance : -, Empattement : -, Poids : -'),
(6, 0, 19, 'Ferrari D246', 'Monoplace/FerrariD246.jpg', 'Année : 1958, Cylindrée : 2 417 cm³, Puissance : - , Empattement : 2223 mm, Poids : -'),
(5, 0, 19, 'Lancia-Ferrari D50', 'Monoplace/Lancia-FerrariD50.jpg', 'Année : 1953, Cylindrée : 2 485 cm3 , Puissance : 250-255 ch , Empattement : 2 286 mm , Poids : 645 kg'),
(4, 0, 16, 'Mercedes-Benz W196', 'Monoplace/mercedezbenzw156.jpg', 'Année : 1954, Cylindrée : 2 496 cm³, Puissance : 260-295 Ch, Empattement : 2 362 mm, Poids : 640 kg'),
(3, 0, 13, 'Maserati 250F', 'Monoplace/maserati250F.jpg', 'Année : 1954-1958, Cylindrée : 2 494 cm³, Puissance : 240-330 Ch, Empattement : 2280-2300 mm, Poids : 630-650 kg'),
(2, 0, 19, 'Ferrari 500', 'Monoplace/ferrari500.jpg', 'Cylindrée : 1 984,85 cm3,\nPuissance : 185 ch à 7 500 tr/min,\nEmpattement : 2 197 mm,\nPoids : 560 kg.'),
(1, 0, 4, 'Alfetta 158', 'Monoplace/alfetta158.jpg', 'Année du modèle :1938-1950\nPoids : 630 kg\nDimensions :\n-Empattement : 2502 mm\n-Voie avant : 1270 mm\n-Voie arrière : 1321 mm\n\nMoteur L8 de 370 ch à 8 500 tr/min.'),
(10, 0, 10, 'BRM P578', 'Monoplace/BRMP578.jpg', 'Année : 1965, Cylindrée : - , Puissance : -, Empattement : -, Poids : -'),
(11, 0, 12, 'Lotus 25', 'Monoplace/Lotus25.jpg', 'Année : 1962-1963-1964-1965-1966-1967, Cylindrée : 1 500 cm³ , Puissance : -, Empattement : 2311 mm, Poids : 450-453 kg'),
(12, 0, 19, 'Ferrari 158', 'Monoplace/Ferrari158.jpg', 'Année : 1963, Cylindrée : 2 496 cm³, Puissance : 210 ch, Empattement : -, Poids : 468 kg'),
(13, 0, 12, 'Lotus 33', 'Monoplace/Lotus33.jpg', 'Année : 1964-1965-1966-1967, Cylindrée : 1 497 cm³, Puissance : 205 ch, Empattement : 3606mm, Poids : 451-455 kg'),
(14, 0, 8, 'Brabham BT19', 'Monoplace/BrabhamBT19.jpg', 'Année : 1966-1967, Cylindrée : 2 995 cm3, Puissance : 8 cylindres en V, Empattement : 2 337 mm, Poids : 518 kg'),
(15, 0, 8, 'Brabham BT20', 'Monoplace/BrabhamBT20.jpg', 'Année : 1966-1969, Cylindrée : 2 995 cm³, Puissance : 330 ch, Empattement : 2 375 mm, Poids : 549 kg'),
(16, 0, 8, 'Brabham BT24', 'Monoplace/BrabhamBT24.jpg', 'Année : 1967-1969, Cylindrée : 3 000 cm³, Puissance : V8, Empattement : -, Poids : 475 kg'),
(17, 0, 12, 'Lotus 49', 'Monoplace/Lotus49.jpg', 'Année : 1967-1968-1969-1970, Cylindrée : 2 993 cm³, Puissance : 420-440 ch, Empattement : 2 413 mm, Poids : 499 kg'),
(18, 0, 12, 'Lotus 49B', 'Monoplace/Lotus49B.jpg', 'Année : 1968-1969-1970, Cylindrée : 2 995 cm³, Puissance : 410 ch, Empattement : 2 489 mm, Poids : 545 kg'),
(19, 0, 14, 'Matra MS10', 'Monoplace/MatraMS10.jpg', 'Année : 1968-1969, Cylindrée : 2 993 cm³, Puissance : -, Empattement : 2420 mm, Poids : 540 kg'),
(20, 0, 14, 'Matra MS80', 'Monoplace/MatraMS80.jpg', 'Année : 1969, Cylindrée : 2993 cm³, Puissance : 430 ch, Empattement : 2400 mm, Poids : 540 kg'),
(21, 0, 12, 'Lotus 49C', 'Monoplace/Lotus49C.jpg', 'Année : 1970, Cylindrée : 2 995 cm³, Puissance : 410 ch, Empattement : -, Poids : -'),
(22, 0, 21, 'Tyrrell 001', 'Monoplace/Tyrrell001.jpg', 'Année : 1970, Cylindrée : 2 993 cm³, Puissance : -, Empattement : -, Poids : 540 kg'),
(23, 0, 21, 'Tyrrell 003', 'Monoplace/Tyrrell003.jpg', 'Année : 1971-1972, Cylindrée : 2993 cm³, Puissance : 450 ch, Empattement : 2438 mm, Poids : 550 kg'),
(24, 0, 21, 'Tyrrell 005', 'Monoplace/Tyrrell005.jpg', 'Année : -, Cylindrée : -, Puissance : - Ch, Empattement :-, Poids : -'),
(25, 0, 21, 'Tyrrell 006', 'Monoplace/Tyrrell006.jpg', 'Année : -, Cylindrée : -, Puissance : -, Empattement : -, Poids : -'),
(26, 0, 15, 'McLaren M23', 'Monoplace/McLarenM23.jpg', 'Année : 1973-1978, Cylindrée : 2 993 cm³, Puissance : 470 ch, Empattement : 2 993 cm³, Poids : 601 kg'),
(27, 0, 19, 'Ferrari 312B3', 'Monoplace/Ferrari312B3.jpg', 'Année : 1973, Cylindrée : 2 991,80 cm³, Puissance : 485 ch, Empattement : 2500 mm, Poids : 578 kg'),
(28, 0, 19, 'Ferrari 312 T', 'Monoplace/Ferrari312T.jpg', 'Année : 1975, Cylindrée : 2 992 cm³, Puissance : 500 ch, Empattement : 2 518 mm, Poids : 575 kg'),
(29, 0, 15, 'McLaren M23B', 'Monoplace/McLarenM23B.jpg', 'Année : -, Cylindrée : -, Puissance : -, Empattement : -, Poids : -'),
(30, 0, 19, 'Ferrari 312 T2', 'Monoplace/Ferrari312T2.jpg', 'Année : 1976, Cylindrée : 2 991 cm³, Puissance : -, Empattement : 2560 mm, Poids : 590 kg'),
(31, 0, 12, 'Lotus 78', 'Monoplace/Lotus78.jpg', 'Année : 1977, Cylindrée : 2 993 cm³, Puissance : 475 ch, Empattement : 2741 mm, Poids : 588 kg'),
(32, 0, 12, 'Lotus 79', 'Monoplace/Lotus79.jpg', 'Année : 1978-1979, Cylindrée : 2 993 cm³, Puissance : -, Empattement : 2 743 mm, Poids : 575 kg'),
(33, 0, 19, 'Ferrari 312 T3', 'Monoplace/Ferrari312T3.jpg', 'Année : 1978, Cylindrée : 2991,8 cm3, Puissance : 510 ch, Empattement : 2560 mm, Poids : 578 kg'),
(34, 0, 19, 'Ferrari 312 T4', 'Monoplace/Ferrari312T4.jpg', 'Année : 1979, Cylindrée : 2 991,80 cm³, Puissance : 515 ch, Empattement : 2600 mm, Poids : 590 kg'),
(35, 0, 22, 'Williams FW07B', 'Monoplace/WilliamsFW07B.jpg', 'Année : -, Cylindrée : -, Puissance : -, Empattement : -, Poids : -'),
(36, 0, 8, 'Brabham BT49C', 'Monoplace/BrabhamBT49C.jpg', 'Année : 1981, Cylindrée : -, Puissance : -, Empattement : -, Poids : -'),
(37, 0, 22, 'Williams FW07C', 'Monoplace/WilliamsFW07C.jpg', 'Année : -, Cylindrée : -, Puissance : -, Empattement : -, Poids : -'),
(38, 0, 22, 'Williams FW08', 'Monoplace/WilliamsFW08.jpg', 'Année : 1982, Cylindrée : 2 993 cm³, Puissance : 480 ch, Empattement : 2 591 mm, Poids : 520 kg'),
(39, 0, 8, 'Brabham BT52', 'Monoplace/BrabhamBT52.jpg', 'Année : 1983, Cylindrée : 1 500 cm³, Puissance : -, Empattement : -, Poids : 540 kg'),
(40, 0, 8, 'Brabham BT52B', 'Monoplace/BrabhamBT52B.jpg', 'Année : 1983, Cylindrée : 1 500 cm³, Puissance : -, Empattement : -, Poids : 540 kg'),
(41, 0, 15, 'McLaren MP4/2', 'Monoplace/McLarenMP42.jpg', 'Année : 1984, Cylindrée : 1 499 cm³, Puissance : 700 ch, Empattement : 2794 mm, Poids : 540 kg'),
(42, 0, 15, 'McLaren MP4/2C', 'Monoplace/McLarenMP42C.jpg', 'Année : 1986, Cylindrée : 1 496 cm³, Puissance : 850 ch, Empattement : 2 794 mm, Poids : 540 kg'),
(43, 0, 22, 'Williams FW11B', 'Monoplace/WilliamsFW11B.jpg', 'Année : -, Cylindrée : -, Puissance : -, Empattement : -, Poids : -'),
(44, 0, 15, 'McLaren MP4/4', 'Monoplace/McLarenMP44.jpg', 'Année : 1988, Cylindrée : 1 494 cm³, Puissance : 650 ch, Empattement : -, Poids : -'),
(45, 0, 15, 'McLaren MP4/5', 'Monoplace/McLarenMP45.jpg', 'Année : 1989, Cylindrée : 3 490 cm³, Puissance : 675 ch, Empattement : 2 896 mm, Poids : -'),
(46, 0, 15, 'McLaren MP4/5B', 'Monoplace/McLarenMP45B.jpg', 'Année : 1990, Cylindrée : 3 493 cm³, Puissance : 690 ch, Empattement : 2 940 mm, Poids : -'),
(47, 0, 15, 'McLaren MP4/6', 'Monoplace/McLarenMP46.jpg', 'Année : 1991, Cylindrée : 3493 cm³, Puissance : 710 ch, Empattement : 2960 mm, Poids : 505 kg'),
(48, 0, 22, 'Williams FW14B', 'Monoplace/WilliamsFW14B.jpg', 'Année : 1992, Cylindrée : 3 493 cm³, Puissance : 700 ch, Empattement : 2817 mm, Poids : 505 kg'),
(49, 0, 22, 'Williams FW15C', 'Monoplace/WilliamsFW15C.jpg', 'Année : 1993, Cylindrée : 3 493 cm³, Puissance : 780 ch, Empattement : 2921 mm, Poids : -'),
(50, 0, 22, 'Benetton B194', 'Monoplace/BenettonB194.jpg', 'Année : 1994, Cylindrée : 3 494 cm³, Puissance : 730 ch, Empattement : 2880 mm, Poids : 515 kg'),
(51, 0, 7, 'Benetton B195', 'Monoplace/BenettonB195.jpg', 'Année : 1995, Cylindrée : 3 000 cm³, Puissance : 750 ch, Empattement : 2880 mm, Poids : 515 kg'),
(52, 0, 22, 'Williams FW18', 'Monoplace/WilliamsFW18.jpg', 'Année : 1996, Cylindrée : 3 000 cm³, Puissance : 750 ch, Empattement : 2890 mm, Poids : 595 kg'),
(53, 0, 22, 'Williams FW19', 'Monoplace/WilliamsFW19.jpg', 'Année : 1997, Cylindrée : 3 000 cm³, Puissance : 755 ch, Empattement : 2890 mm, Poids : 605 kg'),
(54, 0, 15, 'McLaren MP4/13', 'Monoplace/McLarenMP413.jpg', 'Année : 1998, Cylindrée : 2 998 cm³, Puissance : 800 ch, Empattement : -, Poids : 600 kg'),
(55, 0, 15, 'McLaren MP4/14', 'Monoplace/McLarenMP414.jpg', 'Année : 1999, Cylindrée : 3000 cm³, Puissance : -, Empattement : 3070 mm, Poids : 600 kg'),
(56, 0, 19, 'Ferrari F1-2000', 'Monoplace/FerrariF12000.jpg', 'Année : 2000, Cylindrée : 2 997 cm³, Puissance : 815 ch, Empattement : 3090 mm, Poids : 600 kg'),
(57, 0, 19, 'Ferrari F2001', 'Monoplace/FerrariF2001.jpg', 'Année : 2001, Cylindrée : 2 997 cm³, Puissance : 825 ch, Empattement : 3010 mm, Poids : 600 kg'),
(58, 0, 19, 'Ferrari F2002', 'Monoplace/FerrariF2002.jpg', 'Année : 2002, Cylindrée : 2 997 cm³, Puissance : 855 ch, Empattement : 3020 mm, Poids : 600 kg'),
(59, 0, 19, 'Ferrari F2003-GA', 'Monoplace/FerrariF2003GA.jpg', 'Année : 2003, Cylindrée : 2 997 cm³, Puissance : 860 ch, Empattement : 3100 mm, Poids : 600 kg'),
(60, 0, 19, 'Ferrari F2004', 'Monoplace/FerrariF2004.jpg', 'Année : 2004, Cylindrée : 2 997 cm³, Puissance : 900 ch, Empattement : 3050 mm, Poids : 605 kg'),
(61, 0, 18, 'Renault R25', 'Monoplace/RenaultR25.jpg', 'Année : 2005, Cylindrée : 3 000 cm³, Puissance : 930 ch , Empattement : 3 100 mm, Poids : 605 kg'),
(62, 0, 18, 'Renault R26', 'Monoplace/RenaultR26.jpg', 'Année : 2006, Cylindrée : 2 400 cm³, Puissance : -, Empattement : 3 100 mm, Poids : 605 kg'),
(63, 0, 19, 'Ferrari F2007', 'Monoplace/FerrariF2007.jpg', 'Année : 2006, Cylindrée : 2 400 cm³, Puissance : -, Empattement : 3 100 mm, Poids : 605 kg'),
(64, 0, 15, 'McLaren MP4-23', 'Monoplace/McLarenMP423.jpg', 'Année : 2008, Cylindrée : 2 398 cm³, Puissance : -, Empattement : -, Poids : 605 kg'),
(65, 0, 9, 'Brawn BGP 001', 'Monoplace/BrawnBGP001.jpg', 'Année : 2009, Cylindrée : 2 400 cm3, Puissance : -, Empattement : -, Poids : -'),
(66, 0, 17, 'Red Bull RB6', 'Monoplace/RedBullRB6.jpg', 'Année : 2010, Cylindrée : 2 400 cm3, Puissance : 18 000 tr/min, Empattement : -, Poids : 620 kg'),
(67, 0, 17, 'Red Bull RB7', 'Monoplace/RedBullRB7.jpg', 'Année : 2011, Cylindrée : 2 400 cm3, Puissance : 18 000 tr/min, Empattement : -, Poids : 640 kg'),
(68, 0, 17, 'Red Bull RB8', 'Monoplace/RedBullRB8.jpg', 'Année : 2012, Cylindrée : 2 400 cm3, Puissance : 18 000 tr/min, Empattement : -, Poids : 640 kg'),
(69, 0, 16, 'F1 W05 Hybrid', 'Monoplace/F1W05Hybrid.jpg', 'Année : 2014, Cylindrée : 1 600 cm3, Puissance : 15 000 tr/min, Empattement : -, Poids : 691 kg');

-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

CREATE TABLE IF NOT EXISTS `participer` (
  `IDECU` int(11) NOT NULL,
  `IDSAISON` int(11) NOT NULL,
  PRIMARY KEY (`IDECU`,`IDSAISON`),
  KEY `I_FK_PARTICIPER_ECURIE` (`IDECU`),
  KEY `I_FK_PARTICIPER_SAISON` (`IDSAISON`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pilote`
--

CREATE TABLE IF NOT EXISTS `pilote` (
  `IDPILOTE` int(11) NOT NULL AUTO_INCREMENT,
  `IDTAG` int(11) NOT NULL,
  `NOMPILOTE` char(50) DEFAULT NULL,
  `PRENOMPILOTE` char(50) DEFAULT NULL,
  `NATIONPILOTE` char(50) DEFAULT NULL,
  `DATENAISSANCEPILOTE` date DEFAULT NULL,
  `DATEDECESPILOTE` date DEFAULT NULL,
  `PHOTOPILOTE` varchar(1000) DEFAULT NULL,
  `DESCRIPTIONPILOTE` char(255) DEFAULT NULL,
  PRIMARY KEY (`IDPILOTE`),
  KEY `I_FK_PILOTE_TAG` (`IDTAG`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `pilote`
--

INSERT INTO `pilote` (`IDPILOTE`, `IDTAG`, `NOMPILOTE`, `PRENOMPILOTE`, `NATIONPILOTE`, `DATENAISSANCEPILOTE`, `DATEDECESPILOTE`, `PHOTOPILOTE`, `DESCRIPTIONPILOTE`) VALUES
(4, 0, 'SCHUMACHER', 'Michael', 'Allemand', '1969-01-03', NULL, 'Photo-pilote/Schumacher.jpg', 'Pilote d''origine Allemande, il a été 7 fois champion du monde (1994, 1995, 2000, 2001, 2002, 2003, 2004). Il à couru chez Ferrari, Mercedes, Benetton et Jordan. Il est encore en vie malgrès un grave accident de ski en 2013.'),
(3, 0, 'SENNA', 'Ayrton', 'Brésilien', '1960-03-21', '1994-05-01', 'Photo-pilote/Senna.jpg', 'Pilote d''origine Brésilienne, champion du monde en 1988, 1990 et 1991. Il à couru pour Lotus, Mclaren, Williams et Toleman. Il est connu pour sa rivalité avec Alain PROST. Il mourut au volant lors du Grand Prix D''Imola.'),
(2, 0, 'HUNT', 'James', 'Britannique', '1947-08-29', '1993-06-15', 'Photo-pilote/Hunt.jpg', 'Pilote d''origine Britannique, il fût 1 fois champion du monde en 1976, il est connu pour sa rivalité avec Niki LAUDA. Il à couru pour Hesketh, Mclaren et Wolf. Il est mort en 1993 d''une crise cardiaque.'),
(1, 0, 'LAUDA', 'Niki', 'Autrichien', '1949-02-22', NULL, 'Photo-pilote/Lauda.jpg', 'Pilote d''origine Autrichienne qui a couru pour Ferrari, BRM, Mclaren, Braham et March. Il à été champion du monde en 1975, 1977 et en 1984. Il est connu pour sa rivalité avec James HUNT et son accident sur le circuit de Nürburgring. Il est encore en vie'),
(5, 0, 'ICKX', 'Jacky', 'Belge', '1945-01-01', NULL, 'Photo-pilote/Ickx.jpg', 'Pilote d''origine Belge, il n''a jamais été champion du monde mais il est connu pour être souvent second en F1. Il à couru pour Cooper, Ferrari, Brabham, Mclaren, Williams, Lotus, Wolf, Ensign et Ligier.'),
(6, 0, 'PROST', 'Alain', 'Français', '1955-02-24', NULL, 'Photo-pilote/Prost.jpg', 'Pilote d''origine Française, il a pour surnom "le Professeur". Il a été champion du monde 4 fois (1985, 1986, 1989, 1993). Il a couru pour Renault et Mclaren. Il est connu pour sa rivalité avec Ayrton SENNA.'),
(7, 0, 'VILLENEUVE', 'Gilles', 'Canadien', '1950-01-18', '1982-05-08', 'Photo-pilote/Villeneuve_G.jpg', 'Pilote d''origine Canandienne, il n''a jamais été champion du monde. Il a couru chez Ferrari et Mclaren. Il est connu pour son terrible crash lors du Grand Prix de Belgique en 1982. Il à perdu la vie au volant.'),
(8, 0, 'BIANCHI', 'Jules', 'Français', '1989-08-03', '2015-07-15', 'Photo-pilote/Bianchi.jpg', 'Pilote d''origine Française, il n''a jamais été champion du monde. Il à couru chez Marussia F1 Team et chez Ferrari en tant que 3ème pilote. Il est connu à cause du grave accident qui lui à coûté la vie en Octobre 2014 lors du Grand Prix du Japon.'),
(9, 0, 'ALONSO', 'Fernando', 'Espagnol', '1989-07-29', NULL, 'Photo-pilote/Alonso.jpg', 'Pilote d''origine Espagnol, il à deux titre de champion du monde à son actif (2005, 2006). Il a couru chez Minardi, Renault, Mclaren, Ferrari et cours maintenant chez Honda. Il est connu pour être un pilote rapide sous la pluie.'),
(10, 0, 'VETTEL', 'Sebastian', 'Allemand', '1987-07-03', NULL, 'Photo-pilote/Vettel.jpg', 'Pilote d''origine Allemande, il a été quattre fois champion du monde (2010, 2011, 2012, 2013). Il a couru pour BMW, Toro Rosso, RedBull et maintenant cours chez Ferrari. Il est connu pour être le plus jeune champion du monde de toute la F1.'),
(11, 0, 'RAIKKONEN', 'Kimi', 'Finlandais', '1979-10-17', NULL, 'Photo-pilote/Raikkonen.jpg', 'Pilote d''origine Finlandaise, il a gagné une fois le championnat en 2007. Il a couru chez Sauber, Mclaren, Lotus et cours maintenant chez Ferrari. Il est connu sous le surnom de "Iceman" car il ne sourit jamais.'),
(12, 0, 'HAMILTON', 'Lewis', 'Britannique', '1985-01-07', NULL, 'Photo-pilote/Hamilton.jpg', 'Pilote d''origine Britannique, il a gagné 2 championnat (2008, 2014). Il a couru chez Mclaren et cours actuellement chez Mercedes. Il est pour avoir été en 2008 le plus jeune champion du monde.'),
(13, 0, 'FANGIO', 'Juan-Manuel', 'Argentin', '1911-06-24', '1995-07-17', 'Photo-pilote/Fangio.jpg', 'Pilote Argentin, connu sous de multiple surnom comme "El Chueco" ou encore "El Maestro". Il gagné 5 championnat de F1 (1951, 1954, 1955, 1956, 1957). Il a couru pour Alfa Roméo, Maserati, Mercesdes et Ferrari. Il est connu pour avoir dominé la discipline.'),
(14, 0, 'FARINA', 'Giuseppe', 'Italien', '1906-10-30', '1966-06-30', 'Photo-pilote/Farina.jpg', 'Pilote d''origine Italienne, il a gagné une seule fois le championnat de F1. Il a couru pour Alfa Roméo et Ferrari. Il est connu pour être devenu le tout premier champion de la discipline.'),
(15, 0, 'ASCARI', 'Alberto', 'Italien', '1918-07-13', '1955-05-26', 'Photo-pilote/Ascari.jpg', 'Pilote d''origine Italienne, il a gagné une deux fois le championnat de F1. Il a couru pour Ferrari, Lancia, Alfieri et Maserati . Il est connu pour avoir gagner 2 championnat et ensuite mourir au volant lors d''une séance d''éssai privée à Monza.'),
(16, 0, 'HAWTHORN', 'Mike', 'Britannique', '1929-04-10', '1959-01-22', 'Photo-pilote/Hawthorn.jpg', 'Pilote d''origine Britannique, il a gagné une fois le championnat de F1. Il a couru pour Ferrari et Vanwall. Il est connu pour être le premier pilote britannique à avoir gagner le championnat avec Ferrari.'),
(17, 0, 'BRABHAM', 'Jack', 'Australien', '1926-04-02', '2014-05-19', 'Photo-pilote/Brabham.jpg', 'Pilote d''origine Australienne, il a gagné trois fois le championnat de F1. Il a couru pour Cooper et sa propre écurie.'),
(18, 0, 'HILL', 'Phil', 'Américain', '1927-04-20', '2008-08-28', 'Photo-pilote/Hill_P.jpg', 'Pilote d''origine Américaine, il a gagné une seule fois le championnat de F1. Il a couru pour Cooper et Ferrari. Il est connu pour être devenu le premier champion américain de la discipline.'),
(19, 0, 'HILL', 'Graham', 'Britannique', '1929-02-15', '1975-11-29', 'Photo-pilote/Hill_G.jpg', 'Pilote d''origine Britannique, il a gagné deux fois le championnat de F1. Il a couru pour Lotus, BRM, Team RobWalker et Team Brabham. Il est mort dans un crash d''avion.'),
(20, 0, 'CLARK', 'Jim', 'Britannique', '1936-03-04', '1968-04-07', 'Photo-pilote/Clark.jpg', 'Pilote d''origine Britannique, il a gagné deux fois le championnat de F1. Il a couru pour Lotus. Il est connu pour avoir marqué le sport automobile.'),
(21, 0, 'SURTEES', 'John', 'Britannique', '1934-02-11', NULL, 'Photo-pilote/Surtees.jpg', 'Pilote d''origine Britannique, il a gagné une seule fois le championnat de F1. Il a couru pour Honda, Ferrari et cooper. Il est connu pour être un pilote de moto GP mais qui à gagné un championnat du monde en F1.'),
(22, 0, 'HULME', 'Denny', 'Néo-Zélandaise', '1936-06-18', '1992-10-04', 'Photo-pilote/Hulme.jpg', 'Pilote d''origine Néo-Zélandaise, il a été une fois champion de F1. Il a couru pour Cooper et Brabham.'),
(23, 0, 'STEWART', 'Jackie', 'Britannique', '1939-06-11', NULL, 'Photo-pilote/Stewart.jpg', 'Pilote d''origine Britannique, il a été trois fois champion de F1 (1969, 1971 et 1973). Il a couru pour BRM, Matra, March et Tyrell.'),
(24, 0, 'RINDT', 'Jochen', 'Autrichien', '1942-04-18', '1970-09-05', 'Photo-pilote/Rindt.jpg', 'Pilote d''origine Autrichienne, il a été une fois champion de F1. Il a couru pour Lotus.Il est connu pour s''être vu décerner un titre posthume.'),
(25, 0, 'FITTIPALDI', 'Emerson', 'Brésilien', '1946-12-12', NULL, 'Photo-pilote/Fittipaldi.jpg', 'Pilote d''origine Brésillienne, il a été deux fois champion de F1. Il a couru pour Lotus, Mclaren et Copersucar. Il à été le premier pilote brésilien à gagner un titre en F1.'),
(26, 0, 'ANDRETTI', 'Mario', 'Américain', '1940-02-28', NULL, 'Photo-pilote/Andretti.jpg', 'Pilote d''origine Américaine,il a remporté une fois le championnat du monde de Formule 1 en 1978. Il à couru pour Lotus, Ferrari, Alfa Roméo et Williams.'),
(27, 0, 'SCHECKTER', 'Jody', 'Sud-Africain', '1950-01-29', NULL, 'Photo-pilote/Scheckter.jpg', 'Pilote d''origine Sud-Africaine, il a remporté deux fois le championnat du monde de Formule 1 en 1979. Il à couru pour Mclaren, Ferrari, Tyrell et Wolf.'),
(28, 0, 'JONES', 'Alan', 'Australien', '1946-11-02', NULL, 'Photo-pilote/Jones.jpg', 'Pilote d''origine Australienne,il a remporté une fois le championnat du monde de Formule 1 en 1980. Il à couru pour Williams.'),
(29, 0, 'PIQUET', 'Nelson', 'Brésilien', '1952-08-17', NULL, 'Photo-pilote/Piquet.jpg', 'Pilote d''origine Brésilienne, il a remporté trois fois le championnat du monde de Formule 1 en 1981, 1983 et 1987. Il à couru pour Lotus, William et Benetton.'),
(30, 0, 'ROSBERG', 'Keke', 'Finlandais', '1948-12-06', NULL, 'Photo-pilote/Rosberg.jpg', 'Pilote d''origine Finlandaise, il a remporté une fois le championnat du monde de Formule 1 en 1982. Il à couru pour Williams, Mclaren et Honda. Son fils et Nico ROSBERG actuellement pilote de F1.'),
(31, 0, 'MANSELL', 'Nigel', 'Britannique', '1953-08-08', NULL, 'Photo-pilote/Mansell.jpg', 'Pilote d''origine Britannique,il a remporté une fois le championnat du monde de Formule 1 en 1992. Il à couru pour Williams, Mclaren, Ferrari, Lotus.'),
(32, 0, 'HILL', 'Damon', 'Britannique', '1960-09-17', NULL, 'Photo-pilote/Hill_D.jpg', 'Pilote d''origine Britannique,il a remporté une fois le championnat du monde de Formule 1 en 1996. Il à couru pour Jordan et Williams. C''est le fils de Graham HILL'),
(33, 0, 'VILLENEUVE', 'Jacques', 'Canadien', '1971-04-09', NULL, 'Photo-pilote/Villeneuve_J.jpg', 'Pilote d''origine Canadienne,il a remporté une fois le championnat du monde de Formule 1 en 1997. Il à couru pour BMW, Sauber, Renault et Williams. C''est le fils de Gilles Villeneuve.'),
(34, 0, 'HAKKINEN', 'Mika', 'Finlandais', '1968-09-28', NULL, 'Photo-pilote/Hakkinen.jpg', 'Pilote d''origine Finlandaise,il a remporté deux fois le championnat du monde de Formule 1 en 1998 et 1999. Il à couru pour Lotus, Mclaren et Mercedes.'),
(35, 0, 'BUTTON', 'Jenson', 'Britannique', '1980-01-19', NULL, 'Photo-pilote/Button.jpg', 'Pilote d''origine Britannique,il a remporté une fois le championnat du monde de Formule 1 en 2009. Il à couru pour Mclaren, Renault, Honda et Williams.');

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE IF NOT EXISTS `saison` (
  `IDSAISON` int(11) NOT NULL AUTO_INCREMENT,
  `IDTAG` int(11) NOT NULL,
  `ANNEESAISON` int(11) DEFAULT NULL,
  `CHAMPIDPILOTE` char(50) DEFAULT NULL,
  `CHAMPECUPILOTE` char(50) DEFAULT NULL,
  PRIMARY KEY (`IDSAISON`),
  KEY `I_FK_SAISON_TAG` (`IDTAG`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Contenu de la table `saison`
--

INSERT INTO `saison` (`IDSAISON`, `IDTAG`, `ANNEESAISON`, `CHAMPIDPILOTE`, `CHAMPECUPILOTE`) VALUES
(65, 0, 2014, '12', '16'),
(64, 0, 2013, '10', '17'),
(63, 0, 2012, '10', '17'),
(62, 0, 2011, '10', '17'),
(61, 0, 2010, '10', '17'),
(60, 0, 2009, '35', '9'),
(59, 0, 2008, '12', '15'),
(58, 0, 2007, '11', '19'),
(57, 0, 2006, '9', '18'),
(56, 0, 2005, '9', '18'),
(55, 0, 2004, '4', '19'),
(54, 0, 2003, '4', '19'),
(53, 0, 2002, '4', '19'),
(52, 0, 2001, '4', '19'),
(51, 0, 2000, '4', '19'),
(50, 0, 1999, '34', '15'),
(49, 0, 1998, '34', '15'),
(48, 0, 1997, '33', '22'),
(47, 0, 1996, '32', '22'),
(46, 0, 1995, '4', '7'),
(45, 0, 1994, '4', '7'),
(44, 0, 1993, '6', '22'),
(43, 0, 1992, '31', '22'),
(42, 0, 1991, '3', '15'),
(41, 0, 1990, '3', '15'),
(40, 0, 1989, '6', '15'),
(39, 0, 1988, '3', '15'),
(38, 0, 1987, '29', '22'),
(37, 0, 1986, '6', '15'),
(36, 0, 1985, '6', '15'),
(35, 0, 1984, '1', '15'),
(34, 0, 1983, '29', '8'),
(33, 0, 1982, '30', '22'),
(32, 0, 1981, '29', '8'),
(31, 0, 1980, '28', '22'),
(30, 0, 1979, '27', '19'),
(29, 0, 1978, '26', '20'),
(28, 0, 1977, '1', '19'),
(27, 0, 1976, '2', '15'),
(26, 0, 1975, '1', '19'),
(25, 0, 1974, '25', '15'),
(24, 0, 1973, '23', '21'),
(23, 0, 1972, '25', '20'),
(22, 0, 1971, '23', '21'),
(21, 0, 1970, '24', '20'),
(20, 0, 1969, '23', '14'),
(19, 0, 1968, '19', '20'),
(18, 0, 1967, '22', '8'),
(17, 0, 1966, '17', '8'),
(16, 0, 1965, '20', '20'),
(15, 0, 1964, '23', '19'),
(14, 0, 1963, '20', '20'),
(13, 0, 1962, '19', '10'),
(12, 0, 1961, '18', '19'),
(11, 0, 1960, '17', '11'),
(10, 0, 1959, '17', '11'),
(9, 0, 1958, '16', '19'),
(8, 0, 1957, '13', '13'),
(7, 0, 1956, '13', '19'),
(6, 0, 1955, '13', '16'),
(5, 0, 1954, '13', '13'),
(4, 0, 1953, '15', '19'),
(3, 0, 1952, '15', '19'),
(2, 0, 1951, '13', '4'),
(1, 0, 1950, '14', '4');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `IDTAG` int(11) NOT NULL,
  `LIBTAG` char(50) DEFAULT NULL,
  PRIMARY KEY (`IDTAG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
