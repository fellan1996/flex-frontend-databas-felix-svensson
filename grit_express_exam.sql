-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: grit_express_exam
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (9,1,'In-ipsa-tenetur-dol','Molestias quisquam r','In ipsa tenetur dol','1996-12-24 12:10:05'),(10,1,'Explicabo-Perspicia','Cumque praesentium a','Explicabo Perspicia','2023-12-24 12:10:05'),(11,1,'Quia-excepteur-dolor','Totam sit corporis Curabitur ullamcorper ultricies nisi. Ut tincidunt tincidunt erat. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Aenean imperdiet.\r\n\r\nVivamus consectetuer hendrerit lacus. Fusce neque. Vestibulum ullamcorper mauris at ligula. Morbi nec metus. Donec mollis hendrerit risus.\r\n\r\nSuspendisse feugiat. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Praesent congue erat at massa. Vestibulum ullamcorper mauris at ligula. Etiam vitae tortor.','Quia excepteur dolor','2024-08-28 10:20:05'),(15,1,'Halla-ja-fan-vad-trevligt-vi-har-det-har','Göttans, attans men sill fanns','Hallå ja, fan vad trevligt vi har det här','2024-08-28 13:01:13'),(16,1,'Halla-ja-fan-vad-trevligt-vi-har-det-har-da!!','Göttans, attans men sill fanns!!','Hallå ja, fan vad trevligt vi har det här då!!','2024-08-28 13:02:52'),(17,1,'Halla-ja-fan-vad-trevligt','Göttans','Hallå ja, fan vad trevligt','2024-08-28 13:03:33'),(18,1,'Halla-ja-fan-vad-trevligt','Göttans','Hallå ja, fan vad trevligt','2024-08-28 13:03:57'),(19,1,'bla','bkasv','bla','2024-08-28 15:08:44'),(20,1,'sade','erec','sade','2024-08-28 16:06:07');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'petanumus@mailinator.com','Perry Carver','Pa$$w0rd!'),(2,'test@test.com','Test Testsson','1234'),(3,'jenegydi@mailinator.com','Sigourney Estrada','Pa$$w0rd!');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-28 16:16:30
