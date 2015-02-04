USE ``;

-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `style_id` int(10) unsigned DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '99',
  `hex` varchar(6) DEFAULT 'CCCCCC',
  `filename` varchar(255) DEFAULT NULL,
  `verified` timestamp NULL DEFAULT NULL,
  `image_create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`image_id`),
  KEY `color` (`color`),
  KEY `FK_Styles:style_id::Images:style_id` (`style_id`),
  KEY `image_create_date` (`image_create_date`,`image_id`),
  CONSTRAINT `C_Styles:style_id::Images:style_id` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1128064 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (8740,35207,'maroon',15,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8741,35207,'maroon',14,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8742,35207,'maroon',13,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8743,35207,'charcoal',16,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8744,35207,'charcoal',18,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8745,35207,'charcoal',17,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8746,35207,'navy',20,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8747,35207,'navy',19,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8748,35207,'navy',21,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8749,35207,'green',22,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8750,35207,'green',23,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8751,35207,'green',24,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8752,35207,'brown_',2,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8753,35207,'brown_',1,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8754,35207,'brown_',3,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8755,35207,'red',4,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8756,35207,'red',5,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8757,35207,'red',6,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8759,35207,'cream',9,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8760,35207,'cream',8,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8761,35207,'cream',7,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8975,35241,'grape',14,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8976,35241,'grape',15,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8977,35241,'grape',13,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8978,35241,'grape',16,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8979,35241,'green',17,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8980,35241,'green',18,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8981,35241,'green',20,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8982,35241,'green',19,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8983,35241,'blue',9,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8984,35241,'blue',10,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8985,35241,'blue',12,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8986,35241,'blue',11,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8987,35241,'red',2,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8988,35241,'red',3,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8989,35241,'red',1,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8990,35241,'red',4,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8991,35241,'black_skull',8,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8992,35241,'black_skull',5,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8993,35241,'black_skull',6,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(8994,35241,'black_skull',7,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(13416,254,'black',99,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(13419,254,'black',99,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(13422,254,'green',99,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(13425,254,'green',99,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(13428,254,'pearl',99,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(13431,254,'pearl',99,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14634,36132,'black',1,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14636,36132,'black',4,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14638,36132,'black',3,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14640,36132,'black',5,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14642,36132,'black',2,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14836,NULL,'black-blue_jay',12,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14837,NULL,'black-blue_jay',10,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14838,NULL,'black-blue_jay',11,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14839,NULL,'brown-stormy_sea',8,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14840,NULL,'brown-stormy_sea',7,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14841,NULL,'brown-stormy_sea',9,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14845,NULL,'brown-pale_pink',1,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14846,NULL,'brown-pale_pink',2,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14847,NULL,'brown-pale_pink',3,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14848,NULL,'graphite-dusty_rose',4,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14849,NULL,'graphite-dusty_rose',5,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(14850,NULL,'graphite-dusty_rose',6,'CCCCCC',NULL,NULL,'0000-00-00 00:00:00'),(39284,439,'white',99,'CCCCCC','KSW5010C_WHT-000045.jpg',NULL,'0000-00-00 00:00:00'),(39287,439,'white',99,'CCCCCC','KSW5010C_WHT-000046.jpg',NULL,'0000-00-00 00:00:00'),(39290,439,'white',99,'CCCCCC','KSW5010C_WHT-000042.jpg',NULL,'0000-00-00 00:00:00'),(39293,439,'graphite',99,'CCCCCC','KSW5010C_GRT-000051.jpg',NULL,'0000-00-00 00:00:00'),(39296,439,'graphite',99,'CCCCCC','KSW5010C_GRT-000047.jpg',NULL,'0000-00-00 00:00:00'),(39299,439,'graphite',99,'CCCCCC','KSW5010C_GRT-000050.jpg',NULL,'0000-00-00 00:00:00'),(47977,240,'gold',99,'CCCCCC','B902_00014.jpg',NULL,'0000-00-00 00:00:00'),(47980,240,'gold',99,'CCCCCC','B902_00012.jpg',NULL,'0000-00-00 00:00:00'),(48218,360,'gold',99,'CCCCCC','N903_00286-1.jpg',NULL,'0000-00-00 00:00:00'),(48221,360,'gold',99,'CCCCCC','N903_00096.jpg',NULL,'0000-00-00 00:00:00'),(48224,360,'gold',99,'CCCCCC','N903_00097.jpg',NULL,'0000-00-00 00:00:00'),(48260,382,'turquoise',99,'CCCCCC','N949_00253.jpg',NULL,'0000-00-00 00:00:00'),(48263,382,'turquoise',99,'CCCCCC','N949_00126.jpg',NULL,'0000-00-00 00:00:00'),(48266,382,'turquoise',99,'CCCCCC','N949_00128.jpg',NULL,'0000-00-00 00:00:00'),(48269,382,'turquoise',99,'CCCCCC','N949_00127.jpg',NULL,'0000-00-00 00:00:00'),(48349,381,'black',99,'CCCCCC','N948_00173.jpg',NULL,'0000-00-00 00:00:00'),(48352,381,'black',99,'CCCCCC','N948_00176.jpg',NULL,'0000-00-00 00:00:00'),(48355,381,'black',99,'CCCCCC','N948_00175.jpg',NULL,'0000-00-00 00:00:00'),(48358,381,'black',99,'CCCCCC','N948_00275.jpg',NULL,'0000-00-00 00:00:00'),(49674,344,'one_color',99,'CCCCCC','GST013TV.jpg',NULL,'0000-00-00 00:00:00'),(49678,342,'one_color',99,'CCCCCC','GS054.jpg',NULL,'0000-00-00 00:00:00'),(49681,342,'one_color',99,'CCCCCC','GS054[2].jpg',NULL,'0000-00-00 00:00:00'),(49694,340,'one_color',99,'CCCCCC','GS021.jpg',NULL,'0000-00-00 00:00:00'),(49697,336,'one_color',99,'CCCCCC','GS013.jpg',NULL,'0000-00-00 00:00:00'),(65433,45713,'white',2,'CCCCCC','W751142-000062.jpg','2010-01-11 20:17:17','0000-00-00 00:00:00'),(65434,45713,'white',1,'CCCCCC','W751142-000061.jpg','2010-01-11 20:17:17','0000-00-00 00:00:00'),(65435,45713,'white',3,'CCCCCC','W751142-000063.jpg','2010-01-11 20:17:17','0000-00-00 00:00:00'),(69365,398,'black',99,'CCCCCC','STT6C385-001_BLK-000160.jpg',NULL,'0000-00-00 00:00:00'),(69370,398,'black',99,'CCCCCC','STT6C385-001_BLK-000161.jpg',NULL,'0000-00-00 00:00:00'),(69375,398,'black',99,'CCCCCC','STT6C385-001_BLK-000157.jpg',NULL,'0000-00-00 00:00:00'),(89384,393,'dark_blue_grey',99,'CCCCCC','PCS6B550_DRKBLUE_GREY_0001.jpg',NULL,'0000-00-00 00:00:00'),(89391,393,'dark_blue_grey',99,'CCCCCC','PCS6B550_DRKBLUE_GREY_0004.jpg',NULL,'0000-00-00 00:00:00'),(89396,393,'dark_blue_grey',99,'CCCCCC','PCS6B550_DRKBLUE_GREY_0003.jpg',NULL,'0000-00-00 00:00:00'),(97150,NULL,'black-blue_jay',31,'CCCCCC','SP4006_BLKBLUEJ-000047.jpg',NULL,'0000-00-00 00:00:00'),(97151,NULL,'black-blue_jay',29,'CCCCCC','SP4006_BLKBLUEJ-000045.jpg',NULL,'0000-00-00 00:00:00'),(97152,NULL,'black-blue_jay',30,'CCCCCC','SP4006_BLKBLUEJ-000046.jpg',NULL,'0000-00-00 00:00:00'),(97153,NULL,'brown-stormy_sea',23,'CCCCCC','SP4006_BRWNSTMSEA-000066.jpg',NULL,'0000-00-00 00:00:00'),(97154,NULL,'brown-stormy_sea',22,'CCCCCC','SP4006_BRWNSTMSEA-000065.jpg',NULL,'0000-00-00 00:00:00'),(97155,NULL,'brown-stormy_sea',24,'CCCCCC','SP4006_BRWNSTMSEA-000067.jpg',NULL,'0000-00-00 00:00:00'),(97162,NULL,'graphite-dusty_rose',19,'CCCCCC','SP4006_GGDR-000051.jpg',NULL,'0000-00-00 00:00:00'),(97163,NULL,'graphite-dusty_rose',21,'CCCCCC','SP4006_GGDR-000053.jpg',NULL,'0000-00-00 00:00:00'),(97164,NULL,'graphite-dusty_rose',20,'CCCCCC','SP4006_GGDR-000052.jpg',NULL,'0000-00-00 00:00:00'),(98100,359922,'Gold-Multi',1,'CCCCCC','5002425_004.jpg','2010-02-04 23:34:46','0000-00-00 00:00:00'),(98131,53009,'no_color',99,'CCCCCC','CT20S_SL_.jpg',NULL,'0000-00-00 00:00:00'),(161728,72228,'no_color',1,'CCCCCC','200911952210001.jpg','2010-01-26 17:28:10','0000-00-00 00:00:00'),(168319,73524,'no_color',1,'CCCCCC','5002425_004.jpg','2010-02-04 23:34:46','0000-00-00 00:00:00'),(168320,73524,'no_color',2,'CCCCCC','5002425_010.jpg','2010-02-04 23:34:47','0000-00-00 00:00:00'),(168321,73523,'no_color',2,'CCCCCC','5004157_001.jpg','2010-02-04 23:34:48','0000-00-00 00:00:00'),(168322,73523,'no_color',1,'CCCCCC','5004157_003.jpg','2010-02-04 23:34:49','0000-00-00 00:00:00'),(168402,73520,'no_color',2,'CCCCCC','5002510_007.jpg','2010-02-04 23:52:29','0000-00-00 00:00:00'),(168403,73520,'no_color',3,'CCCCCC','5002510_005.jpg','2010-02-04 23:52:30','0000-00-00 00:00:00'),(168404,73520,'no_color',1,'CCCCCC','5002510_004.jpg','2010-02-04 23:52:30','0000-00-00 00:00:00'),(168424,73521,'no_color',1,'CCCCCC','5002422_002.jpg','2010-02-04 23:52:49','0000-00-00 00:00:00'),(168425,73521,'no_color',2,'CCCCCC','5002422_006.jpg','2010-02-04 23:52:51','0000-00-00 00:00:00'),(401736,156241,'aretino_04',99,'CCCCCC','1POR1027-SX--1POR3503-DX-PORTESE-SOFA-Aretino-04-LEFT-AND-RIGHT-SKUS.jpg',NULL,'0000-00-00 00:00:00'),(449256,173883,'orange',3,'CCCCCC','COCO100-orange-2.jpg','2011-01-11 01:08:24','0000-00-00 00:00:00'),(449257,173883,'orange',1,'CCCCCC','COCO100-orange-4.jpg','2011-01-11 01:08:25','0000-00-00 00:00:00'),(449259,173883,'orange',2,'CCCCCC','COCO100-orange-1.jpg','2011-01-11 01:08:26','0000-00-00 00:00:00'),(449260,173883,'orange',4,'CCCCCC','COCO100-ALL.jpg','2011-01-11 01:08:27','0000-00-00 00:00:00'),(449261,173882,'walnut_natural',3,'CCCCCC','COCO100-walnut-3.jpg','2011-01-11 01:08:28','0000-00-00 00:00:00'),(449262,173882,'walnut_natural',2,'CCCCCC','COCO100-walnut-2.jpg','2011-01-11 01:08:28','0000-00-00 00:00:00'),(449263,173882,'walnut_natural',1,'CCCCCC','COCO100-walnut-1.jpg','2011-01-11 01:08:30','0000-00-00 00:00:00'),(449264,173882,'walnut_natural',4,'CCCCCC','COCO100-ALL.jpg','2011-01-11 01:08:30','0000-00-00 00:00:00'),(449265,173884,'white',2,'CCCCCC','COCO100-white-4.jpg','2011-01-11 01:08:31','0000-00-00 00:00:00'),(449266,173884,'white',1,'CCCCCC','COCO100-white-3.jpg','2011-01-11 01:08:32','0000-00-00 00:00:00'),(449267,173884,'white',3,'CCCCCC','COCO100-white-1.jpg','2011-01-11 01:08:32','0000-00-00 00:00:00'),(449268,173884,'white',4,'CCCCCC','COCO100-white-2.jpg','2011-01-11 01:08:33','0000-00-00 00:00:00'),(449269,173884,'white',5,'CCCCCC','COCO100-ALL.jpg','2011-01-11 01:08:34','0000-00-00 00:00:00'),(990559,369356,'pink',2,'CCCCCC','WMG2256_PINK_16392.jpg','2012-03-27 21:03:21','0000-00-00 00:00:00'),(990560,369356,'pink',1,'CCCCCC','WMG2256_PINK_16391.jpg','2012-03-27 21:03:23','0000-00-00 00:00:00'),(990561,369356,'olive',3,'CCCCCC','WMG2256_DUSTY_OLIVE_16380.jpg','2012-03-27 21:03:25','0000-00-00 00:00:00'),(990562,369356,'olive',4,'CCCCCC','WMG2256_DUSTY_OLIVE_16382.jpg','2012-03-27 21:03:27','0000-00-00 00:00:00'),(1128060,359918,'swansdown-cayenne',2,'CCCCCC','76O15_SWANSDOWN_CYENE_PNK_16843.jpg','2012-07-20 11:15:28','0000-00-00 00:00:00'),(1128063,359918,'swansdown-cayenne',1,'CCCCCC','76O15_SWANSDOWN_CYENE_PNK_16840.jpg','2012-07-20 11:15:28','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_images_insert AFTER INSERT ON images
FOR EACH ROW
  BEGIN
    IF NEW.style_id IS NOT NULL
    THEN
      INSERT INTO solr_queue_populate_style (style_id, triggered_at) VALUES (NEW.style_id, NOW());
    END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_images_update AFTER UPDATE ON images
FOR EACH ROW
  BEGIN
    IF NEW.style_id IS NOT NULL
    THEN
      INSERT INTO solr_queue_populate_style (style_id, triggered_at) VALUES (NEW.style_id, NOW());

      IF
        OLD.style_id IS NOT NULL
        AND NOT (NEW.style_id <=> OLD.style_id)
      THEN
        INSERT INTO solr_queue_populate_style (style_id, triggered_at) VALUES (OLD.style_id, NOW());
      END IF;
    ELSE
      IF OLD.style_id IS NOT NULL
      THEN
        INSERT INTO solr_queue_populate_style (style_id, triggered_at) VALUES (OLD.style_id, NOW());
      END IF;
    END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trigger_images_delete AFTER DELETE ON images
FOR EACH ROW
  BEGIN
    IF OLD.style_id IS NOT NULL
    THEN
      INSERT INTO solr_queue_populate_style (style_id, triggered_at) VALUES (OLD.style_id, NOW());
    END IF;
  END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
