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
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add acomodacion',7,'add_acomodacion'),(26,'Can change acomodacion',7,'change_acomodacion'),(27,'Can delete acomodacion',7,'delete_acomodacion'),(28,'Can view acomodacion',7,'view_acomodacion'),(29,'Can add hospedaje acomodacion',8,'add_hospedajeacomodacion'),(30,'Can change hospedaje acomodacion',8,'change_hospedajeacomodacion'),(31,'Can delete hospedaje acomodacion',8,'delete_hospedajeacomodacion'),(32,'Can view hospedaje acomodacion',8,'view_hospedajeacomodacion'),(33,'Can add adicion',9,'add_adicion'),(34,'Can change adicion',9,'change_adicion'),(35,'Can delete adicion',9,'delete_adicion'),(36,'Can view adicion',9,'view_adicion'),(37,'Can add destino',10,'add_destino'),(38,'Can change destino',10,'change_destino'),(39,'Can delete destino',10,'delete_destino'),(40,'Can view destino',10,'view_destino'),(41,'Can add paquete',11,'add_paquete'),(42,'Can change paquete',11,'change_paquete'),(43,'Can delete paquete',11,'delete_paquete'),(44,'Can view paquete',11,'view_paquete'),(45,'Can add tour',12,'add_tour'),(46,'Can change tour',12,'change_tour'),(47,'Can delete tour',12,'delete_tour'),(48,'Can view tour',12,'view_tour'),(49,'Can add paquete tour',13,'add_paquetetour'),(50,'Can change paquete tour',13,'change_paquetetour'),(51,'Can delete paquete tour',13,'delete_paquetetour'),(52,'Can view paquete tour',13,'view_paquetetour'),(53,'Can add reserva',14,'add_reserva'),(54,'Can change reserva',14,'change_reserva'),(55,'Can delete reserva',14,'delete_reserva'),(56,'Can view reserva',14,'view_reserva'),(57,'Can add hospedaje',15,'add_hospedaje'),(58,'Can change hospedaje',15,'change_hospedaje'),(59,'Can delete hospedaje',15,'delete_hospedaje'),(60,'Can view hospedaje',15,'view_hospedaje'),(61,'Can add cliente',16,'add_cliente'),(62,'Can change cliente',16,'change_cliente'),(63,'Can delete cliente',16,'delete_cliente'),(64,'Can view cliente',16,'view_cliente'),(65,'Can add detalle reserva',17,'add_detallereserva'),(66,'Can change detalle reserva',17,'change_detallereserva'),(67,'Can delete detalle reserva',17,'delete_detallereserva'),(68,'Can view detalle reserva',17,'view_detallereserva');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$a3qdUqq4juYpLwzdxJ5Qgz$ZKzInxYyMtBfCGgfypyfNRXWhJ6OGWpdhDWEh2rtxVI=','2024-08-02 13:51:12.994094',1,'admin','','','ejemplo@gmail.com',1,1,'2024-07-30 16:05:54.743151'),(2,'pbkdf2_sha256$720000$IenMDXEUKlpES3NeBs4iMJ$mmrSL8JDq8qKTHQYoOq1vNrcCjdNpP5Sg79N0dwaEKY=',NULL,1,'WendyRivas','','','wendyrivascaraballo@hotmail.com',1,1,'2024-08-02 13:58:06.735460');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-07-31 16:07:08.636478','1','Destino object (1)',1,'[{\"added\": {}}]',10,1),(2,'2024-07-31 16:07:16.515792','1','Cliente object (1)',1,'[{\"added\": {}}]',16,1),(3,'2024-07-31 16:08:06.411047','2','Destino object (2)',1,'[{\"added\": {}}]',10,1),(4,'2024-07-31 16:08:10.553404','2','Cliente object (2)',1,'[{\"added\": {}}]',16,1),(5,'2024-07-31 16:12:58.778066','3','Destino object (3)',1,'[{\"added\": {}}]',10,1),(6,'2024-07-31 16:39:37.605217','3','Cliente object (3)',1,'[{\"added\": {}}]',16,1),(7,'2024-07-31 16:40:42.810901','4','Destino object (4)',1,'[{\"added\": {}}]',10,1),(8,'2024-07-31 16:40:49.033057','4','Cliente object (4)',1,'[{\"added\": {}}]',16,1),(9,'2024-07-31 16:46:21.596811','5','Cliente object (5)',1,'[{\"added\": {}}]',16,1),(10,'2024-07-31 16:46:50.964993','5','Destino object (5)',1,'[{\"added\": {}}]',10,1),(11,'2024-08-01 14:07:36.114628','1','Paquete object (1)',1,'[{\"added\": {}}]',11,1),(12,'2024-08-01 14:10:18.307105','2','Destino object (2)',2,'[{\"changed\": {\"fields\": [\"Destino\"]}}]',10,1),(13,'2024-08-01 14:28:52.751993','2','Paquete object (2)',1,'[{\"added\": {}}]',11,1),(14,'2024-08-01 15:14:47.883065','3','Paquete object (3)',1,'[{\"added\": {}}]',11,1),(15,'2024-08-01 15:22:52.347942','4','Paquete object (4)',1,'[{\"added\": {}}]',11,1),(16,'2024-08-01 15:26:52.027896','5','Paquete object (5)',1,'[{\"added\": {}}]',11,1),(17,'2024-08-01 15:26:52.088967','6','Paquete object (6)',1,'[{\"added\": {}}]',11,1),(18,'2024-08-01 15:27:13.919394','6','Paquete object (6)',3,'',11,1),(19,'2024-08-01 15:28:01.002820','1','Acomodacion object (1)',1,'[{\"added\": {}}]',7,1),(20,'2024-08-01 15:28:17.203663','2','Acomodacion object (2)',1,'[{\"added\": {}}]',7,1),(21,'2024-08-01 15:28:42.468981','3','Acomodacion object (3)',1,'[{\"added\": {}}]',7,1),(22,'2024-08-01 15:29:00.675236','2','Acomodacion object (2)',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',7,1),(23,'2024-08-01 15:30:57.589011','1','Adicion object (1)',1,'[{\"added\": {}}]',9,1),(24,'2024-08-01 15:32:31.418757','2','Adicion object (2)',1,'[{\"added\": {}}]',9,1),(25,'2024-08-01 15:33:38.388497','3','Adicion object (3)',1,'[{\"added\": {}}]',9,1),(26,'2024-08-01 15:34:25.227000','4','Adicion object (4)',1,'[{\"added\": {}}]',9,1),(27,'2024-08-01 15:35:55.552763','5','Adicion object (5)',1,'[{\"added\": {}}]',9,1),(28,'2024-08-01 15:44:49.187866','1','Hospedaje object (1)',1,'[{\"added\": {}}]',15,1),(29,'2024-08-01 15:52:44.873435','2','Hospedaje object (2)',1,'[{\"added\": {}}]',15,1),(30,'2024-08-01 15:55:05.612301','3','Hospedaje object (3)',1,'[{\"added\": {}}]',15,1),(31,'2024-08-01 15:57:34.665695','4','Hospedaje object (4)',1,'[{\"added\": {}}]',15,1),(32,'2024-08-01 16:00:53.319764','5','Hospedaje object (5)',1,'[{\"added\": {}}]',15,1),(33,'2024-08-01 16:00:59.583148','1','Destino object (1)',2,'[{\"changed\": {\"fields\": [\"Destino\"]}}]',10,1),(34,'2024-08-01 16:02:04.712266','1','HospedajeAcomodacion object (1)',1,'[{\"added\": {}}]',8,1),(35,'2024-08-01 16:02:34.495345','2','HospedajeAcomodacion object (2)',1,'[{\"added\": {}}]',8,1),(36,'2024-08-01 16:02:55.770008','3','HospedajeAcomodacion object (3)',1,'[{\"added\": {}}]',8,1),(37,'2024-08-01 16:03:37.441411','4','HospedajeAcomodacion object (4)',1,'[{\"added\": {}}]',8,1),(38,'2024-08-01 16:04:07.112866','5','HospedajeAcomodacion object (5)',1,'[{\"added\": {}}]',8,1),(39,'2024-08-01 16:24:27.183239','1','Tour object (1)',1,'[{\"added\": {}}]',12,1),(40,'2024-08-02 14:10:55.691633','5','Paquete object (5)',2,'[{\"changed\": {\"fields\": [\"Costo\"]}}]',11,1),(41,'2024-08-02 14:11:07.948169','1','Reserva object (1)',1,'[{\"added\": {}}]',14,1),(42,'2024-08-02 14:13:29.343694','1','Paquete object (1)',2,'[{\"changed\": {\"fields\": [\"Costo\"]}}]',11,1),(43,'2024-08-02 14:14:32.429547','2','Reserva object (2)',1,'[{\"added\": {}}]',14,1),(44,'2024-08-02 14:30:49.250863','3','Reserva object (3)',1,'[{\"added\": {}}]',14,1),(45,'2024-08-02 14:31:56.357979','4','Reserva object (4)',1,'[{\"added\": {}}]',14,1),(46,'2024-08-02 14:33:08.952660','5','Cliente object (5)',2,'[{\"changed\": {\"fields\": [\"Id destino\"]}}]',16,1),(47,'2024-08-02 14:35:26.770776','2','Paquete object (2)',2,'[{\"changed\": {\"fields\": [\"Costo\"]}}]',11,1),(48,'2024-08-02 14:36:45.417926','5','Reserva object (5)',1,'[{\"added\": {}}]',14,1),(49,'2024-08-02 15:49:44.507552','1','Hospedaje object (1)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',15,1),(50,'2024-08-02 15:50:25.700217','2','Hospedaje object (2)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',15,1),(51,'2024-08-02 15:51:21.319548','3','Hospedaje object (3)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',15,1),(52,'2024-08-02 15:52:17.291513','4','Hospedaje object (4)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',15,1),(53,'2024-08-02 15:53:01.203659','5','Hospedaje object (5)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',15,1),(54,'2024-08-02 15:57:35.220201','1','HospedajeAcomodacion object (1)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',8,1),(55,'2024-08-02 15:57:45.343178','2','HospedajeAcomodacion object (2)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',8,1),(56,'2024-08-02 15:57:53.954353','3','HospedajeAcomodacion object (3)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',8,1),(57,'2024-08-02 15:58:03.792115','4','HospedajeAcomodacion object (4)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',8,1),(58,'2024-08-02 15:58:12.466959','5','HospedajeAcomodacion object (5)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',8,1),(59,'2024-08-02 16:02:25.785346','1','Tour object (1)',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',12,1),(60,'2024-08-02 16:08:40.208445','2','Tour object (2)',1,'[{\"added\": {}}]',12,1),(61,'2024-08-02 16:11:10.944267','3','Tour object (3)',1,'[{\"added\": {}}]',12,1),(62,'2024-08-02 16:12:33.148941','4','Tour object (4)',1,'[{\"added\": {}}]',12,1),(63,'2024-08-02 16:14:50.675723','5','Tour object (5)',1,'[{\"added\": {}}]',12,1),(64,'2024-08-02 16:15:18.372884','1','PaqueteTour object (1)',1,'[{\"added\": {}}]',13,1),(65,'2024-08-02 16:15:26.857939','2','PaqueteTour object (2)',1,'[{\"added\": {}}]',13,1),(66,'2024-08-02 16:15:26.921945','3','PaqueteTour object (3)',1,'[{\"added\": {}}]',13,1),(67,'2024-08-02 16:15:40.222687','4','PaqueteTour object (4)',1,'[{\"added\": {}}]',13,1),(68,'2024-08-02 16:16:22.023429','5','PaqueteTour object (5)',1,'[{\"added\": {}}]',13,1),(69,'2024-08-02 16:16:30.599925','6','PaqueteTour object (6)',1,'[{\"added\": {}}]',13,1),(70,'2024-08-02 16:16:39.537308','6','PaqueteTour object (6)',3,'',13,1),(71,'2024-08-02 16:17:55.944500','2','PaqueteTour object (2)',2,'[{\"changed\": {\"fields\": [\"Id paquete\", \"Id tour\"]}}]',13,1),(72,'2024-08-02 16:18:42.353691','1','DetalleReserva object (1)',1,'[{\"added\": {}}]',17,1),(73,'2024-08-02 16:18:57.271936','2','DetalleReserva object (2)',1,'[{\"added\": {}}]',17,1),(74,'2024-08-02 16:19:11.591544','3','DetalleReserva object (3)',1,'[{\"added\": {}}]',17,1),(75,'2024-08-02 16:19:32.570561','4','DetalleReserva object (4)',1,'[{\"added\": {}}]',17,1),(76,'2024-08-02 16:19:51.402067','5','DetalleReserva object (5)',1,'[{\"added\": {}}]',17,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'viajes','acomodacion'),(9,'viajes','adicion'),(16,'viajes','cliente'),(10,'viajes','destino'),(17,'viajes','detallereserva'),(15,'viajes','hospedaje'),(8,'viajes','hospedajeacomodacion'),(11,'viajes','paquete'),(13,'viajes','paquetetour'),(14,'viajes','reserva'),(12,'viajes','tour');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-07-30 15:47:13.282569'),(2,'auth','0001_initial','2024-07-30 15:47:14.291347'),(3,'admin','0001_initial','2024-07-30 15:47:14.540790'),(4,'admin','0002_logentry_remove_auto_add','2024-07-30 15:47:14.556552'),(5,'admin','0003_logentry_add_action_flag_choices','2024-07-30 15:47:14.575456'),(6,'contenttypes','0002_remove_content_type_name','2024-07-30 15:47:14.716260'),(7,'auth','0002_alter_permission_name_max_length','2024-07-30 15:47:14.841174'),(8,'auth','0003_alter_user_email_max_length','2024-07-30 15:47:14.891345'),(9,'auth','0004_alter_user_username_opts','2024-07-30 15:47:14.909430'),(10,'auth','0005_alter_user_last_login_null','2024-07-30 15:47:15.043370'),(11,'auth','0006_require_contenttypes_0002','2024-07-30 15:47:15.046367'),(12,'auth','0007_alter_validators_add_error_messages','2024-07-30 15:47:15.060562'),(13,'auth','0008_alter_user_username_max_length','2024-07-30 15:47:15.173232'),(14,'auth','0009_alter_user_last_name_max_length','2024-07-30 15:47:15.276576'),(15,'auth','0010_alter_group_name_max_length','2024-07-30 15:47:15.307568'),(16,'auth','0011_update_proxy_permissions','2024-07-30 15:47:15.321147'),(17,'auth','0012_alter_user_first_name_max_length','2024-07-30 15:47:15.436339'),(18,'sessions','0001_initial','2024-07-30 15:47:15.492428'),(19,'viajes','0001_initial','2024-07-30 15:48:18.544282'),(20,'viajes','0002_alter_tour_imagen','2024-08-02 15:29:35.243050'),(21,'viajes','0003_alter_hospedaje_imagen_and_more','2024-08-02 15:41:11.224217');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qujcv8bxjzj0wvy8u3kmnqnhnsrz0shl','.eJxVjDsOAjEMBe-SGkVZozgRJT1niOw4JgsokfZTrbg7rLQFtG9m3mYSrUtN61ymNIq5mMGcfjem_CxtB_Kgdu8297ZMI9tdsQed7a1LeV0P9--g0ly_NSIDuMyB2LEDr4FEC1DIGkm8hyjuLIx5iIpSWFwUBPVK0WcJaN4fCG45GQ:1sZsgb:88gX2V7Wc9W9_Mb__eea9_vHILdLQURAfhIKeMkOL84','2024-08-16 13:51:13.001087');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2024-08-02 11:22:03
