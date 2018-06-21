/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - bkc
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `bkc`;

USE `bkc`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `dataset` */

DROP TABLE IF EXISTS `dataset`;

CREATE TABLE `dataset` (
  `sets` varchar(1000) DEFAULT NULL,
  `city` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataset` */

/*Table structure for table `exp` */

DROP TABLE IF EXISTS `exp`;

CREATE TABLE `exp` (
  `r1` varchar(100) DEFAULT NULL,
  `r2` varchar(100) DEFAULT NULL,
  `dist_` varchar(100) DEFAULT NULL,
  `set_` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `exp` */

insert  into `exp`(`r1`,`r2`,`dist_`,`set_`,`city`) values ('10','10','0.034445468741273244','r1,h3','Hyderabad'),('10','10','1.5345161156773186','r4,h3','Hyderabad'),('10','10','0.034445468741273244','r3,h3','Hyderabad'),('6','10','2.125423063607505','r5,h3','Hyderabad'),('10','10','0.0','r1,b1','Hyderabad'),('10','10','0.04097215169298834','r1,b3','Hyderabad'),('10','10','1.5553497400044018','r4,b1','Hyderabad'),('10','10','1.5200520176180228','r4,b3','Hyderabad'),('10','10','0.0','r3,b1','Hyderabad'),('10','10','0.04097215169298834','r3,b3','Hyderabad'),('6','10','2.0910343303392485','r5,b1','Hyderabad'),('6','10','2.099178483409685','r5,b3','Hyderabad'),('10','10','0.034445468741273244','h3,b1','Hyderabad'),('10','10','0.049921470865877234','h3,b3','Hyderabad');

/*Table structure for table `exp2` */

DROP TABLE IF EXISTS `exp2`;

CREATE TABLE `exp2` (
  `r1` varchar(100) DEFAULT NULL,
  `r2` varchar(100) DEFAULT NULL,
  `r3` varchar(100) DEFAULT NULL,
  `dist_` varchar(100) DEFAULT NULL,
  `set_` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `exp2` */

insert  into `exp2`(`r1`,`r2`,`r3`,`dist_`,`set_`,`city`) values ('10','10','10','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r5,h3,b1','Hyderabad'),('10','10','10','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r5,h3,b3','Hyderabad'),('10','10','10','2.14946048962366','r1,h2,b1','Hyderabad'),('10','10','10','2.14946048962366','r4,h2,b1','Hyderabad'),('10','10','10','2.14946048962366','r3,h2,b1','Hyderabad'),('10','10','6','2.14946048962366','r5,h2,b1','Hyderabad'),('10','10','10','2.150889670526174','r1,h2,b3','Hyderabad'),('10','10','10','2.150889670526174','r4,h2,b3','Hyderabad'),('10','10','10','2.150889670526174','r3,h2,b3','Hyderabad'),('10','10','6','2.150889670526174','r5,h2,b3','Hyderabad'),('10','10','10','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r5,h3,b1','Hyderabad'),('10','10','10','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r5,h3,b3','Hyderabad'),('10','10','10','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r5,h3,b1','Hyderabad'),('10','10','10','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r5,h3,b3','Hyderabad');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `rid` varchar(5) DEFAULT NULL,
  `rname` varchar(500) DEFAULT NULL,
  `mname` varchar(500) DEFAULT NULL,
  `memail` varchar(500) NOT NULL,
  `mpno` varchar(500) DEFAULT NULL,
  `mno` varchar(500) DEFAULT NULL,
  `about` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `rating` double DEFAULT '0.1',
  PRIMARY KEY (`memail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `member` */

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `profilepic` longblob,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
