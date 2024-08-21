-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: agencia
-- ------------------------------------------------------
-- Server version	9.0.0

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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add acomodacion',7,'add_acomodacion'),(26,'Can change acomodacion',7,'change_acomodacion'),(27,'Can delete acomodacion',7,'delete_acomodacion'),(28,'Can view acomodacion',7,'view_acomodacion'),(29,'Can add adicion',8,'add_adicion'),(30,'Can change adicion',8,'change_adicion'),(31,'Can delete adicion',8,'delete_adicion'),(32,'Can view adicion',8,'view_adicion'),(33,'Can add destino',9,'add_destino'),(34,'Can change destino',9,'change_destino'),(35,'Can delete destino',9,'delete_destino'),(36,'Can view destino',9,'view_destino'),(37,'Can add paquete',10,'add_paquete'),(38,'Can change paquete',10,'change_paquete'),(39,'Can delete paquete',10,'delete_paquete'),(40,'Can view paquete',10,'view_paquete'),(41,'Can add cliente',11,'add_cliente'),(42,'Can change cliente',11,'change_cliente'),(43,'Can delete cliente',11,'delete_cliente'),(44,'Can view cliente',11,'view_cliente'),(45,'Can add hospedaje',12,'add_hospedaje'),(46,'Can change hospedaje',12,'change_hospedaje'),(47,'Can delete hospedaje',12,'delete_hospedaje'),(48,'Can view hospedaje',12,'view_hospedaje'),(49,'Can add hospedaje acomodacion',13,'add_hospedajeacomodacion'),(50,'Can change hospedaje acomodacion',13,'change_hospedajeacomodacion'),(51,'Can delete hospedaje acomodacion',13,'delete_hospedajeacomodacion'),(52,'Can view hospedaje acomodacion',13,'view_hospedajeacomodacion'),(53,'Can add paquete tour',14,'add_paquetetour'),(54,'Can change paquete tour',14,'change_paquetetour'),(55,'Can delete paquete tour',14,'delete_paquetetour'),(56,'Can view paquete tour',14,'view_paquetetour'),(57,'Can add reserva',15,'add_reserva'),(58,'Can change reserva',15,'change_reserva'),(59,'Can delete reserva',15,'delete_reserva'),(60,'Can view reserva',15,'view_reserva'),(61,'Can add detalle reserva',16,'add_detallereserva'),(62,'Can change detalle reserva',16,'change_detallereserva'),(63,'Can delete detalle reserva',16,'delete_detallereserva'),(64,'Can view detalle reserva',16,'view_detallereserva'),(65,'Can add tour',17,'add_tour'),(66,'Can change tour',17,'change_tour'),(67,'Can delete tour',17,'delete_tour'),(68,'Can view tour',17,'view_tour');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$IUtyGolJH1Y7KUFYaNrn7G$YJi3twXdjamwtQZtR82cM9Na2sY92ph7zQjvGf2QCOU=','2024-07-31 13:54:21.256164',1,'admin','','','ejemplo@gmail.com',1,1,'2024-07-30 16:07:02.338338'),(2,'pbkdf2_sha256$720000$sO4Q2jGfJW1G1ltnKHlxw2$wwxdW+dkKM42QCTUDBxkYgDRs+zsVNTk6hZxokZuCns=',NULL,1,'Jean','','','example@gmail.com',1,1,'2024-08-02 14:02:56.994167'),(3,'pbkdf2_sha256$720000$fpKXe0pT0MfxBl2otfMQa5$ys06PTxzcjrlYrHsqsr1sdibh0TWMrdvBbyS3BeL9LA=',NULL,1,'Jhoan','','','jhoan@hotmail.com',1,1,'2024-08-02 14:05:20.039442');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-07-31 16:22:36.240330','1','Destino object (1)',1,'[{\"added\": {}}]',9,1),(2,'2024-07-31 16:22:41.038026','1','Cliente object (1)',1,'[{\"added\": {}}]',11,1),(3,'2024-07-31 16:24:51.073495','2','Cliente object (2)',1,'[{\"added\": {}}]',11,1),(4,'2024-07-31 16:25:41.489135','3','Cliente object (3)',1,'[{\"added\": {}}]',11,1),(5,'2024-07-31 16:26:34.023044','4','Cliente object (4)',1,'[{\"added\": {}}]',11,1),(6,'2024-07-31 16:27:47.609771','5','Cliente object (5)',1,'[{\"added\": {}}]',11,1),(7,'2024-07-31 16:48:49.770011','2','Destino object (2)',1,'[{\"added\": {}}]',9,1),(8,'2024-07-31 16:48:57.405496','3','Destino object (3)',1,'[{\"added\": {}}]',9,1),(9,'2024-07-31 16:49:03.670867','4','Destino object (4)',1,'[{\"added\": {}}]',9,1),(10,'2024-07-31 16:49:10.111601','5','Destino object (5)',1,'[{\"added\": {}}]',9,1),(11,'2024-07-31 16:49:42.204744','1','Acomodacion object (1)',1,'[{\"added\": {}}]',7,1),(12,'2024-07-31 16:49:48.473736','2','Acomodacion object (2)',1,'[{\"added\": {}}]',7,1),(13,'2024-07-31 16:50:40.271741','3','Acomodacion object (3)',1,'[{\"added\": {}}]',7,1),(14,'2024-07-31 16:50:48.154405','4','Acomodacion object (4)',1,'[{\"added\": {}}]',7,1),(15,'2024-07-31 16:50:57.380435','5','Acomodacion object (5)',1,'[{\"added\": {}}]',7,1),(16,'2024-07-31 16:54:34.042590','1','Adicion object (1)',1,'[{\"added\": {}}]',8,1),(17,'2024-07-31 16:55:03.028453','2','Adicion object (2)',1,'[{\"added\": {}}]',8,1),(18,'2024-08-01 14:06:35.749590','1','Acomodacion object (1)',2,'[{\"changed\": {\"fields\": [\"Nombre\", \"Descripcion\"]}}]',7,1),(19,'2024-08-01 14:06:38.867233','1','Acomodacion object (1)',2,'[]',7,1),(20,'2024-08-01 14:08:52.301097','1','Acomodacion object (1)',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',7,1),(21,'2024-08-01 14:10:11.177867','1','Acomodacion object (1)',2,'[]',7,1),(22,'2024-08-01 14:13:38.451605','2','Acomodacion object (2)',2,'[{\"changed\": {\"fields\": [\"Nombre\", \"Descripcion\"]}}]',7,1),(23,'2024-08-01 14:13:58.755888','1','Acomodacion object (1)',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',7,1),(24,'2024-08-01 14:14:29.469219','3','Acomodacion object (3)',2,'[{\"changed\": {\"fields\": [\"Nombre\", \"Descripcion\"]}}]',7,1),(25,'2024-08-01 14:14:33.324684','3','Acomodacion object (3)',2,'[]',7,1),(26,'2024-08-01 14:15:16.586969','4','Acomodacion object (4)',2,'[{\"changed\": {\"fields\": [\"Nombre\", \"Descripcion\"]}}]',7,1),(27,'2024-08-01 14:17:38.757296','5','Acomodacion object (5)',2,'[{\"changed\": {\"fields\": [\"Nombre\", \"Descripcion\"]}}]',7,1),(28,'2024-08-01 14:21:35.974475','1','Adicion object (1)',2,'[{\"changed\": {\"fields\": [\"Nombre\", \"Descripcion\", \"Costo\"]}}]',8,1),(29,'2024-08-01 14:24:20.598941','2','Adicion object (2)',2,'[{\"changed\": {\"fields\": [\"Nombre\", \"Descripcion\", \"Costo\"]}}]',8,1),(30,'2024-08-01 14:28:37.440002','3','Adicion object (3)',1,'[{\"added\": {}}]',8,1),(31,'2024-08-01 14:29:38.755619','4','Adicion object (4)',1,'[{\"added\": {}}]',8,1),(32,'2024-08-01 14:31:37.454604','5','Adicion object (5)',1,'[{\"added\": {}}]',8,1),(33,'2024-08-01 15:16:08.681186','1','Adicion object (1)',2,'[]',8,1),(34,'2024-08-01 15:16:13.037677','2','Adicion object (2)',2,'[]',8,1),(35,'2024-08-01 15:16:17.678320','3','Adicion object (3)',2,'[]',8,1),(36,'2024-08-01 15:16:21.673752','4','Adicion object (4)',2,'[]',8,1),(37,'2024-08-01 15:16:25.665087','5','Adicion object (5)',2,'[]',8,1),(38,'2024-08-01 15:16:31.258663','1','Adicion object (1)',2,'[]',8,1),(39,'2024-08-01 15:22:21.204455','1','Reserva object (1)',1,'[{\"added\": {}}]',15,1),(40,'2024-08-01 15:29:11.132611','1','Hospedaje object (1)',1,'[{\"added\": {}}]',12,1),(41,'2024-08-01 15:30:43.198789','2','Hospedaje object (2)',1,'[{\"added\": {}}]',12,1),(42,'2024-08-01 15:32:16.278921','3','Hospedaje object (3)',1,'[{\"added\": {}}]',12,1),(43,'2024-08-01 15:34:19.711387','4','Hospedaje object (4)',1,'[{\"added\": {}}]',12,1),(44,'2024-08-01 15:35:17.567887','5','Hospedaje object (5)',1,'[{\"added\": {}}]',12,1),(45,'2024-08-01 16:09:25.462302','1','Paquete object (1)',1,'[{\"added\": {}}]',10,1),(46,'2024-08-02 15:40:15.468531','1','Reserva object (1)',2,'[]',15,1),(47,'2024-08-02 15:40:43.704314','2','Reserva object (2)',1,'[{\"added\": {}}]',15,1),(48,'2024-08-02 15:42:54.157218','3','Reserva object (3)',1,'[{\"added\": {}}]',15,1),(49,'2024-08-02 15:43:21.012150','4','Reserva object (4)',1,'[{\"added\": {}}]',15,1),(50,'2024-08-02 15:43:46.350292','5','Reserva object (5)',1,'[{\"added\": {}}]',15,1),(51,'2024-08-02 15:46:10.028856','5','Hospedaje object (5)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(52,'2024-08-02 15:46:16.555016','5','Hospedaje object (5)',2,'[]',12,1),(53,'2024-08-02 15:46:21.444000','4','Hospedaje object (4)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(54,'2024-08-02 15:46:26.664696','3','Hospedaje object (3)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(55,'2024-08-02 15:46:33.971526','2','Hospedaje object (2)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(56,'2024-08-02 15:46:40.467876','1','Hospedaje object (1)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(57,'2024-08-02 15:50:14.210886','1','Hospedaje object (1)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(58,'2024-08-02 15:50:26.924826','2','Hospedaje object (2)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(59,'2024-08-02 15:50:34.409185','3','Hospedaje object (3)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(60,'2024-08-02 15:50:40.821077','4','Hospedaje object (4)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(61,'2024-08-02 15:50:46.304995','5','Hospedaje object (5)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(62,'2024-08-02 16:09:40.013249','1','Tour object (1)',1,'[{\"added\": {}}]',17,1),(63,'2024-08-02 16:12:39.070224','2','Tour object (2)',1,'[{\"added\": {}}]',17,1),(64,'2024-08-02 16:18:06.756501','3','Tour object (3)',1,'[{\"added\": {}}]',17,1),(65,'2024-08-02 16:21:24.448211','4','Tour object (4)',1,'[{\"added\": {}}]',17,1),(66,'2024-08-02 16:24:21.319882','5','Tour object (5)',1,'[{\"added\": {}}]',17,1),(67,'2024-08-02 16:31:49.782745','2','Paquete object (2)',1,'[{\"added\": {}}]',10,1),(68,'2024-08-02 16:35:10.932807','3','Paquete object (3)',1,'[{\"added\": {}}]',10,1),(69,'2024-08-02 16:37:33.892510','4','Paquete object (4)',1,'[{\"added\": {}}]',10,1),(70,'2024-08-02 16:38:48.753470','1','Paquete object (1)',2,'[{\"changed\": {\"fields\": [\"Disponibilidad\"]}}]',10,1),(71,'2024-08-02 16:39:01.965061','2','Paquete object (2)',2,'[{\"changed\": {\"fields\": [\"Disponibilidad\"]}}]',10,1),(72,'2024-08-02 16:39:15.846145','3','Paquete object (3)',2,'[{\"changed\": {\"fields\": [\"Disponibilidad\"]}}]',10,1),(73,'2024-08-02 16:43:36.483869','5','Paquete object (5)',1,'[{\"added\": {}}]',10,1),(74,'2024-08-02 16:43:55.671547','1','PaqueteTour object (1)',1,'[{\"added\": {}}]',14,1),(75,'2024-08-02 16:44:01.968854','2','PaqueteTour object (2)',1,'[{\"added\": {}}]',14,1),(76,'2024-08-02 16:44:06.409151','3','PaqueteTour object (3)',1,'[{\"added\": {}}]',14,1),(77,'2024-08-02 16:44:09.585201','4','PaqueteTour object (4)',1,'[{\"added\": {}}]',14,1),(78,'2024-08-02 16:44:13.002221','5','PaqueteTour object (5)',1,'[{\"added\": {}}]',14,1),(79,'2024-08-05 13:24:55.896097','1','DetalleReserva object (1)',1,'[{\"added\": {}}]',16,1),(80,'2024-08-05 13:25:11.896978','2','DetalleReserva object (2)',1,'[{\"added\": {}}]',16,1),(81,'2024-08-05 13:25:29.471215','3','DetalleReserva object (3)',1,'[{\"added\": {}}]',16,1),(82,'2024-08-05 13:25:46.308536','4','DetalleReserva object (4)',1,'[{\"added\": {}}]',16,1),(83,'2024-08-05 13:26:04.372338','5','DetalleReserva object (5)',1,'[{\"added\": {}}]',16,1),(84,'2024-08-05 13:30:52.686946','1','HospedajeAcomodacion object (1)',1,'[{\"added\": {}}]',13,1),(85,'2024-08-05 13:32:56.673531','2','HospedajeAcomodacion object (2)',1,'[{\"added\": {}}]',13,1),(86,'2024-08-05 13:33:45.417210','3','HospedajeAcomodacion object (3)',1,'[{\"added\": {}}]',13,1),(87,'2024-08-05 13:34:54.821799','4','HospedajeAcomodacion object (4)',1,'[{\"added\": {}}]',13,1),(88,'2024-08-05 13:35:31.712191','5','HospedajeAcomodacion object (5)',1,'[{\"added\": {}}]',13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'viajes','acomodacion'),(8,'viajes','adicion'),(11,'viajes','cliente'),(9,'viajes','destino'),(16,'viajes','detallereserva'),(12,'viajes','hospedaje'),(13,'viajes','hospedajeacomodacion'),(10,'viajes','paquete'),(14,'viajes','paquetetour'),(15,'viajes','reserva'),(17,'viajes','tour');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-30 15:52:27.140515'),(2,'auth','0001_initial','2024-07-30 15:52:27.841594'),(3,'admin','0001_initial','2024-07-30 15:52:27.984555'),(4,'admin','0002_logentry_remove_auto_add','2024-07-30 15:52:28.000207'),(5,'admin','0003_logentry_add_action_flag_choices','2024-07-30 15:52:28.022608'),(6,'contenttypes','0002_remove_content_type_name','2024-07-30 15:52:28.127591'),(7,'auth','0002_alter_permission_name_max_length','2024-07-30 15:52:28.211187'),(8,'auth','0003_alter_user_email_max_length','2024-07-30 15:52:28.243628'),(9,'auth','0004_alter_user_username_opts','2024-07-30 15:52:28.261338'),(10,'auth','0005_alter_user_last_login_null','2024-07-30 15:52:28.374271'),(11,'auth','0006_require_contenttypes_0002','2024-07-30 15:52:28.376270'),(12,'auth','0007_alter_validators_add_error_messages','2024-07-30 15:52:28.389313'),(13,'auth','0008_alter_user_username_max_length','2024-07-30 15:52:28.472445'),(14,'auth','0009_alter_user_last_name_max_length','2024-07-30 15:52:28.566794'),(15,'auth','0010_alter_group_name_max_length','2024-07-30 15:52:28.602160'),(16,'auth','0011_update_proxy_permissions','2024-07-30 15:52:28.613833'),(17,'auth','0012_alter_user_first_name_max_length','2024-07-30 15:52:28.711688'),(18,'sessions','0001_initial','2024-07-30 15:52:28.750968'),(19,'viajes','0001_initial','2024-07-30 15:52:29.799484'),(20,'viajes','0002_paquetetour_id_hospedaje_acomodacion_and_more','2024-08-13 15:25:10.853773'),(21,'viajes','0003_hospedaje_telefono','2024-08-13 15:25:10.985086');
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
INSERT INTO `django_session` VALUES ('m97rreu4tt6l3ebxq266x2q58btfis2p','.eJxVjEEOwiAQRe_C2pCZUgRcuu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERKE6_W6D44LqDdKd6azK2ui5zkLsiD9rl1BI_r4f7d1Col299DmhdIIiaLTsgrTFpg2BJqwwMeWSklNPoHEFwyGggII88ZINKDeL9AeRVN74:1sZ9mX:LQukJi0ENmmPsrNeJwrm_Q9n0qhL5r3E0WWLpiC8ZxI','2024-08-14 13:54:21.256164');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes_acomodacion`
--

DROP TABLE IF EXISTS `viajes_acomodacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes_acomodacion` (
  `id_acomodacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `descripcion` longtext NOT NULL,
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
  `descripcion` longtext NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_destino`
--

LOCK TABLES `viajes_destino` WRITE;
/*!40000 ALTER TABLE `viajes_destino` DISABLE KEYS */;
INSERT INTO `viajes_destino` VALUES (1,'Quibdo',1),(2,'Bogota',1),(3,'Bucaramanga',1),(4,'Boyaca',1),(5,'Pereira',1),(6,'Johan',1);
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
  `descripcion` longtext NOT NULL,
  `tarifa_base` double NOT NULL,
  `estado` int NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `id_destino` int NOT NULL,
  `telefono` varchar(50) NOT NULL,
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
INSERT INTO `viajes_hospedaje` VALUES (1,'Hotel Plaza','Av. Libertad 12, Lima','Hotelplaza@gmail.com','Hotel 4 Estrellas','Ubicado en el corazon de la ciudad, cuenta con habitaciones confortables para aquellos viajeros',606,1,'',1,'1'),(2,'Hostal Los Andes','Jiron de la union 456, Cusco','Andes@gmail.com','Hostal','Hotel acogedor que ofrece habitaciones sencillas pero confortables y un ambiente familiar',121000,1,'',2,'1'),(3,'Departamentos Amueblados MiraFlores','Av. Larco 789, Miraflores','MiraFlores@gmail.com','Departamento Amueblado','Excelente opcion para aquellos que buscan mas espacio y comodidad,',323000,1,'',5,'1'),(4,'Eco Lodge Amazonas','Km 10 Carretera a la Selva, Puerto Maldonado','Ecolodge@gmail.com','Ecolodge','Es un Lodge ubicado en la selva amazonica',242,1,'',3,'1'),(5,'Camping Los Alamos','Km 20 carretera a la costa, Mancora','Alamos@gmail.com','Camping','Ubicado en la playa, ofrece parcelas para tiendas de campaña y caravanillas',40,1,'',2,'1');
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
  `imagen` varchar(100) DEFAULT NULL,
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
  `descripcion` longtext NOT NULL,
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
  `id_hospedaje_acomodacion` int NOT NULL,
  PRIMARY KEY (`id_paquete_tour`),
  KEY `viajes_paquetetour_id_tour_32cc1204_fk_viajes_tour_id_tour` (`id_tour`),
  KEY `viajes_paquetetour_id_paquete_11483777_fk_viajes_pa` (`id_paquete`),
  KEY `viajes_paquetetour_id_hospedaje_acomoda_e646b972_fk_viajes_ho` (`id_hospedaje_acomodacion`),
  CONSTRAINT `viajes_paquetetour_id_hospedaje_acomoda_e646b972_fk_viajes_ho` FOREIGN KEY (`id_hospedaje_acomodacion`) REFERENCES `viajes_hospedajeacomodacion` (`id_hospedaje_acomodacion`),
  CONSTRAINT `viajes_paquetetour_id_paquete_11483777_fk_viajes_pa` FOREIGN KEY (`id_paquete`) REFERENCES `viajes_paquete` (`id_paquete`),
  CONSTRAINT `viajes_paquetetour_id_tour_32cc1204_fk_viajes_tour_id_tour` FOREIGN KEY (`id_tour`) REFERENCES `viajes_tour` (`id_tour`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes_paquetetour`
--

LOCK TABLES `viajes_paquetetour` WRITE;
/*!40000 ALTER TABLE `viajes_paquetetour` DISABLE KEYS */;
INSERT INTO `viajes_paquetetour` VALUES (1,1,1,1),(2,2,2,1),(3,3,3,1),(4,4,4,1),(5,5,5,1);
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
  `descripcion` longtext,
  `valor` double DEFAULT NULL,
  `duracion` int NOT NULL,
  `estado` int NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
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

--
-- Dumping routines for database 'agencia'
--
/*!50003 DROP PROCEDURE IF EXISTS `consultar_destino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_destino`(in valor int)
BEGIN
select viajes_paquetetour.id_paquete_tour 'ID_Paquete_Tour', concat(viajes_paquete.nombre ,'   ',viajes_tour.nombre, '   ', viajes_hospedaje.tipo_hospedaje, '   ', viajes_hospedaje.nombre, '   ') 'Informacion', viajes_paquete.descripcion 'Descripcion', viajes_paquete.vigencia_inicio 'Vigencia_Inicio', viajes_paquete.vigencia_fin 'Vigencia_Fin', viajes_paquete.noche 'Noches', viajes_paquete.noche + 1 'Dias',viajes_paquete.incluye 'Incluye', viajes_paquete.no_incluye  'No_Incluye', viajes_paquete.costo 'Costo', viajes_paquete.disponibilidad 'Disponibilidad', viajes_paquete.estado 'Estado', viajes_tour.nombre 'Nombre_Tour', viajes_tour.descripcion 'Tour_Descripcion', viajes_tour.valor 'Tour_Valor', viajes_tour.duracion'Tour_Duracion', viajes_tour.estado 'Estado_Tour', viajes_tour.imagen'Imagen_Tour', viajes_hospedaje.nombre 'Nombre_H', viajes_hospedaje.direccion'Direccion_H', viajes_hospedaje.correo'Correo_H',viajes_hospedaje.descripcion'Descripcion_Hospedaje',viajes_hospedaje.tarifa_base'Tarifa_Base_H', viajes_hospedaje.estado'Estado_Hospedaje',viajes_hospedaje.imagen'Imagen_Hospedaje',viajes_hospedaje.telefono'Telefono_Hospedaje',viajes_destino.destino'Destino_Del_Viaje',viajes_acomodacion.nombre'Nombre_Acomodacion',viajes_acomodacion.descripcion'Descripcion_Acomodacion',viajes_acomodacion.estado'Estado_Acomodacion' from viajes_paquetetour inner join viajes_paquete on viajes_paquete.id_paquete = viajes_paquetetour.id_paquete inner join viajes_tour on viajes_tour.id_tour = viajes_paquetetour.id_tour inner join viajes_hospedajeacomodacion on viajes_paquetetour.id_hospedaje_acomodacion = viajes_hospedajeacomodacion.id_hospedaje_acomodacion inner join viajes_hospedaje on viajes_hospedaje.id_hospedaje = viajes_hospedajeacomodacion.id_hospedaje inner join viajes_destino on viajes_destino.id_destino = viajes_tour.id_destino inner join viajes_acomodacion on viajes_acomodacion.id_acomodacion = viajes_hospedajeacomodacion.id_acomodacion WHERE viajes_paquetetour.id_paquete_tour LIKE CONCAT('%', valor, '%')  and viajes_tour.estado='1';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_detallepaquetetour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_detallepaquetetour`(in valor int)
BEGIN
select viajes_paquetetour.id_paquete_tour 'ID_Paquete_Tour', concat(viajes_paquete.nombre ,'   ',viajes_tour.nombre, '   ', viajes_hospedaje.tipo_hospedaje, '   ', viajes_hospedaje.nombre, '   ') 'Informacion', viajes_paquete.descripcion 'Descripcion', viajes_paquete.vigencia_inicio 'Vigencia_Inicio', viajes_paquete.vigencia_fin 'Vigencia_Fin', viajes_paquete.noche 'Noches', viajes_paquete.noche + 1 'Dias',viajes_paquete.incluye 'Incluye', viajes_paquete.no_incluye  'No_Incluye', viajes_paquete.costo 'Costo', viajes_paquete.disponibilidad 'Disponibilidad', viajes_paquete.estado 'Estado', viajes_tour.nombre 'Nombre_Tour', viajes_tour.descripcion 'Tour_Descripcion', viajes_tour.valor 'Tour_Valor', viajes_tour.duracion'Tour_Duracion', viajes_tour.estado 'Estado_Tour', viajes_tour.imagen'Imagen_Tour', viajes_hospedaje.nombre 'Nombre_H', viajes_hospedaje.direccion'Direccion_H', viajes_hospedaje.correo'Correo_H',viajes_hospedaje.descripcion'Descripcion_Hospedaje',viajes_hospedaje.tarifa_base'Tarifa_Base_H', viajes_hospedaje.estado'Estado_Hospedaje',viajes_hospedaje.imagen'Imagen_Hospedaje',viajes_hospedaje.telefono'Telefono_Hospedaje',viajes_destino.destino'Destino_Del_Viaje',viajes_acomodacion.nombre'Nombre_Acomodacion',viajes_acomodacion.descripcion'Descripcion_Acomodacion',viajes_acomodacion.estado'Estado_Acomodacion' from viajes_paquetetour inner join viajes_paquete on viajes_paquete.id_paquete = viajes_paquetetour.id_paquete inner join viajes_tour on viajes_tour.id_tour = viajes_paquetetour.id_tour inner join viajes_hospedajeacomodacion on viajes_paquetetour.id_hospedaje_acomodacion = viajes_hospedajeacomodacion.id_hospedaje_acomodacion inner join viajes_hospedaje on viajes_hospedaje.id_hospedaje = viajes_hospedajeacomodacion.id_hospedaje inner join viajes_destino on viajes_destino.id_destino = viajes_tour.id_destino inner join viajes_acomodacion on viajes_acomodacion.id_acomodacion = viajes_hospedajeacomodacion.id_acomodacion WHERE viajes_paquetetour.id_paquete_tour LIKE CONCAT('%', valor, '%')  and viajes_tour.estado='1';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_paquete_tour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_paquete_tour`(in valor varchar(100))
BEGIN
select viajes_paquetetour.id_paquete_tour 'ID_Paquete_Tour', concat(viajes_paquete.nombre ,'   ',viajes_tour.nombre, '   ', viajes_hospedaje.tipo_hospedaje, '   ', viajes_hospedaje.nombre, '   ') 'Informacion', viajes_paquete.descripcion 'Descripcion', viajes_paquete.vigencia_inicio 'Vigencia_Inicio', viajes_paquete.vigencia_fin 'Vigencia_Fin', viajes_paquete.noche 'Noches', viajes_paquete.noche + 1 'Dias',viajes_paquete.incluye 'Incluye', viajes_paquete.no_incluye  'No_Incluye', viajes_paquete.costo 'Costo', viajes_paquete.disponibilidad 'Disponibilidad', viajes_paquete.estado 'Estado', viajes_tour.nombre 'Nombre_Tour', viajes_tour.descripcion 'Tour_Descripcion', viajes_tour.valor 'Tour_Valor', viajes_tour.duracion'Tour_Duracion', viajes_tour.estado 'Estado_Tour', viajes_tour.imagen'Imagen_Tour', viajes_hospedaje.nombre 'Nombre_H', viajes_hospedaje.direccion'Direccion_H', viajes_hospedaje.correo'Correo_H',viajes_hospedaje.descripcion'Descripcion_Hospedaje',viajes_hospedaje.tarifa_base'Tarifa_Base_H', viajes_hospedaje.estado'Estado_Hospedaje',viajes_hospedaje.imagen'Imagen_Hospedaje',viajes_hospedaje.telefono'Telefono_Hospedaje',viajes_destino.destino'Destino_Del_Viaje',viajes_acomodacion.nombre'Nombre_Acomodacion',viajes_acomodacion.descripcion'Descripcion_Acomodacion',viajes_acomodacion.estado'Estado_Acomodacion' from viajes_paquetetour inner join viajes_paquete on viajes_paquete.id_paquete = viajes_paquetetour.id_paquete inner join viajes_tour on viajes_tour.id_tour = viajes_paquetetour.id_tour inner join viajes_hospedajeacomodacion on viajes_paquetetour.id_hospedaje_acomodacion = viajes_hospedajeacomodacion.id_hospedaje_acomodacion inner join viajes_hospedaje on viajes_hospedaje.id_hospedaje = viajes_hospedajeacomodacion.id_hospedaje inner join viajes_destino on viajes_destino.id_destino = viajes_tour.id_destino inner join viajes_acomodacion on viajes_acomodacion.id_acomodacion = viajes_hospedajeacomodacion.id_acomodacion WHERE viajes_destino.destino LIKE CONCAT('%', valor, '%')  and viajes_destino.estado='1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_viajes_destino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_viajes_destino`(in valor varchar(100))
BEGIN
SELECT id_destino, destino from viajes_destino WHERE destino LIKE CONCAT('%', valor, '%')  and estado='1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-16 10:40:09
