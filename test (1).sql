/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.7.32-log : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `land_mark` varchar(255) DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `address` */

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `department` */

/*Table structure for table `dependants` */

DROP TABLE IF EXISTS `dependants`;

CREATE TABLE `dependants` (
  `id` int(11) NOT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dependants` */

/*Table structure for table `education` */

DROP TABLE IF EXISTS `education`;

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgjru9q8va8w8snba0a3mg0m2q` (`address`),
  CONSTRAINT `FKgjru9q8va8w8snba0a3mg0m2q` FOREIGN KEY (`address`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `education` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `employment_id` varchar(255) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `reporting_manager` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4thuma2ldu3bin38ywwjr4p8a` (`address`),
  KEY `FKkxx4wtsgsdt16iix2pso0k126` (`department`),
  KEY `FK8l2uk2ko5c5g5ielbklwn77to` (`reporting_manager`),
  CONSTRAINT `FK4thuma2ldu3bin38ywwjr4p8a` FOREIGN KEY (`address`) REFERENCES `address` (`id`),
  CONSTRAINT `FK8l2uk2ko5c5g5ielbklwn77to` FOREIGN KEY (`reporting_manager`) REFERENCES `employee` (`id`),
  CONSTRAINT `FKkxx4wtsgsdt16iix2pso0k126` FOREIGN KEY (`department`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values 
(1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
