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
-- Table structure for table `events_styles`
--

DROP TABLE IF EXISTS `events_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_styles` (
  `event_id` int(10) unsigned NOT NULL DEFAULT '1',
  `style_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`event_id`,`style_id`),
  KEY `FK_Events:style_id::Styles:style_id` (`style_id`),
  CONSTRAINT `C_Events:event_id::Styles:event_id` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `C_Events:style_id::Styles:style_id` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_styles`
--

LOCK TABLES `events_styles` WRITE;
/*!40000 ALTER TABLE `events_styles` DISABLE KEYS */;
INSERT INTO `events_styles` VALUES (1234,43606),(1234,43621),(1234,43622),(1234,43623),(1234,43624),(1234,43625),(1234,43626),(1234,43627),(1234,43628),(1234,43629),(1234,43630),(1234,43631),(1234,43632),(1234,43633),(1234,43634),(1234,43635),(1234,43636),(1234,43637),(1234,43638),(1234,43639),(1234,43640),(1234,43641),(1234,43642),(1234,43643),(6156,44585),(6156,44588),(6156,44589),(6156,44596),(6156,44597),(6156,44599),(6156,44602),(6156,44606),(6156,44607),(6156,44608),(6156,44609),(6156,46841),(6156,56535),(2435,63761),(2435,63764),(2435,63765),(2435,63766),(2435,63767),(2435,63769),(2435,63770),(2435,63771),(2435,63772),(2435,63773),(2435,63774),(2435,63775),(2435,63778),(2435,63779),(2435,63781),(2435,63782),(2435,63783),(2435,63784),(2435,63785),(2435,63786),(2435,63787),(2435,63788),(2435,63789),(2435,63790),(2435,63791),(2435,63792),(2435,63793),(2435,63794),(2435,63795),(2435,63796),(2435,63797),(2435,63798),(2435,63799),(2435,63800),(2435,63804),(2435,63805),(2435,63808),(2435,63812),(2435,63813),(2435,63814),(2435,63815),(2663,63998),(2663,63999),(2663,64000),(2663,64001),(2663,64002),(2663,64003),(2663,64006),(2663,64007),(2663,64013),(2663,64016),(2663,64017),(2663,64020),(2663,64022),(2663,64030),(2663,64032),(2663,64034),(2663,64036),(2663,64037),(2663,64038),(2663,64040),(2663,64041),(2663,64046),(2663,64047),(2663,64048),(2663,64051),(2435,83910),(2435,83911),(2435,83912),(2435,83913),(2435,83914),(6156,84563),(6156,84564),(6156,84565),(6156,84566),(2663,93232),(2663,93233),(2663,93234),(2663,93235),(2663,93236),(2663,93237),(2663,93238),(2663,93239),(2663,93240),(2663,93241),(2663,93242),(2663,93243),(2663,93244),(2663,93245),(2663,93246),(2663,93247),(2663,93248),(2663,93249),(2663,93250),(2663,93251),(2663,93252),(2663,93253),(2663,93254),(2663,93255),(2663,93256),(2663,93257),(2663,93258),(2663,93259),(2813,100374),(2813,100375),(2813,100376),(2813,100377),(2813,100378),(2813,100379),(2813,100380),(2813,100381),(2813,100382),(2813,100383),(2813,100384),(2813,100385),(2813,100386),(2813,100387),(2813,100388),(2813,100389),(2813,100390),(2813,100391),(2813,100392),(2813,100393),(2813,100394),(2813,100395),(2813,100396),(2813,100397),(2813,100398),(2813,100399),(2813,100400),(2813,100401),(2813,100402),(2813,100403),(2813,100404),(2813,100405),(2813,100406),(2813,100407),(2813,100408),(2813,100409),(6257,128956),(6257,128957),(6257,128958),(6257,128959),(6257,128960),(6257,128961),(6257,128964),(6257,128965),(6257,128966),(6257,128967),(6257,128968),(6257,128969),(6257,128970),(6257,128971),(6257,128972),(6257,128973),(6257,128974),(6257,128975),(6257,128976),(6257,128977),(6257,128981),(6257,128982),(6257,129385),(6156,143725),(6156,143726),(6156,143727),(6156,143728),(6156,143729),(6156,143730),(6156,143733),(6156,143735),(6156,143736),(6156,143737),(6156,143738),(6156,145474),(13470,152813),(13470,152817),(6257,173361),(6257,173362),(6257,173364),(6257,173365),(6257,173366),(6257,173367),(6257,173368),(6257,173369),(6257,173370),(6257,173371),(6257,173372),(21712,189105),(6156,189907),(6156,189908),(6156,189909),(6156,189910),(6156,189911),(6156,189912),(6156,189913),(6156,189914),(6156,189915),(6156,189916),(6156,189917),(6156,189918),(6156,189919),(6156,189920),(6156,189921),(6156,189922),(6257,192546),(13470,230104),(13470,234714),(13470,234721),(13470,234727),(13470,234733),(13470,234743),(12798,252201),(12798,252202),(12798,252203),(12798,289364),(12798,289365),(12798,289366),(12798,289368),(12798,289369),(12798,289370),(12798,289371),(12798,289372),(12798,289373),(12798,289374),(12798,289376),(12798,289377),(12798,289378),(12798,289379),(12798,289381),(12798,289382),(12798,289383),(12798,289385),(12798,289386),(12798,289387),(12798,289390),(12798,289391),(12798,289392),(12798,289393),(12798,289394),(12798,289396),(12798,289398),(12798,289399),(12798,289400),(12798,289401),(12798,289402),(12798,289403),(12798,291537),(12798,291539),(12798,329960),(12798,329961),(12798,329962),(12798,329963),(12798,329964),(12798,329965),(12798,329966),(12798,329967),(12798,329968),(12798,329969),(12798,329970),(12798,329971),(12798,329972),(12798,329973),(12798,329974),(12798,329975),(12798,329976),(12798,329977),(12798,329978),(12798,329980),(12798,329981),(13470,359868),(13470,359873),(13470,359878),(13470,359882),(13470,359883),(13470,359884),(13470,359885),(13470,359886),(13470,359887),(13470,359888),(13470,359889),(13470,359890),(13470,359891),(13470,359892),(13470,359893),(13470,359894),(13470,359895),(13470,359896),(13470,359897),(13470,359898),(13470,359899),(13470,359900),(13470,359901),(13470,359902),(13470,359903),(13470,359904),(13470,359905),(13470,359906),(13470,359907),(13470,359908),(13470,359909),(13470,359910),(13470,359911),(13470,359912),(13470,359913),(13470,359914),(13470,359915),(13470,359916),(13470,359917),(13470,359918),(13470,359919),(13470,359920),(13470,359921),(13470,359922),(13470,359923),(13470,359924),(13470,359925),(13470,359926),(13470,359927),(13470,359928),(13470,359929),(13470,359930),(13470,359931),(13470,359932),(13470,359933),(16972,401544);
/*!40000 ALTER TABLE `events_styles` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER events_styles_bi BEFORE INSERT ON events_styles FOR EACH ROW
BEGIN

DECLARE v_coa VARCHAR(50) DEFAULT NULL;

select
CASE
  WHEN quads.department = 'Men' THEN 'men'
  WHEN quads.department = 'Baby & Kids' THEN 'kids'
  WHEN quads.vertical = 'Jewelry' THEN 'jewelry_watches'
  WHEN quads.vertical = 'Home' THEN 'home'
  WHEN quads.vertical = 'Beauty' THEN 'beauty'
  WHEN quads.vertical = 'Apparel' and quads.department = 'Women' THEN 'womens_apparel'
  WHEN quads.vertical = 'Accessories' and quads.department in ('Women','Unisex') THEN 'womens_accessories'
  ELSE 'default'
END AS coa

INTO v_coa

FROM events_styles
INNER JOIN styles USING(style_id)
INNER JOIN quads USING(quad_id)
WHERE event_id = NEW.event_id
GROUP BY quads.vertical, quads.department, quads.category
ORDER BY COUNT(styles.style_id) DESC
LIMIT 1;

UPDATE `events`
SET coa = v_coa
WHERE event_id = NEW.event_id;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-24  0:05:24
