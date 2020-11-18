DROP DATABASE IF EXISTS `hms`;
CREATE DATABASE  IF NOT EXISTS `hms`;
USE `hms`;

CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `customer_name` varchar(45) NOT NULL,
  `customer_phone` int(15) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(45) NOT NULL,
  `services` varchar(1000) NOT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=510;

INSERT INTO `appointment` (`appointment_id`, `username`, `customer_name`, `customer_phone`, `appointment_date`, `appointment_time`, `end_time`, `status`, `services`) VALUES

(1, 'noel', 'Walk In', '81000000','2020-11-16', '15:30', '16:00', 'Ongoing', '18@Harts Dimension [Long]'),
(2, 'sam', 'Nancy', '82000000','2020-11-16', '15:30', '16:00', 'Ongoing', '18@Harts Dimension [Long]'),
(3, 'hui', 'Walk In', '83000000','2020-11-16', '15:30', '16:00', 'Ongoing', '18@Harts Dimension [Long]'),
(4, 'noel', 'Walk In', '84000000','2020-11-16', '12:30', '13:00', 'Ongoing', '18@Harts Dimension [Long]'),
(5, 'noel', 'Walk In', '85000000','2020-11-16', '17:30', '19:00', 'Ongoing', '18@Harts Dimension [Long]'),
(6, 'sam', 'Walk In', '86000000','2020-11-16', '11:30', '12:00', 'Ongoing', '18@Harts Dimension [Long]');

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `phone_number` int(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`customer_id`, `customer_name`, `phone_number`, `email`, `username`, `password`) VALUES
(0, 'Walk In', '', '', '', ''),
(1, 'Nancy', '81234567', '', '', '');


CREATE TABLE IF NOT EXISTS `hairstylist_role` (
  `hairstylist_role` int(11) NOT NULL,
  `hairstylist_roledesc` varchar(45) NOT NULL,
  PRIMARY KEY (`hairstylist_role`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `hairstylist_role` (`hairstylist_role`, `hairstylist_roledesc`) VALUES
(0, 'non hair stylist'),
(1, 'Director'),
(2, 'Creative Stylist'),
(3, 'Stylist');

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(5) NOT NULL AUTO_INCREMENT,
  `role_description` varchar(25) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO `role` (`role_id`, `role_description`) VALUES
(1, 'admin'),
(2, 'hairstylist'),
(3, 'staff');

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_desc` varchar(100) NOT NULL,
  `short` double NOT NULL,
  `medium` double NOT NULL,
  `long_price` double NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO `service` (`service_id`, `service_desc`, `short`, `medium`, `long_price`, `category`) VALUES
(1, 'Director Cut', 50, 55, 60, 'cut'),
(2, 'Creative Hair Stylist Cut', 45, 50, 55, 'cut'),
(3, 'Hair Stylist Cut', 35, 40, 45, 'cut'),
(4, 'Wash & Blow-dry', 30, 35, 40, 'style'),
(5, 'Rebuilding Hair Treatment', 90, 150, 210, 'treatment');

CREATE TABLE IF NOT EXISTS `service_time` (
  `time_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `service_desc` varchar(45) NOT NULL,
  `short_time` int(11) NOT NULL,
  `medium_time` int(11) NOT NULL,
  `long_time` int(11) NOT NULL,
  `category` varchar(45) NOT NULL,
  `hairstylist_username` varchar(45) NOT NULL,
  `hairstylist_name` varchar(45) NOT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

INSERT INTO `service_time` (`time_id`, `service_id`, `service_desc`, `short_time`, `medium_time`, `long_time`, `category`, `hairstylist_username`, `hairstylist_name`) VALUES
(1, 1, 'Director Cut', 30, 45, 60, 'cut', 'noel', 'Noel Ng'),
(2, 2, 'Creative Hair Stylist Cut', 30, 50, 60, 'cut', 'hui', 'Hui Yu Chen'),
(3, 3, 'Hair Stylist Cut', 50, 50, 60, 'cut', 'sam', 'Samson Yu');

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(25) NOT NULL,
  `name` varchar(70) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` int(5) NOT NULL,
  `phone_number` int(15) NOT NULL,
  `email` varchar(70) NOT NULL,
  `security_code` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `user` (`username`, `name`, `password`, `role`, `phone_number`, `email`, `security_code`) VALUES
('noel', 'Noel Ng', 'noel', 2, 67248977, 'noel@gmail.com', '2WSF3SIZ'),
('sam','Samson Yu','sam',2,81262138,'sam@gmail.com',''),
('hui','Hui Yu Chen','hui',2,94884048,'hui@gmail.com',' '),
('shuxin','Shu Xin Yoong','shuxin',3,93846474,'shuxin@gmail.com',''),
('jesmine','Jesmine Ong','jesmine',3,63844848,'jes@gmail.com','');

CREATE TABLE IF NOT EXISTS `leave` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=100;

INSERT INTO `leave` (`leave_id`, `username`, `name`, `start_date`, `end_date`, `start_time`, `end_time`) VALUES
(1, 'hui', 'Hui Yu Chen', '2020-12-30', '2020-12-30', '11:30', '13:30'),
(2, 'sam', 'Samson Yu', '2020-12-31','2021-1-15','00:00', '12:00');
