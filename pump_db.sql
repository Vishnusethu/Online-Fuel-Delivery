-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 06, 2020 at 05:02 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `pump`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_pump_db`
--

CREATE TABLE IF NOT EXISTS `add_pump_db` (
  `pump_id` varchar(11) NOT NULL,
  `man_id` int(11) NOT NULL,
  `franchise_name` text NOT NULL,
  `email` text NOT NULL,
  `street` text NOT NULL,
  `district` text NOT NULL,
  `state` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `long` int(11) NOT NULL,
  `lat` int(11) NOT NULL,
  `phno` int(11) NOT NULL,
  PRIMARY KEY (`pump_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_pump_db`
--

INSERT INTO `add_pump_db` (`pump_id`, `man_id`, `franchise_name`, `email`, `street`, `district`, `state`, `pincode`, `long`, `lat`, `phno`) VALUES
('100', 800, 'indian oil', 'pump1@gmail.com', 'paravoor', 'kollam', 'kerala', 691301, 390, 410, 2147483647),
('50', 800, 'honda', 'pump2@gmail.com', 'ayiroor', 'trivandrum', 'kerala', 698653, 200, 150, 2147483647),
('300', 800, 'hindustan', 'adojbvuoab@gmail.com', 'kundara', 'palliyara', 'Kerala', 691301, 180, 110, 2147483647),
('650', 800, 'hindustan', 'ouachiucau@gmail.com', 'kochalinmoodu', 'kottayam', 'kerala', 695603, 300, 450, 2147483647),
('224', 24, 'indian oil', 'ram24@gmail.com', 'kottarakara', 'kollam', 'kerala', 695603, 180, 450, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `censor_db`
--

CREATE TABLE IF NOT EXISTS `censor_db` (
  `cen_id` int(10) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `pump_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `fuel_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`cen_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `censor_db`
--


-- --------------------------------------------------------

--
-- Table structure for table `emp_appoint`
--

