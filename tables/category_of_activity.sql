USE ``;

-- Table structure for table `category_of_activity`
--

DROP TABLE IF EXISTS `category_of_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_of_activity` (
  `coa` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL DEFAULT '',
  `definition` text,
  PRIMARY KEY (`coa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_of_activity`
--

LOCK TABLES `category_of_activity` WRITE;
/*!40000 ALTER TABLE `category_of_activity` DISABLE KEYS */;
INSERT INTO `category_of_activity` VALUES ('beauty','Beauty','Vertical equals Beauty'),('default','Default','Activity not defined'),('getaways','Getaways','Getaways'),('home','Home','Vertical equals Home'),('jewelry_watches','Jewlery and Watches','Vertical equals Jewelry'),('jewlery_watches','Jewelry and Watches','Vertical equals Jewelry'),('kids','Kids','Department equals Baby & Kids'),('men','Men','Department equals Men'),('womens_accessories','Womens Accessories','Vertical equals Accessories and Department equals Women or Unisex'),('womens_apparel','Womens Apparel','Vertical equals Apparel and Department equals Women');
/*!40000 ALTER TABLE `category_of_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
