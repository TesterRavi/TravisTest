USE ``;

-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `acl_role` varchar(100) NOT NULL,
  `parent_acl_role` varchar(100) DEFAULT NULL,
  `description` varchar(500) NOT NULL DEFAULT '',
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned DEFAULT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`acl_role`),
  KEY `FK_acl_roles::members1` (`created_by`),
  KEY `FK_acl_roles::members2` (`modified_by`),
  KEY `FK_acl_roles::self` (`parent_acl_role`),
  CONSTRAINT `FK_acl_roles::members1` FOREIGN KEY (`created_by`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_acl_roles::members2` FOREIGN KEY (`modified_by`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_acl_roles::self` FOREIGN KEY (`parent_acl_role`) REFERENCES `acl_roles` (`acl_role`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` VALUES ('Accounting Accounts Payable','Base','','2015-01-22 21:15:33',50920,'2012-01-04 21:51:03',50920),('Accounting Fraud Analyst','Base','','2015-01-22 21:15:33',50920,'2012-01-04 22:31:41',50920),('Accounting Fraud Manager','Accounting Fraud Analyst','','2015-01-22 21:15:33',50920,'2012-01-23 22:41:18',50920),('Accounting Inventory Accountant','Base','','2015-01-22 21:15:33',50920,'2012-01-04 19:13:02',50920),('Accounting Inventory Manager','Accounting Inventory Accountant','','2015-01-22 21:15:33',50920,'2012-01-03 23:28:01',NULL),('Accounting Manager','Accounting Accounts Payable','','2015-01-22 21:15:33',50920,'2012-01-04 19:55:57',50920),('Accounting Revenue Assurance','Base','','2015-01-22 21:15:33',50920,'2012-01-04 18:30:45',50920),('Accounting Supervisor','Accounting Manager','','2015-01-22 21:15:33',50920,'2012-01-03 23:33:15',NULL),('Art Team','Super Employee','Quick Role created to art team can access Admin Events->Sort Event. ','2015-01-22 21:15:33',50920,'2011-08-09 17:27:41',NULL),('Base',NULL,'Base resources everyone has','2015-01-22 21:15:33',50920,'2011-06-15 17:43:18',NULL),('Brand Sales Associate','Base','','2015-01-22 21:15:33',50920,'2012-01-25 18:36:43',50920),('Brand Sales Manager','Brand Sales Associate','','2015-01-22 21:15:33',50920,'2012-01-24 18:59:18',NULL),('Brand Sales Planning Associate','Base','','2015-01-22 21:15:33',50920,'2012-01-25 18:36:34',50920),('Brand Sales Planning Manager','Brand Sales Planning Associate','','2015-01-22 21:15:33',50920,'2012-01-04 22:25:31',NULL),('Brand Sales Voucher Fulfillment Associate','Brand Sales Associate','','2015-01-22 21:15:33',50920,'2012-02-29 16:11:36',NULL),('developer',NULL,'Developers only','2015-01-22 21:15:33',50920,'2011-06-15 21:34:49',NULL),('Director','Production Supervisor','','2015-01-22 21:15:33',50920,'2012-02-06 19:57:42',50920),('Event Operations','Base','','2015-01-22 21:15:33',50920,'2011-12-31 17:44:05',50920),('Fraud Associate','Base','','2015-01-22 21:15:33',50920,'2011-07-18 16:01:18',NULL),('Fulfillment Specialist','Base','','2015-01-22 21:15:33',50920,'2011-07-18 15:39:43',NULL),('Graphics','Base','','2015-01-22 21:15:33',50920,'2012-01-05 22:37:01',50920),('Guest',NULL,'base permission level for non-users','2015-01-22 21:15:33',50920,'2011-07-06 20:53:52',NULL),('Human Resources','Base','','2015-01-22 21:15:33',50920,'2011-07-18 15:28:25',NULL),('Human Resources Manager','Human Resources','','2015-01-22 21:15:33',50920,'2012-04-30 16:25:59',NULL),('Inventory Control','Base','','2015-01-22 21:15:33',50920,'2011-07-14 16:16:00',50920),('Marketing','Base','','2015-01-22 21:15:33',50920,'2011-07-18 15:30:59',NULL),('Marketing Communications','Marketing Member Engagement','','2015-01-22 21:15:33',50920,'2011-10-12 22:15:51',NULL),('Marketing Communications Associate','Marketing Communications','','2015-01-22 21:15:33',50920,'2011-10-12 22:16:58',NULL),('Marketing Email','Base','','2015-01-22 21:15:33',50920,'2011-12-27 23:09:20',NULL),('Marketing Graphics','Base','','2015-01-22 21:15:33',50920,'2011-10-12 22:55:20',NULL),('Marketing Manager','Marketing Supervisor','','2015-01-22 21:15:33',50920,'2011-10-12 22:53:24',NULL),('Marketing Member Engagement','Base','','2015-01-22 21:15:33',50920,'2011-10-12 22:15:07',NULL),('Marketing Mobile Platform','Base','','2015-01-22 21:15:33',50920,'2011-10-12 22:54:29',NULL),('Marketing Online Manager','Base','','2015-01-22 21:15:33',50920,'2011-10-12 22:54:02',NULL),('Marketing Product Manager','Base','','2015-01-22 21:15:33',50920,'2011-10-12 22:55:44',50920),('Marketing Supervisor','Marketing Communications Associate','','2015-01-22 21:15:33',50920,'2011-10-12 22:52:32',NULL),('Member Care Agent','Base','','2015-01-22 21:15:33',50920,'2012-01-04 22:18:12',50920),('Member Care Director','Member Care Supervisor Plus Dropship Returns','','2015-01-22 21:15:33',50920,'2012-10-11 14:50:59',50920),('Member Care Manager','Member Care Report Analyst','','2015-01-22 21:15:33',50920,'2011-12-14 18:09:45',NULL),('Member Care Report Analyst','Member Care Supervisor Plus Dropship Returns','','2015-01-22 21:15:33',50920,'2012-10-11 14:50:48',50920),('Member Care Senior Support Associate','Base','','2015-01-22 21:15:33',50920,'2012-01-04 22:49:33',50920),('Member Care Supervisor','Member Care Senior Support Associate','','2015-01-22 21:15:33',50920,'2011-12-14 18:06:16',50920),('Member Care Supervisor Plus Dropship Returns','Member Care Supervisor','','2015-01-22 21:15:33',50920,'2012-10-11 14:50:17',NULL),('Nordstrom Sale Stats','Base','','2015-01-22 21:15:33',50920,'2012-03-22 14:28:08',50920),('Order Unpicker','Super Employee','temp role for people to unpick orders','2015-01-22 21:15:33',50920,'2011-11-28 18:33:42',NULL),('PO Handler','Base','','2015-01-22 21:15:33',50920,'2012-04-30 15:58:17',NULL),('Production Associate','Production Studio','','2015-01-22 21:15:33',50920,'2011-07-14 16:21:23',NULL),('Production Studio','Base','','2015-01-22 21:15:33',50920,'2012-01-04 18:05:02',50920),('Production Supervisor','Production Associate','','2015-01-22 21:15:33',50920,'2011-07-14 16:21:47',50920),('Production Supervisor Plus Metrics','Production Supervisor','','2015-01-22 21:15:33',50920,'2012-04-30 16:50:18',NULL),('Samples','Base','','2015-01-22 21:15:33',50920,'2012-01-04 18:04:49',50920),('Super Employee','Base','Temporary role all employees have for launch','2015-01-22 21:15:33',50920,'2011-06-15 17:45:19',NULL),('Warehouse Associate','Base','','2015-01-22 21:15:33',50920,'2012-01-17 19:48:51',50920),('Warehouse Associate and Docset Printer','Warehouse Associate','','2015-01-22 21:15:33',50920,'2012-01-01 17:40:48',NULL),('Warehouse Fulfillment Specialist','Warehouse Lead','','2015-01-22 21:15:33',50920,'2012-01-01 17:46:29',NULL),('Warehouse Inventory Coordinator','Warehouse Associate','','2015-01-22 21:15:33',50920,'2012-01-05 18:35:12',50920),('Warehouse Lead','Warehouse Inventory Coordinator','','2015-01-22 21:15:33',50920,'2012-01-02 17:13:58',50920),('Warehouse Lead And Docset Printer','Warehouse Lead','','2015-01-22 21:15:33',50920,'2012-01-01 17:43:51',NULL),('Warehouse Manager','Warehouse Lead And Docset Printer','','2015-01-22 21:15:33',50920,'2012-01-02 17:54:49',50920),('Warehouse Returns Specialist','Base','','2015-01-22 21:15:33',50920,'2012-01-17 19:48:44',50920);
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER acl_roles_bi BEFORE INSERT ON acl_roles
FOR EACH ROW
BEGIN

SET NEW.create_date = NOW();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
