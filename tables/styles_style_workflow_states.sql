USE ``;

-- Table structure for table `styles_style_workflow_states`
--

DROP TABLE IF EXISTS `styles_style_workflow_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styles_style_workflow_states` (
  `style_id` int(10) unsigned NOT NULL,
  `style_workflow_state` tinyint(3) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`style_id`),
  KEY `FK_styles_workflow::workflow_state` (`style_workflow_state`),
  KEY `FK_styles_workflow::member_id` (`member_id`),
  CONSTRAINT `FK_styles_workflow::style_id` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_styles_workflow::workflow_state` FOREIGN KEY (`style_workflow_state`) REFERENCES `style_workflow_states` (`style_workflow_state`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styles_style_workflow_states`
--

LOCK TABLES `styles_style_workflow_states` WRITE;
/*!40000 ALTER TABLE `styles_style_workflow_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `styles_style_workflow_states` ENABLE KEYS */;
UNLOCK TABLES;

--
