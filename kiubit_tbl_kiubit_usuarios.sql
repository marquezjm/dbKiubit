CREATE DATABASE  IF NOT EXISTS `kiubit` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kiubit`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: kiubit
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tbl_kiubit_usuarios`
--

DROP TABLE IF EXISTS `tbl_kiubit_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_kiubit_usuarios` (
  `usuario_id` varchar(32) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `alias` varchar(30) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `rol` varchar(2) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `creado_por` varchar(32) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `modificado_por` varchar(32) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `rol` (`rol`),
  CONSTRAINT `tbl_kiubit_usuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `tbl_kiubit_rol` (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kiubit_usuarios`
--

LOCK TABLES `tbl_kiubit_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_kiubit_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_kiubit_usuarios` VALUES ('8cd93cc7cad511eeaa2c54feef6ad90c','$2a$12$GbDp5tZ64BLpfIUSgolvo.lA3ZkwUwDsjcaJ7KJ.e2Lul86hGJQdy','yo','Jose Manuel','Marquez','Camarillo','jmarquezcamarillo@gmail.com','U','E','','2024-02-13 19:06:15',NULL,NULL),('ae1292bacb7e11eeaa2c54feef6ad90c','$2a$10$WGg0zFCV7jWhpKI05LbV0O1VQPfPynSK3Y1yteP/aqpELMySYDOOK','yo2','Jose Manuel','Marquez','Camarillo','mebejm@hotmail.com','U','E',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_kiubit_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbl_kiubit_usuarios_BEFORE_INSERT` BEFORE INSERT ON `tbl_kiubit_usuarios` FOR EACH ROW BEGIN
	SET NEW.usuario_id = replace(uuid(),"-",'');
END */;;
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

-- Dump completed on 2024-02-15 19:07:15
