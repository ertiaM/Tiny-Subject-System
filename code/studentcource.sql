/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.62 : Database - studentcource
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentcource` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `studentcource`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(64) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `class_date` varchar(64) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `major_id` (`major_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`course_id`,`course`,`teacher_id`,`class_date`,`start_time`,`end_time`,`credit`,`grade`,`major_id`) values (1,'English Reading',1,'Monday',6,8,3,0,0),(2,'Advanced Mathematics',2,'Tuesday',10,12,4,0,2),(3,'Data Structure',3,'Wednesday',1,2,5,0,2),(4,'Algorithm Analysis and Design',3,'Thursday',3,4,5,0,2),(5,'Basketball',4,'Friday',6,7,1,2,0),(6,'Football',5,'Friday',6,7,1,2,0),(7,'International Marketing',9,'Monday',6,8,5,2,1),(8,'International Investment',8,'Wednesday',10,12,5,0,1),(9,'English Writing',1,'Thursday',1,2,3,0,0),(10,'Operating System',3,'Wednesday',6,8,5,2,2),(11,'Economic Game Theory',7,'Friday',1,2,4,0,1),(12,'Managerial economics',6,'Tuesday',6,8,5,0,1);

/*Table structure for table `finished` */

DROP TABLE IF EXISTS `finished`;

CREATE TABLE `finished` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `finished_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`),
  CONSTRAINT `finished_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `finished` */

insert  into `finished`(`id`,`stu_id`,`course_id`) values (1,201901,3);

/*Table structure for table `major` */

DROP TABLE IF EXISTS `major`;

CREATE TABLE `major` (
  `id` int(11) NOT NULL,
  `major` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `major` */

insert  into `major`(`id`,`major`) values (0,'all'),(1,'finance'),(2,'computer science');

/*Table structure for table `pre_require` */

DROP TABLE IF EXISTS `pre_require`;

CREATE TABLE `pre_require` (
  `course_id` int(11) NOT NULL,
  `pre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `pre_id` (`pre_id`),
  CONSTRAINT `pre_require_ibfk_1` FOREIGN KEY (`pre_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `pre_require_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pre_require` */

insert  into `pre_require`(`course_id`,`pre_id`) values (4,3);

/*Table structure for table `selected` */

DROP TABLE IF EXISTS `selected`;

CREATE TABLE `selected` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `selected_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`),
  CONSTRAINT `selected_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `selected` */

insert  into `selected`(`id`,`stu_id`,`course_id`) values (43,201801,9),(44,201801,5),(45,201801,12),(46,201801,11),(47,201801,8),(51,202001,10),(52,202001,3),(53,202001,2),(54,202001,9),(55,202001,1),(60,201801,1),(61,201901,1),(62,201901,5);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(64) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `total_credit` int(11) NOT NULL,
  `selected_credit` int(11) DEFAULT '0',
  `major_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `major_id` (`major_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202102 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`password`,`name`,`grade`,`total_credit`,`selected_credit`,`major_id`) values (201801,'12138','Ada',4,22,21,1),(201901,'233666','Leon',3,21,4,2),(202001,'010117','Jill',2,20,20,2),(202101,'aa1234','Alice',1,24,0,2);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`teacher_id`,`teacher_name`) values (1,'Heisenberg'),(2,'Stark'),(3,'Sheldon'),(4,'Holmes'),(5,'Cartman'),(6,'Joden'),(7,'Kim'),(8,'Goodman'),(9,'Kyle');

/* Trigger structure for table `selected` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `coursecredit_after` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `coursecredit_after` AFTER INSERT ON `selected` FOR EACH ROW BEGIN
    declare newstu_id int;
    declare newcour_id int;
    declare newcredit int;
    SET newstu_id = new.stu_id;
    set  newcour_id = new.course_id;
    select credit into newcredit from course where course.course_id = newcour_id;
    update student set selected_credit = selected_credit + newcredit where student.id = newstu_id;
    END */$$


DELIMITER ;

/* Trigger structure for table `selected` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `coursecredit_delete` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `coursecredit_delete` AFTER DELETE ON `selected` FOR EACH ROW BEGIN
	DECLARE student_id INT;
	DECLARE cour_id INT;
	DECLARE cour_credit INT;
	SET student_id = old.stu_id;
	SET cour_id = old.course_id;
	SELECT credit INTO cour_credit FROM course WHERE course.course_id = cour_id;
	UPDATE student SET selected_credit = selected_credit - cour_credit WHERE student.id = student_id;
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
