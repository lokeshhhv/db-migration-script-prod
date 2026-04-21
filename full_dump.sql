-- MySQL dump 10.13  Distrib 9.6.0, for macos26.3 (arm64)
--
-- Host: database-1.czaiaywq0fd4.ap-south-1.rds.amazonaws.com    Database: donobene
-- ------------------------------------------------------
-- Server version	8.4.8

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `request_id` int NOT NULL,
  `category_id` int NOT NULL,
  `document_type_id` int NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `attachments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,1,14,6,1,'/uploads/v.pdf','2026-04-09 08:46:49'),(2,1,14,6,2,'/uploads/a.pdf','2026-04-09 08:46:49'),(3,1,1,5,1,'/uploads/verify.pdf','2026-04-09 09:23:00'),(4,1,1,5,2,'/uploads/damage.jpg','2026-04-09 09:23:00'),(5,1,1,4,1,'/uploads/report.pdf','2026-04-09 09:47:25'),(6,1,1,4,2,'/uploads/prescription.pdf','2026-04-09 09:47:25'),(7,1,1,4,3,'/uploads/estimate.pdf','2026-04-09 09:47:25'),(8,1,1,4,1,'/uploads/injury.jpg','2026-04-09 09:47:25'),(11,1,2,3,1,'/uploads/mark_sheet.pdf','2026-04-09 10:07:12'),(12,1,2,3,2,'/uploads/fee_structure.pdf','2026-04-09 10:07:12'),(13,1,2,3,1,'/uploads/id_card.jpg','2026-04-09 10:07:12'),(14,1,2,3,2,'/uploads/college_fee.pdf','2026-04-09 10:07:12'),(15,1,9,2,1,'attachments/verification_arun.pdf','2026-04-09 14:19:45'),(16,1,9,2,2,'attachments/photo_arun.jpg','2026-04-09 14:19:45'),(17,1,9,2,1,'attachments/verification_priya.pdf','2026-04-09 14:19:45'),(18,1,9,2,2,'attachments/photo_priya.jpg','2026-04-09 14:19:45'),(19,1,3,1,5,'/uploads/fruit-donation.pdf','2026-04-13 02:55:13'),(20,1,2,2,1,'/uploads/verify.pdf','2026-04-13 09:15:44'),(21,1,3,2,1,'/uploads/verify.pdf','2026-04-13 09:17:32'),(22,4,0,1,1,'uploads/profile/sneha_profile.jpg','2026-04-14 16:31:48'),(23,5,0,1,1,'uploads/profile/sneha_profile.jpg','2026-04-14 16:34:55'),(24,7,0,0,1,'file:///var/mobile/Containers/Data/Application/42A2B424-0D3E-4930-8A1D-39A41905B380/Library/Caches/ExponentExperienceData/@anonymous/MyReactNativeApp-5eb5261e-cb88-45bf-b7ac-96fbd21d4094/DocumentPicker/E6F251BA-AC0C-4BF8-9512-B65FB7D79217.JPG','2026-04-14 18:49:11'),(25,8,0,0,1,'uploads/pawan_profile.jpg','2026-04-17 13:44:48'),(26,9,0,0,2,'uploads/arun_id_proof.pdf','2026-04-17 13:50:13');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability_types`
--

DROP TABLE IF EXISTS `availability_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availability_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability_types`
--

