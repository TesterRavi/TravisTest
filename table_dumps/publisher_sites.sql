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
-- Table structure for table `publisher_sites`
--

DROP TABLE IF EXISTS `publisher_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher_sites` (
  `site_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher_id` int(10) unsigned NOT NULL,
  `site_name` varchar(45) NOT NULL,
  `status` smallint(5) unsigned NOT NULL DEFAULT '0',
  `slug` varchar(20) NOT NULL,
  `url` varchar(45) NOT NULL,
  `interest` varchar(30) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `banner_hex` varchar(6) DEFAULT NULL,
  `template_id` smallint(5) unsigned NOT NULL,
  `unique_start` int(10) unsigned NOT NULL,
  `unique_finish` int(10) unsigned NOT NULL,
  `visitors_start` int(10) unsigned NOT NULL,
  `visitors_finish` int(10) unsigned NOT NULL,
  `traffic_source` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  PRIMARY KEY (`site_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `publisher_id` (`publisher_id`),
  CONSTRAINT `FK_PublisherSites::Publishers` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COMMENT='Status: 0 = Pending, 10 = Active, 15 = On Hold, 20 = Decline';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher_sites`
--

LOCK TABLES `publisher_sites` WRITE;
/*!40000 ALTER TABLE `publisher_sites` DISABLE KEYS */;
INSERT INTO `publisher_sites` VALUES (1,1,'Quality Production',10,'blingware','www.hautelook.com','quality clothing','/publishers/qualityproduction.jpg',NULL,0,0,20000,0,20000,'Google Analytics','2009-11-03 16:57:15','2009-11-03 17:01:50','2010-04-21 09:22:00'),(2,2,'Andy\'s HauteLook Blog',10,'hautelookandy','hautelookandy.wordpress.com','None','',NULL,0,0,20000,0,20000,'Google Analytics','2009-11-03 16:58:53',NULL,'2009-11-18 11:46:24'),(3,3,'Denimology',10,'denimology','denimology.com','none','/publishers/denimology.jpg',NULL,0,1000000,2500000,1000000,2500000,'Google Analytics','2009-11-04 09:40:54',NULL,'2010-01-07 14:24:27'),(4,4,'Bag Bliss',10,'bagbliss','BagBliss.com','bags','/publishers/bagbliss.jpg',NULL,0,100000,250000,100000,250000,'Google Analytics','2009-11-04 14:34:46','2009-12-08 00:11:44','2009-11-06 18:42:02'),(5,5,'A New Mode',10,'anewmode','anewmode.com','None','/publishers/anewmode.png',NULL,0,20000,50000,20000,50000,'Google Analytics','2009-11-04 15:25:31','2009-11-09 15:18:02','2009-11-04 15:29:29'),(6,6,'The Budget Babe',10,'thebudgetbabe','www.thebudgetbabe.com','none','/publishers/thebudgetbabe.jpg',NULL,0,100000,250000,250000,500000,'Google Analytics','2009-11-05 10:09:59',NULL,'2009-12-11 10:09:38'),(7,7,'Temptalia',10,'temptalia','temptalia.com','None','/publishers/temptalia.jpg',NULL,0,250000,500000,500000,1000000,'Google Analytics','2009-11-12 10:35:23',NULL,'2009-11-12 10:35:42'),(8,8,'The Fashionable Housewife',10,'fashionablemedia','thefashionablehousewife.com','none','/publishers/fashionablemedia.jpg',NULL,0,100000,250000,250000,500000,'Google Analytics','2009-11-12 15:37:19',NULL,'2009-11-12 15:37:38'),(9,9,'sobieblog',10,'sobieblog','www.sobieblog.com','fashion','',NULL,0,0,20000,0,20000,'Google Analytics','2009-11-16 17:40:29',NULL,'2009-11-16 17:42:07'),(10,10,'JediTemple',10,'JediTemple','www.JediTemple.com','all things scifi','/publishers/JediTemple.jpg','ff9900',0,500000,1000000,20000,50000,'Google Analytics','2009-12-08 17:24:18','2009-12-08 17:28:10','2009-12-11 11:00:51'),(11,11,'Vital Juice',10,'vitaljuice','www.vitaljuice.com','health and wellness','',NULL,0,20000,50000,20000,50000,'Google Analytics','2009-12-10 13:50:10',NULL,'2009-12-15 13:03:03'),(12,12,'StyleHive',10,'styehive','www.stylehive.com','na','',NULL,0,1000000,2500000,1000000,2500000,'Google Analytics','2010-03-04 12:27:49',NULL,'2010-03-04 12:30:28'),(13,13,'People StyleWatch',20,'peoplestylewatch','www.peoplestylewatch.com/people/stylewatch','none','',NULL,0,5000000,10000000,5000000,10000000,'OmniTure','2010-04-01 16:06:21',NULL,'2010-04-22 15:27:55'),(14,14,'People StyleWatch',20,'stylewatch','www.peoplestylewatch.com/people/stylewatch','none','',NULL,0,10000000,25000000,10000000,25000000,'Google Analytics','2010-04-01 16:26:30',NULL,'2010-11-11 16:14:43'),(15,15,'PubliserTest',10,'publishertest','www.publishertest.com','flash sales','',NULL,0,0,20000,0,20000,'Google Analytics','2010-04-07 10:51:46',NULL,'2010-08-28 18:59:35'),(16,16,'Mondette',10,'mondette','www.mondette.com','fashion','',NULL,0,0,20000,0,20000,'Google Analytics','2010-04-19 16:09:40',NULL,'2010-04-19 16:11:17'),(17,17,'Hearst',10,'hearst','www.hearst.com','None','',NULL,0,0,20000,0,20000,'Google Analytics','2010-04-22 15:15:47',NULL,'2010-04-22 15:19:30'),(18,19,'Hearst',10,'hearstdigital','www.hearst.com','None','',NULL,0,10000000,25000000,10000000,25000000,'Google Analytics','2010-05-17 12:53:22',NULL,'2010-05-18 10:36:58'),(19,20,'Lucky Magazine',10,'lucky','www.lucky.com','Fashion','','',0,1000000,2500000,1000000,2500000,'Google Analytics','2010-05-24 10:27:12',NULL,'2010-05-24 10:27:35'),(20,21,'SigurniBags',0,'sigurnibags','www.sigurnibags.com','bags','',NULL,0,0,20000,0,20000,'Google Analytics','2010-06-08 10:33:40',NULL,NULL),(21,22,'BlogHer',10,'blogher','www.blogher.com','Fashion','',NULL,0,1000000,2500000,1000000,2500000,'Google Analytics','2010-06-11 14:54:22',NULL,'2010-06-11 14:54:49'),(22,23,'milas site',20,'gummy','www.denim-planetmila.com','prodAJA','',NULL,0,0,20000,250000,500000,'Google Analytics','2010-07-12 07:18:18','2010-07-12 11:58:31','2011-07-19 16:44:32'),(23,23,'mila II publisher',20,'denim-world','www.denim-world.com','testiranje','',NULL,0,0,20000,0,20000,'Google Analytics','2010-07-12 12:02:07',NULL,'2011-07-19 16:44:14'),(24,25,'Details',10,'details','www.details.com','None','',NULL,0,0,20000,0,20000,'Google Analytics','2010-08-12 13:35:59',NULL,'2010-08-12 13:36:42'),(25,26,'Test Publisher',10,'testpub','testpub.com','testpub','',NULL,0,0,20000,0,20000,'Google Analytics','2010-08-28 17:28:08',NULL,'2010-08-28 18:56:08'),(26,27,'earlybird',20,'earlybird','www.twitter.com','None','',NULL,0,0,20000,0,20000,'Google Analytics','2010-09-17 15:08:08',NULL,'2011-07-19 16:44:04'),(27,28,'Lucky',10,'luckymag','www.luckymag.com','None','',NULL,0,0,20000,0,20000,'Google Analytics','2010-10-18 10:32:53',NULL,'2010-10-18 10:34:12'),(28,29,'Kerrys blog',10,'kerryb','kwerrryb.com','none','',NULL,0,0,20000,0,20000,'Google Analytics','2010-10-19 14:08:42',NULL,'2010-10-19 14:09:36'),(29,30,'PSW.com',20,'katiehammill','psw.com','fashion','',NULL,0,0,20000,0,20000,'Google Analytics','2010-10-21 09:29:40',NULL,'2010-11-23 10:50:27'),(30,36,'Kaplow',10,'kaplow','kaplowpr.com','fashion and beauty','',NULL,0,0,20000,0,20000,'Google Analytics','2010-10-25 09:43:57',NULL,'2010-10-25 09:45:59'),(31,37,'Kaplow',0,'kaplowpr','kaplowpr.com','fashion and beauty','',NULL,0,0,20000,0,20000,'Google Analytics','2010-10-25 09:56:19',NULL,NULL),(32,38,'Kaplow PR',10,'kaplowchelsea','kaplowpr.com','Fashion','',NULL,0,0,20000,0,20000,'Google Analytics','2010-10-26 13:11:00',NULL,'2010-10-26 13:11:28'),(33,39,'Apartment Therapy',10,'apartmenttherapy','www.apartmenttherapy.com','Home','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 09:57:52',NULL,'2010-11-23 10:36:05'),(34,40,'Babble.com',10,'babble','www.babble.com','fashion and beauty','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 10:06:22',NULL,'2010-11-23 10:36:31'),(35,41,'Curbed.com',10,'curbed','www.curbed.com','home','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 10:15:27',NULL,'2010-11-23 10:38:23'),(36,42,'Glamour.com',10,'glamour','www.glamour.com','fashion and beauty','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 10:18:32',NULL,'2010-11-23 10:38:34'),(37,43,'Hearst',10,'hearstpublications','hearst.com','fashion beauty home','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 10:21:19',NULL,'2010-11-23 10:39:33'),(38,44,'Los Angeles Times Image Blog',10,'latimes','www.latimes.com/features/image','fashion beauty','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 10:26:09',NULL,'2010-11-23 10:38:43'),(39,45,'New York Daily News',10,'nydailynews','www.nydailynews.com/','Fashion','','',0,0,20000,0,20000,'Google Analytics','2010-11-23 10:34:05',NULL,'2010-11-23 10:37:58'),(40,46,'MyGloss.com',10,'mygloss','www.mygloss.com','beauty','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 10:45:39',NULL,'2010-11-23 10:51:24'),(41,47,'NBCNewYork.com',10,'nbcny','www.nbcnewyork.com','fashion','','',0,0,20000,0,20000,'Google Analytics','2010-11-23 10:48:25',NULL,'2010-11-23 10:52:10'),(42,48,'people.com',10,'people','celebritybabies.people.com/','Kids Fashion','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 10:55:01',NULL,'2010-11-23 11:23:50'),(43,49,'Refinery29.com',10,'refinery29','www.refinery29.com','fashion','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 11:00:17',NULL,'2010-11-23 11:23:11'),(44,50,'ShelterPop.com',10,'shelterpop','www.shelterpop.com','Home','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 11:14:18',NULL,'2010-11-23 11:23:32'),(45,51,'Yahoo Shine',10,'yahooshine','shine.yahoo.com/','fashion beauty','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 11:17:37',NULL,'2010-11-23 11:24:07'),(46,52,'Racked.com',10,'racked','www.racked.com','fashion','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-23 11:21:04',NULL,'2010-11-23 11:22:55'),(47,53,'SheFinds',20,'shefinds','www.shefinds.com','fashion','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-24 11:18:00',NULL,'2010-11-24 11:53:02'),(48,54,'SheFinds',10,'she-finds','www.shefinds.com','fashion','',NULL,0,0,20000,0,20000,'Google Analytics','2010-11-24 11:50:51',NULL,'2010-11-24 11:52:49'),(49,56,'Shape',10,'shape','www.shape.com','none','',NULL,0,0,20000,0,20000,'Google Analytics','2011-02-22 13:41:09',NULL,'2011-02-22 13:41:55'),(50,57,'Spa Magazine',10,'spamag','www.spamagazine.com','None','',NULL,0,0,20000,0,20000,'Google Analytics','2011-03-15 16:01:28',NULL,'2011-03-15 16:02:43'),(51,58,'Visa Partner',10,'visa','www.visa.com','None','',NULL,0,0,20000,0,20000,'Google Analytics','2011-07-06 17:19:52',NULL,'2011-07-06 17:20:12'),(52,60,'Shoparatti',10,'shoparatti','www.shoparatti.com','None','',NULL,0,0,20000,0,20000,'Google Analytics','2011-07-12 15:07:35',NULL,'2011-07-12 15:07:57'),(53,62,'idkhsdi',10,'idkhsdi','hautelook.com','None','',NULL,0,0,20000,0,20000,'Google Analytics','2011-08-16 11:03:02',NULL,'2011-08-16 11:03:27');
/*!40000 ALTER TABLE `publisher_sites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:02
