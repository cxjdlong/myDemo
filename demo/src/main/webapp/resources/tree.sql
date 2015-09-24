/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.22 : Database - longjava
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`longjava` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `longjava`;

/*Table structure for table `menutree` */

DROP TABLE IF EXISTS `menutree`;

CREATE TABLE `menutree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nodeId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `fieldName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `resType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'URL',
  `fieldsIsclose` int(4) NOT NULL DEFAULT '0',
  `resString` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fieldsOrder` int(11) DEFAULT '100',
  `descn` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `menutree` */

insert  into `menutree`(`id`,`nodeId`,`parentId`,`fieldName`,`resType`,`fieldsIsclose`,`resString`,`fieldsOrder`,`descn`,`parameter`) values (31,1,-1,'系统平台管理','URL',0,NULL,100,NULL,''),(32,11,1,'管理员管理','URL',0,NULL,100,NULL,''),(33,110,11,'管理员列表','URL',0,NULL,100,NULL,''),(34,2,-1,'网址数据管理','URL',0,NULL,100,NULL,''),(35,21,2,'基本资料','URL',0,NULL,100,NULL,''),(36,211,21,'站点设置','URL',0,NULL,100,NULL,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
