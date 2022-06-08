CREATE DATABASE  IF NOT EXISTS `university_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `university_project`;
-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: university_project
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.21.10.2

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `Course_id` int NOT NULL AUTO_INCREMENT,
  `Course_name` varchar(100) NOT NULL,
  `cour_stu_id` int NOT NULL,
  `cour_prof_id` int NOT NULL,
  PRIMARY KEY (`Course_id`),
  UNIQUE KEY `Course_id_UNIQUE` (`Course_id`),
  KEY `cour_st_id` (`cour_stu_id`),
  KEY `cour_pr_id` (`cour_prof_id`),
  CONSTRAINT `fk_course_pr` FOREIGN KEY (`cour_prof_id`) REFERENCES `professors` (`Professor_id`),
  CONSTRAINT `fk_course_st` FOREIGN KEY (`cour_stu_id`) REFERENCES `students` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Minecraft for noobs',1,2),(2,'Minecraft for noobs',2,2),(3,'Minecraft for noobs',3,2),(4,'Blue Superchats',1,3),(5,'Blue Superchats',3,3),(6,'Blue Superchats',4,3),(7,'Blue Superchats',5,3),(8,'How to not horni',2,5),(9,'How to not horni',6,5),(10,'How to not horni',7,5),(11,'Finding Gura',2,1),(12,'Finding Gura',3,1),(13,'Finding Gura',4,1),(14,'How to forgor and remember',1,4),(15,'How to forgor and remember',4,4),(16,'How to forgor and remember',5,4),(17,'How to forgor and remember',6,4),(18,'Guh and Wah',1,1),(19,'Guh and Wah',3,1);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `grade_num` int NOT NULL,
  `grade_id_student` int NOT NULL,
  `grade_id_professor` int NOT NULL,
  `grade_id_course` int NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE KEY `grade_id_UNIQUE` (`grade_id`),
  KEY `grade_num` (`grade_num`),
  KEY `grade_s_id` (`grade_id_student`),
  KEY `grade_p_id` (`grade_id_professor`),
  KEY `grade_c_id` (`grade_id_course`),
  CONSTRAINT `fk_grades_cour` FOREIGN KEY (`grade_id_course`) REFERENCES `courses` (`Course_id`),
  CONSTRAINT `fk_grades_pr` FOREIGN KEY (`grade_id_professor`) REFERENCES `professors` (`Professor_id`),
  CONSTRAINT `fk_grades_st` FOREIGN KEY (`grade_id_student`) REFERENCES `students` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,7,1,2,1),(2,10,2,2,1),(3,6,3,2,1),(4,4,1,3,4),(5,9,3,3,4),(6,7,4,3,4),(7,7,5,3,4),(8,2,2,5,8),(9,6,6,5,8),(10,10,7,5,8),(11,10,2,1,11),(12,10,3,1,11),(13,5,4,1,11),(14,8,1,4,14),(15,7,4,4,14),(16,0,5,4,14),(17,8,6,4,14),(18,6,1,1,18),(19,9,3,1,18);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `Professor_id` int NOT NULL AUTO_INCREMENT,
  `Professor_name` varchar(100) NOT NULL,
  PRIMARY KEY (`Professor_id`),
  UNIQUE KEY `Professor_id_UNIQUE` (`Professor_id`),
  UNIQUE KEY `Professor_name_UNIQUE` (`Professor_name`),
  KEY `Prof_name_idx` (`Professor_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES (1,'Calliope Mori'),(3,'Fauna Ceres'),(2,'Takanashi Kiara'),(4,'Tsukumo Sana'),(5,'Yagoo');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`),
  UNIQUE KEY `student_name_UNIQUE` (`student_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2,'Amelia Watson'),(6,'Baelz Hakos'),(1,'Gawr Gura'),(4,'IRyS Hakos'),(7,'Kronii Ouro'),(5,'Nanshi Mumei'),(3,'Ninomae Inanis');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-08 17:55:06
