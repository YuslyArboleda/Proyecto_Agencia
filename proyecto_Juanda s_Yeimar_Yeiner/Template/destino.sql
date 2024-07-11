-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_agencia
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `destino`
--

DROP TABLE IF EXISTS `destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
<<<<<<< HEAD:proyecto_Juanda s_Yeimar_Yeiner/Template/destino.sql
CREATE TABLE `destino` (
  `id_Destino` int NOT NULL AUTO_INCREMENT,
  `Departamento` varchar(50) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  `estado` tinyint NOT NULL,
  PRIMARY KEY (`id_Destino`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
=======
CREATE TABLE `tour` (
  `id_tour` int NOT NULL AUTO_INCREMENT,
  `nombre_tour` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `valor` float NOT NULL,
  `duracion` int NOT NULL,
  `id_destino` int NOT NULL,
  `estado` tinyint NOT NULL,
  PRIMARY KEY (`id_tour`),
  KEY `destino_idx` (`id_destino`),
  CONSTRAINT `destino` FOREIGN KEY (`id_destino`) REFERENCES `destino` (`id_Destino`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
>>>>>>> 345aa52ee77b0b27091233615978c1ad6e6bb19c:proyecto_Juanda s_Yeimar_Yeiner/Temple/proyecto_agencia_tour.sql
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD:proyecto_Juanda s_Yeimar_Yeiner/Template/destino.sql
-- Dump completed on 2024-07-10  8:44:22
=======
-- Dump completed on 2024-07-10 10:27:00
>>>>>>> 345aa52ee77b0b27091233615978c1ad6e6bb19c:proyecto_Juanda s_Yeimar_Yeiner/Temple/proyecto_agencia_tour.sql
