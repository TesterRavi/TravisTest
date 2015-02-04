USE ``;

-- Table structure for table `sales_associates`
--

DROP TABLE IF EXISTS `sales_associates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_associates` (
  `sales_associate` varchar(30) NOT NULL,
  `responsible_for` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sales_associate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_associates`
--

LOCK TABLES `sales_associates` WRITE;
/*!40000 ALTER TABLE `sales_associates` DISABLE KEYS */;
INSERT INTO `sales_associates` VALUES ('Aaron Cunningham','Home'),('Alicia Allen','Men'),('Amber Berger','Jewelry, Watches and Accessories'),('Andrea Braun','Women RTW'),('Anne Lustyan','Jewelry, Watches and Accessories'),('Barclee Dancona','Women RTW'),('Beth Kanfer','Women RTW'),('Blowout','DO NOT USE'),('Carlota Espinosa',''),('Carly Willis','Women RTW'),('Cecelia Beier','Home'),('Chris Lepold','Women RTW'),('Connor Luettgen','Home'),('Dana Hauser','Handbags'),('Dana Hauser2','Shoes'),('Dr. Tessie Cummings DVM','Home'),('Edan Portaro','Experiences'),('Elza Hamill','Home'),('Jessica Nguyen','Beauty'),('Kate Richter','Home'),('Kathy Shawver','Women RTW'),('Kecia Hielscher','Home'),('Lisa Sellars','Women RTW'),('Marianne Brennan','Handbags'),('Marisol Bosco','Home'),('Mary Beth Boyle','Women RTW'),('Melanie',''),('Michel Wisoky','Home'),('Michelle Schnittjer','Baby and Kids'),('Mimi Nuelle','Women RTW'),('Miss Wellington Koelpin II','Home'),('Ms. Karley Kiehn V','Home'),('Ms. Selina Streich','Home'),('N/A',''),('Nick Gustin','Men'),('Nicole Anello','Beauty'),('Paul Gladstone','Men'),('Paula Scandone','Beauty'),('Rob Ikehorn','Home'),('Robyn Smith','Baby and Kids'),('Tim Davis','Men'),('Trevor Schinner I','Home'),('Vicky Kalish','Food and Wine');
/*!40000 ALTER TABLE `sales_associates` ENABLE KEYS */;
UNLOCK TABLES;

--
