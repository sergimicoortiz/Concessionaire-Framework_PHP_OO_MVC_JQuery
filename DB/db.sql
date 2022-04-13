-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: concessionaire
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `brand_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `uname` (`brand_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (868,'audi','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/audi.jpg'),(887,'bmw','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/bmw.jpg'),(900,'cadillac','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/cadillac.jpg'),(910,'chevrolet','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/chevrolet.jpg'),(911,'chrysler','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/chrysler.jpg'),(913,'citroen','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/citroen.jpg'),(917,'dacia','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/dacia.jpg'),(918,'daewoo','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/daewoo.jpg'),(934,'dodge','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/dodge.jpg'),(957,'fiat','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/fiat.jpg'),(963,'ford','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/ford.jpg'),(997,'honda','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/honda.jpg'),(1003,'hummer','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/hummer.jpg'),(1005,'hyundai','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/hyundai.jpg'),(1009,'infiniti','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/infiniti.jpg'),(1019,'jaguar','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/jaguar.jpg'),(1022,'jeep','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/jeep.jpg'),(1032,'kia','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/kia.jpg'),(1044,'lexus','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/lexus.jpg'),(1068,'mazda','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/mazda.jpg'),(1074,'mercedes-benz','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/mercedes-benz.jpg'),(1080,'mini','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/mini.jpg'),(1081,'mitsubishi','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/mitsubishi.jpg'),(1093,'nissan','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/nissan.jpg'),(1097,'opel','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/opel.jpg'),(1107,'peugeot','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/peugeot.jpg'),(1114,'porsche','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/porsche.jpg'),(1124,'renault','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/renault.jpg'),(1135,'rover','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/rover.jpg'),(1137,'saab','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/saab.jpg'),(1144,'seat','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/seat.jpg'),(1152,'skoda','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/skoda.jpg'),(1153,'smart','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/smart.jpg'),(1163,'subaru','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/subaru.jpg'),(1165,'suzuki','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/suzuki.jpg'),(1174,'toyota','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/toyota.jpg'),(1191,'volkswagen','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/volkswagen.jpg'),(1192,'volvo','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/brand_logos/volvo.jpg');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `matricula` char(50) DEFAULT NULL,
  `bastidor` char(50) DEFAULT NULL,
  `model` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `km` int DEFAULT NULL,
  `description` text,
  `fuel_type` int DEFAULT NULL,
  `extres` char(200) DEFAULT NULL,
  `f_mat` char(20) DEFAULT NULL,
  `category` int DEFAULT NULL,
  `lat` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lon` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `view_count` int NOT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE KEY `matricula` (`matricula`),
  UNIQUE KEY `bastidor` (`bastidor`),
  KEY `fuel_type` (`fuel_type`),
  KEY `category` (`category`),
  KEY `model` (`model`),
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`fuel_type`) REFERENCES `fuel_type` (`fuel_type_id`),
  CONSTRAINT `car_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`category_id`),
  CONSTRAINT `car_ibfk_3` FOREIGN KEY (`model`) REFERENCES `models` (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1815 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1785,'1428SXM','OP3O7DL62PWREJ092',84,907746,1442,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Frater et T. An haec ab eo non dicuntur? Quacumque enim ingredimur, in aliqua historia vestigium ponimus. Duo Reges: constructio interrete. Certe, nisi voluptatem tanti aestimaretis. ',1,'GPS:Fronatal camera:','1/2/1994',5,'39.83298401173472','0.1405670397859050','city_8',93),(1786,'4982FJP','UGHN6345F2CKMG6IH',419,97711,130877,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quod cum dixissent, ille contra. Et nemo nimium beatus est; Praeteritis, inquit, gaudeo. ',2,'Rear camera:Fronatal camera:','16/5/1996',3,'40.124342245740582','-2.2760243932614462','city_3',21),(1787,'8725NBL','ZFKC8T9OJRLD9E2CD',285,263535,168374,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dat enim intervalla et relaxat. Quis istum dolorem timet? A mene tu? Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat; ',3,'GPS:Fronatal camera:','15/12/2015',4,'39.158404413695020','1.1635859523910495','city_8',72),(1788,'4595END','IXFRHA0R6709JVNFQ',533,879781,269491,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Huius, Lyco, oratione locuples, rebus ipsis ielunior. Illi enim inter se dissentiunt. ',2,'Fronatal camera:','14/3/2028',4,'40.67561705772124','1.5866853715880376','city_2',83),(1789,'5265UBL','JYEIG9V5EWL1JOBZV',255,322337,24255,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sedulo, inquam, faciam. Cyrenaici quidem non recusant; Nemo igitur esse beatus potest. Duo Reges: constructio interrete. Profectus in exilium Tubulus statim nec respondere ausus; Ego vero isti, inquam, permitto. ',4,'Rear camera:Fronatal camera:','2/6/1986',2,'38.83343512770404','-4.1454430819372732','city_3',29),(1790,'8504GCG','OX6KEGBBQECKUM4SY',133,817265,162317,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut optime, secundum naturam affectum esse possit. Videsne quam sit magna dissensio? Omnia peccata paria dicitis. Non est ista, inquam, Piso, magna dissensio. Quod iam a me expectare noli. Quam ob rem tandem, inquit, non satisfacit? ',3,'Rear camera:','23/5/1987',3,'38.151869649506807','-4.5955322140224810','city_4',69),(1791,'8497ETB','DPB0TIVRAPWRCSJ6I',710,132572,243266,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Qua tu etiam inprudens utebare non numquam. Sed nimis multa. Quis Aristidem non mortuum diligit? Honesta oratio, Socratica, Platonis etiam. Duo Reges: constructio interrete. ',3,'GPS:Rear camera:','7/1/1992',1,'38.144444595516022','-2.3682214763135153','city_2',9),(1792,'5314WGZ','E9YCG3ZGSYWAIKC9B',334,165051,171273,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Confecta res esset. Quae cum essent dicta, discessimus. Bonum integritas corporis: misera debilitas. Sullae consulatum? Cum praesertim illa perdiscere ludus esset. Duo Reges: constructio interrete. ',2,'Rear camera:Fronatal camera:','13/1/2023',4,'38.35000495572119','1.1050143884519795','city_8',38),(1793,'3862KQX','20GKLMDQGWZ7W3GIZ',274,394186,258027,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quae cum dixisset, finem ille. Iam id ipsum absurdum, maximum malum neglegi. Duo Reges: constructio interrete. Frater et T. ',3,'Fronatal camera:','6/7/2010',5,'38.103733281147086','-7.553017075149179','city_6',17),(1794,'8041CLK','AORAJZVHNV6YS8DPT',455,404287,110679,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duo Reges: constructio interrete. Sed haec nihil sane ad rem; Non est igitur summum malum dolor. Idem iste, inquam, de voluptate quid sentit? Aliter enim explicari, quod quaeritur, non potest. Laboro autem non sine causa; Sequitur disserendi ratio cognitioque naturae; Gloriosa ostentatio in constituendo summo bono. Omnia peccata paria dicitis. ',3,'Fronatal camera:','22/1/2021',5,'40.15017040713432','-2.4354801479659795','city_5',75),(1795,'1971HVL','E911PDUFYX8IHEGHR',706,974404,286782,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nihilo magis. Si quicquam extra virtutem habeatur in bonis. Videsne, ut haec concinant? ',3,'GPS:Fronatal camera:','6/4/2018',2,'37.105306883366032','-6.5537002633596767','city_2',62),(1796,'3965MPF','A2FIMHVX3TET6YVT9',533,858705,284618,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tamen intellego quid velit. Nosti, credo, illud: Nemo pius est, qui pietatem-; Egone non intellego, quid sit don Graece, Latine voluptas? Eadem nunc mea adversum te oratio est. Hoc enim identidem dicitis, non intellegere nos quam dicatis voluptatem. Duo Reges: constructio interrete. ',2,'Rear camera:Fronatal camera:','12/2/2003',1,'38.12444764362786','-7.1536882540582814','city_2',17),(1797,'2709BDB','ZWTETE1FWIGVTXCS3',139,49324,162268,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et nemo nimium beatus est; Collige omnia, quae soletis: Praesidium amicorum. Sed nunc, quod agimus; Sed ad haec, nisi molestum est, habeo quae velim. Duo Reges: constructio interrete. ',1,'Fronatal camera:','15/10/2012',1,'40.19532079715856','-5.2340281866199137','city_2',34),(1798,'7297XHM','7N6FP8UA0OYFIY6TL',478,779313,40916,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Teneo, inquit, finem illi videri nihil dolere. Quae duo sunt, unum facit. Duo Reges: constructio interrete. Itaque ad tempus ad Pisonem omnes. ',1,'Rear camera:','20/1/2016',3,'40.43949955190044','-2.5997931293619511','city_6',69),(1799,'9024CDT','5MI1A883SPIW3LBFN',428,167507,104940,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Summus dolor plures dies manere non potest? Suo enim quisque studio maxime ducitur. Si quicquam extra virtutem habeatur in bonis. Duo Reges: constructio interrete. Iam in altera philosophiae parte. Negare non possum. ',4,'GPS:Rear camera:Fronatal camera:','5/7/2019',1,'38.90401953498731','1.1866676759989054','city_8',19),(1800,'4721AWW','ESBT6WLOUA1BQQXE4',629,738858,123354,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vide, quaeso, rectumne sit. Illud non continuo, ut aeque incontentae. Itaque ad tempus ad Pisonem omnes. Itaque contra est, ac dicitis; ',2,'Fronatal camera:','23/8/2016',4,'37.105139082428811','-4.2908935312617145','city_1',71),(1801,'8682IJE','FFDCI24HFO73DX9U1',464,256226,150119,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Efficiens dici potest. Maximus dolor, inquit, brevis est. Nihil sane. Reguli reiciendam; Duo Reges: constructio interrete. Utilitatis causa amicitia est quaesita. Optime, inquam. Istic sum, inquit. ',1,'GPS:Rear camera:','27/1/1986',2,'38.108814643125531','-2.3706804615766713','city_2',42),(1802,'9396WQN','2EE5BF53R9PVRU74G',308,398706,285382,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ergo illi intellegunt quid Epicurus dicat, ego non intellego? Et harum quidem rerum facilis est et expedita distinctio. Non enim iam stirpis bonum quaeret, sed animalis. Verum hoc idem saepe faciamus. ',3,'GPS:Fronatal camera:','20/2/2001',5,'37.61375938544875','-7.1087040761846754','city_4',41),(1803,'8297IQF','I8JR4N9C18O2HRNX8',575,353635,10447,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum audissem Antiochum, Brute, ut solebam, cum M. Nulla erit controversia. ',1,'Fronatal camera:','1/4/2014',5,'38.16038042699991','1.5479625274713903','city_7',99),(1804,'2818USD','1DBCKUHJ45YIY0WWF',757,928224,201265,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ille, ut dixi, vitiose. Et quidem, inquit, vehementer errat; ',2,'GPS:Rear camera:','8/5/2004',5,'39.47736430213106','-5.5996167918129814','city_7',19),(1805,'3946WWW','NQMXKXKCSEGA3QNBX',522,674465,43128,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gloriosa ostentatio in constituendo summo bono. Non est igitur voluptas bonum. Minime vero istorum quidem, inquit. Quid de Pythagora? Duo Reges: constructio interrete. Immo videri fortasse. ',2,'GPS:','1/11/2003',2,'38.13387501339325','-5.5121571132566498','city_1',6),(1806,'6704WSB','J7Y2RNJQB9QENGWZN',265,212091,198396,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam nemo umquam voluptatem appellavit, appellat; Quis istud, quaeso, nesciebat? Torquatus, is qui consul cum Cn. Faceres tu quidem, Torquate, haec omnia; Quae ista amicitia est? Duo Reges: constructio interrete. Non igitur bene. Nihil enim hoc differt. ',2,'Rear camera:','5/7/2009',1,'37.89420454416909','1.2637928220335042','city_3',52),(1807,'2599YWR','YR8LAZB1C8JBMYT8Y',817,263443,34400,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit sane ista voluptas. Quod totum contra est. Illa argumenta propria videamus, cur omnia sint paria peccata. Duo Reges: constructio interrete. Utilitatis causa amicitia est quaesita. ',2,'GPS:Rear camera:','25/7/1988',2,'39.99932632188048','-4.2951928047092746','city_8',36),(1808,'9702WTF','N8RLDVHXFMAC3V49C',265,793491,269063,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Que Manilium, ab iisque M. Sed ad illum redeo. Duo Reges: constructio interrete. Haec igitur Epicuri non probo, inquam. ',2,'GPS:','20/2/2019',5,'38.124346985507204','-2.5233426821890560','city_6',5),(1809,'3353UEQ','TQ3M6UFT03YON5IVJ',8,803135,225453,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis istud possit, inquit, negare? An tu me de L. Ne amores quidem sanctos a sapiente alienos esse arbitrantur. Negare non possum. ',1,'Rear camera:','20/8/1988',2,'37.148171769807465','-7.5859096206245187','city_6',19),(1810,'8417XCE','SBK218UVCOT6D2YWT',351,281268,28205,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Summus dolor plures dies manere non potest? Satis est ad hoc responsum. An tu me de L. Ea possunt paria non esse. Nihilo beatiorem esse Metellum quam Regulum. ',2,'Fronatal camera:','28/1/1996',3,'40.69024311810858','-1.2024394278982649','city_6',93),(1811,'8697FOE','2YN7NMMX5EOV998RB',837,658193,232556,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Idemne, quod iucunde? Collatio igitur ista te nihil iuvat. ',1,'Rear camera:','16/8/2012',5,'39.31877683338119','1.5339288436683592','city_6',69),(1812,'7185WJK','IQA6QMOVHO9HSTCMM',869,149586,119454,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quot homines, tot sententiae; Hanc quoque iucunditatem, si vis, transfer in animum; Quo tandem modo? Sed nimis multa. Murenam te accusante defenderem. ',4,'Rear camera:Fronatal camera:','12/5/1996',3,'38.49322628492718','-7.5829209896171152','city_3',17),(1813,'5624ZBV','0280DS8MJMDEQDOJS',383,202814,136876,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tum Quintus: Est plane, Piso, ut dicis, inquit. Quod autem principium officii quaerunt, melius quam Pyrrho; At certe gravius. Duo Reges: constructio interrete. Bonum integritas corporis: misera debilitas. Sic enim censent, oportunitatis esse beate vivere. Id mihi magnum videtur. ',4,'Fronatal camera:','13/10/1984',4,'39.138587010123495','-2.5996354628008219','city_2',50),(1814,'6890ONV','ZMJSYCGAAS6FDKMEG',242,164785,1582,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ratio quidem vestra sic cogit. Hic ambiguo ludimur. Vitiosum est enim in dividendo partem in genere numerare. Vide, quantum, inquam, fallare, Torquate. ',1,'GPS:','26/3/2019',4,'37.143916747250888','-4.3239241727119774','city_4',32);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_img`
--

DROP TABLE IF EXISTS `car_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_img` (
  `car_img_id` int NOT NULL AUTO_INCREMENT,
  `car_ref` int DEFAULT NULL,
  `car_img_file` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`car_img_id`),
  KEY `car_ref` (`car_ref`),
  CONSTRAINT `car_img_ibfk_1` FOREIGN KEY (`car_ref`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4708 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_img`
