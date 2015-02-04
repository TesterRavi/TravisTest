USE ``;

-- Table structure for table `dglp_templates`
--

DROP TABLE IF EXISTS `dglp_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dglp_templates` (
  `template` varchar(100) NOT NULL,
  PRIMARY KEY (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dglp_templates`
--

LOCK TABLES `dglp_templates` WRITE;
/*!40000 ALTER TABLE `dglp_templates` DISABLE KEYS */;
INSERT INTO `dglp_templates` VALUES ('center-bgimg-reg-page'),('horizontal-reg-page'),('index-stylewatch'),('index-www'),('mk-index'),('mk-romance'),('template1'),('template2'),('vertical-reg-page');
/*!40000 ALTER TABLE `dglp_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
