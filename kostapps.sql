/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.7.20-log : Database - kostapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `guest` */

DROP TABLE IF EXISTS `guest`;

CREATE TABLE `guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firs_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `id_number` varchar(15) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `checkin_date` date DEFAULT NULL,
  `checkout_date` date DEFAULT NULL,
  `is_checkedout` tinyint(1) DEFAULT NULL,
  `last_checkedout_room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`),
  KEY `guest_2` (`last_checkedout_room_id`),
  CONSTRAINT `guest_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  CONSTRAINT `guest_2` FOREIGN KEY (`last_checkedout_room_id`) REFERENCES `room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `guest` */

insert  into `guest`(`id`,`firs_name`,`last_name`,`id_number`,`phone_number`,`room_id`,`checkin_date`,`checkout_date`,`is_checkedout`,`last_checkedout_room_id`) values 
(1,'Abyan','Dzaka','B2046978','085881751599',1,'2019-05-21','2019-05-24',0,-999);

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(10) DEFAULT NULL,
  `standard` varchar(50) DEFAULT NULL,
  `is_occupied` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `room` */

insert  into `room`(`id`,`number`,`standard`,`is_occupied`) values 
(-999,-999,'nonexistent',0),
(1,101,'standard',1),
(2,102,'Bisnis',0),
(3,103,'Standard',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `firs_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
