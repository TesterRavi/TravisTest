USE ``;

-- Table structure for table `return_items_coupons`
--

DROP TABLE IF EXISTS `return_items_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_items_coupons` (
  `item_id` int(10) unsigned NOT NULL,
  `coupon_code` varchar(25) NOT NULL,
  PRIMARY KEY (`item_id`,`coupon_code`),
  KEY `FK_return_items_coupons::coupons` (`coupon_code`),
  CONSTRAINT `FK_return_items_coupons::coupons` FOREIGN KEY (`coupon_code`) REFERENCES `coupons` (`coupon_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_return_items_coupons::return_items` FOREIGN KEY (`item_id`) REFERENCES `return_items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_items_coupons`
--

LOCK TABLES `return_items_coupons` WRITE;
/*!40000 ALTER TABLE `return_items_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_items_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
