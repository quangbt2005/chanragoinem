/*
SQLyog Enterprise - MySQL GUI v6.13
MySQL - 5.1.36-community-log : Database - belamdep_chanra
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `categories` */

insert  into `categories`(`id`,`category_name`,`category_parent`,`deleted`,`created_date`,`updated_date`) values (1,'Category 1',0,'0',NULL,'2010-10-17 09:46:05'),(2,'Category 2',0,'0',NULL,'2010-10-17 08:50:17'),(3,'Category 1.1',1,'0','2010-10-17 07:31:15',NULL),(7,'Category 1.2.1',6,'0','2010-10-17 08:57:18',NULL),(6,'Category 1.2',1,'0','2010-10-17 08:57:18',NULL),(8,'Category 1.3',1,'0','2010-10-17 08:57:18',NULL);

/*Table structure for table `configurations` */

DROP TABLE IF EXISTS `configurations`;

CREATE TABLE `configurations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `value` text CHARACTER SET utf8,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `configurations` */

insert  into `configurations`(`id`,`name`,`value`,`created_date`,`updated_date`,`deleted`) values (1,'company_name2','TÃªn CÃ´ng Ty',NULL,NULL,'0'),(2,'company_bottom_fone1','(083) 771.5090',NULL,NULL,'0'),(3,'company_bottom_fone2','0918.803.986',NULL,NULL,'0'),(4,'company_bottom_fone3','0903.301.595',NULL,NULL,'0'),(5,'company_side_fone1','1234567890 1',NULL,NULL,'0'),(6,'company_side_fone2','1234567890 2',NULL,NULL,'0'),(7,'company_address','329 LÃª VÄƒn LÆ°Æ¡ng, P. TÃ¢n Quy, Q.7, TP. Há»“ ChÃ­ Minh',NULL,NULL,'0'),(8,'company_name1','CÃ´ng ty TNHH Trang trÃ­ ná»™i tháº¥t',NULL,NULL,'0');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_category` bigint(20) unsigned DEFAULT NULL,
  `product_name` text,
  `product_description` text,
  `product_price` double unsigned DEFAULT NULL,
  `product_image` varchar(1024) DEFAULT NULL,
  `deleted` enum('0','1') DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`product_category`,`product_name`,`product_description`,`product_price`,`product_image`,`deleted`,`created_date`,`updated_date`) values (1,3,'San pham 1','  - Sá»­ dá»¥ng 2 máº·t nhÆ° nhau: 1 máº·t má»m, 1 máº·t cá»©ng\r\n\r\n- Giáº£m thiá»ƒu sá»± áº£nh hÆ°á»Ÿng cho ngÆ°á»i náº±m cÃ¹ng\r\n\r\n- Äiá»u hÃ²a thÃ¢n nhiá»‡t, tÄƒng cÆ°á»ng sá»©c khá»e . KhÃ´ng bá»‹ lÃºn, Ä‘em láº¡i sá»± thoáº£i mÃ¡i khi sá»­ dá»¥ng\r\n\r\n- Há»‡ thá»‘ng chá»‘ng lÃºn á»Ÿ trung tÃ¢m, táº¡o cáº£m giÃ¡c thoáº£i mÃ¡i co xÆ°Æ¡ng sá»‘ng .\r\n\r\n- Vá» bá»c cÃ³ kháº£ nÄƒng khá»­ mÃ¹i vÃ  diá»‡t vi khuáº©n, Ä‘áº£m báº£o vá»‡ sinh cho ngÆ°á»i sá»­ dá»¥ng.\r\n\r\n- LÃ² xo cÃ³ Ä‘á»™ xoáº¯n cao, cÃ³ há»‡ thá»‘ng gia cá»‘ gÃ³c.\r\n\r\n- ThÃ©p carbon (cháº¥t liá»‡u khÃ´ng rá»‰)',10000,'img_flwr.png','0','2010-10-20 07:52:00','2010-11-23 09:23:23'),(2,3,'San pham 2','CÃ´ng nghá»‡ HÃ n quá»‘c chÃº trá»ng Ä‘áº¿n yáº¿u tá»‘ sá»©c khá»e ngÆ°á»i sá»­ dá»¥ng. Ná»‡m vÃ´ trÃ¹ng, thÃ´ng khÃ­ tá»‘t, thoÃ¡ng áº©m nhanh, cÃ³ thá»ƒ giáº·t Ä‘Æ°á»£c. ná»‡m cÃ³ Ä‘á»™ pháº³ng cao nÃªn sá»­ dá»¥ng báº£o Ä‘áº£m sá»± tuáº§n hoÃ n mÃ¡u tá»‘t, khÃ´ng gÃ¢y má»‡t má»i sau khi ngá»§, cÃ³ thá»ƒ gáº¥p gá»n láº¡i sá»­ dá»¥ng nhÆ° sofa, nháº¹ nhÃ ng, dá»… di chuyá»ƒn.\r\n\r\nKhoa há»c chá»©ng minh ráº±ng tia há»“ng ngoáº¡i ráº¥t cÃ³ Ã­ch cho sá»± tuáº§n hoÃ n mÃ¡u vÃ  giá»¯ áº¥m cÆ¡ thá»ƒ, nÃ³ dá»… dÃ ng háº¥p thá»¥ bá»Ÿi nÆ°á»›c, 70% cÆ¡ thá»ƒ con ngÆ°á»i lÃ  nÆ°á»›c nÃªn nÄƒng lÆ°á»£ng phÃ¡t ra tá»« tia há»“ng ngoáº¡i nÃ y Ä‘Æ°á»£c cÆ¡ thá»ƒ háº¥p thá»¥ ráº¥t nhanh. Sá»£i Ceramic (ceramic fiber) cÃ³ kháº£ nÄƒng phÃ¡t ra tia há»“ng ngoáº¡i ráº¥t lá»›n, Ä‘Æ°á»£c Ä‘Æ°a vÃ o sáº£n xuáº¥t ná»‡m ráº¥t cÃ³ lá»£i cho ngÆ°á»i sá»­ dá»¥ng khi náº±m trÃªn nÃ³.\r\n\r\nLá»›p sá»£i Ceramic nÃ y ráº¥t bá»n sau nhiá»u láº§n giáº·t do liÃªn káº¿t theo dáº¡ng há»£p cháº¥t cao phÃ¢n tá»­ vÃ  Ä‘Æ°á»£c xem lÃ  nguyÃªn liá»‡u cao cáº¥p Ä‘ang Ä‘Æ°á»£c nhiá»u nÆ°á»›c tiÃªn tiáº¿n trÃªn tháº¿ giá»›i sá»­ dá»¥ng, Ä‘áº·c biá»‡t trong ngÃ nh sáº£n xuáº¥t ChÄƒn- Ga - Gá»‘i - Ná»‡m. á»¨ng dá»¥ng cÃ´ng nghá»‡ nÃ y EVERON Ä‘Ã£ Ä‘Æ°a ra cÃ¡c sáº£n pháº©m Ä‘áº·c biá»‡t nÃ y.',10000,'dvt1255058461.jpg','0','2010-10-20 07:53:13',NULL),(3,3,'San pham 3','NguyÃªn liá»‡u bÃ´ng Micro Ä‘áº·c biá»‡t cao cáº¥p thay sáº£n pháº©m lÃ´ng vá»‹t Ä‘ang Ä‘Æ°á»£c cÃ¡c nÆ°á»›c tiÃªn tiáº¿n trÃªn tháº¿ giá»›i sá»­ dá»¥ng trong ngÃ nh may máº·c vÃ  sáº£n pháº©m chÄƒn ga gá»‘i Ä‘á»‡m vÃ¬ Ä‘áº·c tÃ­nh phÃ¡t ra tia há»“ng ngoáº¡i. Khoa há»c chá»©ng minh ráº±ng tia há»“ng ngoáº¡i ráº¥t cÃ³ Ã­ch cho sá»± tuáº§n hoÃ n cá»§a mÃ¡u vÃ¬ kÃ­ch á»©ng cÃ¡c cÆ¡ quan ná»™i táº¡ng trong cÆ¡ thá»ƒ hoáº¡t Ä‘á»™ng. 70% cÆ¡ thá»ƒ ngÆ°á»i lÃ  nÆ°á»›c nÃªn nÄƒng lÆ°á»£ng phÃ¡t ra tá»« tia há»“ng ngoáº¡i Ä‘Æ°á»£c cÆ¡ thá»ƒ háº¥p thá»¥ ráº¥t nha nhanh. Do liÃªn káº¿t theo dáº¡ng há»£p cháº¥t cao phÃ¢n tá»­, lá»›p sá»£i Micro bÃªn trong ruá»™t gá»‘i ráº¥t bá»n sau nhiá»u láº§n giáº·t, mang láº¡i cáº£m giÃ¡c má»m máº¡i, Ãªm Ã¡i khi sá»­ dá»¥ng, giÃºp ta',10000,'chan-long-vu-02.jpg','0','2010-10-20 08:07:56','2010-10-20 08:26:45'),(4,3,'San pham 4','NguyÃªn liá»‡u bÃ´ng Micro Ä‘áº·c biá»‡t cao cáº¥p thay sáº£n pháº©m lÃ´ng vá»‹t Ä‘ang Ä‘Æ°á»£c cÃ¡c nÆ°á»›c tiÃªn tiáº¿n trÃªn tháº¿ giá»›i sá»­ dá»¥ng trong ngÃ nh may máº·c vÃ  sáº£n pháº©m chÄƒn ga gá»‘i Ä‘á»‡m vÃ¬ Ä‘áº·c tÃ­nh phÃ¡t ra tia há»“ng ngoáº¡i. Khoa há»c chá»©ng minh ráº±ng tia há»“ng ngoáº¡i ráº¥t cÃ³ Ã­ch cho sá»± tuáº§n hoÃ n cá»§a mÃ¡u vÃ¬ kÃ­ch á»©ng cÃ¡c cÆ¡ quan ná»™i táº¡ng trong cÆ¡ thá»ƒ hoáº¡t Ä‘á»™ng. 70% cÆ¡ thá»ƒ ngÆ°á»i lÃ  nÆ°á»›c nÃªn nÄƒng lÆ°á»£ng phÃ¡t ra tá»« tia há»“ng ngoáº¡i Ä‘Æ°á»£c cÆ¡ thá»ƒ háº¥p thá»¥ ráº¥t nha nhanh. Do liÃªn káº¿t theo dáº¡ng há»£p cháº¥t cao phÃ¢n tá»­, lá»›p sá»£i Micro bÃªn trong ruá»™t gá»‘i ráº¥t bá»n sau nhiá»u láº§n giáº·t, mang láº¡i cáº£m giÃ¡c má»m máº¡i, Ãªm Ã¡i khi sá»­ dá»¥ng, giÃºp ta',10000,'Bear.JPG','0','2010-10-20 08:08:23',NULL),(5,3,'San pham 5','NguyÃªn liá»‡u bÃ´ng Micro Ä‘áº·c biá»‡t cao cáº¥p thay sáº£n pháº©m lÃ´ng vá»‹t Ä‘ang Ä‘Æ°á»£c cÃ¡c nÆ°á»›c tiÃªn tiáº¿n trÃªn tháº¿ giá»›i sá»­ dá»¥ng trong ngÃ nh may máº·c vÃ  sáº£n pháº©m chÄƒn ga gá»‘i Ä‘á»‡m vÃ¬ Ä‘áº·c tÃ­nh phÃ¡t ra tia há»“ng ngoáº¡i. Khoa há»c chá»©ng minh ráº±ng tia há»“ng ngoáº¡i ráº¥t cÃ³ Ã­ch cho sá»± tuáº§n hoÃ n cá»§a mÃ¡u vÃ¬ kÃ­ch á»©ng cÃ¡c cÆ¡ quan ná»™i táº¡ng trong cÆ¡ thá»ƒ hoáº¡t Ä‘á»™ng. 70% cÆ¡ thá»ƒ ngÆ°á»i lÃ  nÆ°á»›c nÃªn nÄƒng lÆ°á»£ng phÃ¡t ra tá»« tia há»“ng ngoáº¡i Ä‘Æ°á»£c cÆ¡ thá»ƒ háº¥p thá»¥ ráº¥t nha nhanh. Do liÃªn káº¿t theo dáº¡ng há»£p cháº¥t cao phÃ¢n tá»­, lá»›p sá»£i Micro bÃªn trong ruá»™t gá»‘i ráº¥t bá»n sau nhiá»u láº§n giáº·t, mang láº¡i cáº£m giÃ¡c má»m máº¡i, Ãªm Ã¡i khi sá»­ dá»¥ng, giÃºp ta zz',10000,'chan-long-vu-02.jpg','0','2010-10-20 08:08:35','2010-10-20 08:26:25'),(6,3,'San pham 6','NguyÃªn liá»‡u bÃ´ng Micro Ä‘áº·c biá»‡t cao cáº¥p thay sáº£n pháº©m lÃ´ng vá»‹t Ä‘ang Ä‘Æ°á»£c cÃ¡c nÆ°á»›c tiÃªn tiáº¿n trÃªn tháº¿ giá»›i sá»­ dá»¥ng trong ngÃ nh may máº·c vÃ  sáº£n pháº©m chÄƒn ga gá»‘i Ä‘á»‡m vÃ¬ Ä‘áº·c tÃ­nh phÃ¡t ra tia há»“ng ngoáº¡i. Khoa há»c chá»©ng minh ráº±ng tia há»“ng ngoáº¡i ráº¥t cÃ³ Ã­ch cho sá»± tuáº§n hoÃ n cá»§a mÃ¡u vÃ¬ kÃ­ch á»©ng cÃ¡c cÆ¡ quan ná»™i táº¡ng trong cÆ¡ thá»ƒ hoáº¡t Ä‘á»™ng. 70% cÆ¡ thá»ƒ ngÆ°á»i lÃ  nÆ°á»›c nÃªn nÄƒng lÆ°á»£ng phÃ¡t ra tá»« tia há»“ng ngoáº¡i Ä‘Æ°á»£c cÆ¡ thá»ƒ háº¥p thá»¥ ráº¥t nha nhanh. Do liÃªn káº¿t theo dáº¡ng há»£p cháº¥t cao phÃ¢n tá»­, lá»›p sá»£i Micro bÃªn trong ruá»™t gá»‘i ráº¥t bá»n sau nhiá»u láº§n giáº·t, mang láº¡i cáº£m giÃ¡c má»m máº¡i, Ãªm Ã¡i khi sá»­ dá»¥ng, giÃºp ta',10000,'chan-long-vu-01.jpg','0','2010-10-20 08:08:54',NULL),(7,1,'San pham 7','CÃ¡c bá»™ phá»§ EP Ä‘Æ°á»£c may báº±ng váº£i Cotton 100%,  Ã¡p dá»¥ng cÃ´ng nghá»‡ cháº§n hiá»‡n Ä‘áº¡i, kiá»ƒu cÃ¡ch phong phÃº vá»›i giÃ¡ cáº£ há»£p lÃ½ sáº½ giÃºp báº¡n chá»n cho mÃ¬nh má»™t phong cÃ¡ch riÃªng cho phÃ²ng ngá»§.\r\n\r\nCÃ¡c máº«u chÄƒn bÃ´ng, chÄƒn dáº¡, chÄƒn len sá»­ dá»¥ng nguyÃªn liá»‡u bÃ´ng Ã©p, vÃ´ trÃ¹ng, thÃ´ng khÃ­ tá»‘t, thoÃ¡t áº©m nhanh cÃ³ tháº» giáº·t Ä‘Æ°á»£c\r\n',10000,'Propose.JPG','0','2010-10-21 06:14:58',NULL),(8,1,'San pham 8','CÃ¡c bá»™ phá»§ EP Ä‘Æ°á»£c may báº±ng váº£i Cotton 100%,  Ã¡p dá»¥ng cÃ´ng nghá»‡ cháº§n hiá»‡n Ä‘áº¡i, kiá»ƒu cÃ¡ch phong phÃº vá»›i giÃ¡ cáº£ há»£p lÃ½ sáº½ giÃºp báº¡n chá»n cho mÃ¬nh má»™t phong cÃ¡ch riÃªng cho phÃ²ng ngá»§.\r\n\r\nCÃ¡c máº«u chÄƒn bÃ´ng, chÄƒn dáº¡, chÄƒn len sá»­ dá»¥ng nguyÃªn liá»‡u bÃ´ng Ã©p, vÃ´ trÃ¹ng, thÃ´ng khÃ­ tá»‘t, thoÃ¡t áº©m nhanh cÃ³ tháº» giáº·t Ä‘Æ°á»£c\r\n',10000,'Dog.JPG','0','2010-10-21 06:15:28',NULL),(9,1,'San pham 9','CÃ¡c bá»™ phá»§ EP Ä‘Æ°á»£c may báº±ng váº£i Cotton 100%,  Ã¡p dá»¥ng cÃ´ng nghá»‡ cháº§n hiá»‡n Ä‘áº¡i, kiá»ƒu cÃ¡ch phong phÃº vá»›i giÃ¡ cáº£ há»£p lÃ½ sáº½ giÃºp báº¡n chá»n cho mÃ¬nh má»™t phong cÃ¡ch riÃªng cho phÃ²ng ngá»§.\r\n\r\nCÃ¡c máº«u chÄƒn bÃ´ng, chÄƒn dáº¡, chÄƒn len sá»­ dá»¥ng nguyÃªn liá»‡u bÃ´ng Ã©p, vÃ´ trÃ¹ng, thÃ´ng khÃ­ tá»‘t, thoÃ¡t áº©m nhanh cÃ³ tháº» giáº·t Ä‘Æ°á»£c\r\n',10000,'pcc1254911785.jpg','0','2010-10-21 06:15:45',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
