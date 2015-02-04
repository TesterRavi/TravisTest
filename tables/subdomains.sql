USE ``;

-- Table structure for table `subdomains`
--

DROP TABLE IF EXISTS `subdomains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdomains` (
  `subdomain` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`subdomain`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdomains`
--

LOCK TABLES `subdomains` WRITE;
/*!40000 ALTER TABLE `subdomains` DISABLE KEYS */;
INSERT INTO `subdomains` VALUES ('','Publisher Sites - '),('*','Default wildcard'),('anewmode','Publisher Sites - anewmode.com'),('bagbliss','Publisher Sites - BagBliss.com'),('bazaar','Harpers Bazaar'),('blingware','Publisher Sites - www.hautelook.com'),('blogher','BlogHer'),('chris','chris'),('chris-test','chris test'),('cosmogirl','Cosmo Girl'),('cosmopolitan','Cosmopolitan'),('countryliving','Country Living'),('denimology','Publisher Sites - denimology.com'),('details','Details'),('earlybird','Earlybird - William Rast'),('esquire','Esquire'),('fashionablemedia','Publisher Sites - thefashionablehousewife.com'),('foodnetwork','The Food Network'),('getaways','Getaways / Bonvoyou'),('hautelookandy','Publisher Sites - hautelookandy.wordpress.com'),('housebeauprivate','House Beautiful Private Event'),('housebeautiful','House Beautiful'),('housekeeping','Good Housekeeping'),('idkhsdi','I dont know how she does it'),('JediTemple','Publisher Sites - www.JediTemple.com'),('lucky','Lucky Magazine'),('marieclaire','Marie Claire'),('men','men'),('mens','mens'),('more','More Magazine Cobranded Reg'),('onbrd','test'),('oprah','Oprah'),('realbeauty','Real Beauty'),('redbook','Redbook'),('seventeen','Seventeen'),('shape','SHAPE Magazine Partnership'),('shoparatti','Partnership with Shoparatti'),('sobieblog','Publisher Sites - www.sobieblog.com'),('spamag','Spa Magazine'),('styehive','Publisher Sites - www.stylehive.com'),('temptalia','Publisher Sites - temptalia.com'),('testchris',''),('thebudgetbabe','Publisher Sites - www.thebudgetbabe.com'),('townandcountry','Town and Country'),('veranda','Veranda'),('visa','Partnership with VISA'),('vitaljuice','Publisher Sites - www.vitaljuice.com'),('www','Main HauteLook site'),('www2','www2');
/*!40000 ALTER TABLE `subdomains` ENABLE KEYS */;
UNLOCK TABLES;

--
