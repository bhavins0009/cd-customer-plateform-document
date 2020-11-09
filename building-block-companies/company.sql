/*
SQLyog Ultimate v12.3.2 (64 bit)
MySQL - 10.0.31-MariaDB-0ubuntu0.16.04.2 : Database - cd-customer-platform
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distribution_partner_id` int(11) NOT NULL,
  `segmentation_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_distribution_partner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Datetime field',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `company` */

LOCK TABLES `company` WRITE;

insert  into `company`(`id`,`distribution_partner_id`,`segmentation_id`,`name`,`number`,`number_distribution_partner`,`registration_number`,`vat_number`,`website`,`email`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,0,'CreditDevice B.V.','1',NULL,NULL,NULL,'www.creditdevice.com',NULL,NULL,NULL,NULL),
(2,2,0,'Collactive B.V.','2',NULL,NULL,NULL,'www.collactive.nl',NULL,NULL,NULL,NULL),
(3,1,0,'DirectDevice B.V.','3',NULL,NULL,NULL,'www.directdevice.nl',NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
