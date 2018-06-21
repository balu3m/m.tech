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

insert  into `dataset`(`sets`,`city`) values ('r1,h1','Hyderabad'),('r1,h3','Hyderabad'),('r2,h3','Hyderabad'),('r3,h1','Hyderabad'),('r3,h3','Hyderabad'),('r4,h1','Hyderabad'),('r4,h3','Hyderabad'),('r1,b1','Hyderabad'),('r1,b3','Hyderabad'),('r2,b1','Hyderabad'),('r2,b3','Hyderabad'),('r3,b1','Hyderabad'),('r3,b3','Hyderabad'),('r4,b1','Hyderabad'),('r4,b3','Hyderabad'),('h1,b1','Hyderabad'),('h1,b3','Hyderabad'),('h3,b1','Hyderabad'),('h3,b3','Hyderabad'),('r1,h1,b1','Hyderabad'),('r3,h1,b1','Hyderabad'),('r4,h1,b1','Hyderabad'),('r1,h1,b3','Hyderabad'),('r3,h1,b3','Hyderabad'),('r4,h1,b3','Hyderabad'),('r1,h3,b1','Hyderabad'),('r2,h3,b1','Hyderabad'),('r3,h3,b1','Hyderabad'),('r4,h3,b1','Hyderabad'),('r1,h3,b3','Hyderabad'),('r2,h3,b3','Hyderabad'),('r3,h3,b3','Hyderabad'),('r4,h3,b3','Hyderabad');

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

insert  into `exp`(`r1`,`r2`,`dist_`,`set_`,`city`) values ('7','10','3.4570977549783','r1,h1','Hyderabad'),('7','10','0.034445468741273244','r1,h3','Hyderabad'),('6','10','2.125423063607505','r2,h3','Hyderabad'),('10','10','3.4570977549783','r3,h1','Hyderabad'),('10','10','0.034445468741273244','r3,h3','Hyderabad'),('10','10','3.344016412035993','r4,h1','Hyderabad'),('10','10','1.5345161156773186','r4,h3','Hyderabad'),('7','10','0.0','r1,b1','Hyderabad'),('7','10','0.04097215169298834','r1,b3','Hyderabad'),('6','10','2.0910343303392485','r2,b1','Hyderabad'),('6','10','2.099178483409685','r2,b3','Hyderabad'),('10','10','0.0','r3,b1','Hyderabad'),('10','10','0.04097215169298834','r3,b3','Hyderabad'),('10','10','1.5553497400044018','r4,b1','Hyderabad'),('10','10','1.5200520176180228','r4,b3','Hyderabad'),('10','10','3.4570977549783','h1,b1','Hyderabad'),('10','10','3.4664631373283714','h1,b3','Hyderabad'),('10','10','0.034445468741273244','h3,b1','Hyderabad'),('10','10','0.049921470865877234','h3,b3','Hyderabad');

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

