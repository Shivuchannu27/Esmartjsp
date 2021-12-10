/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.27-community-nt : Database - smart
*********************************************************************
Server version : 5.0.27-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `smart`;

USE `smart`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `brequestrentvehicle` */

DROP TABLE IF EXISTS `brequestrentvehicle`;

CREATE TABLE `brequestrentvehicle` (
  `vehicleid` varchar(200) default NULL,
  `aname` varchar(200) default NULL,
  `vname` varchar(200) default NULL,
  `vnum` varchar(200) default NULL,
  `vrfrom` varchar(200) default NULL,
  `vrto` varchar(200) default NULL,
  `vsprice` varchar(200) default NULL,
  `bemail` varchar(120) default NULL,
  `status` varchar(200) default NULL,
  `payment` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `brequestrentvehicle` */

insert  into `brequestrentvehicle`(`vehicleid`,`aname`,`vname`,`vnum`,`vrfrom`,`vrto`,`vsprice`,`bemail`,`status`,`payment`) values ('ren38','admin','hero','KA!!','2021-08-25','2021-09-05','11111','Akshatha@gmail.com','Approved','Paid'),('ren38','admin','hero','KA!!','2021-08-25','2021-09-05','11111','amar@gmail.com','Approved','Paid'),('ren38','admin','hero','KA!!','2021-08-25','2021-09-05','11111','amar@gmail.com','Approved','Paid'),('ren42','admin','ka2','12345678','2021-08-24','2021-08-26','43567','bha@gmail.com','Approved','Paid'),('ren42','admin','ka2','12345678','2021-08-24','2021-08-26','43567','bha@gmail.com','Approved','Paid');

/*Table structure for table `buycusregister` */

DROP TABLE IF EXISTS `buycusregister`;

CREATE TABLE `buycusregister` (
  `userid` varchar(200) NOT NULL,
  `name` varchar(200) default NULL,
  `tel` varchar(200) default NULL,
  `bemail` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `address` varchar(200) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `buycusregister` */

insert  into `buycusregister`(`userid`,`name`,`tel`,`bemail`,`password`,`address`) values ('BUY14','Akshatha','+919491171094','Akshatha@gmail.com','Akshatha','dfdf'),('BUY15','M SUDHEER','9491171094','amar@gmail.com','S1*gpm2712',''),('BUY21','shiv','9491171094','shiv@gmail.com','S1*gpm2712','14-2-71/6 opp balayesu degree colle'),('BUY22','sv','9491171094','sv@gmail.com','S1*gpm2712','14-2-71/6 opp balayesu degree colle'),('BUY23','shivu','9491171094','bha@gmail.com','Bha@9866','sdfgyu;');

/*Table structure for table `buyvehicle` */

DROP TABLE IF EXISTS `buyvehicle`;

CREATE TABLE `buyvehicle` (
  `vehicleid` varchar(200) default NULL,
  `semail` varchar(200) default NULL,
  `vname` varchar(200) default NULL,
  `vrdate` varchar(200) default NULL,
  `vlnum` varchar(200) default NULL,
  `vnum` varchar(200) default NULL,
  `vsprice` varchar(200) default NULL,
  `vsdesc` varchar(200) default NULL,
  `bemail` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  `payment` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `buyvehicle` */

insert  into `buyvehicle`(`vehicleid`,`semail`,`vname`,`vrdate`,`vlnum`,`vnum`,`vsprice`,`vsdesc`,`bemail`,`status`,`payment`) values ('sid10','sunil@gmail.com','scooty','2021-07-27','3214567890','KA!!','4356','black','Akshatha@gmail.com','Approved','Paid'),('sid11','sunil@gmail.com','00','2021-08-24','34','123','4356','ddd','Akshatha@gmail.com','Approved','Paid'),('sid11','sunil@gmail.com','00','2021-08-24','34','123','4356','ddd','Akshatha@gmail.com','Approved','Paid'),('sid11','sunil@gmail.com','00','2021-08-24','34','123','4356','ddd','amar@gmail.com','not_Approved','pending'),('sid16','sudheermuttam090@gmail.com','honda','2021-08-25','324','123','4356','asd','amar@gmail.com','Approved','Paid'),('sid16','sudheermuttam090@gmail.com','honda','2021-08-25','324','123','4356','asd','amar@gmail.com','Approved','Paid'),('sid22','shantu@gmail.com','honda','2021-08-25','123','24','56900','wer','shiv@gmail.com','Approved','Paid'),('sid25','sm@gmail.com','ka2','2021-08-26','67','123','4356','mm','sv@gmail.com','Approved','Paid'),('sid27','sud@gmail.com','hero','2021-08-24','9876','ka11','12345','never','bha@gmail.com','Approved','Paid');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `name` varchar(111) default NULL,
  `tel` varchar(111) default NULL,
  `email` varchar(111) default NULL,
  `message` varchar(111) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`name`,`tel`,`email`,`message`) values ('M SUDHEER','+919491171094','sudheermuttam090@gmail.com','hello');

/*Table structure for table `rentvehicle` */

DROP TABLE IF EXISTS `rentvehicle`;

CREATE TABLE `rentvehicle` (
  `vehicleid` varchar(200) default NULL,
  `aname` varchar(200) default NULL,
  `vname` varchar(200) default NULL,
  `vrdate` varchar(200) default NULL,
  `vnum` varchar(200) default NULL,
  `vsprice` varchar(200) default NULL,
  `vrfrom` varchar(200) default NULL,
  `vrto` varchar(200) default NULL,
  `vsdesc` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rentvehicle` */

insert  into `rentvehicle`(`vehicleid`,`aname`,`vname`,`vrdate`,`vnum`,`vsprice`,`vrfrom`,`vrto`,`vsdesc`) values ('ren41','admin','ka 2','2021-08-10','123','4356','2021-08-25','2021-09-02','34'),('ren42','admin','ka2','2021-08-24','12345678','43567','2021-08-24','2021-08-26','asdfghjkl'),('ren43','admin','honda','2021-08-25','123','4356','2021-08-25','2021-08-26','ytt');

/*Table structure for table `sellcusregister` */

DROP TABLE IF EXISTS `sellcusregister`;

CREATE TABLE `sellcusregister` (
  `sellid` varchar(200) NOT NULL,
  `name` varchar(200) default NULL,
  `tel` varchar(200) default NULL,
  `semail` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `address` varchar(200) default NULL,
  PRIMARY KEY  (`sellid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sellcusregister` */

insert  into `sellcusregister`(`sellid`,`name`,`tel`,`semail`,`password`,`address`) values ('sid13','sunil','+919491171094','sunil@gmail.com','sunil','14-2-71/6 opp balayesu degree colle'),('sid14','M SUDHEER','9491171094','sudheermuttam090@gmail.com','S1*gpm2712','14-2-71/6 opp balayesu degree colle'),('sid19','shantu','9491171094','shantu@gmail.com','S1*gpm2712','14-2-71/6 opp balayesu degree colle'),('sid20','sm','9491171094','sm@gmail.com','S1*gpm2712','14-2-71/6 opp balayesu degree colle'),('sid21','su','','','',''),('sid22','shivu','9491171094','sud@gmail.com','Sud@0900','qwertyujkl;');

/*Table structure for table `sellvehicle` */

DROP TABLE IF EXISTS `sellvehicle`;

CREATE TABLE `sellvehicle` (
  `vehicleid` varchar(11) NOT NULL,
  `semail` varchar(100) default NULL,
  `vname` varchar(100) default NULL,
  `vrdate` varchar(100) default NULL,
  `vlnum` varchar(100) default NULL,
  `vnum` varchar(100) default NULL,
  `vsprice` varchar(100) default NULL,
  `vsdesc` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sellvehicle` */

insert  into `sellvehicle`(`vehicleid`,`semail`,`vname`,`vrdate`,`vlnum`,`vnum`,`vsprice`,`vsdesc`) values ('sid10','sunil@gmail.com','scooty','2021-07-27','3214567890','KA!!','4356','black'),('sid11','sunil@gmail.com','00','2021-08-24','34','123','4356','ddd'),('sid14','amar@gmail.com','ka 2','2021-08-24','12','KA!!','4356','ok'),('sid15','amar@gmail.com','ka 2','2021-08-24','45','KA!!','4356','234'),('sid16','sudheermuttam090@gmail.com','honda','2021-08-25','324','123','4356','asd'),('sid17','sudheermuttam090@gmail.com','ka 2','2021-08-19','345','123','4356','sdf'),('sid19','sudheermuttam090@gmail.com','ka 2','2021-08-26','45','123','56900','wer'),('sid20','sudheermuttam090@gmail.com','ka 2','2021-08-17','11','KA!!','11111','aa'),('sid21','sudheermuttam090@gmail.com','hero','2021-08-18','09','KA!!','56900','ppo'),('sid22','shantu@gmail.com','honda','2021-08-25','123','24','56900','wer'),('sid24','sm@gmail.com','honda','2021-08-25','7654','KA!!','56900','tyuy'),('sid25','sm@gmail.com','ka2','2021-08-26','67','123','4356','mm'),('sid27','sud@gmail.com','hero','2021-08-24','9876','ka11','12345','never');

/*Table structure for table `srequestrentvehicle` */

DROP TABLE IF EXISTS `srequestrentvehicle`;

CREATE TABLE `srequestrentvehicle` (
  `vehicleid` varchar(200) default NULL,
  `aname` varchar(200) default NULL,
  `vname` varchar(200) default NULL,
  `vnum` varchar(200) default NULL,
  `vrfrom` varchar(200) default NULL,
  `vrto` varchar(200) default NULL,
  `vsprice` varchar(200) default NULL,
  `bemail` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  `payment` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `srequestrentvehicle` */

insert  into `srequestrentvehicle`(`vehicleid`,`aname`,`vname`,`vnum`,`vrfrom`,`vrto`,`vsprice`,`bemail`,`status`,`payment`) values ('ren38','admin','hero','KA!!','2021-08-25','2021-09-05','11111','sunil@gmail.com','Approved','Paid'),('ren38','admin','hero','KA!!','2021-08-25','2021-09-05','11111','sunil@gmail.com','Approved','Paid'),('ren38','admin','hero','KA!!','2021-08-25','2021-09-05','11111','sudheermuttam090@gmail.com','Approved','Paid'),('ren42','admin','ka2','12345678','2021-08-24','2021-08-26','43567','sud@gmail.com','Approved','Paid');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
