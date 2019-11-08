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

/*Table structure for table `talent_answer` */

DROP TABLE IF EXISTS `talent_answer`;

CREATE TABLE `talent_answer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `candidate_uniqueId` varchar(50) NOT NULL,
  `question_id` int(10) NOT NULL,
  `answer_name` varchar(250) NOT NULL,
  `is_active` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `talent_answer` */

/*Table structure for table `talent_candidate_experience` */

DROP TABLE IF EXISTS `talent_candidate_experience`;

CREATE TABLE `talent_candidate_experience` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `candidate_uniqueId` varchar(50) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `technology_used` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `talent_candidate_experience` */

insert  into `talent_candidate_experience`(`id`,`candidate_uniqueId`,`project_name`,`start_date`,`end_date`,`technology_used`,`description`) values (1,'55fb2524-66ac-45ef-8460-eeeb26328f86','nucigent','0007-05-12','0028-05-11','java','xxxxxxxxxxxxxxxx'),(2,'57f638cf-74da-4a12-b94d-8a2a89f46b7d','nucigent','0183-03-11','0176-03-11','java','xxxxxxxxxxxxxxxx'),(3,'a546c157-368b-4870-8b3e-cbbe308e464c','nucigent','2019-11-14','2019-11-22','java','sraya');

/*Table structure for table `talent_candidate_information` */

DROP TABLE IF EXISTS `talent_candidate_information`;

CREATE TABLE `talent_candidate_information` (
  `candidate_id` int(10) NOT NULL AUTO_INCREMENT,
  `candidate_uniqueId` varchar(50) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `contact_number` longtext NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `collage_name` varchar(50) NOT NULL,
  `passing_year` varchar(5) NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `talent_candidate_information` */

insert  into `talent_candidate_information`(`candidate_id`,`candidate_uniqueId`,`first_name`,`last_name`,`contact_number`,`email_id`,`location`,`collage_name`,`passing_year`) values (1,'','satya','brata','7008855143','satya@gmail.com','bbsr','gift','2019'),(2,'','satya','brata','7008855143','satya@gmail.com','bbsr','gift','2019'),(3,'','priya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(4,'','satya','mohanty','7008855143','satyabrata@gmail.com','kakatpur','gita','2015'),(5,'','satya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(6,'6f53b819-98de-48d9-b63e-47a3ce839f37','satya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(7,'432dafc9-51cc-4a9c-8333-322f26852188','satya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(8,'bea84ea3-0fa2-4aaa-bc03-b236bade5caa','priya','brata','7008855143','satyabrata@gmail.com','bbsr','gita','2015'),(9,'bd7be2d1-6896-407d-a37e-4389c606e681','satya','mohanty','7008855143','satyabrata@gmail.com','bbsr','gita',''),(10,'3e4b3c00-80f7-49ef-936d-56a3a51fa840','satya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(11,'3fcf63b0-2269-4976-8d80-eed7f0ea2d3d','satya','mohanty','7008855143','satyabrata@gmail.com','bbsr','gift','2019'),(12,'359fdcdc-920d-4357-8143-aa6125eafcb9','satya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(13,'1995625f-31b5-4059-b447-97a27cdf3564','satya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(14,'55fb2524-66ac-45ef-8460-eeeb26328f86','satya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(15,'dbe246c5-600d-499c-a409-f705db0dc27a','satya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(16,'57f638cf-74da-4a12-b94d-8a2a89f46b7d','satya','mohanty','7008855143','satya@gmail.com','bbsr','gift','2019'),(17,'a546c157-368b-4870-8b3e-cbbe308e464c','priya','p','7008855143','satya@gmail.com','p','i','2015');

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
  `answer_id` int(10) NOT NULL AUTO_INCREMENT,
  `answer_name` varchar(250) NOT NULL,
  `question_id` int(10) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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
