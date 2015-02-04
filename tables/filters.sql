USE ``;

-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters` (
  `filter` varchar(100) NOT NULL,
  `filter_type` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`filter`),
  KEY `FK_filters::filter_types` (`filter_type`),
  CONSTRAINT `FK_filters::filter_types` FOREIGN KEY (`filter_type`) REFERENCES `filter_types` (`filter_type`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES ('Filter_PrivateSales_Data_ApiKey','private_sales','private sales filter - api key','2010-12-02 23:49:20'),('Filter_PrivateSales_Data_Copa','private_sales','private sales filter - copa','2010-07-23 04:51:11'),('Filter_PrivateSales_Data_Country','private_sales','private sales filter - country','2010-07-23 04:51:11'),('Filter_PrivateSales_Data_Fraud','private_sales','private sales filter - fraud','2010-07-23 04:51:11'),('Filter_PrivateSales_Data_Gender','private_sales','private sales filter - gender','2010-07-23 04:51:11'),('Filter_PrivateSales_Data_LifeCycle','private_sales','private sales filter - life cycle','2010-07-23 04:51:11'),('Filter_PrivateSales_Data_Loyalty','private_sales','private sales filter - loyalty','2010-07-23 04:51:11'),('Filter_PrivateSales_Data_Msa','private_sales','private sales filter - msa','2010-07-23 04:51:11'),('Filter_PrivateSales_Data_Sid','private_sales','private sales filter - sid','2010-07-23 04:51:11'),('Filter_PrivateSales_Data_State','private_sales','private sales filter - state','2010-07-23 04:51:11'),('Filter_PrivateSales_Data_Url','private_sales','private sales filter - url','2011-04-18 22:08:07'),('Filter_SalesPreview_ApiKey','preview_sales','API Key','2011-04-04 16:31:38'),('Filter_SalesPreview_Copa','preview_sales','COPA','2011-04-04 16:31:38'),('Filter_SalesPreview_Country','preview_sales','Country','2011-04-04 16:31:38'),('Filter_SalesPreview_Fraud','preview_sales','Fraud','2011-04-04 16:31:38'),('Filter_SalesPreview_Gender','preview_sales','Gender','2011-04-04 16:31:38'),('Filter_SalesPreview_LifeCycle','preview_sales','Life Cycle','2011-04-04 16:31:38'),('Filter_SalesPreview_Loyalty','preview_sales','Loyalty','2011-04-04 16:31:38'),('Filter_SalesPreview_Msa','preview_sales','MSA','2011-04-04 16:37:13'),('Filter_SalesPreview_Sid','preview_sales','SID','2011-04-04 16:37:13'),('Filter_SalesPreview_State','preview_sales','State','2011-04-04 16:37:13'),('Filter_Standard_Validation_Alcohol','checkout_dropship','Alcohol Filter','2010-09-20 18:10:43'),('Filter_Standard_Validation_Country','checkout_dropship','Standard Country Validation Filter','2010-07-15 00:06:17'),('Filter_Standard_Validation_POBox','checkout_dropship','Standard POBox Validation Filter','2010-07-15 00:06:17'),('Filter_Standard_Validation_State','checkout_dropship','Standard State Validation Filter','2010-07-15 00:06:17');
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
