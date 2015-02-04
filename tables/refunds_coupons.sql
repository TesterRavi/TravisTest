USE ``;

-- Table structure for table `refunds_coupons`
--

DROP TABLE IF EXISTS `refunds_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refunds_coupons` (
  `refund_date` datetime NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `return_id` int(10) unsigned NOT NULL,
  `coupon_code` varchar(25) NOT NULL,
  PRIMARY KEY (`refund_date`,`order_id`,`return_id`,`coupon_code`),
  KEY `FK_refunds_coupons::coupons` (`coupon_code`),
  CONSTRAINT `FK_refunds_coupons::coupons` FOREIGN KEY (`coupon_code`) REFERENCES `coupons` (`coupon_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_refunds_coupons::refunds` FOREIGN KEY (`refund_date`, `order_id`, `return_id`) REFERENCES `refunds` (`refund_date`, `order_id`, `return_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refunds_coupons`
--

LOCK TABLES `refunds_coupons` WRITE;
/*!40000 ALTER TABLE `refunds_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `refunds_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
