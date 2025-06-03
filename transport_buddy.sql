-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: transport_buddy
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `add_employee`
--

DROP TABLE IF EXISTS `add_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `emptype` varchar(45) NOT NULL,
  `driver_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_employee`
--

LOCK TABLES `add_employee` WRITE;
/*!40000 ALTER TABLE `add_employee` DISABLE KEYS */;
INSERT INTO `add_employee` VALUES (1,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','9919932197','kotwali road','fresher','driver','busy'),(2,'Ram','ajaykushwaha29a@gmail.com','1234567896','Lucknow','10 year','driver','busy'),(3,'Ashwani','raj@123gmail.com','8520142525','Lucknow','2 years','driver','busy'),(4,'Suraj','suraj@123gmail.com','9919932195','Gorakhpur','3 Year','driver',NULL),(5,'Ashwani Singh','ashwani@1234gmail.com','7850236456','Matiyari','7 year','driver',NULL),(6,'Ashwani','ashwani@1234gmail.com','6307305863','kotwali road','no','driver',''),(7,'Sandeep Dwivedi','sandeep123@gmail.com','8796541236','Lucknow , Hazratganj','3 years ','driver','busy'),(8,'Ashwani','raj@123gmail.com','9919932197','lko',' 10 year experience','driver','busy'),(9,'Vijeta','vij@123gmail.com','6307305739','Siwan,Gopalganj','10 years','driver','busy'),(10,'Naresh','naresh@123gmail.com','8520142525','Lucknow','5 year','driver','busy');
/*!40000 ALTER TABLE `add_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_details` (
  `id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_details`
--

LOCK TABLES `admin_details` WRITE;
/*!40000 ALTER TABLE `admin_details` DISABLE KEYS */;
INSERT INTO `admin_details` VALUES ('admin','admin','Raj','rajmaurya1686@gmail.com','6307305739');
/*!40000 ALTER TABLE `admin_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cab`
--

DROP TABLE IF EXISTS `cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cab` (
  `model` varchar(45) NOT NULL,
  `cabregistrationno` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `devicenumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cabregistrationno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cab`
--

LOCK TABLES `cab` WRITE;
/*!40000 ALTER TABLE `cab` DISABLE KEYS */;
INSERT INTO `cab` VALUES ('Dzire','UP14 5423','Red','3580'),('Innova','UP32 3918','Blue','5187'),('Carnival','UP32 5220','Black',NULL),('Dzire','UP52 6307','white',NULL),('Scorpio','UP53 1687','Black',NULL),('Safari','UP53 9919','Red',NULL),('Safari','UP56 2315','Black',NULL),('Hector','UP57 1686','Black',NULL),('Bolero','UP57 3320','white',NULL),('XUV700','UP573250','',NULL);
/*!40000 ALTER TABLE `cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cab_bookings`
--

DROP TABLE IF EXISTS `cab_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cab_bookings` (
  `bkid` int NOT NULL AUTO_INCREMENT,
  `clientid` varchar(45) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `model` varchar(45) NOT NULL,
  `requestdate` date NOT NULL,
  `bookingdate` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `status` varchar(45) NOT NULL,
  `driverid` int DEFAULT NULL,
  PRIMARY KEY (`bkid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cab_bookings`
--

LOCK TABLES `cab_bookings` WRITE;
/*!40000 ALTER TABLE `cab_bookings` DISABLE KEYS */;
INSERT INTO `cab_bookings` VALUES (1,'Raj','Lucknow','kushinagar','Innova','2023-03-28','2023-03-14','20:53','pending',NULL),(2,'Raj','Gorakhpur','Bihar','Innova','2023-03-29','2023-03-16','02:54','pending',NULL),(3,'Raj','London','Africa','Safari','2023-03-30','2023-03-31','08:59','pending',NULL),(4,'Raj','Kashmir','Kanya kumari','Hector','2023-03-30','2023-03-31','02:21','confirmed',2),(5,'Raj','Gorakhpur','kushinagar','Dzire','2023-03-31','2023-04-04','18:47','pending',NULL),(6,'Raj','Kashmir','kushinagar','Safari','2023-03-31','2023-04-04','19:47','confirmed',1),(7,'Raj','Kashmir','Africa','Innova','2023-04-05','2023-04-26','16:20','confirmed',4),(8,'Raj','Gorakhpur','Kanya kumari','Safari','2023-04-05','2023-04-24','21:17','pending',NULL),(9,'Raj','Kashmir','Bihar','Safari','2023-04-06','2023-04-16','20:29','confirmed',5),(10,'Raj','Gorakhpur','Kanya kumari','Hector','2023-04-12','2023-04-26','19:05','confirmed',3),(11,'Raj','Gorakhpur','Africa','Safari','2023-04-12','2023-04-10','19:08','confirmed',6),(12,'Raj','Gorakhpur','Africa','Safari','2023-04-19','2023-04-17','01:39','pending',NULL),(14,'Raj','Tamkuhi Road','Gopalganj','XUV700','2023-05-04','2023-05-20','22:29','pending',NULL),(15,'Raj','Lucknow','Hydrabad','Bolero','2023-05-04','2023-05-12','22:32','pending',NULL),(16,'Raj','Charbag','Siwan','Hector','2023-05-04','2023-05-19','12:28','pending',NULL),(17,'Raj','Gorakhpur','kushinagar','Dzire','2023-05-04','2023-05-26','13:29','pending',NULL),(18,'Raj','Kanpur','Lucknow','Carnival','2023-05-04','2023-05-24','12:29','pending',NULL),(19,'Raj','Gorakhpur','Kushinagar','Safari','2023-05-08','2023-05-18','12:48','pending',NULL),(20,'Raj','Tamkuhi Road','kushinagar','Innova','2023-05-08','2023-05-25','14:05','confirmed',10),(21,'123','Gorakhpur','kushinagar','Dzire','2024-05-29','2024-05-30','22:05','confirmed',3),(22,'123','Kanpur','Kanya kumari','Safari','2024-05-29','2024-05-31','01:20','confirmed',4),(23,'Raj','Gorakhpur','kushinagar','Dzire','2025-04-25','2025-04-27','01:44','confirmed',9),(24,'Raj','Kanpur','Kanya kumari','Safari','2025-04-26','2025-04-27','05:02','pending',NULL),(25,'Raj','Kushinagar','Tamkuhi Road','Bolero','2025-04-26','2025-04-29','00:11','pending',NULL),(26,'Raj','Kushinagar','Tamkuhi Road','Bolero','2025-04-26','2025-04-29','00:11','pending',NULL),(27,'Raj','Kushinagar','Tamkuhi Road','Bolero','2025-04-26','2025-04-29','00:11','confirmed',3),(28,'Raj','Gorakhpur444','Tamkuhi Road','Safari','2025-04-26','2025-04-28','15:14','pending',NULL);
/*!40000 ALTER TABLE `cab_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `city` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(11,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('123','1234','Kartikesh sir','rajmaurya1686@gmail.com','9919932197','lko','kotwali road','2023-04-19',26.877210,81.042330),('admin','admin','RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','lko','kotwali road','2023-03-15',26.874330,80.959170),('mannu','12345','Mannu','sonu123@gmail.com','6307305739','lko','kotwali road','2025-04-25',26.846690,80.946170),('Raj','1234','Rajkishor','rajmaurya@gmail.com','6307305739','lko','vill-Karanpatti  post -madhopur buzurg','2023-03-16',26.863210,81.012330),('sonu123','sonu','Sonu','sonu@123gmail.com','7852369852','lko','Kushinagar,near budha institute,UP','2023-04-23',26.846690,80.946170),('subham123','1236','Shubham Gupta','shubham@300gmail.com','5869715545','lko','Lucknow faizabad','2023-04-26',26.846690,80.946170),('suraj123','suraj123','Suraj','suraj@gmail.com','1234567896','gkp','Lucknow','2024-05-29',26.846690,80.946170);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `feedback_text` varchar(255) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','You are providing good facilities','four','2023-03-01'),(2,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','You are providing good facilities','four','2023-03-01'),(3,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','You are providing good facilities','four','2023-03-01'),(4,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','You are providing good facilities','four','2023-03-01'),(5,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','You are providing good facilities','four','2023-03-01'),(6,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','You are providing good facilities','four','2023-03-01'),(7,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','You are providing good facilities','four','2023-03-01'),(8,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','You are providing good facilities','four','2023-03-01'),(9,'RAJKISHOR KUSHWAHA','ajaykushwaha29a@gmail.com','1234567896','qwer','four','2023-03-02'),(10,'Ashwani','ashwani@1234gmail.com','9919932197','lksjdnf','three','2025-04-25');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_cab`
--

DROP TABLE IF EXISTS `goods_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_cab` (
  `modelname` varchar(45) NOT NULL,
  `cabregistrationno` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `helper` varchar(45) NOT NULL,
  `devicenumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cabregistrationno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_cab`
--

LOCK TABLES `goods_cab` WRITE;
/*!40000 ALTER TABLE `goods_cab` DISABLE KEYS */;
INSERT INTO `goods_cab` VALUES ('Trolly','UP32 3918','Black','No','5187'),('Pickup','UP53 1686','white','yes','5187'),('MiniTruck','UP57 1686','Red','yes','5187'),('Lorry','UP573250','white','yes','5187');
/*!40000 ALTER TABLE `goods_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `messageid` int NOT NULL AUTO_INCREMENT,
  `senderid` varchar(45) NOT NULL,
  `receiverid` varchar(45) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message_text` varchar(255) NOT NULL,
  `rstatus` varchar(5) NOT NULL,
  `sstatus` varchar(5) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (10,'Raj','admin','features of cab','I wanna know the features of cab','false','true','2023-04-14'),(11,'Raj','Raj','About rent','Rent of vehicle is according to their features or distance cover.\r\n','true','true','2023-04-14'),(12,'Raj','admin','Booking related issues','portal is not working solve this issues','true','true','2023-05-08'),(13,'admin','Raj','Booking Issues','Your issues has been resolved','true','true','2023-05-08'),(14,'admin','naresh','Trading','Learn trading in 6 month','true','true','2025-04-25'),(16,'Raj','admin','kdfn','jdnehni','true','true','2025-04-25'),(18,'Raj','admin','kdfn','jdnehni','true','true','2025-04-26');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ridedetails`
