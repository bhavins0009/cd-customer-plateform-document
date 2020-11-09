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
/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `iso2_code` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL,
  `iso3_code` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `country` */

LOCK TABLES `country` WRITE;

insert  into `country`(`id`,`description`,`iso2_code`,`iso3_code`) values 
(2,'United Arab Emirates','AE','ARE'),
(3,'Afghanistan','AF','AFG'),
(4,'Antigua and Barbuda','AG','ATG'),
(5,'Anguilla','AI','AIA'),
(6,'Albania','AL','ALB'),
(7,'Armenia','AM','ARM'),
(8,'Angola','AO','AGO'),
(9,'Antarctica','AQ','ATA'),
(10,'Argentina','AR','ARG'),
(11,'American Samoa','AS','ASM'),
(12,'Austria','AT','AUT'),
(13,'Australia','AU','AUS'),
(14,'Aruba','AW','ABW'),
(15,'Åland Islands','AX','ALA'),
(16,'Azerbaijan','AZ','AZE'),
(17,'Bosnia and Herzegovina','BA','BIH'),
(18,'Barbados','BB','BRB'),
(19,'Bangladesh','BD','BGD'),
(20,'Belgium','BE','BEL'),
(21,'Burkina Faso','BF','BFA'),
(22,'Bulgaria','BG','BGR'),
(23,'Bahrain','BH','BHR'),
(24,'Burundi','BI','BDI'),
(25,'Benin','BJ','BEN'),
(26,'Saint Barthélemy','BL','BLM'),
(27,'Bermuda','BM','BMU'),
(28,'Brunei Darussalam','BN','BRN'),
(29,'Bolivia, Plurinational State of','BO','BOL'),
(30,'Bonaire, Sint Eustatius and Saba','BQ','BES'),
(31,'Brazil','BR','BRA'),
(32,'Bahamas','BS','BHS'),
(33,'Bhutan','BT','BTN'),
(34,'Bouvet Island','BV','BVT'),
(35,'Botswana','BW','BWA'),
(36,'Belarus','BY','BLR'),
(37,'Belize','BZ','BLZ'),
(38,'Canada','CA','CAN'),
(39,'Cocos (Keeling) Islands','CC','CCK'),
(40,'Congo, the Democratic Republic of the','CD','COD'),
(41,'Central African Republic','CF','CAF'),
(42,'Congo','CG','COG'),
(43,'Switzerland','CH','CHE'),
(44,'Cook Islands','CK','COK'),
(45,'Chile','CL','CHL'),
(46,'Cameroon','CM','CMR'),
(47,'China','CN','CHN'),
(48,'Colombia','CO','COL'),
(49,'Costa Rica','CR','CRI'),
(50,'Cuba','CU','CUB'),
(51,'Cabo Verde','CV','CPV'),
(52,'Curaçao','CW','CUW'),
(53,'Christmas Island','CX','CXR'),
(54,'Cyprus','CY','CYP'),
(55,'Czech Republic','CZ','CZE'),
(56,'Germany','DE','DEU'),
(57,'Djibouti','DJ','DJI'),
(58,'Denmark','DK','DNK'),
(59,'Dominica','DM','DMA'),
(60,'Dominican Republic','DO','DOM'),
(61,'Algeria','DZ','DZA'),
(62,'Ecuador','EC','ECU'),
(63,'Estonia','EE','EST'),
(64,'Egypt','EG','EGY'),
(65,'Western Sahara','EH','ESH'),
(66,'Eritrea','ER','ERI'),
(67,'Spain','ES','ESP'),
(68,'Ethiopia','ET','ETH'),
(69,'Finland','FI','FIN'),
(70,'Fiji','FJ','FJI'),
(71,'Falkland Islands (Malvinas)','FK','FLK'),
(72,'Micronesia, Federated States of','FM','FSM'),
(73,'Faroe Islands','FO','FRO'),
(74,'France','FR','FRA'),
(75,'Gabon','GA','GAB'),
(76,'United Kingdom of Great Britain and Northern Ireland','GB','GBR'),
(77,'Grenada','GD','GRD'),
(78,'Georgia','GE','GEO'),
(79,'French Guiana','GF','GUF'),
(80,'Guernsey','GG','GGY'),
(81,'Ghana','GH','GHA'),
(82,'Gibraltar','GI','GIB'),
(83,'Greenland','GL','GRL'),
(84,'Gambia','GM','GMB'),
(85,'Guinea','GN','GIN'),
(86,'Guadeloupe','GP','GLP'),
(87,'Equatorial Guinea','GQ','GNQ'),
(88,'Greece','GR','GRC'),
(89,'South Georgia and the South Sandwich Islands','GS','SGS'),
(90,'Guatemala','GT','GTM'),
(91,'Guam','GU','GUM'),
(92,'Guinea-Bissau','GW','GNB'),
(93,'Guyana','GY','GUY'),
(94,'Hong Kong','HK','HKG'),
(95,'Heard Island and McDonald Islands','HM','HMD'),
(96,'Honduras','HN','HND'),
(97,'Croatia','HR','HRV'),
(98,'Haiti','HT','HTI'),
(99,'Hungary','HU','HUN'),
(100,'Indonesia','ID','IDN'),
(101,'Ireland','IE','IRL'),
(102,'Israel','IL','ISR'),
(103,'Isle of Man','IM','IMN'),
(104,'India','IN','IND'),
(105,'British Indian Ocean Territory','IO','IOT'),
(106,'Iraq','IQ','IRQ'),
(107,'Iran, Islamic Republic of','IR','IRN'),
(108,'Iceland','IS','ISL'),
(109,'Italy','IT','ITA'),
(110,'Jersey','JE','JEY'),
(111,'Jamaica','JM','JAM'),
(112,'Jordan','JO','JOR'),
(113,'Japan','JP','JPN'),
(114,'Kenya','KE','KEN'),
(115,'Kyrgyzstan','KG','KGZ'),
(116,'Cambodia','KH','KHM'),
(117,'Kiribati','KI','KIR'),
(118,'Comoros','KM','COM'),
(119,'Saint Kitts and Nevis','KN','KNA'),
(120,'Korea, Republic of','KR','KOR'),
(121,'Kuwait','KW','KWT'),
(122,'Cayman Islands','KY','CYM'),
(123,'Kazakhstan','KZ','KAZ'),
(124,'Lebanon','LB','LBN'),
(125,'Saint Lucia','LC','LCA'),
(126,'Liechtenstein','LI','LIE'),
(127,'Sri Lanka','LK','LKA'),
(128,'Liberia','LR','LBR'),
(129,'Lesotho','LS','LSO'),
(130,'Lithuania','LT','LTU'),
(131,'Luxembourg','LU','LUX'),
(132,'Latvia','LV','LVA'),
(133,'Libya','LY','LBY'),
(134,'Morocco','MA','MAR'),
(135,'Monaco','MC','MCO'),
(136,'Moldova, Republic of','MD','MDA'),
(137,'Montenegro','ME','MNE'),
(138,'Saint Martin (French part)','MF','MAF'),
(139,'Madagascar','MG','MDG'),
(140,'Marshall Islands','MH','MHL'),
(141,'Macedonia, the former Yugoslav Republic of','MK','MKD'),
(142,'Mali','ML','MLI'),
(143,'Myanmar','MM','MMR'),
(144,'Mongolia','MN','MNG'),
(145,'Macao','MO','MAC'),
(146,'Northern Mariana Islands','MP','MNP'),
(147,'Martinique','MQ','MTQ'),
(148,'Mauritania','MR','MRT'),
(149,'Montserrat','MS','MSR'),
(150,'Malta','MT','MLT'),
(151,'Mauritius','MU','MUS'),
(152,'Maldives','MV','MDV'),
(153,'Malawi','MW','MWI'),
(154,'Mexico','MX','MEX'),
(155,'Malaysia','MY','MYS'),
(156,'Mozambique','MZ','MOZ'),
(157,'Namibia','NA','NAM'),
(158,'New Caledonia','NC','NCL'),
(159,'Niger','NE','NER'),
(160,'Norfolk Island','NF','NFK'),
(161,'Nigeria','NG','NGA'),
(162,'Nicaragua','NI','NIC'),
(163,'Netherlands','NL','NLD'),
(164,'Norway','NO','NOR'),
(165,'Nepal','NP','NPL'),
(166,'Nauru','NR','NRU'),
(167,'Niue','NU','NIU'),
(168,'New Zealand','NZ','NZL'),
(169,'Oman','OM','OMN'),
(170,'Panama','PA','PAN'),
(171,'Peru','PE','PER'),
(172,'French Polynesia','PF','PYF'),
(173,'Papua New Guinea','PG','PNG'),
(174,'Philippines','PH','PHL'),
(175,'Pakistan','PK','PAK'),
(176,'Poland','PL','POL'),
(177,'Saint Pierre and Miquelon','PM','SPM'),
(178,'Pitcairn','PN','PCN'),
(179,'Puerto Rico','PR','PRI'),
(180,'Palestine, State of','PS','PSE'),
(181,'Portugal','PT','PRT'),
(182,'Palau','PW','PLW'),
(183,'Paraguay','PY','PRY'),
(184,'Qatar','QA','QAT'),
(185,'Réunion','RE','REU'),
(186,'Romania','RO','ROU'),
(187,'Serbia','RS','SRB'),
(188,'Russian Federation','RU','RUS'),
(189,'Rwanda','RW','RWA'),
(190,'Saudi Arabia','SA','SAU'),
(191,'Solomon Islands','SB','SLB'),
(192,'Seychelles','SC','SYC'),
(193,'Sudan','SD','SDN'),
(194,'Sweden','SE','SWE'),
(195,'Singapore','SG','SGP'),
(196,'Saint Helena, Ascension and Tristan da Cunha','SH','SHN'),
(197,'Slovenia','SI','SVN'),
(198,'Svalbard and Jan Mayen','SJ','SJM'),
(199,'Slovakia','SK','SVK'),
(200,'Sierra Leone','SL','SLE'),
(201,'San Marino','SM','SMR'),
(202,'Senegal','SN','SEN'),
(203,'Somalia','SO','SOM'),
(204,'Suriname','SR','SUR'),
(205,'South Sudan','SS','SSD'),
(206,'Sao Tome and Principe','ST','STP'),
(207,'El Salvador','SV','SLV'),
(208,'Sint Maarten (Dutch part)','SX','SXM'),
(209,'Syrian Arab Republic','SY','SYR'),
(210,'Swaziland','SZ','SWZ'),
(211,'Turks and Caicos Islands','TC','TCA'),
(212,'Chad','TD','TCD'),
(213,'French Southern Territories','TF','ATF'),
(214,'Togo','TG','TGO'),
(215,'Thailand','TH','THA'),
(216,'Tajikistan','TJ','TJK'),
(217,'Tokelau','TK','TKL'),
(218,'Timor-Leste','TL','TLS'),
(219,'Turkmenistan','TM','TKM'),
(220,'Tunisia','TN','TUN'),
(221,'Tonga','TO','TON'),
(222,'Turkey','TR','TUR'),
(223,'Trinidad and Tobago','TT','TTO'),
(224,'Tuvalu','TV','TUV'),
(225,'Taiwan, Province of China','TW','TWN'),
(226,'Tanzania, United Republic of','TZ','TZA'),
(227,'Ukraine','UA','UKR'),
(228,'Uganda','UG','UGA'),
(229,'United States Minor Outlying Islands','UM','UMI'),
(230,'United States of America','US','USA'),
(231,'Uruguay','UY','URY'),
(232,'Uzbekistan','UZ','UZB'),
(233,'Holy See','VA','VAT'),
(234,'Saint Vincent and the Grenadines','VC','VCT'),
(235,'Venezuela, Bolivarian Republic of','VE','VEN'),
(236,'Virgin Islands, British','VG','VGB'),
(237,'Virgin Islands, U.S.','VI','VIR'),
(238,'Viet Nam','VN','VNM'),
(239,'Vanuatu','VU','VUT'),
(240,'Wallis and Futuna','WF','WLF'),
(241,'Samoa','WS','WSM'),
(242,'Yemen','YE','YEM'),
(243,'Mayotte','YT','MYT'),
(244,'South Africa','ZA','ZAF'),
(245,'Zambia','ZM','ZMB'),
(246,'Zimbabwe','ZW','ZWE');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
