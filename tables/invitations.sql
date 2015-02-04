USE ``;

-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitations` (
  `invitation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inv_camp_id` int(10) unsigned NOT NULL,
  `invitation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `invitation_ip` int(10) unsigned NOT NULL DEFAULT '0',
  `join_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned DEFAULT NULL,
  `friend_email` varchar(100) NOT NULL,
  `member_incentive` decimal(10,2) NOT NULL DEFAULT '0.00',
  `friend_incentive` decimal(10,2) NOT NULL DEFAULT '0.00',
  `purchase_required` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0= No purchase required to earn credit, 1=purchase required to earn credit',
  `purchase_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `purchase_ip` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0=inactive, 1=active',
  `self_referral` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0=Not a self referral, 1=Is a self referral',
  PRIMARY KEY (`invitation_id`),
  UNIQUE KEY `member_id` (`member_id`,`friend_email`),
  KEY `friend_id` (`friend_id`,`join_date`),
  KEY `friend_email` (`friend_email`),
  CONSTRAINT `FK_invitations::members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_invitations::members2` FOREIGN KEY (`friend_id`) REFERENCES `members` (`member_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7835838 DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 9216 kB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
INSERT INTO `invitations` VALUES (1,1,'2014-08-22 09:59:58',0,'0000-00-00 00:00:00',4134,NULL,'bschroeder@gmail.com',10.00,10.00,0,'0000-00-00 00:00:00',0,1,0),(2,1,'2014-11-10 11:37:17',0,'0000-00-00 00:00:00',4134,NULL,'mcclure.jesse@robel.info',10.00,10.00,1,'0000-00-00 00:00:00',0,0,1),(3,1,'2014-02-14 15:20:17',0,'0000-00-00 00:00:00',4134,NULL,'alberta.price@gmail.com',0.00,0.00,0,'0000-00-00 00:00:00',0,0,0),(4,1,'2014-02-08 08:56:59',0,'0000-00-00 00:00:00',4134,NULL,'edgar54@gmail.com',10.00,10.00,1,'0000-00-00 00:00:00',0,1,0),(5,1,'2014-10-17 19:58:06',0,'0000-00-00 00:00:00',4134,NULL,'moises.swift@hotmail.com',10.00,10.00,1,'0000-00-00 00:00:00',0,1,1),(6,1,'2014-08-07 01:54:40',0,'0000-00-00 00:00:00',4134,NULL,'kwyman@lindgren.com',0.00,0.00,1,'0000-00-00 00:00:00',0,1,1),(7,1,'2014-09-10 03:36:24',0,'0000-00-00 00:00:00',4134,NULL,'morissette.felipa@gmail.com',0.00,10.00,1,'0000-00-00 00:00:00',0,0,0),(8,1,'2014-03-13 11:54:03',0,'0000-00-00 00:00:00',4134,NULL,'renner.morton@yahoo.com',0.00,0.00,0,'0000-00-00 00:00:00',0,0,1),(9,1,'2014-05-04 04:21:41',0,'0000-00-00 00:00:00',4134,NULL,'emonahan@gmail.com',0.00,10.00,1,'0000-00-00 00:00:00',0,1,1),(10,1,'2014-02-13 12:00:04',0,'0000-00-00 00:00:00',4134,NULL,'anderson.izaiah@hotmail.com',10.00,10.00,1,'0000-00-00 00:00:00',0,1,1),(7835826,1,'2014-09-23 08:55:40',1111111111,'2014-09-23 08:56:40',16444861,0,'cwreid0@me.com',10.00,0.00,1,'2014-09-23 08:58:40',1111111111,1,1),(7835828,1,'2014-09-23 09:02:55',1111111111,'2014-09-23 09:03:55',16444861,0,'cwreid1@me.com',10.00,0.00,1,'2014-09-23 09:05:55',1111111111,1,1),(7835829,1,'2014-09-23 09:07:05',1111111111,'2014-09-23 09:08:05',16444861,0,'cwreid2@me.com',10.00,0.00,1,'2014-09-23 09:09:05',1111111111,1,1),(7835830,1,'2014-09-23 09:08:55',1111111111,'2014-09-23 09:09:55',16444861,0,'cwreid3@me.com',10.00,0.00,1,'2014-09-23 09:12:55',1111111111,1,1),(7835831,1,'2014-09-23 09:11:35',1111111111,'2014-09-23 09:12:35',16444861,0,'cwreid4@me.com',10.00,0.00,1,'2014-09-23 09:15:35',1111111111,1,1),(7835832,1,'2014-09-23 09:17:43',1111111111,'2014-09-23 09:18:43',16444861,0,'cwreid5@me.com',10.00,0.00,1,'2014-09-23 09:20:43',1111111111,1,1),(7835833,1,'2014-09-23 09:45:17',1111111111,'2014-09-23 09:46:17',16444861,0,'cwreid6@me.com',10.00,0.00,1,'2014-09-23 09:48:17',1111111111,1,1),(7835834,1,'2014-09-23 09:50:36',1111111111,'2014-09-23 09:51:36',16444861,0,'cwreid7@me.com',10.00,0.00,1,'2014-09-23 09:53:36',1111111111,1,1),(7835836,1,'2014-09-23 10:14:34',1111111111,'2014-09-23 10:15:34',16444861,0,'cwreid8@me.com',10.00,0.00,1,'2014-09-24 10:14:34',2222222222,1,0),(7835837,1,'2014-09-23 10:17:02',1111111111,'2014-09-23 10:18:02',16444861,0,'cwreid9@me.com',10.00,0.00,1,'2014-09-24 10:17:02',2222222222,1,0);
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