--

DROP TABLE IF EXISTS `ridedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ridedetails` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `vehicleno` varchar(45) NOT NULL,
  `bookingid` int NOT NULL,
  `driverid` int NOT NULL,
  `clientid` varchar(45) NOT NULL,
  `startkm` varchar(45) NOT NULL,
  `endkm` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ridedetails`
--

LOCK TABLES `ridedetails` WRITE;
/*!40000 ALTER TABLE `ridedetails` DISABLE KEYS */;
INSERT INTO `ridedetails` VALUES (4,'UP57 1686',7,0,'Raj','350',NULL,'Completed'),(5,'UP32 3918',6,0,'Raj','700','','Completed'),(6,'UP14 5423',4,0,'Raj','100','','Completed'),(7,'UP56 2315',7,2,'Raj','399','500','Completed'),(8,'UP52 6307',4,2,'Raj','150','','Completed'),(9,'UP56 2315',9,2,'Raj','100','1000','Completed'),(10,'UP32 3918',11,2,'Raj','300','','Completed'),(11,'UP53 9919',4,2,'Raj','300','','Completed'),(12,'UP53 9919',4,2,'Raj','200','600','Completed'),(13,'UP14 5423',4,2,'Raj','500','700','Completed'),(14,'UP32 3918',11,6,'Raj','200','300','Completed'),(15,'UP573250',11,6,'Raj','320','400','Completed'),(16,'UP57 1686',10,3,'Raj','300','500','Completed'),(17,'UP57 3320',11,6,'Raj','100','200','Completed'),(18,'UP53 1687',4,2,'Raj','200','300','Completed'),(19,'UP52 6307',20,10,'Raj','200','500','Completed'),(20,'UP32 3918',22,4,'Raj','100','300','Completed'),(21,'UP14 5423',23,9,'Raj','100','100','Completed'),(22,'UP56 2315',27,3,'Raj','20','500','Completed'),(23,'UP52 6307',27,3,'Raj','20',NULL,'in progress');
/*!40000 ALTER TABLE `ridedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheme`
--

DROP TABLE IF EXISTS `scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme`
--

LOCK TABLES `scheme` WRITE;
/*!40000 ALTER TABLE `scheme` DISABLE KEYS */;
INSERT INTO `scheme` VALUES (1,'RAJKISHOR KUSHWAHA','Book your ride in cheapest cost during diwali festival','2023-03-17'),(3,'Surya','Ride Without Peak Pricing. No peak pricing on Prime & Mini, 24X7 ; Skip Booking Queue. Your booking request gets first priority ; Enjoy Free Wi-Fi. Stay connected ...','2023-03-23'),(4,'Ashwani','10% extra discount for Student then what are you waiting for ....','2023-03-23'),(5,'Ram Naresh Gupta','50% off ride for out of station journey \r\nso hurry up .This offer is for a limited time .\r\n','2023-03-23');
/*!40000 ALTER TABLE `scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_cab_booking`
--

DROP TABLE IF EXISTS `transport_cab_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_cab_booking` (
  `bkid` int NOT NULL AUTO_INCREMENT,
  `clientid` varchar(45) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `model` varchar(45) NOT NULL,
  `requestdate` date NOT NULL,
  `bookingdate` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `status` varchar(45) NOT NULL,
  `driverid` int DEFAULT NULL,
  PRIMARY KEY (`bkid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_cab_booking`
--

LOCK TABLES `transport_cab_booking` WRITE;
/*!40000 ALTER TABLE `transport_cab_booking` DISABLE KEYS */;
INSERT INTO `transport_cab_booking` VALUES (1,'Raj','Lucknow','Bihar','Trolly','2023-04-27','2023-05-06','08:00','confirmed',7),(2,'Raj','Gorakhpur','Kanya kumari','Lorry','2023-04-27','2023-04-28','06:03','pending',NULL),(3,'Raj','Kashmir','Kanya kumari','Pickup','2023-04-27','2023-05-02','02:09','pending',NULL),(4,'Raj','Kanpur','kushinagar','MiniTruck','2023-04-27','2023-05-04','02:08','pending',NULL),(5,'Raj','Gorakhpur','Kushinagar','Lorry','2023-05-02','2023-05-26','15:16','confirmed',8),(6,'Raj','Gorakhpur','kushinagar','Lorry','2023-05-04','2023-05-13','22:34','pending',NULL),(7,'Raj','Tamkuhi Road','Bihar','MiniTruck','2023-05-04','2023-05-12','22:31','pending',NULL),(8,'Raj','Tamkuhi Road','kushinagar','Pickup','2023-05-04','2023-05-19','22:33','pending',NULL);
/*!40000 ALTER TABLE `transport_cab_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_model`
--

DROP TABLE IF EXISTS `transport_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_model` (
  `modeltype` varchar(45) NOT NULL,
  `capacity` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `fair` varchar(45) NOT NULL,
  PRIMARY KEY (`modeltype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_model`
--

LOCK TABLES `transport_model` WRITE;
/*!40000 ALTER TABLE `transport_model` DISABLE KEYS */;
INSERT INTO `transport_model` VALUES ('Lorry','3000','15ft x 7ft x 9ft','10'),('Mini Truck','2000','12ft x 6ft x 7.5ft','15'),('pickup','1300','9.5ft x 5.5ft x 5.5ft','20'),('Trolly','1500','9.5ft x 5.5ft x 5.5ft','12');
/*!40000 ALTER TABLE `transport_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_ridedetails`
--

DROP TABLE IF EXISTS `transport_ridedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_ridedetails` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `vehicleno` varchar(45) NOT NULL,
  `bookingid` int NOT NULL,
  `driverid` int NOT NULL,
  `clientid` varchar(45) NOT NULL,
  `startkm` varchar(45) NOT NULL,
  `endkm` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_ridedetails`
