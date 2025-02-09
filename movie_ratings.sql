-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: movie_ratings
-- ------------------------------------------------------
-- Server version	9.2.0

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

--
-- Table structure for table `critics`
--

DROP TABLE IF EXISTS `critics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `critics` (
  `critic_id` int NOT NULL AUTO_INCREMENT,
  `critic_name` varchar(255) NOT NULL,
  PRIMARY KEY (`critic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critics`
--

LOCK TABLES `critics` WRITE;
/*!40000 ALTER TABLE `critics` DISABLE KEYS */;
INSERT INTO `critics` VALUES (1,'Blake'),(2,'Caroline'),(3,'Jayson'),(4,'Ashley'),(5,'Nancy'),(6,'Blake'),(7,'Caroline'),(8,'Jayson'),(9,'Ashley'),(10,'Nancy'),(11,'Blake'),(12,'Caroline'),(13,'Jayson'),(14,'Ashley'),(15,'Nancy'),(16,'Blake'),(17,'Caroline'),(18,'Jayson'),(19,'Ashley'),(20,'Nancy'),(21,'Blake'),(22,'Caroline'),(23,'Jayson'),(24,'Ashley'),(25,'Nancy'),(26,'Blake'),(27,'Caroline'),(28,'Jayson'),(29,'Ashley'),(30,'Nancy'),(31,'Blake'),(32,'Caroline'),(33,'Jayson'),(34,'Ashley'),(35,'Nancy');
/*!40000 ALTER TABLE `critics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Beetlejuice'),(2,'Evil Dead 2'),(3,'PeeWee\'s Big Adventure'),(4,'The Princess Bride'),(5,'Stand By Me'),(6,'Star Wars'),(7,'Beetlejuice'),(8,'Evil Dead 2'),(9,'PeeWee\'s Big Adventure'),(10,'The Princess Bride'),(11,'Stand By Me'),(12,'Star Wars'),(13,'Beetlejuice'),(14,'Evil Dead 2'),(15,'PeeWee\'s Big Adventure'),(16,'The Princess Bride'),(17,'Stand By Me'),(18,'Star Wars'),(19,'Beetlejuice'),(20,'Evil Dead 2'),(21,'PeeWee\'s Big Adventure'),(22,'The Princess Bride'),(23,'Stand By Me'),(24,'Star Wars'),(25,'Beetlejuice'),(26,'Evil Dead 2'),(27,'PeeWee\'s Big Adventure'),(28,'The Princess Bride'),(29,'Stand By Me'),(30,'Star Wars'),(31,'Beetlejuice'),(32,'Evil Dead 2'),(33,'PeeWee\'s Big Adventure'),(34,'The Princess Bride'),(35,'Stand By Me'),(36,'Star Wars'),(37,'Beetlejuice'),(38,'Evil Dead 2'),(39,'PeeWee\'s Big Adventure'),(40,'The Princess Bride'),(41,'Stand By Me'),(42,'Star Wars'),(43,'Beetlejuice'),(44,'Evil Dead 2'),(45,'PeeWee\'s Big Adventure'),(46,'The Princess Bride'),(47,'Stand By Me'),(48,'Star Wars');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `movie_id` int NOT NULL,
  `critic_id` int NOT NULL,
  `rating` tinyint DEFAULT NULL,
  PRIMARY KEY (`movie_id`,`critic_id`),
  KEY `critic_id` (`critic_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`critic_id`) REFERENCES `critics` (`critic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,5),(1,2,3),(1,3,4),(1,4,2),(1,5,5),(2,1,5),(2,2,NULL),(2,3,NULL),(2,4,3),(2,5,NULL),(3,1,2),(3,2,5),(3,3,4),(3,4,NULL),(3,5,3),(4,1,5),(4,2,4),(4,3,3),(4,4,5),(4,5,5),(5,1,3),(5,2,5),(5,3,2),(5,4,NULL),(5,5,4),(6,1,4),(6,2,5),(6,3,5),(6,4,2),(6,5,3);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-09 14:04:40
