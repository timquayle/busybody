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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-06-05 19:31:23.228000'),(2,'auth','0001_initial','2018-06-05 19:31:23.830000'),(3,'admin','0001_initial','2018-06-05 19:31:23.940000'),(4,'admin','0002_logentry_remove_auto_add','2018-06-05 19:31:23.960000'),(5,'contenttypes','0002_remove_content_type_name','2018-06-05 19:31:24.050000'),(6,'auth','0002_alter_permission_name_max_length','2018-06-05 19:31:24.080000'),(7,'auth','0003_alter_user_email_max_length','2018-06-05 19:31:24.140000'),(8,'auth','0004_alter_user_username_opts','2018-06-05 19:31:24.160000'),(9,'auth','0005_alter_user_last_login_null','2018-06-05 19:31:24.200000'),(10,'auth','0006_require_contenttypes_0002','2018-06-05 19:31:24.210000'),(11,'auth','0007_alter_validators_add_error_messages','2018-06-05 19:31:24.230000'),(12,'auth','0008_alter_user_username_max_length','2018-06-05 19:31:24.330000'),(13,'sessions','0001_initial','2018-06-05 19:31:24.370000'),(14,'workgen','0001_initial','2018-06-05 19:31:24.520000'),(15,'workgen','0002_auto_20180525_1554','2018-06-05 19:31:24.852000'),(16,'workgen','0003_auto_20180525_1556','2018-06-05 19:31:25.002000'),(17,'workgen','0004_auto_20180528_1314','2018-06-05 19:31:25.092000'),(18,'workgen','0005_auto_20180528_1410','2018-06-05 19:31:25.306000'),(19,'workgen','0006_auto_20180528_1410','2018-06-05 19:31:25.426000'),(20,'workgen','0007_remove_workouts_name','2018-06-05 19:31:25.496000'),(21,'workgen','0008_movements_repsperset','2018-06-05 19:31:25.566000'),(22,'workgen','0009_movements_wtype','2018-06-05 19:31:25.626000'),(23,'workgen','0010_workouts_user','2018-06-05 19:31:25.769000'),(24,'workgen','0011_auto_20180601_1752','2018-06-05 19:31:25.799000'),(25,'workgen','0012_auto_20180608_1632','2018-06-08 23:32:46.013000'),(26,'workgen','0013_auto_20180608_1657','2018-06-08 23:57:13.890000'),(27,'workgen','0014_equipment_name','2018-06-09 00:13:10.595000'),(28,'workgen','0015_movements_equipment','2018-06-09 01:47:42.596000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
