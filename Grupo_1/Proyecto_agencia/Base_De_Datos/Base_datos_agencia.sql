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
-- Dumping data for table `viajes_acomodacion`
--

LOCK TABLES `viajes_acomodacion` WRITE;
/*!40000 ALTER TABLE `viajes_acomodacion` DISABLE KEYS */;
INSERT INTO `viajes_acomodacion` VALUES (1,'Simple','cama sencilla de 1.20',1),(2,'Doble','Cama de 1.40, kim',1),(3,'Multiples','3 o mas camas de 100',1);
/*!40000 ALTER TABLE `viajes_acomodacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_adicion`
--

LOCK TABLES `viajes_adicion` WRITE;
/*!40000 ALTER TABLE `viajes_adicion` DISABLE KEYS */;
INSERT INTO `viajes_adicion` VALUES (1,'Autos','Variedad de marcas de Autos para su comodidad',300000,1),(2,'Alimentación','Cualquier tipo de alimento no incluido en el paquete',60000,1),(3,'Noches Romanticas','Salidas o cenas romanticas',400000,1),(4,'Alojamiento','Cualquier tipo de alojamiento que se encuentre disponible',200000,1),(5,'Bicicletas','Para cualquier edad',10000,1);
/*!40000 ALTER TABLE `viajes_adicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_cliente`
--

LOCK TABLES `viajes_cliente` WRITE;
/*!40000 ALTER TABLE `viajes_cliente` DISABLE KEYS */;
INSERT INTO `viajes_cliente` VALUES (1,'Marisol','Cédula','1010897899','29303938','lamejor@hotmail.com','medrano',1,1),(2,'Camilo','Cédula','19283746590','625484745','elmejor@hotmail.com','silencio',1,2),(3,'Samanta','Cédula','1107798647','537484874','correr@gmail.com','porvenir',1,3),(4,'Samara Perea','Cédula','1009384765','9103837464','ejemplos@hotmail.com','cabi',1,4),(5,'Jose Gabriel','Cédula','102938463537','6738364','estenoes@gmacil.com','Esmeralda',1,5);
/*!40000 ALTER TABLE `viajes_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_destino`
--

LOCK TABLES `viajes_destino` WRITE;
/*!40000 ALTER TABLE `viajes_destino` DISABLE KEYS */;
INSERT INTO `viajes_destino` VALUES (1,'Eje Cafetero',1),(2,'Panamá',1),(3,'Nuquí',1),(4,'Bahía Solano',1),(5,'Cartagena',1);
/*!40000 ALTER TABLE `viajes_destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_detallereserva`
--

LOCK TABLES `viajes_detallereserva` WRITE;
/*!40000 ALTER TABLE `viajes_detallereserva` DISABLE KEYS */;
INSERT INTO `viajes_detallereserva` VALUES (1,1,2,0,NULL,1,1,1,1),(2,1,2,2,NULL,2,2,2,2),(3,2,3,2,NULL,3,3,3,3),(4,2,4,0,NULL,3,4,4,4),(5,1,2,0,NULL,2,1,5,5);
/*!40000 ALTER TABLE `viajes_detallereserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_hospedaje`
--

LOCK TABLES `viajes_hospedaje` WRITE;
/*!40000 ALTER TABLE `viajes_hospedaje` DISABLE KEYS */;
INSERT INTO `viajes_hospedaje` VALUES (1,'Hotel Dorado Plaza c','cra 9 # 31-72 centro','lamejor@hotmail.com','hotel','Desayuno incluido',282353,1,'relative/path/to/upload/dorado_plaza_centro.jpg',5),(2,'Posada Turística Rocas De Cabo Marzo','0,6 km del centro','elmejor@hotmail.com','Posada','Posada Turística Rocas De Cabo Marzo está en Bahía Solano, a 17 min a pie de Playa de El Almejal',500000,1,'relative/path/to/upload/500531530.jpg',4),(3,'Hotel OBEGA PACIFIC','Barrio La Union, 276050 Nuquí, Colombia','correr@gmail.com','hotel','El Hotel OBEGA PACIFIC ofrece alojamiento en Nuquí. El establecimiento cuenta con recepción 24 horas',230000,1,'relative/path/to/upload/246570451.jpg',3),(4,'Studio Coliving Hotel','Av. Ricardo Arango y, Av. Federico Boyd','ejemplos@hotmail.com','hotel','El hotel ofrece habitaciones con aire acondicionado, escritorio, caja fuerte, TV de pantalla plana',6843480,1,'relative/path/to/upload/504329959.jpg',2),(5,'CASA DE CAMPO VILLA OLI','carrera 1 - calle 57 - La florida','estenoes@gmacil.com','Casa de Campo','CASA DE CAMPO VILLA OLI!! - Un paraiso natural en la ciudad, que cuenta con vistas al lago',10857000,1,'relative/path/to/upload/423861997.jpg',1);
/*!40000 ALTER TABLE `viajes_hospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_hospedajeacomodacion`
--

LOCK TABLES `viajes_hospedajeacomodacion` WRITE;
/*!40000 ALTER TABLE `viajes_hospedajeacomodacion` DISABLE KEYS */;
INSERT INTO `viajes_hospedajeacomodacion` VALUES (1,'Baja',500000,800000,'relative/path/to/upload/doble.jpg',2,1),(2,'Alta',1000000,1500000,'relative/path/to/upload/multiple.jpg',3,2),(3,'Baja',800000,1000000,'relative/path/to/upload/multiple_aVDrvox.jpg',3,3),(4,'Alta',10000000,10500000,'relative/path/to/upload/sencilla.jpg',1,4),(5,'Alta',2400000,3000000,'relative/path/to/upload/doble_g1ORQNE.jpg',2,5);
/*!40000 ALTER TABLE `viajes_hospedajeacomodacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_paquete`
--

LOCK TABLES `viajes_paquete` WRITE;
/*!40000 ALTER TABLE `viajes_paquete` DISABLE KEYS */;
INSERT INTO `viajes_paquete` VALUES (1,'Ciudad de Panamá-Mirador de Cristel','Disfruta de Ciudad de Panamá, un destino con muchos que ofrece a sus habitantes los atractivos turisticos y conozca el mirador de Cristal','2024-08-11','2024-10-19',3,'alojamiento por 3 noches en hotel seleccionado, habitación estándar, desayuno diario, cortesía café panameño','Tiquetes aereos e impuestos, tasas o contribuciones com IVA, tasa aeroportuaria, impuestos combustibles',10000000,'3 meses',1),(2,'Cartagena-Santo Manglar Life Wellness Spa Hotel','En Santo Manglar podrá disfrutar de bienestar, gastronomía y relajación, conectando con la esencia de lo natural y','2024-08-09','2025-01-09',4,'Traslados Aeropuesto-Hote-Aeropuerto en servicio privado (horario de 7am-6pm), alojamiento, alimentación desayuno americano servido en el restaurante Kibu de 7am a 10:00am, internet Wi-Fi','Tiquetes, tasa aeroportuaria, tarifa administrativa, registro',500000,'5 meses',1),(3,'Nuquí-Avistamiento de Ballenas','Experiencia Turística que se enfoca en el aprovechamiento de los recursos naturales, ecosistémicos y la cultura, donde realizamos diferentes actividades durante cuatro temporadas del año: Mar y Selva, Tradición gastronómica del Pacífico, Temporada de Ballenas y Temporada de Conservación','2024-08-13','2025-02-15',5,'Lancha Pangui-reserva Natural Selva Mojada-Pangui, 4 noches en habitaciones privadas en las playas privadas de Pangui, 4 almuerzos, 4 cenas y 4 desayunos, Cfpe y agua, recorrido por el Manglar','Transporte desde la ciudad de origen y regreso, tasa ingreso al turista, gastos personales',2385600,'6 meses',1),(4,'Hotel Playa de Oro-Temporada de Ballenas','Disfruta del avistamiento de ballenas Yurbartas en el Océano Pacífico Colombiano; Bahía Solano es uno de los lugares favoritos para tener esta experiencia en medio de pasajes y biodiversidad','2024-08-16','2024-11-15',4,'Traslados aeropuerto-hotel-aeropuerto en Bahía Solano, Recepción y manejo de equipaje, refrescos de bienvenida, alojamiento, desayuno,almuerzo y cena, 2 salidas al avistamiento de ballenas','Ingresos a las caminatas, registro de entrada en el hotel después de la hora prevista, tiquetes aéreos e impuesto, gastos personales',1489000,'4 meses',1),(5,'ROKATUR-Eje Cafetero Terrestre','Parque nacional Recuca, parque Nacional del Eje Cafetero, Valle del Cocora/Salento/Filandia','2024-08-11','2025-01-27',5,'Transporte en bus, alojamiento en acomodación múltiple, hotel con piscina, sendero ecológico, sala de juegos, entrada a los diferentes parques, tarjeta de asistencia médica','Comidas por carretera, almuerzos',9000000,'6 meses',1);
/*!40000 ALTER TABLE `viajes_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_paquetetour`
--

LOCK TABLES `viajes_paquetetour` WRITE;
/*!40000 ALTER TABLE `viajes_paquetetour` DISABLE KEYS */;
INSERT INTO `viajes_paquetetour` VALUES (1,1,4),(2,5,5),(3,2,1),(4,3,3),(5,4,2);
/*!40000 ALTER TABLE `viajes_paquetetour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_reserva`
--

LOCK TABLES `viajes_reserva` WRITE;
/*!40000 ALTER TABLE `viajes_reserva` DISABLE KEYS */;
INSERT INTO `viajes_reserva` VALUES (1,'2024-08-16','2024-08-30','2024-09-05',4,36000000,'Activo','Efectivo',1,1),(2,'2024-08-01','2024-09-12','2024-09-17',2,20000000,'Activo','PSE',1,2),(3,'2024-09-12','2024-11-14','2024-11-19',3,7156800,'Activo','Transacción',1,3),(4,'2024-08-09','2025-01-09','2025-01-13',1,3000000,'Activo','Efectivo',1,4),(5,'2024-08-14','2024-10-19','2024-10-24',5,2500000,'Activo','PSE',1,5);
/*!40000 ALTER TABLE `viajes_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajes_tour`
--

LOCK TABLES `viajes_tour` WRITE;
/*!40000 ALTER TABLE `viajes_tour` DISABLE KEYS */;
INSERT INTO `viajes_tour` VALUES (1,'Tour Cartagena','Ciudad de Cartagena y sus respectivas islas',997000,3,1,'relative/path/to/upload/dorado_plaza_centro_z1AVHlM.jpg',5),(2,'Tour Bahía Solano','Exploración cultural, viajes a través de paisajes naturales impresionantes',1000000,4,1,'relative/path/to/upload/bahia-solano-parque-utria.jpg',4),(3,'Tour Nuquí','Excursión a playas turisticas, disfrute del sol y del mar turquesa y actividades acuaticas',2000000,4,1,'relative/path/to/upload/Nuquí-9-600x400.jpg',3),(4,'Tour Panamá','Disfruta de Ciudad de Panamá, un destino con muchos que ofrece a sus habitantes los atractivos turisticos y conozca el mirador de Cristal',15000000,5,1,'relative/path/to/upload/203026_5f3d2c9cc0a0a.jpg',2),(5,'Tour Eje Cafetero','Parque nacional Recuca, parque Nacional del Eje Cafetero, Valle del Cocora/Salento/Filandia',10000000,3,1,'relative/path/to/upload/203026_5f3d2c9cc0a0a_uc9iZqV.jpg',1);
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

-- Dump completed on 2024-08-02 11:40:11
