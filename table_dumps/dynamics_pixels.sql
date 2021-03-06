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
-- Table structure for table `dynamics_pixels`
--

DROP TABLE IF EXISTS `dynamics_pixels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamics_pixels` (
  `pixel` varchar(50) NOT NULL,
  `sid` int(10) unsigned DEFAULT NULL,
  `controller` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `cookie` varchar(45) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`pixel`),
  KEY `FK_dynamics_pixels::campaigns` (`sid`),
  CONSTRAINT `FK_dynamics_pixels::campaigns` FOREIGN KEY (`sid`) REFERENCES `campaigns` (`sid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamics_pixels`
--

LOCK TABLES `dynamics_pixels` WRITE;
/*!40000 ALTER TABLE `dynamics_pixels` DISABLE KEYS */;
INSERT INTO `dynamics_pixels` VALUES ('aaatell_apart_allpages_kanban1263.txt',NULL,NULL,NULL,NULL,NULL,'Tell Apart Pixels - All Pages - PROMO-632'),('aaatell_apart_cart_kanban32_bb.txt',NULL,NULL,NULL,NULL,NULL,'Tell Apart Pixels - Cart - KANBAN-32'),('aaatell_apart_transaction_KANBAN-874.txt',NULL,'checkout','index',NULL,NULL,'Tell Apart Pixels - Transaction Detail - PROMO-633'),('ace_reg_conv.txt',NULL,NULL,NULL,'new_member',NULL,'AOL Hybrid Pixel Reg Conversion - KANBAN-1749'),('ad-roll-order_bb.txt',NULL,'checkout','index',NULL,NULL,'Ad Roll - Order Confirmation'),('adconion_sign_up_kanban543.txt',63853,'events',NULL,'new_member',NULL,'Adconion Sign Up - KANBAN-543'),('ad_roll_campaigns.txt',NULL,'dglp',NULL,NULL,NULL,'Ad Roll - Campaigns'),('ad_roll_events.txt',NULL,'eventsX','all',NULL,NULL,'Ad Roll - Events'),('aol-reg-confirm.txt',NULL,NULL,NULL,'new_member',NULL,'PROMO-377'),('aol_checkout_kanban1375.txt',NULL,'checkout',NULL,NULL,NULL,'AOL Checkout - KANBAN-1375'),('aol_checkout_kanban1631.txt',NULL,'checkout',NULL,NULL,NULL,'AOL Checkout - KANBAN-859'),('aol_dglp.txt',NULL,'dglp','index',NULL,NULL,'AOL Retargeting Pixel'),('aol_pixel_72513.txt',NULL,'events',NULL,'new_member',NULL,'AOL Conversion Pixel'),('aol_pixel_no_sid.txt',NULL,'dglp','index',NULL,NULL,'AOL Conversion Pixel'),('crazyegg.txt',NULL,'events',NULL,NULL,NULL,'Crazy Egg pixel'),('crazyegg_catalog.txt',NULL,'catalog','index',NULL,NULL,'CrazyEgg Trial'),('crazyegg_catalog_new.txt',NULL,'catalog','index',NULL,NULL,'CrazyEgg Catalog'),('crazyegg_events.txt',NULL,'eventsX',NULL,NULL,NULL,'CrazyEgg Trial'),('crazyegg_product.txt',NULL,'inventory','show',NULL,NULL,'CrazyEgg product page'),('dglp_google_conversion.txt',NULL,'dglp',NULL,NULL,NULL,'Ticket #5507'),('epicmedia_events_81536.txt',81536,'events',NULL,NULL,NULL,'Epic Media Pixel'),('epicmedia_events_83792.txt',83792,'events',NULL,NULL,NULL,'Epic Media Pixel'),('epicmedia_events_all.txt',NULL,'dglp',NULL,NULL,NULL,'Epic Media Pixel - No SID'),('facebook_conversion.txt',NULL,NULL,NULL,'new_member','/events/start','Facebook Conversion pixel - ticket #6796'),('frontline_newmember_21584.txt',21584,NULL,NULL,'new_member','/events/start','Frontline Direct Member Conversion Pixel'),('frontline_newmember_63853.txt',63853,'events',NULL,'new_member','/events/start','Frontline New Member Conversion Pixel for SID 63853'),('frontline_regpages.txt',NULL,'dglp',NULL,NULL,NULL,'Frontline Registration Pages Pixel'),('google-affiliate-10007_all_orders_kanban1631.txt',NULL,'checkout','index',NULL,NULL,'Google Order Confirmation Pixel for SID 10007'),('google-checkout-50980_kanban1631.txt',NULL,'checkout','index',NULL,NULL,'Google Affiliate Pixel'),('google_ab_test_kanban1352a.txt',NULL,NULL,NULL,'new_member',NULL,'KANBAN-1311'),('google_affiliate_pixel_reg.txt',50980,'events',NULL,'new_member',NULL,'Google Affiliate Pixel'),('google_conversion_29918.txt',29918,NULL,NULL,'new_member','/events/start','Google Conversion- 29918'),('google_landing_page_mens_kanban1411.txt',NULL,NULL,NULL,NULL,'/campaigns/m2','Google Reg Page Men\'s - KANBAN-1411'),('google_reg_10007.txt',10007,NULL,NULL,'new_member',NULL,'Google reg conversion - KANBAN-1910'),('google_reg_54448.txt',54448,NULL,NULL,'new_member',NULL,'Google reg conversion - KANBAN-1910'),('google_reg_92182.txt',92182,NULL,NULL,'new_member',NULL,'Google reg conversion - KANBAN-1910'),('google_remarketing.txt',NULL,'dglp','campaign',NULL,NULL,'Google Remarketing'),('google_remarketing_1031949535.txt',NULL,'dglp',NULL,NULL,NULL,'Google Code for People who reach the homepage Remarketing List'),('google_remarketing_kanban1354.txt',NULL,'checkout','index',NULL,NULL,'Google Remarketing - KANBAN-1354'),('google_remarketing_kanban141.txt',NULL,'eventsX',NULL,NULL,NULL,'Google Remarketing - KANBAN-141'),('impact_radius_checkout_PROMO593a_bb.txt',NULL,'checkout','index',NULL,NULL,'Impact Radius Checkout - PROMO-593'),('impact_radius_signup_PROMO593.txt',NULL,NULL,NULL,'new_member',NULL,'Impact Radius Signup - PROMO-593'),('index_google_conversion.txt',NULL,'index',NULL,NULL,NULL,'Ticket #5507'),('integrate_29726.txt',29726,NULL,NULL,'new_member',NULL,'HowLifeWorks PROMO-617'),('integrate_58703.txt',58703,NULL,NULL,'new_member',NULL,'integrate.com PROMO-580'),('integrate_retargeting_conf.txt',NULL,NULL,NULL,'new_member',NULL,'Integrate Sign Up - KANBAN-949'),('integrate_retargeting_reg.txt',NULL,'dglp',NULL,NULL,NULL,'Integrate Sign Up Confirmation - KANBAN-949'),('leadback_reg.txt',NULL,'dglp','index',NULL,NULL,'AOL Leadback Pixel - KANBAN-1749'),('microsoft_reg_confirm.txt',NULL,NULL,NULL,'new_member',NULL,'Microsoft Canada Account Pixel'),('mk_indexd.txt',10070,NULL,NULL,NULL,'/','IndexD 10070'),('msn_10020.txt',10020,NULL,NULL,'new_member','/events/start','MSN conversion'),('msn_purchase.txt',NULL,'checkout','index',NULL,NULL,'MSN Order Confirmation Pixel - KANBAN-1913'),('msn_reg.txt',NULL,NULL,NULL,'new_member',NULL,'MSN Signup, KANBAN-1642'),('mylikes_events_64650.txt',67650,'events',NULL,'new_member','/events/start','MyLikes Member Conversion Pixel'),('nanigan_cart_kanban393.txt',NULL,NULL,NULL,NULL,NULL,'Nanigan Cart Pixel - KANBAN-393'),('nanigan_purchase_kanban393.txt',NULL,'checkout','index',NULL,NULL,'Nanigan Purchase Pixel - KANBAN-393'),('nanigan_reg_kanban393.txt',NULL,NULL,NULL,'new_member',NULL,'Nanigan Reg Pixel - KANBAN-393'),('nextjump_checkout_complete.txt.bad',NULL,'checkout','index',NULL,NULL,'Next Jump Pixel'),('nextjump_landing.txt',NULL,'dglp',NULL,NULL,NULL,'NextJump Landing Pixel'),('optimizely_goal_sign_up.txt',NULL,NULL,NULL,'new_member',NULL,'Optimizely Goal Sign Up - KANBAN-1843'),('opt_in_catalog.txt',NULL,'catalog','index',NULL,NULL,'Opt In Smart Pixel'),('opt_in_product.txt',NULL,'inventory','show',NULL,NULL,'Opt In Smart Pixel'),('permuto_checkout_bb.txt',NULL,'checkoutX','index',NULL,NULL,'Permuto Pixel on Thank You page'),('permuto_prod_allmembers_bb.txt',NULL,'inventory','show',NULL,NULL,'Product page pixel - all members'),('quantcast.txt',NULL,NULL,NULL,NULL,NULL,'Quantcast'),('spruce_media_conversion_kanban140.txt',35418,NULL,NULL,'new_member',NULL,'Spruce Media Conversion - KANBAN-140'),('start_atdmt_all.txt',NULL,NULL,NULL,'new_member','/events/start','adtmt signup conversion pixel'),('start_bluelithium_all.txt',97776,NULL,NULL,NULL,'/events/','Email blast retargeting bluelithium'),('start_google_canada_all.txt',NULL,NULL,NULL,'new_member','/events/start','Google conversion canada pixel'),('start_google_signups_all.txt',NULL,NULL,NULL,'new_member','/events/start','Google conversion pixel'),('twig_all_pages_kanban1389.txt',NULL,NULL,NULL,NULL,NULL,'Twig Pixel All Other Pages - PROMO-619'),('twig_checkout_kanban1389.txt',NULL,'checkout','index',NULL,NULL,'Twig Pixel Checkout - PROMO-619'),('twig_signup_kanban1389.txt',NULL,NULL,NULL,'new_member',NULL,'Twig Pixel Signup - PROMO-619'),('yahoo_10043.txt',10043,NULL,NULL,'new_member','/events/start','Yahoo conversion'),('yahoo_10070.txt',10070,NULL,NULL,'new_member','/events/start','Yahoo conversion 10070'),('yahoo_campaigns_10070.txt',10070,'dglp','campaign',NULL,NULL,'Yahoo pixel for 10070'),('yahoo_exclusion.txt',10070,NULL,NULL,'new_member',NULL,'Yahoo Sign Up Exclusion - KANBAN-911'),('yahoo_mens_10070.txt',10070,'dglp','index',NULL,NULL,'Yahoo Right Media Men\'s Conversion Pixel'),('yahoo_reg.txt',10070,'dglp',NULL,NULL,NULL,'Yahoo Sign Up - KANBAN-911'),('yahoo_reg_conf.txt',10070,NULL,NULL,'new_member',NULL,'Yahoo Sign Up Confirmation - KANBAN-911'),('yahoo_retargeting_pixel_index_nordstrom.txt',NULL,'dglp','index',NULL,NULL,'Yahoo Retargeting Pixel for Nordstrom Remarketing - PROMO-653'),('yahoo_retargeting_pixel_login_nordstrom.txt',NULL,'loginX',NULL,NULL,NULL,'Yahoo Retargeting Pixel for Nordstrom Remarketing - PROMO-653'),('yahoo_retargeting_pixel_regpage_nordstrom.txt',NULL,'dglp','campaign',NULL,NULL,'Yahoo Retargeting Pixel for Nordstrom Remarketing - PROMO-653'),('zbizrate_checkout_shadowbox.txt',NULL,'checkout','index',NULL,NULL,'BizRate Survey Popup'),('zz2.txt',NULL,'checkoutX','index',NULL,NULL,'Overrides BizRate with IAF'),('zz_no_bizrate.txt',NULL,'checkoutX',NULL,NULL,NULL,'Kill BizRate'),('zz_shipping_changed_shadowbox.txt',NULL,'checkout',NULL,NULL,NULL,'Override Bizrate if shipping changed');
/*!40000 ALTER TABLE `dynamics_pixels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:21