LOCK TABLES `availability_types` WRITE;
/*!40000 ALTER TABLE `availability_types` DISABLE KEYS */;
INSERT INTO `availability_types` VALUES (1,'Emergency'),(2,'Scheduled Donation');
/*!40000 ALTER TABLE `availability_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary_clothing_sizes`
--

DROP TABLE IF EXISTS `beneficiary_clothing_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiary_clothing_sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `beneficiary_id` int NOT NULL,
  `clothing_type` varchar(100) NOT NULL,
  `size_id` int NOT NULL,
  `quantity` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `beneficiary_id` (`beneficiary_id`),
  KEY `size_id` (`size_id`),
  CONSTRAINT `beneficiary_clothing_sizes_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `clothes_beneficiaries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `beneficiary_clothing_sizes_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `clothing_size_row` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary_clothing_sizes`
--

LOCK TABLES `beneficiary_clothing_sizes` WRITE;
/*!40000 ALTER TABLE `beneficiary_clothing_sizes` DISABLE KEYS */;
INSERT INTO `beneficiary_clothing_sizes` VALUES (1,1,'Shirt',1,2),(2,1,'Pants',2,2),(3,2,'Dress',3,1);
/*!40000 ALTER TABLE `beneficiary_clothing_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_groups`
--

DROP TABLE IF EXISTS `blood_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_groups`
--

LOCK TABLES `blood_groups` WRITE;
/*!40000 ALTER TABLE `blood_groups` DISABLE KEYS */;
INSERT INTO `blood_groups` VALUES (2,'A-'),(1,'A+'),(6,'AB-'),(5,'AB+'),(4,'B-'),(3,'B+'),(8,'O-'),(7,'O+');
/*!40000 ALTER TABLE `blood_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes_age_groups`
--

DROP TABLE IF EXISTS `clothes_age_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothes_age_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes_age_groups`
--

LOCK TABLES `clothes_age_groups` WRITE;
/*!40000 ALTER TABLE `clothes_age_groups` DISABLE KEYS */;
INSERT INTO `clothes_age_groups` VALUES (5,'Adult'),(3,'Child'),(1,'Infant'),(6,'Senior'),(4,'Teen'),(2,'Toddler');
/*!40000 ALTER TABLE `clothes_age_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes_beneficiaries`
--

DROP TABLE IF EXISTS `clothes_beneficiaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothes_beneficiaries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clothes_request_id` int NOT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `age_group` int DEFAULT NULL,
  `gender_preference` int NOT NULL,
  `clothing_category_id` int NOT NULL,
  `need_by_date` date DEFAULT NULL,
  `urgency_level_id` int NOT NULL,
  `verification_document_id` int DEFAULT NULL,
  `beneficiary_photo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clothes_request_id` (`clothes_request_id`),
  KEY `age_group` (`age_group`),
  KEY `gender_preference` (`gender_preference`),
  KEY `clothing_category_id` (`clothing_category_id`),
  KEY `urgency_level_id` (`urgency_level_id`),
  KEY `verification_document_id` (`verification_document_id`),
  KEY `beneficiary_photo_id` (`beneficiary_photo_id`),
  CONSTRAINT `clothes_beneficiaries_ibfk_1` FOREIGN KEY (`clothes_request_id`) REFERENCES `clothes_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `clothes_beneficiaries_ibfk_2` FOREIGN KEY (`age_group`) REFERENCES `clothes_age_groups` (`id`),
  CONSTRAINT `clothes_beneficiaries_ibfk_3` FOREIGN KEY (`gender_preference`) REFERENCES `gender` (`id`),
  CONSTRAINT `clothes_beneficiaries_ibfk_4` FOREIGN KEY (`clothing_category_id`) REFERENCES `clothing_categories` (`id`),
  CONSTRAINT `clothes_beneficiaries_ibfk_5` FOREIGN KEY (`urgency_level_id`) REFERENCES `urgency_levels` (`id`),
  CONSTRAINT `clothes_beneficiaries_ibfk_6` FOREIGN KEY (`verification_document_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `clothes_beneficiaries_ibfk_7` FOREIGN KEY (`beneficiary_photo_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes_beneficiaries`
--

LOCK TABLES `clothes_beneficiaries` WRITE;
/*!40000 ALTER TABLE `clothes_beneficiaries` DISABLE KEYS */;
INSERT INTO `clothes_beneficiaries` VALUES (1,9,'Arun Kumar',3,1,5,'2026-04-15',2,15,16),(2,9,'Priya Sharma',2,2,5,'2026-04-20',1,17,18);
/*!40000 ALTER TABLE `clothes_beneficiaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes_donations`
--

DROP TABLE IF EXISTS `clothes_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothes_donations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `description` text NOT NULL,
  `pickup_type_id` int DEFAULT NULL,
  `available_date` date DEFAULT NULL,
  `verification_image_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notes` text,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `verification_image_id` (`verification_image_id`),
  KEY `pickup_type_id` (`pickup_type_id`),
  KEY `fk_clothes_donations_category` (`category_id`),
  CONSTRAINT `clothes_donations_ibfk_1` FOREIGN KEY (`verification_image_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `clothes_donations_ibfk_2` FOREIGN KEY (`pickup_type_id`) REFERENCES `donor_food_delivery_preferences` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_clothes_donations_category` FOREIGN KEY (`category_id`) REFERENCES `donor_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes_donations`
--

LOCK TABLES `clothes_donations` WRITE;
/*!40000 ALTER TABLE `clothes_donations` DISABLE KEYS */;
INSERT INTO `clothes_donations` VALUES (3,1,'Winter jackets for donation',1,'2026-04-15',21,'2026-04-13 09:17:32','2026-04-13 09:17:32','Please call before pickup',2);
/*!40000 ALTER TABLE `clothes_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes_requests`
--

DROP TABLE IF EXISTS `clothes_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothes_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `status_id` int DEFAULT NULL,
  `urgency_id` int DEFAULT NULL,
  `request_title` varchar(255) NOT NULL,
  `request_description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(1) DEFAULT '0',
  `reject_reason` text,
  `amount_requested` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `status_id` (`status_id`),
  KEY `urgency_id` (`urgency_id`),
  CONSTRAINT `clothes_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `clothes_requests_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `request_categories` (`id`),
  CONSTRAINT `clothes_requests_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `request_status_master` (`id`) ON DELETE SET NULL,
  CONSTRAINT `clothes_requests_ibfk_4` FOREIGN KEY (`urgency_id`) REFERENCES `urgency_levels` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes_requests`
--

LOCK TABLES `clothes_requests` WRITE;
/*!40000 ALTER TABLE `clothes_requests` DISABLE KEYS */;
INSERT INTO `clothes_requests` VALUES (9,1,2,2,2,'Clothes Request for Summer Drive','Distributing clothes for children in need','2026-04-09 14:19:45','2026-04-21 08:52:24',0,NULL,101),(10,1,2,2,2,'data','data','2026-04-09 14:19:45','2026-04-21 08:52:24',0,NULL,11);
/*!40000 ALTER TABLE `clothes_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothing_categories`
--

DROP TABLE IF EXISTS `clothing_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothing_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothing_categories`
--

LOCK TABLES `clothing_categories` WRITE;
/*!40000 ALTER TABLE `clothing_categories` DISABLE KEYS */;
INSERT INTO `clothing_categories` VALUES (1,'Casual Wear'),(4,'Formal Wear'),(2,'School Uniforms'),(5,'Sports Wear'),(3,'Winter Wear');
/*!40000 ALTER TABLE `clothing_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothing_size_row`
--

DROP TABLE IF EXISTS `clothing_size_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothing_size_row` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT 'Size options like XS, S, M, L, XL',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothing_size_row`
--

LOCK TABLES `clothing_size_row` WRITE;
/*!40000 ALTER TABLE `clothing_size_row` DISABLE KEYS */;
INSERT INTO `clothing_size_row` VALUES (4,'L'),(3,'M'),(2,'S'),(5,'XL'),(1,'XS'),(6,'XXL');
/*!40000 ALTER TABLE `clothing_size_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consent_types`
--

DROP TABLE IF EXISTS `consent_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consent_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consent_types`
--

LOCK TABLES `consent_types` WRITE;
/*!40000 ALTER TABLE `consent_types` DISABLE KEYS */;
INSERT INTO `consent_types` VALUES (2,'Agree to be Contacted'),(1,'Confirm Information');
/*!40000 ALTER TABLE `consent_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_required`
--

DROP TABLE IF EXISTS `delivery_required`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_required` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_required`
--

LOCK TABLES `delivery_required` WRITE;
/*!40000 ALTER TABLE `delivery_required` DISABLE KEYS */;
INSERT INTO `delivery_required` VALUES (2,'No'),(1,'Yes');
/*!40000 ALTER TABLE `delivery_required` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation_events`
--

DROP TABLE IF EXISTS `donation_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation_events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `donation_id` bigint NOT NULL,
  `event_type` enum('CREATED','ORDER_CREATED','PAYMENT_SUCCESS','PAYMENT_FAILED','WEBHOOK_CONFIRMED','QR_SUBMITTED','VERIFIED','REJECTED') DEFAULT NULL,
  `event_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_event_donation` (`donation_id`),
  CONSTRAINT `fk_event_donation` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_events`
--

LOCK TABLES `donation_events` WRITE;
/*!40000 ALTER TABLE `donation_events` DISABLE KEYS */;
INSERT INTO `donation_events` VALUES (1,1,'ORDER_CREATED','null','2026-04-16 15:42:09'),(2,2,'ORDER_CREATED','null','2026-04-16 16:29:33'),(3,3,'ORDER_CREATED','null','2026-04-16 16:39:14'),(4,4,'ORDER_CREATED','null','2026-04-16 17:37:32'),(5,5,'ORDER_CREATED','null','2026-04-20 21:17:32'),(6,6,'ORDER_CREATED','null','2026-04-20 21:22:41'),(7,7,'ORDER_CREATED','null','2026-04-20 21:25:56'),(8,8,'ORDER_CREATED','null','2026-04-20 21:28:05'),(9,9,'ORDER_CREATED','null','2026-04-20 21:30:30'),(10,10,'ORDER_CREATED','null','2026-04-20 21:30:42'),(11,11,'ORDER_CREATED','null','2026-04-20 21:39:16'),(12,12,'ORDER_CREATED','null','2026-04-20 21:42:15'),(13,13,'ORDER_CREATED','null','2026-04-20 21:47:17');
/*!40000 ALTER TABLE `donation_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `donor_name` varchar(100) NOT NULL,
  `donor_email` varchar(150) NOT NULL,
  `donor_phone` varchar(15) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(10) DEFAULT 'INR',
  `payment_method` enum('RAZORPAY','QR') NOT NULL,
  `status` enum('CREATED','PAYMENT_PENDING','PAID','FAILED','VERIFIED','REJECTED') DEFAULT 'CREATED',
  `receipt_number` varchar(50) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `receipt_number` (`receipt_number`),
  UNIQUE KEY `idx_receipt` (`receipt_number`),
  KEY `idx_donation_user` (`user_id`),
  CONSTRAINT `fk_donation_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (1,NULL,'lokesh v','lokeshv5844@gmail.com','9597670814',40.00,'INR','RAZORPAY','PAID','DON-2026-000001',NULL,'2026-04-16 15:42:09','2026-04-16 15:44:45'),(2,NULL,'abith','abithvinoth213@gmail.com','9597670814',70.00,'INR','RAZORPAY','PAID','DON-2026-000002',NULL,'2026-04-16 16:29:33','2026-04-16 16:31:28'),(3,NULL,'swathi','swathi@gmail.com','9597670814',10.00,'INR','RAZORPAY','PAID','DON-2026-000003',NULL,'2026-04-16 16:39:14','2026-04-16 16:40:55'),(4,NULL,'shreyas','shreyas@gmail.com','9597680814',100.00,'INR','RAZORPAY','PAID','DON-2026-000004',NULL,'2026-04-16 17:37:31','2026-04-16 17:40:45'),(5,NULL,'Priya Sharma','user@example.com','9999999999',330000.00,'INR','RAZORPAY','CREATED','DON-2026-000005',NULL,'2026-04-20 21:17:31','2026-04-20 21:17:32'),(6,NULL,'Priya Sharma','user@example.com','9999999999',330000.00,'INR','RAZORPAY','CREATED','DON-2026-000006',NULL,'2026-04-20 21:22:40','2026-04-20 21:22:41'),(7,NULL,'Priya Sharma','user@example.com','9999999999',330000.00,'INR','RAZORPAY','CREATED','DON-2026-000007',NULL,'2026-04-20 21:25:55','2026-04-20 21:25:55'),(8,NULL,'Priya Sharma','user@example.com','9999999999',330000.00,'INR','RAZORPAY','CREATED','DON-2026-000008',NULL,'2026-04-20 21:28:05','2026-04-20 21:28:05'),(9,NULL,'Priya Sharma','user@example.com','9999999999',330000.00,'INR','RAZORPAY','CREATED','DON-2026-000009',NULL,'2026-04-20 21:30:30','2026-04-20 21:30:30'),(10,NULL,'John Doe','lokeshv5844@gmail.com','9876543210',3300.00,'INR','RAZORPAY','CREATED','DON-2026-000010',NULL,'2026-04-20 21:30:42','2026-04-20 21:30:42'),(11,NULL,'John Doe','lokeshv5844@gmail.com','9876543210',55000.00,'INR','RAZORPAY','CREATED','DON-2026-000011',NULL,'2026-04-20 21:39:16','2026-04-20 21:39:16'),(12,NULL,'John Doe','lokeshv5844@gmail.com','9876543210',55000.00,'INR','RAZORPAY','CREATED','DON-2026-000012',NULL,'2026-04-20 21:42:14','2026-04-20 21:42:14'),(13,NULL,'John Doe','lokeshv5844@gmail.com','9876543210',55000.00,'INR','RAZORPAY','CREATED','DON-2026-000013',NULL,'2026-04-20 21:47:16','2026-04-20 21:47:17');
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_availability_types`
--

DROP TABLE IF EXISTS `donor_availability_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_availability_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_availability_types`
--

LOCK TABLES `donor_availability_types` WRITE;
/*!40000 ALTER TABLE `donor_availability_types` DISABLE KEYS */;
INSERT INTO `donor_availability_types` VALUES (1,'Emergency'),(2,'Scheduled');
/*!40000 ALTER TABLE `donor_availability_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_categories`
--

DROP TABLE IF EXISTS `donor_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` varchar(50) NOT NULL,
  `category_type` varchar(100) NOT NULL COMMENT 'e.g., Food, Clothes, Medical, etc.',
  `backgroundColor` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_categories`
--

LOCK TABLES `donor_categories` WRITE;
/*!40000 ALTER TABLE `donor_categories` DISABLE KEYS */;
INSERT INTO `donor_categories` VALUES (1,'1','Food','#fff','food'),(2,'2','Clothes','#fff','clothes'),(3,'3','Medical','#fff','medical');
/*!40000 ALTER TABLE `donor_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_cloth_categories`
--

DROP TABLE IF EXISTS `donor_cloth_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_cloth_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_cloth_categories`
--

LOCK TABLES `donor_cloth_categories` WRITE;
/*!40000 ALTER TABLE `donor_cloth_categories` DISABLE KEYS */;
INSERT INTO `donor_cloth_categories` VALUES (3,'Kids'),(1,'Men'),(2,'Women');
/*!40000 ALTER TABLE `donor_cloth_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_cloth_conditions`
--

DROP TABLE IF EXISTS `donor_cloth_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_cloth_conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_cloth_conditions`
--

LOCK TABLES `donor_cloth_conditions` WRITE;
/*!40000 ALTER TABLE `donor_cloth_conditions` DISABLE KEYS */;
INSERT INTO `donor_cloth_conditions` VALUES (3,'Fair'),(2,'Good'),(1,'New');
/*!40000 ALTER TABLE `donor_cloth_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_cloth_sizes`
--

DROP TABLE IF EXISTS `donor_cloth_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_cloth_sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_cloth_sizes`
--

LOCK TABLES `donor_cloth_sizes` WRITE;
/*!40000 ALTER TABLE `donor_cloth_sizes` DISABLE KEYS */;
INSERT INTO `donor_cloth_sizes` VALUES (3,'L'),(2,'M'),(1,'S'),(4,'XL');
/*!40000 ALTER TABLE `donor_cloth_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_clothes_donation_details`
--

DROP TABLE IF EXISTS `donor_clothes_donation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_clothes_donation_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clothes_donation_id` int NOT NULL,
  `category_id` int NOT NULL,
  `size_id` int NOT NULL,
  `condition_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clothes_donation_id` (`clothes_donation_id`),
  KEY `category_id` (`category_id`),
  KEY `size_id` (`size_id`),
  KEY `condition_id` (`condition_id`),
  CONSTRAINT `donor_clothes_donation_details_ibfk_1` FOREIGN KEY (`clothes_donation_id`) REFERENCES `clothes_donations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `donor_clothes_donation_details_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `donor_cloth_categories` (`id`),
  CONSTRAINT `donor_clothes_donation_details_ibfk_3` FOREIGN KEY (`size_id`) REFERENCES `donor_cloth_sizes` (`id`),
  CONSTRAINT `donor_clothes_donation_details_ibfk_4` FOREIGN KEY (`condition_id`) REFERENCES `donor_cloth_conditions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_clothes_donation_details`
--

LOCK TABLES `donor_clothes_donation_details` WRITE;
/*!40000 ALTER TABLE `donor_clothes_donation_details` DISABLE KEYS */;
INSERT INTO `donor_clothes_donation_details` VALUES (1,3,3,2,1,5);
/*!40000 ALTER TABLE `donor_clothes_donation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_consent_types`
--

DROP TABLE IF EXISTS `donor_consent_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_consent_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_consent_types`
--

LOCK TABLES `donor_consent_types` WRITE;
/*!40000 ALTER TABLE `donor_consent_types` DISABLE KEYS */;
INSERT INTO `donor_consent_types` VALUES (1,'I confirm the information is true'),(2,'I agree to be contacted for donation');
/*!40000 ALTER TABLE `donor_consent_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_food_delivery_preferences`
--

DROP TABLE IF EXISTS `donor_food_delivery_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_food_delivery_preferences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT 'Pickup, Drop-off',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_food_delivery_preferences`
--

LOCK TABLES `donor_food_delivery_preferences` WRITE;
/*!40000 ALTER TABLE `donor_food_delivery_preferences` DISABLE KEYS */;
INSERT INTO `donor_food_delivery_preferences` VALUES (2,'Drop-off'),(1,'Pickup');
/*!40000 ALTER TABLE `donor_food_delivery_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_food_donation_details`
--

DROP TABLE IF EXISTS `donor_food_donation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_food_donation_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `food_donation_id` int NOT NULL,
  `items` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `unit_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `food_donation_id` (`food_donation_id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `donor_food_donation_details_ibfk_1` FOREIGN KEY (`food_donation_id`) REFERENCES `food_donations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `donor_food_donation_details_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `donor_food_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_food_donation_details`
--

LOCK TABLES `donor_food_donation_details` WRITE;
/*!40000 ALTER TABLE `donor_food_donation_details` DISABLE KEYS */;
INSERT INTO `donor_food_donation_details` VALUES (3,3,'Apple',10,1);
/*!40000 ALTER TABLE `donor_food_donation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_food_unit`
--

DROP TABLE IF EXISTS `donor_food_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_food_unit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT 'Plates, Kg',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_food_unit`
--

LOCK TABLES `donor_food_unit` WRITE;
/*!40000 ALTER TABLE `donor_food_unit` DISABLE KEYS */;
INSERT INTO `donor_food_unit` VALUES (2,'Grams'),(1,'Kg'),(3,'Liters'),(6,'Packets'),(4,'Pieces'),(5,'Plates');
/*!40000 ALTER TABLE `donor_food_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_organ_donations`
--

DROP TABLE IF EXISTS `donor_organ_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_organ_donations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_organ_donations`
--

LOCK TABLES `donor_organ_donations` WRITE;
/*!40000 ALTER TABLE `donor_organ_donations` DISABLE KEYS */;
INSERT INTO `donor_organ_donations` VALUES (1,'Kidney'),(2,'Liver'),(3,'Heart'),(4,'Lung'),(5,'Pancreas'),(6,'Intestine');
/*!40000 ALTER TABLE `donor_organ_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_stemcell_donations`
--

DROP TABLE IF EXISTS `donor_stemcell_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_stemcell_donations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_stemcell_donations`
--

LOCK TABLES `donor_stemcell_donations` WRITE;
/*!40000 ALTER TABLE `donor_stemcell_donations` DISABLE KEYS */;
INSERT INTO `donor_stemcell_donations` VALUES (1,'Bone marrow'),(2,'Periphearal blood'),(3,'Core blood');
/*!40000 ALTER TABLE `donor_stemcell_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor_tissue_donations`
--

DROP TABLE IF EXISTS `donor_tissue_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor_tissue_donations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_tissue_donations`
--

LOCK TABLES `donor_tissue_donations` WRITE;
/*!40000 ALTER TABLE `donor_tissue_donations` DISABLE KEYS */;
INSERT INTO `donor_tissue_donations` VALUES (1,'Cornea'),(2,'Skin'),(3,'Bone'),(4,'Heart valve'),(5,'Tendon');
/*!40000 ALTER TABLE `donor_tissue_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_request_students`
--

DROP TABLE IF EXISTS `education_request_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_request_students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `education_request_id` int NOT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `grade_level` varchar(50) DEFAULT NULL,
  `education_support_type_id` int NOT NULL,
  `amount_requested` int DEFAULT NULL,
  `institution_name` varchar(255) DEFAULT NULL,
  `college_id` varchar(50) DEFAULT NULL,
  `institution_address` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(100) DEFAULT NULL,
  `contact_person_phone` varchar(15) DEFAULT NULL,
  `verification_document_id` int DEFAULT NULL,
  `education_support_document_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `education_request_id` (`education_request_id`),
  KEY `education_support_type_id` (`education_support_type_id`),
  KEY `verification_document_id` (`verification_document_id`),
  KEY `ix_education_request_students_id` (`id`),
  KEY `fk_edu_support_doc` (`education_support_document_id`),
  CONSTRAINT `education_request_students_ibfk_1` FOREIGN KEY (`education_request_id`) REFERENCES `education_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `education_request_students_ibfk_2` FOREIGN KEY (`education_support_type_id`) REFERENCES `education_support_types` (`id`),
  CONSTRAINT `education_request_students_ibfk_3` FOREIGN KEY (`verification_document_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_edu_support_doc` FOREIGN KEY (`education_support_document_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_request_students`
--

LOCK TABLES `education_request_students` WRITE;
/*!40000 ALTER TABLE `education_request_students` DISABLE KEYS */;
INSERT INTO `education_request_students` VALUES (1,2,'Arun Kumar',18,'12th',1,50000,'ABC Higher Secondary School','SCH12345','Chennai, Tamil Nadu','Principal Rajesh','9876543210',11,12),(2,2,'Priya',20,'B.Sc Computer Science',2,75000,'XYZ College','COL56789','Madurai, Tamil Nadu','Admin Office','9123456780',13,14);
/*!40000 ALTER TABLE `education_request_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_requests`
--

DROP TABLE IF EXISTS `education_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `status_id` int DEFAULT NULL,
  `urgency_id` int DEFAULT NULL,
  `request_title` varchar(255) NOT NULL,
  `request_description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(1) DEFAULT '0',
  `reject_reason` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `status_id` (`status_id`),
  KEY `urgency_id` (`urgency_id`),
  CONSTRAINT `education_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `education_requests_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `request_categories` (`id`),
  CONSTRAINT `education_requests_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `request_status_master` (`id`) ON DELETE SET NULL,
  CONSTRAINT `education_requests_ibfk_4` FOREIGN KEY (`urgency_id`) REFERENCES `urgency_levels` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_requests`
--

LOCK TABLES `education_requests` WRITE;
/*!40000 ALTER TABLE `education_requests` DISABLE KEYS */;
INSERT INTO `education_requests` VALUES (2,1,3,2,2,'Education Support Required','Need financial help for students','2026-04-09 10:07:12','2026-04-21 10:12:58',0,NULL);
/*!40000 ALTER TABLE `education_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_support_documents`
--

DROP TABLE IF EXISTS `education_support_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_support_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_support_documents`
--

LOCK TABLES `education_support_documents` WRITE;
/*!40000 ALTER TABLE `education_support_documents` DISABLE KEYS */;
INSERT INTO `education_support_documents` VALUES (2,'Admission Letter'),(4,'Bonafide Certificate'),(3,'School ID Card'),(1,'Tuition Fee Receipt');
/*!40000 ALTER TABLE `education_support_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_support_types`
--

DROP TABLE IF EXISTS `education_support_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_support_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_support_types`
--

LOCK TABLES `education_support_types` WRITE;
/*!40000 ALTER TABLE `education_support_types` DISABLE KEYS */;
INSERT INTO `education_support_types` VALUES (2,'Books'),(5,'Exam Fees'),(4,'Stationery'),(1,'Tuition'),(3,'Uniform');
/*!40000 ALTER TABLE `education_support_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_age_groups`
--

DROP TABLE IF EXISTS `food_age_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_age_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_age_groups`
--

LOCK TABLES `food_age_groups` WRITE;
/*!40000 ALTER TABLE `food_age_groups` DISABLE KEYS */;
INSERT INTO `food_age_groups` VALUES (2,'Adults'),(1,'Children'),(3,'Elderly');
/*!40000 ALTER TABLE `food_age_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_daily_meal_requests`
--

DROP TABLE IF EXISTS `food_daily_meal_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_daily_meal_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `food_request_category_id` bigint unsigned NOT NULL,
  `status_id` int DEFAULT NULL,
  `urgency_id` int DEFAULT NULL,
  `request_title` varchar(255) NOT NULL,
  `request_description` text,
  `number_of_people` int NOT NULL,
  `age_group_id` bigint unsigned DEFAULT NULL,
  `special_need_id` bigint unsigned DEFAULT NULL,
  `meal_type_id` int NOT NULL,
  `frequency_id` bigint unsigned NOT NULL,
  `duration_id` bigint unsigned NOT NULL,
  `custom_days` varchar(100) DEFAULT NULL,
  `custom_date_range` varchar(100) DEFAULT NULL,
  `time_slot_id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `delivery_required` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(1) DEFAULT '0',
  `reject_reason` text,
  `amount_requested` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_daily_user` (`user_id`),
  KEY `fk_daily_category` (`food_request_category_id`),
  KEY `fk_daily_status` (`status_id`),
  KEY `fk_daily_urgency` (`urgency_id`),
  KEY `fk_daily_age_group` (`age_group_id`),
  KEY `fk_daily_special_need` (`special_need_id`),
  KEY `fk_daily_meal_type` (`meal_type_id`),
  KEY `fk_daily_frequency` (`frequency_id`),
  KEY `fk_daily_duration` (`duration_id`),
  KEY `fk_daily_time_slot` (`time_slot_id`),
  CONSTRAINT `fk_daily_age_group` FOREIGN KEY (`age_group_id`) REFERENCES `food_age_groups` (`id`),
  CONSTRAINT `fk_daily_category` FOREIGN KEY (`food_request_category_id`) REFERENCES `food_request_categories` (`id`),
  CONSTRAINT `fk_daily_duration` FOREIGN KEY (`duration_id`) REFERENCES `food_durations` (`id`),
  CONSTRAINT `fk_daily_frequency` FOREIGN KEY (`frequency_id`) REFERENCES `food_meal_frequencies` (`id`),
  CONSTRAINT `fk_daily_meal_type` FOREIGN KEY (`meal_type_id`) REFERENCES `food_meal_types` (`id`),
  CONSTRAINT `fk_daily_special_need` FOREIGN KEY (`special_need_id`) REFERENCES `food_special_needs` (`id`),
  CONSTRAINT `fk_daily_status` FOREIGN KEY (`status_id`) REFERENCES `request_status_master` (`id`),
  CONSTRAINT `fk_daily_time_slot` FOREIGN KEY (`time_slot_id`) REFERENCES `food_time_slots` (`id`),
  CONSTRAINT `fk_daily_urgency` FOREIGN KEY (`urgency_id`) REFERENCES `urgency_levels` (`id`),
  CONSTRAINT `fk_daily_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_daily_meal_requests`
--

LOCK TABLES `food_daily_meal_requests` WRITE;
/*!40000 ALTER TABLE `food_daily_meal_requests` DISABLE KEYS */;
INSERT INTO `food_daily_meal_requests` VALUES (1,1,2,2,2,'Daily Meal for Students','Requesting daily meals for students',30,2,1,1,2,1,NULL,NULL,2,'456 School Road','Opposite Library',0,'2026-04-09 14:55:20','2026-04-21 10:11:28',0,NULL,10);
/*!40000 ALTER TABLE `food_daily_meal_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_donations`
--

DROP TABLE IF EXISTS `food_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_donations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `donation_title` varchar(255) NOT NULL,
  `delivery_preference_id` int DEFAULT NULL,
  `preferred_date` date DEFAULT NULL,
  `verification_document_id` int DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `delivery_preference_id` (`delivery_preference_id`),
  KEY `verification_document_id` (`verification_document_id`),
  CONSTRAINT `food_donations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `food_donations_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `donor_categories` (`id`),
  CONSTRAINT `food_donations_ibfk_3` FOREIGN KEY (`delivery_preference_id`) REFERENCES `donor_food_delivery_preferences` (`id`),
  CONSTRAINT `food_donations_ibfk_4` FOREIGN KEY (`verification_document_id`) REFERENCES `attachments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_donations`
--

LOCK TABLES `food_donations` WRITE;
/*!40000 ALTER TABLE `food_donations` DISABLE KEYS */;
INSERT INTO `food_donations` VALUES (3,1,1,'Fresh fruits donation',1,'2026-04-14',19,'Please deliver before noon.','2026-04-13 02:55:13','2026-04-13 02:55:13');
/*!40000 ALTER TABLE `food_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_durations`
--

DROP TABLE IF EXISTS `food_durations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_durations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_durations`
--

LOCK TABLES `food_durations` WRITE;
/*!40000 ALTER TABLE `food_durations` DISABLE KEYS */;
INSERT INTO `food_durations` VALUES (2,'1 Month'),(1,'1 Week'),(3,'Custom');
/*!40000 ALTER TABLE `food_durations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_meal_frequencies`
--

DROP TABLE IF EXISTS `food_meal_frequencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_meal_frequencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_meal_frequencies`
--

LOCK TABLES `food_meal_frequencies` WRITE;
/*!40000 ALTER TABLE `food_meal_frequencies` DISABLE KEYS */;
INSERT INTO `food_meal_frequencies` VALUES (3,'Custom'),(1,'Daily'),(2,'Weekly');
/*!40000 ALTER TABLE `food_meal_frequencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_meal_types`
--

DROP TABLE IF EXISTS `food_meal_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_meal_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_meal_types`
--

LOCK TABLES `food_meal_types` WRITE;
/*!40000 ALTER TABLE `food_meal_types` DISABLE KEYS */;
INSERT INTO `food_meal_types` VALUES (1,'Breakfast'),(3,'Dinner'),(2,'Lunch'),(4,'Snacks');
/*!40000 ALTER TABLE `food_meal_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_request_categories`
--

DROP TABLE IF EXISTS `food_request_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_request_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `food_type` varchar(50) NOT NULL,
  `food_type_description` varchar(255) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_request_categories`
--

LOCK TABLES `food_request_categories` WRITE;
/*!40000 ALTER TABLE `food_request_categories` DISABLE KEYS */;
INSERT INTO `food_request_categories` VALUES (1,'Cooked Food (One-time)','One-time cooked food support for immediate needs','CookedFood',22,'cookedFood'),(2,'Daily Meal Support','Regular daily meal support for individuals or families','DailyMeal',22,'dailyMeal'),(3,'Grocery / Essentials','Provision of groceries and essential food items','Grocery',22,'grocery');
/*!40000 ALTER TABLE `food_request_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_requests_cooked_food`
--

DROP TABLE IF EXISTS `food_requests_cooked_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_requests_cooked_food` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `food_request_category_id` bigint unsigned NOT NULL,
  `status_id` int DEFAULT NULL,
  `urgency_id` int DEFAULT NULL,
  `request_title` varchar(255) NOT NULL,
  `request_description` text,
  `food_type_id` int NOT NULL,
  `meal_type_id` int NOT NULL,
  `number_of_people` int NOT NULL,
  `plates_required` int NOT NULL,
  `required_date` date NOT NULL,
  `time_slot_id` int NOT NULL,
  `urgency_level_id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `delivery_required` tinyint(1) NOT NULL DEFAULT '0',
  `reject_reason` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_cooked_user` (`user_id`),
  KEY `fk_cooked_category` (`food_request_category_id`),
  KEY `fk_cooked_status` (`status_id`),
  KEY `fk_cooked_urgency` (`urgency_id`),
  KEY `fk_cooked_food_type` (`food_type_id`),
  KEY `fk_cooked_meal_type` (`meal_type_id`),
  KEY `fk_cooked_time_slot` (`time_slot_id`),
  KEY `fk_cooked_food_urgency` (`urgency_level_id`),
  CONSTRAINT `fk_cooked_category` FOREIGN KEY (`food_request_category_id`) REFERENCES `food_request_categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_cooked_food_type` FOREIGN KEY (`food_type_id`) REFERENCES `food_types` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_cooked_food_urgency` FOREIGN KEY (`urgency_level_id`) REFERENCES `food_urgency_levels` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_cooked_meal_type` FOREIGN KEY (`meal_type_id`) REFERENCES `food_meal_types` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_cooked_status` FOREIGN KEY (`status_id`) REFERENCES `request_status_master` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_cooked_time_slot` FOREIGN KEY (`time_slot_id`) REFERENCES `food_time_slots` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_cooked_urgency` FOREIGN KEY (`urgency_id`) REFERENCES `urgency_levels` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_cooked_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_requests_cooked_food`
--

LOCK TABLES `food_requests_cooked_food` WRITE;
/*!40000 ALTER TABLE `food_requests_cooked_food` DISABLE KEYS */;
INSERT INTO `food_requests_cooked_food` VALUES (1,1,1,2,2,'Cooked Food for Event','Need cooked meals for children event',1,2,50,50,'2026-04-15',3,2,'123 Main Street','Near City Park',1,NULL,'2026-04-09 14:57:55','2026-04-20 15:08:37',0);
/*!40000 ALTER TABLE `food_requests_cooked_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_special_needs`
--

DROP TABLE IF EXISTS `food_special_needs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_special_needs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_special_needs`
--

LOCK TABLES `food_special_needs` WRITE;
/*!40000 ALTER TABLE `food_special_needs` DISABLE KEYS */;
INSERT INTO `food_special_needs` VALUES (1,'Diabetic'),(2,'Medical Diet'),(3,'None');
/*!40000 ALTER TABLE `food_special_needs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_time_slots`
--

DROP TABLE IF EXISTS `food_time_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_time_slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_time_slots`
--

LOCK TABLES `food_time_slots` WRITE;
/*!40000 ALTER TABLE `food_time_slots` DISABLE KEYS */;
INSERT INTO `food_time_slots` VALUES (2,'12-2 PM'),(3,'6-8 PM'),(1,'8-10 AM');
/*!40000 ALTER TABLE `food_time_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_types`
--

DROP TABLE IF EXISTS `food_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_types`
--

LOCK TABLES `food_types` WRITE;
/*!40000 ALTER TABLE `food_types` DISABLE KEYS */;
INSERT INTO `food_types` VALUES (2,'Non-Vegetarian'),(3,'Vegan'),(1,'Vegetarian');
/*!40000 ALTER TABLE `food_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_urgency_levels`
--

DROP TABLE IF EXISTS `food_urgency_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_urgency_levels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_urgency_levels`
--

LOCK TABLES `food_urgency_levels` WRITE;
/*!40000 ALTER TABLE `food_urgency_levels` DISABLE KEYS */;
INSERT INTO `food_urgency_levels` VALUES (3,'Flexible (within a week)'),(1,'Immediate (within 2 hours)'),(2,'Urgent (within 24 hours)');
/*!40000 ALTER TABLE `food_urgency_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(50) NOT NULL COMMENT 'e.g., Male, Female, Other',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gender_name` (`gender_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (2,'Female'),(1,'Male'),(3,'Other');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_essentials_items`
--

DROP TABLE IF EXISTS `grocery_essentials_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_essentials_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grocery_essentials_request_id` int NOT NULL,
  `item_master_id` bigint unsigned DEFAULT NULL,
  `custom_item_name` varchar(255) DEFAULT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_id` bigint unsigned NOT NULL,
  `priority_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_item_request` (`grocery_essentials_request_id`),
  KEY `fk_item_master` (`item_master_id`),
  KEY `fk_item_unit` (`unit_id`),
  KEY `fk_item_priority` (`priority_id`),
  CONSTRAINT `fk_item_master` FOREIGN KEY (`item_master_id`) REFERENCES `grocery_item_master` (`id`),
  CONSTRAINT `fk_item_priority` FOREIGN KEY (`priority_id`) REFERENCES `grocery_priority_levels` (`id`),
  CONSTRAINT `fk_item_request` FOREIGN KEY (`grocery_essentials_request_id`) REFERENCES `grocery_essentials_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_item_unit` FOREIGN KEY (`unit_id`) REFERENCES `grocery_unit_options` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_essentials_items`
--

LOCK TABLES `grocery_essentials_items` WRITE;
/*!40000 ALTER TABLE `grocery_essentials_items` DISABLE KEYS */;
INSERT INTO `grocery_essentials_items` VALUES (1,1,1,'Rice',10.00,2,1,'2026-04-09 14:46:53','2026-04-09 14:46:53'),(2,1,2,'Wheat Flour',5.00,2,2,'2026-04-09 14:46:53','2026-04-09 14:46:53');
/*!40000 ALTER TABLE `grocery_essentials_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_essentials_requests`
--

DROP TABLE IF EXISTS `grocery_essentials_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_essentials_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `food_request_category_id` bigint unsigned NOT NULL,
  `status_id` int DEFAULT NULL,
  `urgency_id` int DEFAULT NULL,
  `request_title` varchar(255) NOT NULL,
  `request_description` text,
  `frequency_id` bigint unsigned NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `delivery_required` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(1) DEFAULT '0',
  `reject_reason` text,
  `amount_requested` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grocery_user` (`user_id`),
  KEY `fk_grocery_category` (`food_request_category_id`),
  KEY `fk_grocery_status` (`status_id`),
  KEY `fk_grocery_urgency` (`urgency_id`),
  KEY `fk_grocery_frequency` (`frequency_id`),
  CONSTRAINT `fk_grocery_category` FOREIGN KEY (`food_request_category_id`) REFERENCES `food_request_categories` (`id`),
  CONSTRAINT `fk_grocery_frequency` FOREIGN KEY (`frequency_id`) REFERENCES `food_meal_frequencies` (`id`),
  CONSTRAINT `fk_grocery_status` FOREIGN KEY (`status_id`) REFERENCES `request_status_master` (`id`),
  CONSTRAINT `fk_grocery_urgency` FOREIGN KEY (`urgency_id`) REFERENCES `urgency_levels` (`id`),
  CONSTRAINT `fk_grocery_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_essentials_requests`
--

LOCK TABLES `grocery_essentials_requests` WRITE;
/*!40000 ALTER TABLE `grocery_essentials_requests` DISABLE KEYS */;
INSERT INTO `grocery_essentials_requests` VALUES (1,1,3,2,2,'Grocery Essentials for Family','Need groceries for a family of four',1,'789 Market Lane','Near Grocery Store',1,'2026-04-09 14:46:53','2026-04-21 08:53:46',0,NULL,11);
/*!40000 ALTER TABLE `grocery_essentials_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_item_master`
--

DROP TABLE IF EXISTS `grocery_item_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_item_master` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_item_master`
--

LOCK TABLES `grocery_item_master` WRITE;
/*!40000 ALTER TABLE `grocery_item_master` DISABLE KEYS */;
INSERT INTO `grocery_item_master` VALUES (3,'Milk'),(4,'Oil'),(1,'Rice'),(5,'Sugar'),(2,'Wheat Flour');
/*!40000 ALTER TABLE `grocery_item_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_priority_levels`
--

DROP TABLE IF EXISTS `grocery_priority_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_priority_levels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_priority_levels`
--

LOCK TABLES `grocery_priority_levels` WRITE;
/*!40000 ALTER TABLE `grocery_priority_levels` DISABLE KEYS */;
INSERT INTO `grocery_priority_levels` VALUES (1,'High'),(3,'Low'),(2,'Medium');
/*!40000 ALTER TABLE `grocery_priority_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_unit_options`
--

DROP TABLE IF EXISTS `grocery_unit_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_unit_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_unit_options`
--

LOCK TABLES `grocery_unit_options` WRITE;
/*!40000 ALTER TABLE `grocery_unit_options` DISABLE KEYS */;
INSERT INTO `grocery_unit_options` VALUES (1,'Kg'),(2,'Litres'),(3,'Packets'),(4,'Units');
/*!40000 ALTER TABLE `grocery_unit_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_categories`
--

DROP TABLE IF EXISTS `medical_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_categories`
--

LOCK TABLES `medical_categories` WRITE;
/*!40000 ALTER TABLE `medical_categories` DISABLE KEYS */;
INSERT INTO `medical_categories` VALUES (5,'Chronic Illness'),(4,'Emergency'),(3,'Medication'),(1,'Surgery'),(2,'Therapy');
/*!40000 ALTER TABLE `medical_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_donation_categories`
--

DROP TABLE IF EXISTS `medical_donation_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_donation_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `size` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_donation_categories`
--

LOCK TABLES `medical_donation_categories` WRITE;
/*!40000 ALTER TABLE `medical_donation_categories` DISABLE KEYS */;
INSERT INTO `medical_donation_categories` VALUES (1,'Blood Donation','Blood, Plasma, Platelets','BloodDonate',1,'2026-04-13 10:21:28',20),(2,'Organ Donation','Kidney, Liver, Heart','OrganDonate',1,'2026-04-13 10:21:28',20),(3,'Tissue Donation','Eyes, Skin, Bones','TissueDonate',1,'2026-04-13 10:21:28',20),(4,'Stem Cell Donation','Bone Marrow, Stem Cells','StemCellDonate',1,'2026-04-13 10:21:28',19),(5,'Milk Donation','Breast Milk for Infants','MilkDonate',1,'2026-04-13 10:21:28',24),(6,'Medical Supplies','Medicines, Equipment','SuppliesDonate',1,'2026-04-13 10:21:28',18);
/*!40000 ALTER TABLE `medical_donation_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_donation_organ_map`
--

DROP TABLE IF EXISTS `medical_donation_organ_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_donation_organ_map` (
  `medical_donation_id` int NOT NULL,
  `donor_organ_donation_id` int NOT NULL,
  PRIMARY KEY (`medical_donation_id`,`donor_organ_donation_id`),
  KEY `donor_organ_donation_id` (`donor_organ_donation_id`),
  CONSTRAINT `medical_donation_organ_map_ibfk_1` FOREIGN KEY (`medical_donation_id`) REFERENCES `medical_donations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `medical_donation_organ_map_ibfk_2` FOREIGN KEY (`donor_organ_donation_id`) REFERENCES `donor_organ_donations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_donation_organ_map`
--

LOCK TABLES `medical_donation_organ_map` WRITE;
/*!40000 ALTER TABLE `medical_donation_organ_map` DISABLE KEYS */;
INSERT INTO `medical_donation_organ_map` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `medical_donation_organ_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_donation_stemcell_map`
--

