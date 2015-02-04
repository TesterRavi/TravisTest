USE ``;

-- Table structure for table `hazmat_instructions`
--

DROP TABLE IF EXISTS `hazmat_instructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hazmat_instructions` (
  `hazmat_instruction` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`hazmat_instruction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hazmat_instructions`
--

LOCK TABLES `hazmat_instructions` WRITE;
/*!40000 ALTER TABLE `hazmat_instructions` DISABLE KEYS */;
INSERT INTO `hazmat_instructions` VALUES ('hold','Hazmat Hold',1),('ship','Hazmat Ship',1);
/*!40000 ALTER TABLE `hazmat_instructions` ENABLE KEYS */;
UNLOCK TABLES;

--
