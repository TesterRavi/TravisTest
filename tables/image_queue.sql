USE ``;

-- Table structure for table `image_queue`
--

DROP TABLE IF EXISTS `image_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_queue` (
  `image_id` int(10) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) DEFAULT NULL,
  `style_num` varchar(45) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `priority` int(2) DEFAULT '0',
  `base_path` varchar(255) DEFAULT NULL,
  `status` int(3) DEFAULT '50',
  `new_image_id` int(10) DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`image_id`),
  KEY `style_num` (`style_num`),
  KEY `brand` (`brand`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_queue`
--

LOCK TABLES `image_queue` WRITE;
/*!40000 ALTER TABLE `image_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
