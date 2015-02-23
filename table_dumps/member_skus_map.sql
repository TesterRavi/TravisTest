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
-- Table structure for table `member_skus_map`
--

DROP TABLE IF EXISTS `member_skus_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_skus_map` (
  `member_division_cd` varchar(50) NOT NULL,
  `member_department_cd` varchar(50) NOT NULL,
  `member_class_cd` varchar(50) NOT NULL,
  `member_subclass_cd` varchar(50) NOT NULL,
  `sku` int(11) NOT NULL,
  `is_active_flag` char(1) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sku`,`member_division_cd`,`member_department_cd`,`member_class_cd`,`member_subclass_cd`),
  KEY `fk_member_skus_map` (`member_division_cd`,`member_department_cd`,`member_class_cd`,`member_subclass_cd`),
  CONSTRAINT `fk_member_skus_map` FOREIGN KEY (`member_division_cd`, `member_department_cd`, `member_class_cd`, `member_subclass_cd`) REFERENCES `member_classification` (`member_division_cd`, `member_department_cd`, `member_class_cd`, `member_subclass_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_skus_map`
--

LOCK TABLES `member_skus_map` WRITE;
/*!40000 ALTER TABLE `member_skus_map` DISABLE KEYS */;
INSERT INTO `member_skus_map` VALUES ('Women','Clothing','Dresses','Daytime',2736241,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736242,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736243,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736244,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736245,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736246,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736247,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736248,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736249,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736250,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736251,'Y',0,'2015-02-23 20:11:35'),('Women','Clothing','Dresses','Daytime',2736252,'Y',0,'2015-02-23 20:11:35'),('Kids','Maternity','Clothing','Tops',2736254,'Y',0,'2015-02-23 20:11:35'),('Kids','Maternity','Clothing','Tops',2736255,'Y',0,'2015-02-23 20:11:35');
/*!40000 ALTER TABLE `member_skus_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_member_skus_map_insert AFTER INSERT ON member_skus_map
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_populate_sku (sku, triggered_at) VALUES (NEW.sku, NOW());
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_member_skus_map_update AFTER UPDATE ON member_skus_map
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_populate_sku (sku, triggered_at) VALUES (OLD.sku, NOW());
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_member_skus_map_delete AFTER DELETE ON member_skus_map
FOR EACH ROW
  BEGIN
    INSERT INTO solr_queue_populate_sku (sku, triggered_at) VALUES (OLD.sku, NOW());
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-23 22:22:53
