-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: liga_tica
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
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `id_equipo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Alajuelense','Alajuela','https://upload.wikimedia.org/wikipedia/commons/5/50/Logo_de_la_Liga_Deportiva_Alajuelense.svg?utm_source=es.wikipedia.org&utm_campaign=index&utm_content=original'),(2,'Saprissa','San José','https://upload.wikimedia.org/wikipedia/commons/4/4d/Escudo_del_Deportivo_Saprissa.png'),(3,'Herediano','Heredia','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Escudo_del_Club_Sport_Herediano.svg/1280px-Escudo_del_Club_Sport_Herediano.svg.png'),(4,'Cartagines','Cartago','https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Escudo_del_Club_Sport_Cartagin%C3%A9s.svg/1280px-Escudo_del_Club_Sport_Cartagin%C3%A9s.svg.png'),(5,'Todos','N/A','https://upload.wikimedia.org/wikipedia/commons/8/89/HD_transparent_picture.png');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goles`
--

DROP TABLE IF EXISTS `goles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goles` (
  `id_gol` int NOT NULL AUTO_INCREMENT,
  `id_jugador` int NOT NULL,
  `jornada` int NOT NULL,
  `fecha` date NOT NULL,
  `fase` varchar(20) NOT NULL,
  PRIMARY KEY (`id_gol`),
  KEY `id_jugador` (`id_jugador`),
  CONSTRAINT `goles_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goles`
--

LOCK TABLES `goles` WRITE;
/*!40000 ALTER TABLE `goles` DISABLE KEYS */;
INSERT INTO `goles` VALUES (1,1,1,'2026-01-15','Regular'),(2,1,6,'2026-02-07','Regular'),(3,1,7,'2026-02-15','Regular'),(4,1,8,'2026-02-21','Regular'),(5,1,16,'2026-04-19','Regular'),(6,1,17,'2026-04-23','Regular'),(7,1,17,'2026-04-23','Regular'),(8,1,17,'2026-04-23','Regular'),(9,1,18,'2026-04-26','Regular'),(10,2,5,'2026-01-27','Regular'),(11,2,5,'2026-01-27','Regular'),(12,2,12,'2026-03-13','Regular'),(13,2,17,'2026-04-23','Regular'),(14,3,10,'2026-03-03','Regular'),(15,3,15,'2026-04-11','Regular'),(16,3,17,'2026-04-23','Regular'),(17,4,5,'2026-01-29','Regular'),(18,4,6,'2026-02-08','Regular'),(19,4,10,'2026-03-05','Regular'),(20,4,17,'2026-04-22','Regular'),(21,4,18,'2026-04-26','Regular'),(22,4,21,'2026-05-13','Final'),(23,5,1,'2026-01-13','Regular'),(24,5,7,'2026-02-15','Regular'),(25,5,8,'2026-02-21','Regular'),(26,5,17,'2026-04-22','Regular'),(27,5,19,'2026-05-03','Final'),(28,5,20,'2026-05-13','Final'),(29,6,12,'2026-03-15','Regular'),(30,6,13,'2026-03-22','Regular'),(31,6,14,'2026-04-05','Regular'),(32,6,20,'2026-05-10','Final'),(33,7,1,'2026-01-17','Regular'),(34,7,3,'2026-01-20','Regular'),(35,7,5,'2026-01-28','Regular'),(36,7,10,'2026-03-04','Regular'),(37,7,12,'2026-03-14','Regular'),(38,7,13,'2026-03-21','Regular'),(39,7,13,'2026-03-21','Regular'),(40,7,14,'2026-04-05','Regular'),(41,7,15,'2026-04-10','Regular'),(42,7,15,'2026-04-10','Regular'),(43,7,16,'2026-04-18','Regular'),(44,7,22,'2026-05-16','Final'),(45,8,3,'2026-01-20','Regular'),(46,8,9,'2026-02-28','Regular'),(47,9,11,'2026-03-08','Regular'),(48,9,21,'2026-05-13','Final'),(49,10,8,'2026-02-22','Regular'),(50,10,9,'2026-03-01','Regular'),(51,10,12,'2026-03-15','Regular'),(52,10,14,'2026-04-02','Regular'),(53,10,14,'2026-04-02','Regular'),(54,11,3,'2026-01-21','Regular'),(55,11,11,'2026-03-08','Regular'),(56,11,17,'2026-04-21','Regular'),(57,11,18,'2026-04-26','Regular'),(58,12,11,'2026-03-08','Regular'),(59,12,15,'2026-04-10','Regular');
/*!40000 ALTER TABLE `goles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `posicion` varchar(30) NOT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  `id_equipo` int NOT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `id_equipo` (`id_equipo`),
  CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'Ronaldo Cisneros','Delantero','https://images.fotmob.com/image_resources/playerimages/571171.png',1),(2,'Angel Zaldivar','Delantero','https://images.fotmob.com/image_resources/playerimages/444351.png',1),(3,'Kenneth Vargas','Volante','https://images.fotmob.com/image_resources/playerimages/1237185.png',1),(4,'Tomas Rodriguez','Delantero','https://images.fotmob.com/image_resources/playerimages/1054138.png',2),(5,'Ariel Rodriguez','Delantero','https://images.fotmob.com/image_resources/playerimages/193014.png',2),(6,'Jefferson Brenes','Volante','https://images.fotmob.com/image_resources/playerimages/954392.png',2),(7,'Marcel Hernandez','Delantero','https://images.fotmob.com/image_resources/playerimages/267082.png',3),(8,'Ronaldo Araya','Volante','https://images.fotmob.com/image_resources/playerimages/1019090.png',3),(9,'José De Jesús Gonzalez','Delantero','https://images.fotmob.com/image_resources/playerimages/1070702.png',3),(10,'Cristopher Nuñez','Volante','https://images.fotmob.com/image_resources/playerimages/848335.png',4),(11,'Juan Carlos Gaete','Delantero','https://images.fotmob.com/image_resources/playerimages/946645.png',4),(12,'Douglas Lopez','Volante','https://images.fotmob.com/image_resources/playerimages/964355.png',4),(13,'Todos','','https://upload.wikimedia.org/wikipedia/commons/8/89/HD_transparent_picture.png',5);
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-28 19:44:28
