
CREATE TABLE `talent_pool`.`talent_locations` (
  `location_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique ID',
  `country` VARCHAR(50) NOT NULL COMMENT 'Country Name',
  `state` VARCHAR(50) NULL COMMENT 'state',
  `city` VARCHAR(50) NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE INDEX `location_id_UNIQUE` (`location_id` ASC) VISIBLE);

INSERT INTO `talent_pool`.`talent_locations` (`country`, `state`, `city`) VALUES ('USA', 'VA', 'MCLEan');
INSERT INTO `talent_pool`.`talent_locations` (`country`, `state`, `city`) VALUES ('USA', 'VA', 'FairFax');
INSERT INTO `talent_pool`.`talent_locations` (`country`, `state`, `city`) VALUES ('USA', 'VA', 'Vienna');
INSERT INTO `talent_pool`.`talent_locations` (`country`, `state`, `city`) VALUES ('USA', 'IL', 'Chicago');
INSERT INTO `talent_pool`.`talent_locations` (`country`, `state`) VALUES ('USA', 'IL');

CREATE TABLE `talent_pool`.`talent_questions` (
  `question_id` INT NOT NULL COMMENT 'Unique autogenerated questionID',
  `question_name` VARCHAR(250) NOT NULL,
  `is_active` VARCHAR(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`question_id`));
  
  INSERT INTO `talent_pool`.`talent_questions` (`question_name`, `is_active`) VALUES ('What kind of Job you are looking for', 'Y');
INSERT INTO `talent_pool`.`talent_questions` (`question_name`, `is_active`) VALUES ('Where would you like to start your job', 'Y');
INSERT INTO `talent_pool`.`talent_questions` (`question_name`, `is_active`) VALUES ('Which industries are you excited about', 'Y');
INSERT INTO `talent_pool`.`talent_questions` (`question_name`, `is_active`) VALUES ('What kind of employers you are looking for', 'N');



CREATE TABLE `talent_pool`.`talent_location_questions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `question_id` INT NOT NULL,
  `location_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `location_id_idx` (`location_id` ASC) VISIBLE,
  INDEX `question_id_idx` (`question_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `location_id`
    FOREIGN KEY (`location_id`)
    REFERENCES `talent_pool`.`talent_locations` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `question_id`
    FOREIGN KEY (`question_id`)
    REFERENCES `talent_pool`.`talent_questions` (`question_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


INSERT INTO `talent_pool`.`talent_location_questions` (`question_id`, `location_id`) VALUES ('1', '1');
INSERT INTO `talent_pool`.`talent_location_questions` (`question_id`, `location_id`) VALUES ('1', '2');
INSERT INTO `talent_pool`.`talent_location_questions` (`question_id`, `location_id`) VALUES ('1', '3');
INSERT INTO `talent_pool`.`talent_location_questions` (`question_id`, `location_id`) VALUES ('1', '4');
INSERT INTO `talent_pool`.`talent_location_questions` (`question_id`, `location_id`) VALUES ('2', '2');
INSERT INTO `talent_pool`.`talent_location_questions` (`question_id`, `location_id`) VALUES ('3', '1');
INSERT INTO `talent_pool`.`talent_location_questions` (`question_id`, `location_id`) VALUES ('4', '1');

CREATE TABLE `talent_pool`.`talent_question_answers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `question_id` INT NOT NULL,
  `answer_option` VARCHAR(250) NOT NULL,
  `answer_description` VARCHAR(250) NULL,
  `is_active` VARCHAR(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `question_id_idx` (`question_id` ASC) VISIBLE,
  CONSTRAINT `fk_loc_ques_id`
    FOREIGN KEY (`question_id`)
    REFERENCES `talent_pool`.`talent_questions` (`question_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `talent_pool`.`talent_question_answers` (`question_id`, `answer_option`, `answer_description`) VALUES ('1', 'Full Time', 'Full time job');
INSERT INTO `talent_pool`.`talent_question_answers` (`question_id`, `answer_option`) VALUES ('1', 'Part Time');
INSERT INTO `talent_pool`.`talent_question_answers` (`question_id`, `answer_option`) VALUES ('1', 'Internship');
INSERT INTO `talent_pool`.`talent_question_answers` (`question_id`, `answer_option`) VALUES ('2', 'New York');
INSERT INTO `talent_pool`.`talent_question_answers` (`question_id`, `answer_option`) VALUES ('2', 'LasVegas');
INSERT INTO `talent_pool`.`talent_question_answers` (`question_id`, `answer_option`) VALUES ('2', 'Chicago');
INSERT INTO `talent_pool`.`talent_question_answers` (`question_id`, `answer_option`) VALUES ('3', 'Internet and Software');


CREATE TABLE `talent_pool`.`talent_candidate_personal_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `candidate_reference_id` VARCHAR(255) NOT NULL COMMENT 'UUID passed by client',
  `first_name` VARCHAR(45) NOT NULL,
  `middle_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email_id` VARCHAR(45) NULL,
  `contact_number` INT NULL,
  `alternate_email_id` VARCHAR(45) NOT NULL,
  `location_id` VARCHAR(45) NULL,
  `institute_name` VARCHAR(45) NULL,
  `passing_year` VARCHAR(45) NULL,
  `grade` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));




CREATE TABLE `talent_pool`.`talent_candidate_experience_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `candidate_personal_id` INT NULL,
  `project_name` VARCHAR(255) NULL,
  `start_date` VARCHAR(45) NULL,
  `end_date` VARCHAR(45) NULL,
  `technologies_used` VARCHAR(45) NULL,
  `project_description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `talent_pool`.`talent_candidate_answer_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `candidate_reference_id` INT NULL,
  `question_response_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_can_ans_idx` (`question_response_id` ASC) VISIBLE,
  CONSTRAINT `fk_can_ans`
    FOREIGN KEY (`question_response_id`)
    REFERENCES `talent_pool`.`talent_question_answers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);




