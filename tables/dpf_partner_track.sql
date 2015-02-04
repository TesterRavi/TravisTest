USE ``;

-- Table structure for table `dpf_partner_track`
--

DROP TABLE IF EXISTS `dpf_partner_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpf_partner_track` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL COMMENT 'Partners are members with members.role = 11',
  `event_id` int(10) unsigned DEFAULT NULL,
  `inventory_id` int(10) unsigned DEFAULT NULL,
  `hit_count` int(10) unsigned NOT NULL DEFAULT '1',
  `partner_sid` int(10) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_member_id::event_id::inventory_id` (`member_id`,`event_id`,`inventory_id`),
  KEY `FK_DpfPartnerTrack:event_id::Events:event_id` (`event_id`),
  KEY `FK_DpfPartnerTrack:inventory_id::Inventory:inventory_id` (`inventory_id`),
  KEY `FK_DpfPartnerTrack:partner_sid::DpfPartnerAccounts:partner_sid` (`partner_sid`),
  CONSTRAINT `C_DpfPartnerTrack:event_id::Events:event_id` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `C_DpfPartnerTrack:inventory_id::Inventory:inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`),
  CONSTRAINT `C_DpfPartnerTrack:member_id::Members:member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`),
  CONSTRAINT `C_DpfPartnerTrack:partner_sid::DpfPartnerAccounts:partner_sid` FOREIGN KEY (`partner_sid`) REFERENCES `dpf_partner_accounts` (`partner_sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dpf_partner_track`
--

LOCK TABLES `dpf_partner_track` WRITE;
/*!40000 ALTER TABLE `dpf_partner_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `dpf_partner_track` ENABLE KEYS */;
UNLOCK TABLES;

--