--

LOCK TABLES `transport_ridedetails` WRITE;
/*!40000 ALTER TABLE `transport_ridedetails` DISABLE KEYS */;
INSERT INTO `transport_ridedetails` VALUES (1,'UP57 1686',1,7,'Raj','100','300','Completed'),(2,'UP573250',5,8,'Raj','300','400','Completed'),(3,'UP32 3918',5,8,'Raj','200',NULL,'in progress');
/*!40000 ALTER TABLE `transport_ridedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_query`
--

DROP TABLE IF EXISTS `user_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_query` (
  `serial_number` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_phone` varchar(45) DEFAULT NULL,
  `user_doubt` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_query`
--

LOCK TABLES `user_query` WRITE;
/*!40000 ALTER TABLE `user_query` DISABLE KEYS */;
INSERT INTO `user_query` VALUES (1,'Raj','rajmaurya1686@gmail.com',NULL,'no doubt','2023-02-24'),(2,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','no query','2023-02-28'),(3,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','Yes I Have a Query','2023-02-28'),(4,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','6307305739','Yes I Have a Query','2023-02-28'),(5,'raj','ajaykushwaha29a@gmail.com','9919932197','Query Resolved','2023-02-28'),(6,'raj','rajmaurya1686@gmail.com','6307305739','xyz','2023-03-01'),(7,'Suraj','raj@123gmail.com','9919932197','xyz','2023-03-01'),(8,'Suraj','raj@123gmail.com','9919932197','xyz','2023-03-01'),(9,'Suraj','raj@123gmail.com','9919932197','xyz','2023-03-01'),(10,'Suraj','raj@123gmail.com','9919932197','xyz','2023-03-01'),(11,'Suraj','raj@123gmail.com','9919932197','xyz','2023-03-01'),(12,'Suraj','raj@123gmail.com','9919932197','xyz','2023-03-01'),(13,'RAJKISHOR KUSHWAHA','rajmaurya1686@gmail.com','9919932197','ewrty','2023-03-02'),(14,'Raj','rajamurya1686@gmail.com','9919932197','is your vehicle available for 24 h\r\n','2023-05-07'),(15,'Sonu','sonu123@gmail.com','9919932456','rent issue','2023-07-02'),(16,'Raj','ashwani@1234gmail.com','9919932197',',l;l,;l;,l\r\n','2025-03-23'),(17,'Suraj','raj@123gmail.com','8520142525','sdsae','2025-04-25');
/*!40000 ALTER TABLE `user_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_model`
--

DROP TABLE IF EXISTS `vehicle_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_model` (
  `model` varchar(50) NOT NULL,
  `seater` varchar(50) NOT NULL,
  `fueltype` varchar(45) NOT NULL,
  `fair` varchar(10) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_model`
--

LOCK TABLES `vehicle_model` WRITE;
/*!40000 ALTER TABLE `vehicle_model` DISABLE KEYS */;
INSERT INTO `vehicle_model` VALUES ('Bolero','7','diesel','9'),('Carnival','5','petrol','15'),('Dzire','4','diesel','10'),('Hector','5','diseal','16'),('Innova','6','diseal','12'),('Safari','8','diseal','14'),('Scorpio','7','diesel','11'),('XUV700','7','petrol','15');
/*!40000 ALTER TABLE `vehicle_model` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-12 22:24:39