DROP TABLE IF EXISTS `medical_donation_stemcell_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_donation_stemcell_map` (
  `medical_donation_id` int NOT NULL,
  `donor_stemcell_donation_id` int NOT NULL,
  PRIMARY KEY (`medical_donation_id`,`donor_stemcell_donation_id`),
  KEY `donor_stemcell_donation_id` (`donor_stemcell_donation_id`),
  CONSTRAINT `medical_donation_stemcell_map_ibfk_1` FOREIGN KEY (`medical_donation_id`) REFERENCES `medical_donations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `medical_donation_stemcell_map_ibfk_2` FOREIGN KEY (`donor_stemcell_donation_id`) REFERENCES `donor_stemcell_donations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_donation_stemcell_map`
--

LOCK TABLES `medical_donation_stemcell_map` WRITE;
/*!40000 ALTER TABLE `medical_donation_stemcell_map` DISABLE KEYS */;
INSERT INTO `medical_donation_stemcell_map` VALUES (8,1),(5,3),(8,3);
/*!40000 ALTER TABLE `medical_donation_stemcell_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_donation_tissue_map`
--

DROP TABLE IF EXISTS `medical_donation_tissue_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_donation_tissue_map` (
  `medical_donation_id` int NOT NULL,
  `donor_tissue_donation_id` int NOT NULL,
  PRIMARY KEY (`medical_donation_id`,`donor_tissue_donation_id`),
  KEY `donor_tissue_donation_id` (`donor_tissue_donation_id`),
  CONSTRAINT `medical_donation_tissue_map_ibfk_1` FOREIGN KEY (`medical_donation_id`) REFERENCES `medical_donations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `medical_donation_tissue_map_ibfk_2` FOREIGN KEY (`donor_tissue_donation_id`) REFERENCES `donor_tissue_donations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_donation_tissue_map`
--

LOCK TABLES `medical_donation_tissue_map` WRITE;
/*!40000 ALTER TABLE `medical_donation_tissue_map` DISABLE KEYS */;
INSERT INTO `medical_donation_tissue_map` VALUES (2,3),(2,4);
/*!40000 ALTER TABLE `medical_donation_tissue_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_donations`
--

DROP TABLE IF EXISTS `medical_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_donations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `medical_donation_category_id` int DEFAULT NULL,
  `full_name` varchar(150) NOT NULL,
  `age_group` varchar(150) NOT NULL,
  `gender_id` int NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `blood_group_id` int DEFAULT NULL,
  `milk_volume` int DEFAULT NULL,
  `baby_age_months` int DEFAULT NULL,
  `supply_type` varchar(150) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `major_illness` tinyint(1) DEFAULT '0',
  `recent_surgery` tinyint(1) DEFAULT '0',
  `last_donation_date` date DEFAULT NULL,
  `currently_on_medication` tinyint(1) DEFAULT '0',
  `donation_type` varchar(20) NOT NULL,
  `availability_type_id` int DEFAULT NULL,
  `consent_type_id` int DEFAULT NULL,
  `preferred_hospital` varchar(200) DEFAULT NULL,
  `donation_location` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_md_user` (`user_id`),
  KEY `fk_md_category` (`category_id`),
  KEY `fk_md_medical_category` (`medical_donation_category_id`),
  KEY `fk_md_gender` (`gender_id`),
  KEY `fk_md_blood_group` (`blood_group_id`),
  KEY `fk_md_availability` (`availability_type_id`),
  KEY `fk_md_consent` (`consent_type_id`),
  CONSTRAINT `fk_md_availability` FOREIGN KEY (`availability_type_id`) REFERENCES `donor_availability_types` (`id`),
  CONSTRAINT `fk_md_blood_group` FOREIGN KEY (`blood_group_id`) REFERENCES `blood_groups` (`id`),
  CONSTRAINT `fk_md_category` FOREIGN KEY (`category_id`) REFERENCES `donor_categories` (`id`),
  CONSTRAINT `fk_md_consent` FOREIGN KEY (`consent_type_id`) REFERENCES `donor_consent_types` (`id`),
  CONSTRAINT `fk_md_gender` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `fk_md_medical_category` FOREIGN KEY (`medical_donation_category_id`) REFERENCES `medical_donation_categories` (`id`),
  CONSTRAINT `fk_md_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_donations`
--

LOCK TABLES `medical_donations` WRITE;
/*!40000 ALTER TABLE `medical_donations` DISABLE KEYS */;
INSERT INTO `medical_donations` VALUES (1,1,3,1,'Alice Organ','26-35',2,'1234567890',1,NULL,NULL,NULL,NULL,65.50,0,0,'2024-12-01',0,'organ',1,1,'City Hospital','123 Main St','2026-04-13 14:35:13'),(2,2,3,2,'Bob Tissue','36-45',1,'2345678901',2,NULL,NULL,NULL,NULL,70.00,0,0,'2025-01-10',0,'tissue',2,2,'General Hospital','456 Elm St','2026-04-13 14:38:23'),(3,1,3,3,'Charlie Stemcell','18-25',1,'3456789012',3,NULL,NULL,NULL,NULL,68.00,0,0,'2025-06-15',0,'stemcell',1,1,'Specialty Hospital','789 Oak St','2026-04-13 14:40:32'),(4,1,3,4,'Charlie Stemcell','18-25',1,'3456789012',3,NULL,NULL,NULL,NULL,68.00,0,0,'2025-06-15',0,'stemcell',1,1,'Specialty Hospital','789 Oak St','2026-04-13 14:40:58'),(5,1,3,4,'Charlie Stemcell','18-25',1,'3456789012',3,NULL,NULL,NULL,NULL,68.00,0,0,'2025-06-15',0,'stemcell',1,1,'Specialty Hospital','789 Oak St','2026-04-13 14:42:27'),(6,1,3,5,'Daisy Milk','26-35',2,'4567890123',4,500,6,NULL,NULL,60.00,0,0,'2026-01-20',0,'milk',2,2,'Mother Care Hospital','321 Maple Ave','2026-04-13 14:44:24'),(7,1,3,6,'Eve Supplies','46-55',2,'5678901234',NULL,NULL,NULL,'Bandages',100,62.00,0,0,'2025-11-05',0,'supplies',1,1,'Community Hospital','654 Pine St','2026-04-13 14:45:28'),(8,1,3,4,'Charlie Stemcell lokesh','18-25',1,'3456789012',3,NULL,NULL,NULL,NULL,68.00,0,0,'2025-06-15',0,'stemcell',1,1,'Specialty Hospital','789 Oak St','2026-04-13 14:47:32');
/*!40000 ALTER TABLE `medical_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_requests`
--

DROP TABLE IF EXISTS `medical_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `status_id` int DEFAULT NULL,
  `urgency_id` int DEFAULT NULL,
  `request_title` varchar(255) NOT NULL,
  `request_description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(1) DEFAULT '0',
  `reject_reason` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `status_id` (`status_id`),
  KEY `urgency_id` (`urgency_id`),
  CONSTRAINT `medical_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `medical_requests_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `request_categories` (`id`),
  CONSTRAINT `medical_requests_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `request_status_master` (`id`) ON DELETE SET NULL,
  CONSTRAINT `medical_requests_ibfk_4` FOREIGN KEY (`urgency_id`) REFERENCES `urgency_levels` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_requests`
--

LOCK TABLES `medical_requests` WRITE;
/*!40000 ALTER TABLE `medical_requests` DISABLE KEYS */;
INSERT INTO `medical_requests` VALUES (1,1,4,2,2,'Medical Help Needed','Support required for surgery','2026-04-09 09:47:25','2026-04-20 12:51:16',0,NULL);
/*!40000 ALTER TABLE `medical_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medical_request_id` int NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `age` int DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `medical_condition` varchar(255) DEFAULT NULL,
  `blood_group_id` int DEFAULT NULL,
  `medical_category_id` int DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `hospital_address` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `financial_information` varchar(50) DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `amount_requested` decimal(10,2) DEFAULT NULL,
  `funds_needed_by` date DEFAULT NULL,
  `contact_information` varchar(255) DEFAULT NULL,
  `emergency_contact_name` varchar(255) DEFAULT NULL,
  `support_type_ids` json DEFAULT NULL,
  `attachment_id` int DEFAULT NULL,
  `prescription_id` int DEFAULT NULL,
  `estimation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medical_request_id` (`medical_request_id`),
  KEY `gender_id` (`gender_id`),
  KEY `blood_group_id` (`blood_group_id`),
  KEY `medical_category_id` (`medical_category_id`),
  KEY `fk_patient_attachment` (`attachment_id`),
  KEY `fk_patient_prescription` (`prescription_id`),
  KEY `fk_patient_estimation` (`estimation_id`),
  CONSTRAINT `fk_patient_attachment` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_patient_estimation` FOREIGN KEY (`estimation_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_patient_prescription` FOREIGN KEY (`prescription_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`medical_request_id`) REFERENCES `medical_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `patients_ibfk_2` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `patients_ibfk_3` FOREIGN KEY (`blood_group_id`) REFERENCES `blood_groups` (`id`),
  CONSTRAINT `patients_ibfk_4` FOREIGN KEY (`medical_category_id`) REFERENCES `medical_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,1,'Ramesh',45,1,'Heart Surgery',2,3,'Apollo Hospital','Chennai','Dr. Kumar','Insurance Partial',50000.00,150000.00,'2026-05-20','9876543210','Suresh','[1, 2, 3]',5,6,7),(2,1,'Lakshmi',30,2,'Accident Injury',1,2,'Government Hospital',NULL,'Dr. Priya',NULL,NULL,50000.00,'2026-06-01',NULL,NULL,'[2]',8,NULL,NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_webhook_events`
--

DROP TABLE IF EXISTS `payment_webhook_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_webhook_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_type` varchar(50) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_webhook_events`
--

LOCK TABLES `payment_webhook_events` WRITE;
/*!40000 ALTER TABLE `payment_webhook_events` DISABLE KEYS */;
INSERT INTO `payment_webhook_events` VALUES (1,'payment.captured','{\"event\": \"payment.captured\", \"payload\": {\"payment\": {\"entity\": {\"id\": \"pay_SeDZJf5JkB8VlL\", \"amount\": 40, \"status\": \"captured\", \"currency\": \"INR\", \"order_id\": \"pay_SeDZJf5JkB8VlL\"}}}}','2026-04-16 16:34:52'),(2,'payment.captured','{\"event\": \"payment.captured\", \"payload\": {\"payment\": {\"entity\": {\"id\": \"pay_123\", \"amount\": 1000, \"status\": \"captured\", \"currency\": \"USD\", \"order_id\": \"order_456\"}}}}','2026-04-16 16:42:08');
/*!40000 ALTER TABLE `payment_webhook_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `donation_id` bigint NOT NULL,
  `provider` enum('RAZORPAY','QR') NOT NULL,
  `provider_order_id` varchar(100) DEFAULT NULL,
  `provider_payment_id` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `status` enum('CREATED','AUTHORIZED','CAPTURED','FAILED') DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `raw_response` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_order_id` (`provider_order_id`),
  UNIQUE KEY `provider_payment_id` (`provider_payment_id`),
  KEY `idx_payment_donation` (`donation_id`),
  KEY `idx_payment_order` (`provider_order_id`),
  KEY `idx_payment_payment` (`provider_payment_id`),
  CONSTRAINT `fk_payment_donation` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'RAZORPAY','order_SeDXp72XNt9jwy','pay_SeDZJf5JkB8VlL',40.00,NULL,'CAPTURED',NULL,NULL,'2026-04-16 15:42:09','2026-04-16 15:44:45'),(2,2,'RAZORPAY','order_SeELtZfoFSvjU7','pay_SeEMqqoMa0NkyQ',70.00,NULL,'CAPTURED',NULL,NULL,'2026-04-16 16:29:33','2026-04-16 16:31:28'),(3,3,'RAZORPAY','order_SeEW7Wol8bcUey','pay_SeEWeePzyiBGao',10.00,NULL,'CAPTURED',NULL,NULL,'2026-04-16 16:39:14','2026-04-16 16:40:55'),(4,4,'RAZORPAY','order_SeFVh6EqIbNq0r','pay_SeFXV4hH3B3Cpj',100.00,NULL,'CAPTURED',NULL,NULL,'2026-04-16 17:37:32','2026-04-16 17:40:45'),(5,5,'RAZORPAY','order_SftOZY3XtfyCSk',NULL,330000.00,NULL,'CREATED',NULL,NULL,'2026-04-20 21:17:32','2026-04-20 21:17:32'),(6,6,'RAZORPAY','order_SftU0e77rnp98p',NULL,330000.00,NULL,'CREATED',NULL,NULL,'2026-04-20 21:22:41','2026-04-20 21:22:41'),(7,7,'RAZORPAY','order_SftXRIVCqqysv4',NULL,330000.00,NULL,'CREATED',NULL,NULL,'2026-04-20 21:25:55','2026-04-20 21:25:55'),(8,8,'RAZORPAY','order_SftZilCVvjDW3C',NULL,330000.00,NULL,'CREATED',NULL,NULL,'2026-04-20 21:28:05','2026-04-20 21:28:05'),(9,9,'RAZORPAY','order_SftcHBgjiUvqWh',NULL,330000.00,NULL,'CREATED',NULL,NULL,'2026-04-20 21:30:30','2026-04-20 21:30:30'),(10,10,'RAZORPAY','order_SftcU8gis36FOq',NULL,3300.00,NULL,'CREATED',NULL,NULL,'2026-04-20 21:30:42','2026-04-20 21:30:42'),(11,11,'RAZORPAY','order_SftlXJOpejyIYu',NULL,55000.00,NULL,'CREATED',NULL,NULL,'2026-04-20 21:39:16','2026-04-20 21:39:16'),(12,12,'RAZORPAY','order_SftofxU0W6W6RM',NULL,55000.00,NULL,'CREATED',NULL,NULL,'2026-04-20 21:42:14','2026-04-20 21:42:14'),(13,13,'RAZORPAY','order_Sfttzt4BwGSnQM',NULL,55000.00,NULL,'CREATED',NULL,NULL,'2026-04-20 21:47:17','2026-04-20 21:47:17');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people_in_need`
--

DROP TABLE IF EXISTS `people_in_need`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people_in_need` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `amount_requested` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_people_category` (`category_id`),
  CONSTRAINT `fk_people_category` FOREIGN KEY (`category_id`) REFERENCES `request_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_in_need`
--

LOCK TABLES `people_in_need` WRITE;
/*!40000 ALTER TABLE `people_in_need` DISABLE KEYS */;
INSERT INTO `people_in_need` VALUES (1,1,11.00,'Need food supplies for a family of 4','rgb(227, 116, 0)','2026-04-21 08:30:21','2026-04-21 09:33:35'),(2,2,112.00,'Winter clothes required for children','#1E90FF','2026-04-21 08:30:21','2026-04-21 09:13:45'),(3,3,0.00,'School fees support for a student','rgb(26, 115, 232)','2026-04-21 08:30:21','2026-04-21 09:39:23'),(4,4,200000.00,'Funds needed for surgery','rgb(217, 48, 37)','2026-04-21 08:30:21','2026-04-21 09:13:45'),(5,5,10.00,'Temporary housing support needed','rgb(24, 128, 56)','2026-04-21 08:30:21','2026-04-21 09:13:45'),(6,6,0.00,'Sports equipment for underprivileged kids','#FFD700','2026-04-21 08:30:21','2026-04-21 09:33:35');
/*!40000 ALTER TABLE `people_in_need` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playing_levels`
--

DROP TABLE IF EXISTS `playing_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playing_levels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playing_levels`
--

LOCK TABLES `playing_levels` WRITE;
/*!40000 ALTER TABLE `playing_levels` DISABLE KEYS */;
INSERT INTO `playing_levels` VALUES (2,'District'),(5,'International'),(4,'National'),(3,'State'),(1,'Zonal');
/*!40000 ALTER TABLE `playing_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_payments`
--

DROP TABLE IF EXISTS `qr_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qr_payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `donation_id` bigint NOT NULL,
  `transaction_ref` varchar(150) DEFAULT NULL,
  `screenshot_attachment_id` int DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED') DEFAULT 'PENDING',
  `verified_by` int DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_qr_donation` (`donation_id`),
  KEY `fk_qr_attachment` (`screenshot_attachment_id`),
  KEY `fk_qr_verified_by` (`verified_by`),
  CONSTRAINT `fk_qr_attachment` FOREIGN KEY (`screenshot_attachment_id`) REFERENCES `attachments` (`id`),
  CONSTRAINT `fk_qr_donation` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qr_verified_by` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_payments`
--

LOCK TABLES `qr_payments` WRITE;
/*!40000 ALTER TABLE `qr_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `qr_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime(6) DEFAULT NULL,
  `revoked` bit(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr4k4edos30bx9neoq81mdvwph` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_categories`
--

DROP TABLE IF EXISTS `request_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` varchar(50) NOT NULL,
  `category_type` varchar(100) NOT NULL COMMENT 'e.g., Food, Clothes, Education, etc.',
  `backgroundColor` varchar(10) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_categories`
--

LOCK TABLES `request_categories` WRITE;
/*!40000 ALTER TABLE `request_categories` DISABLE KEYS */;
INSERT INTO `request_categories` VALUES (1,'1','Food','#fff','food'),(2,'2','Clothes','#fff','clothes'),(3,'3','Education','#fff','education'),(4,'4','Medical','#fff','medical'),(5,'5','Shelter','#fff','shelter'),(6,'6','Sports','#fff','sports');
/*!40000 ALTER TABLE `request_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_status_master`
--

DROP TABLE IF EXISTS `request_status_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_status_master` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_status_master`
--

LOCK TABLES `request_status_master` WRITE;
/*!40000 ALTER TABLE `request_status_master` DISABLE KEYS */;
INSERT INTO `request_status_master` VALUES (2,'Approved'),(4,'Completed'),(3,'In Progress'),(1,'Pending'),(5,'Rejected');
/*!40000 ALTER TABLE `request_status_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelter_beneficiaries`
--

DROP TABLE IF EXISTS `shelter_beneficiaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelter_beneficiaries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shelter_request_id` int NOT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `total_members` int DEFAULT NULL,
  `special_need_id` int DEFAULT NULL,
  `staying_type_id` int DEFAULT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `duration_of_problem` varchar(50) DEFAULT NULL,
  `requirement_type_id` int DEFAULT NULL,
  `duration_option_id` int DEFAULT NULL,
  `number_of_days` int DEFAULT NULL,
  `verification_document_id` int DEFAULT NULL,
  `damage_document_id` int DEFAULT NULL,
  `amount_requested` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shelter_ben_request` (`shelter_request_id`),
  KEY `fk_shelter_ben_special_need` (`special_need_id`),
  KEY `fk_shelter_ben_staying` (`staying_type_id`),
  KEY `fk_shelter_ben_requirement` (`requirement_type_id`),
  KEY `fk_shelter_ben_duration` (`duration_option_id`),
  KEY `fk_shelter_ben_verification_doc` (`verification_document_id`),
  KEY `fk_shelter_ben_damage_doc` (`damage_document_id`),
  CONSTRAINT `fk_shelter_ben_damage_doc` FOREIGN KEY (`damage_document_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_shelter_ben_duration` FOREIGN KEY (`duration_option_id`) REFERENCES `shelter_duration_options` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_shelter_ben_request` FOREIGN KEY (`shelter_request_id`) REFERENCES `shelter_requests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_shelter_ben_requirement` FOREIGN KEY (`requirement_type_id`) REFERENCES `shelter_requirement_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_shelter_ben_special_need` FOREIGN KEY (`special_need_id`) REFERENCES `shelter_special_needs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_shelter_ben_staying` FOREIGN KEY (`staying_type_id`) REFERENCES `shelter_staying_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_shelter_ben_verification_doc` FOREIGN KEY (`verification_document_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter_beneficiaries`
--

LOCK TABLES `shelter_beneficiaries` WRITE;
/*!40000 ALTER TABLE `shelter_beneficiaries` DISABLE KEYS */;
INSERT INTO `shelter_beneficiaries` VALUES (1,1,'Ravi',4,1,2,'Chennai','2 weeks',1,2,10,3,4,10);
/*!40000 ALTER TABLE `shelter_beneficiaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelter_duration_options`
--

DROP TABLE IF EXISTS `shelter_duration_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelter_duration_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter_duration_options`
--

LOCK TABLES `shelter_duration_options` WRITE;
/*!40000 ALTER TABLE `shelter_duration_options` DISABLE KEYS */;
INSERT INTO `shelter_duration_options` VALUES (3,'Long-term'),(1,'One-time'),(2,'Temporary');
/*!40000 ALTER TABLE `shelter_duration_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelter_requests`
--

DROP TABLE IF EXISTS `shelter_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelter_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `request_title` varchar(255) NOT NULL,
  `request_description` text,
  `status_id` int DEFAULT NULL,
  `urgency_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(1) DEFAULT '0',
  `reject_reason` text,
  PRIMARY KEY (`id`),
  KEY `fk_shelter_user` (`user_id`),
  KEY `fk_shelter_category` (`category_id`),
  KEY `fk_shelter_status` (`status_id`),
  KEY `fk_shelter_urgency` (`urgency_id`),
  CONSTRAINT `fk_shelter_category` FOREIGN KEY (`category_id`) REFERENCES `request_categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_shelter_status` FOREIGN KEY (`status_id`) REFERENCES `request_status_master` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_shelter_urgency` FOREIGN KEY (`urgency_id`) REFERENCES `urgency_levels` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_shelter_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter_requests`
--

LOCK TABLES `shelter_requests` WRITE;
/*!40000 ALTER TABLE `shelter_requests` DISABLE KEYS */;
INSERT INTO `shelter_requests` VALUES (1,1,5,'Shelter Needed','Flood affected family',2,2,'2026-04-09 09:23:00','2026-04-20 12:48:46',1,'Reason for rejection'),(2,1,5,'Double check','Doublr check',1,2,'2026-04-09 09:23:00','2026-04-10 20:13:44',1,'CHUMMA');
/*!40000 ALTER TABLE `shelter_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelter_requirement_types`
--

DROP TABLE IF EXISTS `shelter_requirement_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelter_requirement_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter_requirement_types`
--

LOCK TABLES `shelter_requirement_types` WRITE;
/*!40000 ALTER TABLE `shelter_requirement_types` DISABLE KEYS */;
INSERT INTO `shelter_requirement_types` VALUES (2,'Rental Assistance'),(3,'Shared Accommodation'),(1,'Temporary Shelter');
/*!40000 ALTER TABLE `shelter_requirement_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelter_special_needs`
--

DROP TABLE IF EXISTS `shelter_special_needs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelter_special_needs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter_special_needs`
--

LOCK TABLES `shelter_special_needs` WRITE;
/*!40000 ALTER TABLE `shelter_special_needs` DISABLE KEYS */;
INSERT INTO `shelter_special_needs` VALUES (4,'Child'),(1,'Disabled'),(2,'Elderly'),(5,'Medical Condition'),(3,'Pregnant');
/*!40000 ALTER TABLE `shelter_special_needs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelter_staying_types`
--

DROP TABLE IF EXISTS `shelter_staying_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelter_staying_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter_staying_types`
--

LOCK TABLES `shelter_staying_types` WRITE;
/*!40000 ALTER TABLE `shelter_staying_types` DISABLE KEYS */;
INSERT INTO `shelter_staying_types` VALUES (5,'Disaster Relief Camp'),(2,'Rented House'),(3,'Shared Room'),(1,'Street / Homeless'),(4,'Temporary Shelter');
/*!40000 ALTER TABLE `shelter_staying_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports_beneficiary_supports`
--

DROP TABLE IF EXISTS `sports_beneficiary_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports_beneficiary_supports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `beneficiary_id` int NOT NULL,
  `support_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `beneficiary_id` (`beneficiary_id`,`support_type_id`),
  KEY `support_type_id` (`support_type_id`),
  CONSTRAINT `sports_beneficiary_supports_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `sports_beneficiaries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sports_beneficiary_supports_ibfk_2` FOREIGN KEY (`support_type_id`) REFERENCES `sports_support_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports_beneficiary_supports`
--

LOCK TABLES `sports_beneficiary_supports` WRITE;
/*!40000 ALTER TABLE `sports_beneficiary_supports` DISABLE KEYS */;
/*!40000 ALTER TABLE `sports_beneficiary_supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports_categories`
--

DROP TABLE IF EXISTS `sports_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports_categories`
--

LOCK TABLES `sports_categories` WRITE;
/*!40000 ALTER TABLE `sports_categories` DISABLE KEYS */;
INSERT INTO `sports_categories` VALUES (3,'Athletics'),(4,'Badminton'),(1,'Cricket'),(2,'Football');
/*!40000 ALTER TABLE `sports_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports_request_beneficiaries`
--

DROP TABLE IF EXISTS `sports_request_beneficiaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports_request_beneficiaries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sports_request_id` int NOT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `age_group` varchar(50) DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `playing_level_id` int NOT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `amount_requested` int DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `institution_name` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `verification_document_id` int DEFAULT NULL,
  `achievement_document_id` int DEFAULT NULL,
  `sports_category_ids` json DEFAULT NULL,
  `support_type_ids` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sports_request_id` (`sports_request_id`),
  KEY `gender_id` (`gender_id`),
  KEY `playing_level_id` (`playing_level_id`),
  KEY `verification_document_id` (`verification_document_id`),
  KEY `achievement_document_id` (`achievement_document_id`),
  KEY `ix_sports_request_beneficiaries_id` (`id`),
  CONSTRAINT `sports_request_beneficiaries_ibfk_1` FOREIGN KEY (`sports_request_id`) REFERENCES `sports_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sports_request_beneficiaries_ibfk_2` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `sports_request_beneficiaries_ibfk_3` FOREIGN KEY (`playing_level_id`) REFERENCES `playing_levels` (`id`),
  CONSTRAINT `sports_request_beneficiaries_ibfk_5` FOREIGN KEY (`verification_document_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sports_request_beneficiaries_ibfk_6` FOREIGN KEY (`achievement_document_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports_request_beneficiaries`
--

LOCK TABLES `sports_request_beneficiaries` WRITE;
/*!40000 ALTER TABLE `sports_request_beneficiaries` DISABLE KEYS */;
INSERT INTO `sports_request_beneficiaries` VALUES (1,14,'Ravi','18-25',1,2,'District player',5000,'2026-05-10','ABC College','9876543210',1,2,'[1]','[1, 2]');
/*!40000 ALTER TABLE `sports_request_beneficiaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports_requests`
--

DROP TABLE IF EXISTS `sports_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `request_title` varchar(255) NOT NULL,
  `request_description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(1) DEFAULT '0',
  `reject_reason` text,
  `status_id` int DEFAULT NULL,
  `urgency_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `fk_sports_status` (`status_id`),
  KEY `fk_sports_urgency` (`urgency_id`),
  CONSTRAINT `fk_sports_status` FOREIGN KEY (`status_id`) REFERENCES `request_status_master` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_sports_urgency` FOREIGN KEY (`urgency_id`) REFERENCES `urgency_levels` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sports_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sports_requests_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `request_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports_requests`
--

LOCK TABLES `sports_requests` WRITE;
/*!40000 ALTER TABLE `sports_requests` DISABLE KEYS */;
INSERT INTO `sports_requests` VALUES (14,1,6,'Sports Support','Need support','2026-04-09 08:46:49','2026-04-21 09:32:00',0,NULL,1,1);
/*!40000 ALTER TABLE `sports_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports_support_type`
--

DROP TABLE IF EXISTS `sports_support_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports_support_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports_support_type`
--

LOCK TABLES `sports_support_type` WRITE;
/*!40000 ALTER TABLE `sports_support_type` DISABLE KEYS */;
INSERT INTO `sports_support_type` VALUES (6,'Coaching Support'),(7,'Other'),(3,'Shoes'),(1,'Sports Equipement'),(2,'Team Uniforms / Jerseys'),(5,'Tournament Fees'),(4,'Training Kits');
/*!40000 ALTER TABLE `sports_support_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `education_request_id` int NOT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `grade_level` varchar(50) DEFAULT NULL,
  `education_support_type_id` int NOT NULL,
  `amount_requested` decimal(10,2) DEFAULT NULL,
  `institution_name` varchar(255) DEFAULT NULL,
  `college_id` varchar(50) DEFAULT NULL,
  `institution_address` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(100) DEFAULT NULL,
  `contact_person_phone` varchar(15) DEFAULT NULL,
  `verification_document_id` int DEFAULT NULL,
  `education_support_document_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `education_request_id` (`education_request_id`),
  KEY `education_support_type_id` (`education_support_type_id`),
  KEY `verification_document_id` (`verification_document_id`),
  KEY `education_support_document_id` (`education_support_document_id`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`education_request_id`) REFERENCES `education_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `students_ibfk_2` FOREIGN KEY (`education_support_type_id`) REFERENCES `education_support_types` (`id`),
  CONSTRAINT `students_ibfk_3` FOREIGN KEY (`verification_document_id`) REFERENCES `attachments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `students_ibfk_4` FOREIGN KEY (`education_support_document_id`) REFERENCES `education_support_documents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_types`
--

DROP TABLE IF EXISTS `support_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_types`
--

LOCK TABLES `support_types` WRITE;
/*!40000 ALTER TABLE `support_types` DISABLE KEYS */;
INSERT INTO `support_types` VALUES (2,'Blood Donation'),(1,'Financial Support'),(4,'Hospital Expenses'),(3,'Medicine Support'),(5,'Surgery Support');
/*!40000 ALTER TABLE `support_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_users`
--

DROP TABLE IF EXISTS `switch_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `switch_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `switched_to_type` int NOT NULL,
  `switched_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_switch` (`user_id`,`switched_at`),
  KEY `fk_switch_users_type` (`switched_to_type`),
  CONSTRAINT `fk_switch_users_type` FOREIGN KEY (`switched_to_type`) REFERENCES `type_donors` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_switch_users_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_users`
--

LOCK TABLES `switch_users` WRITE;
/*!40000 ALTER TABLE `switch_users` DISABLE KEYS */;
INSERT INTO `switch_users` VALUES (1,2,3,'2026-04-01 06:13:02'),(2,2,1,'2026-04-01 06:34:08'),(3,1,1,'2026-04-14 10:16:04'),(4,1,2,'2026-04-18 14:51:45'),(5,1,1,'2026-04-20 11:34:46'),(6,1,2,'2026-04-20 11:35:19'),(7,1,1,'2026-04-20 12:22:23'),(8,1,1,'2026-04-20 20:49:50'),(9,1,1,'2026-04-20 21:17:17'),(10,1,1,'2026-04-20 21:18:11'),(11,1,1,'2026-04-20 21:25:34'),(12,1,1,'2026-04-20 21:27:54'),(13,1,1,'2026-04-20 21:39:07'),(14,1,1,'2026-04-20 21:42:07'),(15,1,1,'2026-04-21 07:43:41');
/*!40000 ALTER TABLE `switch_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_donors`
--

DROP TABLE IF EXISTS `type_donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_donors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `icon_color` varchar(20) DEFAULT NULL,
  `icon_bg` varchar(20) DEFAULT NULL,
  `description` text,
  `flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_donors`
--

LOCK TABLES `type_donors` WRITE;
/*!40000 ALTER TABLE `type_donors` DISABLE KEYS */;
INSERT INTO `type_donors` VALUES (1,'Donor','gift','#16A34A','#DCFCE7','Give items or\ncontribute funds',1),(2,'Receiver','heart','#DC2626','#FEE2E2','Request support\nfor your needs',1),(3,'Admin','user','#DC2626','#FEE2E2','Manage the platform',0);
/*!40000 ALTER TABLE `type_donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urgency_levels`
--

DROP TABLE IF EXISTS `urgency_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urgency_levels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urgency_levels`
--

LOCK TABLES `urgency_levels` WRITE;
/*!40000 ALTER TABLE `urgency_levels` DISABLE KEYS */;
INSERT INTO `urgency_levels` VALUES (3,'High'),(1,'Low'),(2,'Medium');
/*!40000 ALTER TABLE `urgency_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile_history`
--

DROP TABLE IF EXISTS `user_profile_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `changed_by` int DEFAULT NULL,
  `changed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `old_data` text,
  `new_data` text,
  `note` text,
  PRIMARY KEY (`id`),
  KEY `fk_user_profile_history_user` (`user_id`),
  KEY `fk_user_profile_history_changed_by` (`changed_by`),
  CONSTRAINT `fk_user_profile_history_changed_by` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_profile_history_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile_history`
--

LOCK TABLES `user_profile_history` WRITE;
/*!40000 ALTER TABLE `user_profile_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'Individual'),(2,'Organization');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `type_donor_id` int DEFAULT NULL,
  `donor_type_subtype` int DEFAULT NULL,
  `organization_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `attachment_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_profile_update` timestamp NULL DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `type_donor_id` (`type_donor_id`),
  KEY `donor_type_subtype` (`donor_type_subtype`),
  KEY `updated_by` (`updated_by`),
  KEY `fk_attachment` (`attachment_id`),
  CONSTRAINT `fk_attachment` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`type_donor_id`) REFERENCES `type_donors` (`id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`donor_type_subtype`) REFERENCES `user_types` (`id`),
  CONSTRAINT `users_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'lokesh v','lokeshv5844@gmail.com','9597670814','$2b$12$kQjiPNbmhCNpWrnLiNwEfuzguH/TsXBIvaLgKOp4qBLi/w6b3uDqm',2,1,'abc','no 33/30, baasha','Chennai','Tamilnadu','600078',NULL,'2026-04-08 12:37:44','2026-04-18 16:09:54',NULL,NULL),(2,'Deepa V','deepa.v@example.com','9876543210','$2b$12$ZCnwxjfcesB5APS5TZex/uJPi/708vEmIEbEI6uk/c45jrX5xMvAG',1,2,'Helping Hands Foundation','No. 12, Anna Nagar West','Chennai','Tamil Nadu','600040',NULL,'2026-04-12 12:34:27','2026-04-12 18:04:27',NULL,NULL),(3,'Sneha','sneha@gmail.com','9098765435','$2b$12$z0lQCAwhrgDDHhMHiJhXW.5ld3xLhI8MT3bHlRyE91hrcFIyLwpqy',1,2,'','Anna Salai','Chennai','Tamil Nadu','600100',NULL,'2026-04-14 10:49:02','2026-04-14 16:19:01',NULL,NULL),(4,'Sneha','sneha11@gmail.com','9098715435','$2b$12$.ThNLr726pU6ounX6IvPZO5eUI6f9ph52.oomfH88tSDlZ9CyDPWS',1,2,'','Anna Salai','Chennai','Tamil Nadu','600100',22,'2026-04-14 11:01:49','2026-04-14 16:31:48',NULL,NULL),(5,'Sneha','sneha122@gmail.com','9098735435','$2b$12$OVraO7hloECA1QTbusfVXe80ySwtSlMfAfT81INgXgTVYoFs9aiLW',1,2,'','Anna Salai','Chennai','Tamil Nadu','600100',23,'2026-04-14 11:04:56','2026-04-14 16:34:55',NULL,NULL),(6,'Lokpa','deepavenkatesan26@gmail.com','8439878438','$2b$12$uyvZ41S48Cjo2gSoX6/l2eM7M.Hf31hARwJHVEoqoM0MbZhzTtq5e',1,2,'','Anna Salai','Chennai','Tamil Nadu','600100',NULL,'2026-04-14 11:41:56','2026-04-15 14:38:56',NULL,NULL),(7,'looked','lokiie@gmail.com','6381202221','$2b$12$PfUOSbs56hFcRLrtyN8iluTepEcYFOVloMsZweOxlIWW8Sf7mfWiy',1,2,'','no 33','chennai','tamilnadu','600833',24,'2026-04-14 13:19:11','2026-04-14 18:49:11',NULL,NULL),(8,'pawan','pawan@example.com','9878890989','$2b$12$3OCtcF.KWmp03JVkJC2gSOgSfjEKQNEJGn9AEFBkgz4hDU2e5v0p6',1,1,'Alpha','No 33/30','Chennai','Tamilnadu','600067',25,'2026-04-17 08:14:48','2026-04-17 13:44:48',NULL,NULL),(9,'arun','arun.kumar@example.com','9123456780','$2b$12$1JyjW.tdB.5hdH8BGyvrpexPKzZRXwJycKu8R8sGzuqTv5KXc7CtC',2,1,'Beta Foundation','12, Anna Salai','Chennai','Tamilnadu','600002',26,'2026-04-17 08:20:14','2026-04-17 13:50:13',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'donobene'
--
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 8.4.8.
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-21 18:47:05