--

LOCK TABLES `car_img` WRITE;
/*!40000 ALTER TABLE `car_img` DISABLE KEYS */;
INSERT INTO `car_img` VALUES (4618,1785,'view/images/placeholder_cars/placeholder_cars_1.png'),(4619,1785,'view/images/placeholder_cars/placeholder_cars_2.png'),(4620,1785,'view/images/placeholder_cars/placeholder_cars_3.png'),(4621,1786,'view/images/placeholder_cars/placeholder_cars_1.png'),(4622,1786,'view/images/placeholder_cars/placeholder_cars_2.png'),(4623,1786,'view/images/placeholder_cars/placeholder_cars_3.png'),(4624,1787,'view/images/placeholder_cars/placeholder_cars_1.png'),(4625,1787,'view/images/placeholder_cars/placeholder_cars_2.png'),(4626,1787,'view/images/placeholder_cars/placeholder_cars_3.png'),(4627,1788,'view/images/placeholder_cars/placeholder_cars_1.png'),(4628,1788,'view/images/placeholder_cars/placeholder_cars_2.png'),(4629,1788,'view/images/placeholder_cars/placeholder_cars_3.png'),(4630,1789,'view/images/placeholder_cars/placeholder_cars_1.png'),(4631,1789,'view/images/placeholder_cars/placeholder_cars_2.png'),(4632,1789,'view/images/placeholder_cars/placeholder_cars_3.png'),(4633,1790,'view/images/placeholder_cars/placeholder_cars_1.png'),(4634,1790,'view/images/placeholder_cars/placeholder_cars_2.png'),(4635,1790,'view/images/placeholder_cars/placeholder_cars_3.png'),(4636,1791,'view/images/placeholder_cars/placeholder_cars_1.png'),(4637,1791,'view/images/placeholder_cars/placeholder_cars_2.png'),(4638,1791,'view/images/placeholder_cars/placeholder_cars_3.png'),(4639,1792,'view/images/placeholder_cars/placeholder_cars_1.png'),(4640,1792,'view/images/placeholder_cars/placeholder_cars_2.png'),(4641,1792,'view/images/placeholder_cars/placeholder_cars_3.png'),(4642,1793,'view/images/placeholder_cars/placeholder_cars_1.png'),(4643,1793,'view/images/placeholder_cars/placeholder_cars_2.png'),(4644,1793,'view/images/placeholder_cars/placeholder_cars_3.png'),(4645,1794,'view/images/placeholder_cars/placeholder_cars_1.png'),(4646,1794,'view/images/placeholder_cars/placeholder_cars_2.png'),(4647,1794,'view/images/placeholder_cars/placeholder_cars_3.png'),(4648,1795,'view/images/placeholder_cars/placeholder_cars_1.png'),(4649,1795,'view/images/placeholder_cars/placeholder_cars_2.png'),(4650,1795,'view/images/placeholder_cars/placeholder_cars_3.png'),(4651,1796,'view/images/placeholder_cars/placeholder_cars_1.png'),(4652,1796,'view/images/placeholder_cars/placeholder_cars_2.png'),(4653,1796,'view/images/placeholder_cars/placeholder_cars_3.png'),(4654,1797,'view/images/placeholder_cars/placeholder_cars_1.png'),(4655,1797,'view/images/placeholder_cars/placeholder_cars_2.png'),(4656,1797,'view/images/placeholder_cars/placeholder_cars_3.png'),(4657,1798,'view/images/placeholder_cars/placeholder_cars_1.png'),(4658,1798,'view/images/placeholder_cars/placeholder_cars_2.png'),(4659,1798,'view/images/placeholder_cars/placeholder_cars_3.png'),(4660,1799,'view/images/placeholder_cars/placeholder_cars_1.png'),(4661,1799,'view/images/placeholder_cars/placeholder_cars_2.png'),(4662,1799,'view/images/placeholder_cars/placeholder_cars_3.png'),(4663,1800,'view/images/placeholder_cars/placeholder_cars_1.png'),(4664,1800,'view/images/placeholder_cars/placeholder_cars_2.png'),(4665,1800,'view/images/placeholder_cars/placeholder_cars_3.png'),(4666,1801,'view/images/placeholder_cars/placeholder_cars_1.png'),(4667,1801,'view/images/placeholder_cars/placeholder_cars_2.png'),(4668,1801,'view/images/placeholder_cars/placeholder_cars_3.png'),(4669,1802,'view/images/placeholder_cars/placeholder_cars_1.png'),(4670,1802,'view/images/placeholder_cars/placeholder_cars_2.png'),(4671,1802,'view/images/placeholder_cars/placeholder_cars_3.png'),(4672,1803,'view/images/placeholder_cars/placeholder_cars_1.png'),(4673,1803,'view/images/placeholder_cars/placeholder_cars_2.png'),(4674,1803,'view/images/placeholder_cars/placeholder_cars_3.png'),(4675,1804,'view/images/placeholder_cars/placeholder_cars_1.png'),(4676,1804,'view/images/placeholder_cars/placeholder_cars_2.png'),(4677,1804,'view/images/placeholder_cars/placeholder_cars_3.png'),(4678,1805,'view/images/placeholder_cars/placeholder_cars_1.png'),(4679,1805,'view/images/placeholder_cars/placeholder_cars_2.png'),(4680,1805,'view/images/placeholder_cars/placeholder_cars_3.png'),(4681,1806,'view/images/placeholder_cars/placeholder_cars_1.png'),(4682,1806,'view/images/placeholder_cars/placeholder_cars_2.png'),(4683,1806,'view/images/placeholder_cars/placeholder_cars_3.png'),(4684,1807,'view/images/placeholder_cars/placeholder_cars_1.png'),(4685,1807,'view/images/placeholder_cars/placeholder_cars_2.png'),(4686,1807,'view/images/placeholder_cars/placeholder_cars_3.png'),(4687,1808,'view/images/placeholder_cars/placeholder_cars_1.png'),(4688,1808,'view/images/placeholder_cars/placeholder_cars_2.png'),(4689,1808,'view/images/placeholder_cars/placeholder_cars_3.png'),(4690,1809,'view/images/placeholder_cars/placeholder_cars_1.png'),(4691,1809,'view/images/placeholder_cars/placeholder_cars_2.png'),(4692,1809,'view/images/placeholder_cars/placeholder_cars_3.png'),(4693,1810,'view/images/placeholder_cars/placeholder_cars_1.png'),(4694,1810,'view/images/placeholder_cars/placeholder_cars_2.png'),(4695,1810,'view/images/placeholder_cars/placeholder_cars_3.png'),(4696,1811,'view/images/placeholder_cars/placeholder_cars_1.png'),(4697,1811,'view/images/placeholder_cars/placeholder_cars_2.png'),(4698,1811,'view/images/placeholder_cars/placeholder_cars_3.png'),(4699,1812,'view/images/placeholder_cars/placeholder_cars_1.png'),(4700,1812,'view/images/placeholder_cars/placeholder_cars_2.png'),(4701,1812,'view/images/placeholder_cars/placeholder_cars_3.png'),(4702,1813,'view/images/placeholder_cars/placeholder_cars_1.png'),(4703,1813,'view/images/placeholder_cars/placeholder_cars_2.png'),(4704,1813,'view/images/placeholder_cars/placeholder_cars_3.png'),(4705,1814,'view/images/placeholder_cars/placeholder_cars_1.png'),(4706,1814,'view/images/placeholder_cars/placeholder_cars_2.png'),(4707,1814,'view/images/placeholder_cars/placeholder_cars_3.png');
/*!40000 ALTER TABLE `car_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` char(30) DEFAULT NULL,
  `category_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `uniq_cat_nme` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Preowned','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/category/pre-owned.png'),(2,'Km 0','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/category/0km.png'),(3,'Economic','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/category/economic.jpg'),(4,'Second Hand','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/category/second.jpeg'),(5,'Adapted','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/category/adapted.jpeg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error`
--

DROP TABLE IF EXISTS `error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error` (
  `error_id` int NOT NULL AUTO_INCREMENT,
  `error_date` datetime NOT NULL,
  `error_type` int DEFAULT NULL,
  `error_description` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`error_id`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error`
--

LOCK TABLES `error` WRITE;
/*!40000 ALTER TABLE `error` DISABLE KEYS */;
INSERT INTO `error` VALUES (502,'2022-04-12 21:10:38',404,'desc test'),(503,'2022-04-12 21:10:59',404,'desc test'),(504,'2022-04-12 21:11:05',404,'desc test'),(505,'2022-04-12 21:15:55',503,''),(506,'2022-04-12 21:16:02',503,''),(507,'2022-04-12 21:16:10',503,'send_email_ajax_error'),(508,'2022-04-12 21:16:44',503,'send_email_ajax_error'),(509,'2022-04-12 21:21:42',503,'send_email_ajax_error'),(510,'2022-04-12 21:21:48',404,'test'),(511,'2022-04-13 14:32:08',404,''),(512,'2022-04-13 14:32:41',404,''),(513,'2022-04-13 14:32:42',404,''),(514,'2022-04-13 14:33:05',404,''),(515,'2022-04-13 14:54:26',503,'slide_read_error_ajax');
/*!40000 ALTER TABLE `error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel_type`
--

DROP TABLE IF EXISTS `fuel_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuel_type` (
  `fuel_type_id` int NOT NULL AUTO_INCREMENT,
  `fuel_type_name` char(30) DEFAULT NULL,
  `fuel_type_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`fuel_type_id`),
  UNIQUE KEY `fuel_type_uniq` (`fuel_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel_type`
--

LOCK TABLES `fuel_type` WRITE;
/*!40000 ALTER TABLE `fuel_type` DISABLE KEYS */;
INSERT INTO `fuel_type` VALUES (1,'Hybrid','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/fuel_type/hybrid.jpg'),(2,'Gasoline','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/fuel_type/gasoline.jpg'),(3,'Gasoil','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/fuel_type/gasoil.jpg'),(4,'Electric','/Concessionaire-Framework_PHP_OO_MVC_JQuery/view/img/fuel_type/electric.jpeg');
/*!40000 ALTER TABLE `fuel_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `username_like` char(20) NOT NULL,
  `car_like` int NOT NULL,
  PRIMARY KEY (`username_like`,`car_like`),
  KEY `car_like` (`car_like`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`username_like`) REFERENCES `user` (`username`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`car_like`) REFERENCES `car` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `models` (
  `model_id` int NOT NULL AUTO_INCREMENT,
  `model_name` char(30) DEFAULT NULL,
  `model_brand` int DEFAULT NULL,
  `model_img` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  UNIQUE KEY `model_name` (`model_name`),
  KEY `model_brand` (`model_brand`),
  CONSTRAINT `models_ibfk_1` FOREIGN KEY (`model_brand`) REFERENCES `brands` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=895 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (2,'a',900,NULL),(3,'Alhambra',1144,NULL),(4,'Altea',1144,NULL),(5,'Altea XL',1144,NULL),(6,'Arosa',1144,NULL),(7,'Cordoba',1144,NULL),(8,'Cordoba Vario',1144,NULL),(9,'Exeo',1144,NULL),(10,'Ibiza',1144,NULL),(11,'Ibiza ST',1144,NULL),(12,'Exeo ST',1144,NULL),(13,'Leon',1144,NULL),(14,'Leon ST',1144,NULL),(15,'Inca',1144,NULL),(16,'Mii',1144,NULL),(17,'Toledo',1144,NULL),(18,'Captur',1124,NULL),(19,'Clio',1124,NULL),(20,'Clio Grandtour',1124,NULL),(21,'Espace',1124,NULL),(22,'Express',1124,NULL),(23,'Fluence',1124,NULL),(24,'Grand Espace',1124,NULL),(25,'Grand Modus',1124,NULL),(26,'Grand Scenic',1124,NULL),(27,'Kadjar',1124,NULL),(28,'Kangoo',1124,NULL),(29,'Kangoo Express',1124,NULL),(30,'Koleos',1124,NULL),(31,'Laguna',1124,NULL),(32,'Laguna Grandtour',1124,NULL),(33,'Latitude',1124,NULL),(34,'Mascott',1124,NULL),(35,'Mégane',1124,NULL),(36,'Mégane CC',1124,NULL),(37,'Mégane Combi',1124,NULL),(38,'Mégane Grandtour',1124,NULL),(39,'Mégane Coupé',1124,NULL),(40,'Mégane Scénic',1124,NULL),(41,'Scénic',1124,NULL),(42,'Talisman',1124,NULL),(43,'Talisman Grandtour',1124,NULL),(44,'Thalia',1124,NULL),(45,'Twingo',1124,NULL),(46,'Wind',1124,NULL),(47,'Zoé',1124,NULL),(48,'1007',1107,NULL),(49,'107',1107,NULL),(50,'106',1107,NULL),(51,'108',1107,NULL),(52,'2008',1107,NULL),(53,'205',1107,NULL),(54,'205 Cabrio',1107,NULL),(55,'206',1107,NULL),(56,'206 CC',1107,NULL),(57,'206 SW',1107,NULL),(58,'207',1107,NULL),(59,'207 CC',1107,NULL),(60,'207 SW',1107,NULL),(61,'306',1107,NULL),(62,'307',1107,NULL),(63,'307 CC',1107,NULL),(64,'307 SW',1107,NULL),(65,'308',1107,NULL),(66,'308 CC',1107,NULL),(67,'308 SW',1107,NULL),(68,'309',1107,NULL),(69,'4007',1107,NULL),(70,'4008',1107,NULL),(71,'405',1107,NULL),(72,'406',1107,NULL),(73,'407',1107,NULL),(74,'407 SW',1107,NULL),(75,'5008',1107,NULL),(76,'508',1107,NULL),(77,'508 SW',1107,NULL),(78,'605',1107,NULL),(79,'806',1107,NULL),(80,'607',1107,NULL),(81,'807',1107,NULL),(82,'Bipper',1107,NULL),(83,'RCZ',1107,NULL),(84,'Dokker',917,NULL),(85,'Duster',917,NULL),(86,'Lodgy',917,NULL),(87,'Logan',917,NULL),(88,'Logan MCV',917,NULL),(89,'Logan Van',917,NULL),(90,'Sandero',917,NULL),(91,'Solenza',917,NULL),(92,'Berlingo',913,NULL),(93,'C-Crosser',913,NULL),(94,'C-Elissée',913,NULL),(95,'C-Zero',913,NULL),(96,'C1',913,NULL),(97,'C2',913,NULL),(98,'C3',913,NULL),(99,'C3 Picasso',913,NULL),(100,'C4',913,NULL),(101,'C4 Aircross',913,NULL),(102,'C4 Cactus',913,NULL),(103,'C4 Coupé',913,NULL),(104,'C4 Grand Picasso',913,NULL),(105,'C4 Sedan',913,NULL),(106,'C5',913,NULL),(107,'C5 Break',913,NULL),(108,'C5 Tourer',913,NULL),(109,'C6',913,NULL),(110,'C8',913,NULL),(111,'DS3',913,NULL),(112,'DS4',913,NULL),(113,'DS5',913,NULL),(114,'Evasion',913,NULL),(115,'Jumper',913,NULL),(116,'Jumpy',913,NULL),(117,'Saxo',913,NULL),(118,'Nemo',913,NULL),(119,'Xantia',913,NULL),(120,'Xsara',913,NULL),(121,'Agila',1097,NULL),(122,'Ampera',1097,NULL),(123,'Antara',1097,NULL),(124,'Astra',1097,NULL),(125,'Astra cabrio',1097,NULL),(126,'Astra caravan',1097,NULL),(127,'Astra coupé',1097,NULL),(128,'Calibra',1097,NULL),(129,'Campo',1097,NULL),(130,'Cascada',1097,NULL),(131,'Corsa',1097,NULL),(132,'Frontera',1097,NULL),(133,'Insignia',1097,NULL),(134,'Insignia kombi',1097,NULL),(135,'Kadett',1097,NULL),(136,'Meriva',1097,NULL),(137,'Mokka',1097,NULL),(138,'Movano',1097,NULL),(139,'Omega',1097,NULL),(140,'Signum',1097,NULL),(141,'Vectra',1097,NULL),(142,'Vectra Caravan',1097,NULL),(143,'Vivaro',1097,NULL),(144,'Vivaro Kombi',1097,NULL),(145,'Zafira',1097,NULL),(146,'145',1097,NULL),(147,'146',1097,NULL),(148,'147',1097,NULL),(149,'155',1097,NULL),(150,'156',1097,NULL),(151,'156 Sportwagon',1097,NULL),(152,'159',1097,NULL),(153,'159 Sportwagon',1097,NULL),(154,'164',1097,NULL),(155,'166',1097,NULL),(156,'4C',1097,NULL),(157,'Brera',1097,NULL),(158,'GTV',1097,NULL),(159,'MiTo',1097,NULL),(160,'Crosswagon',1097,NULL),(161,'Spider',1097,NULL),(162,'GT',1097,NULL),(163,'Giulietta',1097,NULL),(164,'Giulia',1097,NULL),(165,'Favorit',1152,NULL),(166,'Felicia',1152,NULL),(167,'Citigo',1152,NULL),(168,'Fabia',1152,NULL),(169,'Fabia Combi',1152,NULL),(170,'Fabia Sedan',1152,NULL),(171,'Felicia Combi',1152,NULL),(172,'Octavia',1152,NULL),(173,'Octavia Combi',1152,NULL),(174,'Roomster',1152,NULL),(175,'Yeti',1152,NULL),(176,'Rapid',1152,NULL),(177,'Rapid Spaceback',1152,NULL),(178,'Superb',1152,NULL),(179,'Superb Combi',1152,NULL),(180,'Alero',910,NULL),(181,'Aveo',910,NULL),(182,'Camaro',910,NULL),(183,'Captiva',910,NULL),(184,'Corvette',910,NULL),(185,'Cruze',910,NULL),(186,'Cruze SW',910,NULL),(187,'Epica',910,NULL),(188,'Equinox',910,NULL),(189,'Evanda',910,NULL),(190,'HHR',910,NULL),(191,'Kalos',910,NULL),(192,'Lacetti',910,NULL),(193,'Lacetti SW',910,NULL),(194,'Lumina',910,NULL),(195,'Malibu',910,NULL),(196,'Matiz',910,NULL),(197,'Monte Carlo',910,NULL),(198,'Nubira',910,NULL),(199,'Orlando',910,NULL),(200,'Spark',910,NULL),(201,'Suburban',910,NULL),(202,'Tacuma',910,NULL),(203,'Tahoe',910,NULL),(204,'Trax',910,NULL),(205,'911 Carrera',1114,NULL),(206,'911 Carrera Cabrio',1114,NULL),(207,'911 Targa',1114,NULL),(208,'911 Turbo',1114,NULL),(209,'924',1114,NULL),(210,'944',1114,NULL),(211,'997',1114,NULL),(212,'Boxster',1114,NULL),(213,'Cayenne',1114,NULL),(214,'Cayman',1114,NULL),(215,'Macan',1114,NULL),(216,'Panamera',1114,NULL),(217,'Accord',997,NULL),(218,'Accord Coupé',997,NULL),(219,'Accord Tourer',997,NULL),(220,'City',997,NULL),(221,'Civic',997,NULL),(222,'Civic Aerodeck',997,NULL),(223,'Civic Coupé',997,NULL),(224,'Civic Tourer',997,NULL),(225,'Civic Type R',997,NULL),(226,'CR-V',997,NULL),(227,'CR-X',997,NULL),(228,'CR-Z',997,NULL),(229,'FR-V',997,NULL),(230,'HR-V',997,NULL),(231,'Insight',997,NULL),(232,'Integra',997,NULL),(233,'Jazz',997,NULL),(234,'Legend',997,NULL),(235,'Prelude',997,NULL),(236,'BRZ',1163,NULL),(237,'Forester',1163,NULL),(238,'Impreza',1163,NULL),(239,'Impreza Wagon',1163,NULL),(240,'Justy',1163,NULL),(241,'Legacy',1163,NULL),(242,'Legacy Wagon',1163,NULL),(243,'Legacy Outback',1163,NULL),(244,'Levorg',1163,NULL),(245,'Outback',1163,NULL),(246,'SVX',1163,NULL),(247,'Tribeca',1163,NULL),(248,'Tribeca B9',1163,NULL),(249,'XV',1163,NULL),(250,'121',1068,NULL),(251,'2',1068,NULL),(252,'3',1068,NULL),(253,'323',1068,NULL),(254,'323 Combi',1068,NULL),(255,'323 Coupé',1068,NULL),(256,'323 F',1068,NULL),(257,'5',1068,NULL),(258,'6',1068,NULL),(259,'6 Combi',1068,NULL),(260,'626',1068,NULL),(261,'626 Combi',1068,NULL),(262,'B-Fighter',1068,NULL),(263,'B2500',1068,NULL),(264,'BT',1068,NULL),(265,'CX-3',1068,NULL),(266,'CX-5',1068,NULL),(267,'CX-7',1068,NULL),(268,'CX-9',1068,NULL),(269,'Demio',1068,NULL),(270,'MPV',1068,NULL),(271,'MX-3',1068,NULL),(272,'MX-5',1068,NULL),(273,'MX-6',1068,NULL),(274,'Premacy',1068,NULL),(275,'RX-7',1068,NULL),(276,'RX-8',1068,NULL),(277,'Xedox 6',1068,NULL),(278,'3000 GT',1081,NULL),(279,'ASX',1081,NULL),(280,'Carisma',1081,NULL),(281,'Colt',1081,NULL),(282,'Colt CC',1081,NULL),(283,'Eclipse',1081,NULL),(284,'Fuso canter',1081,NULL),(285,'Galant',1081,NULL),(286,'Galant Combi',1081,NULL),(287,'Grandis',1081,NULL),(288,'L200',1081,NULL),(289,'L200 Pick up',1081,NULL),(290,'L200 Pick up Allrad',1081,NULL),(291,'L300',1081,NULL),(292,'Lancer',1081,NULL),(293,'Lancer Combi',1081,NULL),(294,'Lancer Evo',1081,NULL),(295,'Lancer Sportback',1081,NULL),(296,'Outlander',1081,NULL),(297,'Pajero',1081,NULL),(298,'Pajeto Pinin',1081,NULL),(299,'Pajero Pinin Wagon',1081,NULL),(300,'Pajero Sport',1081,NULL),(301,'Pajero Wagon',1081,NULL),(302,'Space Star',1081,NULL),(303,'CT',1044,NULL),(304,'GS',1044,NULL),(305,'GS 300',1044,NULL),(306,'GX',1044,NULL),(307,'IS',1044,NULL),(308,'IS 200',1044,NULL),(309,'IS 250 C',1044,NULL),(310,'IS-F',1044,NULL),(311,'LS',1044,NULL),(312,'LX',1044,NULL),(313,'NX',1044,NULL),(314,'RC F',1044,NULL),(315,'RX',1044,NULL),(316,'RX 300',1044,NULL),(317,'RX 400h',1044,NULL),(318,'RX 450h',1044,NULL),(319,'SC 430',1044,NULL),(320,'4-Runner',1174,NULL),(321,'Auris',1174,NULL),(322,'Avensis',1174,NULL),(323,'Avensis Combi',1174,NULL),(324,'Avensis Van Verso',1174,NULL),(325,'Aygo',1174,NULL),(326,'Camry',1174,NULL),(327,'Carina',1174,NULL),(328,'Celica',1174,NULL),(329,'Corolla',1174,NULL),(330,'Corolla Combi',1174,NULL),(331,'Corolla sedan',1174,NULL),(332,'Corolla Verso',1174,NULL),(333,'FJ Cruiser',1174,NULL),(334,'GT86',1174,NULL),(335,'Hiace',1174,NULL),(336,'Hiace Van',1174,NULL),(337,'Highlander',1174,NULL),(338,'Hilux',1174,NULL),(339,'Land Cruiser',1174,NULL),(340,'MR2',1174,NULL),(341,'Paseo',1174,NULL),(342,'Picnic',1174,NULL),(343,'Prius',1174,NULL),(344,'RAV4',1174,NULL),(345,'Sequoia',1174,NULL),(346,'Starlet',1174,NULL),(347,'Supra',1174,NULL),(348,'Tundra',1174,NULL),(349,'Urban Cruiser',1174,NULL),(350,'Verso',1174,NULL),(351,'Yaris',1174,NULL),(352,'Yaris Verso',1174,NULL),(353,'i3',887,NULL),(354,'i8',887,NULL),(355,'M3',887,NULL),(356,'M4',887,NULL),(357,'M5',887,NULL),(358,'M6',887,NULL),(359,'Rad 1',887,NULL),(360,'Rad 1 Cabrio',887,NULL),(361,'Rad 1 Coupé',887,NULL),(362,'Rad 2',887,NULL),(363,'Rad 2 Active Tourer',887,NULL),(364,'Rad 2 Coupé',887,NULL),(365,'Rad 2 Gran Tourer',887,NULL),(366,'Rad 3',887,NULL),(367,'Rad 3 Cabrio',887,NULL),(368,'Rad 3 Compact',887,NULL),(369,'Rad 3 Coupé',887,NULL),(370,'Rad 3 GT',887,NULL),(371,'Rad 3 Touring',887,NULL),(372,'Rad 4',887,NULL),(373,'Rad 4 Cabrio',887,NULL),(374,'Rad 4 Gran Coupé',887,NULL),(375,'Rad 5',887,NULL),(376,'Rad 5 GT',887,NULL),(377,'Rad 5 Touring',887,NULL),(378,'Rad 6',887,NULL),(379,'Rad 6 Cabrio',887,NULL),(380,'Rad 6 Coupé',887,NULL),(381,'Rad 6 Gran Coupé',887,NULL),(382,'Rad 7',887,NULL),(383,'Rad 8 Coupé',887,NULL),(384,'X1',887,NULL),(385,'X3',887,NULL),(386,'X4',887,NULL),(387,'X5',887,NULL),(388,'X6',887,NULL),(389,'Z3',887,NULL),(390,'Z3 Coupé',887,NULL),(391,'Z3 Roadster',887,NULL),(392,'Z4',887,NULL),(393,'Z4 Roadster',887,NULL),(394,'Amarok',1191,NULL),(395,'Beetle',1191,NULL),(396,'Bora',1191,NULL),(397,'Bora Variant',1191,NULL),(398,'Caddy',1191,NULL),(399,'Caddy Van',1191,NULL),(400,'Life',1191,NULL),(401,'California',1191,NULL),(402,'Caravelle',1191,NULL),(403,'CC',1191,NULL),(404,'Crafter',1191,NULL),(405,'Crafter Van',1191,NULL),(406,'Crafter Kombi',1191,NULL),(407,'CrossTouran',1191,NULL),(408,'Eos',1191,NULL),(409,'Fox',1191,NULL),(410,'Golf',1191,NULL),(411,'Golf Cabrio',1191,NULL),(412,'Golf Plus',1191,NULL),(413,'Golf Sportvan',1191,NULL),(414,'Golf Variant',1191,NULL),(415,'Jetta',1191,NULL),(416,'LT',1191,NULL),(417,'Lupo',1191,NULL),(418,'Multivan',1191,NULL),(419,'New Beetle',1191,NULL),(420,'New Beetle Cabrio',1191,NULL),(421,'Passat',1191,NULL),(422,'Passat Alltrack',1191,NULL),(423,'Passat CC',1191,NULL),(424,'Passat Variant',1191,NULL),(425,'Passat Variant Van',1191,NULL),(426,'Phaeton',1191,NULL),(427,'Polo',1191,NULL),(428,'Polo Van',1191,NULL),(429,'Polo Variant',1191,NULL),(430,'Scirocco',1191,NULL),(431,'Sharan',1191,NULL),(432,'T4',1191,NULL),(433,'T4 Caravelle',1191,NULL),(434,'T4 Multivan',1191,NULL),(435,'T5',1191,NULL),(436,'T5 Caravelle',1191,NULL),(437,'T5 Multivan',1191,NULL),(438,'T5 Transporter Shuttle',1191,NULL),(439,'Tiguan',1191,NULL),(440,'Touareg',1191,NULL),(441,'Touran',1191,NULL),(442,'Alto',1165,NULL),(443,'Baleno',1165,NULL),(444,'Baleno kombi',1165,NULL),(445,'Grand Vitara',1165,NULL),(446,'Grand Vitara XL-7',1165,NULL),(447,'Ignis',1165,NULL),(448,'Jimny',1165,NULL),(449,'Kizashi',1165,NULL),(450,'Liana',1165,NULL),(451,'Samurai',1165,NULL),(452,'Splash',1165,NULL),(453,'Swift',1165,NULL),(454,'SX4',1165,NULL),(455,'SX4 Sedan',1165,NULL),(456,'Vitara',1165,NULL),(457,'Wagon R+',1165,NULL),(458,'100 D',1074,NULL),(459,'115',1074,NULL),(460,'124',1074,NULL),(461,'126',1074,NULL),(462,'190',1074,NULL),(463,'190 D',1074,NULL),(464,'190 E',1074,NULL),(465,'200 - 300',1074,NULL),(466,'200 D',1074,NULL),(467,'200 E',1074,NULL),(468,'210 Van',1074,NULL),(469,'210 kombi',1074,NULL),(470,'310 Van',1074,NULL),(471,'310 kombi',1074,NULL),(472,'230 - 300 CE Coupé',1074,NULL),(473,'260 - 560 SE',1074,NULL),(474,'260 - 560 SEL',1074,NULL),(475,'500 - 600 SEC Coupé',1074,NULL),(476,'Trieda A',1074,NULL),(478,'A L',1074,NULL),(479,'AMG GT',1074,NULL),(480,'Trieda B',1074,NULL),(481,'Trieda C',1074,NULL),(482,'C',1074,NULL),(483,'C Sportcoupé',1074,NULL),(484,'C T',1074,NULL),(485,'Citan',1074,NULL),(486,'CL',1074,NULL),(488,'CLA',1074,NULL),(489,'CLC',1074,NULL),(490,'CLK Cabrio',1074,NULL),(491,'CLK Coupé',1074,NULL),(492,'CLS',1074,NULL),(493,'Trieda E',1074,NULL),(494,'E',1074,NULL),(495,'E Cabrio',1074,NULL),(496,'E Coupé',1074,NULL),(497,'E T',1074,NULL),(498,'Trieda G',1074,NULL),(499,'G Cabrio',1074,NULL),(500,'GL',1074,NULL),(501,'GLA',1074,NULL),(502,'GLC',1074,NULL),(503,'GLE',1074,NULL),(504,'GLK',1074,NULL),(505,'Trieda M',1074,NULL),(506,'MB 100',1074,NULL),(507,'Trieda R',1074,NULL),(508,'Trieda S',1074,NULL),(509,'S',1074,NULL),(510,'S Coupé',1074,NULL),(511,'SL',1074,NULL),(512,'SLC',1074,NULL),(513,'SLK',1074,NULL),(514,'SLR',1074,NULL),(515,'Sprinter',1074,NULL),(516,'9-3',1137,NULL),(517,'9-3 Cabriolet',1137,NULL),(518,'9-3 Coupé',1137,NULL),(519,'9-3 SportCombi',1137,NULL),(520,'9-5',1137,NULL),(521,'9-5 SportCombi',1137,NULL),(522,'900',1137,NULL),(523,'900 C',1137,NULL),(524,'900 C Turbo',1137,NULL),(525,'9000',1137,NULL),(526,'100',868,NULL),(527,'100 Avant',868,NULL),(528,'80',868,NULL),(529,'80 Avant',868,NULL),(530,'80 Cabrio',868,NULL),(531,'90',868,NULL),(532,'A1',868,NULL),(533,'A2',868,NULL),(534,'A3',868,NULL),(535,'A3 Cabriolet',868,NULL),(536,'A3 Limuzina',868,NULL),(537,'A3 Sportback',868,NULL),(538,'A4',868,NULL),(539,'A4 Allroad',868,NULL),(540,'A4 Avant',868,NULL),(541,'A4 Cabriolet',868,NULL),(542,'A5',868,NULL),(543,'A5 Cabriolet',868,NULL),(544,'A5 Sportback',868,NULL),(545,'A6',868,NULL),(546,'A6 Allroad',868,NULL),(547,'A6 Avant',868,NULL),(548,'A7',868,NULL),(549,'A8',868,NULL),(550,'A8 Long',868,NULL),(551,'Q3',868,NULL),(552,'Q5',868,NULL),(553,'Q7',868,NULL),(554,'R8',868,NULL),(555,'RS4 Cabriolet',868,NULL),(556,'RS4/RS4 Avant',868,NULL),(557,'RS5',868,NULL),(558,'RS6 Avant',868,NULL),(559,'RS7',868,NULL),(560,'S3/S3 Sportback',868,NULL),(561,'S4 Cabriolet',868,NULL),(562,'S4/S4 Avant',868,NULL),(563,'S5/S5 Cabriolet',868,NULL),(564,'S6/RS6',868,NULL),(565,'S7',868,NULL),(566,'S8',868,NULL),(567,'SQ5',868,NULL),(568,'TT Coupé',868,NULL),(569,'TT Roadster',868,NULL),(570,'TTS',868,NULL),(571,'Avella',1032,NULL),(572,'Besta',1032,NULL),(573,'Carens',1032,NULL),(574,'Carnival',1032,NULL),(575,'Cee`d',1032,NULL),(576,'Cee`d SW',1032,NULL),(577,'Cerato',1032,NULL),(578,'K 2500',1032,NULL),(579,'Magentis',1032,NULL),(580,'Opirus',1032,NULL),(581,'Optima',1032,NULL),(582,'Picanto',1032,NULL),(583,'Pregio',1032,NULL),(584,'Pride',1032,NULL),(585,'Pro Cee`d',1032,NULL),(586,'Rio',1032,NULL),(587,'Rio Combi',1032,NULL),(588,'Rio sedan',1032,NULL),(589,'Sephia',1032,NULL),(590,'Shuma',1032,NULL),(591,'Sorento',1032,NULL),(592,'Soul',1032,NULL),(593,'Sportage',1032,NULL),(594,'Venga',1032,NULL),(595,'109',1032,NULL),(596,'Defender',1032,NULL),(597,'Discovery',1032,NULL),(598,'Discovery Sport',1032,NULL),(599,'Freelander',1032,NULL),(600,'Range Rover',1032,NULL),(601,'Range Rover Evoque',1032,NULL),(602,'Range Rover Sport',1032,NULL),(603,'Avenger',934,NULL),(604,'Caliber',934,NULL),(605,'Challenger',934,NULL),(606,'Charger',934,NULL),(607,'Grand Caravan',934,NULL),(608,'Journey',934,NULL),(609,'Magnum',934,NULL),(610,'Nitro',934,NULL),(611,'RAM',934,NULL),(612,'Stealth',934,NULL),(613,'Viper',934,NULL),(614,'300 C',911,NULL),(615,'300 C Touring',911,NULL),(616,'300 M',911,NULL),(617,'Crossfire',911,NULL),(618,'Grand Voyager',911,NULL),(619,'LHS',911,NULL),(620,'Neon',911,NULL),(621,'Pacifica',911,NULL),(622,'Plymouth',911,NULL),(623,'PT Cruiser',911,NULL),(624,'Sebring',911,NULL),(625,'Sebring Convertible',911,NULL),(626,'Stratus',911,NULL),(627,'Stratus Cabrio',911,NULL),(628,'Town & Country',911,NULL),(629,'Voyager',911,NULL),(630,'Aerostar',963,NULL),(631,'B-Max',963,NULL),(632,'C-Max',963,NULL),(633,'Cortina',963,NULL),(634,'Cougar',963,NULL),(635,'Edge',963,NULL),(636,'Escort',963,NULL),(637,'Escort Cabrio',963,NULL),(638,'Escort kombi',963,NULL),(639,'Explorer',963,NULL),(640,'F-150',963,NULL),(641,'F-250',963,NULL),(642,'Fiesta',963,NULL),(643,'Focus',963,NULL),(644,'Focus C-Max',963,NULL),(645,'Focus CC',963,NULL),(646,'Focus kombi',963,NULL),(647,'Fusion',963,NULL),(648,'Galaxy',963,NULL),(649,'Grand C-Max',963,NULL),(650,'Ka',963,NULL),(651,'Kuga',963,NULL),(652,'Maverick',963,NULL),(653,'Mondeo',963,NULL),(654,'Mondeo Combi',963,NULL),(655,'Mustang',963,NULL),(656,'Orion',963,NULL),(657,'Puma',963,NULL),(658,'Ranger',963,NULL),(659,'S-Max',963,NULL),(660,'Sierra',963,NULL),(661,'Street Ka',963,NULL),(662,'Tourneo Connect',963,NULL),(663,'Tourneo Custom',963,NULL),(664,'Transit',963,NULL),(666,'Transit Bus',963,NULL),(667,'Transit Connect LWB',963,NULL),(668,'Transit Courier',963,NULL),(669,'Transit Custom',963,NULL),(670,'Transit kombi',963,NULL),(671,'Transit Tourneo',963,NULL),(672,'Transit Valnik',963,NULL),(673,'Transit Van',963,NULL),(674,'Transit Van 350',963,NULL),(675,'Windstar',963,NULL),(676,'H2',1003,NULL),(677,'H3',1003,NULL),(678,'Accent',1005,NULL),(679,'Atos',1005,NULL),(680,'Atos Prime',1005,NULL),(681,'Coupé',1005,NULL),(682,'Elantra',1005,NULL),(683,'Galloper',1005,NULL),(684,'Genesis',1005,NULL),(685,'Getz',1005,NULL),(686,'Grandeur',1005,NULL),(687,'H 350',1005,NULL),(688,'H1',1005,NULL),(689,'H1 Bus',1005,NULL),(690,'H1 Van',1005,NULL),(691,'H200',1005,NULL),(692,'i10',1005,NULL),(693,'i20',1005,NULL),(694,'i30',1005,NULL),(695,'i30 CW',1005,NULL),(696,'i40',1005,NULL),(697,'i40 CW',1005,NULL),(698,'ix20',1005,NULL),(699,'ix35',1005,NULL),(700,'ix55',1005,NULL),(701,'Lantra',1005,NULL),(702,'Matrix',1005,NULL),(703,'Santa Fe',1005,NULL),(704,'Sonata',1005,NULL),(705,'Terracan',1005,NULL),(706,'Trajet',1005,NULL),(707,'Tucson',1005,NULL),(708,'Veloster',1005,NULL),(709,'EX',1009,NULL),(710,'FX',1009,NULL),(711,'G',1009,NULL),(712,'G Coupé',1009,NULL),(713,'M',1009,NULL),(714,'Q',1009,NULL),(715,'QX',1009,NULL),(716,'Daimler',1019,NULL),(717,'F-Pace',1019,NULL),(718,'F-Type',1019,NULL),(719,'S-Type',1019,NULL),(720,'Sovereign',1019,NULL),(721,'X-Type',1019,NULL),(722,'X-type Estate',1019,NULL),(723,'XE',1019,NULL),(724,'XF',1019,NULL),(725,'XJ',1019,NULL),(726,'XJ12',1019,NULL),(727,'XJ6',1019,NULL),(728,'XJ8',1019,NULL),(730,'XJR',1019,NULL),(731,'XK',1019,NULL),(732,'XK8 Convertible',1019,NULL),(733,'XKR',1019,NULL),(734,'XKR Convertible',1019,NULL),(735,'Cherokee',1022,NULL),(736,'Commander',1022,NULL),(737,'Compass',1022,NULL),(738,'Grand Cherokee',1022,NULL),(739,'Patriot',1022,NULL),(740,'Renegade',1022,NULL),(741,'Wrangler',1022,NULL),(742,'100 NX',1093,NULL),(743,'200 SX',1093,NULL),(744,'350 Z',1093,NULL),(745,'350 Z Roadster',1093,NULL),(746,'370 Z',1093,NULL),(747,'Almera',1093,NULL),(748,'Almera Tino',1093,NULL),(749,'Cabstar E - T',1093,NULL),(750,'Cabstar TL2 Valnik',1093,NULL),(751,'e-NV200',1093,NULL),(752,'GT-R',1093,NULL),(753,'Insterstar',1093,NULL),(754,'Juke',1093,NULL),(755,'King Cab',1093,NULL),(756,'Leaf',1093,NULL),(757,'Maxima',1093,NULL),(758,'Maxima QX',1093,NULL),(759,'Micra',1093,NULL),(760,'Murano',1093,NULL),(761,'Navara',1093,NULL),(762,'Note',1093,NULL),(763,'NP300 Pickup',1093,NULL),(764,'NV200',1093,NULL),(765,'NV400',1093,NULL),(766,'Pathfinder',1093,NULL),(767,'Patrol',1093,NULL),(768,'Patrol GR',1093,NULL),(769,'Pickup',1093,NULL),(770,'Pixo',1093,NULL),(771,'Primastar',1093,NULL),(772,'Primastar Combi',1093,NULL),(773,'Primera',1093,NULL),(774,'Primera Combi',1093,NULL),(775,'Pulsar',1093,NULL),(776,'Qashqai',1093,NULL),(777,'Serena',1093,NULL),(778,'Sunny',1093,NULL),(779,'Terrano',1093,NULL),(780,'Tiida',1093,NULL),(781,'Trade',1093,NULL),(782,'Vanette Cargo',1093,NULL),(783,'X-Trail',1093,NULL),(784,'240',1192,NULL),(785,'340',1192,NULL),(786,'360',1192,NULL),(787,'460',1192,NULL),(788,'850',1192,NULL),(789,'850 kombi',1192,NULL),(790,'C30',1192,NULL),(791,'C70',1192,NULL),(792,'C70 Cabrio',1192,NULL),(793,'C70 Coupé',1192,NULL),(794,'S40',1192,NULL),(795,'S60',1192,NULL),(796,'S70',1192,NULL),(797,'S80',1192,NULL),(798,'S90',1192,NULL),(799,'V40',1192,NULL),(800,'V50',1192,NULL),(801,'V60',1192,NULL),(802,'V70',1192,NULL),(803,'V90',1192,NULL),(804,'XC60',1192,NULL),(805,'XC70',1192,NULL),(806,'XC90',1192,NULL),(807,'Espero',918,NULL),(810,'Lanos',918,NULL),(811,'Leganza',918,NULL),(812,'Lublin',918,NULL),(814,'Nexia',918,NULL),(816,'Nubira kombi',918,NULL),(817,'Racer',918,NULL),(819,'Tico',918,NULL),(820,'1100',957,NULL),(822,'500',957,NULL),(823,'500L',957,NULL),(824,'500X',957,NULL),(826,'Barchetta',957,NULL),(827,'Brava',957,NULL),(828,'Cinquecento',957,NULL),(830,'Croma',957,NULL),(831,'Doblo',957,NULL),(832,'Doblo Cargo',957,NULL),(833,'Doblo Cargo Combi',957,NULL),(834,'Ducato',957,NULL),(835,'Ducato Van',957,NULL),(836,'Ducato Kombi',957,NULL),(837,'Ducato Podvozok',957,NULL),(838,'Florino',957,NULL),(839,'Florino Combi',957,NULL),(840,'Freemont',957,NULL),(841,'Grande Punto',957,NULL),(842,'Idea',957,NULL),(843,'Linea',957,NULL),(844,'Marea',957,NULL),(845,'Marea Weekend',957,NULL),(846,'Multipla',957,NULL),(847,'Palio Weekend',957,NULL),(848,'Panda',957,NULL),(849,'Panda Van',957,NULL),(850,'Punto',957,NULL),(851,'Punto Cabriolet',957,NULL),(852,'Punto Evo',957,NULL),(853,'Punto Van',957,NULL),(854,'Qubo',957,NULL),(855,'Scudo',957,NULL),(856,'Scudo Van',957,NULL),(857,'Scudo Kombi',957,NULL),(858,'Sedici',957,NULL),(859,'Seicento',957,NULL),(860,'Stilo',957,NULL),(861,'Stilo Multiwagon',957,NULL),(862,'Strada',957,NULL),(863,'Talento',957,NULL),(864,'Tipo',957,NULL),(865,'Ulysse',957,NULL),(866,'Uno',957,NULL),(867,'X1/9',957,NULL),(868,'Cooper',1080,NULL),(869,'Cooper Cabrio',1080,NULL),(870,'Cooper Clubman',1080,NULL),(871,'Cooper D',1080,NULL),(872,'Cooper D Clubman',1080,NULL),(873,'Cooper S',1080,NULL),(874,'Cooper S Cabrio',1080,NULL),(875,'Cooper S Clubman',1080,NULL),(876,'Countryman',1080,NULL),(877,'Mini One',1080,NULL),(878,'One D',1080,NULL),(879,'200',1135,NULL),(880,'214',1135,NULL),(881,'218',1135,NULL),(882,'25',1135,NULL),(883,'400',1135,NULL),(884,'414',1135,NULL),(885,'416',1135,NULL),(886,'620',1135,NULL),(887,'75',1135,NULL),(888,'Cabrio',1153,NULL),(889,'City-Coupé',1153,NULL),(890,'Compact Pulse',1153,NULL),(891,'Forfour',1153,NULL),(892,'Fortwo cabrio',1153,NULL),(893,'Fortwo coupé',1153,NULL),(894,'Roadster',1153,NULL);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` char(30) NOT NULL,
  `email` char(35) DEFAULT NULL,
  `password` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` char(15) DEFAULT NULL,
  `avatar` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('qqqq','qqqq@gmail.com','$2y$12$.pmpXAPk3wfe0Hhmi6dKX.ekBoXkTxqrtDQq9ZMKwzI7ctgPlH6.2','client','https://i.pravatar.cc/150?u=43b53e14a570b1202f612e0d96a1d422');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'concessionaire'
--
/*!50003 DROP PROCEDURE IF EXISTS `likes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `likes`(IN u CHAR(20), IN c INT)
BEGIN
DECLARE n INT;
SELECT COUNT(*) INTO n FROM likes WHERE username_like = u AND
car_like = c;
CASE n
WHEN 1 THEN
DELETE FROM likes WHERE username_like = u AND car_like = c;
WHEN 0 THEN
INSERT INTO likes (username_like, car_like) VALUES (u,c);
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-13 15:09:06
