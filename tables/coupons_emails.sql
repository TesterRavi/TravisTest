USE ``;

-- Table structure for table `coupons_emails`
--

DROP TABLE IF EXISTS `coupons_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons_emails` (
  `coupon_code` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`coupon_code`,`email`),
  CONSTRAINT `FK_coupons_emails::coupons` FOREIGN KEY (`coupon_code`) REFERENCES `coupons` (`coupon_code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons_emails`
--

LOCK TABLES `coupons_emails` WRITE;
/*!40000 ALTER TABLE `coupons_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
