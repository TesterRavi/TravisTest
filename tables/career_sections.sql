USE ``;

-- Table structure for table `career_sections`
--

DROP TABLE IF EXISTS `career_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career_sections` (
  `career_section` varchar(20) NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`career_section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_sections`
--

LOCK TABLES `career_sections` WRITE;
/*!40000 ALTER TABLE `career_sections` DISABLE KEYS */;
INSERT INTO `career_sections` VALUES ('Job Description',2,1,'2009-10-23 00:25:15'),('Position',1,1,'2009-10-23 00:25:15'),('Qualifications',3,1,'2009-10-23 00:25:15');
/*!40000 ALTER TABLE `career_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
