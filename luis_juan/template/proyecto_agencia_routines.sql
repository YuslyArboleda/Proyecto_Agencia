-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
<<<<<<< HEAD
-- Host: 127.0.0.1    Database: proyecto_agencia
-- ------------------------------------------------------
-- Server version	8.0.34
=======
-- Host: localhost    Database: proyecto_agencia
-- ------------------------------------------------------
-- Server version	8.2.0
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff

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
<<<<<<< HEAD
-- Temporary view structure for view `ver_permisos`
--

DROP TABLE IF EXISTS `ver_permisos`;
/*!50001 DROP VIEW IF EXISTS `ver_permisos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ver_permisos` AS SELECT 
 1 AS `idpermiso`,
 1 AS `Nombre`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ver_permisos`
--

/*!50001 DROP VIEW IF EXISTS `ver_permisos`*/;
=======
-- Temporary view structure for view `vista_usuario`
--

DROP TABLE IF EXISTS `vista_usuario`;
/*!50001 DROP VIEW IF EXISTS `vista_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuario` AS SELECT 
 1 AS `idUsuario`,
 1 AS `nombre`,
 1 AS `tipo_doc`,
 1 AS `documento`,
 1 AS `correo`,
 1 AS `sexo`,
 1 AS `direccion`,
 1 AS `rol`,
 1 AS `login`,
 1 AS `clave`,
 1 AS `fecha_creacion`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_paquete_tour`
--

DROP TABLE IF EXISTS `vista_paquete_tour`;
/*!50001 DROP VIEW IF EXISTS `vista_paquete_tour`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_paquete_tour` AS SELECT 
 1 AS `idUsuario`,
 1 AS `tour_nombre`,
 1 AS `nombre`,
 1 AS `condicion`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_usuario`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuario`*/;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
<<<<<<< HEAD
/*!50001 VIEW `ver_permisos` AS select `permiso`.`idpermiso` AS `idpermiso`,`permiso`.`Nombre` AS `Nombre`,`permiso`.`Estado` AS `Estado` from `permiso` where (`permiso`.`Estado` = 1) */;
=======
/*!50001 VIEW `vista_usuario` AS select `usuario`.`idUsuario` AS `idUsuario`,`usuario`.`nombre` AS `nombre`,`usuario`.`tipo_doc` AS `tipo_doc`,`usuario`.`documento` AS `documento`,`usuario`.`correo` AS `correo`,`usuario`.`sexo` AS `sexo`,`usuario`.`direccion` AS `direccion`,`usuario`.`rol` AS `rol`,`usuario`.`login` AS `login`,`usuario`.`clave` AS `clave`,`usuario`.`fecha_creacion` AS `fecha_creacion`,`usuario`.`estado` AS `estado` from `usuario` where (`usuario`.`estado` = '1') */;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
<<<<<<< HEAD
-- Dumping events for database 'proyecto_agencia'
--

--
-- Dumping routines for database 'proyecto_agencia'
--
/*!50003 DROP PROCEDURE IF EXISTS `actulizacion_permiso` */;
=======
-- Final view structure for view `vista_paquete_tour`
--

