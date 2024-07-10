CREATE DATABASE  IF NOT EXISTS `proyecto_agencia` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_agencia`;
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
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `id_tour` int NOT NULL AUTO_INCREMENT,
  `id_destino` int NOT NULL,
  `nombre_tour` varchar(45) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `fecha_de_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `descripcion` text NOT NULL,
  `disponibilidad` int NOT NULL,
  PRIMARY KEY (`id_tour`),
  KEY `destino_idx` (`id_destino`),
  CONSTRAINT `destino` FOREIGN KEY (`id_destino`) REFERENCES `destino` (`id_Destino`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (10,123,'C',14500.00,'2024-10-10','2024-10-12','dadjfadskj',10);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_tour`
--

DROP TABLE IF EXISTS `vista_tour`;
/*!50001 DROP VIEW IF EXISTS `vista_tour`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_tour` AS SELECT 
 1 AS `id_tour`,
 1 AS `nombre_tour`,
 1 AS `valor`,
 1 AS `fecha_de_inicio`,
 1 AS `fecha_final`,
 1 AS `descripcion`,
 1 AS `disponibilidad`,
 1 AS `Ciudad`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_tour`
--

/*!50001 DROP VIEW IF EXISTS `vista_tour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_tour` AS select `t`.`id_tour` AS `id_tour`,`t`.`nombre_tour` AS `nombre_tour`,`t`.`valor` AS `valor`,`t`.`fecha_de_inicio` AS `fecha_de_inicio`,`t`.`fecha_final` AS `fecha_final`,`t`.`descripcion` AS `descripcion`,`t`.`disponibilidad` AS `disponibilidad`,`d`.`Ciudad` AS `Ciudad` from (`tour` `t` join `destino` `d` on((`t`.`id_destino` = `d`.`id_Destino`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10  8:53:43
