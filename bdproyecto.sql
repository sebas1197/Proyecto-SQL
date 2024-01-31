-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: partidosmundial
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `equ_id` int NOT NULL AUTO_INCREMENT,
  `equ_nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`equ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Brazil'),(2,'Ecuador'),(3,'Mexico'),(4,'Argentina'),(6,'Francia'),(7,'Brazil'),(8,'Russia'),(9,'Russia'),(10,'United States'),(11,'France'),(12,'Russia'),(13,'China'),(14,'China'),(15,'Indonesia'),(16,'Palestinian Territory'),(17,'Japan'),(18,'Kosovo'),(19,'Indonesia'),(20,'Philippines'),(21,'Japan'),(22,'Poland'),(23,'El Salvador'),(24,'Mongolia'),(25,'Indonesia'),(26,'Sweden'),(27,'Brasil'),(28,'Egypt'),(29,'Tunisia'),(30,'China'),(31,'Portugal'),(32,'Czech Republic'),(33,'Ukraine'),(34,'Ireland'),(35,'Azerbaijan'),(36,'Venezuela'),(37,'France'),(38,'Russia'),(39,'Mexico'),(40,'Czech Republic'),(41,'Indonesia'),(42,'China'),(43,'Nigeria'),(44,'Belarus'),(45,'Bulgaria'),(46,'China'),(47,'Philippines'),(48,'Switzerland'),(49,'Portugal'),(50,'Russia'),(51,'Bosnia and Herzegovina'),(52,'Mexico'),(53,'Tanzania'),(54,'Venezuela'),(55,'Japan'),(56,'Japan'),(57,'South Sudan'),(58,'Sweden'),(59,'Canada'),(60,'Slovenia'),(61,'China'),(62,'China'),(63,'China'),(64,'Russia'),(65,'China'),(66,'Russia'),(67,'Ivory Coast'),(68,'Russia'),(69,'Syria'),(70,'Czech Republic'),(71,'China'),(72,'Portugal'),(73,'Bangladesh'),(74,'Russia'),(75,'Portugal'),(76,'South Korea'),(77,'Argentina'),(78,'Democratic Republic of the Congo'),(79,'China'),(80,'Mongolia'),(81,'Brazil'),(82,'Peru'),(83,'Indonesia'),(84,'Philippines'),(85,'Venezuela'),(86,'Vietnam'),(87,'Argentina'),(88,'Poland'),(89,'Czech Republic'),(90,'Portugal'),(91,'Indonesia'),(92,'Morocco'),(93,'Philippines'),(94,'Poland'),(95,'Indonesia'),(96,'India'),(97,'China'),(98,'Indonesia'),(99,'China'),(100,'Japan'),(101,'Indonesia'),(102,'Armenia'),(103,'France'),(104,'Ukraine'),(105,'Philippines'),(106,'China'),(107,'Greece');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos_partidos`
--

