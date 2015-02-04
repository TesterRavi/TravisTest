USE ``;

-- Table structure for table `event_tabs_categories`
--

DROP TABLE IF EXISTS `event_tabs_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_tabs_categories` (
  `event_tab` varchar(50) NOT NULL,
  `category` varchar(30) NOT NULL,
  PRIMARY KEY (`event_tab`,`category`),
  KEY `FK_event_tabs_categories::categories` (`category`),
  CONSTRAINT `FK_event_tabs_categories::categories` FOREIGN KEY (`category`) REFERENCES `categories` (`category`) ON UPDATE CASCADE,
  CONSTRAINT `FK_event_tabs_categories::event_tabs` FOREIGN KEY (`event_tab`) REFERENCES `event_tabs` (`event_tab`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tabs_categories`
--

LOCK TABLES `event_tabs_categories` WRITE;
/*!40000 ALTER TABLE `event_tabs_categories` DISABLE KEYS */;
INSERT INTO `event_tabs_categories` VALUES ('Beauty','Accessories'),('Home','Accessories'),('Kids','Accessories'),('Men','Accessories'),('Women','Accessories'),('Kids','ActiveWear'),('Men','ActiveWear'),('Women','ActiveWear'),('Home','Art'),('Home','Arts & Crafts'),('Kids','Arts & Crafts'),('Kids','Baby Toys'),('Beauty','Bags'),('Kids','Bags'),('Men','Bags'),('Women','Bags'),('Home','Bath Accessories'),('Kids','Bath Accessories'),('Kids','Bath Time'),('Home','Bedding'),('Kids','Bedding'),('Home','Bedding Sets'),('Kids','Bedding Sets'),('Kids','Belts'),('Men','Belts'),('Women','Belts'),('Kids','Bodysuits'),('Women','Bodysuits'),('Kids','Books/Music/Videos'),('Kids','Bottoms'),('Men','Bottoms'),('Women','Bottoms'),('Kids','Building Sets & Blocks'),('Home','Candles'),('Kids','Collections'),('Men','Collections'),('Women','Collections'),('Beauty','Color'),('Kids','Color'),('Women','Color'),('Home','Cookware'),('Home','Cutlery'),('Home','Decor & Gifting'),('Kids','Denim'),('Men','Denim'),('Women','Denim'),('Home','Dinnerware & Serveware'),('Home','Dolls'),('Kids','Dolls'),('Men','Dress Furnishings'),('Women','Dress Furnishings'),('Kids','Dresses'),('Women','Dresses'),('Home','Electrics'),('Beauty','Fragrance'),('Men','Fragrance'),('Women','Fragrance'),('Home','Gadgets & Tools'),('Kids','Games & Puzzles'),('Home','Gear'),('Kids','Gear'),('Beauty','Gift Certificate'),('Home','Gift Certificate'),('Kids','Gift Certificate'),('Men','Gift Certificate'),('Women','Gift Certificate'),('Home','Gifts'),('Kids','Gifts'),('Men','Gifts'),('Women','Gifts'),('Home','Glassware & Bar'),('Beauty','Hair Care'),('Men','Hair Care'),('Women','Hair Care'),('Women','Handbags'),('Home','Indoor Furniture'),('Kids','Indoor Furniture'),('Women','Intimate Apparel'),('Home','Irons & Steamers'),('Kids','Jewelry'),('Men','Jewelry'),('Women','Jewelry'),('Kids','Knitwear'),('Men','Knitwear'),('Women','Knitwear'),('Kids','Learning'),('Home','Lighting'),('Women','Maternity'),('Kids','Mealtime'),('Beauty','MISC'),('Home','MISC'),('Kids','MISC'),('Men','MISC'),('Women','MISC'),('Kids','One Pieces'),('Women','One Pieces'),('Kids','Out & About'),('Kids','Outdoor Play'),('Kids','Outerwear'),('Men','Outerwear'),('Women','Outerwear'),('Kids','Pajamas'),('Men','Pajamas'),('Women','Pajamas'),('Beauty','Personal Care'),('Men','Personal Care'),('Women','Personal Care'),('Men','Personal Furnishings'),('Women','Personal Furnishings'),('Home','Pillows'),('Kids','Pillows'),('Kids','Plush Toys'),('Kids','Pretend Play'),('Kids','Ride Ons'),('Home','RTA'),('Kids','RTA'),('Home','Scales'),('Home','Seasonal'),('Kids','Seasonal'),('Men','Seasonal'),('Women','Seasonal'),('Beauty','Service'),('Home','Service'),('Kids','Service'),('Men','Service'),('Women','Service'),('Beauty','Sets'),('Home','Sets'),('Kids','Sets'),('Men','Sets'),('Women','Sets'),('Kids','Shoes'),('Men','Shoes'),('WOmen','Shoes'),('Beauty','Skincare'),('Men','Skincare'),('Women','Skincare'),('Kids','Sleepwear'),('Men','Sleepwear'),('Women','Sleepwear'),('Men','Small Leather Goods'),('Women','Small Leather Goods'),('Men','Sunglasses'),('Women','Sunglasses'),('Kids','Sweaters'),('Men','Sweaters'),('Women','Sweaters'),('Kids','Swimwear'),('Men','Swimwear'),('Women','Swimwear'),('Kids','Tops'),('Men','Tops'),('Women','Tops'),('Home','Towels'),('Kids','Toys'),('Kids','Unisex'),('Kids','Watches'),('Men','Watches'),('Women','Watches');
/*!40000 ALTER TABLE `event_tabs_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
