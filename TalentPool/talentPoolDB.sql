/*
SQLyog Community v12.12 (64 bit)
MySQL - 10.1.37-MariaDB : Database - talentpool
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`talentpool` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `talentpool`;

/*Table structure for table `location_question_table` */

DROP TABLE IF EXISTS `location_question_table`;

CREATE TABLE `location_question_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question_id` varchar(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `location_question_table` */

/*Table structure for table `talent_answer_table` */

DROP TABLE IF EXISTS `talent_answer_table`;

CREATE TABLE `talent_answer_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question_id` int(25) NOT NULL,
  `answer` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `talent_answer_table` */

/*Table structure for table `talent_location_id` */

DROP TABLE IF EXISTS `talent_location_id`;

CREATE TABLE `talent_location_id` (
  `location_id` int(10) NOT NULL AUTO_INCREMENT,
  `country` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `location` varchar(30) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `talent_location_id` */

/*Table structure for table `talent_question_table` */

DROP TABLE IF EXISTS `talent_question_table`;

CREATE TABLE `talent_question_table` (
  `question_id` int(10) NOT NULL AUTO_INCREMENT,
  `question_name` varchar(250) NOT NULL,
  `option_1` varchar(100) NOT NULL,
  `option_2` varchar(100) NOT NULL,
  `option_3` varchar(100) NOT NULL,
  `option_4` varchar(100) NOT NULL,
  `option_5` varchar(100) NOT NULL,
  `option_6` varchar(100) NOT NULL,
  `option_7` varchar(100) NOT NULL,
  `option_8` varchar(100) NOT NULL,
  `option_9` varchar(100) NOT NULL,
  `option_10` varchar(100) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `talent_question_table` */

insert  into `talent_question_table`(`question_id`,`question_name`,`option_1`,`option_2`,`option_3`,`option_4`,`option_5`,`option_6`,`option_7`,`option_8`,`option_9`,`option_10`,`isActive`) values (1,'what you want ','fulltime','halftime','xxxxxx','xxxxxx','vvvvvvvvv','nnnnnnnnn','mmmmmmmmm','uuuuuuuuuu','ppppppppppp','ttttttt','TRUE');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
