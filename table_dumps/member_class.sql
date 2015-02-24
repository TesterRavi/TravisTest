-- MySQL dump 10.13  Distrib 5.5.34, for Linux (x86_64)
--
-- Host: localhost    Database: hautelook
-- ------------------------------------------------------
-- Server version	5.5.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `member_class`
--

DROP TABLE IF EXISTS `member_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_class` (
  `member_class_cd` varchar(50) NOT NULL,
  `is_active_flag` char(1) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_class_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_class`
--

LOCK TABLES `member_class` WRITE;
/*!40000 ALTER TABLE `member_class` DISABLE KEYS */;
INSERT INTO `member_class` VALUES ('','Y',0,'2013-10-21 23:13:17'),('Accent Furniture','Y',0,'2013-10-21 23:13:17'),('Accessories','Y',0,'2013-10-21 23:13:17'),('Activewear','Y',0,'2013-10-21 23:13:17'),('Audio & MP3','Y',0,'2013-10-21 23:13:17'),('Baby Boy','Y',0,'2013-10-21 23:13:17'),('Baby Gear','Y',0,'2013-10-21 23:13:17'),('Baby Girl','Y',0,'2013-10-21 23:13:17'),('Bags','Y',0,'2013-10-21 23:13:17'),('Bags & Travel','Y',0,'2013-10-21 23:13:17'),('Bakeware','Y',0,'2013-10-21 23:13:17'),('Bar & Wine Tools','Y',0,'2013-10-21 23:13:17'),('Barstools & Benches','Y',0,'2013-10-21 23:13:17'),('Base Coat','Y',0,'2013-10-21 23:13:17'),('Baskets & Jewelry Storage','Y',0,'2013-10-21 23:13:17'),('Bath Rugs & Mats','Y',0,'2013-10-21 23:13:17'),('Beach & Novelty Towels','Y',0,'2013-10-21 23:13:17'),('Bed Basics','Y',0,'2013-10-21 23:13:17'),('Beds & Headboards','Y',0,'2013-10-21 23:13:17'),('Beer & Wine Storage','Y',0,'2013-10-21 23:13:17'),('Belts','Y',0,'2013-10-21 23:13:17'),('Bikini Bottoms','Y',0,'2014-01-14 13:56:30'),('Bikini Sets','Y',0,'2014-01-14 13:56:30'),('Bikini Tops','Y',0,'2014-01-14 13:56:29'),('Blazers','Y',0,'2013-10-21 23:13:17'),('Blouses & Shirts','Y',0,'2014-01-14 13:57:07'),('Body Lotions & Creams','Y',0,'2013-10-21 23:13:17'),('Body Scrubs','Y',0,'2013-10-21 23:13:17'),('Body Sprays','Y',0,'2013-10-21 23:13:17'),('Books, Movies & Music','Y',0,'2013-10-21 23:13:17'),('Books, Music & Video','Y',0,'2013-10-21 23:13:17'),('Boots','Y',0,'2013-10-21 23:13:17'),('Botanicals','Y',0,'2013-10-21 23:13:17'),('Bottoms','Y',0,'2013-10-21 23:13:17'),('Boys\' Shoes','Y',0,'2014-01-14 13:56:40'),('Bras','Y',0,'2013-10-21 23:13:17'),('Brushes','Y',0,'2013-10-21 23:13:17'),('Cabinets & Bookcases','Y',0,'2013-10-21 23:13:17'),('Cameras & Camcorders','Y',0,'2013-10-21 23:13:17'),('Camis','Y',0,'2013-10-21 23:13:17'),('Candles & Diffusers','Y',0,'2013-10-21 23:13:17'),('Casual','Y',0,'2013-10-21 23:13:17'),('Chairs & Ottomans','Y',0,'2013-10-21 23:13:17'),('Cheeks','Y',0,'2013-10-21 23:13:17'),('Chemises & Slips','Y',0,'2014-01-14 13:56:31'),('Cleaning Tools & Supplies','Y',0,'2013-10-21 23:13:17'),('Cleanser','Y',0,'2013-10-21 23:13:17'),('Closet Storage','Y',0,'2013-10-21 23:13:17'),('Clothing','Y',0,'2015-02-23 23:59:20'),('Coats & Jackets','Y',0,'2013-10-21 23:13:17'),('Coffee & Accent Tables','Y',0,'2013-10-21 23:13:17'),('Cold Weather','Y',0,'2013-10-21 23:13:17'),('Computers & Tablets','Y',0,'2013-10-21 23:13:17'),('Conditioner','Y',0,'2013-10-21 23:13:17'),('Cookware','Y',0,'2013-10-21 23:13:17'),('Cookware, Grills & Firepits','Y',0,'2013-10-21 23:13:17'),('Cosmetic Bags','Y',0,'2013-10-21 23:13:17'),('Costume Jewelry','Y',0,'2013-10-21 23:13:17'),('Coverups / Caftans','Y',0,'2013-10-21 23:13:17'),('Cutlery','Y',0,'2013-10-21 23:13:17'),('Decorative Accessories','Y',0,'2013-10-21 23:13:17'),('Decorative Pillows & Throws','Y',0,'2013-10-21 23:13:17'),('Denim','Y',0,'2013-10-21 23:13:17'),('Dining Furniture','Y',0,'2013-10-21 23:13:17'),('Dining Tables & Chairs','Y',0,'2013-10-21 23:13:17'),('Dinnerware','Y',0,'2013-10-21 23:13:17'),('Dresses','Y',0,'2015-02-23 23:59:20'),('Dresses & Jumpsuits','Y',0,'2013-10-21 23:13:17'),('Duvet Covers & Shams','Y',0,'2013-10-21 23:13:17'),('Eau da Parfum','Y',0,'2013-10-21 23:13:17'),('Eau De Toilette','Y',0,'2013-10-21 23:13:17'),('Electrics','Y',0,'2013-10-21 23:13:17'),('Electronic Facial Brush','Y',0,'2013-10-21 23:13:17'),('Entryway Organizer','Y',0,'2013-10-21 23:13:17'),('Eyes','Y',0,'2013-10-21 23:13:17'),('Fabric','Y',0,'2013-10-21 23:13:17'),('Face','Y',0,'2013-10-21 23:13:17'),('Facial Toning Device','Y',0,'2013-10-21 23:13:17'),('Fashion Accessories','Y',0,'2013-10-21 23:13:17'),('Fine Jewelry','Y',0,'2013-10-21 23:13:17'),('Fitness Gear','Y',0,'2013-10-21 23:13:17'),('Flats','Y',0,'2013-10-21 23:13:17'),('Flatware','Y',0,'2013-10-21 23:13:17'),('Fleece / Active','Y',0,'2013-10-21 23:13:17'),('Fleeces & Hoodies','Y',0,'2014-01-14 13:56:33'),('Flip Flops','Y',0,'2013-10-21 23:13:17'),('Food','Y',0,'2013-10-21 23:13:17'),('Food Storage','Y',0,'2013-10-21 23:13:17'),('Fur / Faux Fur','Y',0,'2013-10-21 23:13:17'),('Gadgets','Y',0,'2013-10-21 23:13:17'),('Garment Care','Y',0,'2013-10-21 23:13:17'),('Gel','Y',0,'2013-10-21 23:13:17'),('Gifts','Y',0,'2013-10-21 23:13:17'),('Girls\' Shoes','Y',0,'2014-01-14 13:56:38'),('Glassware & Bar','Y',0,'2013-10-21 23:13:17'),('Hair Accessories','Y',0,'2013-10-21 23:13:17'),('Hair Extensions','Y',0,'2013-10-21 23:13:17'),('Hair Removal','Y',0,'2013-10-21 23:13:17'),('Hair Tools','Y',0,'2013-10-21 23:13:17'),('Hand & Foot Creams','Y',0,'2013-10-21 23:13:17'),('Hats','Y',0,'2013-10-21 23:13:17'),('Hats & Gloves','Y',0,'2013-10-21 23:13:17'),('HauteLook & Nordstrom Bag','Y',0,'2013-10-21 23:13:17'),('HauteLook Beauty Bag','Y',0,'2013-10-21 23:13:17'),('Health, Sports & Wellness','Y',0,'2013-10-21 23:13:17'),('Heat Pads','Y',0,'2013-10-21 23:13:17'),('Home Decor','Y',0,'2013-10-21 23:13:17'),('Home Office','Y',0,'2013-10-21 23:13:17'),('Home Office Storage','Y',0,'2013-10-21 23:13:17'),('Hosiery','Y',0,'2013-10-21 23:13:17'),('Hosiery & Socks','Y',0,'2014-02-11 13:25:35'),('Indoor & Outdoor','Y',0,'2013-10-21 23:13:17'),('Infant & Crib Shoes','Y',0,'2013-10-21 23:13:17'),('Intimate Apparel','Y',0,'2013-10-21 23:13:17'),('Jackets & Blazers','Y',0,'2013-10-21 23:13:17'),('Jewelry','Y',0,'2013-10-21 23:13:17'),('Kids\' Gear','Y',0,'2014-01-14 13:57:03'),('Kitchen Islands & Carts','Y',0,'2013-10-21 23:13:17'),('Kitchen Organization & Pot Racks','Y',0,'2013-10-21 23:13:17'),('Knits & Tees','Y',0,'2013-10-21 23:13:17'),('Lace Ups','Y',0,'2013-10-21 23:13:17'),('Large Appliances','Y',0,'2013-10-21 23:13:17'),('Lashes','Y',0,'2013-10-21 23:13:17'),('Leather','Y',0,'2013-10-21 23:13:17'),('Light Therapy Device','Y',0,'2013-10-21 23:13:17'),('Lighting','Y',0,'2013-10-21 23:13:17'),('Lips','Y',0,'2013-10-21 23:13:17'),('Lounge Furniture','Y',0,'2013-10-21 23:13:17'),('Loungewear','Y',0,'2013-10-21 23:13:17'),('Luggage','Y',0,'2013-10-21 23:13:17'),('Mask','Y',0,'2013-10-21 23:13:17'),('Massagers','Y',0,'2013-10-21 23:13:17'),('Mattresses & Toppers','Y',0,'2013-10-21 23:13:17'),('Media & TV Storage','Y',0,'2013-10-21 23:13:17'),('Mobile Phones & iaccessories','Y',0,'2013-10-21 23:13:17'),('Moisturizer','Y',0,'2013-10-21 23:13:17'),('Nail Colors','Y',0,'2013-10-21 23:13:17'),('Nail Tools','Y',0,'2013-10-21 23:13:17'),('Nail Treatments','Y',0,'2013-10-21 23:13:17'),('Nursing','Y',0,'2013-10-21 23:13:17'),('One Pieces','Y',0,'2014-02-19 10:03:29'),('Other Skincare Tools','Y',0,'2013-10-21 23:13:17'),('Outdoor Decor','Y',0,'2013-10-21 23:13:17'),('Outdoor Entertaining','Y',0,'2013-10-21 23:13:17'),('Outdoor Pillows & Cushions','Y',0,'2013-10-21 23:13:17'),('Outerwear','Y',0,'2013-10-21 23:13:17'),('Panties & Thongs','Y',0,'2014-01-14 13:57:07'),('Pants','Y',0,'2013-10-21 23:13:17'),('Personal Care','Y',0,'2013-10-21 23:13:17'),('Pet Gear','Y',0,'2013-10-21 23:13:17'),('Polos','Y',0,'2013-10-21 23:13:17'),('Pool, Garden & Beach','Y',0,'2013-10-21 23:13:17'),('Pumps','Y',0,'2013-10-21 23:13:17'),('Quilted / Puffer','Y',0,'2013-10-21 23:13:17'),('Quilts & Comforters','Y',0,'2013-10-21 23:13:17'),('Rain','Y',0,'2013-10-21 23:13:17'),('Robes','Y',0,'2013-10-21 23:13:17'),('Robes & Accessories','Y',0,'2013-10-21 23:13:17'),('Rollerball','Y',0,'2013-10-21 23:13:17'),('Rug Pads','Y',0,'2013-10-21 23:13:17'),('Sandals','Y',0,'2013-10-21 23:13:17'),('Scarves & Wraps','Y',0,'2013-10-21 23:13:17'),('Seasonal Decor','Y',0,'2013-10-21 23:13:17'),('Security & Safety','Y',0,'2013-10-21 23:13:17'),('Serum','Y',0,'2013-10-21 23:13:17'),('Serving & Entertaining','Y',0,'2013-10-21 23:13:17'),('Sets','Y',0,'2013-10-21 23:13:17'),('Shampoo','Y',0,'2013-10-21 23:13:17'),('Shapewear','Y',0,'2013-10-21 23:13:17'),('Shearling / Suede','Y',0,'2013-10-21 23:13:17'),('Sheet Sets','Y',0,'2013-10-21 23:13:17'),('Shelves & Organizers','Y',0,'2013-10-21 23:13:17'),('Shirts','Y',0,'2013-10-21 23:13:17'),('Shorts','Y',0,'2013-10-21 23:13:17'),('Shower Gel','Y',0,'2013-10-21 23:13:17'),('Skirts / Shorts','Y',0,'2013-10-21 23:13:17'),('Sleepwear','Y',0,'2013-10-21 23:13:17'),('Sleepwear & Robes','Y',0,'2013-10-21 23:13:17'),('Slip Ons','Y',0,'2013-10-21 23:13:17'),('Slippers','Y',0,'2013-10-21 23:13:17'),('Small Appliances','Y',0,'2013-10-21 23:13:17'),('Sneakers','Y',0,'2013-10-21 23:13:17'),('Soap','Y',0,'2013-10-21 23:13:17'),('Socks','Y',0,'2013-10-21 23:13:17'),('Sofas & Sectionals','Y',0,'2013-10-21 23:13:17'),('Sports Memorabilia','Y',0,'2013-10-21 23:13:17'),('Stemware','Y',0,'2013-10-21 23:13:17'),('Sterling Jewelry','Y',0,'2013-10-21 23:13:17'),('Styling Products','Y',0,'2013-10-21 23:13:17'),('Suits & Sportcoats','Y',0,'2013-10-21 23:13:17'),('Suncare','Y',0,'2013-10-21 23:13:17'),('Sunglasses & Eyewear','Y',0,'2013-10-21 23:13:17'),('Sweaters','Y',0,'2013-10-21 23:13:17'),('Sweaters & Knits','Y',0,'2013-10-21 23:13:17'),('Swim','Y',0,'2013-10-21 23:13:17'),('Swimwear','Y',0,'2013-10-21 23:13:17'),('Swimwear & Cover Ups','Y',0,'2013-10-21 23:13:17'),('T-Shirts','Y',0,'2013-10-21 23:13:17'),('Table Linens','Y',0,'2013-10-21 23:13:17'),('Tanning','Y',0,'2013-10-21 23:13:17'),('Technical','Y',0,'2013-10-21 23:13:17'),('Teeth Whitening','Y',0,'2013-10-21 23:13:17'),('Ties & Pocket Squares','Y',0,'2013-10-21 23:13:17'),('Toner','Y',0,'2013-10-21 23:13:17'),('Top Coat','Y',0,'2013-10-21 23:13:17'),('Tops','Y',0,'2013-10-21 23:13:17'),('Towels','Y',0,'2013-10-21 23:13:17'),('Toys','Y',0,'2013-10-21 23:13:17'),('Trash & Recycling','Y',0,'2013-10-21 23:13:17'),('Travel Accessories','Y',0,'2013-10-21 23:13:17'),('Treatment','Y',0,'2013-10-21 23:13:17'),('Trench','Y',0,'2013-10-21 23:13:17'),('TV & Home Theatre','Y',0,'2013-10-21 23:13:17'),('Tweezer','Y',0,'2013-10-21 23:13:17'),('Umbrellas','Y',0,'2013-10-21 23:13:17'),('Umbrellas & Storage','Y',0,'2013-10-21 23:13:17'),('Underwear','Y',0,'2013-10-21 23:13:17'),('Vests','Y',0,'2013-10-21 23:13:17'),('Wall Decor','Y',0,'2013-10-21 23:13:17'),('Wallets & Cases','Y',0,'2013-10-21 23:13:17'),('Watches','Y',0,'2013-10-21 23:13:17'),('Wool','Y',0,'2013-10-21 23:13:17');
/*!40000 ALTER TABLE `member_class` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:41
