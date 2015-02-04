USE ``;

-- Table structure for table `admin_zero_out_giftcard_log`
--

DROP TABLE IF EXISTS `admin_zero_out_giftcard_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_zero_out_giftcard_log` (
  `giftcard_number` varchar(30) NOT NULL,
  `previous_amount` decimal(10,2) NOT NULL,
  `zero_out_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`giftcard_number`,`zero_out_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_zero_out_giftcard_log`
--

LOCK TABLES `admin_zero_out_giftcard_log` WRITE;
/*!40000 ALTER TABLE `admin_zero_out_giftcard_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_zero_out_giftcard_log` ENABLE KEYS */;
UNLOCK TABLES;

--
