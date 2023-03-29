-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bumblebeeloanoffer
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `BrandId` int NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(45) NOT NULL,
  PRIMARY KEY (`BrandId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CategoryId` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(45) NOT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerId` int NOT NULL AUTO_INCREMENT,
  `LoanBalance` double DEFAULT NULL,
  `UsedAmount` double DEFAULT NULL,
  `InstallmentPlan` int DEFAULT NULL,
  `UserId` int NOT NULL,
  PRIMARY KEY (`CustomerId`),
  KEY `userFk_idx` (`UserId`),
  CONSTRAINT `userFk` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,15000,0,1,2),(2,10000,5000,2,3),(3,5000,10000,1,4),(4,2000,13000,2,5),(5,10000,0,1,6);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installmenthistory`
--

DROP TABLE IF EXISTS `installmenthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `installmenthistory` (
  `InstallmentHistoryId` int NOT NULL AUTO_INCREMENT,
  `CustomerId` int NOT NULL,
  `InstallmentPlanId` int NOT NULL,
  `AmountPaid` double NOT NULL,
  PRIMARY KEY (`InstallmentHistoryId`),
  KEY `customerFk_idx` (`CustomerId`),
  KEY `installmentPlanFk_idx` (`InstallmentPlanId`),
  CONSTRAINT `customerFk` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`),
  CONSTRAINT `installmentPlanFk` FOREIGN KEY (`InstallmentPlanId`) REFERENCES `installmentplan` (`InstallmentPlanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installmenthistory`
--

LOCK TABLES `installmenthistory` WRITE;
/*!40000 ALTER TABLE `installmenthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `installmenthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installmentplan`
--

DROP TABLE IF EXISTS `installmentplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `installmentplan` (
  `InstallmentPlanId` int NOT NULL AUTO_INCREMENT,
  `PlanName` varchar(100) NOT NULL,
  PRIMARY KEY (`InstallmentPlanId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installmentplan`
--

LOCK TABLES `installmentplan` WRITE;
/*!40000 ALTER TABLE `installmentplan` DISABLE KEYS */;
INSERT INTO `installmentplan` VALUES (1,'10000-5000-5000'),(2,'10000-5000-5000');
/*!40000 ALTER TABLE `installmentplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderId` int NOT NULL AUTO_INCREMENT,
  `GrandOrder` double DEFAULT NULL,
  PRIMARY KEY (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `OrderDetailId` int NOT NULL AUTO_INCREMENT,
  `OrderId` int NOT NULL,
  `ProductId` int NOT NULL,
  `Quantity` double NOT NULL,
  `OrderDetailcol` double NOT NULL,
  PRIMARY KEY (`OrderDetailId`),
  KEY `productFk_idx` (`ProductId`),
  KEY `orderFk_idx` (`OrderId`),
  CONSTRAINT `orderFk` FOREIGN KEY (`OrderId`) REFERENCES `order` (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductId` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(45) NOT NULL,
  `CategoryId` int NOT NULL,
  `BrandId` int NOT NULL,
  `SalePrice` double NOT NULL,
  PRIMARY KEY (`ProductId`),
  KEY `categoryFk_idx` (`CategoryId`),
  KEY `brandFk_idx` (`BrandId`),
  CONSTRAINT `brandFk` FOREIGN KEY (`BrandId`) REFERENCES `brand` (`BrandId`),
  CONSTRAINT `categoryFk` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strock`
--

DROP TABLE IF EXISTS `strock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strock` (
  `StrockId` int NOT NULL AUTO_INCREMENT,
  `ProductId` int NOT NULL,
  `Quantity` double NOT NULL,
  PRIMARY KEY (`StrockId`),
  KEY `productFk_idx` (`ProductId`),
  CONSTRAINT `productFk` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strock`
--

LOCK TABLES `strock` WRITE;
/*!40000 ALTER TABLE `strock` DISABLE KEYS */;
/*!40000 ALTER TABLE `strock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DateOfBirth` varchar(20) NOT NULL,
  `UserType` int NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `SecretKey` varchar(100) NOT NULL,
  `CreatedOn` timestamp NULL DEFAULT NULL,
  `UpdatedOn` timestamp NULL DEFAULT NULL,
  `UserEmail` varchar(45) NOT NULL,
  `UserMobileNumber` varchar(10) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Akaly','Gnanasekaram','18-01-1997',1,'Gakalya','12345','2023-03-28 18:35:37',NULL,'akalya.gnanasekaram@gmail.com','0778954632','9784578502v'),(2,'Thanu','Jaya','18-01-1997',2,'T1997','12345','2023-03-28 18:40:05',NULL,'thanu@gmail.com','0745879641','9784578502v'),(3,'Vaisu','Raja','08-02-1996',2,'V1996','45678',NULL,NULL,'vaisu@gmail.com','0778955545','9784578502v'),(4,'Vinu','Nathan','12-03-1996',2,'Vi1996','14256',NULL,NULL,'vinu@gmail.com','0764789654','9784578502v'),(5,'Saran','Tharan','05-04-1996',2,'A1996','32456',NULL,NULL,'saran@gmail.com','0745896325','9784578502v'),(6,'Abi','Gnana','15-02-2000',2,'A2000','151816','2023-03-29 10:44:36',NULL,'abi.gn@gmail.com','0778945632','948751205v');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bumblebeeloanoffer'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_customer_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_customer_detail`(
IN pCustomerId INT)
BEGIN
select
    concat(u.FirstName,' ',u.LastName) FullName,
    u.DateOfBirth,
    (CASE
        WHEN  u.UserType= 1 then 'AdminUser'
        When u.UserType = 2 then 'Customer'
        END ) UserTypeStr,
    u.UserEmail,
    u.UserMobileNumber,
    cus.LoanBalance,
    cus.UsedAmount,
    plan.PlanName
from user u
inner join customer cus on u.UserId = cus.UserId
inner join installmentplan plan on cus.InstallmentPlan = plan.InstallmentPlanId
where cus.CustomerId = pCustomerId

;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_customer_detail_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_customer_detail_proc`(
IN pCustomerId INT)
BEGIN
select
    concat(u.FirstName,' ',u.LastName) FullName,
    u.DateOfBirth,
    (CASE
        WHEN  u.UserType= 1 then 'AdminUser'
        When u.UserType = 2 then 'Customer'
        END ) UserTypeStr,
    u.UserEmail,
    u.UserMobileNumber,
    cus.LoanBalance,
    cus.UsedAmount,
    plan.PlanName
from user u
inner join customer cus on u.UserId = cus.UserId
inner join installmentplan plan on cus.InstallmentPlan = plan.InstallmentPlanId
where cus.CustomerId = pCustomerId

;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_customer_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_customer_list`()
BEGIN
select
    concat(u.FirstName,' ',u.LastName) FullName,
    u.DateOfBirth,
    (CASE
        WHEN  u.UserType= 1 then 'AdminUser'
        When u.UserType = 2 then 'Customer'
        END ) UserTypeStr,
    u.UserEmail,
    u.UserMobileNumber,
    cus.LoanBalance,
    cus.UsedAmount,
    plan.PlanName
from user u
inner join customer cus on u.UserId = cus.UserId
inner join installmentplan plan on cus.InstallmentPlan = plan.InstallmentPlanId
;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_customer_list_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_customer_list_proc`()
BEGIN
select
    concat(u.FirstName,' ',u.LastName) FullName,
    u.DateOfBirth,
    (CASE
        WHEN  u.UserType= 1 then 'AdminUser'
        When u.UserType = 2 then 'Customer'
        END ) UserTypeStr,
    u.UserEmail,
    u.UserMobileNumber,
    cus.LoanBalance,
    cus.UsedAmount,
    plan.PlanName
from user u
inner join customer cus on u.UserId = cus.UserId
inner join installmentplan plan on cus.InstallmentPlan = plan.InstallmentPlanId
;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_update_admin_customer_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_update_admin_customer_proc`(
	 IN pUserId int ,
	 IN pFirstName varchar(50),
	 IN pLastName varchar(50),
	 IN pDateOfBirth varchar(20),
	 IN pUserType int,
	 IN pUserName varchar(30),
	 IN pSecretKey varchar(100),
     IN pUserEmail varchar(45),
	 IN pUserMobileNumber varchar(10),
	 IN pNIC varchar(20),
	 IN pCustomerId int ,
	 IN pLoanBalance double ,
	 IN pUsedAmount double ,
	 IN pInstallmentPlan int,
	 OUT rRES tinyint(1),
	 OUT rSatustCode int,
	 OUT rMSG varchar(50)
)
BEGIN
	DECLARE IUserId INTEGER DEFAULT 0;
    DECLARE lcount INTEGER DEFAULT 0;
    
	SET rRES := true;
	SET rSatustCode := 3000; #success status code
	SET rMSG := 'Success';



	IF pUserEmail is null or pUserEmail = '' then
		SET rRES := false;
		SET rSatustCode := 3001; #invalid information
		SET rMSG := 'Incorrect Email Address';
    ELSE 
		select count(*) into lcount from user where useremail = pUserEmail;
    IF lcount > 0 then
		SET rRES := false;
		SET rSatustCode := 3002; #already registred
		SET rMSG := 'User already registerd..!';
         
         ELSE 
         
         IF pUserId = 0 then
		INSERT INTO user
				(FirstName,
				LastName,
				DateOfBirth,
				UserType,
				UserName,
				SecretKey,
                UserEmail,
                UserMobileNumber,
                NIC,
				CreatedOn)
		VALUES
				(pFirstName,
				pLastName,
				pDateOfBirth,
				pUserType,
				pUserName,
				pSecretKey,
				pUserEmail,
                pUserMobileNumber,
                pNIC,
				now());
                
SELECT lAST_INSERT_ID() INTO IUserId;
      IF pUserType = 2 THEN
		INSERT INTO customer
				(LoanBalance,
				UsedAmount,
				InstallmentPlan,
				UserId)
				VALUES
				(pLoanBalance,
				pUsedAmount,
				pInstallmentPlan,
				IUserId);

      END IF; 
      
      ELSE 
      UPDATE user
			SET
			FirstName = pFirstName,
			LastName = pLastName,
			DateOfBirth = pDateOfBirth,
			UpdatedOn = now()
			WHERE UserId = pUserId;
        
End IF;




         END IF;
	END IF;




	

END ;;
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

-- Dump completed on 2023-03-29 16:22:07
