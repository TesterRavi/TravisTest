USE ``;

-- Table structure for table `copy_sections`
--

DROP TABLE IF EXISTS `copy_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_sections` (
  `copy_section` varchar(50) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`copy_section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_sections`
--

LOCK TABLES `copy_sections` WRITE;
/*!40000 ALTER TABLE `copy_sections` DISABLE KEYS */;
INSERT INTO `copy_sections` VALUES ('Product Fiber Content',1),('Production Additionial Information',1),('Production Description',1);
/*!40000 ALTER TABLE `copy_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
