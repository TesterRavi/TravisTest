USE ``;

-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `state` varchar(3) NOT NULL DEFAULT 'ZZ',
  `state_name` varchar(50) NOT NULL,
  `country_iso` varchar(2) NOT NULL DEFAULT 'ZZ',
  PRIMARY KEY (`state`,`country_iso`),
  KEY `FK_states::countries` (`country_iso`),
  CONSTRAINT `FK_states::countries` FOREIGN KEY (`country_iso`) REFERENCES `countries` (`country_iso`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('AA','Armed Forces (the) Americas','US'),('AB','Alberta','CA'),('ACT','Australian Capital Territory','AU'),('AE','Armed Forces Europe','US'),('AK','Alaska','US'),('AL','Alabama','US'),('AP','Armed Forces Pacific','US'),('AR','Arkansas','US'),('AZ','Arizona','US'),('BC','British Columbia','CA'),('CA','California','US'),('CO','Colorado','US'),('CT','Connecticut','US'),('DC','District of Columbia','US'),('DE','Delaware','US'),('FL','Florida','US'),('GA','Georgia','US'),('HI','Hawaii','US'),('IA','Iowa','US'),('ID','Idaho','US'),('IL','Illinois','US'),('IN','Indiana','US'),('KS','Kansas','US'),('KY','Kentucky','US'),('LA','Louisiana','US'),('MA','Massachusetts','US'),('MB','Manitoba','CA'),('MD','Maryland','US'),('ME','Maine','US'),('MI','Michigan','US'),('MN','Minnesota','US'),('MO','Missouri','US'),('MS','Mississippi','US'),('MT','Montana','US'),('NB','New Brunswick','CA'),('NC','North Carolina','US'),('ND','North Dakota','US'),('NE','Nebraska','US'),('NH','New Hampshire','US'),('NJ','New Jersey','US'),('NL','Newfoundland and Labrador','CA'),('NM','New Mexico','US'),('NS','Nova Scotia','CA'),('NSW','New South Wales','AU'),('NT','Northern Territory','AU'),('NT','Northwest Territories','CA'),('NU','Nunavut','CA'),('NV','Nevada','US'),('NY','New York','US'),('OH','Ohio','US'),('OK','Oklahoma','US'),('ON','Ontario','CA'),('OR','Oregon','US'),('PA','Pennsylvania','US'),('PE','Prince Edward Island','CA'),('PR','','PR'),('PR','Puerto Rico','US'),('QC','Quebec','CA'),('QLD','Queensland','AU'),('RI','Rhode Island','US'),('SA','South Australia','AU'),('SC','South Carolina','US'),('SD','South Dakota','US'),('SK','Saskatchewan','CA'),('TAS','Tasmania','AU'),('TN','Tennessee','US'),('TX','Texas','US'),('UT','Utah','US'),('VA','Virginia','US'),('VI','Virgin Islands','US'),('VIC','Victoria','AU'),('VT','Vermont','US'),('WA','West Australia','AU'),('WA','Washington','US'),('WI','Wisconsin','US'),('WV','West Virginia','US'),('WY','Wyoming','US'),('YT','Yukon','CA'),('ZZ','','CA'),('ZZ','Unknown','ZZ');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
