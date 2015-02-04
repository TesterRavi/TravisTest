USE ``;

-- Table structure for table `style_groups`
--

DROP TABLE IF EXISTS `style_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `style_groups` (
  `style_group_id` varchar(50) NOT NULL,
  PRIMARY KEY (`style_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style_groups`
--

LOCK TABLES `style_groups` WRITE;
/*!40000 ALTER TABLE `style_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `style_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
