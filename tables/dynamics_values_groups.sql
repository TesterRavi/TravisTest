USE ``;

-- Table structure for table `dynamics_values_groups`
--

DROP TABLE IF EXISTS `dynamics_values_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamics_values_groups` (
  `dynamics_values_group` varchar(25) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`dynamics_values_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamics_values_groups`
--

LOCK TABLES `dynamics_values_groups` WRITE;
/*!40000 ALTER TABLE `dynamics_values_groups` DISABLE KEYS */;
INSERT INTO `dynamics_values_groups` VALUES ('','Default Group',1),('expcred-62','EXPCRED-62',1),('kanban-1083','kanban-1083',1),('kanban-1260','kanban-1260',1),('kanban-1269','KANBAN-1269',1),('kanban-1296','KANBAN-1296',1),('kanban-1300','kanban-1300',1),('kanban-1311','kanban-1311',1),('kanban-1352','kanban-1352',1),('kanban-1352-redo','REDO of KANBAN-1352',1),('kanban-1385','kanban-1385',0),('kanban-1457','kanban-1457',0),('kanban-1574-a','kanban-1574-a',1),('kanban-1574-b','kanban-1574-b',1),('kanban-1638','kanban-1638 - Gmail Notification',1),('kanban-1640','kanban-1640',1),('kanban-1658','kanban-1658',1),('kanban-1672','KANBAN-1672',1),('kanban-1677','kanban-1677',1),('kanban-1714','kanban-1714',1),('kanban-1831','KANBAN-1831',1);
/*!40000 ALTER TABLE `dynamics_values_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
