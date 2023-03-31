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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Casio'),(2,'Samsung');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Watch'),(2,'Mobile');
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
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,9600,5400,1,2),(2,10000,5000,2,3),(3,5000,10000,1,4),(4,2000,13000,2,5),(5,10000,0,1,6),(6,15000,0,1,7),(7,4100,10900,1,10),(8,9600,5400,1,11),(9,15000,0,1,14),(10,15000,0,1,15),(11,15000,0,1,16);
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
  PRIMARY KEY (`InstallmentHistoryId`)
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
  `GrandTotal` double NOT NULL,
  `UserId` int NOT NULL,
  PRIMARY KEY (`OrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (2,0,12),(3,10900,12),(4,10900,4),(5,10900,2),(6,10900,10),(7,10900,10),(8,10900,4),(11,5400,2),(12,5400,11);
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
  `SubTotal` double NOT NULL,
  PRIMARY KEY (`OrderDetailId`),
  KEY `productFk_idx` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,2,1,5,6000),(2,2,2,1,1500),(3,2,3,1,3400),(4,3,1,5,6000),(5,3,2,1,1500),(6,3,3,1,3400),(7,4,1,5,6000),(8,4,2,1,1500),(9,4,3,1,3400),(10,5,1,5,6000),(11,5,2,1,1500),(12,5,3,1,3400),(13,6,1,5,6000),(14,6,2,1,1500),(15,6,3,1,3400),(16,7,1,5,6000),(17,7,2,1,1500),(18,7,3,1,3400),(19,8,1,5,6000),(20,8,2,1,1500),(21,8,3,1,3400),(22,9,1,5,6000),(23,9,2,1,1500),(24,9,3,1,3400),(28,11,1,2,2400),(29,11,2,2,3000),(30,12,1,2,2400),(31,12,2,2,3000);
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
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Smart Watch',1,2,1200),(2,'Sumsung Galaxy S5',2,2,1500),(3,'Smart WatchXG',1,2,3400);
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
  PRIMARY KEY (`StrockId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strock`
--

LOCK TABLES `strock` WRITE;
/*!40000 ALTER TABLE `strock` DISABLE KEYS */;
INSERT INTO `strock` VALUES (1,1,10),(2,2,3),(3,3,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Tharany','thara','18-01-1997',1,'tharany1','12345','2023-03-28 18:35:37',NULL,'thara@gmail.com','0778954634','948457850v'),(2,'Thanu','Jaya','18-01-1997',2,'T1997','12345','2023-03-28 18:40:05',NULL,'thanu@gmail.com','0745879641','978457850v'),(3,'Vaisu','Raja','08-02-1996',2,'V1996','45678',NULL,NULL,'vaisu@gmail.com','0778955545','978457850v'),(4,'Vinu','Nathan','12-03-1996',2,'Vi1996','14256',NULL,NULL,'vinu@gmail.com','0764789654','978457850v'),(5,'Saran','Tharan','05-04-1996',2,'A1996','32456',NULL,NULL,'saran@gmail.com','0745896325','978457502v'),(6,'Abi','Gnana','15-02-2000',2,'A2000','151816','2023-03-29 10:44:36',NULL,'abi.gn@gmail.com','0778945632','948751205v'),(7,'Thuva','Raj','18-04-1996',2,'Thuvaa','147852','2023-03-29 16:19:28',NULL,'thuva@gmail.com','0778945623','978451423v'),(10,'kamsi','Raj','18-04-1996',2,'fghghj','147852','2023-03-29 17:15:47',NULL,'ydfaa@gmail.com','0778966533','964784512v'),(11,'Tamil','Raj','18-04-1996',2,'tamil1','147852','2023-03-29 19:25:06',NULL,'tamil@gmail.com','0778966533','964784512v'),(12,'Niro','Nathan','18-04-1996',1,'N1991','216a2588c1d65f31389d2067d61a46727c81cfccde7d2dd93a5b2c34d312861','2023-03-30 03:55:56',NULL,'niro@gmail.com','0778966533','914784512v'),(13,'Pen','Gnana','18-04-1994',1,'p1994','dfd375b9e090f2d5a96c2ca1c16742f06086a5ca1a2cbf8e939857d9aee8098','2023-03-30 05:26:20',NULL,'Pen@gmail.com','0778478965','952425312v'),(14,'rhthyj','Nathythan','25-012-1991',2,'yjukuk','b6d55868e11497da87cd8871768b56e69dc65ea3fe5532d0239291e5c84a3864','2023-03-30 06:09:24',NULL,'rgrtgthy@gmail.com','0779252472','915248212v'),(15,'dfger','efweer','25-012-1991',2,'wefefg','2271aafd8c20bfc5add08bbd36356f9f26348054eb1d82a6247893f13369378','2023-03-30 06:23:00',NULL,'jhghj@gmail.com','0779758252','914528212v'),(16,'Niroshan','Nathan','25-012-1991',2,'Niro91','4645c4e3f09bb61ee65acf11884e21892a8a32cfad8c2e52f54fa3e35846f93','2023-03-30 06:27:35',NULL,'nathannirosh@gmail.com','0779252472','915248212v');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bumblebeeloanoffer'
--
/*!50003 DROP PROCEDURE IF EXISTS `create_order_request` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_order_request`(
IN pPaymentOption int,
IN pUserId int,
IN pOrderDetail varchar(100),
OUT rRES tinyint(1),
OUT rSatustCode int,
OUT rMSG varchar(300))
BEGIN

declare lOrderId integer default 0;
declare lLoopCount integer default 0;
declare loopControl int;
declare lorderInfo varchar(20) ;
declare lproductId int;
declare lqty double ;
declare lSalesPrice double ;
declare lSubTotal double ;
declare lGrandTotal double default 0.0;

declare lLoanBalance double ;
#declare lCustomerId int;

SET rRES := true;
SET rSatustCode := 3000; #success status code
SET rMSG := 'Success';





  insert into bumblebeeloanoffer.order(UserId,GrandTotal) values (pUserId,0.0);
   SELECT lAST_INSERT_ID() INTO lOrderId;
  
   
   select (length(pOrderDetail)-length(replace(pOrderDetail,',',''))+1) into lLoopCount;
   
   #select lLoopCount;
   set loopControl = 1;
   while loopControl <= lLoopCount do
   SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(pOrderDetail,',',loopControl),',',-1) into lorderInfo;
   #select lorderInfo;
   SELECT SUBSTRING_INDEX(lorderInfo,'||',1) into lproductId;
   SELECT SUBSTRING_INDEX(lorderInfo,'||',-1) into lqty;
    #select lproductId,lqty;
  
   select SalePrice into lSalesPrice from product where ProductId =lproductId;
   set lSubTotal=lqty*lSalesPrice;
