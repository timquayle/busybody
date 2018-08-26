-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: busybody
-- ------------------------------------------------------
-- Server version	5.6.39-log

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
-- Table structure for table `workgen_movements_mgroup`
--

DROP TABLE IF EXISTS `workgen_movements_mgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workgen_movements_mgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movements_id` int(11) NOT NULL,
  `musclegroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workgen_movements_moveme_movements_id_musclegroup_df615125_uniq` (`movements_id`,`musclegroup_id`),
  UNIQUE KEY `workgen_movements_mgroup_movements_id_musclegroup_id_c12ef94d_un` (`movements_id`,`musclegroup_id`),
  KEY `workgen_movements_mgroup_musclegroup_id_51facd10` (`musclegroup_id`),
  KEY `workgen_movements_mgroup_movements_id_ac1dfc2e` (`movements_id`),
  CONSTRAINT `workgen_movements_mg_movements_id_ac1dfc2e_fk_workgen_m` FOREIGN KEY (`movements_id`) REFERENCES `workgen_movements` (`id`),
  CONSTRAINT `workgen_movements_mg_musclegroup_id_51facd10_fk_workgen_m` FOREIGN KEY (`musclegroup_id`) REFERENCES `workgen_musclegroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workgen_movements_mgroup`
--

LOCK TABLES `workgen_movements_mgroup` WRITE;
/*!40000 ALTER TABLE `workgen_movements_mgroup` DISABLE KEYS */;
INSERT INTO `workgen_movements_mgroup` VALUES (8,6,2),(9,8,2),(11,10,2),(13,12,2),(14,15,2),(16,17,2),(17,18,2),(18,21,6),(19,22,6),(20,23,6),(21,24,6),(22,25,6),(25,28,6),(26,29,6),(27,30,6),(29,30,7),(28,30,8),(34,35,3),(40,39,2),(38,39,3),(39,39,10),(41,40,10),(43,42,10),(45,45,10),(47,50,9),(48,51,9),(49,52,9),(51,54,9),(52,61,4),(53,62,4),(54,63,4),(55,64,4),(56,65,4),(104,67,5),(59,68,4),(122,68,10),(60,69,4),(61,70,4),(103,71,5),(109,72,5),(111,74,5),(112,75,5),(113,76,5),(114,77,5),(65,82,7),(66,83,7),(68,85,7),(69,86,7),(72,89,7),(78,96,8),(80,98,8),(82,99,8),(86,104,8),(88,106,8),(91,109,11),(92,110,11),(93,111,11),(94,112,11),(99,118,11),(101,120,11),(106,125,5),(107,126,5),(119,131,10),(121,133,10),(136,143,2),(138,144,6),(137,144,8),(139,145,3),(140,146,2),(142,146,3),(141,146,10),(143,147,9),(144,148,9),(146,149,4),(145,149,5),(147,150,8),(148,151,5),(149,152,8),(150,153,8),(151,154,8),(152,155,8),(153,156,8),(154,157,6),(156,158,6),(157,158,7),(155,158,8),(158,159,8),(159,160,8),(160,161,11),(161,162,11),(162,163,11),(163,164,11),(164,165,11),(166,166,4),(165,166,5),(168,167,2),(169,167,3),(167,167,10),(170,168,2),(172,168,3),(171,168,10),(173,169,11),(174,170,11),(175,171,11),(176,172,10),(178,173,3),(177,173,10),(179,174,10),(180,175,7),(181,176,2),(183,176,3),(182,176,4),(184,177,2),(186,177,3),(185,177,10),(187,178,2),(188,178,3),(189,178,10),(190,179,3),(191,179,10),(192,180,2),(193,181,2),(194,181,3),(195,181,10),(196,182,2),(197,182,3),(198,182,10),(199,183,3),(200,184,4),(202,185,2),(201,185,4),(203,186,3),(204,187,3),(205,188,3),(206,189,3),(208,190,6),(207,190,8),(209,191,2),(210,191,4),(211,191,5),(214,192,2),(212,192,4),(213,192,5),(215,193,2),(216,194,2),(217,195,3),(218,196,3),(219,197,3),(220,198,2),(221,198,3),(222,198,10),(223,199,2),(224,199,3),(225,199,10),(227,200,2),(226,200,4),(228,201,4),(229,202,4),(230,203,4),(231,204,4),(232,205,4),(235,206,6),(234,206,7),(233,206,8),(238,207,6),(237,207,7),(236,207,8),(239,208,6),(240,208,7),(241,208,8),(244,209,6),(242,209,7),(243,209,8),(245,210,6),(246,210,7),(247,210,8),(248,210,9),(249,211,6),(250,211,7),(251,211,8),(252,212,6),(253,212,7),(254,212,8),(255,213,2),(256,214,6);
/*!40000 ALTER TABLE `workgen_movements_mgroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16  9:32:15
