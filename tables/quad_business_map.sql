USE ``;

-- Table structure for table `quad_business_map`
--

DROP TABLE IF EXISTS `quad_business_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quad_business_map` (
  `business_division_id` varchar(50) NOT NULL,
  `business_department_id` int(11) NOT NULL,
  `business_department_cd` varchar(50) NOT NULL DEFAULT '',
  `business_class_id` int(11) NOT NULL,
  `business_class_cd` varchar(50) NOT NULL DEFAULT '',
  `business_subclass_id` int(11) NOT NULL,
  `business_subclass_cd` varchar(50) NOT NULL DEFAULT '',
  `quad_id` int(11) NOT NULL,
  `is_active_flag` char(1) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`quad_id`,`business_division_id`,`business_department_id`,`business_department_cd`,`business_class_id`,`business_class_cd`,`business_subclass_id`,`business_subclass_cd`),
  KEY `fk_quad_business_map_business_classification` (`business_division_id`,`business_department_id`,`business_department_cd`,`business_class_id`,`business_class_cd`,`business_subclass_id`,`business_subclass_cd`),
  KEY `fk_quad_business_map_quad_id` (`quad_id`),
  CONSTRAINT `fk_quad_business_map_business_classification` FOREIGN KEY (`business_division_id`, `business_department_id`, `business_department_cd`, `business_class_id`, `business_class_cd`, `business_subclass_id`, `business_subclass_cd`) REFERENCES `business_classification` (`business_division_id`, `business_department_id`, `business_department_cd`, `business_class_id`, `business_class_cd`, `business_subclass_id`, `business_subclass_cd`) ON UPDATE CASCADE,
  CONSTRAINT `fk_quad_business_map_quad_id` FOREIGN KEY (`quad_id`) REFERENCES `quads` (`quad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quad_business_map`
--

LOCK TABLES `quad_business_map` WRITE;
/*!40000 ALTER TABLE `quad_business_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `quad_business_map` ENABLE KEYS */;
UNLOCK TABLES;

--
