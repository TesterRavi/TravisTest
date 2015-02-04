USE ``;

-- Table structure for table `api_auth`
--

DROP TABLE IF EXISTS `api_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_auth` (
  `api_key` varchar(36) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`api_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_auth`
--

LOCK TABLES `api_auth` WRITE;
/*!40000 ALTER TABLE `api_auth` DISABLE KEYS */;
INSERT INTO `api_auth` VALUES ('04ab0c968ae635de560e0b8203113911','Inadco.com'),('09f853ed83b5399d9089faae2f5dac070','broken coffee bean rss - here to stem the tide of errors'),('162a172b2c02c3d693e4efb85a900967','TMZ'),('1666c786f97b2ab1e5c8ba8a3e1d3f51','HauteLook Android'),('7032d7c6893ce0b0cdafc5f82f902749','Getaways'),('7aa9b4cec01e83bb79237f0f11ef3d63','CloudFour Mobile Website'),('9f853ed83b5399d9089faae2f5dac070','Coffeebean RSS'),('a5a4d56c84b8d8cd0e0a0920edb8994c','HauteLook E-commerce'),('bd37ca5f9731b179ed5698d4491759e7','Sociable'),('c4c331e262ff6ab6f040a477022d0137','Small Society iPhone/iPad'),('d07756cb5fb715fc7cb10fba76152d52','Alvenda Facebook'),('e5674348afb80ddba18d3263606fd360','skyrockit');
/*!40000 ALTER TABLE `api_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
