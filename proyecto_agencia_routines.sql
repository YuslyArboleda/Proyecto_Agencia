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
-- Temporary view structure for view `mostrar_detalle_reserva`
--

DROP TABLE IF EXISTS `mostrar_detalle_reserva`;
/*!50001 DROP VIEW IF EXISTS `mostrar_detalle_reserva`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_detalle_reserva` AS SELECT 
 1 AS `iddetalle_reserva`,
 1 AS `id_reserva`,
 1 AS `id_paquete_tour`,
 1 AS `id_acomodacion`,
 1 AS `id_adicion`,
 1 AS `habitaciones`,
 1 AS `adulto`,
 1 AS `infante`,
 1 AS `comentarios`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `mostrar_detalle_reserva`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_detalle_reserva`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_detalle_reserva` AS select `detalle_reserva`.`iddetalle_reserva` AS `iddetalle_reserva`,`detalle_reserva`.`id_reserva` AS `id_reserva`,`detalle_reserva`.`id_paquete_tour` AS `id_paquete_tour`,`detalle_reserva`.`id_acomodacion` AS `id_acomodacion`,`detalle_reserva`.`id_adicion` AS `id_adicion`,`detalle_reserva`.`habitaciones` AS `habitaciones`,`detalle_reserva`.`adulto` AS `adulto`,`detalle_reserva`.`infante` AS `infante`,`detalle_reserva`.`comentarios` AS `comentarios` from `detalle_reserva` where (`detalle_reserva`.`estado` = '1') */;
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

-- Dump completed on 2024-07-08  8:42:31
