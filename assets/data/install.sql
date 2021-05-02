-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_crypto_mlm.deposit
DROP TABLE IF EXISTS `deposit`;
CREATE TABLE IF NOT EXISTS `deposit` (
  `deposit_id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `deposit_method` varchar(255) DEFAULT NULL,
  `deposit_wallet_id` mediumtext,
  `deposit_date` timestamp NULL DEFAULT NULL,
  `deposit_ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`deposit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Customer deposit information will store into this table.';

-- Dumping data for table db_crypto_mlm.deposit: ~0 rows (approximately)
DELETE FROM `deposit`;
/*!40000 ALTER TABLE `deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposit` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.earnings
DROP TABLE IF EXISTS `earnings`;
CREATE TABLE IF NOT EXISTS `earnings` (
  `earning_id` int(11) NOT NULL,
  `earning_type` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `comments` mediumtext,
  PRIMARY KEY (`earning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Weekly ROI, Monthly ROI, team bonous, direct referal bonous';

-- Dumping data for table db_crypto_mlm.earnings: ~0 rows (approximately)
DELETE FROM `earnings`;
/*!40000 ALTER TABLE `earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `earnings` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.investment
DROP TABLE IF EXISTS `investment`;
CREATE TABLE IF NOT EXISTS `investment` (
  `idinvestment` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `sponsor_id` varchar(255) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`idinvestment`),
  UNIQUE KEY `idinvestment_UNIQUE` (`idinvestment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All investment and primary investor and referrar information will be stored here.';

-- Dumping data for table db_crypto_mlm.investment: ~0 rows (approximately)
DELETE FROM `investment`;
/*!40000 ALTER TABLE `investment` DISABLE KEYS */;
/*!40000 ALTER TABLE `investment` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.language
DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` text NOT NULL,
  `english` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- Dumping data for table db_crypto_mlm.language: ~78 rows (approximately)
DELETE FROM `language`;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES
	(1, 'email', 'Email Address'),
	(2, 'password', 'Password'),
	(3, 'login', 'Log In'),
	(4, 'incorrect_email_password', 'Incorrect Email/Password!'),
	(5, 'user_role', 'User Role'),
	(6, 'please_login', 'Please Log In'),
	(7, 'setting', 'Setting'),
	(8, 'profile', 'Profile'),
	(9, 'logout', 'Log Out'),
	(10, 'please_try_again', 'Please Try Again'),
	(11, 'admin', 'Admin'),
	(12, 'dashboard', 'Dashboard'),
	(13, 'language_setting', 'Language Setting'),
	(14, 'status', 'Status'),
	(15, 'active', 'Active'),
	(16, 'inactive', 'Inactive'),
	(17, 'cancel', 'Cancel'),
	(18, 'save', 'Save'),
	(19, 'serial', 'SL.NO'),
	(20, 'action', 'Action'),
	(21, 'edit', 'Edit '),
	(22, 'delete', 'Delete'),
	(23, 'save_successfully', 'Save Successfully!'),
	(24, 'update_successfully', 'Update Successfully!'),
	(25, 'delete_successfully', 'Delete successfully!'),
	(26, 'are_you_sure', 'Are You Sure ? '),
	(27, 'ip_address', 'IP Address'),
	(28, 'application_title', 'Application Title'),
	(29, 'favicon', 'Favicon'),
	(30, 'logo', 'Logo'),
	(31, 'footer_text', 'Footer Text'),
	(32, 'language', 'Language'),
	(33, 'website_title', 'Website Title'),
	(34, 'invalid_logo', 'Invalid Logo'),
	(35, 'submit_successfully', 'Submit Successfully!'),
	(36, 'application_setting', 'Application Setting'),
	(37, 'invalid_favicon', 'Invalid Favicon'),
	(38, 'submit', 'Submit'),
	(39, 'site_align', 'Website Align'),
	(40, 'right_to_left', 'Right to Left'),
	(41, 'left_to_right', 'Left to Right'),
	(42, 'subject', 'Subject'),
	(43, 'receiver_name', 'Send To'),
	(44, 'select_user', 'Select User'),
	(45, 'message_sent', 'Messages Sent'),
	(46, 'mail', 'Mail'),
	(47, 'send_mail', 'Send Mail'),
	(48, 'mail_setting', 'Mail Setting'),
	(49, 'protocol', 'Protocol'),
	(50, 'mailpath', 'Mail Path'),
	(51, 'mailtype', 'Mail Type'),
	(52, 'validate_email', 'Validate Email Address'),
	(53, 'true', 'True'),
	(54, 'false', 'False'),
	(55, 'attach_file', 'Attach File'),
	(56, 'wordwrap', 'Enable Word Wrap'),
	(57, 'send', 'Send'),
	(58, 'app_setting', 'App Setting'),
	(59, 'sms', 'SMS'),
	(60, 'gateway_setting', 'Gateway Setting'),
	(61, 'time_zone', 'Time Zone'),
	(62, 'provider', 'Provider'),
	(63, 'sms_template', 'SMS Template'),
	(64, 'template_name', 'Template Name'),
	(65, 'sms_schedule', 'SMS Schedule'),
	(66, 'schedule_name', 'Schedule Name'),
	(67, 'time', 'Time'),
	(68, 'already_exists', 'Already Exists'),
	(69, 'send_custom_sms', 'Send Custom SMS'),
	(70, 'sms_sent', 'SMS Sent!'),
	(71, 'custom_sms_list', 'Custom SMS List'),
	(72, 'reciver', 'Reciver'),
	(73, 'auto_sms_report', 'Auto SMS Report'),
	(74, 'user_sms_list', 'User SMS List'),
	(75, 'send_sms', 'Send SMS'),
	(76, 'new_sms', 'New SMS'),
	(77, 'update', 'Update'),
	(78, 'reset', 'Reset'),
	(79, 'messages', 'Messages'),
	(80, 'inbox', 'Inbox'),
	(81, 'sent', 'Sent'),
	(82, 'captcha', 'Captcha'),
	(83, 'welcome_back', 'Welcome back '),
	(84, 'inbox_message', 'Inbox Message'),
	(85, 'image_upload_successfully', 'Image Upload Successfully.'),
	(87, 'users', 'Users'),
	(88, 'add_user', 'Add User'),
	(89, 'user_list', 'User List'),
	(90, 'firstname', 'First Name'),
	(91, 'lastname', 'Last Name'),
	(92, 'about', 'About'),
	(93, 'preview', 'Preview'),
	(94, 'last_login', 'Last Login'),
	(95, 'last_logout', 'Last Logout'),
	(96, 'image', 'Image'),
	(97, 'fullname', 'Full Name'),
	(98, 'new_message', 'New Message'),
	(99, 'message', 'Message'),
	(100, 'sender_name', 'Sender Name'),
	(101, 'sl_no', 'SL No.'),
	(103, 'message_details', 'Message Details'),
	(104, 'date', 'Date'),
	(105, 'select_option', 'Select Option'),
	(106, 'edit_profile', 'Edit Profile'),
	(107, 'edit_user', 'Edit User'),
	(108, 'sent_message', 'Sent Message');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.notifications
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `notification_type` varchar(45) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` mediumtext,
  `status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='SMS and Email notified data will be stored in this table.';

-- Dumping data for table db_crypto_mlm.notifications: ~0 rows (approximately)
DELETE FROM `notifications`;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.package
DROP TABLE IF EXISTS `package`;
CREATE TABLE IF NOT EXISTS `package` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `package_deatils` mediumtext,
  `package_amount` float NOT NULL,
  `weekly_roi` float NOT NULL,
  `monthly_roi` float NOT NULL,
  `yearly_roi` float NOT NULL,
  `daily_roi` float DEFAULT NULL,
  `total_percent` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All investment packages will be stored here.';

-- Dumping data for table db_crypto_mlm.package: ~0 rows (approximately)
DELETE FROM `package`;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
/*!40000 ALTER TABLE `package` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.security_questions
DROP TABLE IF EXISTS `security_questions`;
CREATE TABLE IF NOT EXISTS `security_questions` (
  `security_id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `question1` mediumtext,
  `answer1` mediumtext,
  `question2` mediumtext,
  `answer2` mediumtext,
  `question3` mediumtext,
  `answer3` mediumtext,
  PRIMARY KEY (`security_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All security question answer will be stored into this table with md5 format.';

-- Dumping data for table db_crypto_mlm.security_questions: ~0 rows (approximately)
DELETE FROM `security_questions`;
/*!40000 ALTER TABLE `security_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_questions` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.setting
DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_crypto_mlm.setting: ~0 rows (approximately)
DELETE FROM `setting`;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`setting_id`, `title`, `description`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`, `time_zone`) VALUES
	(2, 'Demo Hospital Limited', '98 Green Road, Farmgate, Dhaka-1215', 'bdtask@gmail.com', '1922296392', 'assets/images/uploads/42e572ff9034e50aba23389d214075cc.png', 'assets/images/uploads/8ca3b2cbda868dc013ab1feb2df494a7.png', 'english', 'LTR', '2017©Copyright', 'Asia/Dhaka');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.setup_commission
DROP TABLE IF EXISTS `setup_commission`;
CREATE TABLE IF NOT EXISTS `setup_commission` (
  `level_id` int(3) NOT NULL,
  `level_name` varchar(255) NOT NULL,
  `persoanl_invest` float NOT NULL,
  `total_invest` float NOT NULL,
  `team_bonous` float NOT NULL,
  `referral_bonous` float NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_crypto_mlm.setup_commission: ~0 rows (approximately)
DELETE FROM `setup_commission`;
/*!40000 ALTER TABLE `setup_commission` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_commission` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.transections
DROP TABLE IF EXISTS `transections`;
CREATE TABLE IF NOT EXISTS `transections` (
  `transection_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `transection_category` varchar(255) DEFAULT NULL,
  `releted_id` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `transection_date_timestamp` timestamp NULL DEFAULT NULL,
  `comments` tinytext,
  PRIMARY KEY (`transection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='earnings,wthdraw,transfer and investment data all togther will be kept here.';

-- Dumping data for table db_crypto_mlm.transections: ~0 rows (approximately)
DELETE FROM `transections`;
/*!40000 ALTER TABLE `transections` DISABLE KEYS */;
/*!40000 ALTER TABLE `transections` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.transfer
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE IF NOT EXISTS `transfer` (
  `transfer_id` int(11) NOT NULL,
  `sender_user_id` varchar(255) DEFAULT NULL,
  `receiver_user_id` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `request_ip` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comments` mediumtext,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='client to client transfer success, request data recorded.';

-- Dumping data for table db_crypto_mlm.transfer: ~0 rows (approximately)
DELETE FROM `transfer`;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table db_crypto_mlm.user: ~3 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES
	(1, 'Jack', 'Austin', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'admin@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/images/uploads/29b712feb9878d2b5515ff03d81e135f.png', '2017-12-20 12:49:09', '2017-12-20 12:49:04', '::1', 1, 1),
	(3, 'Janie ', 'Doe', 'Test', 'janie@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', NULL, NULL, NULL, 1, 0),
	(8, 'Wlliam', 'Smith', 'RWR', 'smith@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/images/uploads/5cc3803606e1b58af0ac299b575331ff.png', NULL, NULL, NULL, 1, 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.user_level
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE IF NOT EXISTS `user_level` (
  `user_level_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL,
  `achive_date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_crypto_mlm.user_level: ~0 rows (approximately)
DELETE FROM `user_level`;
/*!40000 ALTER TABLE `user_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_level` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.user_registration
DROP TABLE IF EXISTS `user_registration`;
CREATE TABLE IF NOT EXISTS `user_registration` (
  `uid` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `sponsor_id` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_reset_tocken` mediumtext,
  `reg_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All user information will be stored into this table.';

-- Dumping data for table db_crypto_mlm.user_registration: ~0 rows (approximately)
DELETE FROM `user_registration`;
/*!40000 ALTER TABLE `user_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_registration` ENABLE KEYS */;

-- Dumping structure for table db_crypto_mlm.withdraw
DROP TABLE IF EXISTS `withdraw`;
CREATE TABLE IF NOT EXISTS `withdraw` (
  `withdraw_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` float DEFAULT NULL,
  `success_date` date DEFAULT NULL,
  `cancel_date` date DEFAULT NULL,
  `request_ip` varchar(45) DEFAULT NULL,
  `comments` mediumtext,
  PRIMARY KEY (`withdraw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='withdraw request and execution information keeps into this table.';

-- Dumping data for table db_crypto_mlm.withdraw: ~0 rows (approximately)
DELETE FROM `withdraw`;
/*!40000 ALTER TABLE `withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
