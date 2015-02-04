USE ``;

-- Table structure for table `dglp_resource_types`
--

DROP TABLE IF EXISTS `dglp_resource_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dglp_resource_types` (
  `resource_type` varchar(15) NOT NULL,
  PRIMARY KEY (`resource_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dglp_resource_types`
--

LOCK TABLES `dglp_resource_types` WRITE;
/*!40000 ALTER TABLE `dglp_resource_types` DISABLE KEYS */;
INSERT INTO `dglp_resource_types` VALUES ('anchor'),('div'),('footer_links'),('form'),('html'),('image'),('paragraph'),('style');
/*!40000 ALTER TABLE `dglp_resource_types` ENABLE KEYS */;
UNLOCK TABLES;

--
