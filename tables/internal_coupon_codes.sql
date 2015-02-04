USE ``;

-- Table structure for table `internal_coupon_codes`
--

DROP TABLE IF EXISTS `internal_coupon_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internal_coupon_codes` (
  `coupon_code` varchar(25) NOT NULL,
  PRIMARY KEY (`coupon_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internal_coupon_codes`
--

LOCK TABLES `internal_coupon_codes` WRITE;
/*!40000 ALTER TABLE `internal_coupon_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `internal_coupon_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
