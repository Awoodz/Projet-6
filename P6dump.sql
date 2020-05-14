-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: P6
-- ------------------------------------------------------
-- Server version       8.0.19

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `client_user_id` int unsigned NOT NULL,
  `client_contact_id` int unsigned NOT NULL,
  `client_mail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`client_user_id`,`client_contact_id`),
  KEY `fk_client_contact_idx` (`client_contact_id`),
  CONSTRAINT `fk_client_contact` FOREIGN KEY (`client_contact_id`) REFERENCES `contact` (`contact_id`),
  CONSTRAINT `fk_client_user` FOREIGN KEY (`client_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (5,3,'a.bois@gmail.com'),(6,4,'j.doe@gmail.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contact_id` int unsigned NOT NULL AUTO_INCREMENT,
  `contact_city` varchar(40) NOT NULL,
  `contact_adress` varchar(60) NOT NULL,
  `contact_level` varchar(5) DEFAULT NULL,
  `contact_phone` varchar(10) NOT NULL,
  `contact_comment` varchar(150) DEFAULT NULL,
  `contact_nearest_restaurant` int unsigned DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `fk_contact_restaurant_idx` (`contact_nearest_restaurant`),
  CONSTRAINT `fk_contact_restaurant` FOREIGN KEY (`contact_nearest_restaurant`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Paris','1 rue champs elys├®e',NULL,'0140999999',NULL,NULL),(2,'Lyon','2 quai jules courmont',NULL,'0560999999',NULL,NULL),(3,'Paris','1 rue faubourg st honor├®e','rdc','0679090909',NULL,1),(4,'Lyon','35 quai jules courmont','3','0769090944','Sonnez ├á Doe',2);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `ingredient_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(40) NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'jambon'),(2,'tomate'),(3,'lardon'),(4,'creme'),(5,'mozzarella'),(6,'p├óte'),(7,'coca-cola');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_stock`
--

DROP TABLE IF EXISTS `ingredient_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient_stock` (
  `stock_restaurant_id` int unsigned NOT NULL,
  `stock_ingredient_id` int unsigned NOT NULL,
  `stock_ingredient_qtt` int unsigned NOT NULL,
  PRIMARY KEY (`stock_restaurant_id`,`stock_ingredient_id`),
  KEY `fk_stock_restaurant_id_idx` (`stock_restaurant_id`),
  KEY `fk_ingredient_id` (`stock_ingredient_id`),
  CONSTRAINT `fk_ingredient_id` FOREIGN KEY (`stock_ingredient_id`) REFERENCES `ingredient` (`ingredient_id`),
  CONSTRAINT `fk_stock_restaurant_id` FOREIGN KEY (`stock_restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_stock`
--

LOCK TABLES `ingredient_stock` WRITE;
/*!40000 ALTER TABLE `ingredient_stock` DISABLE KEYS */;
INSERT INTO `ingredient_stock` VALUES (1,1,10),(1,2,10),(1,3,10),(1,4,10),(1,5,10),(1,6,10),(1,7,10),(2,1,20),(2,2,20),(2,3,20),(2,4,20),(2,5,20),(2,6,20),(2,7,20);
/*!40000 ALTER TABLE `ingredient_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocpizza`
--

DROP TABLE IF EXISTS `ocpizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocpizza` (
  `ocpizza_user_id` int unsigned NOT NULL,
  `ocpizza_restaurant_id` int unsigned NOT NULL,
  `ocpizza_role_id` int unsigned NOT NULL,
  PRIMARY KEY (`ocpizza_user_id`),
  KEY `fk_ocpizza_role_idx` (`ocpizza_role_id`),
  KEY `fk_ocpizza_restaurant_idx` (`ocpizza_restaurant_id`),
  CONSTRAINT `fk_ocpizza_restaurant` FOREIGN KEY (`ocpizza_restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `fk_ocpizza_role` FOREIGN KEY (`ocpizza_role_id`) REFERENCES `ocpizza_role` (`ocpizza_role_id`),
  CONSTRAINT `fk_ocpizza_user` FOREIGN KEY (`ocpizza_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocpizza`
--

LOCK TABLES `ocpizza` WRITE;
/*!40000 ALTER TABLE `ocpizza` DISABLE KEYS */;
INSERT INTO `ocpizza` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2);
/*!40000 ALTER TABLE `ocpizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocpizza_role`
--

DROP TABLE IF EXISTS `ocpizza_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocpizza_role` (
  `ocpizza_role_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ocpizza_role_name` varchar(15) NOT NULL,
  PRIMARY KEY (`ocpizza_role_id`),
  UNIQUE KEY `role_id_UNIQUE` (`ocpizza_role_id`),
  UNIQUE KEY `role_name_UNIQUE` (`ocpizza_role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocpizza_role`
--

LOCK TABLES `ocpizza_role` WRITE;
/*!40000 ALTER TABLE `ocpizza_role` DISABLE KEYS */;
INSERT INTO `ocpizza_role` VALUES (1,'Employ├®'),(2,'Livreur');
/*!40000 ALTER TABLE `ocpizza_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_user_id` int unsigned NOT NULL,
  `order_status_id` int unsigned NOT NULL,
  `order_delivery_id` int unsigned NOT NULL,
  `order_payment_id` int unsigned NOT NULL,
  `order_restaurant_id` int unsigned NOT NULL,
  `order_delivery_adress` int unsigned DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `command_id_UNIQUE` (`order_id`),
  KEY `fk_command_user_id_idx` (`order_user_id`),
  KEY `fk_command_status_id_idx` (`order_status_id`),
  KEY `fk_command_delivery_id_idx` (`order_delivery_id`),
  KEY `fk_command_paiment_id_idx` (`order_payment_id`),
  KEY `fk_order_restaurant_id_idx` (`order_restaurant_id`),
  KEY `fk_order_delivery_contact_idx` (`order_delivery_adress`),
  CONSTRAINT `fk_order_delivery_contact` FOREIGN KEY (`order_delivery_adress`) REFERENCES `contact` (`contact_id`),
  CONSTRAINT `fk_order_delivery_id` FOREIGN KEY (`order_delivery_id`) REFERENCES `order_delivery` (`delivery_id`),
  CONSTRAINT `fk_order_paiment_id` FOREIGN KEY (`order_payment_id`) REFERENCES `order_payment` (`payment_id`),
  CONSTRAINT `fk_order_restaurant_id` FOREIGN KEY (`order_restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `fk_order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`status_id`),
  CONSTRAINT `fk_order_user_id` FOREIGN KEY (`order_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,5,2,1,1,1,3),(2,6,3,2,3,2,NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_basket`
--

DROP TABLE IF EXISTS `order_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_basket` (
  `basket_order_id` int unsigned NOT NULL,
  `basket_product_id` int unsigned NOT NULL,
  `basket_size_id` int unsigned NOT NULL,
  `basket_product_qtt` int unsigned NOT NULL,
  KEY `fk_basket_pizza_id_idx` (`basket_product_id`),
  KEY `fk_basket_size_id_idx` (`basket_size_id`),
  KEY `fk_basket_order_id` (`basket_order_id`),
  CONSTRAINT `fk_basket_order_id` FOREIGN KEY (`basket_order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `fk_basket_product_id` FOREIGN KEY (`basket_product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_basket_size_id` FOREIGN KEY (`basket_size_id`) REFERENCES `product_size` (`product_size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_basket`
--

LOCK TABLES `order_basket` WRITE;
/*!40000 ALTER TABLE `order_basket` DISABLE KEYS */;
INSERT INTO `order_basket` VALUES (1,2,2,1),(2,3,1,1),(2,2,3,1),(1,1,1,1),(2,1,1,2);
/*!40000 ALTER TABLE `order_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_delivery`
--

DROP TABLE IF EXISTS `order_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_delivery` (
  `delivery_id` int unsigned NOT NULL AUTO_INCREMENT,
  `delivery_name` varchar(30) NOT NULL,
  PRIMARY KEY (`delivery_id`),
  UNIQUE KEY `delivery_id_UNIQUE` (`delivery_id`),
  UNIQUE KEY `delivery_name_UNIQUE` (`delivery_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_delivery`
--

LOCK TABLES `order_delivery` WRITE;
/*!40000 ALTER TABLE `order_delivery` DISABLE KEYS */;
INSERT INTO `order_delivery` VALUES (1,'Livraison'),(2,'R├®cup├®ration au restaurant');
/*!40000 ALTER TABLE `order_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_payment`
--

DROP TABLE IF EXISTS `order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_payment` (
  `payment_id` int unsigned NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(25) NOT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `paiment_id_UNIQUE` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_payment`
--

LOCK TABLES `order_payment` WRITE;
/*!40000 ALTER TABLE `order_payment` DISABLE KEYS */;
INSERT INTO `order_payment` VALUES (1,'Paiement en ligne'),(2,'Paiement ├á la livraison'),(3,'Paiement sur place');
/*!40000 ALTER TABLE `order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `status_id` int unsigned NOT NULL AUTO_INCREMENT,
  `status_name` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `status_id_UNIQUE` (`status_id`),
  UNIQUE KEY `status_name_UNIQUE` (`status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (4,'En attente de livraison'),(3,'En attente de r├®cup├®ration'),(2,'En pr├®paration'),(5,'Livraison en cours'),(7,'Livr├®e'),(1,'Prise en compte'),(6,'R├®cup├®r├®e'),(8,'Termin├®e');        
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_statusupdate`
--

DROP TABLE IF EXISTS `order_statusupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_statusupdate` (
  `statusupdate_order_id` int unsigned NOT NULL,
  `statusupdate_status_id` int unsigned NOT NULL,
  `statusupdate_time` datetime NOT NULL,
  `statusupdate_user_id` int unsigned NOT NULL,
  KEY `fk_statusupdate_status_id_idx` (`statusupdate_status_id`),
  KEY `fk_statusupdate_command_id_idx` (`statusupdate_order_id`),
  KEY `fk_statusupdate_user_id_idx` (`statusupdate_user_id`),
  CONSTRAINT `fk_statusupdate_order_id` FOREIGN KEY (`statusupdate_order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `fk_statusupdate_status_id` FOREIGN KEY (`statusupdate_status_id`) REFERENCES `order_status` (`status_id`),
  CONSTRAINT `fk_statusupdate_user_id` FOREIGN KEY (`statusupdate_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_statusupdate`
--

LOCK TABLES `order_statusupdate` WRITE;
/*!40000 ALTER TABLE `order_statusupdate` DISABLE KEYS */;
INSERT INTO `order_statusupdate` VALUES (1,1,'2004-05-20 15:30:43',1),(1,2,'2004-05-20 15:32:45',1),(2,1,'2004-05-20 15:45:01',3),(2,2,'2004-05-20 15:47:15',3),(2,3,'2004-05-20 15:55:00',3);
/*!40000 ALTER TABLE `order_statusupdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(40) NOT NULL,
  `product_product_type_id` int unsigned NOT NULL,
  `product_img_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `Pizza_name_UNIQUE` (`product_name`),
  UNIQUE KEY `Pizza_id_UNIQUE` (`product_id`),
  UNIQUE KEY `pizza_img_path_UNIQUE` (`product_img_path`),
  KEY `fk_product_class_idx` (`product_product_type_id`),
  CONSTRAINT `fk_product_type` FOREIGN KEY (`product_product_type_id`) REFERENCES `product_type` (`product_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Coca-cola',4,'http://hebergeur.com/coca.png'),(2,'Pizza jambon',2,'http://hebergeur.com/pizza-jambon.png'),(3,'Pizza lardon',3,'http://hebergeur.com/pizza_lardon.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_price`
--

DROP TABLE IF EXISTS `product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_price` (
  `Product_price_type` int unsigned NOT NULL,
  `Product_price_size_id` int unsigned NOT NULL,
  `Product_price_real` float unsigned NOT NULL,
  PRIMARY KEY (`Product_price_type`,`Product_price_size_id`),
  KEY `fk_price_size_id_idx` (`Product_price_size_id`),
  KEY `fk_product_price_product_idx` (`Product_price_type`),
  CONSTRAINT `fk_product_price_product` FOREIGN KEY (`Product_price_type`) REFERENCES `product_type` (`product_type_id`),
  CONSTRAINT `fk_product_price_size_id` FOREIGN KEY (`Product_price_size_id`) REFERENCES `product_size` (`product_size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_price`
--

LOCK TABLES `product_price` WRITE;
/*!40000 ALTER TABLE `product_price` DISABLE KEYS */;
INSERT INTO `product_price` VALUES (2,2,8),(2,3,10),(2,4,13),(3,2,9),(3,3,12),(3,4,15),(4,1,2.5);
/*!40000 ALTER TABLE `product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_recipe`
--

DROP TABLE IF EXISTS `product_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_recipe` (
  `recipe_product_id` int unsigned NOT NULL,
  `recipe_ingredient_id` int unsigned NOT NULL,
  PRIMARY KEY (`recipe_product_id`,`recipe_ingredient_id`),
  KEY `fk_ingredient_id_idx` (`recipe_ingredient_id`),
  CONSTRAINT `fk_product_id` FOREIGN KEY (`recipe_product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_stock_ingredient_id` FOREIGN KEY (`recipe_ingredient_id`) REFERENCES `ingredient` (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_recipe`
--

LOCK TABLES `product_recipe` WRITE;
/*!40000 ALTER TABLE `product_recipe` DISABLE KEYS */;
INSERT INTO `product_recipe` VALUES (2,1),(2,2),(3,3),(3,4),(2,5),(3,5),(2,6),(3,6),(1,7);
/*!40000 ALTER TABLE `product_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `product_size_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_size_name` varchar(10) NOT NULL,
  PRIMARY KEY (`product_size_id`),
  UNIQUE KEY `size_id_UNIQUE` (`product_size_id`),
  UNIQUE KEY `size_name_UNIQUE` (`product_size_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (4,'grand'),(3,'moyen'),(1,'none'),(2,'petit');
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `product_type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_type_name` varchar(40) NOT NULL,
  `product_type_is_sizeable` tinyint unsigned NOT NULL,
  PRIMARY KEY (`product_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'none',0),(2,'Pizza base tomate',1),(3,'Pizza base cr├¬me',1),(4,'Boisson',0);
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(40) NOT NULL,
  `restaurant_contact_id` int unsigned NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE KEY `restaurant_id_UNIQUE` (`restaurant_id`),
  UNIQUE KEY `restaurant_contact_id_UNIQUE` (`restaurant_contact_id`),
  CONSTRAINT `fk_restaurant_contact` FOREIGN KEY (`restaurant_contact_id`) REFERENCES `contact` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'OCPizza Paris',1),(2,'OCPizza Lyon',2);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_first_name` varchar(40) NOT NULL,
  `user_last_name` varchar(40) NOT NULL,
  `user_login` varchar(40) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_login_UNIQUE` (`user_login`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jean','python','jeanpizza','jeanpythonparis'),(2,'sarah','java','sarahlivreuse','sarajavaparis'),(3,'pierre','c├®plus','pierrepizza','pierrec├®pluslyon'),(4,'ronald','p├®hachp├®','ronaldlivreur','ronaldp├®hachp├®lyon'),(5,'amaury','bois','abois','projet6'),(6,'john','doe','jdoe69','pizzalyon');
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

-- Dump completed on 2020-05-14 12:33:40
