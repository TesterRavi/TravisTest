USE ``;

-- Table structure for table `inventory_accuracy_log`
--

DROP TABLE IF EXISTS `inventory_accuracy_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_accuracy_log` (
  `event_id` int(10) unsigned NOT NULL,
  `sku` int(10) unsigned NOT NULL,
  `previous_available` int(10) unsigned NOT NULL,
  `new_available` int(10) unsigned NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event` varchar(100) CHARACTER SET utf8 NOT NULL,
  `event_start_date` date NOT NULL,
  `event_start_time` time NOT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `style_num` varchar(45) NOT NULL,
  `style` varchar(255) NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(20) NOT NULL,
  `was_inventory_active` tinyint(3) unsigned NOT NULL,
  KEY `event_start_date` (`event_start_date`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_accuracy_log`
--

LOCK TABLES `inventory_accuracy_log` WRITE;
/*!40000 ALTER TABLE `inventory_accuracy_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_accuracy_log` ENABLE KEYS */;
UNLOCK TABLES;

--
