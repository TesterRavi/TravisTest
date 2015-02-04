USE ``;

-- Table structure for table `dglp_templates_dglp_sections`
--

DROP TABLE IF EXISTS `dglp_templates_dglp_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dglp_templates_dglp_sections` (
  `template` varchar(40) NOT NULL,
  `section` varchar(25) NOT NULL,
  PRIMARY KEY (`template`,`section`),
  KEY `FK_dglp_templates_dglp_sections::dglp_sections` (`section`),
  CONSTRAINT `FK_dglp_templates_dglp_sections::dglp_sections` FOREIGN KEY (`section`) REFERENCES `dglp_sections` (`section`) ON UPDATE CASCADE,
  CONSTRAINT `FK_dglp_templates_dglp_sections::dglp_templates` FOREIGN KEY (`template`) REFERENCES `dglp_templates` (`template`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dglp_templates_dglp_sections`
--

LOCK TABLES `dglp_templates_dglp_sections` WRITE;
/*!40000 ALTER TABLE `dglp_templates_dglp_sections` DISABLE KEYS */;
INSERT INTO `dglp_templates_dglp_sections` VALUES ('index-www','bodyHeader'),('mk-index','bodyHeader'),('mk-romance','bodyHeader'),('template1','bodyHeader'),('template2','bodyHeader'),('index-www','bottomHero'),('template1','bottomHero'),('template2','bottomHero'),('center-bgimg-reg-page','footer'),('horizontal-reg-page','footer'),('index-www','footer'),('mk-index','footer'),('mk-romance','footer'),('template1','footer'),('template2','footer'),('vertical-reg-page','footer'),('center-bgimg-reg-page','head'),('index-www','head'),('mk-index','head'),('mk-romance','head'),('template1','head'),('template2','head'),('index-www','heroImage'),('mk-index','heroImage'),('mk-romance','heroImage'),('template1','heroImage'),('template2','heroImage'),('index-www','noJavascript'),('mk-index','noJavascript'),('template1','noJavascript'),('template2','noJavascript'),('center-bgimg-reg-page','regForm'),('horizontal-reg-page','regForm'),('index-www','regForm'),('mk-index','regForm'),('template1','regForm'),('template2','regForm'),('vertical-reg-page','regForm');
/*!40000 ALTER TABLE `dglp_templates_dglp_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
