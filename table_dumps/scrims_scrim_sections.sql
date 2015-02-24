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
-- Table structure for table `scrims_scrim_sections`
--

DROP TABLE IF EXISTS `scrims_scrim_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scrims_scrim_sections` (
  `scrim` varchar(50) NOT NULL,
  `scrim_section` varchar(25) NOT NULL,
  PRIMARY KEY (`scrim`,`scrim_section`),
  KEY `FK_scrims_scrim_sections::scrim_sections` (`scrim_section`),
  CONSTRAINT `FK_scrims_scrim_sections::scrims` FOREIGN KEY (`scrim`) REFERENCES `scrims` (`scrim`) ON UPDATE CASCADE,
  CONSTRAINT `FK_scrims_scrim_sections::scrim_sections` FOREIGN KEY (`scrim_section`) REFERENCES `scrim_sections` (`scrim_section`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrims_scrim_sections`
--

LOCK TABLES `scrims_scrim_sections` WRITE;
/*!40000 ALTER TABLE `scrims_scrim_sections` DISABLE KEYS */;
INSERT INTO `scrims_scrim_sections` VALUES ('10 Dollar and Under - Catalog Banner','catalog_banner'),('15-and-Under-Catalog','catalog_banner'),('20-and-Under-Catalog','catalog_banner'),('40AndUnderCatalog','catalog_banner'),('495-catalog-banner','catalog_banner'),('595 Shipping Catalog','catalog_banner'),('All New Styles Catalog Banner','catalog_banner'),('All Under 100 Dollar - Catalog Banner','catalog_banner'),('All Under 14 Dollars Catalog Banner','catalog_banner'),('All under 15dollars Catalog Banner','catalog_banner'),('All Under 20 Dollar - Catalog Banner','catalog_banner'),('All Under 25 Catalog','catalog_banner'),('All Under 299 Dollars - Catalog Banner','catalog_banner'),('All Under 50 Dollars - Catalog Banner','catalog_banner'),('AllUnder10CatalogBanner','catalog_banner'),('AllUnder29CatalogBanner','catalog_banner'),('AllUnder30CatalogBanner','catalog_banner'),('AllUnder35CatalogBanner','catalog_banner'),('AllUnder40CatalogBanner','catalog_banner'),('AllUnder50CatalogBanner','catalog_banner'),('AntiqueCatalogBanner','catalog_banner'),('AuthenticCatalogBanner','catalog_banner'),('BloggerCatalogBanner','catalog_banner'),('Blowout 60percent Catalog Banner','catalog_banner'),('Blowout 65percent Catalog Banner','catalog_banner'),('Blowout 70percent Catalog Banner','catalog_banner'),('Blowout 75percent Catalog Banner','catalog_banner'),('Blowout 80percent Catalog Banner','catalog_banner'),('Blowout 85percent Catalog Banner','catalog_banner'),('Blowout 90percent Catalog Banner','catalog_banner'),('Blowout95PercentCatalog','catalog_banner'),('British Invasion Catalog','catalog_banner'),('Catalog Banner Private Graphic','catalog_banner'),('CEW 2011 Eco Catalog Banner','catalog_banner'),('Custom Art - Catalog Banner','catalog_banner'),('Deal of the Day Catalog Banner','catalog_banner'),('Designer Show Case Catalog Banner','catalog_banner'),('Details Editors Picks Catalog Banner','catalog_banner'),('Earth Day 2012 Catalog','catalog_banner'),('Earth Day Catalog Banner','catalog_banner'),('Easter Catalog Page','catalog_banner'),('Everything 4 Dollar Catalog Banner','catalog_banner'),('EverythingUnder6Catalog','catalog_banner'),('Extra Special for Easter Catalog Banner','catalog_banner'),('FallPickCatalogBanner','catalog_banner'),('Fathers Day 2012 Catalog','catalog_banner'),('Festival 2012 Catalog','catalog_banner'),('First Time on HauteLook Catalog Banner','catalog_banner'),('Free Delivery Catalog Banner','catalog_banner'),('Free Gift Catalog Banner 1','catalog_banner'),('FreeShip Catalog Banner','catalog_banner'),('Gift of the Day Catalog Banner','catalog_banner'),('Gifts for Dads Grads Catalog Banner','catalog_banner'),('Great Gift - Catalog Banner','catalog_banner'),('Great Gifts Holiday Catalog','catalog_banner'),('Great Stocking Stuffer - Catalog Header','catalog_banner'),('Guaranteed Delivery - Catalog Banner','catalog_banner'),('Guaranteed Header Seal','catalog_banner'),('Guaranteed Xmas 2011 Catalog Page','catalog_banner'),('GWP Catalog Banner Oct28','catalog_banner'),('HauteLook Exclusive Catalog Banner','catalog_banner'),('HauteLook Favorites- Catalog','catalog_banner'),('Holiday Entertaining Catalog Banner','catalog_banner'),('HOME HauteLook Exclusive Catalog Banner','catalog_banner'),('HOME-10under-new-catalog','catalog_banner'),('HOME-25under-new-catalog','catalog_banner'),('HOME-495Ship-new-catalog','catalog_banner'),('HOME-595Ship-new-catalog','catalog_banner'),('HOME-60percent-new-catalog','catalog_banner'),('HOME-65percent-new-catalog','catalog_banner'),('HOME-70percent-new-catalog','catalog_banner'),('HOME-75percent-new-catalog','catalog_banner'),('HOME-80percent-new-catalog','catalog_banner'),('HOME-85percent-new-catalog','catalog_banner'),('HOME-90percent-new-catalog','catalog_banner'),('HOME-allnewstyles-new-catalog','catalog_banner'),('HOME-AllUnder100-new-catalog','catalog_banner'),('HOME-AllUnder14-new-catalog','catalog_banner'),('HOME-AllUnder15-new-catalog','catalog_banner'),('HOME-AllUnder20-new-catalog','catalog_banner'),('HOME-AllUnder299-new-catalog','catalog_banner'),('HOME-AllUnder50-new-catalog','catalog_banner'),('HOME-Authenticated-new-catalog','catalog_banner'),('HOME-Designer-new-catalog','catalog_banner'),('HOME-DOTD-new-catalog','catalog_banner'),('HOME-FirstTimeHL-new-catalog','catalog_banner'),('HOME-FreeDel-new-catalog','catalog_banner'),('HOME-Freegift-new-catalog','catalog_banner'),('HOME-FreeShip-new-catalog','catalog_banner'),('HOME-greatgifts-new-catalog','catalog_banner'),('HOME-HL-Exclusive-new-catalog','catalog_banner'),('HOME-HL-favorites-new-catalog','catalog_banner'),('HOME-holidayentertaining-new-catalog','catalog_banner'),('HOME-LimitedEdition-new-catalog','catalog_banner'),('HOME-MadeintheUSA-new-catalog','catalog_banner'),('HOME-Original-new-catalog','catalog_banner'),('HOME-TodaysPickCatalogBanner','catalog_banner'),('HOME-Vintage-new-catalog','catalog_banner'),('HOME40andUnderCatalogBanner','catalog_banner'),('HOME95percentcatalog','catalog_banner'),('HOMEAllUnder40CatalogBanner','catalog_banner'),('HOMENewforFallCatalogBanner','catalog_banner'),('Limited Edition - Catalog Banner','catalog_banner'),('Limited Edition Catalog','catalog_banner'),('Little Brands We Love Catalog Banner','catalog_banner'),('Lucky Afternoon Delight Catalog Banner','catalog_banner'),('Lucky Editor Pick Catalog Banner','catalog_banner'),('LUCKY-Presents-Catalog-Banner','catalog_banner'),('Made in the USA Catalog','catalog_banner'),('MaternityStylesCatalogBanner','catalog_banner'),('Mothers Day 2012 Catalog','catalog_banner'),('New for Spring Catalog','catalog_banner'),('New Styles Added Catalog Banner','catalog_banner'),('New Year New You- Catalog','catalog_banner'),('OneofaKindCatalogBanner','catalog_banner'),('Our Favorite Home Catalog Banner','catalog_banner'),('Outdoor Perfect Catalog Banner','catalog_banner'),('Perfect for Mom Catalog Banner','catalog_banner'),('PlusSizeCatalogPage','catalog_banner'),('Private Sale Catalog Banner','catalog_banner'),('Returnable Catalog Banner Jun 2011','catalog_banner'),('Returnable Catalog Banner Oct28','catalog_banner'),('Spa Approved Catalog Banner','catalog_banner'),('Starting at 199 Catalog Banner','catalog_banner'),('Starting at 5-99 Catalog Banner','catalog_banner'),('Suitable For Outdoor Catalog Banner','catalog_banner'),('Summer Pick CatalogBanner','catalog_banner'),('TodaysPickCatalogBanner','catalog_banner'),('Under 99 Dollars Catalog Banner','catalog_banner'),('Valentine Catalog','catalog_banner'),('Valentines Day 2012- Catalog','catalog_banner'),('VintageCatalogBanner','catalog_banner'),('Winter Escape- Catalog','catalog_banner'),('Allure Best of Beauty Award Catalog Page','catalog_page'),('Allure Featured In Catalog','catalog_page'),('AsSeenInPeopleCatalogPage','catalog_page'),('AuthenticCatalogPage','catalog_page'),('BloggerCatalogPage','catalog_page'),('CCMChoice Catalog Left','catalog_page'),('CEW Finalist Catalog Page','catalog_page'),('CEW Indie Catalog Page','catalog_page'),('Deal of the Day Catalog Page','catalog_page'),('Derm First Choice Catalog Left','catalog_page'),('Derm first choice catalog right','catalog_page'),('Dr Toy Catalog Left','catalog_page'),('DrOz- Catalog Page','catalog_page'),('DrToy 100best Catalog Left','catalog_page'),('DrToy Best Vaca Catalog Left','catalog_page'),('Early Bird Catalog','catalog_page'),('Easter Catalog Page Product','catalog_page'),('Essence Beauty Award-Catalog Page','catalog_page'),('ExtraWideWidthCatalogPage','catalog_page'),('Facebook Clear Pixel - Catalog Page','catalog_page'),('FallPickCatalogPage','catalog_page'),('Fathers Day 2012 Cat-Prod','catalog_page'),('FB Fan Choice Catalog Left','catalog_page'),('FreeShippingCatalogPage','catalog_page'),('Gift of the Day Catalog Page','catalog_page'),('GiftWithPurchaseCatalogPage','catalog_page'),('Green Stars Cataolg Left','catalog_page'),('HauteLookExclusiveCatalogPage','catalog_page'),('HCG- Catalog Page','catalog_page'),('HL Exclusive Catalog Page Feb 2011','catalog_page'),('Inseam 30 Catalog Page','catalog_page'),('Inseam 32 CatalogPage','catalog_page'),('Inseam 34 Catalog Page','catalog_page'),('iParenting Media Award Catalog Left','catalog_page'),('iParenting Media Hot catalog left','catalog_page'),('KylePickCatalogPage','catalog_page'),('LargeCupSizeCatalogPage','catalog_page'),('LaunchPadCatalogPage','catalog_page'),('Limited Edition Prod-Catalog','catalog_page'),('Lisas Picks Catalog Page','catalog_page'),('Lucky Editor Pick Catalog Page','catalog_page'),('Made in the USA Prod-Catalog','catalog_page'),('MaternityCatalogPage','catalog_page'),('mvp catalog left','catalog_page'),('Nappa Gold Catalog Left','catalog_page'),('Nappa-Honors Catalog Left','catalog_page'),('Natural Products Association Catalog Product','catalog_page'),('NaturalSolutions catalog left','catalog_page'),('New Beauty Catalog Page','catalog_page'),('New Beauty Choice Catalog Page','catalog_page'),('New for 2012 Catalog Page','catalog_page'),('New-Catalog Page','catalog_page'),('NewBeautyAwardCatalogPage','catalog_page'),('NPC Catalog Left','catalog_page'),('OneofakindCatalogPage','catalog_page'),('Oppenheimer Plat Best Toy Catalog Left','catalog_page'),('Oppneheimer Gold Best Toy Catalog Left','catalog_page'),('Petite Size Catalog Page','catalog_page'),('Plus Size Catalog Page','catalog_page'),('PlusSizeCatalogPage2','catalog_page'),('Pop-up book catalog left','catalog_page'),('Redbook MVP catalog left','catalog_page'),('SaveOver300CatalogPage','catalog_page'),('SaveOver400CatalogPage','catalog_page'),('Self Catalog Left','catalog_page'),('Sheckys Catalog Left','catalog_page'),('StarBeautyAwards catalog left','catalog_page'),('SummerPickCatalogPage','catalog_page'),('Todays Top Beauty Pick Catalog Page','catalog_page'),('TodaysPickCatalogPage','catalog_page'),('Top Choice Catalog Left','catalog_page'),('VintageCatalogPage','catalog_page'),('Wall Street Journal- Catalog','catalog_page'),('WhatRachelLovesCatalogPage','catalog_page'),('WideWidthCatalogPage','catalog_page'),('Coming Soon Private Graphic','coming_soon'),('10 Dollar and Under - Event Page','event_page'),('15-and-Under-Event','event_page'),('20-and-Under-Event','event_page'),('40AndUnderEventPage','event_page'),('495-event-small','event_page'),('595Ship-event-small','event_page'),('All New Styles Event Page','event_page'),('All Under 100 Dollar - Event Page','event_page'),('All Under 14 Dollars Event Page','event_page'),('All under 15dollars Event Page','event_page'),('All Under 20 Dollar - Event Page','event_page'),('All Under 25 Event','event_page'),('All Under 299 Dollars - Event Page','event_page'),('All Under 50 Dollars - Event Page','event_page'),('AllUnder10EventPage','event_page'),('AllUnder29EventPage','event_page'),('AllUnder30Event','event_page'),('AllUnder35EventPage','event_page'),('AllUnder40EventPage','event_page'),('Allure_event_right.png','event_page'),('AntiqueEventPage','event_page'),('AuthenticEventPage','event_page'),('AuthenticVintageEventPage','event_page'),('BackToSchoolEvent','event_page'),('BloggerEventPage','event_page'),('Blowout 60percent Event Page','event_page'),('Blowout 65percent Event Page','event_page'),('Blowout 70percent Event Page','event_page'),('Blowout 75percent Event Page','event_page'),('Blowout 80percent Event Page','event_page'),('Blowout 85percent Event Page','event_page'),('Blowout 90percent Event Page','event_page'),('Blowout95PercentEvent','event_page'),('British Invasion Event','event_page'),('CEW 2011 Eco Event Page','event_page'),('CEW Finalist Event Page','event_page'),('CEW Indie Event Page','event_page'),('CEWSupergoopEventPage','event_page'),('CuratedEventPage','event_page'),('Custom Art - Event Page','event_page'),('Deal of the Day Event Page','event_page'),('Deal of the Day-Sold Out Event Page','event_page'),('DecorEventPage','event_page'),('Designer Show Case Event Page','event_page'),('Details Editors Picks Event Page','event_page'),('Earth Day 2012 Event','event_page'),('Earth Day Event Page','event_page'),('Event Page Private Graphic','event_page'),('Everything 4 Dollar Event Page','event_page'),('EverythingUnder6Event','event_page'),('Extra Special for Easter Event Page','event_page'),('FallPickEventPage','event_page'),('Fathers Day 2012','event_page'),('Festival 2012 Event','event_page'),('First Time on HauteLook Event Page','event_page'),('Free Delivery Event Page','event_page'),('Free Gift Event Page','event_page'),('FreeShip Event Page','event_page'),('Gift of the Day Event Page','event_page'),('Gifts for Dads Grads Event Page','event_page'),('Great Gift - Event Page','event_page'),('Great Gift Holiday 2011','event_page'),('Great Stocking Stuffer - Event Page','event_page'),('Guaranteed Delivery - event','event_page'),('Guaranteed Event Seal','event_page'),('Guaranteed Xmas 2011 Event Page','event_page'),('GWP Event Page Oct28','event_page'),('HalloweenEventPage','event_page'),('HauteLook Exclusive Event Page','event_page'),('HauteLook Favorites Event Page','event_page'),('Holiday Entertaining','event_page'),('Limited Edition - Event Page','event_page'),('Limited Edition Event','event_page'),('Limited Inventory event bottom right','event_page'),('Little Brands We Love Event Page','event_page'),('Little Brands We Love Event Page 2 lines copy','event_page'),('Lucky Afternoon Delight Event Page','event_page'),('Lucky Editor Pick Event Page','event_page'),('Lucky Editor Pick Event Page Nov1','event_page'),('Lucky Presents Event Page','event_page'),('lucky-event-seal','event_page'),('Made in the USA Event','event_page'),('MaternityStylesEventPage','event_page'),('Mothers Day 2012 Event','event_page'),('New For Fall Event Page','event_page'),('New for Spring Event','event_page'),('New Styles Added Event Page','event_page'),('New Year New You- Event','event_page'),('OneofakindEvent','event_page'),('Our Favorite Home Event Page','event_page'),('Outdoor Perfect Event Page','event_page'),('Perfect for Mom Event Page','event_page'),('PlusSizeEventPage','event_page'),('Private Sale Event Page','event_page'),('Redbook MVP event right','event_page'),('Returnable Event Page','event_page'),('Returnable Event Page Jun 2011','event_page'),('Returnable Event Page Oct28','event_page'),('Spa Approved Event Page','event_page'),('Starting at 199 Event Page','event_page'),('Starting at 5-99 Event Page','event_page'),('Stock Up for Winter - Event Page','event_page'),('Suitable For Outdoor Event Page','event_page'),('TodaysPickEventPage','event_page'),('Under 99 Dollars Event Page','event_page'),('Valentine Event','event_page'),('Valentines Day 2012- Event','event_page'),('VintageBazaarAlbumCoversEventPage','event_page'),('VintageBazaarAutographedEventPage','event_page'),('VintageBazaarOneKindEventPage','event_page'),('VintageBazaarPillowsPoufsEventPage','event_page'),('VintageBazaarRugsEventPage','event_page'),('VintageBazaarThowEventPage','event_page'),('VintageBazaarTreasuresEventPage','event_page'),('VintageEventPage','event_page'),('VintageEventPage2','event_page'),('VintageMarketFindsEvent','event_page'),('Winter Escape- Event','event_page'),('Allure Best of Beauty Award Product Page','product_page'),('Allure Featured In Product','product_page'),('AsSeeninPeopleProductPage','product_page'),('AuthenticProductPage','product_page'),('BloggerProductPage','product_page'),('CCMChoice Product Left','product_page'),('CEW Finalist Product Page','product_page'),('CEW Indie Product Page','product_page'),('CEWProductPage','product_page'),('Deal of the Day Product Page','product_page'),('Derm First Choice Product Left','product_page'),('Derm first choice product right','product_page'),('Dr Toy Product Left','product_page'),('DrOz- Product Page','product_page'),('DrToy 100best Product Left','product_page'),('DrToy Best Vaca Product Left','product_page'),('Early Bird Product','product_page'),('Easter Product Page','product_page'),('Essence Beauty Award-Product Page','product_page'),('FallPickProductPage','product_page'),('Fathers Day 2012 Prod','product_page'),('FB Fan Choice Product Left','product_page'),('Free Gift Product Left','product_page'),('FreeShippingProductPage','product_page'),('Gift of the Day Product Page','product_page'),('Green Stars Product Left','product_page'),('HauteLookExclusiveProductPage','product_page'),('HCG- Product Page','product_page'),('HL Exclusive Product Page','product_page'),('Inseam 30 Product Page','product_page'),('Inseam 32 Product Page','product_page'),('Inseam 34 Product Page','product_page'),('iParenting Media Award Product Left','product_page'),('iParenting Media Hot product left','product_page'),('KylePickProductPage','product_page'),('LargeCupSizeProductPage','product_page'),('LaunchPadProductPage','product_page'),('Limited Edition Product','product_page'),('Lisas Picks Product Page','product_page'),('Lucky Editor Pick Product Page','product_page'),('Made in the USA Product','product_page'),('MaternityProductPage','product_page'),('mvp product left','product_page'),('Nappa Gold Product Left','product_page'),('Nappa-Honors Product Left','product_page'),('Natural Products Association Product Page','product_page'),('NaturalSolutions product left','product_page'),('New Beauty Choice Product Page','product_page'),('New Beauty Product Page','product_page'),('New-Product Page','product_page'),('NewBeautyAwardProductPage','product_page'),('NPC Product Left','product_page'),('OneofakindProduct','product_page'),('Oppenheimer Plat Best Toy Product Left','product_page'),('Oppneheimer Gold Best Toy Product Left','product_page'),('PlusSizeProduct','product_page'),('PlusSizeProductPage2','product_page'),('Pop-up book product left','product_page'),('Redbook MVP product left','product_page'),('SaveOver300ProductPage','product_page'),('SaveOver400ProductPage','product_page'),('Self Product Left','product_page'),('Sheckys Product Left','product_page'),('Star Product','product_page'),('SummerPickProductPage','product_page'),('Todays Top Beauty Pick Product Page','product_page'),('TodaysPickProductPage','product_page'),('Top Choice Product Left','product_page'),('VintageProductPage','product_page'),('Wall Street Journal- Product','product_page');
/*!40000 ALTER TABLE `scrims_scrim_sections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:57
