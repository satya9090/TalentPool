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

/*Table structure for table `talent_candidate_experience` */

DROP TABLE IF EXISTS `talent_candidate_experience`;

CREATE TABLE `talent_candidate_experience` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `technology_used` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `talent_candidate_experience` */

/*Table structure for table `talent_candidate_information` */

DROP TABLE IF EXISTS `talent_candidate_information`;

CREATE TABLE `talent_candidate_information` (
  `candidate_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `contact_number` longtext NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `collage_name` varchar(50) NOT NULL,
  `passing_year` varchar(5) NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `talent_candidate_information` */

/*Table structure for table `talent_location_questions` */

DROP TABLE IF EXISTS `talent_location_questions`;

CREATE TABLE `talent_location_questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question_id` varchar(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `talent_location_questions` */

/*Table structure for table `talent_locations` */

DROP TABLE IF EXISTS `talent_locations`;

CREATE TABLE `talent_locations` (
  `location_id` int(10) NOT NULL AUTO_INCREMENT,
  `country` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `talent_locations` */

/*Table structure for table `talent_question_answers` */

DROP TABLE IF EXISTS `talent_question_answers`;

CREATE TABLE `talent_question_answers` (
  `answer_id` int(10) NOT NULL,
  `answer_name` varchar(250) NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
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
  PRIMARY KEY (`question_id`),
  KEY `answer_id` (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `talent_question_answers` */

insert  into `talent_question_answers`(`answer_id`,`answer_name`,`question_id`,`question_name`,`option_1`,`option_2`,`option_3`,`option_4`,`option_5`,`option_6`,`option_7`,`option_8`,`option_9`,`option_10`,`isActive`) values (3,'',1,'what you want ','fulltime','halftime','xxxxxx','xxxxxx','vvvvvvvvv','nnnnnnnnn','mmmmmmmmm','uuuuuuuuuu','intenxx','fulltime','true'),(4,'',2,'age','17','18','19','20','21','22','23','24','25','26','true');

/*Table structure for table `talent_questions` */

DROP TABLE IF EXISTS `talent_questions`;

CREATE TABLE `talent_questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question_id` int(25) NOT NULL,
  `question_name` varchar(250) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `talent_questions` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
