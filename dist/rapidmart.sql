/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - rapidmart
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rapidmart` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `rapidmart`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cust_cont` varchar(15) DEFAULT NULL,
  `bill_amt` varchar(20) DEFAULT NULL,
  `bill_date` varchar(30) DEFAULT NULL,
  `bill_time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

/*Table structure for table `dmg_stock` */

DROP TABLE IF EXISTS `dmg_stock`;

CREATE TABLE `dmg_stock` (
  `p_id` int(4) DEFAULT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `mfd_date` varchar(60) DEFAULT NULL,
  `exp_date` varchar(30) DEFAULT NULL,
  `p_qty` varchar(40) DEFAULT NULL,
  `date_time` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dmg_stock` */

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `invc_no` int(4) DEFAULT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `p_qty` varchar(30) DEFAULT NULL,
  `p_company` varchar(50) DEFAULT NULL,
  `p_sp` varchar(40) DEFAULT NULL,
  `cust_cont` varchar(40) DEFAULT NULL,
  `date_time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `invoice` */

insert  into `invoice`(`invc_no`,`p_name`,`p_qty`,`p_company`,`p_sp`,`cust_cont`,`date_time`) values (2,'TV','2','LG','16000','123456789','Fri Jul 26 12:15:30 IST 2024'),(3,'fan','2','Usha','300','123456789','Fri Jul 26 12:24:09 IST 2024'),(4,'fan','2','Usha','300','123456789','Fri Jul 26 12:25:29 IST 2024'),(5,'fan','2','Usha','300','99999999','Fri Jul 26 12:32:06 IST 2024'),(5,'TV','2','LG','16000','99999999','Fri Jul 26 12:32:15 IST 2024'),(5,'AC','1','tata','23000','99999999','Fri Jul 26 12:32:24 IST 2024'),(6,'TV','3','LG','16000','99999999','Sat Jul 27 11:00:16 IST 2024'),(7,'fan','1','Usha','300','123456789','Sat Jul 27 11:50:30 IST 2024'),(8,'fan','2','Usha','300','123456789','Sat Jul 27 11:56:39 IST 2024'),(9,'TV','1','LG','16000','12345679','Sun Jul 28 22:54:37 IST 2024'),(10,'TV','1','LG','16000','123456789','Fri Aug 02 22:28:08 IST 2024');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user` varchar(20) DEFAULT NULL,
  `pswd` varchar(20) DEFAULT NULL,
  `utype` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user`,`pswd`,`utype`) values ('admin','abcd','Admin'),('aman','aman','Employee');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `p_id` int(4) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(30) DEFAULT NULL,
  `p_company` varchar(30) DEFAULT NULL,
  `sup_id` varchar(30) DEFAULT NULL,
  `p_ctg` varchar(30) DEFAULT NULL,
  `p_cp` varchar(30) DEFAULT NULL,
  `p_sp` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`p_id`,`p_name`,`p_company`,`sup_id`,`p_ctg`,`p_cp`,`p_sp`) values (1,'Calculator','NM','2','cal','120','355'),(2,'TV','LG','2','Electric','13000','16000'),(3,'AC','tata','3','Electric','20000','23000'),(4,'fan','Usha','2','Fan','200','300');

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `p_id` int(4) NOT NULL,
  `p_name` varchar(40) DEFAULT NULL,
  `p_reorder` varchar(30) DEFAULT NULL,
  `mfd_date` varchar(56) DEFAULT NULL,
  `exp_date` varchar(50) DEFAULT NULL,
  `p_qty` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

insert  into `stock`(`p_id`,`p_name`,`p_reorder`,`mfd_date`,`exp_date`,`p_qty`) values (1,'fan','24','27/05/2024','NA','41'),(2,'TV','25','27/05/2024','NA','11'),(3,'AC','26','27/05/2024','NA','81');

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `sup_id` int(20) NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(20) DEFAULT NULL,
  `sup_company` varchar(30) DEFAULT NULL,
  `sup_addr` varchar(30) DEFAULT NULL,
  `sup_contact` varchar(15) DEFAULT NULL,
  `sup_contact2` varchar(15) DEFAULT NULL,
  `sup_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `supplier` */

insert  into `supplier`(`sup_id`,`sup_name`,`sup_company`,`sup_addr`,`sup_contact`,`sup_contact2`,`sup_email`) values (1,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Jack','usha','lko','123456789','09876543','ar7999723@gmail.com'),(3,'appu','ABC','Lucknow','123456','234569','ar7999723@gmail.com'),(4,'Adit','wd','wqdw','wqdqw','wqqw','wqwq'),(5,'ayusj','wdw','wd','wd','wd','wwd'),(6,'jack william','abc','abc','abc','abc','abc'),(7,'william','ABC','ABC','ABC','ABC','ABC');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
