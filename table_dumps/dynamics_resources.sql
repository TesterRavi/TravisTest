-- MySQL dump 10.13  Distrib 5.5.34, for Linux (x86_64)
--
-- Host: localhost    Database: hautelook
-- ------------------------------------------------------
-- Server version	5.5.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dynamics_resources`
--

DROP TABLE IF EXISTS `dynamics_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamics_resources` (
  `subdomain` varchar(20) NOT NULL DEFAULT '*',
  `resource_type` varchar(5) NOT NULL DEFAULT 'js',
  `module` varchar(45) NOT NULL DEFAULT '*',
  `controller` varchar(45) NOT NULL DEFAULT '*',
  `action` varchar(45) NOT NULL DEFAULT '*',
  `resource` varchar(100) NOT NULL DEFAULT '',
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subdomain`,`resource_type`,`module`,`controller`,`action`,`resource`,`start_date`,`end_date`),
  KEY `FK_dynamics_resources::dynamics_resource_types` (`resource_type`),
  CONSTRAINT `FK_dynamics_resources::dynamics_resource_types` FOREIGN KEY (`resource_type`) REFERENCES `dynamics_resource_types` (`resource_type`) ON UPDATE CASCADE,
  CONSTRAINT `FK_dynamics_resources::subdomains` FOREIGN KEY (`subdomain`) REFERENCES `subdomains` (`subdomain`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamics_resources`
--

LOCK TABLES `dynamics_resources` WRITE;
/*!40000 ALTER TABLE `dynamics_resources` DISABLE KEYS */;
INSERT INTO `dynamics_resources` VALUES ('*','css','default','*','*','../dynamics/sbdu_header/iaf_switch.css','2011-10-31 07:00:00','2011-11-08 03:00:00',0),('*','css','default','events','*','../dynamics/hidden2.css','2011-05-14 07:00:00','2014-01-01 07:59:59',0),('*','css','default','events','all','../dynamics/carousel_test/carousel.css','2011-01-01 08:00:00','2013-01-01 07:59:59',1),('*','css','default','events','all','../dynamics/onboard/onboard.css','2011-01-01 08:00:00','2026-01-01 07:59:59',2),('bazaar','css','default','login','index','../dynamics/hearst/bazaar_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('blogher','css','default','login','index','../dynamics/blogher/blogher_login.css','2010-08-10 07:00:00','2010-12-10 08:00:00',0),('chris-test','css','default','*','*','../dynamics/juicy_sept/juicy.css','2010-08-31 07:00:00','2010-09-01 06:59:59',1),('cosmogirl','css','default','login','index','../dynamics/hearst/cosmogirl_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('cosmopolitan','css','default','login','index','../dynamics/hearst/cosmopolitan_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('countryliving','css','default','login','index','../dynamics/hearst/countryliving_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('details','css','default','login','index','../dynamics/details/details_login.css','2010-08-17 07:00:00','2010-12-10 08:00:00',0),('earlybird','css','default','login','index','../dynamics/earlybird/earlybird_login.css','2010-09-16 07:00:00','2011-09-16 07:00:00',0),('earlybird','js','default','login','index','../dynamics/earlybird/earlybird_login.js','2010-09-16 07:00:00','2011-09-16 07:00:00',0),('esquire','css','default','login','index','../dynamics/hearst/esquire_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('foodnetwork','css','default','login','index','../dynamics/hearst/foodnetwork_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('housebeauprivate','css','default','login','index','../dynamics/hearst/housebeauprivate_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('housebeautiful','css','default','login','index','../dynamics/hearst/housebeautiful_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('housekeeping','css','default','login','index','../dynamics/hearst/housekeeping_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('idkhsdi','css','default','login','index','../dynamics/idkhsdi/idkhsdi_login.css','2011-08-18 07:00:00','2025-08-18 07:00:00',0),('lucky','css','default','login','index','../dynamics/lucky/lucky_login.css','2010-07-22 07:00:00','2025-07-22 07:00:00',0),('marieclaire','css','default','login','index','../dynamics/hearst/marieclaire_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('men','css','default','login','index','../dynamics/mens/mens_login.css','2010-05-26 07:00:00','2011-07-22 07:00:00',0),('mens','css','default','login','index','../dynamics/mens/mens_login.css','2010-05-26 07:00:00','2011-07-22 07:00:00',0),('oprah','css','default','login','index','../dynamics/hearst/oprah_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('realbeauty','css','default','login','index','../dynamics/hearst/realbeauty_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('redbook','css','default','login','index','../dynamics/hearst/redbook_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('seventeen','css','default','login','index','../dynamics/hearst/seventeen_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('shape','css','default','login','index','../dynamics/shape/shape_login.css','2011-02-18 08:00:00','2025-07-22 07:00:00',0),('shoparatti','css','default','login','index','../dynamics/shoparatti/shoparatti_login.css','2011-07-12 07:00:00','2025-07-22 07:00:00',0),('spamag','css','default','login','index','../dynamics/spa/spamag_login.css','2011-02-18 08:00:00','2025-07-22 07:00:00',0),('townandcountry','css','default','login','index','../dynamics/hearst/townandcountry_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('veranda','css','default','login','index','../dynamics/hearst/veranda_login.css','2010-07-22 07:00:00','2011-07-22 07:00:00',0),('visa','css','default','login','index','../dynamics/visa/visa_login.css','2011-06-27 07:00:00','2025-07-22 07:00:00',0),('www','css','default','*','*','../dynamics/birthday/birthday.css','2010-12-07 08:00:00','2010-12-08 07:59:59',0),('www','css','default','catalog','*','../dynamics/juicytakeover/juicy_takeover.css','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','css','default','checkout','*','../dynamics/juicytakeover/juicy_takeover.css','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','css','default','event','*','../dynamics/juicytakeover/juicy_takeover.css','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','css','default','events','*','../dynamics/juicytakeover/juicy_takeover.css','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','css','default','help','*','../dynamics/juicytakeover/juicy_takeover.css','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','css','default','inventory','*','../dynamics/juicytakeover/juicy_takeover.css','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','css','default','member','*','../dynamics/juicytakeover/juicy_takeover.css','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','css','default','support','*','../dynamics/juicytakeover/juicy_takeover.css','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','catalog','*','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','catalog','index','json2.js','2010-05-21 15:10:00','2010-05-24 02:00:00',1),('www','js','default','catalog','index','localstorage.js','2010-05-21 15:10:00','2010-05-24 02:00:00',2),('www','js','default','checkout','*','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','dglp','index','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','event','*','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','events','*','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','events','all','json2.js','2010-05-21 15:10:00','2010-05-24 02:00:00',1),('www','js','default','events','all','localstorage.js','2010-05-21 15:10:00','2010-05-24 02:00:00',2),('www','js','default','help','*','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','inventory','*','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','inventory','show','json2.js','2010-05-21 15:10:00','2010-05-24 02:00:00',1),('www','js','default','inventory','show','localstorage.js','2010-05-21 15:10:00','2010-05-24 02:00:00',2),('www','js','default','login','index','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','member','*','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www','js','default','support','*','../dynamics/juicytakeover/juicy_takeover.js','2010-04-13 07:00:00','2010-04-14 06:59:00',0),('www2','js','default','events','all','dynamics/announcement.js','2010-05-26 07:00:00','2010-06-26 07:00:00',1);
/*!40000 ALTER TABLE `dynamics_resources` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-23 22:22:35
