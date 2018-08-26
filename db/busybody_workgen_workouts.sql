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
-- Table structure for table `workgen_workouts`
--

DROP TABLE IF EXISTS `workgen_workouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workgen_workouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workoutdate` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workgen_workouts_user_id_09a9e7c6` (`user_id`),
  CONSTRAINT `workgen_workouts_user_id_09a9e7c6_fk_workgen_users_id` FOREIGN KEY (`user_id`) REFERENCES `workgen_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workgen_workouts`
--

LOCK TABLES `workgen_workouts` WRITE;
/*!40000 ALTER TABLE `workgen_workouts` DISABLE KEYS */;
INSERT INTO `workgen_workouts` VALUES (32,'2018-06-02','2018-06-02 23:48:56.122000','2018-06-02 23:48:56.122000',1),(33,'2018-06-03','2018-06-02 23:49:07.075000','2018-06-02 23:49:07.075000',1),(34,'2018-06-04','2018-06-02 23:50:01.161000','2018-06-02 23:50:01.161000',1),(35,'2018-06-05','2018-06-02 23:50:27.898000','2018-06-02 23:50:27.898000',1),(36,'2018-06-06','2018-06-02 23:51:11.695000','2018-06-02 23:51:11.695000',1),(37,'2018-07-06','2018-06-02 23:53:12.111000','2018-06-02 23:53:12.111000',1),(38,'2018-07-07','2018-06-02 23:56:30.617000','2018-06-02 23:56:30.617000',1),(39,'2018-07-08','2018-06-02 23:56:54.933000','2018-06-02 23:56:54.933000',1),(40,'2018-06-01','2018-06-03 20:06:37.314000','2018-06-03 20:06:37.314000',1),(41,'2018-06-07','2018-06-03 20:08:27.456000','2018-06-03 20:08:27.456000',1),(42,'2018-06-08','2018-06-03 20:19:11.592000','2018-06-03 20:19:11.592000',1),(43,'2018-06-09','2018-06-06 00:51:48.768000','2018-06-06 00:51:48.768000',1),(49,'2018-06-09','2018-06-06 18:52:27.562000','2018-06-06 18:52:27.562000',3),(50,'2018-06-03','2018-06-06 18:52:56.081000','2018-06-06 18:52:56.082000',3),(51,'2018-06-06','2018-06-06 18:53:44.534000','2018-06-06 18:53:44.534000',3),(52,'2018-06-04','2018-06-06 18:54:10.807000','2018-06-06 18:54:10.808000',3),(53,'2018-06-05','2018-06-06 18:54:37.361000','2018-06-06 18:54:37.361000',3),(54,'2018-06-07','2018-06-06 18:55:46.717000','2018-06-06 18:55:46.717000',3),(55,'2018-06-08','2018-06-06 18:56:03.760000','2018-06-06 18:56:03.760000',3),(56,'2018-06-10','2018-06-11 21:35:38.462000','2018-06-11 21:35:38.462000',22),(59,'2018-06-10','2018-06-11 23:01:36.441000','2018-06-11 23:01:36.441000',2),(60,'2018-06-15','2018-06-15 16:23:43.300000','2018-06-15 16:23:43.300000',24),(61,'2018-06-10','2018-06-15 16:24:01.679000','2018-06-15 16:24:01.679000',24),(62,'2018-06-11','2018-06-15 22:04:41.155000','2018-06-15 22:04:41.155000',2);
/*!40000 ALTER TABLE `workgen_workouts` ENABLE KEYS */;
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