CREATE TABLE IF NOT EXISTS `emp_appoint` (
  `emp_id` int(11) NOT NULL,
  `man_id` int(11) NOT NULL,
  `pump_id` int(11) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `qual_pic` varchar(50) NOT NULL,
  `req_send` int(11) NOT NULL,
  `approve_status` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_appoint`
--

INSERT INTO `emp_appoint` (`emp_id`, `man_id`, `pump_id`, `machine_id`, `qual_pic`, `req_send`, `approve_status`, `active`) VALUES
(200, 800, 100, 10, '5eb9c879308254.89254798.png', 1, 1, 1),
(17, 24, 224, 0, '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_reg`
--

CREATE TABLE IF NOT EXISTS `emp_reg` (
  `emp_name` text NOT NULL,
  `emp_id` bigint(20) NOT NULL,
  `pass` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `repass` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `gender` text NOT NULL,
  `dob` date NOT NULL,
  `qual` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `phno` text NOT NULL,
  `status` int(11) NOT NULL,
  `type` text NOT NULL,
  `qual_status` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_reg`
--

INSERT INTO `emp_reg` (`emp_name`, `emp_id`, `pass`, `repass`, `gender`, `dob`, `qual`, `address`, `email`, `phno`, `status`, `type`, `qual_status`) VALUES
('arjun', 200, 'arjun', 'arjun', 'male', '2020-03-15', '12', 'sdjbvsbvjwdbjbsdjlbj', 'nddjc@gmail.com', '7478477258', 1, 'employee', 1),
('anoop sheeja', 17, 'anoop17', 'anoop17', 'male', '1999-12-15', '12', 'whsoivshoi', 'sjab@gmail.com', '7897889787', 1, 'employee', 0),
('karthi', 205, 'karthi', 'karthi', 'male', '1999-02-15', '10', 'vvddssdsds', 'bddfdf@gmail.com', '7877987777', 1, 'employee', 0),
('kurushu', 210, 'kurushu', 'kurushu', 'male', '1995-05-08', '10', 'svsdvdsds', 'osncbcb@jbj', '4845346565', 1, 'employee', 0),
('dhamu', 215, 'dhamu', 'dhamu', 'male', '1998-01-28', '10', 'ljnbfj l ', 'djsndvn@ovn', '8795222222', 1, 'employee', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_db`
--

CREATE TABLE IF NOT EXISTS `feedback_db` (
  `order_id` int(11) NOT NULL,
  `descrip` text NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_db`
--

INSERT INTO `feedback_db` (`order_id`, `descrip`, `reply`) VALUES
(500, 'thanks for your service', ''),
(150, 'bad', 'sorry for your inconvenience'),
(300, 'great service', 'thanks for feedback'),
(501, 'gud service', '');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_at_pump`
--

CREATE TABLE IF NOT EXISTS `fuel_at_pump` (
  `pump_id` int(11) NOT NULL,
  `fuel_id` text NOT NULL,
  `ltr` float NOT NULL,
  KEY `pump_id` (`pump_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuel_at_pump`
--

INSERT INTO `fuel_at_pump` (`pump_id`, `fuel_id`, `ltr`) VALUES
(300, 'd1', 1100),
(100, 'p1', 10.9651),
(100, 'd1', 6.52175),
(224, 'p1', 500);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_db`
--

CREATE TABLE IF NOT EXISTS `fuel_db` (
  `fuel_id` text NOT NULL,
  `name` text NOT NULL,
  `rate/ltr` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuel_db`
--

INSERT INTO `fuel_db` (`fuel_id`, `name`, `rate/ltr`) VALUES
('p1', 'petrol', 80),
('p2', 'premium petrol', 85),
('d1', 'diesel', 70),
('d2', 'premium diesel', 75);

-- --------------------------------------------------------

--
-- Table structure for table `login_pump`
--

CREATE TABLE IF NOT EXISTS `login_pump` (
  `id` text NOT NULL,
  `name` text NOT NULL,
  `pass` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `status` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_pump`
--

INSERT INTO `login_pump` (`id`, `name`, `pass`, `status`, `type`) VALUES
('43', 'subin sha i', 'annachi', 1, 'user'),
('200', 'arjun', 'arjun', 1, 'employee'),
('1', 'admin', 'admin', 1, 'admin'),
('800', 'gokul', 'gokul', 1, 'pump manager'),
('24', 'ram', 'ram24', 1, 'pump manager'),
('17', 'anoop sheeja', 'anoop17', 1, 'employee'),
('215', 'dhamu', 'dhamu', 0, 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_fuel`
--

CREATE TABLE IF NOT EXISTS `ordered_fuel` (
  `order_id` int(11) NOT NULL,
  `us_id` text NOT NULL,
  `pump_id` text NOT NULL,
  `emp_id` text NOT NULL,
  `fuel_id` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `date` date NOT NULL,
  `adv_amt` float NOT NULL,
  `total` float NOT NULL,
  `qty` float NOT NULL,
  `long` varchar(150) NOT NULL,
  `lat` varchar(150) NOT NULL,
  `status_d` int(11) NOT NULL,
  `status_p` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordered_fuel`
--

INSERT INTO `ordered_fuel` (`order_id`, `us_id`, `pump_id`, `emp_id`, `fuel_id`, `pincode`, `date`, `adv_amt`, `total`, `qty`, `long`, `lat`, `status_d`, `status_p`) VALUES
(500, '43', '100', '200', 'p1', 0, '2020-05-12', 50, 100, 2, '0', '0', 1, 2),
(150, '100', '50', '10', 'd1', 0, '2020-05-12', 250, 500, 5, '0', '0', 0, 1),
(300, '100', '200', '50', 'p1', 0, '2020-05-11', 100, 200, 5, '0', '0', 0, 0),
(501, '43', '224', '200', 'p1', 691301, '2020-06-27', 500, 1000, 12.5, '0', '0', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `profile_pic`
--

CREATE TABLE IF NOT EXISTS `profile_pic` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `picture` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_pic`
--

INSERT INTO `profile_pic` (`id`, `type`, `picture`) VALUES
(800, 'pump manager', 'P00800.jpg'),
(200, 'employee', '5eb5842bbe6061.37929121.jpg'),
(43, 'user', 'U0043.jpg'),
(24, 'pump manager', 'mini_logo.png'),
(17, 'employee', 'mini_logo.png'),
(205, 'employee', 'mini_logo.png'),
(210, 'employee', 'mini_logo.png'),
(215, 'employee', 'mini_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `pump_license`
--

CREATE TABLE IF NOT EXISTS `pump_license` (
  `lic_no` text NOT NULL,
  `man_id` text NOT NULL,
  `franchise` text NOT NULL,
  `lic_image` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump_license`
--

INSERT INTO `pump_license` (`lic_no`, `man_id`, `franchise`, `lic_image`) VALUES
('lic123789', '24', 'indian oil', '5efaf0c2d8fd27.74968073.jpg'),
('lic12345', '800', 'hindustan', '5eb48e53c51434.09288698.png');

-- --------------------------------------------------------

--
-- Table structure for table `pump_machine`
--

CREATE TABLE IF NOT EXISTS `pump_machine` (
  `machine_id` text NOT NULL,
  `pump_id` text NOT NULL,
  `emp_id` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump_machine`
--

INSERT INTO `pump_machine` (`machine_id`, `pump_id`, `emp_id`) VALUES
('001', '224', '0'),
('65', '650', '200');

-- --------------------------------------------------------

--
-- Table structure for table `pump_man_reg`
--

CREATE TABLE IF NOT EXISTS `pump_man_reg` (
  `man_id` bigint(11) NOT NULL,
  `man_name` text NOT NULL,
  `pass` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `repass` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `gender` text NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `qual` text NOT NULL,
  `email` text NOT NULL,
  `phno` text NOT NULL,
  `status` int(11) NOT NULL,
  `type` text NOT NULL,
  `lic_status` int(11) NOT NULL,
  PRIMARY KEY (`man_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump_man_reg`
--

INSERT INTO `pump_man_reg` (`man_id`, `man_name`, `pass`, `repass`, `gender`, `dob`, `address`, `qual`, `email`, `phno`, `status`, `type`, `lic_status`) VALUES
(800, 'gokul', 'gokul', 'gokul', 'female', '2018-10-05', 'shaji nivas koonayil', '12', 'gokz@gmail.com', '1234567891', 1, 'pump manager', 1),
(24, 'ram', 'ram24', 'ram24', 'male', '1999-12-12', 'adi kadal', '12', 'ram24@gmail.com', '4565454454', 1, 'pump manager', 1);

-- --------------------------------------------------------

--
-- Table structure for table `timerecord`
--

CREATE TABLE IF NOT EXISTS `timerecord` (
  `userid` tinytext NOT NULL,
  `recordtime` tinytext NOT NULL,
  `userrole` tinytext NOT NULL,
  `times` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timerecord`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_acc`
--

CREATE TABLE IF NOT EXISTS `user_acc` (
  `c_name` text NOT NULL,
  `c_num` varchar(20) NOT NULL,
  `expiry` text NOT NULL,
  `cvv` int(11) NOT NULL,
  `acc_balance` float NOT NULL,
  PRIMARY KEY (`c_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_acc`
--

INSERT INTO `user_acc` (`c_name`, `c_num`, `expiry`, `cvv`, `acc_balance`) VALUES
('anoop', '4545 4545 4545 4545', '03/0000', 4545, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE IF NOT EXISTS `user_reg` (
  `usname` text NOT NULL,
  `us_id` int(11) NOT NULL,
  `pass` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `repass` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `phno` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` text NOT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`usname`, `us_id`, `pass`, `repass`, `phno`, `status`, `type`) VALUES
('subin sha i', 43, 'annachi', 'annachi', '2147483647', 1, 'user'),
('arun', 150, 'arun', 'arun', '7034448553', 1, 'user'),
('pachu', 100, 'pachu', 'pachu', '7657657756', 1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_transaction`
--

CREATE TABLE IF NOT EXISTS `user_transaction` (
  `us_id` text NOT NULL,
  `order_id` text NOT NULL,
  `acc_no` text NOT NULL,
  `advance` float NOT NULL,
  `balance` float NOT NULL,
  `date` date NOT NULL,
  `status_p` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_transaction`
--

INSERT INTO `user_transaction` (`us_id`, `order_id`, `acc_no`, `advance`, `balance`, `date`, `status_p`) VALUES
('43', '500', '1234567890', 50, 50, '2020-05-12', 0),
('43', '500', '1234567890', 50, 0, '2020-05-12', 1),
('43', '501', '4545 4545 4545 4545 ', 500, 0, '2020-06-27', 1),
('43', '501', '4545 4545 4545 4545 ', 500, 500, '2020-06-27', 0);
