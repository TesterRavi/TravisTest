USE ``;

-- Table structure for table `order_item_statuses`
--

DROP TABLE IF EXISTS `order_item_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item_statuses` (
  `order_item_status` varchar(25) NOT NULL,
  `definition` text NOT NULL,
  PRIMARY KEY (`order_item_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item_statuses`
--

LOCK TABLES `order_item_statuses` WRITE;
/*!40000 ALTER TABLE `order_item_statuses` DISABLE KEYS */;
INSERT INTO `order_item_statuses` VALUES ('cancelled','All ordered items where completely returned \'pre-ship\' or \'during_sale\''),('delivered','Item has a record in shipment_tracking with delivery_date set and return_to_shipper_date unset'),('delivery_attempt','Item has a record in shipment_tracking with delivery_attempt_date set and delivery_date, return_to_shipper_date unset'),('error','unknown'),('in_transit','Item associated with a purchase_order that is \'in_transit\' but not \'received\''),('open','Item not associated with a valid purchase_order that has been generated after the end_date of the event'),('partially_received','Item has no record in shipment_items but is associated with an event that does have shipment_items records'),('picked','Item has a record in shipment_items and no record in shipment_tracking or no shipment_tracking.ship_date set'),('po_sent','Item associated with a purchase_order that has been \'posted\' but not \'received\' or \'in_transit\''),('received','Item associated with a purchase_order that is \'received\' and with no record in shipment_items'),('received_short','UNSUPPORTED in get_order_items_status()'),('returned','All ordered items where completely returned \'post_ship\' or \'post_event\''),('returned_to_shipper','Item has a record in shipment_tracking with delivery_date and return_to_shipper_date set'),('return_in_transit','UNSUPPORTED in get_order_items_status()'),('return_received','UNSUPPORTED in get_order_items_status()'),('return_request','UNSUPPORTED in get_order_items_status()'),('shipped','Item has a record in shipment_tracking with ship_date set and delivery_date, return_to_shipper_date and delivery_attempt_date unset'),('short','UNSUPPORTED in get_order_items_status()'),('short_in_transit','UNSUPPORTED in get_order_items_status()'),('short_pending','UNSUPPORTED in get_order_items_status()');
/*!40000 ALTER TABLE `order_item_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
