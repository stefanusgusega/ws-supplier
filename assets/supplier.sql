-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: supplier
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `daftar_bahan`
--

DROP TABLE IF EXISTS `daftar_bahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftar_bahan` (
  `id_bahan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bahan` varchar(50) DEFAULT NULL,
  `jumlah_gram` int(11) DEFAULT NULL,
  `harga_bahan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bahan`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_bahan`
--

LOCK TABLES `daftar_bahan` WRITE;
/*!40000 ALTER TABLE `daftar_bahan` DISABLE KEYS */;
INSERT INTO `daftar_bahan` VALUES (1,'susu',1000,100000),(2,'kakao',1000,100000),(3,'gula pasir',1000,100000),(4,'vanilla',1000,100000),(5,'madu',1000,100000),(6,'garam',1000,100000),(7,'minyak kelapa',1000,100000),(8,'bubuk cocoa',1000,100000),(9,'wallnut',1000,100000),(10,'kelapa',1000,100000),(11,'almond',1000,100000),(12,'sprinkle',1000,100000),(13,'coffee',1000,100000),(14,'jeruk',1000,100000),(16,'mesis coklat',1000,100000),(17,'mesis mix',1000,100000),(18,'cocoa butter',1000,100000),(19,'mentega',1000,100000),(20,'tepung terigu',1000,100000),(21,'baking soda',1000,100000),(22,'gula aren',1000,100000),(23,'telur',1000,100000),(24,'milk choco',1000,100000),(25,'white choco',1000,100000),(26,'dark choco',1000,100000),(27,'pewarna makanan',1000,100000);
/*!40000 ALTER TABLE `daftar_bahan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-18 17:29:46
