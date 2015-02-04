USE ``;

-- Table structure for table `business_department`
--

DROP TABLE IF EXISTS `business_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_department` (
  `business_department_id` int(11) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL,
  `is_active_flag` char(1) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`business_department_id`,`description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_department`
--

LOCK TABLES `business_department` WRITE;
/*!40000 ALTER TABLE `business_department` DISABLE KEYS */;
INSERT INTO `business_department` VALUES (55,'WMN Specialized - Plus Sizes','Y',0,'2013-10-21 23:09:51'),(67,'SP Hos/Sock','Y',0,'2013-10-21 23:09:51'),(103,'SP Wm Act Sh','Y',0,'2013-10-21 23:09:51'),(143,'SP Lingerie','Y',0,'2013-10-21 23:09:51'),(160,'Girls Inf/Tod/4-6X/7-14','Y',0,'2013-10-21 23:09:51'),(161,'SP Access','Y',0,'2013-10-21 23:09:51'),(162,'SP Dresses','Y',0,'2013-10-21 23:09:51'),(163,'SP Active','Y',0,'2013-10-21 23:09:51'),(164,'SP Better Sportswear','Y',0,'2013-10-21 23:09:51'),(166,'Beauty','Y',0,'2013-10-21 23:09:51'),(169,'SP Bridge Sptwr','Y',0,'2013-10-21 23:09:51'),(172,'Tops','Y',0,'2013-10-21 23:09:51'),(173,'Dress Shirts & Neckwear','Y',0,'2013-10-21 23:09:51'),(174,'Suits','Y',0,'2013-10-21 23:09:51'),(178,'Kids Shoes','Y',0,'2013-10-21 23:09:51'),(179,'Active Shoes','Y',0,'2013-10-21 23:09:51'),(191,'Dress Shoes','Y',0,'2013-10-21 23:09:51'),(192,'SP WMNs Shoes','Y',0,'2013-10-21 23:09:51'),(230,'SP Gifts','Y',0,'2013-10-21 23:09:51'),(240,'Casual Shoes','Y',0,'2013-10-21 23:09:51'),(240,'Furniture','Y',0,'2013-10-21 23:09:51'),(243,'SP Coats','Y',0,'2013-10-21 23:09:51'),(250,'Rugs','Y',0,'2013-10-21 23:09:51'),(256,'SP Hnbg Slg Belts','Y',0,'2013-10-21 23:09:51'),(258,'Bottoms & Outerwear','Y',0,'2013-10-21 23:09:51'),(264,'SP Jewelry & Watches','Y',0,'2013-10-21 23:09:51'),(267,'Personal Furnishings & Accessories','Y',0,'2013-10-21 23:09:51'),(287,'SP Contemporary','Y',0,'2013-10-21 23:09:51'),(490,'SP Bridge Shoes','Y',0,'2013-10-21 23:09:51'),(522,'SP WMNs Comf Shoe','Y',0,'2013-10-21 23:09:51'),(543,'Boys Inf/Tod/4-7/8-20','Y',0,'2013-10-21 23:09:51'),(561,'Advanced Collections','Y',0,'2013-10-21 23:09:51'),(700,'Kids Home','Y',0,'2013-10-21 23:09:51'),(800,'Kids Gear','Y',0,'2013-10-21 23:09:51'),(900,'Kids Toys','Y',0,'2013-10-21 23:09:51'),(910,'Kids Books/Music/Video','Y',0,'2013-10-21 23:09:51'),(920,'Maternity','Y',0,'2013-10-21 23:09:51'),(991,'Jwa Misc For History','Y',0,'2013-10-21 23:09:51'),(993,'Handbags Misc For History','Y',0,'2013-10-21 23:09:51'),(994,'Home Misc For History','Y',0,'2013-10-21 23:09:51'),(994,'Kids Misc For History','Y',0,'2013-10-21 23:09:51'),(996,'Shoes Misc For History','Y',0,'2013-10-21 23:09:51'),(998,'Experiences Misc For History','Y',0,'2013-10-21 23:09:51'),(999,'RTW Misc For History','Y',0,'2013-10-21 23:09:51');
/*!40000 ALTER TABLE `business_department` ENABLE KEYS */;
UNLOCK TABLES;

--
