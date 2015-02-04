USE ``;

-- Table structure for table `publisher_classes`
--

DROP TABLE IF EXISTS `publisher_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher_classes` (
  `publisher_class` varchar(3) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`publisher_class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher_classes`
--

LOCK TABLES `publisher_classes` WRITE;
/*!40000 ALTER TABLE `publisher_classes` DISABLE KEYS */;
INSERT INTO `publisher_classes` VALUES ('A','Class A ( > 1 million visitors )'),('B','Class B ( 100,000 to 1 million visitors )'),('C','Class C ( < 100,000 visitors )');
/*!40000 ALTER TABLE `publisher_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
