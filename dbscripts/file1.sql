/*
SQLyog Enterprise - MySQL GUI v6.13
MySQL - 5.1.36-community-log : Database - chanragoinem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `chanragoinem`;

USE `chanragoinem`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` text,
  `category_parent` bigint(20) unsigned DEFAULT NULL,
  `deleted` enum('0','1') DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `categories` */

insert  into `categories`(`id`,`category_name`,`category_parent`,`deleted`,`created_date`,`updated_date`) values (1,'Mun 12345',0,'0',NULL,'2010-10-17 09:46:05'),(2,'Men',0,'0',NULL,'2010-10-17 08:50:17'),(3,'chieu',0,'0','2010-10-17 07:31:15',NULL),(4,'vietnam',1,'1','2010-10-17 07:32:52','2010-10-17 10:15:04'),(5,'',0,'0','2010-10-17 08:49:05',NULL),(6,'vietnam',1,'0','2010-10-17 08:57:18',NULL);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_category` bigint(20) unsigned DEFAULT NULL,
  `product_name` text,
  `product_description` text,
  `product_price` double unsigned DEFAULT NULL,
  `deleted` enum('0','1') DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`product_category`,`product_name`,`product_description`,`product_price`,`deleted`,`created_date`,`updated_date`) values (1,1,'Mun 1','Mun luoi thep chong muoi',30000,'0',NULL,'2010-10-17 10:14:35'),(2,1,'Mun 2','Mun vai chong muoi',10000,'0',NULL,'2010-10-17 10:14:31'),(3,2,'Mem long cuu','Mem long cuu xuat xu Chau Au',500000,'0',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