/*!50001 DROP VIEW IF EXISTS `vista_paquete_tour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_paquete_tour` AS select `paquete_tour`.`idPaquete_tour` AS `idUsuario`,`paquete_tour`.`id_tour` AS `tour_nombre`,`paquete_tour`.`id_paquete` AS `nombre`,`paquete_tour`.`condicion` AS `condicion` from ((`paquete_tour` join `paquete` on((`paquete_tour`.`id_paquete` = `paquete`.`id_paquete`))) join `tour` on((`paquete_tour`.`id_tour` = `tour`.`id_tour`))) where (`paquete_tour`.`condicion` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'proyecto_agencia'
--
<<<<<<< HEAD
/*!50003 DROP PROCEDURE IF EXISTS `actualizacion_destino` */;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
<<<<<<< HEAD
CREATE DEFINER=`root`@`localhost` PROCEDURE `actulizacion_permiso`(idpermi int, nom varchar (50),est tinyint)
BEGIN
update permiso set idpermiso=idpermi, nombre=nom, estado=est where idpermiso = idpermi; 
=======
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizacion_destino`(id_desti int,depto varchar(50), cidad varchar(45),esta tinyint)
BEGIN
update destino set id_Destino=id_desti, Departamento=depto, ciudad=cidad, estado=esta where id_Destino = id_desti;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
<<<<<<< HEAD
/*!50003 DROP PROCEDURE IF EXISTS `buscar_permiso` */;
=======
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_acomodacion` */;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
<<<<<<< HEAD
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_permiso`(in idpermi int)
BEGIN
select * from permiso where idpermiso = idpermi;
=======
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_acomodacion`(in idacomoda int, in nom varchar(100), in descrip varchar(300))
BEGIN
update acomodacion set nombre = nom, descripcion = descrip where id_acomodacion = idacomoda;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
<<<<<<< HEAD
/*!50003 DROP PROCEDURE IF EXISTS `consulta_permiso` */;
=======
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Cliente` */;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
<<<<<<< HEAD
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_permiso`(in valor varchar(50))
BEGIN
select * from ver_permisos where idpermiso like concat('%', valor, '%') || Nombre like concat('%', valor, '%');
=======
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Cliente`(in idcli int, in nom varchar(45), in tele varchar(45), in corr varchar(45), in dire varchar(45), in canti varchar(45))
BEGIN
update cliente set Nombre = nom, Telefono = tele, Correo = corr, Direccion = dire,  Cantidad = canti where idcliente = idcli;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
<<<<<<< HEAD
/*!50003 DROP PROCEDURE IF EXISTS `eliminacion_permiso` */;
=======
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_hospedaje_acomoda` */;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
<<<<<<< HEAD
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminacion_permiso`(in idpermi int)
BEGIN
update permiso set Estado = '0' where idpermiso = idpermi;
=======
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_hospedaje_acomoda`(in id_hospeacom int, in id_acomoda int, in id_hospe int, in tempo varchar(20), in tari_age float, in tari float)
BEGIN
update hospedaje_acomodacion set id_acomodacion = id_acomoda, id_hospedaje = id_hospe, temporada = tempo, tarifa_agencia = tari_age, tarifa = tari where id_hospedaje_acomodacion = id_hospeacom;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
<<<<<<< HEAD
/*!50003 DROP PROCEDURE IF EXISTS `insertar_permiso` */;
=======
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_paquete` */;
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
<<<<<<< HEAD
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_permiso`(in nom varchar(50))
BEGIN
insert into permiso (Nombre,Estado) values (nom, '1');
=======
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_paquete`(in idpaquete int, in nomb varchar(200), in descr varchar(500), in vigenciainicio date, in vigenciafin date, in noch int, in inclu varchar(200), noincluye varchar(200), in cost float, in disponi varchar(50))
BEGIN
update paquete set id_paquete = idpaquete, nombre = nomb, descripcion = descr, vigencia_inicio = vigenciainicio, vigencia_fin = vigenciafin, noche = noch, incluye = inclu, no_incluye = noincluye, costo = cost, disponibilidad = disponi where id_paquete = idpaquete;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
=======
>>>>>>> 345aa52ee77b0b27091233615978c1ad6e6bb19c
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_paquete_tour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_paquete_tour`(in Idpaqto int, in idtur int, in idpaque int)
BEGIN
update paquete_tour set idPaquete_tour = Idpaqto, id_tour = idtur, id_paquete = idpaque, condicion = '1' where idPaquete_tour = Idpaqto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_usuario`(in idusu int, in Nomb varchar(200), in tidoc varchar(20), in docu varchar(20), in cor varchar(200), in sex int, in dire varchar(50), in ro int, in log varchar(30), in cla varchar(40), in fecrea date)
BEGIN
update paquete set idUsuario = IdPaq, Nombre = Nomb, tipo_doc= tidoc, documento = docu, correo = cor, sexo = sex, direccion = dire, rol = ro, login = log, clave = cla, fecha_creacion = fecrea, estado = '0' where idUsuario = idusu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_paquete_tour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_paquete_tour`(in idpaqto int)
BEGIN
select * from paquete_tour where idPaquete_Tour = idpaqto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_usuario`(in idusu int)
BEGIN
select * from usuario where idUsuario = idusu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_paquete_tour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_paquete_tour`(in idpaqtour int)
BEGIN
update paquete_tour set condicion = '1' where idPaquete_tour = idpaqtour;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_usuario`(in idusu int)
BEGIN
update usuario set estado = '0' where idUsurio = idusu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_paquete_tour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_paquete_tour`(in idto int, in idpaque int)
BEGIN
insert into paquete_tour (id_tour, id_paquete) values (idto, idpaque, '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_usuario`(in nom varchar(200), in tipo varchar(20), in docu varchar(20), in cor varchar(200), in sex int, in dire varchar(50), in rol int, in log varchar (30), in cla varchar(40), in fecre date)
BEGIN
insert into usuario  values (nom, tipo, docu, cor, sex, dire, rol, log, cla, fecre, '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
<<<<<<< HEAD
/*!50003 DROP PROCEDURE IF EXISTS `insesion_destino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insesion_destino`(in id_desti int, in departamen varchar(50), in ciuda varchar (45))
BEGIN
insert into destino (id_Destino, Departamento,Ciudad, estado) values (id_desti, departamen,ciuda, '0');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insestar_destino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insestar_destino`(in id_desti int, in departamen varchar(50), in ciuda varchar (45))
BEGIN
insert into destino (id_Destino, Departamento,Ciudad, estado) values (id_desti, departamen,ciuda, '0');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inst_acomoda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inst_acomoda`(in nom varchar(100), in descrip varchar(300))
BEGIN
insert into acomodacion (nombre, descripcion, estado_acomoda) values (nom, descrip, '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inst_hospe_acomoda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inst_hospe_acomoda`(in acomoda int, in hospe int, in temp varchar(20), in tari_agen float, in tari float)
BEGIN
insert into hospedaje_acomodacion (id_acomodacion, id_hospedaje, temporada, tarifa_agencia, tarifa, estado_hospeacomo) values (acomoda, hospe, temp, tari_agen, tari, '1');
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
=======
>>>>>>> 345aa52ee77b0b27091233615978c1ad6e6bb19c
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
-- Dump completed on 2024-07-09 11:39:18
=======
-- Dump completed on 2024-07-10  8:28:19
>>>>>>> 7bc097ef2a34eb6a06a3a11bf8d7ad2896c2afff
=======
-- Dump completed on 2024-07-10 11:19:02
>>>>>>> 345aa52ee77b0b27091233615978c1ad6e6bb19c
