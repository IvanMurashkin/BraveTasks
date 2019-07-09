-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: bravedb
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cities` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `CountryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CountryId` (`CountryId`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`CountryId`) REFERENCES `country` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Ижевск',1),(2,'Москва',1),(3,'Самара',1),(4,'Волгоград',1),(5,'Санкт-Петербкрг',1),(6,'Екатеринбург',1),(7,'Владивосток',1),(8,'Краснодар',1),(9,'Сочи',1),(10,'Уфа',1),(11,'Лас-Вегас',2),(12,'Майами',2),(13,'Сиетл',2),(14,'Атланта',2),(15,'Лос-Анджелес',2),(16,'Сан-Франциско',2),(17,'Вашингтон',2),(18,'Детроит',2),(19,'Чикаго',2),(20,'Нью-Йорк',2),(21,'Берлин',3),(22,'Мюнхен',3),(23,'Гамбург',3),(24,'Кёльн',3),(25,'Трир',3),(26,'Дортмунд',3),(27,'Потсдам',3),(28,'Штутгарт',3),(29,'Дрезден',3),(30,'Нюрнберг',3),(31,'Санья',4),(32,'Пекин',4),(33,'Шанхай',4),(34,'Гонконг',4),(35,'Макао',4),(36,'Харбин',4),(37,'Тэйбэй',4),(38,'Ханчжоу',4),(39,'Циндао',4),(40,'Нанкин',4),(41,'Париж',5),(42,'Лион',5),(43,'Марсель',5),(44,'Ницца',5),(45,'Кан',5),(46,'Бордо',5),(47,'Канны',5),(48,'Ним',5),(49,'Орлеан',5),(50,'Страсбург',5);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-09 14:36:03