insert  into `exp2`(`r1`,`r2`,`r3`,`dist_`,`set_`,`city`) values ('10','10','10','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r5,h3,b1','Hyderabad'),('10','10','10','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r5,h3,b3','Hyderabad'),('10','10','10','2.14946048962366','r1,h2,b1','Hyderabad'),('10','10','10','2.14946048962366','r4,h2,b1','Hyderabad'),('10','10','10','2.14946048962366','r3,h2,b1','Hyderabad'),('10','10','6','2.14946048962366','r5,h2,b1','Hyderabad'),('10','10','10','2.150889670526174','r1,h2,b3','Hyderabad'),('10','10','10','2.150889670526174','r4,h2,b3','Hyderabad'),('10','10','10','2.150889670526174','r3,h2,b3','Hyderabad'),('10','10','6','2.150889670526174','r5,h2,b3','Hyderabad'),('10','10','10','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r5,h3,b1','Hyderabad'),('10','10','10','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r5,h3,b3','Hyderabad'),('10','10','10','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r5,h3,b1','Hyderabad'),('10','10','10','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r5,h3,b3','Hyderabad'),('10','10','7','3.4570977549783','r1,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r3,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r4,h1,b1','Hyderabad'),('10','10','7','3.4664631373283714','r1,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r3,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r4,h1,b3','Hyderabad'),('10','10','7','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r2,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','7','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r2,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','7','3.4570977549783','r1,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r3,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r4,h1,b1','Hyderabad'),('10','10','7','3.4664631373283714','r1,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r3,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r4,h1,b3','Hyderabad'),('10','10','7','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r2,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','7','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r2,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','7','3.4570977549783','r1,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r3,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r4,h1,b1','Hyderabad'),('10','10','7','3.4664631373283714','r1,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r3,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r4,h1,b3','Hyderabad'),('10','10','7','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r2,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','7','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r2,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','7','3.4570977549783','r1,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r3,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r4,h1,b1','Hyderabad'),('10','10','7','3.4664631373283714','r1,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r3,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r4,h1,b3','Hyderabad'),('10','10','7','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r2,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','7','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r2,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad'),('10','10','7','3.4570977549783','r1,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r3,h1,b1','Hyderabad'),('10','10','10','3.4570977549783','r4,h1,b1','Hyderabad'),('10','10','7','3.4664631373283714','r1,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r3,h1,b3','Hyderabad'),('10','10','10','3.4664631373283714','r4,h1,b3','Hyderabad'),('10','10','7','0.034445468741273244','r1,h3,b1','Hyderabad'),('10','10','6','0.034445468741273244','r2,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r3,h3,b1','Hyderabad'),('10','10','10','0.034445468741273244','r4,h3,b1','Hyderabad'),('10','10','7','0.049921470865877234','r1,h3,b3','Hyderabad'),('10','10','6','0.049921470865877234','r2,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r3,h3,b3','Hyderabad'),('10','10','10','0.049921470865877234','r4,h3,b3','Hyderabad');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `rid` varchar(5) NOT NULL,
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
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `member` */

insert  into `member`(`rid`,`rname`,`mname`,`memail`,`mpno`,`mno`,`about`,`type`,`lat`,`lon`,`city`,`zip`,`pwd`,`rating`) values ('b1','Aditya','Adithya','Adi@in.com','8522991105','8522991105','AC Bar','bar','17.436951506722654','78.44502579788968','Hyderabad','500873','sona',10),('b2','Healthy','hamid','hamid@gmail.com','8522991105','8522991105','Ac Bar and restaurant','bar','17.406951506722654','78.34502579788968','Hyderabad','500032','hamid',10),('b3','Primes','Swamy','swamy@in.ocm','9052830803','9052830803','AC Bar','bar','17.437319995754006','78.44502579788968','Hyderabad','500082','c1',10),('h1','BlueFox Hotel','Bhargav','Bhargav@gmail.com','04065511811','0819135811','Its AC/non-Ac Hotel','hotel','17.4300166383597','78.4132578849717','Hyderabad','500033','1234',10),('h2','Malar Hotel','Sajid','sajid22@gmail.com','9635555666','966588888','Ac rooms ','hotel','17.436460186856333','78.46528184037015','Hyderabad','500016','sajid',5.5),('h3','Leamon','Swamy','Leamon@gmail.com','9052830803','9052830803','Super Delux Hotel','hotel','17.43699244998513','78.4447039328079','Hyderabad','500873','b1',10),('r1','Ruchi Cafe','ali','alinowinhyd@gmail.com','8522991105','8522991105','Veg and non Veg','restaurant','17.436951506722654','78.44502579788968','Hyderabad','500873','ali',7.5),('r2','Sajid Food House','MD SAJID','sjid@in.com','04065511811','8121953811','Its Pure Veg Hotel','restaurant','17.4333894077128','78.46438061814115','Hyderabad','500016','sajid',6),('r3','Abhi Ruhi','Sajid','sajid@gmail.com','8522991105','9052830803','Veg Only','restaurant','17.436951506722654','78.44502579788968','Hyderabad','500873','a1',10),('r4','Hyderabad House','Sajid','sajid24x7@gmail.com','040 65511811','8121953811','Non Veg and Veg Available','restaurant','17.44904984083884','78.43766581635282','Hyderabad','500038','SAJID',10);

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

insert  into `register`(`id`,`name`,`lname`,`address`,`city`,`state`,`zip`,`phone`,`email`,`pwd`,`profilepic`) values (1,'sajid','md','siri towers',NULL,NULL,NULL,'9879879878','sajid24x7@gmail.com','SAJID',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
