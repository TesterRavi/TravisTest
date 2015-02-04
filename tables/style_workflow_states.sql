USE ``;

-- Table structure for table `style_workflow_states`
--

DROP TABLE IF EXISTS `style_workflow_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `style_workflow_states` (
  `style_workflow_state` tinyint(3) unsigned NOT NULL,
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`style_workflow_state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style_workflow_states`
--

LOCK TABLES `style_workflow_states` WRITE;
/*!40000 ALTER TABLE `style_workflow_states` DISABLE KEYS */;
INSERT INTO `style_workflow_states` VALUES (1,'Created'),(2,'Review'),(3,'Copy Initiated');
/*!40000 ALTER TABLE `style_workflow_states` ENABLE KEYS */;
UNLOCK TABLES;

--
