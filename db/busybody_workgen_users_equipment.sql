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
-- Table structure for table `workgen_users_equipment`
--

DROP TABLE IF EXISTS `workgen_users_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workgen_users_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workgen_users_Equipment_users_id_equipment_id_ec7203df_uniq` (`users_id`,`equipment_id`),
  KEY `workgen_users_equipm_equipment_id_6df401f6_fk_workgen_e` (`equipment_id`),
  CONSTRAINT `workgen_users_equipm_equipment_id_6df401f6_fk_workgen_e` FOREIGN KEY (`equipment_id`) REFERENCES `workgen_equipment` (`id`),
  CONSTRAINT `workgen_users_equipment_users_id_b6e8b359_fk_workgen_users_id` FOREIGN KEY (`users_id`) REFERENCES `workgen_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workgen_users_equipment`
--

LOCK TABLES `workgen_users_equipment` WRITE;
/*!40000 ALTER TABLE `workgen_users_equipment` DISABLE KEYS */;
INSERT INTO `workgen_users_equipment` VALUES (60,2,2),(61,2,3),(62,2,5),(63,2,6),(64,2,7),(65,2,8),(66,2,9),(67,2,10),(68,2,11),(69,2,12),(70,2,13),(71,2,14),(72,2,15),(16,22,2),(11,22,3),(14,22,5),(10,22,6),(9,22,7),(25,22,8),(17,22,9),(15,22,10),(18,22,11),(22,22,12),(7,22,13),(20,22,14),(8,22,15),(44,24,2),(39,24,3),(42,24,5),(38,24,6),(37,24,7),(53,24,8),(45,24,9),(43,24,10),(46,24,11),(50,24,12),(35,24,13),(48,24,14),(36,24,15);
/*!40000 ALTER TABLE `workgen_users_equipment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16  9:32:14
