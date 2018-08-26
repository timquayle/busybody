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
-- Table structure for table `workgen_workouts_moves`
--

DROP TABLE IF EXISTS `workgen_workouts_moves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workgen_workouts_moves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workouts_id` int(11) NOT NULL,
  `movements_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workgen_workouts_movemen_workouts_id_movements_id_47fa9c52_uniq` (`workouts_id`,`movements_id`),
  UNIQUE KEY `workgen_workouts_moves_workouts_id_movements_id_31446b37_uniq` (`workouts_id`,`movements_id`),
  KEY `workgen_workouts_moves_workouts_id_eb5a0570` (`workouts_id`),
  KEY `workgen_workouts_moves_movements_id_490b9bc2` (`movements_id`),
  CONSTRAINT `workgen_workouts_mov_movements_id_490b9bc2_fk_workgen_m` FOREIGN KEY (`movements_id`) REFERENCES `workgen_movements` (`id`),
  CONSTRAINT `workgen_workouts_mov_workouts_id_eb5a0570_fk_workgen_w` FOREIGN KEY (`workouts_id`) REFERENCES `workgen_workouts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workgen_workouts_moves`
--

LOCK TABLES `workgen_workouts_moves` WRITE;
/*!40000 ALTER TABLE `workgen_workouts_moves` DISABLE KEYS */;
INSERT INTO `workgen_workouts_moves` VALUES (183,32,12),(188,32,29),(186,32,65),(187,32,74),(189,32,112),(185,32,131),(190,33,10),(194,33,71),(197,34,6),(202,34,30),(201,34,76),(203,34,120),(205,35,39),(207,35,64),(210,35,118),(211,36,18),(214,36,69),(215,36,75),(218,37,15),(219,37,35),(221,37,68),(222,37,77),(227,38,40),(228,38,70),(230,38,89),(231,38,111),(229,38,126),(232,39,8),(235,39,63),(238,39,109),(236,39,125),(239,40,15),(243,40,126),(241,40,131),(246,41,5),(249,41,70),(252,41,110),(248,41,133),(253,42,8),(254,42,35),(256,42,62),(255,42,68),(265,43,24),(262,43,40),(263,43,63),(264,43,72),(266,43,111),(302,49,39),(305,49,70),(306,49,77),(307,49,104),(309,50,12),(312,50,68),(315,50,112),(313,50,126),(317,51,35),(318,51,42),(319,51,63),(320,51,72),(321,51,83),(322,51,109),(326,52,62),(330,53,8),(334,53,67),(339,54,45),(340,54,69),(341,54,125),(344,55,18),(347,55,65),(349,55,86),(350,55,111),(346,55,131),(354,56,64),(380,60,65),(381,60,72),(382,60,82),(383,60,112),(391,62,18),(396,62,30),(392,62,39),(393,62,40),(394,62,63),(395,62,76),(397,62,110);
/*!40000 ALTER TABLE `workgen_workouts_moves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16  9:32:16
