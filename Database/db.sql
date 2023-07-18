/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - travel
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `travel`;

USE `travel`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `account_travel_history` */

DROP TABLE IF EXISTS `account_travel_history`;

CREATE TABLE `account_travel_history` (
  `User_name` varchar(100) DEFAULT NULL,
  `Miles_travelled` varchar(100) DEFAULT NULL,
  `Flight_name` varchar(100) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `Travel_date` varchar(100) DEFAULT NULL,
  `stz` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `credit_card_information` */

DROP TABLE IF EXISTS `credit_card_information`;

CREATE TABLE `credit_card_information` (
  `User_name` varchar(100) DEFAULT NULL,
  `Credit_card_name` varchar(100) DEFAULT NULL,
  `Credit_card_number` varchar(100) DEFAULT NULL,
  `Credit_card_expiration_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `User_name` varchar(100) DEFAULT NULL,
  `feedback` varchar(1000) DEFAULT NULL,
  `rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `flights` */

DROP TABLE IF EXISTS `flights`;

CREATE TABLE `flights` (
  `Flight_number` varchar(100) DEFAULT NULL,
  `Airline_Name` varchar(100) DEFAULT NULL,
  `Departure_Date` varchar(100) DEFAULT NULL,
  `Flight_Status` varchar(100) DEFAULT NULL,
  `Departure_Time` varchar(100) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `Arrival_Time` varchar(100) DEFAULT NULL,
  `Arrival_Date` varchar(100) DEFAULT NULL,
  `Air_miles` int(11) DEFAULT NULL,
  `Number_of_adults` int(11) DEFAULT NULL,
  `Number_of_Children` int(11) DEFAULT NULL,
  `Flight_Duration` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `flightsdata` */

DROP TABLE IF EXISTS `flightsdata`;

CREATE TABLE `flightsdata` (
  `Flight_number` varchar(100) DEFAULT NULL,
  `Airline_Name` varchar(100) DEFAULT NULL,
  `Departure_Date` varchar(100) DEFAULT NULL,
  `Departure_Time` varchar(100) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `Arrival_Time` varchar(100) DEFAULT NULL,
  `Arrival_Date` varchar(100) DEFAULT NULL,
  `Air_miles` int(11) DEFAULT NULL,
  `Flight_Duration` varchar(100) DEFAULT NULL,
  `Availability` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `Hotel_ID` varchar(15) NOT NULL,
  `Hotel_Name` varchar(15) NOT NULL,
  `City` varchar(75) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `price` float DEFAULT NULL,
  `beds` int(11) DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`Hotel_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hotel_information` */

DROP TABLE IF EXISTS `hotel_information`;

CREATE TABLE `hotel_information` (
  `HotelId` varchar(100) DEFAULT NULL,
  `Hotel_name` varchar(100) DEFAULT NULL,
  `Check_in_Time` varchar(100) DEFAULT NULL,
  `Check_in_Date` varchar(100) DEFAULT NULL,
  `Checkout_Time` varchar(100) DEFAULT NULL,
  `Checkout_Date` varchar(100) DEFAULT NULL,
  `Number_of_Guests` varchar(100) DEFAULT NULL,
  `Number_of_rooms` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rpoints` */

DROP TABLE IF EXISTS `rpoints`;

CREATE TABLE `rpoints` (
  `User_name` varchar(100) DEFAULT NULL,
  `points` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `User_Name` varchar(100) NOT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Name_` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`User_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
