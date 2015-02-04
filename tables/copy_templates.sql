USE ``;

-- Table structure for table `copy_templates`
--

DROP TABLE IF EXISTS `copy_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_templates` (
  `copy_template` varchar(50) NOT NULL,
  `template` text NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`copy_template`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_templates`
--

LOCK TABLES `copy_templates` WRITE;
/*!40000 ALTER TABLE `copy_templates` DISABLE KEYS */;
INSERT INTO `copy_templates` VALUES ('Bottoms Sold Separately Note','Bottom sold separately.',1),('Drop Ship Note','Please note your order will be shipped directly from the brand. Orders cannot be shipped to Australia, Canada, Alaska, Hawaii, Puerto Rico or P.O. Boxes.',1),('Excluding California Note','Orders cannot be shipped to California.',1),('Excluding Canada Note','Orders cannot be shipped to Canada, Alaska, Hawaii, Puerto Rico or P.O. Boxes.',1),('One Size Large Style','Fit: this style runs one size large',1),('One Size Small Style','Fit: this style runs one size small',1),('Pre-Owned Note','Item is pre-owned.',1),('Sole Society Credit','Shoes by Sole Society. Complete the look at www.solesociety.com, the chic new address for the shoe obsessed.',1),('Tops Sold Separately Note','Top sold separately.',1),('True to Size Style','Fit: this style fits true to size',1);
/*!40000 ALTER TABLE `copy_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
