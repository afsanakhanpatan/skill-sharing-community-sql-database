-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: communityskillsharing
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `session_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rating` int NOT NULL,
  `comments` text,
  PRIMARY KEY (`feedback_id`),
  KEY `fk_feedback_session_id_idx` (`session_id`),
  KEY `fk_feedback_user_id_idx` (`user_id`),
  CONSTRAINT `fk_feedback_session_id` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`),
  CONSTRAINT `fk_feedback_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,2,5,'Wonderful Python workshop!'),(2,2,3,4,'Gained confidence in public speaking!'),(3,3,4,5,'Great machine learning hands-on.'),(4,4,5,4,'Creative digital painting techniques!'),(5,5,6,5,'Relaxing and energizing yoga class!'),(6,6,7,5,'Learned financial tips easily!'),(7,7,1,4,'Fantastic photography skills!');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `skill_id` int NOT NULL,
  `instructor_id` int NOT NULL,
  `session_date` date NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `max_participants` int DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `fk_skill_id_idx` (`skill_id`),
  KEY `fk_sessions_instructor_id_idx` (`instructor_id`),
  CONSTRAINT `fk_sessions_instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_sessions_skill_id` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,1,'2025-09-01','Online',40),(2,2,2,'2025-09-03','Delhi Center',30),(3,3,3,'2025-09-05','Bangalore Studio',15),(4,4,4,'2025-09-07','Chennai Hub',25),(5,5,5,'2025-09-10','Hyderabad Lounge',20),(6,6,6,'2025-09-12','Ahmedabad Hall',18),(7,7,7,'2025-09-14','Jaipur Retreat',22);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_requests`
--

DROP TABLE IF EXISTS `skill_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_requests` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `skill_id` int DEFAULT NULL,
  `request_date` date NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  KEY `fk_skill_requests_user_id_idx` (`user_id`),
  KEY `fk_skill_requests_skill_id_idx` (`skill_id`),
  CONSTRAINT `fk_skill_requests_skill_id` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`),
  CONSTRAINT `fk_skill_requests_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_requests`
--

LOCK TABLES `skill_requests` WRITE;
/*!40000 ALTER TABLE `skill_requests` DISABLE KEYS */;
INSERT INTO `skill_requests` VALUES (1,1,2,'2025-08-11','Pending'),(2,2,3,'2025-08-12','Approved'),(3,3,4,'2025-08-13','Pending'),(4,4,7,'2025-08-14','Completed'),(5,5,6,'2025-08-15','Pending'),(6,6,5,'2025-08-16','Rejected'),(7,7,1,'2025-08-17','Approved');
/*!40000 ALTER TABLE `skill_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Python Programming','Technology'),(2,'Public Speaking','Personal Development'),(3,'Machine Learning','Technology'),(4,'Digital Painting','Art'),(5,'Yoga','Wellness'),(6,'Financial Planning','Business'),(7,'Photography','Art');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_skills`
--

DROP TABLE IF EXISTS `user_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_skills` (
  `user_skill_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `skill_id` int NOT NULL,
  `proficiency_level` varchar(50) NOT NULL,
  PRIMARY KEY (`user_skill_id`),
  KEY `fk_user_id_idx` (`user_id`),
  KEY `fk_skill_id_idx` (`skill_id`),
  CONSTRAINT `fk_user_skills_skill_id` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`),
  CONSTRAINT `fk_user_skills_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_skills`
--

LOCK TABLES `user_skills` WRITE;
/*!40000 ALTER TABLE `user_skills` DISABLE KEYS */;
INSERT INTO `user_skills` VALUES (1,1,1,'Expert'),(2,2,2,'Expert'),(3,3,3,'Advanced'),(4,4,4,'Intermediate'),(5,5,5,'Expert'),(6,6,6,'Beginner'),(7,7,7,'Expert');
/*!40000 ALTER TABLE `user_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Afsana Khan Patan','afsanakhan@email.com','Mumbai','AI and Data Science enthusiast'),(2,'Roshan Ackthar','roshan@email.com','Delhi','Public speaker and career coach'),(3,'Sameera Patan','sameerapatan@email.com','Bangalore','Digital artist and UX designer'),(4,'Vasanth Reddy','vasanthreddy@email.com','Chennai','Full-stack engineer and music lover'),(5,'Ashok','ashok@email.com','Hyderabad','Yoga instructor and wellness blogger'),(6,'Salma shaik','salmask@email.com','Ahmedabad','Finance specialist and investment coach'),(7,'Muskan','muskan@email.com','Jaipur','Photography enthusiast and traveler');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-13 21:52:25
