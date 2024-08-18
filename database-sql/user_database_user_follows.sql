-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: yumbyte.c1kwu2kwmcn6.eu-central-1.rds.amazonaws.com    Database: user_database
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `user_follows`
--

DROP TABLE IF EXISTS `user_follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_follows` (
  `follower_id` bigint unsigned NOT NULL,
  `followed_id` bigint unsigned NOT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`follower_id`,`followed_id`),
  KEY `followed_id_index` (`followed_id`),
  KEY `idx_follower_id` (`follower_id`),
  CONSTRAINT `fk_followed_id` FOREIGN KEY (`followed_id`) REFERENCES `user_profile` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_follower_id` FOREIGN KEY (`follower_id`) REFERENCES `user_profile` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_follows`
--

LOCK TABLES `user_follows` WRITE;
/*!40000 ALTER TABLE `user_follows` DISABLE KEYS */;
INSERT INTO `user_follows` VALUES (1,2,'2024-08-16 00:52:11'),(1,26,'2024-08-13 12:43:33'),(1,34,'2024-08-12 04:51:41'),(1,49,'2024-08-11 09:46:13'),(1,52,'2024-08-11 14:07:58'),(1,88,'2024-08-12 14:46:03'),(1,98,'2024-08-12 02:47:37'),(2,1,'2024-08-12 05:37:05'),(2,16,'2024-08-14 23:59:42'),(2,19,'2024-08-16 08:46:46'),(2,35,'2024-08-11 12:10:03'),(2,40,'2024-08-16 17:25:06'),(2,44,'2024-08-12 18:46:48'),(2,51,'2024-08-15 11:43:58'),(2,53,'2024-08-11 02:50:22'),(2,57,'2024-08-12 18:20:30'),(2,67,'2024-08-13 01:04:42'),(2,73,'2024-08-11 15:39:56'),(2,81,'2024-08-16 08:42:10'),(2,83,'2024-08-15 08:11:31'),(2,92,'2024-08-11 01:44:48'),(2,96,'2024-08-15 00:40:53'),(2,98,'2024-08-15 22:21:46'),(3,10,'2024-08-13 09:06:41'),(3,11,'2024-08-14 19:37:52'),(3,17,'2024-08-11 17:42:09'),(3,26,'2024-08-14 19:15:02'),(3,29,'2024-08-13 23:39:46'),(3,47,'2024-08-11 08:19:39'),(3,59,'2024-08-16 04:39:17'),(3,63,'2024-08-10 23:55:09'),(3,68,'2024-08-14 03:16:08'),(3,79,'2024-08-11 20:14:56'),(3,85,'2024-08-14 10:35:19'),(3,91,'2024-08-14 08:18:46'),(4,8,'2024-08-11 02:40:21'),(4,18,'2024-08-11 00:53:06'),(4,42,'2024-08-15 12:44:40'),(4,74,'2024-08-16 12:56:34'),(4,97,'2024-08-15 22:09:17'),(5,19,'2024-08-11 05:49:58'),(5,27,'2024-08-15 13:52:46'),(5,41,'2024-08-16 17:50:16'),(5,65,'2024-08-12 17:56:39'),(5,85,'2024-08-12 16:53:00'),(5,93,'2024-08-11 18:30:57'),(6,10,'2024-08-14 17:35:42'),(6,15,'2024-08-14 09:02:06'),(6,22,'2024-08-14 22:26:50'),(6,52,'2024-08-16 10:38:32'),(6,63,'2024-08-16 00:54:26'),(6,75,'2024-08-11 21:35:33'),(6,79,'2024-08-12 23:36:10'),(6,100,'2024-08-15 17:06:43'),(7,8,'2024-08-15 19:25:13'),(7,13,'2024-08-13 10:45:31'),(7,14,'2024-08-15 06:30:06'),(7,21,'2024-08-13 19:27:33'),(7,23,'2024-08-15 20:46:23'),(7,26,'2024-08-13 16:26:44'),(7,33,'2024-08-13 05:49:27'),(7,35,'2024-08-12 21:58:49'),(7,40,'2024-08-11 02:19:41'),(7,41,'2024-08-12 09:24:53'),(7,90,'2024-08-14 09:09:51'),(7,91,'2024-08-11 04:20:03'),(8,1,'2024-08-15 01:45:04'),(8,2,'2024-08-16 05:12:25'),(8,6,'2024-08-13 20:12:43'),(8,25,'2024-08-13 12:29:12'),(8,46,'2024-08-12 01:16:20'),(8,47,'2024-08-16 11:35:52'),(8,55,'2024-08-14 01:06:43'),(8,68,'2024-08-12 16:24:16'),(8,85,'2024-08-12 00:05:08'),(8,91,'2024-08-13 22:38:55'),(9,1,'2024-08-12 02:38:27'),(9,5,'2024-08-16 08:02:17'),(9,8,'2024-08-12 23:41:54'),(9,15,'2024-08-13 16:00:06'),(9,19,'2024-08-16 01:45:10'),(9,21,'2024-08-14 00:58:18'),(9,30,'2024-08-14 11:42:17'),(9,38,'2024-08-12 11:18:29'),(9,44,'2024-08-14 16:32:59'),(9,63,'2024-08-10 22:53:02'),(9,68,'2024-08-12 04:07:51'),(9,69,'2024-08-11 02:56:37'),(9,70,'2024-08-14 21:02:47'),(9,76,'2024-08-15 05:05:10'),(9,84,'2024-08-11 15:50:11'),(9,89,'2024-08-11 11:47:38'),(9,90,'2024-08-13 03:06:41'),(9,95,'2024-08-12 13:31:00'),(10,3,'2024-08-15 23:01:14'),(10,17,'2024-08-12 08:00:07'),(10,59,'2024-08-13 18:35:10'),(10,60,'2024-08-12 04:46:40'),(10,67,'2024-08-13 09:04:17'),(10,95,'2024-08-12 06:08:50'),(11,2,'2024-08-14 04:15:29'),(11,29,'2024-08-13 06:22:06'),(11,41,'2024-08-11 09:17:14'),(11,42,'2024-08-16 09:07:36'),(11,68,'2024-08-16 00:24:51'),(11,70,'2024-08-13 11:55:42'),(11,80,'2024-08-14 05:37:33'),(11,99,'2024-08-14 15:05:21'),(12,5,'2024-08-12 11:20:04'),(12,6,'2024-08-11 13:11:48'),(12,21,'2024-08-12 19:24:37'),(12,24,'2024-08-12 13:55:33'),(12,34,'2024-08-12 00:07:23'),(12,41,'2024-08-16 16:27:35'),(12,76,'2024-08-15 09:45:11'),(12,82,'2024-08-12 07:48:16'),(12,88,'2024-08-11 16:55:09'),(12,91,'2024-08-16 13:32:06'),(12,94,'2024-08-14 06:05:07'),(12,100,'2024-08-12 15:38:49'),(13,3,'2024-08-12 07:05:18'),(13,28,'2024-08-10 23:07:19'),(13,46,'2024-08-11 14:57:45'),(13,51,'2024-08-15 10:09:25'),(13,52,'2024-08-16 00:48:00'),(13,54,'2024-08-16 12:27:29'),(13,58,'2024-08-15 06:00:19'),(13,73,'2024-08-16 00:13:31'),(13,85,'2024-08-11 03:56:03'),(13,92,'2024-08-15 20:51:07'),(13,100,'2024-08-16 16:29:24'),(14,3,'2024-08-13 12:39:26'),(14,7,'2024-08-12 20:23:36'),(14,20,'2024-08-14 11:36:46'),(14,28,'2024-08-14 05:06:15'),(14,32,'2024-08-14 10:06:38'),(14,46,'2024-08-13 05:11:56'),(14,47,'2024-08-14 13:47:43'),(14,55,'2024-08-13 17:25:07'),(14,61,'2024-08-14 11:13:42'),(14,62,'2024-08-13 19:40:19'),(14,64,'2024-08-16 15:07:57'),(14,80,'2024-08-16 16:39:22'),(15,13,'2024-08-12 10:34:29'),(15,14,'2024-08-15 19:42:29'),(15,17,'2024-08-12 05:41:06'),(15,18,'2024-08-16 04:02:28'),(15,29,'2024-08-11 09:10:07'),(15,43,'2024-08-15 02:52:12'),(15,72,'2024-08-11 11:08:20'),(15,97,'2024-08-15 07:14:13'),(15,100,'2024-08-13 16:05:38'),(16,24,'2024-08-12 14:46:41'),(16,50,'2024-08-11 02:33:57'),(16,51,'2024-08-14 23:18:37'),(16,58,'2024-08-11 01:46:16'),(16,66,'2024-08-15 19:41:40'),(16,78,'2024-08-13 19:26:08'),(16,83,'2024-08-15 10:14:17'),(16,84,'2024-08-12 05:13:05'),(17,19,'2024-08-14 17:02:43'),(17,24,'2024-08-11 20:50:35'),(17,46,'2024-08-14 22:27:45'),(17,62,'2024-08-14 13:44:07'),(17,80,'2024-08-14 10:39:53'),(17,93,'2024-08-14 18:57:39'),(18,13,'2024-08-13 22:33:15'),(18,16,'2024-08-16 04:01:32'),(18,20,'2024-08-13 00:42:05'),(18,21,'2024-08-16 13:55:52'),(18,28,'2024-08-12 14:59:14'),(18,55,'2024-08-12 16:36:13'),(18,77,'2024-08-13 12:50:57'),(18,78,'2024-08-15 07:15:19'),(18,83,'2024-08-12 16:24:19'),(18,88,'2024-08-16 18:07:00'),(18,92,'2024-08-16 19:15:04'),(18,100,'2024-08-12 17:48:06'),(19,3,'2024-08-15 06:04:28'),(19,5,'2024-08-16 08:21:06'),(19,16,'2024-08-11 18:20:27'),(19,40,'2024-08-11 01:49:55'),(19,54,'2024-08-13 03:05:44'),(19,55,'2024-08-12 22:06:56'),(19,61,'2024-08-12 23:50:51'),(19,62,'2024-08-12 20:10:10'),(19,70,'2024-08-14 22:54:58'),(19,94,'2024-08-12 02:15:44'),(20,4,'2024-08-15 06:05:34'),(20,29,'2024-08-11 18:09:48'),(20,44,'2024-08-16 12:08:08'),(20,50,'2024-08-11 21:11:07'),(20,72,'2024-08-12 10:09:44'),(20,78,'2024-08-12 11:28:37'),(20,86,'2024-08-14 14:39:52'),(20,92,'2024-08-11 20:05:54'),(20,93,'2024-08-13 14:53:25'),(21,1,'2024-08-11 11:38:27'),(21,7,'2024-08-13 22:24:30'),(21,9,'2024-08-12 06:09:48'),(21,18,'2024-08-13 06:17:43'),(21,19,'2024-08-14 06:57:55'),(21,25,'2024-08-11 01:09:46'),(21,37,'2024-08-14 12:41:57'),(21,45,'2024-08-14 12:57:30'),(21,67,'2024-08-12 07:19:19'),(21,72,'2024-08-11 14:06:29'),(22,5,'2024-08-15 03:25:04'),(22,8,'2024-08-14 23:24:20'),(22,10,'2024-08-11 17:42:04'),(22,13,'2024-08-15 11:05:53'),(22,27,'2024-08-12 10:57:47'),(22,28,'2024-08-13 07:12:50'),(22,41,'2024-08-14 11:24:20'),(22,57,'2024-08-15 19:41:08'),(22,80,'2024-08-12 19:05:58'),(22,85,'2024-08-15 17:10:55'),(22,87,'2024-08-12 04:44:29'),(22,94,'2024-08-15 17:52:38'),(23,16,'2024-08-12 17:06:28'),(23,45,'2024-08-12 23:16:21'),(23,48,'2024-08-14 05:15:29'),(23,55,'2024-08-11 04:42:05'),(23,69,'2024-08-14 07:03:26'),(23,85,'2024-08-11 21:12:44'),(23,98,'2024-08-15 03:03:38'),(24,3,'2024-08-14 07:36:35'),(24,5,'2024-08-12 09:52:23'),(24,16,'2024-08-16 04:51:39'),(24,30,'2024-08-13 15:58:07'),(24,31,'2024-08-13 00:40:56'),(24,33,'2024-08-14 06:04:59'),(24,48,'2024-08-15 16:34:10'),(24,57,'2024-08-15 23:43:31'),(24,60,'2024-08-13 11:37:29'),(24,78,'2024-08-15 14:12:20'),(24,79,'2024-08-12 13:30:29'),(24,95,'2024-08-14 15:43:00'),(25,1,'2024-08-13 00:13:29'),(25,3,'2024-08-13 13:57:00'),(25,21,'2024-08-13 23:43:49'),(25,26,'2024-08-11 13:48:57'),(25,31,'2024-08-14 23:27:00'),(25,40,'2024-08-14 16:14:06'),(25,48,'2024-08-13 05:47:32'),(25,50,'2024-08-16 07:39:35'),(25,52,'2024-08-16 08:55:26'),(25,71,'2024-08-14 05:03:07'),(25,79,'2024-08-14 02:07:40'),(26,4,'2024-08-12 13:55:03'),(26,9,'2024-08-14 22:14:13'),(26,23,'2024-08-13 01:45:08'),(26,31,'2024-08-13 10:12:35'),(26,45,'2024-08-14 04:52:37'),(26,54,'2024-08-12 01:29:52'),(26,56,'2024-08-11 10:16:10'),(26,68,'2024-08-15 04:07:28'),(26,70,'2024-08-13 09:42:33'),(26,77,'2024-08-15 14:20:42'),(26,79,'2024-08-12 17:54:40'),(26,96,'2024-08-13 16:04:04'),(27,10,'2024-08-14 14:58:37'),(27,22,'2024-08-12 00:25:09'),(27,23,'2024-08-12 00:13:09'),(27,31,'2024-08-16 14:15:30'),(27,57,'2024-08-12 14:59:40'),(27,66,'2024-08-14 03:18:42'),(27,67,'2024-08-13 13:36:02'),(27,69,'2024-08-14 20:31:45'),(27,79,'2024-08-16 17:21:42'),(27,81,'2024-08-13 14:52:29'),(27,82,'2024-08-15 09:10:21'),(27,89,'2024-08-15 14:40:15'),(28,39,'2024-08-11 23:44:22'),(28,50,'2024-08-12 12:37:22'),(28,60,'2024-08-15 23:59:03'),(28,61,'2024-08-12 01:03:06'),(28,83,'2024-08-15 23:01:35'),(28,85,'2024-08-15 09:15:56'),(28,96,'2024-08-16 04:13:18'),(28,99,'2024-08-14 22:17:14'),(29,20,'2024-08-15 07:25:44'),(29,31,'2024-08-16 03:56:29'),(29,37,'2024-08-16 01:42:08'),(29,41,'2024-08-16 13:11:14'),(29,42,'2024-08-10 22:52:27'),(29,60,'2024-08-15 11:19:57'),(29,92,'2024-08-15 00:52:32'),(30,3,'2024-08-14 13:45:56'),(30,6,'2024-08-16 07:06:21'),(30,33,'2024-08-14 00:29:11'),(30,34,'2024-08-10 21:45:11'),(30,40,'2024-08-13 12:55:50'),(30,41,'2024-08-14 10:36:07'),(30,55,'2024-08-13 02:27:33'),(30,75,'2024-08-10 21:01:57'),(30,77,'2024-08-15 07:18:48'),(30,81,'2024-08-14 08:15:48'),(30,91,'2024-08-13 00:58:26'),(30,98,'2024-08-15 00:18:59'),(31,5,'2024-08-12 01:37:11'),(31,39,'2024-08-15 22:09:18'),(31,48,'2024-08-11 09:35:31'),(31,49,'2024-08-16 11:46:52'),(31,52,'2024-08-16 13:11:03'),(31,72,'2024-08-15 17:38:38'),(32,6,'2024-08-10 20:20:28'),(32,50,'2024-08-12 17:20:39'),(32,59,'2024-08-16 12:06:01'),(32,72,'2024-08-13 13:40:18'),(32,74,'2024-08-12 02:14:57'),(32,82,'2024-08-11 19:18:58'),(32,98,'2024-08-11 04:11:41'),(32,99,'2024-08-10 20:08:55'),(32,100,'2024-08-10 20:57:53'),(33,5,'2024-08-15 08:02:26'),(33,8,'2024-08-12 01:56:45'),(33,15,'2024-08-12 07:58:07'),(33,37,'2024-08-15 00:00:29'),(33,73,'2024-08-15 15:09:12'),(33,82,'2024-08-16 07:37:51'),(33,88,'2024-08-14 14:10:15'),(33,91,'2024-08-12 12:58:34'),(33,94,'2024-08-12 00:54:55'),(33,98,'2024-08-16 11:35:10'),(34,10,'2024-08-16 13:23:39'),(34,14,'2024-08-16 08:27:05'),(34,19,'2024-08-12 17:24:39'),(34,28,'2024-08-16 06:43:29'),(34,38,'2024-08-13 04:42:46'),(34,62,'2024-08-14 07:19:58'),(34,63,'2024-08-15 19:28:15'),(34,65,'2024-08-15 04:39:35'),(34,69,'2024-08-15 04:43:19'),(34,85,'2024-08-13 06:48:42'),(34,96,'2024-08-13 11:16:49'),(35,8,'2024-08-11 03:07:39'),(35,16,'2024-08-11 02:07:29'),(35,25,'2024-08-13 03:50:48'),(35,29,'2024-08-13 18:34:54'),(35,32,'2024-08-11 08:35:21'),(35,36,'2024-08-15 22:22:33'),(35,46,'2024-08-15 08:58:06'),(35,51,'2024-08-11 19:08:03'),(35,63,'2024-08-13 15:53:31'),(35,64,'2024-08-13 00:33:06'),(35,70,'2024-08-12 19:16:38'),(35,73,'2024-08-14 09:40:08'),(36,3,'2024-08-15 11:36:06'),(36,5,'2024-08-12 00:52:40'),(36,6,'2024-08-15 02:11:47'),(36,28,'2024-08-16 06:41:34'),(36,32,'2024-08-12 23:37:02'),(36,62,'2024-08-12 05:13:57'),(36,83,'2024-08-13 00:14:52'),(36,91,'2024-08-12 08:58:34'),(36,93,'2024-08-16 07:00:47'),(36,97,'2024-08-14 21:22:18'),(36,98,'2024-08-15 04:07:24'),(37,6,'2024-08-14 09:39:30'),(37,14,'2024-08-11 12:38:11'),(37,16,'2024-08-15 01:34:45'),(37,23,'2024-08-12 10:40:28'),(37,34,'2024-08-15 11:28:40'),(37,38,'2024-08-16 03:11:30'),(37,45,'2024-08-16 10:03:13'),(37,66,'2024-08-12 19:17:45'),(37,79,'2024-08-15 15:38:55'),(37,87,'2024-08-11 04:30:22'),(37,88,'2024-08-15 01:12:02'),(38,7,'2024-08-16 06:19:50'),(38,11,'2024-08-11 05:32:03'),(38,45,'2024-08-15 14:42:37'),(38,47,'2024-08-11 03:05:51'),(38,51,'2024-08-14 02:29:44'),(38,52,'2024-08-13 02:57:18'),(38,56,'2024-08-13 01:23:54'),(38,64,'2024-08-13 08:16:41'),(38,68,'2024-08-13 17:12:20'),(38,77,'2024-08-15 04:38:51'),(38,80,'2024-08-12 20:12:25'),(38,89,'2024-08-16 07:19:34'),(39,8,'2024-08-15 15:18:18'),(39,11,'2024-08-16 04:29:57'),(39,24,'2024-08-16 04:09:19'),(39,26,'2024-08-11 09:02:51'),(39,32,'2024-08-16 18:05:15'),(39,33,'2024-08-13 13:45:28'),(39,47,'2024-08-15 12:01:53'),(39,50,'2024-08-12 13:05:27'),(39,51,'2024-08-15 12:47:10'),(39,64,'2024-08-11 07:46:31'),(39,84,'2024-08-15 00:50:17'),(39,89,'2024-08-13 13:33:49'),(40,8,'2024-08-12 15:45:27'),(40,11,'2024-08-12 00:47:01'),(40,46,'2024-08-15 20:08:00'),(40,47,'2024-08-14 23:30:33'),(40,49,'2024-08-14 21:54:15'),(40,53,'2024-08-15 07:31:36'),(41,19,'2024-08-11 19:30:59'),(41,37,'2024-08-16 05:02:16'),(41,38,'2024-08-13 13:16:00'),(41,59,'2024-08-16 01:00:54'),(41,66,'2024-08-15 19:03:31'),(41,79,'2024-08-16 03:41:01'),(42,43,'2024-08-16 08:30:48'),(42,60,'2024-08-11 17:40:39'),(42,64,'2024-08-13 01:28:18'),(42,69,'2024-08-11 14:12:14'),(42,77,'2024-08-12 12:36:45'),(42,84,'2024-08-12 14:45:37'),(43,4,'2024-08-16 07:57:31'),(43,10,'2024-08-15 21:36:31'),(43,33,'2024-08-16 08:01:30'),(43,36,'2024-08-13 05:04:22'),(43,52,'2024-08-11 22:36:30'),(43,54,'2024-08-14 21:43:35'),(43,55,'2024-08-14 23:49:28'),(43,73,'2024-08-15 10:34:29'),(43,74,'2024-08-13 05:36:53'),(43,78,'2024-08-13 13:03:33'),(43,83,'2024-08-13 17:01:38'),(44,12,'2024-08-12 06:25:18'),(44,61,'2024-08-15 14:54:01'),(44,85,'2024-08-12 11:22:14'),(44,87,'2024-08-14 08:03:19'),(44,89,'2024-08-11 18:00:31'),(44,92,'2024-08-12 20:30:33'),(45,5,'2024-08-15 23:30:11'),(45,10,'2024-08-13 07:20:27'),(45,11,'2024-08-14 05:08:13'),(45,18,'2024-08-16 04:32:29'),(45,29,'2024-08-15 23:39:50'),(45,32,'2024-08-12 20:14:05'),(45,33,'2024-08-16 15:54:49'),(45,41,'2024-08-12 06:47:57'),(45,50,'2024-08-13 19:30:26'),(45,51,'2024-08-12 15:28:06'),(45,54,'2024-08-12 13:22:08'),(45,68,'2024-08-16 04:25:31'),(45,77,'2024-08-11 15:08:00'),(45,91,'2024-08-16 07:54:43'),(45,99,'2024-08-16 17:06:12'),(46,16,'2024-08-10 19:37:52'),(46,18,'2024-08-15 11:51:13'),(46,35,'2024-08-14 13:52:18'),(46,55,'2024-08-13 12:54:26'),(46,58,'2024-08-11 23:41:53'),(46,60,'2024-08-12 02:53:37'),(46,64,'2024-08-14 19:35:53'),(46,65,'2024-08-15 05:18:21'),(46,66,'2024-08-11 05:29:32'),(46,75,'2024-08-14 13:29:31'),(46,90,'2024-08-12 06:28:38'),(46,92,'2024-08-10 19:39:50'),(47,12,'2024-08-15 03:40:24'),(47,45,'2024-08-11 00:49:20'),(47,46,'2024-08-15 16:37:24'),(47,66,'2024-08-12 03:23:47'),(47,72,'2024-08-11 00:44:33'),(47,77,'2024-08-16 18:36:38'),(48,15,'2024-08-15 01:33:31'),(48,23,'2024-08-11 13:20:03'),(48,35,'2024-08-12 03:32:44'),(48,62,'2024-08-14 19:16:43'),(48,68,'2024-08-16 16:54:44'),(48,73,'2024-08-11 04:53:01'),(48,97,'2024-08-13 18:06:29'),(49,7,'2024-08-10 20:02:12'),(49,8,'2024-08-12 19:13:56'),(49,24,'2024-08-11 22:01:48'),(49,43,'2024-08-11 21:13:17'),(49,75,'2024-08-14 18:30:34'),(49,89,'2024-08-16 15:30:18'),(49,100,'2024-08-11 22:31:07'),(50,17,'2024-08-14 16:22:17'),(50,27,'2024-08-15 10:27:15'),(50,33,'2024-08-13 16:55:50'),(50,49,'2024-08-15 10:11:58'),(50,57,'2024-08-15 16:09:53'),(50,80,'2024-08-15 08:00:28'),(50,81,'2024-08-15 14:16:06'),(50,90,'2024-08-11 19:59:53'),(50,93,'2024-08-11 20:45:42'),(50,99,'2024-08-12 04:00:30'),(51,1,'2024-08-14 12:55:29'),(51,8,'2024-08-16 06:45:56'),(51,12,'2024-08-14 12:41:49'),(51,15,'2024-08-16 14:06:47'),(51,28,'2024-08-11 09:42:27'),(51,36,'2024-08-11 04:43:01'),(51,42,'2024-08-15 17:14:47'),(51,43,'2024-08-12 23:18:17'),(51,50,'2024-08-12 18:09:31'),(51,60,'2024-08-14 06:36:38'),(51,61,'2024-08-11 17:07:44'),(51,79,'2024-08-14 14:47:14'),(52,20,'2024-08-11 20:49:01'),(52,23,'2024-08-12 18:54:34'),(52,26,'2024-08-16 16:34:08'),(52,59,'2024-08-13 11:39:42'),(52,84,'2024-08-11 18:42:04'),(52,95,'2024-08-12 17:56:42'),(52,96,'2024-08-13 18:28:04'),(52,97,'2024-08-11 13:36:22'),(53,3,'2024-08-15 06:24:03'),(53,6,'2024-08-13 16:15:32'),(53,35,'2024-08-13 22:56:01'),(53,50,'2024-08-12 19:09:59'),(53,57,'2024-08-16 01:36:08'),(53,59,'2024-08-12 15:54:07'),(53,66,'2024-08-12 17:52:01'),(53,67,'2024-08-13 23:57:44'),(53,81,'2024-08-11 09:39:03'),(53,90,'2024-08-16 04:22:34'),(54,14,'2024-08-11 16:23:56'),(54,15,'2024-08-15 00:24:53'),(54,46,'2024-08-16 04:35:32'),(54,55,'2024-08-11 18:37:27'),(54,73,'2024-08-15 02:28:21'),(54,78,'2024-08-10 20:04:07'),(54,81,'2024-08-12 20:53:37'),(54,92,'2024-08-13 08:35:20'),(55,2,'2024-08-13 01:18:30'),(55,7,'2024-08-11 02:37:00'),(55,11,'2024-08-11 20:24:44'),(55,21,'2024-08-16 17:31:39'),(55,26,'2024-08-16 00:58:48'),(55,34,'2024-08-14 07:35:21'),(55,58,'2024-08-12 16:22:05'),(55,86,'2024-08-11 23:34:27'),(56,4,'2024-08-13 00:34:20'),(56,10,'2024-08-13 15:32:03'),(56,18,'2024-08-11 18:29:39'),(56,26,'2024-08-16 18:49:58'),(56,33,'2024-08-12 07:19:45'),(56,34,'2024-08-12 01:03:09'),(56,42,'2024-08-15 02:11:09'),(56,53,'2024-08-16 16:44:20'),(56,60,'2024-08-11 10:45:27'),(56,61,'2024-08-15 11:21:47'),(56,65,'2024-08-14 13:12:59'),(56,71,'2024-08-12 12:17:59'),(56,72,'2024-08-12 22:19:40'),(56,79,'2024-08-11 14:10:30'),(56,84,'2024-08-12 09:25:38'),(57,7,'2024-08-12 03:58:41'),(57,13,'2024-08-12 04:01:46'),(57,30,'2024-08-13 07:37:00'),(57,32,'2024-08-14 10:58:19'),(57,51,'2024-08-14 19:15:49'),(57,53,'2024-08-15 17:31:43'),(57,60,'2024-08-12 00:20:18'),(57,61,'2024-08-13 08:48:56'),(57,70,'2024-08-13 21:57:37'),(58,14,'2024-08-12 04:01:04'),(58,15,'2024-08-14 08:00:21'),(58,31,'2024-08-13 07:35:38'),(58,34,'2024-08-11 14:12:48'),(58,36,'2024-08-15 04:50:47'),(58,41,'2024-08-13 00:30:02'),(58,52,'2024-08-13 13:05:23'),(58,65,'2024-08-14 00:31:35'),(58,72,'2024-08-15 08:08:43'),(58,73,'2024-08-13 12:41:20'),(58,86,'2024-08-11 12:25:16'),(58,92,'2024-08-13 01:44:16'),(58,96,'2024-08-16 00:26:16'),(58,99,'2024-08-11 06:44:45'),(59,2,'2024-08-14 00:49:33'),(59,5,'2024-08-14 14:59:07'),(59,7,'2024-08-14 16:02:09'),(59,11,'2024-08-11 03:32:02'),(59,19,'2024-08-15 23:55:36'),(59,70,'2024-08-12 00:31:56'),(59,73,'2024-08-13 19:21:40'),(59,83,'2024-08-14 04:07:57'),(59,86,'2024-08-11 10:50:57'),(59,97,'2024-08-15 20:15:26'),(60,8,'2024-08-15 20:02:00'),(60,25,'2024-08-14 12:02:52'),(60,34,'2024-08-16 03:43:26'),(60,37,'2024-08-10 21:34:44'),(60,43,'2024-08-11 18:33:38'),(60,44,'2024-08-12 14:02:06'),(60,46,'2024-08-13 19:34:09'),(60,57,'2024-08-11 06:06:02'),(60,61,'2024-08-14 07:40:20'),(60,70,'2024-08-12 09:51:07'),(60,72,'2024-08-15 13:41:29'),(61,1,'2024-08-15 12:21:39'),(61,32,'2024-08-14 13:48:15'),(61,51,'2024-08-16 19:11:39'),(61,54,'2024-08-16 07:31:40'),(61,58,'2024-08-11 00:52:54'),(61,59,'2024-08-15 12:56:34'),(61,63,'2024-08-13 14:25:47'),(61,66,'2024-08-16 08:12:55'),(61,68,'2024-08-10 21:24:42'),(61,80,'2024-08-16 04:27:07'),(61,88,'2024-08-12 00:01:07'),(61,90,'2024-08-15 17:33:57'),(61,92,'2024-08-15 08:16:26'),(62,11,'2024-08-15 10:36:16'),(62,24,'2024-08-14 05:14:20'),(62,31,'2024-08-13 09:11:39'),(62,43,'2024-08-15 16:42:45'),(62,44,'2024-08-11 01:38:34'),(62,54,'2024-08-15 14:55:05'),(62,63,'2024-08-16 18:05:40'),(62,64,'2024-08-13 17:48:37'),(62,65,'2024-08-11 09:35:26'),(62,82,'2024-08-15 00:28:36'),(62,100,'2024-08-14 23:14:15'),(63,7,'2024-08-15 02:14:04'),(63,13,'2024-08-13 03:12:23'),(63,21,'2024-08-14 05:49:04'),(63,34,'2024-08-14 22:39:33'),(63,43,'2024-08-13 14:42:47'),(63,49,'2024-08-13 07:38:43'),(63,66,'2024-08-12 02:21:04'),(63,70,'2024-08-15 09:52:06'),(63,83,'2024-08-11 15:07:14'),(63,94,'2024-08-12 12:51:02'),(64,3,'2024-08-14 08:18:27'),(64,4,'2024-08-16 18:23:57'),(64,40,'2024-08-12 07:43:27'),(64,42,'2024-08-12 21:52:23'),(64,46,'2024-08-15 01:00:42'),(64,50,'2024-08-14 04:43:15'),(64,52,'2024-08-13 23:31:30'),(64,54,'2024-08-16 04:52:03'),(64,69,'2024-08-11 08:57:51'),(64,77,'2024-08-13 10:51:05'),(65,19,'2024-08-15 10:35:02'),(65,23,'2024-08-11 22:31:01'),(65,33,'2024-08-16 02:59:27'),(65,35,'2024-08-14 10:29:34'),(65,51,'2024-08-12 15:47:13'),(65,55,'2024-08-15 07:53:10'),(65,59,'2024-08-12 00:04:12'),(65,68,'2024-08-11 06:47:51'),(65,89,'2024-08-10 21:32:19'),(66,6,'2024-08-10 20:52:16'),(66,22,'2024-08-11 16:21:40'),(66,31,'2024-08-11 21:24:56'),(66,37,'2024-08-14 08:17:01'),(66,51,'2024-08-12 03:13:42'),(66,72,'2024-08-12 02:01:22'),(66,74,'2024-08-13 01:52:58'),(66,94,'2024-08-12 15:12:44'),(67,5,'2024-08-10 20:16:12'),(67,26,'2024-08-15 01:16:50'),(67,31,'2024-08-13 15:52:12'),(67,36,'2024-08-11 14:02:53'),(67,39,'2024-08-16 18:04:21'),(67,51,'2024-08-15 01:23:22'),(67,59,'2024-08-14 13:54:23'),(67,90,'2024-08-11 22:12:36'),(68,1,'2024-08-11 05:09:33'),(68,26,'2024-08-14 09:27:03'),(68,30,'2024-08-13 07:08:07'),(68,31,'2024-08-14 10:55:39'),(68,44,'2024-08-13 06:16:34'),(68,45,'2024-08-13 03:47:26'),(68,50,'2024-08-12 05:39:43'),(68,54,'2024-08-16 12:51:48'),(68,55,'2024-08-16 05:52:02'),(69,8,'2024-08-12 11:44:38'),(69,9,'2024-08-16 18:54:24'),(69,28,'2024-08-16 11:27:42'),(69,32,'2024-08-12 14:54:52'),(69,41,'2024-08-12 13:12:57'),(69,72,'2024-08-11 06:11:02'),(69,82,'2024-08-15 17:44:54'),(69,86,'2024-08-13 23:46:41'),(69,87,'2024-08-12 19:42:04'),(69,94,'2024-08-11 23:29:33'),(70,1,'2024-08-15 12:40:55'),(70,10,'2024-08-16 03:38:49'),(70,20,'2024-08-16 15:01:58'),(70,39,'2024-08-16 12:40:42'),(70,52,'2024-08-12 18:17:28'),(70,65,'2024-08-12 12:37:09'),(70,68,'2024-08-14 00:17:58'),(70,81,'2024-08-12 05:17:30'),(70,90,'2024-08-12 17:54:08'),(71,2,'2024-08-13 23:45:24'),(71,15,'2024-08-15 19:33:07'),(71,77,'2024-08-14 22:36:56'),(71,78,'2024-08-11 04:37:09'),(71,98,'2024-08-14 21:20:12'),(71,99,'2024-08-11 23:54:13'),(71,100,'2024-08-16 06:05:42'),(72,8,'2024-08-15 17:28:18'),(72,49,'2024-08-13 21:08:16'),(72,56,'2024-08-13 22:20:13'),(72,66,'2024-08-13 00:12:16'),(72,81,'2024-08-15 21:13:52'),(72,85,'2024-08-12 08:49:58'),(72,89,'2024-08-16 15:24:43'),(72,93,'2024-08-11 21:41:41'),(72,95,'2024-08-13 21:14:43'),(73,8,'2024-08-14 18:26:06'),(73,18,'2024-08-14 09:56:56'),(73,19,'2024-08-16 02:53:47'),(73,25,'2024-08-13 21:42:50'),(73,28,'2024-08-12 12:12:38'),(73,36,'2024-08-13 11:56:05'),(73,42,'2024-08-13 17:42:46'),(73,47,'2024-08-14 09:13:29'),(73,55,'2024-08-14 13:26:51'),(73,62,'2024-08-14 00:29:18'),(73,68,'2024-08-16 05:47:25'),(73,75,'2024-08-13 14:08:05'),(73,92,'2024-08-14 18:49:24'),(74,2,'2024-08-11 13:11:36'),(74,11,'2024-08-16 01:35:54'),(74,17,'2024-08-16 00:14:05'),(74,27,'2024-08-15 19:27:59'),(74,32,'2024-08-13 10:01:53'),(74,35,'2024-08-12 23:21:08'),(74,47,'2024-08-16 09:14:50'),(74,66,'2024-08-14 14:25:19'),(74,67,'2024-08-12 10:40:14'),(74,97,'2024-08-13 19:24:01'),(75,1,'2024-08-15 16:27:58'),(75,6,'2024-08-14 04:54:34'),(75,11,'2024-08-14 00:42:57'),(75,24,'2024-08-14 10:25:04'),(75,33,'2024-08-15 14:55:52'),(75,38,'2024-08-15 13:26:20'),(75,39,'2024-08-16 13:55:18'),(75,43,'2024-08-15 03:57:22'),(75,48,'2024-08-11 10:03:25'),(75,57,'2024-08-14 12:46:48'),(75,61,'2024-08-10 23:51:33'),(75,71,'2024-08-16 12:55:05'),(75,79,'2024-08-13 07:14:53'),(75,82,'2024-08-14 06:32:09'),(75,94,'2024-08-13 15:03:31'),(76,2,'2024-08-11 13:43:24'),(76,13,'2024-08-16 11:03:17'),(76,43,'2024-08-11 14:02:26'),(76,46,'2024-08-11 08:54:06'),(76,52,'2024-08-12 21:05:36'),(76,62,'2024-08-11 19:33:04'),(76,85,'2024-08-13 17:33:08'),(76,94,'2024-08-13 15:02:32'),(77,2,'2024-08-11 05:04:24'),(77,8,'2024-08-11 08:19:50'),(77,12,'2024-08-15 02:26:24'),(77,54,'2024-08-14 10:57:18'),(77,55,'2024-08-15 07:26:31'),(77,59,'2024-08-16 04:49:02'),(77,71,'2024-08-13 02:22:15'),(77,75,'2024-08-12 22:13:23'),(77,81,'2024-08-16 03:00:55'),(77,87,'2024-08-11 20:41:59'),(77,94,'2024-08-15 04:18:10'),(77,100,'2024-08-12 07:11:17'),(78,2,'2024-08-14 20:41:51'),(78,3,'2024-08-11 10:17:07'),(78,10,'2024-08-16 10:25:25'),(78,11,'2024-08-14 02:27:52'),(78,16,'2024-08-14 21:39:41'),(78,34,'2024-08-12 19:58:33'),(78,43,'2024-08-11 13:42:11'),(78,62,'2024-08-15 03:37:41'),(78,65,'2024-08-11 00:45:22'),(78,67,'2024-08-14 09:25:17'),(78,69,'2024-08-15 10:44:56'),(78,74,'2024-08-16 09:23:04'),(78,76,'2024-08-15 08:48:53'),(78,84,'2024-08-16 14:34:47'),(78,93,'2024-08-12 12:46:33'),(78,100,'2024-08-12 18:58:54'),(79,21,'2024-08-14 02:08:02'),(79,25,'2024-08-11 02:50:51'),(79,38,'2024-08-10 22:12:20'),(79,50,'2024-08-13 15:36:39'),(79,75,'2024-08-14 03:11:20'),(79,85,'2024-08-14 00:17:18'),(79,87,'2024-08-14 21:51:20'),(79,88,'2024-08-10 23:58:47'),(79,93,'2024-08-15 01:04:46'),(79,100,'2024-08-14 22:19:48'),(80,7,'2024-08-15 16:22:45'),(80,13,'2024-08-12 04:39:45'),(80,46,'2024-08-16 07:22:00'),(80,47,'2024-08-13 23:07:43'),(80,50,'2024-08-13 06:05:06'),(80,55,'2024-08-15 05:25:39'),(80,76,'2024-08-11 16:11:42'),(80,82,'2024-08-12 12:23:12'),(80,87,'2024-08-11 15:00:09'),(80,96,'2024-08-14 13:02:07'),(81,2,'2024-08-15 13:39:33'),(81,5,'2024-08-13 01:42:53'),(81,8,'2024-08-12 18:33:19'),(81,13,'2024-08-16 03:27:55'),(81,21,'2024-08-13 03:42:33'),(81,45,'2024-08-13 01:33:08'),(81,59,'2024-08-15 09:23:28'),(81,64,'2024-08-12 00:18:56'),(81,65,'2024-08-13 07:05:30'),(81,69,'2024-08-13 18:08:17'),(81,70,'2024-08-16 18:46:54'),(81,85,'2024-08-14 18:50:24'),(81,87,'2024-08-16 15:47:47'),(81,91,'2024-08-15 04:20:40'),(81,96,'2024-08-12 21:24:43'),(81,97,'2024-08-15 20:40:03'),(81,98,'2024-08-11 09:27:34'),(82,20,'2024-08-12 17:22:35'),(82,35,'2024-08-15 03:30:12'),(82,49,'2024-08-12 12:14:00'),(82,60,'2024-08-15 14:29:25'),(82,70,'2024-08-12 16:49:26'),(82,83,'2024-08-12 14:34:25'),(82,90,'2024-08-13 07:17:22'),(83,15,'2024-08-15 16:03:53'),(83,21,'2024-08-16 02:41:54'),(83,24,'2024-08-11 14:10:36'),(83,39,'2024-08-12 11:30:43'),(83,57,'2024-08-16 14:15:23'),(83,62,'2024-08-11 14:59:57'),(83,72,'2024-08-15 05:10:07'),(83,91,'2024-08-12 04:33:33'),(84,4,'2024-08-11 20:52:52'),(84,19,'2024-08-15 20:53:46'),(84,54,'2024-08-15 23:51:38'),(84,56,'2024-08-10 22:44:36'),(84,61,'2024-08-14 12:25:56'),(84,78,'2024-08-16 05:14:03'),(84,91,'2024-08-16 03:26:13'),(85,23,'2024-08-12 15:48:50'),(85,35,'2024-08-12 02:01:41'),(85,42,'2024-08-11 09:53:16'),(85,50,'2024-08-11 21:02:33'),(85,59,'2024-08-12 18:17:38'),(85,65,'2024-08-14 16:32:50'),(85,69,'2024-08-13 02:48:22'),(85,83,'2024-08-14 18:22:45'),(85,88,'2024-08-13 16:39:39'),(86,19,'2024-08-15 08:41:00'),(86,20,'2024-08-16 07:58:14'),(86,35,'2024-08-11 14:38:55'),(86,66,'2024-08-11 01:17:47'),(86,77,'2024-08-12 03:04:13'),(86,81,'2024-08-11 09:54:12'),(87,4,'2024-08-12 21:34:34'),(87,12,'2024-08-16 02:54:34'),(87,19,'2024-08-16 15:17:02'),(87,25,'2024-08-13 03:53:40'),(87,28,'2024-08-11 21:57:04'),(87,30,'2024-08-13 08:58:01'),(87,31,'2024-08-15 07:42:45'),(87,35,'2024-08-15 00:30:38'),(87,44,'2024-08-12 21:12:45'),(87,49,'2024-08-16 07:08:07'),(87,79,'2024-08-13 19:47:26'),(87,91,'2024-08-14 15:06:12'),(87,100,'2024-08-14 20:41:45'),(88,4,'2024-08-16 15:55:06'),(88,8,'2024-08-14 01:21:49'),(88,12,'2024-08-11 21:41:31'),(88,21,'2024-08-16 03:53:18'),(88,22,'2024-08-15 09:38:12'),(88,28,'2024-08-16 08:30:24'),(88,56,'2024-08-11 04:00:15'),(88,60,'2024-08-14 01:25:47'),(88,85,'2024-08-15 18:11:10'),(88,89,'2024-08-15 00:40:34'),(88,90,'2024-08-14 11:35:53'),(88,93,'2024-08-14 19:10:19'),(89,3,'2024-08-16 16:44:10'),(89,4,'2024-08-14 13:21:05'),(89,11,'2024-08-13 06:00:51'),(89,17,'2024-08-13 12:20:33'),(89,20,'2024-08-12 03:52:05'),(89,22,'2024-08-10 20:04:48'),(89,28,'2024-08-16 12:38:39'),(89,31,'2024-08-12 21:59:16'),(89,35,'2024-08-16 08:53:02'),(89,48,'2024-08-11 11:28:16'),(89,59,'2024-08-15 05:51:49'),(89,66,'2024-08-15 09:40:41'),(89,82,'2024-08-15 19:35:43'),(89,83,'2024-08-15 17:21:40'),(89,87,'2024-08-11 15:26:52'),(89,89,'2024-08-12 13:18:13'),(89,92,'2024-08-13 02:59:02'),(89,93,'2024-08-16 03:41:30'),(89,97,'2024-08-16 10:24:09'),(90,3,'2024-08-11 07:36:49'),(90,5,'2024-08-13 16:13:38'),(90,44,'2024-08-14 15:15:27'),(90,47,'2024-08-13 16:15:48'),(90,50,'2024-08-14 03:21:21'),(90,61,'2024-08-12 20:47:23'),(90,65,'2024-08-12 02:47:51'),(90,91,'2024-08-11 12:04:45'),(90,96,'2024-08-14 22:46:02'),(90,98,'2024-08-14 04:29:24'),(91,13,'2024-08-11 02:13:40'),(91,14,'2024-08-11 06:35:24'),(91,43,'2024-08-10 22:52:46'),(91,51,'2024-08-15 04:22:14'),(91,81,'2024-08-11 05:29:13'),(92,16,'2024-08-13 00:09:33'),(92,19,'2024-08-15 04:04:18'),(92,20,'2024-08-15 13:13:47'),(92,31,'2024-08-13 22:55:34'),(92,32,'2024-08-12 06:31:01'),(92,43,'2024-08-15 03:08:39'),(92,49,'2024-08-16 14:00:08'),(92,62,'2024-08-13 07:28:29'),(92,69,'2024-08-16 17:12:32'),(92,76,'2024-08-13 19:52:58'),(92,98,'2024-08-16 14:02:15'),(93,4,'2024-08-14 20:02:37'),(93,12,'2024-08-16 12:15:23'),(93,29,'2024-08-11 14:01:39'),(93,37,'2024-08-14 19:33:14'),(93,38,'2024-08-12 01:08:05'),(93,43,'2024-08-15 08:47:19'),(93,59,'2024-08-11 02:39:11'),(93,69,'2024-08-16 08:08:34'),(93,70,'2024-08-16 04:10:04'),(93,77,'2024-08-16 16:58:28'),(93,96,'2024-08-11 22:04:31'),(94,36,'2024-08-12 12:10:03'),(94,51,'2024-08-12 18:26:22'),(94,56,'2024-08-13 00:23:27'),(94,73,'2024-08-12 15:08:14'),(94,75,'2024-08-15 09:25:05'),(94,95,'2024-08-16 05:36:42'),(94,99,'2024-08-11 21:36:02'),(94,100,'2024-08-14 16:13:23'),(95,2,'2024-08-12 18:10:17'),(95,17,'2024-08-14 22:57:47'),(95,33,'2024-08-13 06:15:27'),(95,42,'2024-08-12 07:24:11'),(95,45,'2024-08-11 11:13:04'),(95,62,'2024-08-13 14:12:34'),(95,64,'2024-08-16 16:48:22'),(95,83,'2024-08-12 09:12:10'),(95,85,'2024-08-13 08:56:25'),(95,86,'2024-08-14 02:45:38'),(95,93,'2024-08-12 19:14:41'),(96,2,'2024-08-12 17:37:13'),(96,40,'2024-08-13 14:35:09'),(96,50,'2024-08-15 08:41:30'),(96,63,'2024-08-14 07:34:49'),(96,76,'2024-08-15 14:47:45'),(96,79,'2024-08-15 08:40:36'),(96,93,'2024-08-12 18:17:32'),(96,99,'2024-08-15 03:59:33'),(97,7,'2024-08-13 13:04:10'),(97,9,'2024-08-13 14:22:37'),(97,35,'2024-08-13 23:02:58'),(97,44,'2024-08-11 12:27:39'),(97,45,'2024-08-11 20:30:48'),(97,55,'2024-08-15 22:52:44'),(97,63,'2024-08-13 06:33:53'),(97,64,'2024-08-10 19:34:31'),(97,75,'2024-08-11 21:59:43'),(97,78,'2024-08-14 05:29:54'),(97,86,'2024-08-11 05:52:12'),(98,10,'2024-08-13 02:28:36'),(98,24,'2024-08-15 14:47:19'),(98,35,'2024-08-16 16:15:10'),(98,37,'2024-08-11 18:51:32'),(98,68,'2024-08-13 18:30:26'),(98,74,'2024-08-12 06:19:14'),(98,82,'2024-08-12 06:42:52'),(98,87,'2024-08-14 16:21:13'),(98,90,'2024-08-16 05:41:48'),(98,95,'2024-08-12 02:45:45'),(99,1,'2024-08-16 00:13:24'),(99,19,'2024-08-11 15:24:24'),(99,25,'2024-08-13 18:23:49'),(99,29,'2024-08-11 14:47:23'),(99,39,'2024-08-11 06:15:27'),(99,48,'2024-08-16 02:43:41'),(99,51,'2024-08-14 12:00:55'),(99,53,'2024-08-14 17:14:56'),(99,58,'2024-08-12 19:27:55'),(99,69,'2024-08-14 08:18:19'),(99,92,'2024-08-15 15:00:28'),(99,95,'2024-08-13 02:50:32'),(100,15,'2024-08-11 06:00:26'),(100,40,'2024-08-13 05:14:08'),(100,74,'2024-08-11 12:01:06'),(100,83,'2024-08-14 13:30:44'),(100,90,'2024-08-11 05:27:42'),(100,93,'2024-08-16 07:32:41'),(100,94,'2024-08-12 20:14:07');
/*!40000 ALTER TABLE `user_follows` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-18 12:39:20
