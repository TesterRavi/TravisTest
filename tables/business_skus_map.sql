USE ``;

-- Table structure for table `business_skus_map`
--

DROP TABLE IF EXISTS `business_skus_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_skus_map` (
  `sku` int(11) NOT NULL,
  `business_division_id` varchar(50) NOT NULL,
  `business_department_id` int(11) NOT NULL,
  `business_department_cd` varchar(50) NOT NULL DEFAULT '',
  `business_class_id` int(11) NOT NULL,
  `business_class_cd` varchar(50) NOT NULL DEFAULT '',
  `business_subclass_id` int(11) NOT NULL,
  `business_subclass_cd` varchar(50) NOT NULL DEFAULT '',
  `is_active_flag` char(1) NOT NULL,
  `concurrent_version_no` int(11) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sku`),
  KEY `fk_business_skus_map` (`business_division_id`,`business_department_id`,`business_department_cd`,`business_class_id`,`business_class_cd`,`business_subclass_id`,`business_subclass_cd`),
  CONSTRAINT `fk_business_skus_map` FOREIGN KEY (`business_division_id`, `business_department_id`, `business_department_cd`, `business_class_id`, `business_class_cd`, `business_subclass_id`, `business_subclass_cd`) REFERENCES `business_classification` (`business_division_id`, `business_department_id`, `business_department_cd`, `business_class_id`, `business_class_cd`, `business_subclass_id`, `business_subclass_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_skus_map`
--

LOCK TABLES `business_skus_map` WRITE;
/*!40000 ALTER TABLE `business_skus_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `business_skus_map` ENABLE KEYS */;
UNLOCK TABLES;

--
