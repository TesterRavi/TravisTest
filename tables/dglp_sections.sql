USE ``;

-- Table structure for table `dglp_sections`
--

DROP TABLE IF EXISTS `dglp_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dglp_sections` (
  `section` varchar(25) NOT NULL,
  PRIMARY KEY (`section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dglp_sections`
--

LOCK TABLES `dglp_sections` WRITE;
/*!40000 ALTER TABLE `dglp_sections` DISABLE KEYS */;
INSERT INTO `dglp_sections` VALUES ('bodyHeader'),('bottomHero'),('footer'),('head'),('heroImage'),('noJavascript'),('regForm');
/*!40000 ALTER TABLE `dglp_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
