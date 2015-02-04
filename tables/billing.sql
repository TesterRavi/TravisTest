USE ``;

-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `billing_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `address2` varchar(45) NOT NULL DEFAULT '',
  `city` varchar(45) NOT NULL,
  `state` varchar(10) NOT NULL DEFAULT '',
  `zipcode` varchar(25) NOT NULL DEFAULT '',
  `country_iso` varchar(2) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `label` varchar(45) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `processor` varchar(20) DEFAULT NULL,
  `card_number_mcrypt` text NOT NULL,
  `card_number` varchar(5) NOT NULL DEFAULT '',
  `card_type` enum('na','visa','master','amex','discover') NOT NULL DEFAULT 'na',
  `email` varchar(100) NOT NULL DEFAULT '',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `card_exp_year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `card_exp_month` enum('0','01','02','03','04','05','06','07','08','09','10','11','12') NOT NULL DEFAULT '0',
  `keep` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `paypal_ba_id` varchar(20) NOT NULL DEFAULT '',
  `bill_me_later_ref_id` varchar(20) NOT NULL DEFAULT '',
  `payment_method` varchar(10) DEFAULT NULL,
  `verified` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`billing_id`),
  UNIQUE KEY `state` (`state`,`member_id`,`first_name`,`last_name`,`address`,`address2`,`city`,`zipcode`,`phone`,`card_number`,`card_type`,`email`,`card_exp_year`,`card_exp_month`,`paypal_ba_id`,`bill_me_later_ref_id`),
  KEY `FK_billing::payment_methods` (`payment_method`),
  KEY `FK_billing::countries` (`country_iso`),
  KEY `FK_billing::members` (`member_id`),
  CONSTRAINT `FK_billing::countries` FOREIGN KEY (`country_iso`) REFERENCES `countries` (`country_iso`) ON UPDATE CASCADE,
  CONSTRAINT `FK_billing::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  CONSTRAINT `FK_billing::payment_methods` FOREIGN KEY (`payment_method`) REFERENCES `payment_methods` (`payment_method`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1599682 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 10240 kB; (`state`) REFER `hautelook_dev/states';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (415752,4133,'nighat','khan','12158 palmer drive','','moorpark','CA','93021','US','2010-03-25 18:35:47','nighat VISA','805-523-7171',0,'3Delta','','3550','visa','','2012-12-07 03:33:07',2013,'03',1,'','','CC','Y'),(1599680,4133,'nighat','khan','12158 palmer drive','','moorpark','AL','93021','US','2012-01-14 09:27:20','nighat Visa','805-523-7171',1,'3Delta','','1111','visa','','2012-10-14 20:47:14',2015,'09',1,'','','CC','Y'),(1599681,4133,'nighat','khan','12158 palmer drive','','moorpark','ONT','93021','US','2012-01-14 09:27:20','nighat Visa','805-523-7171',1,'3Delta','','1111','visa','','2012-10-14 20:47:14',2015,'09',1,'','','CC','Y');
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
