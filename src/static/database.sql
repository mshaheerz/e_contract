/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 5.5.20-log : Database - econtractor
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`econtractor` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `econtractor`;

/*Table structure for table `applyjob` */

DROP TABLE IF EXISTS `applyjob`;

CREATE TABLE `applyjob` (
  `applyid` int(11) NOT NULL AUTO_INCREMENT,
  `vacancyid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`applyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `applyjob` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL AUTO_INCREMENT,
  `fromid` int(11) DEFAULT NULL,
  `toid` int(11) DEFAULT NULL,
  `massage` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaintid` int(11) NOT NULL AUTO_INCREMENT,
  `compalaint` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `replay` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`complaintid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`complaintid`,`compalaint`,`date`,`userid`,`replay`) values 
(1,'work not good','2021-10-21',3,'pending'),
(2,'not good','2021-11-10',3,'pending');

/*Table structure for table `contractor` */

DROP TABLE IF EXISTS `contractor`;

CREATE TABLE `contractor` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `sevice` varchar(50) DEFAULT NULL,
  `loginid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `contractor` */

insert  into `contractor`(`cid`,`fname`,`lname`,`gender`,`place`,`post`,`pin`,`phone`,`sevice`,`loginid`) values 
(1,'muhammed','shaheer','male','areekode','areekode',673639,7592978136,'engineer',2);

/*Table structure for table `features` */

DROP TABLE IF EXISTS `features`;

CREATE TABLE `features` (
  `featureid` int(11) NOT NULL AUTO_INCREMENT,
  `contractid` int(11) DEFAULT NULL,
  `skills` varchar(50) DEFAULT NULL,
  `experiance` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`featureid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `features` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedid` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`feedid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`feedid`,`feedback`,`userid`,`date`,`type`) values 
(1,'good',3,'2021-10-30','user'),
(2,'nice',3,'2021-11-09','user');

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `locationid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`locationid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `location` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `loginid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`loginid`,`username`,`password`,`usertype`) values 
(1,'rahil','123','admin'),
(2,'shaheer','12345','pending'),
(3,'bsnu','123','user'),
(4,'junaid','123','contractor');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `requestid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `conid` int(11) DEFAULT NULL,
  `work` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`requestid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`requestid`,`userid`,`conid`,`work`,`date`,`status`) values 
(1,3,4,'doc','2021-11-11','pending');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `phonenumber` bigint(20) DEFAULT NULL,
  `loginid` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`userid`,`fname`,`lname`,`place`,`post`,`pin`,`phonenumber`,`loginid`) values 
(1,'muhammed','rahil','areekode','areekode',673639,7592978136,3);

/*Table structure for table `vaccancy` */

DROP TABLE IF EXISTS `vaccancy`;

CREATE TABLE `vaccancy` (
  `vaccid` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(50) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  `contractid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `vacancy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vaccid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `vaccancy` */

insert  into `vaccancy`(`vaccid`,`job`,`details`,`contractid`,`date`,`vacancy`) values 
(2,'eng','mbbs',4,'2021-11-13','4');

/*Table structure for table `works` */

DROP TABLE IF EXISTS `works`;

CREATE TABLE `works` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `contractid` int(11) DEFAULT NULL,
  `work` varchar(50) DEFAULT NULL,
  `document` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `works` */

insert  into `works`(`userid`,`contractid`,`work`,`document`) values 
(1,4,'home construction','construction document');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
