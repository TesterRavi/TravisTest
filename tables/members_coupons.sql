USE ``;

-- Table structure for table `members_coupons`
--

DROP TABLE IF EXISTS `members_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_coupons` (
  `member_id` int(10) unsigned NOT NULL,
  `coupon_code` varchar(25) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `create_date` datetime NOT NULL,
  `member_coupon_status` enum('returned','reusable','single_use') NOT NULL DEFAULT 'single_use',
  PRIMARY KEY (`member_id`,`coupon_code`,`order_id`),
  KEY `FK_members_coupons::orders` (`order_id`),
  KEY `FK_members_coupons::coupons` (`coupon_code`),
  CONSTRAINT `FK_members_coupons::coupons` FOREIGN KEY (`coupon_code`) REFERENCES `coupons` (`coupon_code`) ON UPDATE CASCADE,
  CONSTRAINT `FK_members_coupons::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_members_coupons::orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_coupons`
--

LOCK TABLES `members_coupons` WRITE;
/*!40000 ALTER TABLE `members_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_coupons` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger members_coupons_ai AFTER INSERT ON members_coupons
FOR EACH ROW
BEGIN

IF NEW.coupon_code like 'HL-PLM%' OR NEW.coupon_code like 'HL-LIV-%' THEN

UPDATE IGNORE coupons
SET expiration_date = NOW()
WHERE coupon_code = NEW.coupon_code;

END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
