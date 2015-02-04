USE ``;

-- Table structure for table `promo_sections`
--

DROP TABLE IF EXISTS `promo_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_sections` (
  `promo_section` varchar(25) NOT NULL,
  `description` varchar(150) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`promo_section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_sections`
--

LOCK TABLES `promo_sections` WRITE;
/*!40000 ALTER TABLE `promo_sections` DISABLE KEYS */;
INSERT INTO `promo_sections` VALUES ('cart','3. Cart',1),('checkout','4. Checkout Page',1),('event_page','1. Event Page',1),('ipad_event_page 2. iPad E','',0),('iphone_event_page   3. iP','',0),('merch_page','6. Persistent Merchandise Page',1),('receipt','5. Receipt/Order Confirmation Page',1);
/*!40000 ALTER TABLE `promo_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
