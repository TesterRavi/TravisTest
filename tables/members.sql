USE ``;

-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invitation_code` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL DEFAULT '',
  `key` varchar(40) NOT NULL DEFAULT '',
  `DEPRECATED_status` int(10) unsigned NOT NULL,
  `role` int(10) unsigned NOT NULL,
  `join_date` datetime NOT NULL,
  `join_site` varchar(20) DEFAULT NULL,
  `first_name` varchar(40) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `zipcode` varchar(35) NOT NULL DEFAULT '',
  `country_iso` varchar(2) DEFAULT NULL,
  `gender` enum('M','F') NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `last_visit` datetime NOT NULL,
  `soft_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fraud_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fetchback` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '100' COMMENT 'google analytics source id',
  `mid` varchar(255) DEFAULT NULL,
  `cid` varchar(200) DEFAULT NULL,
  `aid` varchar(200) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `inv_camp_id` int(10) unsigned NOT NULL DEFAULT '1',
  `pub_site_id` int(10) unsigned DEFAULT NULL,
  `tid` varchar(255) DEFAULT NULL,
  `member_status` varchar(20) NOT NULL DEFAULT 'active',
  `optin_women` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `optin_men` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `optin_kids` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `optin_home` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `optin_third_party` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `optin_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `optin` varchar(20) NOT NULL DEFAULT 'daily',
  `esp` enum('cheetahMail','strongMail') NOT NULL DEFAULT 'strongMail',
  `notes` text NOT NULL,
  `omid` int(11) DEFAULT NULL,
  `rack_optin` varchar(20) NOT NULL DEFAULT 'none',
  `inc_optin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `invitation_code` (`invitation_code`),
  UNIQUE KEY `username` (`username`),
  KEY `role` (`role`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `FK_Members::PublisherSites` (`pub_site_id`),
  KEY `FK_members::countries` (`country_iso`),
  KEY `FK_members::campaigns` (`sid`),
  KEY `FK_members::invitation_campaigns` (`inv_camp_id`),
  KEY `api_key` (`key`),
  KEY `FK_members::member_statuses` (`member_status`),
  KEY `FK_members::join_sites` (`join_site`),
  KEY `FK_members::optins` (`optin`),
  KEY `FK_members::rack_optins` (`rack_optin`),
  KEY `FK_members::inc_optins` (`inc_optin`),
  CONSTRAINT `FK_members::campaigns` FOREIGN KEY (`sid`) REFERENCES `campaigns` (`sid`),
  CONSTRAINT `FK_members::countries` FOREIGN KEY (`country_iso`) REFERENCES `countries` (`country_iso`) ON UPDATE CASCADE,
  CONSTRAINT `FK_members::inc_optins` FOREIGN KEY (`inc_optin`) REFERENCES `optins` (`optin`),
  CONSTRAINT `FK_members::invitation_campaigns` FOREIGN KEY (`inv_camp_id`) REFERENCES `invitation_campaigns` (`inv_camp_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_members::join_sites` FOREIGN KEY (`join_site`) REFERENCES `join_sites` (`join_site`),
  CONSTRAINT `FK_members::member_statuses` FOREIGN KEY (`member_status`) REFERENCES `member_statuses` (`member_status`),
  CONSTRAINT `FK_members::optins` FOREIGN KEY (`optin`) REFERENCES `optins` (`optin`),
  CONSTRAINT `FK_Members::PublisherSites` FOREIGN KEY (`pub_site_id`) REFERENCES `publisher_sites` (`site_id`),
  CONSTRAINT `FK_members::rack_optins` FOREIGN KEY (`rack_optin`) REFERENCES `optins` (`optin`)
) ENGINE=InnoDB AUTO_INCREMENT=4137 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 8192 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (4133,'4133','nighat78@example.com','$2a$08$K7d0B2ea7JupDvmFQIWEquwUBvUqgrGtdXeQ3daBo476hwoMZ9H52','d3aac51c2f5263935f861357a1ceef8b',100,100,'2007-09-28 10:13:01','nighat','khan','93021','US','F','','2012-12-05 07:59:35','0000-00-00 00:00:00',2,0,101,0,NULL,'','4133','1',0,NULL,'active','1',1,1,1,0,255,'0000-00-00 00:00:00','strongMail','','',NULL,'',NULL),(4134,'flnyysjw','test@user.com','$2a$08$k7eeIU4Bt6LxhGkm12npNexZ0pOzDOethBlwSYazOCY4ahfI9qszu','key',0,100,'2009-12-25 17:22:20',NULL,'Delia','Dicki','04872-8509','US','F',NULL,'2012-10-05 01:37:26',0,0,0,545819,NULL,NULL,NULL,NULL,15,NULL,NULL,'active',1,0,0,0,0,'2013-07-13 06:31:23','daily','','Tempore autem sapiente id consequuntur quo. Qui in et quasi incidunt. Ex accusamus aut itaque nesciunt sit quidem fugit sapiente.',NULL,'daily','daily'),(4135,'hxgbenzi','admin_test@user.com','$2a$08$k7eeIU4Bt6LxhGkm12npNexZ0pOzDOethBlwSYazOCY4ahfI9qszu','key',0,5,'1973-08-28 01:19:08',NULL,'German','Wuckert','43121-9487','US','F',NULL,'1980-11-11 19:58:53',0,0,0,545819,NULL,NULL,NULL,NULL,15,NULL,NULL,'active',1,0,0,0,0,'1982-12-10 19:13:10','daily','','Vero animi fugiat corporis. Et officia et necessitatibus quasi. Sit rem consequatur hic incidunt et. Tempora sunt aliquam mollitia id repudiandae ipsa.',NULL,'daily','daily'),(4136,'atxkcuds','new_user@user.com','$2a$08$k7eeIU4Bt6LxhGkm12npNexZ0pOzDOethBlwSYazOCY4ahfI9qszu','key',0,100,'1986-05-14 03:39:35',NULL,'Jeffry','Padberg','67364','US','F',NULL,'2001-08-20 17:05:40',0,0,0,545819,NULL,NULL,NULL,NULL,15,NULL,NULL,'active',1,0,0,0,0,'2009-08-24 05:17:43','daily','','Qui dolor blanditiis suscipit ipsum. Neque omnis dolor qui molestiae. Voluptatem quisquam sed aut quia.',NULL,'daily','daily');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
