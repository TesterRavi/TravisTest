USE ``;

-- Table structure for table `nordstrom_properties`
--

DROP TABLE IF EXISTS `nordstrom_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nordstrom_properties` (
  `property_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_name` varchar(255) NOT NULL DEFAULT '',
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`property_id`,`property_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nordstrom_properties`
--

LOCK TABLES `nordstrom_properties` WRITE;
/*!40000 ALTER TABLE `nordstrom_properties` DISABLE KEYS */;
INSERT INTO `nordstrom_properties` VALUES (1,'Nordstrom','2014-08-22 09:08:41','2014-01-25 11:20:06'),(2,'N.com','2014-10-12 19:18:03','2014-12-29 06:27:39'),(3,'Rack','2015-01-20 20:08:47','2014-12-05 22:00:22'),(4,'NR.com','2014-10-06 10:47:44','2015-01-22 12:51:12');
/*!40000 ALTER TABLE `nordstrom_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
