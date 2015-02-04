USE ``;

-- Table structure for table `hazmat_ship_methods`
--

DROP TABLE IF EXISTS `hazmat_ship_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hazmat_ship_methods` (
  `hazmat_ship_method` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`hazmat_ship_method`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hazmat_ship_methods`
--

LOCK TABLES `hazmat_ship_methods` WRITE;
/*!40000 ALTER TABLE `hazmat_ship_methods` DISABLE KEYS */;
INSERT INTO `hazmat_ship_methods` VALUES ('air','ORM-D Air',1),('ground','ORM-D Ground',1);
/*!40000 ALTER TABLE `hazmat_ship_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