set lGrandTotal=lGrandTotal+lSubTotal;
insert into orderdetail(OrderId,ProductId,Quantity,SubTotal) values(lOrderId,lproductId,lqty,lSubTotal);

   set loopControl = loopControl + 1;
   end while;
   
   
   update bumblebeeloanoffer.order set GrandTotal=lGrandTotal where OrderId=lOrderId;

if pPaymentOption = 2 then
SELECT LoanBalance into lLoanBalance FROM bumblebeeloanoffer.customer where UserId=pUserId;
if lLoanBalance < lGrandTotal then

delete from bumblebeeloanoffer.order where OrderId=lOrderId;
delete from bumblebeeloanoffer.orderdetail where OrderId=lOrderId;


SET rRES := false;
SET rSatustCode := 3020; 
SET rMSG :=concat('You are not allow to buy more than available balance in Bumble bee [Please use the card]..! : ',lLoanBalance);

else
update customer set 
LoanBalance = (LoanBalance-lGrandTotal),
UsedAmount = (UsedAmount+lGrandTotal) where UserId=pUserId;

end if;
 end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_products_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_products_proc`()
BEGIN
select
    p.ProductId ProductId,
    concat(p.ProductName ,'[',c.CategoryName,'-',b.BrandName,']','(LKR ',p.SalePrice,')') displayName
       from product p
    inner join strock s on p.ProductId = s.ProductId
    left join brand b on p.BrandId = b.BrandId
left join category c on p.CategoryId = c.CategoryId
where s.Quantity > 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
/*!50003 DROP PROCEDURE IF EXISTS `get_order_detail_proc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_order_detail_proc`(IN pProductId int, IN pQty int, OUT rProductId int,
                                                             OUT rCategoryName varchar(50), OUT rBranchName varchar(50),
                                                             OUT rQty int, OUT rProductName varchar(50),
                                                             OUT rSubTotal double, OUT rRES tinyint(1),
                                                             OUT rSatustCode int, OUT rMSG varchar(50))
BEGIN
declare lSalePrice double default 0;
Declare lQty double default 0;
SET rRES := true;
	SET rSatustCode := 3000; #success status code
	SET rMSG := 'Success';
select stk.Quantity into lQty from strock stk where stk.ProductId=pProductId;

if lQty >= pQty then





select
p.ProductId,
p.ProductName,
p.SalePrice,
c.CategoryName,
b.BrandName
into
rProductId,rProductName,lSalePrice,rCategoryName,rBranchName
from product p
left join brand b on p.BrandId = b.BrandId
left join category c on p.CategoryId = c.CategoryId
where p.ProductId=pProductId
;


SET rSubTotal := pQty * lSalePrice;
SET rQty:=pQty;

else
SET rRES := false;
	SET rSatustCode := 3005; #success status code
	SET rMSG := concat('Only you can purchase of the product qty is ',lQty);


        end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_update_admin_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_update_admin_customer`(
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
/*!50003 DROP PROCEDURE IF EXISTS `user_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_login`(IN pusername varchar(50),
IN ppasscode varchar(100),

OUT rFirstName varchar(50),
OUT rLastName varchar(50),
 OUT rUserType int,
 OUT rUserId int ,
  OUT rRES tinyint(1),
	 OUT rSatustCode int,
	 OUT rMSG varchar(50)
)
BEGIN
declare lcount integer default 0;

SET rRES := true;
	SET rSatustCode := 3000; #success status code
	SET rMSG := 'Success';



select count(*) into lcount from user where UserName=pusername and SecretKey=ppasscode;

if lcount>0 then
select firstname,lastname,usertype,userid into
rFirstName,rLastName,rUserType,rUserId
from user where UserName=pusername and SecretKey=ppasscode;
else
SET rRES := false;
	SET rSatustCode := 3003; 
	SET rMSG := 'Invalid username or password...! ';


end if;

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

-- Dump completed on 2023-03-31 21:19:33
