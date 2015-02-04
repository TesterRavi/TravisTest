USE ``;

-- Table structure for table `copy_templates_copy_sections`
--

DROP TABLE IF EXISTS `copy_templates_copy_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_templates_copy_sections` (
  `copy_template` varchar(50) NOT NULL,
  `copy_section` varchar(50) NOT NULL,
  PRIMARY KEY (`copy_template`,`copy_section`),
  KEY `FK_copy_templates_copy_sections::copy_sections` (`copy_section`),
  CONSTRAINT `FK_copy_templates_copy_sections::copy_sections` FOREIGN KEY (`copy_section`) REFERENCES `copy_sections` (`copy_section`) ON UPDATE CASCADE,
  CONSTRAINT `FK_copy_templates_copy_sections::copy_templates` FOREIGN KEY (`copy_template`) REFERENCES `copy_templates` (`copy_template`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_templates_copy_sections`
--

LOCK TABLES `copy_templates_copy_sections` WRITE;
/*!40000 ALTER TABLE `copy_templates_copy_sections` DISABLE KEYS */;
INSERT INTO `copy_templates_copy_sections` VALUES ('Sole Society Credit','Product Fiber Content'),('One Size Large Style','Production Additionial Information'),('One Size Small Style','Production Additionial Information'),('True to Size Style','Production Additionial Information'),('Bottoms Sold Separately Note','Production Description'),('Drop Ship Note','Production Description'),('Excluding California Note','Production Description'),('Excluding Canada Note','Production Description'),('Pre-Owned Note','Production Description'),('Tops Sold Separately Note','Production Description');
/*!40000 ALTER TABLE `copy_templates_copy_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
