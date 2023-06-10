-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2017 at 12:13 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profile_score`
--

-- --------------------------------------------------------

--
-- Table structure for table `androidotp`
--

CREATE TABLE `androidotp` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `otp` int(10) NOT NULL,
  `verified` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `s_id` int(10) NOT NULL,
  `r_id` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_mast`
--

CREATE TABLE `category_mast` (
  `id` int(11) DEFAULT NULL,
  `categories` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_mast`
--

INSERT INTO `category_mast` (`id`, `categories`) VALUES
(1, 'C'),
(2, 'C++'),
(3, 'Java'),
(4, ''),
(5, ''),
(NULL, 'Software Engineering'),
(NULL, 'DBMS'),
(NULL, 'Software Engineering'),
(NULL, 'DBMS');

-- --------------------------------------------------------

--
-- Table structure for table `cat_mast`
--

CREATE TABLE `cat_mast` (
  `cat_id` int(5) NOT NULL,
  `cat_name` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_mast`
--

INSERT INTO `cat_mast` (`cat_id`, `cat_name`, `status`) VALUES
(1, 'tech', 1),
(2, 'aptitude', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cat_sub_mast`
--

CREATE TABLE `cat_sub_mast` (
  `c_id` int(5) NOT NULL,
  `cat_id` int(5) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='quesns';

--
-- Dumping data for table `cat_sub_mast`
--

INSERT INTO `cat_sub_mast` (`c_id`, `cat_id`, `c_name`, `status`) VALUES
(1, 2, 'verbal', 1),
(2, 2, 'reasoning', 1),
(3, 2, 'numeric', 1),
(4, 2, 'quantum', 1),
(5, 2, 'psychometric', 1),
(6, 1, 'java', 1),
(7, 1, 'C', 1),
(8, 1, 'Python', 1),
(9, 1, 'C++', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `r_id` varchar(50) NOT NULL,
  `location` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comp_pref`
--

CREATE TABLE `comp_pref` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `minpercen` int(11) NOT NULL COMMENT 'min score',
  `maxscore` int(11) NOT NULL COMMENT 'maximum score'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='company preferences';

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `Did` int(5) NOT NULL,
  `St.no` int(5) NOT NULL,
  `distname` varchar(20) NOT NULL,
  `statename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`Did`, `St.no`, `distname`, `statename`) VALUES
(1, 24, 'A.Thirumuruganpoondi', 'Tamil Nadu'),
(2, 24, 'A.Vellalapatti', 'Tamil Nadu'),
(3, 7, 'Aadityana', 'Gujarat'),
(4, 7, 'Aambaliyasan', 'Gujarat'),
(5, 7, 'Aantaliya', 'Gujarat'),
(6, 7, 'Aarambhada', 'Gujarat'),
(7, 5, 'Abhayapuri', 'Assam'),
(8, 24, 'Abiramam', 'Tamil Nadu'),
(9, 22, 'Abu Road', 'Rajasthan'),
(10, 1, 'Achabal', 'Jammu & Kashmir'),
(11, 2, 'Adampur', 'Punjab'),
(12, 4, 'Adari', 'Uttar Pradesh'),
(13, 1, 'dsfkj', ''),
(14, 1, '244hgtf', ''),
(15, 12, 'dsfkj', ''),
(16, 3, '24eee4hgtf', ''),
(17, 12, 'dsfkj', ''),
(18, 3, '24eee4hgtf', ''),
(19, 1, 'qqdsfkj', ''),
(20, 10, 'zzhgtf', ''),
(21, 3, 'sfdkj', ''),
(22, 2, 'ro244hgtf', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_name` varchar(100) NOT NULL COMMENT 'email',
  `mobile` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(5) NOT NULL COMMENT 'type of user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_name`, `mobile`, `password`, `role`) VALUES
('a', 'njkn', 'a', 2),
('Qwertyuiop', '9985952477', 'aa', 1),
('sai', '0', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_layout`
--

CREATE TABLE `menu_layout` (
  `m_id` int(5) NOT NULL,
  `m_text` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options_ques`
--

CREATE TABLE `options_ques` (
  `sno` int(10) NOT NULL,
  `Qid` varchar(10) NOT NULL,
  `text` varchar(400) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='options for questions';

--
-- Dumping data for table `options_ques`
--

INSERT INTO `options_ques` (`sno`, `Qid`, `text`, `status`) VALUES
(1, '1', '21/25', 0),
(2, '1', ' 17/25', 1),
(3, '1', '4/25', 0),
(4, '1', ' 8/25', 0),
(5, '2', '31/32', 1),
(6, '2', '1/16', 0),
(7, '2', '5/32', 0),
(8, '2', '19/16', 0),
(9, '5', '1/25', 1),
(10, '5', '10/25', 0),
(11, '5', '9/25', 0),
(12, '5', '1/5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `p_id` int(5) NOT NULL,
  `preference` varchar(40) NOT NULL COMMENT 'type of skill',
  `pref_value` int(15) NOT NULL COMMENT 'cos values'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='skill preferences ';

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`p_id`, `preference`, `pref_value`) VALUES
(1, 'java', 2),
(2, 'c', 4),
(4, 'c++', 8),
(5, 'C#', 16),
(6, 'python', 32),
(7, 'sql', 64);

-- --------------------------------------------------------

--
-- Table structure for table `profile_score`
--

CREATE TABLE `profile_score` (
  `sc_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `category` int(5) NOT NULL,
  `percentage` double(20,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_score`
--

INSERT INTO `profile_score` (`sc_id`, `s_id`, `category`, `percentage`) VALUES
(1, 1, 1, 60.0000),
(2, 1, 2, 70.0000),
(3, 1, 3, 80.0000),
(4, 1, 4, 40.0000);

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `s_id` int(5) NOT NULL,
  `qua_id` int(5) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qualifiication_cat`
--

CREATE TABLE `qualifiication_cat` (
  `qua_id` int(5) NOT NULL,
  `qua_type` int(5) NOT NULL COMMENT '1-experience 2-degree',
  `qua_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualifiication_cat`
--

INSERT INTO `qualifiication_cat` (`qua_id`, `qua_type`, `qua_name`) VALUES
(1, 2, 'ssc'),
(2, 2, 'intermediate'),
(3, 2, 'PG'),
(4, 2, 'UG'),
(5, 1, 'tech_exp'),
(6, 1, 'non_tech_exp');

-- --------------------------------------------------------

--
-- Table structure for table `ques`
--

CREATE TABLE `ques` (
  `Qid` int(10) NOT NULL COMMENT 'question id',
  `text` varchar(100) NOT NULL,
  `category` int(5) NOT NULL COMMENT 'describes its category'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques`
--

INSERT INTO `ques` (`Qid`, `text`, `category`) VALUES
(1, 'The probability that a number selected at random from the first 50 natural numbers is a composite nu', 1),
(2, 'A coin is tossed live times. What is the probability that there is at the least one tail?', 1),
(5, ' If a number is chosen at random from the set {1, 2, 3, ...., 100} then the probability that the cho', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(50) NOT NULL,
  `qname` varchar(400) NOT NULL,
  `op1` varchar(400) NOT NULL,
  `op2` varchar(400) NOT NULL,
  `op3` varchar(400) NOT NULL,
  `op4` varchar(400) NOT NULL,
  `answer` int(5) NOT NULL,
  `qz_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `qname`, `op1`, `op2`, `op3`, `op4`, `answer`, `qz_id`) VALUES
(1, 'The probability that a number selected at random from the first 50 natural numbers is a composite nu', '21/25', '17/25', '1/28', '8/54', 1, 1),
(2, 'A coin is tossed live times. What is the probability that there is at the least one tail?', '1/2', '11/28', '8/7', '87/89', 3, 1),
(3, ' If a number is chosen at random from the set {1, 2, 3, ...., 100} then the probability that the cho', '1/25', '5/8', '1/15', '5/8', 2, 1),
(4, 'Former Australian captain Mark Taylor has had several nicknames over his playing career. Which of the following was NOT one of them?', 'Tubby', 'Stodge', 'Helium Bat', 'Stumpy', 4, 1),
(5, 'Which was the 1st non Test playing country to beat India in an international match?', 'Canada', 'Sri Lanka', 'Zimbabwe', 'East Africa', 2, 1),
(6, 'Track and field star Carl Lewis won how many gold medals at the 1984 Olympic games?', 'Two', 'Three', 'Four', 'Eight', 3, 1),
(7, 'Which county did Ravi Shastri play for?', 'Glamorgan', 'Leicestershire', 'Gloucestershire', 'Lancashire', 4, 1),
(8, 'Which two counties did Kapil Dev play?', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 1),
(9, 'When was Amateur Athletics Federation of India established?', '1838', '1899', '1997', '1999', 2, 1),
(10, 'Which two counties did Kapil Dev play?', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 1),
(11, 'When was Amateur Athletics Federation of India established?', '1838', '1899', '1997', '1999', 2, 1),
(12, 'The probability that a number selected at random from the first 50 natural numbers is a composite nu', '21/25', '17/25', '1/28', '8/54', 1, 2),
(13, 'A coin is tossed live times. What is the probability that there is at the least one tail?', '1/2', '11/28', '8/7', '87/89', 3, 2),
(14, ' If a number is chosen at random from the set {1, 2, 3, ...., 100} then the probability that the cho', '1/25', '5/8', '1/15', '5/8', 2, 2),
(15, 'Former Australian captain Mark Taylor has had several nicknames over his playing career. Which of the following was NOT one of them?', 'Tubby', 'Stodge', 'Helium Bat', 'Stumpy', 4, 2),
(16, 'Track and field star Carl Lewis won how many gold medals at the 1984 Olympic games?', 'Two', 'Three', 'Four', 'Eight', 3, 2),
(17, 'Which was the 1st non Test playing country to beat India in an international match?', 'Canada', 'Sri Lanka', 'Zimbabwe', 'East Africa', 2, 2),
(18, 'Which two counties did Kapil Dev play?', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 2),
(19, 'When was Amateur Athletics Federation of India established?', '1838', '1899', '1997', '1999', 2, 2),
(20, 'Which two counties did Kapil Dev play?', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 3),
(21, 'When was Amateur Athletics Federation of India established?', '1838', '1899', '1997', '1999', 2, 3),
(22, 'Which county did Ravi Shastri play for?', 'Glamorgan', 'Leicestershire', 'Gloucestershire', 'Lancashire', 4, 2),
(23, 'When was Amateur Athletics Federation of India established?', '1838', '1899', '1997', '1999', 2, 3),
(24, 'Which two counties did Kapil Dev play?', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 3),
(26, 'Track and field star Carl Lewis won how many gold medals at the 1984 Olympic games?', 'Two', 'Three', 'Four', 'Eight', 3, 4),
(27, 'Which two counties did Kapil Dev play?', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 5),
(28, 'Which county did Ravi Shastri play for?', 'Glamorgan', 'Leicestershire', 'Gloucestershire', 'Lancashire', 4, 4),
(29, 'Which was the 1st non Test playing country to beat India in an international match?', 'Canada', 'Sri Lanka', 'Zimbabwe', 'East Africa', 2, 4),
(30, 'Former Australian captain Mark Taylor has had several nicknames over his playing career. Which of the following was NOT one of them?', 'Tubby', 'Stodge', 'Helium Bat', 'Stumpy', 4, 4),
(31, ' If a number is chosen at random from the set {1, 2, 3, ...., 100} then the probability that the cho', '1/25', '5/8', '1/15', '5/8', 2, 4),
(32, 'A coin is tossed live times. What is the probability that there is at the least one tail?', '1/2', '11/28', '8/7', '87/89', 3, 3),
(33, 'The probability that a number selected at random from the first 50 natural numbers is a composite nu', '21/25', '17/25', '1/28', '8/54', 1, 3),
(35, 'When was Amateur Athletics Federation of India established?', '1838', '1899', '1997', '1999', 2, 5),
(43, 'When was Amateur Athletics Federation of India established?', '1838', '1899', '1997', '1999', 2, 5),
(44, 'Which two counties did Kapil Dev play?', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 3),
(45, 'When was Amateur Athletics Federation of India established?', '1838', '1899', '1997', '1999', 2, 5),
(46, 'Track and field star Carl Lewis won how many gold medals at the 1984 Olympic games?', 'Two', 'Three', 'Four', 'Eight', 3, 5),
(47, 'Which two counties did Kapil Dev play?', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 5),
(48, 'Which county did Ravi Shastri play for?', 'Glamorgan', 'Leicestershire', 'Gloucestershire', 'Lancashire', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `question_skill`
--

CREATE TABLE `question_skill` (
  `qid` int(50) NOT NULL,
  `qname` varchar(400) NOT NULL,
  `op1` varchar(400) NOT NULL,
  `op2` varchar(400) NOT NULL,
  `op3` varchar(400) NOT NULL,
  `op4` varchar(400) NOT NULL,
  `answer` int(5) NOT NULL,
  `c_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='emplo skill quesns';

--
-- Dumping data for table `question_skill`
--

INSERT INTO `question_skill` (`qid`, `qname`, `op1`, `op2`, `op3`, `op4`, `answer`, `c_id`) VALUES
(1, '0', '21/25', '17/25', '1/28', '8/54', 1, 1),
(2, '0', '1/2', '11/28', '8/7', '87/89', 3, 1),
(3, '0', '1/25', '5/8', '1/15', '5/8', 2, 1),
(4, '0', 'Tubby', 'Stodge', 'Helium Bat', 'Stumpy', 4, 1),
(5, '0', 'Canada', 'Sri Lanka', 'Zimbabwe', 'East Africa', 2, 1),
(6, '0', 'Two', 'Three', 'Four', 'Eight', 3, 1),
(7, '0', 'Glamorgan', 'Leicestershire', 'Gloucestershire', 'Lancashire', 4, 1),
(8, '0', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 1),
(9, '0', '1838', '1899', '1997', '1999', 2, 1),
(10, '0', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 1),
(11, '0', '1838', '1899', '1997', '1999', 2, 1),
(12, '0', '21/25', '17/25', '1/28', '8/54', 1, 2),
(13, '0', '1/2', '11/28', '8/7', '87/89', 3, 2),
(14, '0', '1/25', '5/8', '1/15', '5/8', 2, 2),
(15, '0', 'Tubby', 'Stodge', 'Helium Bat', 'Stumpy', 4, 2),
(16, '0', 'Two', 'Three', 'Four', 'Eight', 3, 2),
(17, '0', 'Canada', 'Sri Lanka', 'Zimbabwe', 'East Africa', 2, 2),
(18, '0', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 2),
(19, '0', '1838', '1899', '1997', '1999', 2, 2),
(20, '0', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 3),
(21, '0', '1838', '1899', '1997', '1999', 2, 3),
(22, '0', 'Glamorgan', 'Leicestershire', 'Gloucestershire', 'Lancashire', 4, 2),
(23, '0', '1838', '1899', '1997', '1999', 2, 3),
(24, '0', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 3),
(26, '0', 'Two', 'Three', 'Four', 'Eight', 3, 4),
(27, '0', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 5),
(28, '0', 'Glamorgan', 'Leicestershire', 'Gloucestershire', 'Lancashire', 4, 4),
(29, '0', 'Canada', 'Sri Lanka', 'Zimbabwe', 'East Africa', 2, 4),
(30, '0', 'Tubby', 'Stodge', 'Helium Bat', 'Stumpy', 4, 4),
(31, '0', '1/25', '5/8', '1/15', '5/8', 2, 4),
(32, '0', '1/2', '11/28', '8/7', '87/89', 3, 3),
(33, '0', '21/25', '17/25', '1/28', '8/54', 1, 3),
(35, '0', '1838', '1899', '1997', '1999', 2, 5),
(43, '0', '1838', '1899', '1997', '1999', 2, 5),
(44, '0', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 3),
(45, '0', '1838', '1899', '1997', '1999', 2, 5),
(46, '0', 'Two', 'Three', 'Four', 'Eight', 3, 5),
(47, '0', 'Northamptonshire & Worcestershire', 'Northamptonshire & Warwickshire', 'Nottinghamshire & Worcestershire', 'Nottinghamshire & Warwickshire', 1, 5),
(48, '0', 'Glamorgan', 'Leicestershire', 'Gloucestershire', 'Lancashire', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `qz_id` int(5) NOT NULL,
  `qz_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='quiz names';

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`qz_id`, `qz_name`) VALUES
(1, 'quiz1'),
(2, 'quiz2'),
(3, 'quiz3'),
(4, 'quiz4'),
(5, 'quiz5'),
(6, 'quiz6'),
(7, 'quiz7'),
(8, 'quiz8'),
(9, 'quiz9'),
(10, 'quiz10');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_mast`
--

CREATE TABLE `quiz_mast` (
  `qz_id` int(11) NOT NULL,
  `Quiz` varchar(20) NOT NULL,
  `c_id` int(5) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_mast`
--

INSERT INTO `quiz_mast` (`qz_id`, `Quiz`, `c_id`, `status`) VALUES
(1, '1', 1, 1),
(2, '2', 1, 1),
(3, '3', 1, 1),
(4, '4', 1, 1),
(5, '5', 1, 1),
(6, '6', 1, 1),
(7, '7', 1, 1),
(8, '8', 1, 1),
(9, '9', 1, 1),
(10, '10', 1, 1),
(11, '1', 2, 1),
(12, '1', 3, 1),
(13, '2', 2, 1),
(14, '2', 3, 1),
(15, '1', 4, 1),
(16, '3', 6, 1),
(17, '2', 6, 1),
(18, '4', 6, 1),
(19, '5', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `student_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `quiz` varchar(10) NOT NULL,
  `Results` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`student_id`, `category_id`, `quiz`, `Results`) VALUES
(1, 2, 'quiz1', 70),
(2, 2, 'quiz1', 20),
(2, 2, 'quiz3', 50),
(3, 2, 'quiz4', 60),
(3, 2, 'quiz6', 60),
(3, 2, 'Quiz10', 90);

-- --------------------------------------------------------

--
-- Table structure for table `registration_rec`
--

CREATE TABLE `registration_rec` (
  `r_id` int(10) NOT NULL,
  `company_name` varchar(400) NOT NULL,
  `email` varchar(400) NOT NULL,
  `logo` varchar(400) NOT NULL,
  `working_tech` varchar(400) NOT NULL,
  `contact` int(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration_student`
--

CREATE TABLE `registration_student` (
  `s_id` int(10) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `name` varchar(11) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `photo` varchar(400) NOT NULL,
  `tech_wrk` int(5) NOT NULL DEFAULT '0',
  `nontech_wrk` int(5) NOT NULL DEFAULT '0',
  `resume_path` varchar(100) NOT NULL COMMENT 'path of student resume',
  `State` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '1-Activated 0-notactivated'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_student`
--

INSERT INTO `registration_student` (`s_id`, `user_name`, `name`, `mobile`, `photo`, `tech_wrk`, `nontech_wrk`, `resume_path`, `State`, `city`, `status`) VALUES
(1, 'sai', '0', '2147483647', 'pic', 2, 0, 'asdfhksdf/sdf/dsf/sdf/', 'ap', 'vsp', 0),
(2, 'asdf', '0', '2147483647', '', 0, 0, '', '', '', 0),
(3, 'sdf', '12', '54654', '1kjhfdlka', 0, 0, 'jfldkf??/df/df//f', 'ap', 'hyd', 0),
(110, 'Fjmkkkikkm', 'Drugs', '9502558165', '', 0, 0, '', '', '', 1),
(111, 'Qwertyuiop', 'Rde', '9985952477', '', 0, 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_menu`
--

CREATE TABLE `role_menu` (
  `rm_no` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `St.no` int(5) NOT NULL,
  `State` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`St.no`, `State`) VALUES
(1, 'Andhra Pradesh'),
(2, 'Arunachal Prade'),
(3, 'Assam'),
(4, 'Bihar'),
(5, 'Chhattisgarh'),
(6, 'Goa'),
(7, 'Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Prades'),
(10, 'Jammu and Kashm'),
(11, 'Jharkhand'),
(12, 'Karnataka'),
(13, 'Kerala'),
(14, 'Madhya Pradesh'),
(15, 'Maharashtra'),
(16, 'Manipur'),
(17, 'Meghalaya'),
(18, 'Mizoram'),
(19, 'Nagaland'),
(20, 'Odisha'),
(21, 'Punjab'),
(22, 'Rajasthan'),
(23, 'Sikkim'),
(24, 'Tamil Nadu'),
(25, 'Tripura'),
(26, 'Uttar Pradesh'),
(27, 'Uttarakhand'),
(28, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `student_cat_score`
--

CREATE TABLE `student_cat_score` (
  `student_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `Overall marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='category wise score';

--
-- Dumping data for table `student_cat_score`
--

INSERT INTO `student_cat_score` (`student_id`, `category_id`, `Overall marks`) VALUES
(1, 1, 40);

-- --------------------------------------------------------

--
-- Table structure for table `student_mast`
--

CREATE TABLE `student_mast` (
  `id` int(11) NOT NULL,
  `student` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_mast`
--

INSERT INTO `student_mast` (`id`, `student`) VALUES
(1, 'teja'),
(2, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `student_pref`
--

CREATE TABLE `student_pref` (
  `s _id` int(5) NOT NULL,
  `pref` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='student working preferences';

--
-- Dumping data for table `student_pref`
--

INSERT INTO `student_pref` (`s _id`, `pref`) VALUES
(1, '20'),
(1, 'jgkk');

-- --------------------------------------------------------

--
-- Table structure for table `student_quiz_map`
--

CREATE TABLE `student_quiz_map` (
  `sq_id` int(10) NOT NULL,
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `marks` int(11) NOT NULL,
  `attempted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_quiz_map`
--

INSERT INTO `student_quiz_map` (`sq_id`, `student_id`, `quiz_id`, `marks`, `attempted`) VALUES
(1, 1, 1, 4, 6),
(2, 2, 1, 9, 11),
(3, 3, 1, 11, 12),
(4, 4, 1, 12, 12),
(5, 5, 1, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `stu_quiz_level_score`
--

CREATE TABLE `stu_quiz_level_score` (
  `id` int(5) NOT NULL,
  `attempted` int(5) NOT NULL COMMENT ' attempted answers in quiz',
  `correct_ans` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stu_quiz_score`
--

CREATE TABLE `stu_quiz_score` (
  `id` int(5) NOT NULL,
  `sid` int(5) NOT NULL,
  `qz_id` int(5) NOT NULL,
  `category_id` int(5) NOT NULL,
  `percentage` int(5) NOT NULL,
  `attempt` int(10) NOT NULL,
  `sc_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='student quiz wise percentage';

--
-- Dumping data for table `stu_quiz_score`
--

INSERT INTO `stu_quiz_score` (`id`, `sid`, `qz_id`, `category_id`, `percentage`, `attempt`, `sc_id`) VALUES
(1, 1, 1, 1, 70, 7, 1),
(2, 1, 2, 1, 40, 4, 1),
(3, 1, 3, 1, 70, 3, 1),
(4, 1, 12, 3, 50, 3, 3),
(5, 1, 15, 4, 35, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tech_ques`
--

CREATE TABLE `tech_ques` (
  `techQ_id` int(11) NOT NULL,
  `tech_cat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_ques`
--

INSERT INTO `tech_ques` (`techQ_id`, `tech_cat`) VALUES
(1, 'C'),
(2, 'JAVA'),
(3, 'C++'),
(4, 'PYTHON');

-- --------------------------------------------------------

--
-- Table structure for table `workexp`
--

CREATE TABLE `workexp` (
  `s_id` int(11) NOT NULL,
  `tech_years` int(11) NOT NULL DEFAULT '0' COMMENT 'tech ecperience',
  `nontech_years` int(11) NOT NULL DEFAULT '0' COMMENT 'non technical experience'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `androidotp`
--
ALTER TABLE `androidotp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_mast`
--
ALTER TABLE `category_mast`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cat_mast`
--
ALTER TABLE `cat_mast`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `cat_sub_mast`
--
ALTER TABLE `cat_sub_mast`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_name`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `menu_layout`
--
ALTER TABLE `menu_layout`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `options_ques`
--
ALTER TABLE `options_ques`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `profile_score`
--
ALTER TABLE `profile_score`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `qualifiication_cat`
--
ALTER TABLE `qualifiication_cat`
  ADD PRIMARY KEY (`qua_id`);

--
-- Indexes for table `ques`
--
ALTER TABLE `ques`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `question_skill`
--
ALTER TABLE `question_skill`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`qz_id`);

--
-- Indexes for table `quiz_mast`
--
ALTER TABLE `quiz_mast`
  ADD PRIMARY KEY (`qz_id`);

--
-- Indexes for table `registration_rec`
--
ALTER TABLE `registration_rec`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `registration_student`
--
ALTER TABLE `registration_student`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`rm_no`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`St.no`);

--
-- Indexes for table `student_mast`
--
ALTER TABLE `student_mast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_quiz_map`
--
ALTER TABLE `student_quiz_map`
  ADD PRIMARY KEY (`sq_id`);

--
-- Indexes for table `stu_quiz_level_score`
--
ALTER TABLE `stu_quiz_level_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_quiz_score`
--
ALTER TABLE `stu_quiz_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_ques`
--
ALTER TABLE `tech_ques`
  ADD PRIMARY KEY (`techQ_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `androidotp`
--
ALTER TABLE `androidotp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cat_mast`
--
ALTER TABLE `cat_mast`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cat_sub_mast`
--
ALTER TABLE `cat_sub_mast`
  MODIFY `c_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `Did` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `menu_layout`
--
ALTER TABLE `menu_layout`
  MODIFY `m_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `options_ques`
--
ALTER TABLE `options_ques`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `profile_score`
--
ALTER TABLE `profile_score`
  MODIFY `sc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qualifiication_cat`
--
ALTER TABLE `qualifiication_cat`
  MODIFY `qua_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ques`
--
ALTER TABLE `ques`
  MODIFY `Qid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'question id', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `question_skill`
--
ALTER TABLE `question_skill`
  MODIFY `qid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `qz_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `quiz_mast`
--
ALTER TABLE `quiz_mast`
  MODIFY `qz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `registration_rec`
--
ALTER TABLE `registration_rec`
  MODIFY `r_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registration_student`
--
ALTER TABLE `registration_student`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `role_menu`
--
ALTER TABLE `role_menu`
  MODIFY `rm_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `St.no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `student_quiz_map`
--
ALTER TABLE `student_quiz_map`
  MODIFY `sq_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stu_quiz_level_score`
--
ALTER TABLE `stu_quiz_level_score`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stu_quiz_score`
--
ALTER TABLE `stu_quiz_score`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tech_ques`
--
ALTER TABLE `tech_ques`
  MODIFY `techQ_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
