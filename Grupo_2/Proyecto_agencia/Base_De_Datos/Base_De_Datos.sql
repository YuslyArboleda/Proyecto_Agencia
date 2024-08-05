-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: agencia
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
-- Table structure for table `viajes_acomodacion`
--

DROP TABLE IF EXISTS `viajes_acomodacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_acomodacion` (
  `id_acomodacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_acomodacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_acomodacion`
--

LOCK TABLES `viajes_acomodacion` WRITE;
/*!40000 ALTER TABLE `viajes_acomodacion` DISABLE KEYS */;
INSERT INTO `viajes_acomodacion` VALUES (1,'Hoteles de 5 Estrellas','Establecimiento de lujo que ofrece una experiencia de hospedaje de alta calidad.',1),(2,'Alquileres para Mochileros','Opcion economica y social para viajeros con un presupuesto limitado, ofreciendole distintos servidios al usuario.',1),(3,'Casas de huespedes','Opcion acogedora y familiar para viajeros que buscan una experiencia mas autentica.',1),(4,'Glamping','Forma de acampar con comodidades de lujo.',1),(5,'Alquiler de Departamentos','Opcion flexible y espaciosa para viajeros que buscan una experiencia mas independiente',1);
/*!40000 ALTER TABLE `viajes_acomodacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_adicion`
--

DROP TABLE IF EXISTS `viajes_adicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_adicion` (
  `id_adicion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `costo` double NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_adicion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_adicion`
--

LOCK TABLES `viajes_adicion` WRITE;
/*!40000 ALTER TABLE `viajes_adicion` DISABLE KEYS */;
INSERT INTO `viajes_adicion` VALUES (1,'Explorador de bosque','Caminada guiada por el bosque, observacion de aves y picnic en un area de descanso, incluye equipo de senderismo y botella de agua.',200,1),(2,'Relax en el spa','Un dia relax en un spa con acesso a sauna, baño turco y masaje de 30 minutos',485,1),(3,'Cultura y arte','Tour guiado por museos y galerias de arte, incluye entrada a dos museos y degustacion de comida local en un restaurante seleccionado',323,1),(4,'Aventura urbana','Tour en bicileta por la ciudad, escalada en roca indoor y degustacion de cerveza artesanal, incluye alquier de bicileta y equipo de seguridad',364,1),(5,'Gastronomico','Tour gastronomico que incluye degustacion de vinos, quesos y paltos tipicos, incluye visita a un mercado local y recetas para llevar a casa',404,1);
/*!40000 ALTER TABLE `viajes_adicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_cliente`
--

DROP TABLE IF EXISTS `viajes_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `tipo_doc` varchar(20) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `estado` int NOT NULL,
  `id_destino` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `documento` (`documento`),
  KEY `viajes_cliente_id_destino_ebeaf204_fk_viajes_destino_id_destino` (`id_destino`),
  CONSTRAINT `viajes_cliente_id_destino_ebeaf204_fk_viajes_destino_id_destino` FOREIGN KEY (`id_destino`) REFERENCES `viajes_destino` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_cliente`
--

LOCK TABLES `viajes_cliente` WRITE;
/*!40000 ALTER TABLE `viajes_cliente` DISABLE KEYS */;
INSERT INTO `viajes_cliente` VALUES (1,'Bembarayo','Cedula','101','310999999','Bemba@gmail.com','Esmeralda 10',1,1),(2,'Puma','Cedula','102','310310','Puma@gmail.com','Silencio 15-14',1,1),(3,'Bombaclaw','Cedula','103','310720','bomba@gmail.com','Niño Jesus 10',1,1),(4,'Rafaga','Cedula','104','3202930','Rafa@gmail.com','Minercol',1,1),(5,'Aguardiente','Cedula','105','9999999','Agua@gmail.com','Minercol',1,1);
/*!40000 ALTER TABLE `viajes_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_destino`
--

DROP TABLE IF EXISTS `viajes_destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_destino` (
  `id_destino` int NOT NULL AUTO_INCREMENT,
  `destino` varchar(200) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_destino`
--

LOCK TABLES `viajes_destino` WRITE;
/*!40000 ALTER TABLE `viajes_destino` DISABLE KEYS */;
INSERT INTO `viajes_destino` VALUES (1,'Quibdo',1),(2,'Bogota',1),(3,'Bucaramanga',1),(4,'Boyaca',1),(5,'Pereira',1);
/*!40000 ALTER TABLE `viajes_destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_detallereserva`
--

DROP TABLE IF EXISTS `viajes_detallereserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_detallereserva` (
  `id_detalle_reserva` int NOT NULL AUTO_INCREMENT,
  `habitaciones` int NOT NULL,
  `adulto` int NOT NULL,
  `infante` int NOT NULL,
  `comentarios` varchar(500) DEFAULT NULL,
  `id_acomodacion` int DEFAULT NULL,
  `id_adicion` int DEFAULT NULL,
  `id_paquete_tour` int DEFAULT NULL,
  `id_reserva` int NOT NULL,
  PRIMARY KEY (`id_detalle_reserva`),
  KEY `viajes_detallereserv_id_acomodacion_0e9a628a_fk_viajes_ac` (`id_acomodacion`),
  KEY `viajes_detallereserv_id_adicion_490f61e4_fk_viajes_ad` (`id_adicion`),
  KEY `viajes_detallereserv_id_paquete_tour_723793a0_fk_viajes_pa` (`id_paquete_tour`),
  KEY `viajes_detallereserv_id_reserva_df9ffbc7_fk_viajes_re` (`id_reserva`),
  CONSTRAINT `viajes_detallereserv_id_acomodacion_0e9a628a_fk_viajes_ac` FOREIGN KEY (`id_acomodacion`) REFERENCES `viajes_acomodacion` (`id_acomodacion`),
  CONSTRAINT `viajes_detallereserv_id_adicion_490f61e4_fk_viajes_ad` FOREIGN KEY (`id_adicion`) REFERENCES `viajes_adicion` (`id_adicion`),
  CONSTRAINT `viajes_detallereserv_id_paquete_tour_723793a0_fk_viajes_pa` FOREIGN KEY (`id_paquete_tour`) REFERENCES `viajes_paquetetour` (`id_paquete_tour`),
  CONSTRAINT `viajes_detallereserv_id_reserva_df9ffbc7_fk_viajes_re` FOREIGN KEY (`id_reserva`) REFERENCES `viajes_reserva` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_detallereserva`
--

LOCK TABLES `viajes_detallereserva` WRITE;
/*!40000 ALTER TABLE `viajes_detallereserva` DISABLE KEYS */;
INSERT INTO `viajes_detallereserva` VALUES (1,1,1,1,'Ninguno',1,1,1,1),(2,2,2,3,'Ninguno',2,2,2,2),(3,2,2,2,'Ninguno',3,3,3,3),(4,1,1,3,'Ninguno',4,4,4,4),(5,3,4,8,'Ninguno',5,5,5,5);
/*!40000 ALTER TABLE `viajes_detallereserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_hospedaje`
--

DROP TABLE IF EXISTS `viajes_hospedaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_hospedaje` (
  `id_hospedaje` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `tipo_hospedaje` varchar(30) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `tarifa_base` double NOT NULL,
  `estado` int NOT NULL,
  `imagen` longtext,
  `id_destino` int NOT NULL,
  PRIMARY KEY (`id_hospedaje`),
  KEY `viajes_hospedaje_id_destino_70de6455_fk_viajes_de` (`id_destino`),
  CONSTRAINT `viajes_hospedaje_id_destino_70de6455_fk_viajes_de` FOREIGN KEY (`id_destino`) REFERENCES `viajes_destino` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_hospedaje`
--

LOCK TABLES `viajes_hospedaje` WRITE;
/*!40000 ALTER TABLE `viajes_hospedaje` DISABLE KEYS */;
INSERT INTO `viajes_hospedaje` VALUES (1,'Hotel Plaza','Av. Libertad 12, Lima','Hotelplaza@gmail.com','Hotel 4 Estrellas','Ubicado en el corazon de la ciudad, cuenta con habitaciones confortables para aquellos viajeros',606,1,'',1),(2,'Hostal Los Andes','Jiron de la union 456, Cusco','Andes@gmail.com','Hostal','Hotel acogedor que ofrece habitaciones sencillas pero confortables y un ambiente familiar',121000,1,'',2),(3,'Departamentos Amueblados MiraFlores','Av. Larco 789, Miraflores','MiraFlores@gmail.com','Departamento Amueblado','Excelente opcion para aquellos que buscan mas espacio y comodidad,',323000,1,'',5),(4,'Eco Lodge Amazonas','Km 10 Carretera a la Selva, Puerto Maldonado','Ecolodge@gmail.com','Ecolodge','Es un Lodge ubicado en la selva amazonica',242,1,'',3),(5,'Camping Los Alamos','Km 20 carretera a la costa, Mancora','Alamos@gmail.com','Camping','Ubicado en la playa, ofrece parcelas para tiendas de campaña y caravanillas',40,1,'',2);
/*!40000 ALTER TABLE `viajes_hospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_hospedajeacomodacion`
--

DROP TABLE IF EXISTS `viajes_hospedajeacomodacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_hospedajeacomodacion` (
  `id_hospedaje_acomodacion` int NOT NULL AUTO_INCREMENT,
  `temporada` varchar(20) NOT NULL,
  `tarifa_agencia` double NOT NULL,
  `tarifa` double NOT NULL,
  `imagen` longtext,
  `id_acomodacion` int NOT NULL,
  `id_hospedaje` int NOT NULL,
  PRIMARY KEY (`id_hospedaje_acomodacion`),
  KEY `viajes_hospedajeacom_id_acomodacion_3167e57a_fk_viajes_ac` (`id_acomodacion`),
  KEY `viajes_hospedajeacom_id_hospedaje_5e6ec122_fk_viajes_ho` (`id_hospedaje`),
  CONSTRAINT `viajes_hospedajeacom_id_acomodacion_3167e57a_fk_viajes_ac` FOREIGN KEY (`id_acomodacion`) REFERENCES `viajes_acomodacion` (`id_acomodacion`),
  CONSTRAINT `viajes_hospedajeacom_id_hospedaje_5e6ec122_fk_viajes_ho` FOREIGN KEY (`id_hospedaje`) REFERENCES `viajes_hospedaje` (`id_hospedaje`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_hospedajeacomodacion`
--

LOCK TABLES `viajes_hospedajeacomodacion` WRITE;
/*!40000 ALTER TABLE `viajes_hospedajeacomodacion` DISABLE KEYS */;
INSERT INTO `viajes_hospedajeacomodacion` VALUES (1,'Alta',100000,200000,'relative/path/to/upload/descargaz.jfif',1,1),(2,'Baja',200000,50000,'relative/path/to/upload/images_4.jfif',2,2),(3,'Media',200000,60000,'relative/path/to/upload/images_5.jfif',3,3),(4,'Baja',500000,200000,'relative/path/to/upload/images_6.jfif',4,4),(5,'Baja',200000,50000,'relative/path/to/upload/images_7.jfif',5,5);
/*!40000 ALTER TABLE `viajes_hospedajeacomodacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_paquete`
--

DROP TABLE IF EXISTS `viajes_paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_paquete` (
  `id_paquete` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `vigencia_inicio` date NOT NULL,
  `vigencia_fin` date NOT NULL,
  `noche` int NOT NULL,
  `incluye` varchar(200) NOT NULL,
  `no_incluye` varchar(200) NOT NULL,
  `costo` double NOT NULL,
  `disponibilidad` varchar(50) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_paquete`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_paquete`
--

LOCK TABLES `viajes_paquete` WRITE;
/*!40000 ALTER TABLE `viajes_paquete` DISABLE KEYS */;
INSERT INTO `viajes_paquete` VALUES (1,'Aventura en la selva','Disfruta de un recorrido por la selva tropical, donde podras observar la rica biodiversidad de la zona y realizar actividades como senderismo y rafting','2024-08-13','2024-08-30',7,'Carro, Hotel, Comida, Tour','Spa',3000000,'de agosto a diciembre',1),(2,'Paquete \"Exploradores del Eje Cafetero\"','Sumérgete en el corazón del Eje Cafetero y descubre el proceso del café colombiano, visita pintorescos pueblos como Salento y Filandia, y disfruta de paisajes únicos como el Valle del Cocora.','2024-08-06','2024-08-21',7,'Transporte terrestre desde y hacia la ciudad de origen. Alojamiento en hoteles rurales. Desayunos y cenas. Entradas a fincas cafeteras con tour guiado y cata de café.','Almuerzos. Actividades adicionales no mencionadas en el itinerario. Gastos personales y propinas.',3000000,'Todo el año, con salidas diarias.',1),(3,'Paquete \"Aventurero\"','Vive la magia de las selvas colombiano, con una experiencia que incluye navegación por el río, caminatas por la selva, interacción con comunidades indígenas y avistamiento de flora y fauna exótica.','2024-08-14','2024-08-22',12,'Alojamiento en eco-lodges. Desayunos, almuerzos y cenas. Excursiones guiadas por la selva y visitas a comunidades indígenas y Seguro de viaje.','Gastos personales y propinas. Bebidas alcohólicas. Actividades adicionales no especificadas en el itinerario.',2000000,'De mayo a noviembre (temporada seca).',1),(4,'Paquete \"Naturaleza y Tradición en el Pacífico\"','Explora el Pacífico colombiano con un paquete que te lleva a disfrutar de las playas de Nuquí, la cultura afrocolombiana y la increíble biodiversidad de la región.','2024-08-14','2024-08-23',20,'Alojamiento en eco-lodge frente al mar. Desayunos, almuerzos y cenas. Excursiones guiadas a cascadas, termales y playas vírgenes. Talleres culturales de música y danza tradicional. Seguro de viaje.','Gastos personales y propinas. Bebidas alcohólicas. Actividades adicionales no mencionadas.',1,'De julio a octubre',1),(5,'Paquete \"Ruta de los Llanos Orientales\"','Aventúrate en los vastos paisajes de los Llanos Orientales de Colombia, donde podrás disfrutar de la cultura llanera, safaris de fauna silvestre y espectaculares atardeceres.','2024-08-14','2024-08-29',7,'Alojamiento en estancias turísticas con encanto llanero. Desayunos, almuerzos y cenas. Safari de fauna con avistamiento de chigüiros','Gastos personales y propinas. Bebidas alcohólicas. Actividades adicionales no mencionadas en el itinerario.',5000000,'De diciembre a abril (temporada seca).',1);
/*!40000 ALTER TABLE `viajes_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_paquetetour`
--

DROP TABLE IF EXISTS `viajes_paquetetour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_paquetetour` (
  `id_paquete_tour` int NOT NULL AUTO_INCREMENT,
  `id_paquete` int NOT NULL,
  `id_tour` int NOT NULL,
  PRIMARY KEY (`id_paquete_tour`),
  KEY `viajes_paquetetour_id_tour_32cc1204_fk_viajes_tour_id_tour` (`id_tour`),
  KEY `viajes_paquetetour_id_paquete_11483777_fk_viajes_pa` (`id_paquete`),
  CONSTRAINT `viajes_paquetetour_id_paquete_11483777_fk_viajes_pa` FOREIGN KEY (`id_paquete`) REFERENCES `viajes_paquete` (`id_paquete`),
  CONSTRAINT `viajes_paquetetour_id_tour_32cc1204_fk_viajes_tour_id_tour` FOREIGN KEY (`id_tour`) REFERENCES `viajes_tour` (`id_tour`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_paquetetour`
--

LOCK TABLES `viajes_paquetetour` WRITE;
/*!40000 ALTER TABLE `viajes_paquetetour` DISABLE KEYS */;
INSERT INTO `viajes_paquetetour` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `viajes_paquetetour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_reserva`
--

DROP TABLE IF EXISTS `viajes_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_reserva` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `cantidad` int NOT NULL,
  `total` double NOT NULL,
  `estado_reserva` varchar(20) NOT NULL,
  `metodo_pago` varchar(20) NOT NULL,
  `estado` int NOT NULL,
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `viajes_reserva_id_cliente_7981e356_fk_viajes_cliente_id_cliente` (`id_cliente`),
  CONSTRAINT `viajes_reserva_id_cliente_7981e356_fk_viajes_cliente_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `viajes_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_reserva`
--

LOCK TABLES `viajes_reserva` WRITE;
/*!40000 ALTER TABLE `viajes_reserva` DISABLE KEYS */;
INSERT INTO `viajes_reserva` VALUES (1,'2024-08-01','2024-08-14','2024-08-30',1,1,'Activo','Efectivo',1,1),(2,'2024-08-02','2024-08-20','2024-08-30',1,8,'Activo','Efectivo',1,2),(3,'2024-08-01','2024-08-16','2024-08-22',1,3,'Activo','Efectivo',1,4),(4,'2024-08-20','2024-08-24','2024-08-30',4,5,'Activo','Efectivo',1,3),(5,'2024-07-09','2024-08-01','2024-08-05',1,7,'Activo','Efectivo',1,5);
/*!40000 ALTER TABLE `viajes_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_tour`
--

DROP TABLE IF EXISTS `viajes_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_tour` (
  `id_tour` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `valor` double NOT NULL,
  `duracion` int NOT NULL,
  `estado` int NOT NULL,
  `imagen` longtext NOT NULL,
  `id_destino` int NOT NULL,
  PRIMARY KEY (`id_tour`),
  KEY `viajes_tour_id_destino_7f7b6e4c_fk_viajes_destino_id_destino` (`id_destino`),
  CONSTRAINT `viajes_tour_id_destino_7f7b6e4c_fk_viajes_destino_id_destino` FOREIGN KEY (`id_destino`) REFERENCES `viajes_destino` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_tour`
--

LOCK TABLES `viajes_tour` WRITE;
/*!40000 ALTER TABLE `viajes_tour` DISABLE KEYS */;
INSERT INTO `viajes_tour` VALUES (1,'Tour Cafetero \"Aromas de Colombia\"','Embárcate en un viaje a la región del Eje Cafetero, donde podrás explorar los procesos tradicionales del café, desde la planta hasta la taza, asi como tambien visitarás haciendas cafetaleras.',500,1,1,'relative/path/to/upload/22.jfif',1),(2,'Tour Quibdoseño','Descubre la historia y belleza de Quibdo, una joya colonial llena de color y vida. Este tour incluye una visita a los pueblos cercanos, donde podrás relajarte en playas paradisíacas.',200,1,1,'relative/path/to/upload/images.jfif',1),(3,'Tour de Naturaleza','Sumérgete en la biodiversidad de Bucaramanga. Este tour te lleva a explorar la selva, conocer comunidades indígenas, y Disfrutar de la flora y fauna que ofrece.',1000000,1,1,'relative/path/to/upload/images_1.jfif',3),(4,'Tour de Aventura','Adéntrate en Boyaca, y disfruta explorar una de sus montañas costeras altas. Este tour incluye caminatas alrededor de Boyaca',200000,1,1,'relative/path/to/upload/images_2.jfif',4),(5,'Tour Cultural','Explora la rica herencia cultural de Pereira, con este tour que incluye visitas a la vibrante ciudad de Pereira. Donde participaras en talleres de música y danza tradicional.',350000,1,1,'relative/path/to/upload/images_3.jfif',5);
/*!40000 ALTER TABLE `viajes_tour` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-05  8:39:07
