-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: agencia
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `acomodacion`
--

DROP TABLE IF EXISTS `acomodacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acomodacion` (
  `id_acomodacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_acomodacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acomodacion`
--

LOCK TABLES `acomodacion` WRITE;
/*!40000 ALTER TABLE `acomodacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `acomodacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adicion`
--

DROP TABLE IF EXISTS `adicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adicion` (
  `id_adicion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `costo` float NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_adicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adicion`
--

LOCK TABLES `adicion` WRITE;
/*!40000 ALTER TABLE `adicion` DISABLE KEYS */;
/*!40000 ALTER TABLE `adicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add acomodacion',7,'add_acomodacion'),(26,'Can change acomodacion',7,'change_acomodacion'),(27,'Can delete acomodacion',7,'delete_acomodacion'),(28,'Can view acomodacion',7,'view_acomodacion'),(29,'Can add adicion',12,'add_adicion'),(30,'Can change adicion',12,'change_adicion'),(31,'Can delete adicion',12,'delete_adicion'),(32,'Can view adicion',12,'view_adicion'),(33,'Can add auth group',13,'add_authgroup'),(34,'Can change auth group',13,'change_authgroup'),(35,'Can delete auth group',13,'delete_authgroup'),(36,'Can view auth group',13,'view_authgroup'),(37,'Can add auth group permissions',14,'add_authgrouppermissions'),(38,'Can change auth group permissions',14,'change_authgrouppermissions'),(39,'Can delete auth group permissions',14,'delete_authgrouppermissions'),(40,'Can view auth group permissions',14,'view_authgrouppermissions'),(41,'Can add auth permission',15,'add_authpermission'),(42,'Can change auth permission',15,'change_authpermission'),(43,'Can delete auth permission',15,'delete_authpermission'),(44,'Can view auth permission',15,'view_authpermission'),(45,'Can add auth user',16,'add_authuser'),(46,'Can change auth user',16,'change_authuser'),(47,'Can delete auth user',16,'delete_authuser'),(48,'Can view auth user',16,'view_authuser'),(49,'Can add auth user groups',17,'add_authusergroups'),(50,'Can change auth user groups',17,'change_authusergroups'),(51,'Can delete auth user groups',17,'delete_authusergroups'),(52,'Can view auth user groups',17,'view_authusergroups'),(53,'Can add auth user user permissions',18,'add_authuseruserpermissions'),(54,'Can change auth user user permissions',18,'change_authuseruserpermissions'),(55,'Can delete auth user user permissions',18,'delete_authuseruserpermissions'),(56,'Can view auth user user permissions',18,'view_authuseruserpermissions'),(57,'Can add cliente',19,'add_cliente'),(58,'Can change cliente',19,'change_cliente'),(59,'Can delete cliente',19,'delete_cliente'),(60,'Can view cliente',19,'view_cliente'),(61,'Can add destino',8,'add_destino'),(62,'Can change destino',8,'change_destino'),(63,'Can delete destino',8,'delete_destino'),(64,'Can view destino',8,'view_destino'),(65,'Can add detalle reserva',20,'add_detallereserva'),(66,'Can change detalle reserva',20,'change_detallereserva'),(67,'Can delete detalle reserva',20,'delete_detallereserva'),(68,'Can view detalle reserva',20,'view_detallereserva'),(69,'Can add django admin log',21,'add_djangoadminlog'),(70,'Can change django admin log',21,'change_djangoadminlog'),(71,'Can delete django admin log',21,'delete_djangoadminlog'),(72,'Can view django admin log',21,'view_djangoadminlog'),(73,'Can add django content type',22,'add_djangocontenttype'),(74,'Can change django content type',22,'change_djangocontenttype'),(75,'Can delete django content type',22,'delete_djangocontenttype'),(76,'Can view django content type',22,'view_djangocontenttype'),(77,'Can add django migrations',23,'add_djangomigrations'),(78,'Can change django migrations',23,'change_djangomigrations'),(79,'Can delete django migrations',23,'delete_djangomigrations'),(80,'Can view django migrations',23,'view_djangomigrations'),(81,'Can add django session',24,'add_djangosession'),(82,'Can change django session',24,'change_djangosession'),(83,'Can delete django session',24,'delete_djangosession'),(84,'Can view django session',24,'view_djangosession'),(85,'Can add hospedaje',10,'add_hospedaje'),(86,'Can change hospedaje',10,'change_hospedaje'),(87,'Can delete hospedaje',10,'delete_hospedaje'),(88,'Can view hospedaje',10,'view_hospedaje'),(89,'Can add hospedaje acomodacion',9,'add_hospedajeacomodacion'),(90,'Can change hospedaje acomodacion',9,'change_hospedajeacomodacion'),(91,'Can delete hospedaje acomodacion',9,'delete_hospedajeacomodacion'),(92,'Can view hospedaje acomodacion',9,'view_hospedajeacomodacion'),(93,'Can add paquete',25,'add_paquete'),(94,'Can change paquete',25,'change_paquete'),(95,'Can delete paquete',25,'delete_paquete'),(96,'Can view paquete',25,'view_paquete'),(97,'Can add paquete tour',26,'add_paquetetour'),(98,'Can change paquete tour',26,'change_paquetetour'),(99,'Can delete paquete tour',26,'delete_paquetetour'),(100,'Can view paquete tour',26,'view_paquetetour'),(101,'Can add permiso',27,'add_permiso'),(102,'Can change permiso',27,'change_permiso'),(103,'Can delete permiso',27,'delete_permiso'),(104,'Can view permiso',27,'view_permiso'),(105,'Can add permiso usuario',28,'add_permisousuario'),(106,'Can change permiso usuario',28,'change_permisousuario'),(107,'Can delete permiso usuario',28,'delete_permisousuario'),(108,'Can view permiso usuario',28,'view_permisousuario'),(109,'Can add reserva',29,'add_reserva'),(110,'Can change reserva',29,'change_reserva'),(111,'Can delete reserva',29,'delete_reserva'),(112,'Can view reserva',29,'view_reserva'),(113,'Can add tour',30,'add_tour'),(114,'Can change tour',30,'change_tour'),(115,'Can delete tour',30,'delete_tour'),(116,'Can view tour',30,'view_tour'),(117,'Can add usuario',11,'add_usuario'),(118,'Can change usuario',11,'change_usuario'),(119,'Can delete usuario',11,'delete_usuario'),(120,'Can view usuario',11,'view_usuario');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$Jg43R4hVITpi5KzHocWbDM$hN9niWGNq+GRbDbI9BuLepQw2pbHlP8/jFx8o3py1zw=','2024-07-19 04:25:21.249975',1,'yusly','','','yuslyarboleda1@gmail.com',1,1,'2024-07-14 00:58:21.161200');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `tipo_doc` varchar(20) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `id_destino` int NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `documento` (`documento`),
  KEY `id_destino` (`id_destino`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_destino`) REFERENCES `destino` (`id_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destino`
--

DROP TABLE IF EXISTS `destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destino` (
  `id_destino` int NOT NULL AUTO_INCREMENT,
  `destino` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destino`
--

LOCK TABLES `destino` WRITE;
/*!40000 ALTER TABLE `destino` DISABLE KEYS */;
INSERT INTO `destino` VALUES (1,'Cartagena',1),(2,'Santa Marta',1),(3,'Quibdó',1),(4,'Tolú',1),(5,'Eje Cafetero',1);
/*!40000 ALTER TABLE `destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_reserva`
--

DROP TABLE IF EXISTS `detalle_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_reserva` (
  `id_detalle_reserva` int NOT NULL AUTO_INCREMENT,
  `id_reserva` int NOT NULL,
  `id_paquete_tour` int DEFAULT NULL,
  `id_acomodacion` int DEFAULT NULL,
  `id_adicion` int DEFAULT NULL,
  `habitaciones` int NOT NULL,
  `adulto` int NOT NULL,
  `infante` int NOT NULL,
  `comentarios` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_reserva`),
  KEY `id_reserva` (`id_reserva`),
  KEY `id_paquete_tour` (`id_paquete_tour`),
  KEY `id_acomodacion` (`id_acomodacion`),
  KEY `id_adicion` (`id_adicion`),
  CONSTRAINT `detalle_reserva_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`),
  CONSTRAINT `detalle_reserva_ibfk_2` FOREIGN KEY (`id_paquete_tour`) REFERENCES `paquete_tour` (`id_paquete_tour`),
  CONSTRAINT `detalle_reserva_ibfk_3` FOREIGN KEY (`id_acomodacion`) REFERENCES `acomodacion` (`id_acomodacion`),
  CONSTRAINT `detalle_reserva_ibfk_4` FOREIGN KEY (`id_adicion`) REFERENCES `adicion` (`id_adicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_reserva`
--

LOCK TABLES `detalle_reserva` WRITE;
/*!40000 ALTER TABLE `detalle_reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-07-19 04:25:45.707751','5','Destino object (5)',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'viajes','acomodacion'),(12,'viajes','adicion'),(13,'viajes','authgroup'),(14,'viajes','authgrouppermissions'),(15,'viajes','authpermission'),(16,'viajes','authuser'),(17,'viajes','authusergroups'),(18,'viajes','authuseruserpermissions'),(19,'viajes','cliente'),(8,'viajes','destino'),(20,'viajes','detallereserva'),(21,'viajes','djangoadminlog'),(22,'viajes','djangocontenttype'),(23,'viajes','djangomigrations'),(24,'viajes','djangosession'),(10,'viajes','hospedaje'),(9,'viajes','hospedajeacomodacion'),(25,'viajes','paquete'),(26,'viajes','paquetetour'),(27,'viajes','permiso'),(28,'viajes','permisousuario'),(29,'viajes','reserva'),(30,'viajes','tour'),(11,'viajes','usuario');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-14 00:41:35.213478'),(2,'auth','0001_initial','2024-07-14 00:41:35.995275'),(3,'admin','0001_initial','2024-07-14 00:41:36.179858'),(4,'admin','0002_logentry_remove_auto_add','2024-07-14 00:41:36.182856'),(5,'admin','0003_logentry_add_action_flag_choices','2024-07-14 00:41:36.225237'),(6,'contenttypes','0002_remove_content_type_name','2024-07-14 00:41:36.350036'),(7,'auth','0002_alter_permission_name_max_length','2024-07-14 00:41:36.416468'),(8,'auth','0003_alter_user_email_max_length','2024-07-14 00:41:36.467094'),(9,'auth','0004_alter_user_username_opts','2024-07-14 00:41:36.475427'),(10,'auth','0005_alter_user_last_login_null','2024-07-14 00:41:36.568613'),(11,'auth','0006_require_contenttypes_0002','2024-07-14 00:41:36.571606'),(12,'auth','0007_alter_validators_add_error_messages','2024-07-14 00:41:36.583494'),(13,'auth','0008_alter_user_username_max_length','2024-07-14 00:41:36.672119'),(14,'auth','0009_alter_user_last_name_max_length','2024-07-14 00:41:36.757368'),(15,'auth','0010_alter_group_name_max_length','2024-07-14 00:41:36.785404'),(16,'auth','0011_update_proxy_permissions','2024-07-14 00:41:36.797791'),(17,'auth','0012_alter_user_first_name_max_length','2024-07-14 00:41:36.884118'),(18,'sessions','0001_initial','2024-07-14 00:41:36.935207'),(19,'viajes','0001_initial','2024-07-19 04:24:27.282379');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('lz62s49t8l6bn68ix51jo3pkjyn6vnx7','.eJxVjEEOwiAQRe_C2hCYgUJduvcMBJhBqoYmpV0Z765NutDtf-_9lwhxW2vYOi9hInEWWpx-txTzg9sO6B7bbZZ5busyJbkr8qBdXmfi5-Vw_w5q7PVb2wKQqDjNbJXBHFUBKt4TlCGNAAqLUxyJskXNmB2OVhNoNxjI3qB4fwD15DfH:1sUfBJ:5znroiEZFAIXxStq1zqpI5N3_8qJ1VKmtVGUkDIhvlM','2024-08-02 04:25:21.258287');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedaje`
--

DROP TABLE IF EXISTS `hospedaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospedaje` (
  `id_hospedaje` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `tipo_hospedaje` varchar(30) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `tarifa_base` float NOT NULL,
  `id_destino` int NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `imagen` blob,
  PRIMARY KEY (`id_hospedaje`),
  KEY `id_destino` (`id_destino`),
  CONSTRAINT `hospedaje_ibfk_1` FOREIGN KEY (`id_destino`) REFERENCES `destino` (`id_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedaje`
--

LOCK TABLES `hospedaje` WRITE;
/*!40000 ALTER TABLE `hospedaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedaje_acomodacion`
--

DROP TABLE IF EXISTS `hospedaje_acomodacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospedaje_acomodacion` (
  `id_hospedaje_acomodacion` int NOT NULL AUTO_INCREMENT,
  `id_acomodacion` int NOT NULL,
  `id_hospedaje` int NOT NULL,
  `temporada` varchar(20) NOT NULL,
  `tarifa_agencia` float NOT NULL,
  `tarifa` float NOT NULL,
  `imagen` blob,
  PRIMARY KEY (`id_hospedaje_acomodacion`),
  KEY `id_acomodacion` (`id_acomodacion`),
  KEY `id_hospedaje` (`id_hospedaje`),
  CONSTRAINT `hospedaje_acomodacion_ibfk_1` FOREIGN KEY (`id_acomodacion`) REFERENCES `acomodacion` (`id_acomodacion`),
  CONSTRAINT `hospedaje_acomodacion_ibfk_2` FOREIGN KEY (`id_hospedaje`) REFERENCES `hospedaje` (`id_hospedaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedaje_acomodacion`
--

LOCK TABLES `hospedaje_acomodacion` WRITE;
/*!40000 ALTER TABLE `hospedaje_acomodacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospedaje_acomodacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete`
--

DROP TABLE IF EXISTS `paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquete` (
  `id_paquete` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `vigencia_inicio` date NOT NULL,
  `vigencia_fin` date NOT NULL,
  `noche` int NOT NULL,
  `incluye` varchar(200) NOT NULL,
  `no_incluye` varchar(200) NOT NULL,
  `costo` float NOT NULL,
  `disponibilidad` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_paquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete`
--

LOCK TABLES `paquete` WRITE;
/*!40000 ALTER TABLE `paquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete_tour`
--

DROP TABLE IF EXISTS `paquete_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquete_tour` (
  `id_paquete_tour` int NOT NULL AUTO_INCREMENT,
  `id_paquete` int NOT NULL,
  `id_tour` int NOT NULL,
  PRIMARY KEY (`id_paquete_tour`),
  KEY `id_paquete` (`id_paquete`),
  KEY `id_tour` (`id_tour`),
  CONSTRAINT `paquete_tour_ibfk_1` FOREIGN KEY (`id_paquete`) REFERENCES `paquete` (`id_paquete`),
  CONSTRAINT `paquete_tour_ibfk_2` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete_tour`
--

LOCK TABLES `paquete_tour` WRITE;
/*!40000 ALTER TABLE `paquete_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `paquete_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso` (
  `id_permiso` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso_usuario`
--

DROP TABLE IF EXISTS `permiso_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso_usuario` (
  `id_permiso_usuario` int NOT NULL AUTO_INCREMENT,
  `id_permiso` int NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_permiso_usuario`),
  KEY `id_permiso` (`id_permiso`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `permiso_usuario_ibfk_1` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`),
  CONSTRAINT `permiso_usuario_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso_usuario`
--

LOCK TABLES `permiso_usuario` WRITE;
/*!40000 ALTER TABLE `permiso_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `permiso_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `cantidad` int NOT NULL,
  `total` float NOT NULL,
  `estado_reserva` varchar(20) NOT NULL,
  `metodo_pago` varchar(20) NOT NULL,
  `id_usuario` int NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `id_tour` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `valor` float NOT NULL,
  `duracion` int NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `id_destino` int NOT NULL,
  `imagen` blob NOT NULL,
  PRIMARY KEY (`id_tour`),
  KEY `id_destino` (`id_destino`),
  CONSTRAINT `tour_ibfk_1` FOREIGN KEY (`id_destino`) REFERENCES `destino` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'Tour Islas del Rosario','4 Islas',210000,3,1,1,'');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `tipo_doc` varchar(20) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `sexo` int NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `rol` int NOT NULL,
  `login` varchar(30) NOT NULL,
  `clave` varchar(40) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ver_destino`
--

DROP TABLE IF EXISTS `ver_destino`;
/*!50001 DROP VIEW IF EXISTS `ver_destino`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ver_destino` AS SELECT 
 1 AS `destino`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ver_tour`
--

DROP TABLE IF EXISTS `ver_tour`;
/*!50001 DROP VIEW IF EXISTS `ver_tour`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ver_tour` AS SELECT 
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `valor`,
 1 AS `duracion`,
 1 AS `destino`,
 1 AS `imagen`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'agencia'
--
/*!50003 DROP PROCEDURE IF EXISTS `cons_destino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cons_destino`(in valor varchar(100))
BEGIN
SELECT id_destino, destino from destino WHERE destino LIKE CONCAT('%', valor, '%')  and estado='1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cons_tours` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cons_tours`(in valor varchar(50))
BEGIN
select t.nombre,t.descripcion, t.valor,t.duracion, t.imagen, d.destino from tour t inner join destino d on d.id_destino=t.id_destino where t.nombre like concat('%',valor,'%') || t.descripcion like concat('%',valor,'%') || t.valor like concat('%',valor,'%') || t.duracion like concat('%',valor,'%') ||d.destino like concat('%',valor,'%') and t.estado=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_destino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_destino`(in ciu varchar(200))
BEGIN
INSERT INTO destino (destino, estado) VALUES (ciu, '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_tur` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_tur`(in nom varchar(50), in des varchar(200),val float,dur int,dest int,in ima blob)
BEGIN
INSERT INTO tour (nombre, descripcion, valor, duracion, id_destino,imagen, estado) VALUES (nom,des,val,dur,dest, ima,'1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `ver_destino`
--

/*!50001 DROP VIEW IF EXISTS `ver_destino`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ver_destino` AS select `destino`.`destino` AS `destino` from `destino` where (`destino`.`estado` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ver_tour`
--

/*!50001 DROP VIEW IF EXISTS `ver_tour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ver_tour` AS select `t`.`nombre` AS `nombre`,`t`.`descripcion` AS `descripcion`,`t`.`valor` AS `valor`,`t`.`duracion` AS `duracion`,`d`.`destino` AS `destino`,`t`.`imagen` AS `imagen` from (`tour` `t` join `destino` `d` on((`t`.`id_destino` = `d`.`id_destino`))) where (`t`.`estado` = 1) */;
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

-- Dump completed on 2024-07-19 11:34:16
