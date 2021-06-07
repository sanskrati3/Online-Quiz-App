-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: exam-portal
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic_id` int NOT NULL,
  `text` text NOT NULL,
  `option1` mediumtext NOT NULL,
  `option2` mediumtext NOT NULL,
  `option3` mediumtext NOT NULL,
  `option4` mediumtext NOT NULL,
  `correct_answer` enum('1','2','3','4') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,1,'Which of the following option leads to the portability and security of Java?','Bytecode is executed by JVM','The applet makes the Java code secure and portable','Use of exception handling','Dynamic binding between objects','1','2016-04-17 19:27:45'),(2,2,'What do we use to define a block of code in Python language?','Key','Brackets','Indentation','None of these','3','2016-04-17 19:27:45'),(3,2,'Which character is used in Python to make a single line comment?','/','//','#','!','3','2016-04-17 19:27:45'),(4,1,'Which of the following is not a Java features?','Dynamic','Architecture Neutral','Use of pointers','Object-oriented','3','2016-04-17 19:27:45'),(5,2,'What is the method inside the class in python language?','Object','Function','Attribute','Argument','2','2016-04-17 19:27:45'),(6,1,'Which of the following is a valid declaration of a char?','char ch = \'\\utea\';','char ca = \'tea\';','char cr = \\u0223;','char cc = \'\\itea\';','1','2016-04-17 19:27:45'),(7,2,'Which of the following declarations is incorrect?','_x = 2','__x = 2','_xyz__ = 5','None of these','4','2016-04-17 19:27:45'),(8,1,'What is the return type of the hashCode() method in the Object class?','Object','int','long','void','2','2016-04-17 19:27:45'),(9,2,'Why does the name of local variables start with an underscore discouraged?','To identify the variable','It confuses the interpreter','It indicates a private variable of a class','None of these','3','2016-04-17 19:27:45'),(10,1,'Which of the following is a valid long literal?','ABH8097','L990023','904423','0xnf029L','4','2016-04-17 19:27:45'),(11,2,' What is the maximum possible length of an identifier?','16','32','64','None of above','4','2016-04-17 19:27:45'),(12,1,' What does the expression float a = 35 / 0 return?','0','Not a Number','Infinity','Run time exception','3','2016-04-17 19:27:45'),(13,2,'Who developed the Python language?','Zim Den','Guido van Rossum','Niene Stom','Wick van Rossum','2','2016-04-17 19:27:45'),(14,1,'Which of the following for loop declaration is not valid?','for ( int i = 99; i >= 0; i / 9 )','for ( int i = 7; i <= 77; i += 7 )','for ( int i = 20; i >= 2; - -i )','for ( int i = 2; i <= 20; i = 2* i )','1','2016-04-17 19:27:45'),(15,2,' In which year was the Python language developed?','1995','1972','1981','1989','4','2016-04-17 19:27:45'),(16,1,'In which memory a String is stored, when we create a string using new operator?','stack','String memory','Heap memory','Random storage space','3','2016-04-17 19:27:45'),(17,2,'In which language is Python written?','English','PHP','C','All of the above','3','2016-04-17 19:27:45'),(18,1,' Which keyword is used for accessing the features of a package?','Package','import','extends','export','2','2016-04-17 19:27:45'),(19,2,'Which one of the following is the correct extension of the Python file?','.py','.python','.p','None of these','1','2016-04-17 19:27:45'),(20,1,'What is the initial quantity of the ArrayList list?','5','10','0','100','2','2016-04-17 19:27:45');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `topic_id` int NOT NULL,
  `no_of_questions` int NOT NULL,
  `no_of_correct_question` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,2,1,10,5,'2016-04-16 23:23:04'),(2,2,1,10,6,'2016-04-17 00:27:12'),(3,2,1,10,6,'2016-04-17 00:27:36');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `user_id` int NOT NULL,
  `questions` int NOT NULL,
  `description` mediumtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'Java',1,10,'Java','2016-04-16 23:17:40'),(2,'Python',2,10,'Python','2016-04-17 19:28:44');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_request`
--

DROP TABLE IF EXISTS `upgrade_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upgrade_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_request`
--

LOCK TABLES `upgrade_request` WRITE;
/*!40000 ALTER TABLE `upgrade_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password_hash` varchar(40) NOT NULL,
  `level` int NOT NULL,
  `sex` enum('m','f') NOT NULL,
  `workspace` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'sanskrati','Sankrati Gawande','sanskratigawande@gmail.com','sg',1,'f','LNMIIT','2016-04-16 23:22:11');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-07 17:31:45
