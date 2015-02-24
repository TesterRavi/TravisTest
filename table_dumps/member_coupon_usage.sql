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
-- Table structure for table `member_coupon_usage`
--

DROP TABLE IF EXISTS `member_coupon_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_coupon_usage` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `coupon_code` varchar(25) NOT NULL DEFAULT '',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `member_coupon_status` enum('returned','reusable','single_use') NOT NULL DEFAULT 'single_use',
  PRIMARY KEY (`member_id`,`coupon_code`,`order_item_id`),
  KEY `FK_member_coupon_usage:coupons` (`coupon_code`),
  KEY `FK_member_coupon_usage:order_items` (`order_item_id`),
  CONSTRAINT `FK_member_coupon_usage:coupons` FOREIGN KEY (`coupon_code`) REFERENCES `coupons` (`coupon_code`) ON UPDATE CASCADE,
  CONSTRAINT `FK_member_coupon_usage:members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  CONSTRAINT `FK_member_coupon_usage:order_items` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_coupon_usage`
--

LOCK TABLES `member_coupon_usage` WRITE;
/*!40000 ALTER TABLE `member_coupon_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_coupon_usage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:41