DROP TABLE IF EXISTS `equipos_partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos_partidos` (
  `equ_par_id` int NOT NULL AUTO_INCREMENT,
  `equ_par_equipos` int NOT NULL,
  `equ_par_partidos` int NOT NULL,
  PRIMARY KEY (`equ_par_id`),
  KEY `fk_Equipos_Partidos_Equipos1_idx` (`equ_par_equipos`),
  KEY `fk_Equipos_Partidos_Partidos1_idx` (`equ_par_partidos`),
  CONSTRAINT `fk_Equipos_Partidos_Equipos1` FOREIGN KEY (`equ_par_equipos`) REFERENCES `equipos` (`equ_id`),
  CONSTRAINT `fk_Equipos_Partidos_Partidos1` FOREIGN KEY (`equ_par_partidos`) REFERENCES `partidos` (`par_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos_partidos`
--

LOCK TABLES `equipos_partidos` WRITE;
/*!40000 ALTER TABLE `equipos_partidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipos_partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fases`
--

DROP TABLE IF EXISTS `fases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fases` (
  `fas_id` int NOT NULL AUTO_INCREMENT,
  `fas_nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fases`
--

LOCK TABLES `fases` WRITE;
/*!40000 ALTER TABLE `fases` DISABLE KEYS */;
INSERT INTO `fases` VALUES (1,'finales'),(2,'Daltfresh'),(3,'Flexidy'),(4,'Pannier'),(5,'Lotlux'),(6,'Zontrax'),(7,'Sub-Ex'),(8,'Fixflex'),(9,'It'),(10,'Trippledex'),(11,'Pannier'),(12,'Bitwolf'),(13,'Tampflex'),(14,'Konklux'),(15,'Sonsing'),(16,'Zontrax'),(17,'Lotlux'),(18,'Zontrax'),(19,'Bamity'),(20,'Opela'),(21,'Andalax'),(22,'Biodex'),(23,'Subin'),(24,'Home Ing'),(25,'Tres-Zap'),(26,'Fixflex'),(27,'It'),(28,'Trippledex'),(29,'Bitchip'),(30,'Stronghold'),(31,'Subin'),(32,'Zoolab'),(33,'Hatity'),(34,'Otcom'),(35,'Flowdesk'),(36,'Holdlamis'),(37,'It'),(38,'Gembucket'),(39,'Alpha'),(40,'Alpha'),(41,'Zamit'),(42,'Sub-Ex'),(43,'Sonsing'),(44,'Flexidy'),(45,'Y-find'),(46,'Matsoft'),(47,'Cookley'),(48,'Zoolab'),(49,'Konklux'),(50,'Stim'),(51,'Fintone'),(52,'Lotstring'),(53,'Zathin'),(54,'Fixflex'),(55,'Domainer'),(56,'Job'),(57,'Ronstring'),(58,'Cookley'),(59,'Wrapsafe'),(60,'Opela'),(61,'Tin'),(62,'Y-find'),(63,'Zontrax'),(64,'Gembucket'),(65,'Keylex'),(66,'Cardguard'),(67,'Sonair'),(68,'Konklux'),(69,'Cardguard'),(70,'Bitchip'),(71,'Flexidy'),(72,'Zaam-Dox'),(73,'Trippledex'),(74,'Namfix'),(75,'Redhold'),(76,'Matsoft'),(77,'Sonsing'),(78,'Temp'),(79,'Wrapsafe'),(80,'Fintone'),(81,'Solarbreeze'),(82,'Stringtough'),(83,'Regrant'),(84,'Sonsing'),(85,'Overhold'),(86,'Vagram'),(87,'Viva'),(88,'Sub-Ex'),(89,'Sonsing'),(90,'Namfix'),(91,'Toughjoyfax'),(92,'Stim'),(93,'Lotlux'),(94,'Zoolab'),(95,'Keylex'),(96,'Kanlam'),(97,'Trippledex'),(98,'Zathin'),(99,'Overhold'),(100,'Tres-Zap'),(101,'Bytecard');
/*!40000 ALTER TABLE `fases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `jug_id` int NOT NULL AUTO_INCREMENT,
  `jug_equipos_id` int NOT NULL,
  `jug_nombres` varchar(80) DEFAULT NULL,
  `jug_posicion` int DEFAULT NULL,
  PRIMARY KEY (`jug_id`),
  KEY `fk_Jugadores_Equipos_idx` (`jug_equipos_id`),
  CONSTRAINT `fk_Jugadores_Equipos` FOREIGN KEY (`jug_equipos_id`) REFERENCES `equipos` (`equ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (2,1,'sebastian',5),(3,1,'bale',10),(4,93,'Taber Friday',10),(5,1,'Laurie Jordi',4),(6,37,'Paton Potticary',8),(7,39,'Stacee Franca',5),(8,72,'Meade Hulburt',11),(9,54,'Bobbi Winskill',10),(10,73,'Brande Magnay',7),(11,62,'Erek Beckworth',5),(12,95,'Loutitia Danilchenko',6),(13,99,'Margarethe MacGettigen',11),(14,48,'Minnnie Grelik',11),(15,94,'Leigha Hessle',2),(16,19,'Zackariah Thomazet',8),(17,83,'Ailee Hartzog',9),(18,51,'Far Grugerr',4),(19,99,'Amber Kopman',6),(20,2,'Claudetta Rangle',5),(21,38,'Grata Moylan',10),(22,52,'Everard Threadgould',9),(23,53,'Carlin Jamrowicz',9),(24,72,'Juli Lacoste',9),(25,9,'Mehetabel Purtell',2),(26,88,'Bealle Housin',2),(27,90,'Dasya Dewhurst',6),(28,72,'Homerus Houseago',8),(29,58,'Kaia Gouthier',6),(30,88,'Anjela Mandeville',5),(31,14,'Kahlil Myring',1),(32,63,'Ericha Haydon',11),(33,1,'Joeann MacComiskey',2),(34,63,'Ethan Durham',5),(35,83,'Chester Beeken',4),(36,45,'Bambie Lanyon',1),(37,58,'Berte Sked',2),(38,24,'Milli Kyme',6),(39,26,'Nanete Gerrelts',2),(40,98,'Myca Taleworth',3),(41,97,'Whitney Borrowman',5),(42,89,'Keene Hearley',11),(43,20,'Jud Pinyon',10),(44,86,'Renee Hindge',8),(45,52,'Wye Webber',2),(46,99,'Murielle Scapelhorn',2),(47,86,'Damiano McMonies',4),(48,54,'Tabbie Ivett',7),(49,65,'Amery Strickett',4),(50,22,'Beverly Rait',2),(51,97,'Itch Buesnel',5),(52,54,'Brooke Ruger',8),(53,3,'Alessandra Aldcorn',9),(54,60,'Letti Antram',10),(55,3,'Maurizia Emnoney',7),(56,81,'Moyna Skelly',1),(57,39,'Shanon Dutt',8),(58,87,'Kaylee Calderwood',3),(59,84,'Judah Couves',5),(60,45,'Archie Banister',9),(61,57,'Humfrey Fincham',6),(62,22,'Renato Bascomb',3),(63,60,'Durant McKimm',11),(64,9,'Garreth Gillyett',1),(65,16,'Belia Extence',9),(66,35,'Kaia Eglington',7),(67,48,'Eartha Gladden',4),(68,1,'Leann Djokovic',9),(69,10,'Emera Gniewosz',10),(70,92,'Herbert Colby',3),(71,37,'Marianna Balam',7),(72,85,'Edvard Bedle',1),(73,49,'Alidia Bernier',4),(74,63,'Barclay Bonaire',10),(75,57,'Wilhelm Cowton',6),(76,15,'Tracy Janeway',7),(77,25,'Maude Fakes',1),(78,37,'Zebadiah Matijasevic',3),(79,42,'Hirsch Colleer',9),(80,84,'Harmonia Arguile',11),(81,15,'Lu McHardy',1),(82,87,'Brok Ivanyushin',6),(83,17,'Glynis Guidera',6),(84,42,'Starr Deshorts',1),(85,69,'Wilbert Ropkes',9),(86,27,'Roarke Galfour',4),(87,32,'Suki Pelling',8),(88,47,'Marika Brechin',1),(89,61,'Iago Ragbourne',8),(90,84,'Osbourne Whelband',1),(91,74,'D\'arcy Allibone',3),(92,45,'Darin Fauguel',10),(93,99,'Stephani Schankelborg',9),(94,42,'Reginald Durtnel',5),(95,28,'Franciska Slade',11),(96,35,'Erich Swale',4),(97,23,'Berna Diss',1),(98,12,'Chiquia Rudham',5),(99,29,'Marmaduke Ebsworth',10),(100,45,'Jim Lord',2),(101,31,'Olia Obray',2),(102,28,'Dilly Merrisson',7),(103,33,'Evvie Hirthe',11);
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidos` (
  `par_id` int NOT NULL AUTO_INCREMENT,
  `par_fases_id` int DEFAULT NULL,
  `par_fecha_hora` datetime DEFAULT NULL,
  `par_goles_local` int DEFAULT NULL,
  `par_goles_visitante` int DEFAULT NULL,
  PRIMARY KEY (`par_id`),
  KEY `fk_Partidos_Fases1_idx` (`par_fases_id`),
  CONSTRAINT `fk_Partidos_Fases1` FOREIGN KEY (`par_fases_id`) REFERENCES `fases` (`fas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,NULL,'2026-01-04 12:14:36',4,NULL),(2,NULL,'2026-02-04 13:26:36',NULL,NULL),(3,50,'2023-12-14 14:39:03',4,5),(4,38,'2022-08-19 19:04:38',4,1),(5,76,'2023-05-31 00:00:02',4,5),(6,100,'2023-01-27 07:45:52',8,5),(7,53,'2023-08-29 17:43:36',6,4),(8,93,'2023-08-01 13:24:37',3,6),(9,6,'2023-03-08 13:39:59',0,4),(10,42,'2023-03-31 21:56:20',3,3),(11,84,'2022-08-15 09:54:18',9,8),(12,53,'2023-05-15 23:21:32',0,4),(13,73,'2023-12-16 02:34:55',5,4),(14,99,'2022-07-06 17:46:53',2,1),(15,75,'2023-08-19 20:26:27',0,2),(16,66,'2023-12-25 13:05:47',3,1),(17,85,'2023-10-18 20:13:41',4,4),(18,68,'2023-01-17 02:29:01',10,5),(19,18,'2023-02-10 04:27:57',3,7),(20,71,'2023-01-01 17:37:33',8,7),(21,70,'2022-11-10 02:34:12',0,9),(22,64,'2023-12-05 08:10:53',6,10),(23,41,'2023-03-12 00:34:25',2,1),(24,76,'2023-09-14 03:16:48',5,10),(25,30,'2022-08-06 16:09:11',1,9),(26,100,'2023-07-26 23:29:11',7,10),(27,75,'2022-09-05 19:12:16',4,1),(28,74,'2023-02-04 17:02:38',9,5),(29,29,'2022-12-28 16:41:51',8,5),(30,28,'2023-07-30 09:31:37',6,2),(31,64,'2022-08-21 08:00:24',5,0),(32,37,'2023-06-28 14:07:44',4,10),(33,83,'2023-01-16 16:16:36',9,5),(34,55,'2022-09-21 18:00:09',0,2),(35,89,'2022-10-02 07:28:25',7,7),(36,97,'2023-04-06 02:03:37',0,8),(37,18,'2023-10-30 13:12:01',3,4),(38,45,'2023-02-28 11:05:39',1,4),(39,67,'2022-10-04 15:46:54',10,7),(40,9,'2023-08-04 01:48:13',7,5),(41,18,'2023-01-05 03:56:33',2,2),(42,18,'2023-10-27 18:39:24',10,8),(43,36,'2023-09-04 19:03:23',6,5),(44,48,'2022-07-27 15:05:26',2,5),(45,96,'2023-08-26 14:36:15',5,6),(46,97,'2023-01-10 08:57:59',7,10),(47,57,'2023-05-17 04:41:49',6,4),(48,40,'2022-09-16 14:24:17',0,0),(49,22,'2023-09-14 23:14:27',10,1),(50,90,'2023-02-16 10:53:34',6,5),(51,45,'2022-12-06 21:59:34',3,0),(52,8,'2022-10-20 15:33:13',1,3),(53,79,'2023-03-11 09:25:44',7,3),(54,66,'2023-12-22 16:42:50',9,6),(55,67,'2023-04-20 06:21:00',2,1),(56,8,'2023-03-19 08:11:13',0,1),(57,90,'2023-12-27 14:44:14',7,1),(58,55,'2022-07-09 12:51:59',8,8),(59,88,'2023-07-06 09:42:19',6,1),(60,28,'2023-05-30 12:27:41',4,7),(61,43,'2023-01-24 10:53:12',4,6),(62,59,'2022-12-15 13:25:57',5,1),(63,27,'2023-08-24 02:49:51',0,3),(64,90,'2022-09-28 12:25:51',5,2),(65,54,'2022-10-29 01:21:33',4,10),(66,13,'2022-09-27 00:17:28',9,6),(67,30,'2022-07-07 02:40:28',8,7),(68,90,'2023-11-19 23:06:05',8,4),(69,39,'2023-04-13 21:59:03',9,4),(70,86,'2023-12-04 11:32:05',5,4),(71,33,'2023-05-09 04:25:48',7,9),(72,28,'2023-07-23 07:19:13',3,2),(73,92,'2023-12-17 05:37:57',6,3),(74,86,'2023-05-30 19:33:53',8,7),(75,27,'2022-08-19 07:32:52',8,6),(76,4,'2023-09-30 03:30:06',10,2),(77,7,'2022-11-14 20:26:38',7,1),(78,26,'2024-01-08 13:20:22',1,6),(79,96,'2023-12-17 22:52:44',8,9),(80,17,'2023-10-09 11:13:51',0,7),(81,72,'2023-10-02 08:55:06',8,4),(82,12,'2023-09-27 00:58:48',7,7),(83,12,'2023-07-05 18:51:04',4,10),(84,33,'2022-12-09 13:54:31',9,5),(85,42,'2023-05-06 21:21:48',7,6),(86,27,'2022-07-06 20:50:40',1,3),(87,40,'2023-02-05 06:02:28',8,1),(88,40,'2022-08-14 14:37:15',4,5),(89,80,'2022-10-06 01:33:40',2,6),(90,15,'2024-01-01 05:22:07',9,6),(91,41,'2023-09-18 14:38:28',9,7),(92,40,'2022-11-02 11:03:56',7,2),(93,20,'2022-08-22 18:41:15',1,0),(94,95,'2022-11-22 13:28:02',0,1),(95,57,'2022-11-10 16:57:36',9,6),(96,67,'2023-11-01 07:42:50',0,10),(97,44,'2023-09-19 19:08:55',0,1),(98,9,'2022-07-07 22:41:27',5,1),(99,5,'2023-11-25 23:48:33',2,10),(100,12,'2023-08-06 02:04:45',8,3),(101,23,'2023-09-28 20:50:37',10,9),(102,22,'2024-01-13 07:48:06',2,9);
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistaequiposigualbrazil`
--

DROP TABLE IF EXISTS `vistaequiposigualbrazil`;
/*!50001 DROP VIEW IF EXISTS `vistaequiposigualbrazil`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaequiposigualbrazil` AS SELECT 
 1 AS `equ_id`,
 1 AS `equ_nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistajugadoresporequipobrazil`
--

DROP TABLE IF EXISTS `vistajugadoresporequipobrazil`;
/*!50001 DROP VIEW IF EXISTS `vistajugadoresporequipobrazil`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistajugadoresporequipobrazil` AS SELECT 
 1 AS `jug_nombres`,
 1 AS `equ_nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistajugadoresporequipos`
--

DROP TABLE IF EXISTS `vistajugadoresporequipos`;
/*!50001 DROP VIEW IF EXISTS `vistajugadoresporequipos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistajugadoresporequipos` AS SELECT 
 1 AS `equ_id`,
 1 AS `equ_nombre`,
 1 AS `jug_id`,
 1 AS `jug_equipos_id`,
 1 AS `jug_nombres`,
 1 AS `jug_posicion`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vistaequiposigualbrazil`
--

/*!50001 DROP VIEW IF EXISTS `vistaequiposigualbrazil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaequiposigualbrazil` AS select `equipos`.`equ_id` AS `equ_id`,`equipos`.`equ_nombre` AS `equ_nombre` from `equipos` where (`equipos`.`equ_nombre` = 'Brazil') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistajugadoresporequipobrazil`
--

/*!50001 DROP VIEW IF EXISTS `vistajugadoresporequipobrazil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistajugadoresporequipobrazil` AS select `jugadores`.`jug_nombres` AS `jug_nombres`,`equipos`.`equ_nombre` AS `equ_nombre` from (`jugadores` join `equipos` on((`jugadores`.`jug_equipos_id` = `equipos`.`equ_id`))) where (`equipos`.`equ_nombre` = 'Brazil') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistajugadoresporequipos`
--

/*!50001 DROP VIEW IF EXISTS `vistajugadoresporequipos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistajugadoresporequipos` AS select `equipos`.`equ_id` AS `equ_id`,`equipos`.`equ_nombre` AS `equ_nombre`,`jugadores`.`jug_id` AS `jug_id`,`jugadores`.`jug_equipos_id` AS `jug_equipos_id`,`jugadores`.`jug_nombres` AS `jug_nombres`,`jugadores`.`jug_posicion` AS `jug_posicion` from (`equipos` join `jugadores` on((`equipos`.`equ_id` = `jugadores`.`jug_equipos_id`))) */;
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

-- Dump completed on 2024-01-31  9:05:53
