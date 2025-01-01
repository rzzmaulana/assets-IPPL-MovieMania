-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movieID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `rating` float DEFAULT '0',
  `poster_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movieID`),
  KEY `idx_movie_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (2,'The Dark Knight','Action','2008-07-18','Batman faces the Joker in Gotham City.',4.9,'uploaded_images/dark_kinght.jpg'),(13,'Inception','Sci-Fi','2010-07-16','A thief who steals corporate secrets through dream-sharing technology is tasked with planting an idea into the mind of a CEO.',8.8,'uploaded_images/inception.jpg'),(14,'Batman vs Superman','Action','2008-02-02','Batman faces the Superman, a god-like creature',9,'uploaded_images/bvs.jpg'),(15,'Interstellar','Adventure','2014-11-07','A team of explorers travel through a wormhole in space in an attempt to ensure humanity’s survival.',8.6,'uploaded_images/interstellar.jpg'),(19,'The Shawshank Redemption','Drama','1994-09-22','Two imprisoned men bond over several years, finding solace and redemption through acts of common decency.',9.3,'uploaded_images/shawshank.jpg'),(20,'Pulp Fiction','Crime','1994-10-14','The lives of two mob hitmen, a boxer, a gangster, and his wife intertwine in four tales of violence and redemption.',8.9,'uploaded_images/pulp_fiction.jpg'),(21,'Fight Club','Drama','1999-10-15','An insomniac office worker and a soapmaker form an underground fight club that evolves into much more.',8.8,'uploaded_images/fight_club.jpg'),(22,'The Lord of the Rings: The Fellowship of the Ring','Fantasy','2001-12-19','A meek hobbit and eight companions set out on a journey to destroy the powerful One Ring.',8.8,'uploaded_images/lotr_fellowship.jpg'),(23,'The Godfather','Crime','1972-03-24','The aging patriarch of an organized crime dynasty transfers control of his empire to his reluctant son.',9.2,'uploaded_images/godfather.jpg'),(24,'Star Wars: A New Hope','Sci-Fi','1977-05-25','Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee, and two droids to save the galaxy.',8.6,'uploaded_images/star_wars.jpg'),(25,'Saving Private Ryan','War','1998-07-24','Following the Normandy landings, a group of soldiers go behind enemy lines to retrieve a paratrooper.',8.6,'uploaded_images/saving_private.jpg'),(26,'Schindler\'s List','History','1993-12-15','In German-occupied Poland during WWII, a businessman saves hundreds of Jewish lives.',9,'uploaded_images/schindler.jpg'),(27,'Jurassic Park','Adventure','1993-06-11','A pragmatic paleontologist touring an almost complete theme park is tasked with protecting a couple of kids.',8.1,'uploaded_images/jurrasic_park.jpg'),(29,'Wolfchildren','Family','1997-12-19','A girl who married with wold',7.8,'uploaded_images/wolfchildren.jpg'),(30,'Avatar ','Sci-Fi','2009-12-10','A paraplegic Marine is dispatched to Pandora on a unique mission but becomes torn between following orders and protecting the world.',7.8,'uploaded_images/avatar.jpg'),(31,'Toy Story','Animation','1995-11-22','A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy.',8.3,'uploaded_images/toy_story.jpg'),(32,'Avengers: Endgame','Action','2019-04-26','After the devastating events of Avengers: Infinity War, the Avengers assemble once more to reverse Thanos\' actions.',8.4,'uploaded_images/avengers_endgame.jpg'),(33,'Jujutsu Kaisen Zero','Shounen','2021-02-01','Gojo belom mokad',0,'uploaded_images/jjk_zero.jpg'),(34,'Naruto Shipudden','Shounen','2002-10-03','Anak yang jadi rubah bisa jadi hokage',0,'uploaded_images/naruto.jpg'),(35,'Tokyo Revengers','Action','2024-12-20','Mikeyyy teme',0,'uploaded_images/tokyo_reverger.jfif');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-01 20:59:24
