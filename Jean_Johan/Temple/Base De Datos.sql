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
-- Table structure for table `paquete`
--

DROP TABLE IF EXISTS `paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquete` (
<<<<<<< HEAD
  `idPaquete` int NOT NULL AUTO_INCREMENT,
  `id_hotel` int NOT NULL,
  `id_destino` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(350) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_fin` date NOT NULL,
  `Costo` int NOT NULL,
  `Noche_Estadia` int NOT NULL,
<<<<<<< HEAD
  PRIMARY KEY (`idPaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
=======
  `estado` tinyint NOT NULL,
  PRIMARY KEY (`idPaquete`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
>>>>>>> b6994544081ec0db28b4585968fae1849c5c40dc
=======
  `id_paquete` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `vigencia_inicio` date NOT NULL,
  `vigencia_fin` date NOT NULL,
  `noche` int NOT NULL,
  `incluye` varchar(200) NOT NULL,
  `no_incluye` varchar(200) NOT NULL,
  `costo` float NOT NULL,
  `estado` tinyint NOT NULL,
  `disponibilidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id_paquete`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
<<<<<<< HEAD
>>>>>>> e435fee6b45242dcf187125c2c4fa4ea9c4faf09
=======
>>>>>>> cb0368409de57ff031d6e85839527086ecd03e47
>>>>>>> bf3463a37c0c31b9bc93a512cbf0ea29a9e616fa
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete`
--

LOCK TABLES `paquete` WRITE;
/*!40000 ALTER TABLE `paquete` DISABLE KEYS */;
<<<<<<< HEAD
<<<<<<< HEAD
/*!40000 ALTER TABLE `paquete` ENABLE KEYS */;
UNLOCK TABLES;
=======
INSERT INTO `paquete` VALUES (6,1,1,'JOJOJOJO','WOMP-WOMP','2002-12-12','2022-12-12',101,101,1);
=======
INSERT INTO `paquete` VALUES (1,'johan','jojo','2002-12-12','2002-12-12',20,'todo','nada',2000,1,'disponible'),(7,'webin','ajaja','2020-03-03','2015-04-04',4,'todo','ada',3000,1,'disponible'),(8,'paquete','jejejj','2021-03-03','2023-03-03',5,'todo','nada',5000,1,'disponible');
<<<<<<< HEAD
>>>>>>> e435fee6b45242dcf187125c2c4fa4ea9c4faf09
=======
>>>>>>> cb0368409de57ff031d6e85839527086ecd03e47
>>>>>>> bf3463a37c0c31b9bc93a512cbf0ea29a9e616fa
/*!40000 ALTER TABLE `paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `paquete_vista`
--

DROP TABLE IF EXISTS `paquete_vista`;
/*!50001 DROP VIEW IF EXISTS `paquete_vista`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `paquete_vista` AS SELECT 
 1 AS `id_paquete`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `vigencia_inicio`,
 1 AS `vigencia_fin`,
 1 AS `noche`,
 1 AS `incluye`,
 1 AS `no_incluye`,
 1 AS `costo`,
 1 AS `estado`,
 1 AS `disponibilidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'proyecto_agencia'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_paquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_paquete`(in idpaquete int, in nomb varchar(200), in descr varchar(500), in vigenciainicio date, in vigenciafin date, in noch int, in inclu varchar(200), noincluye varchar(200), in cost float, in disponi varchar(50))
BEGIN
update paquete set id_paquete = idpaquete, nombre = nomb, descripcion = descr, vigencia_inicio = vigenciainicio, vigencia_fin = vigenciafin, noche = noch, incluye = inclu, no_incluye = noincluye, costo = cost, disponibilidad = disponi where id_paquete = idpaquete;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_paquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_paquete`(in idpaq int)
BEGIN
select * from paquete where id_paquete = idpaq;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_paquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_paquete`(in valor varchar(45))
BEGIN
select * from paquete_vista where id_paquete like concat('%', valor,'%') || nombre like concat('%', valor,'%') || descripcion like concat('%', valor,'%') || vigencia_inicio like concat('%', valor,'%') || vigencia_fin like concat('%', valor,'%') || noche like concat('%', valor,'%') || incluye like concat('%', valor,'%') || no_incluye like concat('%', valor,'%') || costo like concat('%', valor,'%') || estado like concat('%', valor,'%') ||disponibilidad like concat('%', valor,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_paquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_paquete`(in idPaq int)
BEGIN
update paquete set estado = '0' where id_paquete = idPaq;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_paquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_paquete`(in nomb varchar(200), in descr varchar(500), in vigenciainicio date, in vigenciafin date, in noch int, in inclu varchar(200), in noincluye varchar(200), in cost float, in disponibi varchar(50))
BEGIN
insert into paquete (nombre, descripcion, vigencia_inicio, vigencia_fin, noche, incluye, no_incluye, costo, estado, disponibilidad) values (nomb, descr, vigenciainicio, vigenciafin, noch, inclu, noincluye, cost, '1', disponibi);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
<<<<<<< HEAD
>>>>>>> b6994544081ec0db28b4585968fae1849c5c40dc
=======

--
-- Final view structure for view `paquete_vista`
--

/*!50001 DROP VIEW IF EXISTS `paquete_vista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `paquete_vista` AS select `paquete`.`id_paquete` AS `id_paquete`,`paquete`.`nombre` AS `nombre`,`paquete`.`descripcion` AS `descripcion`,`paquete`.`vigencia_inicio` AS `vigencia_inicio`,`paquete`.`vigencia_fin` AS `vigencia_fin`,`paquete`.`noche` AS `noche`,`paquete`.`incluye` AS `incluye`,`paquete`.`no_incluye` AS `no_incluye`,`paquete`.`costo` AS `costo`,`paquete`.`estado` AS `estado`,`paquete`.`disponibilidad` AS `disponibilidad` from `paquete` where (`paquete`.`estado` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
<<<<<<< HEAD
>>>>>>> e435fee6b45242dcf187125c2c4fa4ea9c4faf09
=======
>>>>>>> cb0368409de57ff031d6e85839527086ecd03e47
>>>>>>> bf3463a37c0c31b9bc93a512cbf0ea29a9e616fa
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
<<<<<<< HEAD
-- Dump completed on 2024-07-02 11:35:19
=======
-- Dump completed on 2024-07-03 10:23:55
>>>>>>> b6994544081ec0db28b4585968fae1849c5c40dc
=======
-- Dump completed on 2024-07-04 11:38:18
<<<<<<< HEAD
>>>>>>> e435fee6b45242dcf187125c2c4fa4ea9c4faf09
=======
>>>>>>> cb0368409de57ff031d6e85839527086ecd03e47
>>>>>>> bf3463a37c0c31b9bc93a512cbf0ea29a9e616fa
