-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2012 at 09:12 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `live_support`
--

--
-- Dumping data for table `assistant`
--

INSERT INTO `assistant` (`id`, `username`, `password`, `name`, `email`, `stream_name`, `role`, `status`, `crdate`, `login`, `logout`) VALUES
(1, 'sppt1', '123', 'Secude Super Man', 'superman@secude.com', '', 'sale', 0, '2012-08-29 10:35:08', '2012-09-10 16:08:00', '2012-09-10 16:08:16'),
(2, 'sppt2', '123', 'Hello My Name Is', 'test@test.com', '', 'sale', 1, '2012-08-29 10:37:13', '2012-09-10 16:08:20', '2012-09-07 10:35:48'),
(4, 'mod', '123', 'Moderator', 'mod@secude.com', '', 'mod', 0, '2012-09-06 09:25:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`id`, `type`, `content`, `crdate`) VALUES
(1, 'customer_email', 'Dear {name},<br /> \r\n<br />\r\nThank you for allowing us to resolve your problem.<br />\r\n<br />\r\nThe SECUDE Support team are always happy to help out, please do not hesitate to contact us if you have any other queries or issues in the future.<br /> \r\n<br />\r\nBelow, you will find a summary of the service report. <br />\r\nPlease use this same Incident ID if you have a similar recurring issue. <br />\r\n\r\n<table border="1" width="100%">\r\n<tr><td>\r\n<h3>Incident ID: #{incident_id}</h3></td></tr>\r\n<tr><td>\r\n\r\n<table border="1" width="100%">\r\n	<tr>\r\n		<td width="35%"><b>Name:</b></td>\r\n		<td>{name}</td>\r\n	</tr>\r\n	<tr>\r\n		<td width="35%"><b>Tel:</b></td>\r\n		<td>{telephone}</td>\r\n	</tr>\r\n	<tr>\r\n		<td width="35%"><b>Email:</b></td>\r\n		<td>{email}</td>\r\n	</tr>\r\n	<tr>\r\n		<td width="35%"><b>Date:</b></td>\r\n		<td>{date}</td>\r\n	</tr>\r\n	<tr>\r\n		<td width="35%"><b>Ip:</b></td>\r\n		<td>{ip}</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan="2">\r\n			<b>Issue Description:</b><br />\r\n			{issue_description}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan="2">\r\n			<b>Remedy Action Taken/Advised:</b><br />\r\n			{advised}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan="2">\r\n			<b>Served by:</b> {served_by}\r\n		</td>\r\n	</tr>\r\n</table>\r\n\r\n</td></tr></table>\r\n\r\n<br />\r\nThanks,<br />\r\n<b><i>SECUDE Global Support.</i></b>', '2012-09-04 16:00:55');

--
-- Dumping data for table `feedback_option`
--

INSERT INTO `feedback_option` (`id`, `question_id`, `label_name`, `value`, `default`) VALUES
(1, 1, 'Question_1_Answer_1', 1, 0),
(2, 1, 'Question_1_Answer_2', 2, 0),
(3, 1, 'Question_1_Answer_3', 3, 0),
(4, 1, 'Question_1_Answer_4', 4, 0),
(5, 2, 'Question_2_Answer_1', 1, 0),
(6, 2, 'Question_2_Answer_2', 2, 0),
(7, 2, 'Question_2_Answer_3', 3, 0),
(8, 2, 'Question_2_Answer_4', 4, 0);

--
-- Dumping data for table `feedback_question`
--

INSERT INTO `feedback_question` (`id`, `name`, `label_name`, `order`, `status`) VALUES
(1, 'Question_1_Satisfactory', 'Question_1_Satisfactory', 0, 1),
(2, 'Question_2_Supporter_Knowledge', 'Question_2_Supporter_Knowledge', 0, 1),
(3, 'Question_3_Video', 'Question_3_Video', 0, 1),
(4, 'Question_4_Audio', 'Question_4_Audio', 0, 1);

--
-- Dumping data for table `label`
--

INSERT INTO `label` (`id`, `question_id`, `label`, `lang_id`, `value`) VALUES
(1, 2, 'Question_2_Supporter_Knowledge', 1, 'How good was the knowledge of the Technical Support Officer?'),
(2, 1, 'Question_1_Satisfactory', 1, 'Was the Support offered Satisfactory?'),
(3, 0, 'Question_1_Answer_1', 1, 'Uh oh, not what I expected and I need my concerns addressed.(Your Secude Account Manager will contact you within 24hours)\r\n'),
(4, 0, 'Question_1_Answer_2', 1, 'Sufficiently dealt with my problems but I expect a better level of customer service\r\n'),
(5, 0, 'Question_1_Answer_3', 1, 'Support provided was what I wanted and dealt with my issues effectively\r\n'),
(6, 0, 'Question_1_Answer_4', 1, 'Excellent!'),
(7, 0, 'Question_2_Answer_1', 1, 'Uh oh, not what I expected and I need my concerns addressed.(Your Secude Account Manager will contact you within 24hours)\r\n'),
(8, 0, 'Question_2_Answer_2', 1, 'Room for improvement but he/she managed to resolve my issues'),
(9, 0, 'Question_2_Answer_3', 1, 'Good. Satisfied with the qualified help given. The TSO knew what I needed intuitively\r\n'),
(10, 0, 'Question_2_Answer_4', 1, 'Superb, puts me at ease to know that someone with this expertise is handling my issues\r\n'),
(11, 3, 'Question_3_Video', 1, 'How good was video quality?'),
(12, 4, 'Question_4_Audio', 1, 'How would you rate the audio quality?');
