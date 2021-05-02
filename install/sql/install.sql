-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2019 at 02:31 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icowallet_blank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `script` text,
  `url` varchar(255) DEFAULT NULL,
  `serial_position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES
(1, 'coinmarket-top', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 1, 1, '2019-01-15 01:40:54'),
(2, 'coinmarket-bottom', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 2, 1, '2019-01-15 01:40:54'),
(3, 'exchange-top', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 1, 1, '2019-01-15 01:40:54'),
(4, 'exchange-bottom', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 2, 1, '2019-01-15 01:40:54'),
(5, 'news-sidebar-top', 7, 'upload/advertisement/dff78ee612b37fc12c9e7fa94839d855.jpg', NULL, 'https://www.bdtask.com/', 6, 1, '2019-01-15 01:56:21'),
(6, 'news-sidebar-bottom', 7, 'upload/advertisement/7fabc49dd69e0a0d6e111f3fcae0118a.jpg', NULL, 'https://www.bdtask.com/', 7, 1, '2019-01-15 01:59:50'),
(7, 'news-top', 7, 'upload/advertisement/430370437495d1a5eb9031a7505d2d13.png', NULL, 'https://www.bdtask.com/', 8, 1, '2019-01-15 02:04:08'),
(8, 'news-bottom', 7, 'upload/advertisement/544f538275dae3b46b917ab60f68c316.png', NULL, 'https://www.bdtask.com/', 9, 1, '2019-01-15 02:11:04'),
(9, 'news details-top', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 3, 1, '2019-01-15 01:40:54'),
(10, 'news details-bottom', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 4, 1, '2019-01-15 01:40:54'),
(11, 'news details-sidebar-top', 7, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 1, 1, '2019-01-15 01:55:36'),
(12, 'news details-sidebar-bottom', 7, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 2, 1, '2019-01-15 01:40:54'),
(13, 'Price-bottom', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 5, 1, '2019-01-15 01:40:54'),
(14, 'Price-top', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 3, 1, '2019-01-15 01:40:54'),
(15, 'Price-middle', 7, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 4, 1, '2019-01-15 01:40:54'),
(16, 'Price-sidebar-top', 7, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 1, 1, '2019-01-15 01:40:54'),
(17, 'Price-sidebar-bottom', 7, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 2, 1, '2019-01-15 01:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `coinpayments_payments`
--

CREATE TABLE `coinpayments_payments` (
  `id` int(11) NOT NULL,
  `amount1` double NOT NULL,
  `amount2` double NOT NULL,
  `buyer_name` varchar(100) NOT NULL,
  `currency1` varchar(100) NOT NULL,
  `currency2` varchar(100) NOT NULL,
  `fee` double NOT NULL,
  `ipn_id` text NOT NULL,
  `ipn_mode` varchar(20) NOT NULL,
  `ipn_type` varchar(20) NOT NULL,
  `ipn_version` varchar(20) NOT NULL,
  `merchant` text NOT NULL,
  `received_amount` double NOT NULL,
  `received_confirms` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `status_text` text NOT NULL,
  `txn_id` text NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coin_setup`
--

CREATE TABLE `coin_setup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `pair_with` varchar(10) NOT NULL,
  `wallet` varchar(300) NOT NULL,
  `create_wallet` tinyint(1) NOT NULL DEFAULT '0',
  `white_paper` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coin_setup`
--

INSERT INTO `coin_setup` (`id`, `name`, `symbol`, `pair_with`, `wallet`, `create_wallet`, `white_paper`) VALUES
(1, 'BTK', 'BTK', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT '0.00000000',
  `amountUSD` double(20,8) NOT NULL DEFAULT '0.00000000',
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_affiliation`
--

CREATE TABLE `dbt_affiliation` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `commission` double(19,8) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_affiliation`
--

INSERT INTO `dbt_affiliation` (`id`, `type`, `commission`, `status`) VALUES
(1, 'FIXED', 11.00000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_balance`
--

CREATE TABLE `dbt_balance` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `balance` double(19,8) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_balance_log`
--

CREATE TABLE `dbt_balance_log` (
  `log_id` bigint(22) NOT NULL,
  `balance_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `transaction_amount` double(19,8) NOT NULL,
  `transaction_fees` double(19,8) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_coin_manager`
--

CREATE TABLE `dbt_coin_manager` (
  `id` int(11) NOT NULL,
  `hold_coin` int(11) NOT NULL,
  `pre_sell` int(11) NOT NULL,
  `sell_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_coin_manager`
--

INSERT INTO `dbt_coin_manager` (`id`, `hold_coin`, `pre_sell`, `sell_available`) VALUES
(1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_country`
--

CREATE TABLE `dbt_country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_country`
--

INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', 'ATA', NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', 'IOT', NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', 'CXR', NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', 'CCK', NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_cron`
--

CREATE TABLE `dbt_cron` (
  `id` int(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `command` varchar(255) NOT NULL,
  `interval_sec` int(10) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `next_run_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_crypto_transaction`
--

CREATE TABLE `dbt_crypto_transaction` (
  `id` bigint(22) NOT NULL,
  `wallet` varchar(300) NOT NULL,
  `data` longtext NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_currency`
--

CREATE TABLE `dbt_currency` (
  `id` int(11) NOT NULL,
  `icon` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) NOT NULL,
  `rate` double DEFAULT NULL,
  `algorithm` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `rank` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbt_currency`
--

INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES
(1, '42', '42', '42', 1, 'Scrypt', 2000, 34, 1),
(2, '300', '300', '300', 1, 'N/A', 2000, 2212, 1),
(3, '365', '365', '365', 1, 'X11', 2000, 916, 1),
(4, '404', '404', '404', 1, 'Scrypt', 2000, 602, 1),
(5, '611', '611', '611', 1, 'SHA256', 2000, 586, 1),
(6, '808', '808', '808', 1, 'SHA256', 2000, 750, 1),
(7, '888', '888', '888', 1, 'N/A', 2000, 811, 1),
(8, '1337', '1337', '1337', 1, 'X13', 2000, 577, 1),
(9, '2015', '2015', '2015', 1, 'X11', 2000, 33, 1),
(10, 'ETH', 'ETH', 'ETH', 1, '', 2000, 2, 1),
(11, 'XMR', 'XMR', 'XMR', 1, '', 2000, 5, 1),
(12, 'NXT', 'NXT', 'NXT', 1, 'PoS', 2000, 6, 1),
(13, 'ETC', 'ETC', 'ETC', 1, '', 2000, 7, 1),
(14, 'DOGE', 'DOGE', 'DOGE', 1, '', 5, 8, 1),
(15, 'ZEC', 'ZEC', 'ZEC', 1, '', 2000, 9, 1),
(16, 'BTS', 'BTS', 'BTS', 1, 'SHA-512', 2000, 10, 1),
(17, 'DGB', 'DGB', 'DGB', 1, '', 2000, 11, 1),
(18, 'BTCD', 'BTCD', 'BTCD', 1, '', 2000, 13, 1),
(19, 'PPC', 'PPC', 'PPC', 1, '', 11, 14, 1),
(20, 'CRAIG', 'CRAIG', 'CRAIG', 1, 'X11', 2000, 15, 1),
(21, 'XBS', 'XBS', 'XBS', 1, 'X11', 2000, 16, 1),
(22, 'XPY', 'XPY', 'XPY', 1, 'SHA256', 2000, 17, 1),
(23, 'PRC', 'PRC', 'PRC', 1, 'Scrypt', 2000, 18, 1),
(24, 'YBC', 'YBC', 'YBC', 1, 'Multiple', 2000, 19, 1),
(25, 'DANK', 'DANK', 'DANK', 1, 'X13', 2000, 20, 1),
(26, 'GIVE', 'GIVE', 'GIVE', 1, 'X11', 2000, 21, 1),
(27, 'KOBO', 'KOBO', 'KOBO', 1, 'X15', 2000, 22, 1),
(28, 'DT', 'DT', 'DT', 1, 'NIST5', 2000, 23, 1),
(29, 'CETI', 'CETI', 'CETI', 1, 'Scrypt', 2000, 24, 1),
(30, 'SUP', 'SUP', 'SUP', 1, 'N/A', 2000, 25, 1),
(31, 'XPD', 'XPD', 'XPD', 1, 'SHA256D', 2000, 26, 1),
(32, 'GEO', 'GEO', 'GEO', 1, 'Scrypt', 2000, 27, 1),
(33, 'CHASH', 'CHASH', 'CHASH', 1, 'N/A', 2000, 28, 1),
(34, 'SPR', 'SPR', 'SPR', 1, 'X11', 2000, 29, 1),
(35, 'NXTI', 'NXTI', 'NXTI', 1, 'N/A', 2000, 30, 1),
(36, 'WOLF', 'WOLF', 'WOLF', 1, 'X11', 2000, 31, 1),
(37, 'XDP', 'XDP', 'XDP', 1, 'N/A', 2000, 32, 1),
(38, 'AC', 'AC', 'AC', 1, 'Scrypt', 2000, 35, 1),
(39, 'ACOIN', 'ACOIN', 'ACOIN', 1, 'SHA256', 2000, 36, 1),
(40, 'AERO', 'AERO', 'AERO', 1, 'X13', 2000, 37, 1),
(41, 'ALF', 'ALF', 'ALF', 1, 'Scrypt', 2000, 38, 1),
(42, 'AGS', 'AGS', 'AGS', 1, 'X13', 2000, 39, 1),
(43, 'AMC', 'AMC', 'AMC', 1, 'Scrypt', 2000, 40, 1),
(44, 'ALN', 'ALN', 'ALN', 1, 'Scrypt', 2000, 41, 1),
(45, 'APEX', 'APEX', 'APEX', 1, 'X13', 2000, 43, 1),
(46, 'ARCH', 'ARCH', 'ARCH', 1, 'Scrypt', 2000, 44, 1),
(47, 'ARG', 'ARG', 'ARG', 1, 'Scrypt', 2000, 45, 1),
(48, 'ARI', 'ARI', 'ARI', 1, 'Scrypt', 2000, 46, 1),
(49, 'AUR', 'AUR', 'AUR', 1, 'Scrypt', 2000, 47, 1),
(50, 'AXR', 'AXR', 'AXR', 1, 'N/A', 2000, 48, 1),
(51, 'BCX', 'BCX', 'BCX', 1, 'SHA256', 2000, 49, 1),
(52, 'BEN', 'BEN', 'BEN', 1, 'SHA256', 2000, 50, 1),
(53, 'BET', 'BET', 'BET', 1, 'SHA256', 2000, 51, 1),
(54, 'BITB', 'BITB', 'BITB', 1, 'SHA256', 2000, 52, 1),
(55, 'BLU', 'BLU', 'BLU', 1, 'X11', 2000, 53, 1),
(56, 'BLK', 'BLK', 'BLK', 1, 'Scrypt', 2000, 54, 1),
(57, 'BOST', 'BOST', 'BOST', 1, 'X13', 2000, 56, 1),
(58, 'BQC', 'BQC', 'BQC', 1, 'Scrypt', 2000, 57, 1),
(59, 'XMY', 'XMY', 'XMY', 1, 'Multiple', 2000, 58, 1),
(60, 'MOON', 'MOON', 'MOON', 1, 'Scrypt', 2000, 59, 1),
(61, 'ZET', 'ZET', 'ZET', 1, 'SHA256', 2000, 60, 1),
(62, 'QTL', 'QTL', 'QTL', 1, 'Scrypt', 2000, 62, 1),
(63, 'ENRG', 'ENRG', 'ENRG', 1, 'Scrypt', 2000, 63, 1),
(64, 'QRK', 'QRK', 'QRK', 1, 'Multiple', 2000, 64, 1),
(65, 'RIC', 'RIC', 'RIC', 1, 'Groestl', 2000, 65, 1),
(66, 'DGC', 'DGC', 'DGC', 1, 'Scrypt', 2000, 66, 1),
(67, 'LIMX', 'LIMX', 'LIMX', 1, 'X11', 2000, 67, 1),
(68, 'BTB', 'BTB', 'BTB', 1, 'Scrypt', 2000, 69, 1),
(69, 'CAIX', 'CAIx', 'CAIX', 1, 'Scrypt', 2000, 70, 1),
(70, 'BTE', 'BTE', 'BTE', 1, 'SHA256', 2000, 71, 1),
(71, 'BTG*', 'BTG*', 'BTG*', 1, 'Scrypt', 2000, 72, 1),
(72, 'BTM', 'BTM', 'BTM', 1, 'Scrypt', 2000, 73, 1),
(73, 'BUK', 'BUK', 'BUK', 1, 'Scrypt', 2000, 74, 1),
(74, 'CACH', 'CACH', 'CACH', 1, 'Scrypt', 2000, 75, 1),
(75, 'CANN', 'CANN', 'CANN', 1, 'X11', 2000, 76, 1),
(76, 'CAP', 'CAP', 'CAP', 1, 'Scrypt', 2000, 77, 1),
(77, 'CASH', 'CASH', 'CASH', 1, 'Scrypt', 2000, 78, 1),
(78, 'CAT1', 'CAT1', 'CAT1', 1, 'Scrypt', 2000, 79, 1),
(79, 'CBX', 'CBX', 'CBX', 1, 'Scrypt', 2000, 80, 1),
(80, 'CCN', 'CCN', 'CCN', 1, 'Scrypt', 2000, 81, 1),
(81, 'CIN', 'CIN', 'CIN', 1, 'Multiple', 2000, 82, 1),
(82, 'CINNI', 'CINNI', 'CINNI', 1, 'Scrypt', 2000, 83, 1),
(83, 'CXC', 'CXC', 'CXC', 1, 'N/A', 2000, 84, 1),
(84, 'CLAM', 'CLAM', 'CLAM', 1, 'N/A', 2000, 85, 1),
(85, 'CLOAK', 'CLOAK', 'CLOAK', 1, 'X13', 2000, 86, 1),
(86, 'CLR', 'CLR', 'CLR', 1, 'SHA256', 2000, 87, 1),
(87, 'CMC', 'CMC', 'CMC', 1, 'Scrypt', 2000, 88, 1),
(88, 'CNC', 'CNC', 'CNC', 1, 'Scrypt', 2000, 89, 1),
(89, 'CNL', 'CNL', 'CNL', 1, 'X11', 2000, 90, 1),
(90, 'COMM', 'COMM', 'COMM', 1, 'Scrypt', 2000, 91, 1),
(91, 'COOL', 'COOL', 'COOL', 1, 'Scrypt', 2000, 92, 1),
(92, 'CRACK', 'CRACK', 'CRACK', 1, 'X11', 2000, 93, 1),
(93, 'CRC*', 'CRC*', 'CRC*', 1, 'Scrypt', 2000, 94, 1),
(94, 'CRYPT', 'CRYPT', 'CRYPT', 1, 'X11', 2000, 95, 1),
(95, 'DEM', 'DEM', 'DEM', 1, 'SHA256', 2000, 97, 1),
(96, 'DMD', 'DMD', 'DMD', 1, 'Groestl', 2000, 98, 1),
(97, 'DRKC', 'DRKC', 'DRKC', 1, 'X11', 2000, 100, 1),
(98, 'DSB', 'DSB', 'DSB', 1, 'Scrypt', 2000, 101, 1),
(99, 'DVC', 'DVC', 'DVC', 1, 'SHA256', 2000, 102, 1),
(100, 'EAC', 'EAC', 'EAC', 1, 'Scrypt', 2000, 103, 1),
(101, 'EFL', 'EFL', 'EFL', 1, 'Scrypt', 2000, 104, 1),
(102, 'ELC', 'ELC', 'ELC', 1, 'Scrypt', 2000, 105, 1),
(103, 'EMC2', 'EMC2', 'EMC2', 1, 'Scrypt', 2000, 106, 1),
(104, 'EMD', 'EMD', 'EMD', 1, 'Scrypt', 2000, 107, 1),
(105, 'EXCL', 'EXCL', 'EXCL', 1, 'PoS', 2000, 108, 1),
(106, 'EXE', 'EXE', 'EXE', 1, 'Scrypt', 2000, 109, 1),
(107, 'EZC', 'EZC', 'EZC', 1, 'Scrypt', 2000, 110, 1),
(108, 'FLAP', 'FLAP', 'FLAP', 1, 'Scrypt', 2000, 111, 1),
(109, 'FC2', 'FC2', 'FC2', 1, 'X11', 2000, 112, 1),
(110, 'FFC', 'FFC', 'FFC', 1, 'SHA256', 2000, 113, 1),
(111, 'FIBRE', 'FIBRE', 'FIBRE', 1, 'NIST5', 2000, 114, 1),
(112, 'FRC', 'FRC', 'FRC', 1, 'SHA256', 2000, 115, 1),
(113, 'FLT', 'FLT', 'FLT', 1, 'Scrypt', 2000, 116, 1),
(114, 'FRK', 'FRK', 'FRK', 1, 'Scrypt', 2000, 117, 1),
(115, 'FRAC', 'FRAC', 'FRAC', 1, 'X11', 2000, 118, 1),
(116, 'FST', 'FST', 'FST', 1, 'Scrypt', 2000, 119, 1),
(117, 'FTC', 'FTC', 'FTC', 1, '', 9, 120, 1),
(118, 'GDC', 'GDC', 'GDC', 1, 'Scrypt', 2000, 122, 1),
(119, 'GLC', 'GLC', 'GLC', 1, 'Scrypt', 2000, 123, 1),
(120, 'GLD', 'GLD', 'GLD', 1, 'Scrypt', 2000, 124, 1),
(121, 'GLX', 'GLX', 'GLX', 1, 'Scrypt', 2000, 125, 1),
(122, 'GLYPH', 'GLYPH', 'GLYPH', 1, 'X11', 2000, 126, 1),
(123, 'GML', 'GML', 'GML', 1, 'Scrypt', 2000, 127, 1),
(124, 'GUE', 'GUE', 'GUE', 1, 'X11', 2000, 128, 1),
(125, 'HAL', 'HAL', 'HAL', 1, 'X15', 2000, 129, 1),
(126, 'HBN', 'HBN', 'HBN', 1, 'Scrypt', 2000, 130, 1),
(127, 'HUC', 'HUC', 'HUC', 1, 'Multiple', 2000, 131, 1),
(128, 'HVC', 'HVC', 'HVC', 1, 'Multiple', 2000, 132, 1),
(129, 'HYP', 'HYP', 'HYP', 1, 'X11', 2000, 133, 1),
(130, 'ICB', 'ICB', 'ICB', 1, 'NIST5', 2000, 134, 1),
(131, 'IFC', 'IFC', 'IFC', 1, 'Scrypt', 2000, 135, 1),
(132, 'IOC', 'IOC', 'IOC', 1, 'X11', 2000, 136, 1),
(133, 'IXC', 'IXC', 'IXC', 1, 'SHA256', 2000, 137, 1),
(134, 'JBS', 'JBS', 'JBS', 1, 'X11', 2000, 138, 1),
(135, 'JKC', 'JKC', 'JKC', 1, 'Scrypt', 2000, 139, 1),
(136, 'JUDGE', 'JUDGE', 'JUDGE', 1, 'X13', 2000, 140, 1),
(137, 'KDC', 'KDC', 'KDC', 1, 'Scrypt', 2000, 141, 1),
(138, 'KEY*', 'KEY*', 'KEY*', 1, 'X13', 2000, 142, 1),
(139, 'KGC', 'KGC', 'KGC', 1, 'Scrypt', 2000, 143, 1),
(140, 'LAB*', 'LAB*', 'LAB*', 1, 'Multiple', 2000, 144, 1),
(141, 'LGD*', 'LGD*', 'LGD*', 1, 'Scrypt', 2000, 145, 1),
(142, 'LK7', 'LK7', 'LK7', 1, 'Scrypt', 2000, 146, 1),
(143, 'LKY', 'LKY', 'LKY', 1, 'Scrypt', 2000, 147, 1),
(144, 'LSD', 'LSD', 'LSD', 1, 'NIST5', 2000, 148, 1),
(145, 'LTB', 'LTB', 'LTB', 1, 'Scrypt', 2000, 149, 1),
(146, 'LTCD', 'LTCD', 'LTCD', 1, 'Scrypt', 2000, 150, 1),
(147, 'LTCX', 'LTCX', 'LTCX', 1, 'X11', 2000, 151, 1),
(148, 'LXC', 'LXC', 'LXC', 1, 'X11', 2000, 152, 1),
(149, 'LYC', 'LYC', 'LYC', 1, 'Scrypt', 2000, 153, 1),
(150, 'MAX', 'MAX', 'MAX', 1, 'SHA3', 2000, 154, 1),
(151, 'MEC', 'MEC', 'MEC', 1, 'Scrypt', 2000, 155, 1),
(152, 'MED', 'MED', 'MED', 1, 'HybridScryptHash256', 2000, 156, 1),
(153, 'MIN', 'MIN', 'MIN', 1, 'X11', 2000, 157, 1),
(154, 'MINT', 'MINT', 'MINT', 1, 'Scrypt', 2000, 158, 1),
(155, 'MN', 'MN', 'MN', 1, 'SHA256', 2000, 159, 1),
(156, 'MNC', 'MNC', 'MNC', 1, 'Scrypt', 2000, 160, 1),
(157, 'MRY', 'MRY', 'MRY', 1, 'Scrypt', 2000, 162, 1),
(158, 'MYST*', 'MYST*', 'MYST*', 1, 'X11', 2000, 163, 1),
(159, 'MZC', 'MZC', 'MZC', 1, 'SHA256', 2000, 164, 1),
(160, 'NAN', 'NAN', 'NAN', 1, 'Scrypt', 2000, 165, 1),
(161, 'NAUT', 'NAUT', 'NAUT', 1, 'Scrypt', 2000, 166, 1),
(162, 'NAV', 'NAV', 'NAV', 1, 'X13', 2000, 167, 1),
(163, 'NBL', 'NBL', 'NBL', 1, 'Scrypt', 2000, 168, 1),
(164, 'NEC', 'NEC', 'NEC', 1, 'Scrypt', 2000, 169, 1),
(165, 'NET', 'NET', 'NET', 1, 'Scrypt', 2000, 170, 1),
(166, 'NMB', 'NMB', 'NMB', 1, 'X15', 2000, 171, 1),
(167, 'NRB', 'NRB', 'NRB', 1, 'SHA256', 2000, 172, 1),
(168, 'NOBL', 'NOBL', 'NOBL', 1, 'Scrypt', 2000, 173, 1),
(169, 'NRS', 'NRS', 'NRS', 1, 'Scrypt', 2000, 174, 1),
(170, 'NVC', 'NVC', 'NVC', 1, 'Scrypt', 2000, 175, 1),
(171, 'NMC', 'NMC', 'NMC', 1, 'SHA256', 2000, 176, 1),
(172, 'NYAN', 'NYAN', 'NYAN', 1, 'Scrypt', 2000, 177, 1),
(173, 'OPAL', 'OPAL', 'OPAL', 1, 'X13', 2000, 178, 1),
(174, 'ORB', 'ORB', 'ORB', 1, 'NeoScrypt', 2000, 179, 1),
(175, 'OSC', 'OSC', 'OSC', 1, 'SHA256', 2000, 180, 1),
(176, 'PHS', 'PHS', 'PHS', 1, 'Scrypt', 2000, 181, 1),
(177, 'POINTS', 'POINTS', 'POINTS', 1, 'N/A', 2000, 182, 1),
(178, 'POT', 'POT', 'POT', 1, '', 8, 183, 1),
(179, 'PSEUD', 'PSEUD', 'PSEUD', 1, 'X13', 2000, 184, 1),
(180, 'PTS*', 'PTS*', 'PTS*', 1, 'SHA256', 2000, 185, 1),
(181, 'PXC', 'PXC', 'PXC', 1, 'Scrypt', 2000, 186, 1),
(182, 'PYC', 'PYC', 'PYC', 1, 'Scrypt', 2000, 187, 1),
(183, 'RDD', 'RDD', 'RDD', 1, '', 7, 188, 1),
(184, 'RIPO', 'RIPO', 'RIPO', 1, 'Scrypt', 2000, 189, 1),
(185, 'RPC', 'RPC', 'RPC', 1, 'Scrypt', 2000, 190, 1),
(186, 'RT2', 'RT2', 'RT2', 1, 'Scrypt-n', 2000, 191, 1),
(187, 'RYC', 'RYC', 'RYC', 1, 'Scrypt', 2000, 192, 1),
(188, 'RZR', 'RZR', 'RZR', 1, 'Scrypt', 2000, 193, 1),
(189, 'SAT2', 'SAT2', 'SAT2', 1, 'Scrypt', 2000, 194, 1),
(190, 'SBC', 'SBC', 'SBC', 1, 'Scrypt', 2000, 195, 1),
(191, 'SDC', 'SDC', 'SDC', 1, 'Scrypt', 2000, 196, 1),
(192, 'SFR', 'SFR', 'SFR', 1, 'Multiple', 2000, 197, 1),
(193, 'SHADE', 'SHADE', 'SHADE', 1, 'Scrypt', 2000, 198, 1),
(194, 'SHLD', 'SHLD', 'SHLD', 1, 'X15', 2000, 199, 1),
(195, 'SILK', 'SILK', 'SILK', 1, 'Scrypt', 2000, 200, 1),
(196, 'SLG', 'SLG', 'SLG', 1, 'X13', 2000, 201, 1),
(197, 'SMC', 'SMC', 'SMC', 1, 'Scrypt', 2000, 202, 1),
(198, 'SOLE', 'SOLE', 'SOLE', 1, 'X15', 2000, 203, 1),
(199, 'SPT', 'SPT', 'SPT', 1, 'Scrypt', 2000, 205, 1),
(200, 'SRC', 'SRC', 'SRC', 1, 'Scrypt', 2000, 206, 1),
(201, 'SSV', 'SSV', 'SSV', 1, 'X13', 2000, 207, 1),
(202, 'XLM', 'XLM', 'XLM', 1, '', 2000, 208, 1),
(203, 'SUPER', 'SUPER', 'SUPER', 1, 'X11', 2000, 209, 1),
(204, 'SWIFT', 'SWIFT', 'SWIFT', 1, 'Scrypt', 2000, 210, 1),
(205, 'SYNC', 'SYNC', 'SYNC', 1, 'X11', 2000, 211, 1),
(206, 'SYS', 'SYS', 'SYS', 1, 'Scrypt', 2000, 212, 1),
(207, 'TAG', 'TAG', 'TAG', 1, 'Scrypt', 2000, 213, 1),
(208, 'TAK', 'TAK', 'TAK', 1, 'SHA256', 2000, 214, 1),
(209, 'TGC', 'TGC', 'TGC', 1, 'SHA256', 2000, 216, 1),
(210, 'TIT', 'TIT', 'TIT', 1, 'SHA256', 2000, 217, 1),
(211, 'TOR', 'TOR', 'TOR', 1, 'X11', 2000, 218, 1),
(212, 'TRC', 'TRC', 'TRC', 1, 'SHA256', 2000, 219, 1),
(213, 'TTC', 'TTC', 'TTC', 1, 'Scrypt', 2000, 220, 1),
(214, 'ULTC', 'ULTC', 'ULTC', 1, 'SHA256', 2000, 221, 1),
(215, 'UNB', 'UNB', 'UNB', 1, 'SHA256', 2000, 222, 1),
(216, 'UNO', 'UNO', 'UNO', 1, 'SHA256', 2000, 223, 1),
(217, 'URO', 'URO', 'URO', 1, 'X11', 2000, 224, 1),
(218, 'USDE', 'USDE', 'USDE', 1, 'Scrypt', 2000, 225, 1),
(219, 'UTC', 'UTC', 'UTC', 1, 'Scrypt', 2000, 226, 1),
(220, 'UTIL', 'UTIL', 'UTIL', 1, 'X13', 2000, 227, 1),
(221, 'VDO', 'VDO', 'VDO', 1, 'X11', 2000, 228, 1),
(222, 'VIA', 'VIA', 'VIA', 1, 'Scrypt', 2000, 229, 1),
(223, 'VOOT', 'VOOT', 'VOOT', 1, 'X11', 2000, 230, 1),
(224, 'VRC', 'VRC', 'VRC', 1, 'Scrypt', 2000, 231, 1),
(225, 'VTC', 'VTC', 'VTC', 1, '', 10, 232, 1),
(226, 'WC', 'WC', 'WC', 1, 'Scrypt', 2000, 233, 1),
(227, 'WDC', 'WDC', 'WDC', 1, 'Scrypt', 2000, 234, 1),
(228, 'XAI', 'XAI', 'XAI', 1, 'X11', 2000, 235, 1),
(229, 'XBOT', 'XBOT', 'XBOT', 1, 'Scrypt', 2000, 236, 1),
(230, 'XC', 'XC', 'XC', 1, 'X11', 2000, 237, 1),
(231, 'XCASH', 'XCASH', 'XCASH', 1, 'Scrypt', 2000, 238, 1),
(232, 'XCR', 'XCR', 'XCR', 1, 'Multiple', 2000, 239, 1),
(233, 'XJO', 'XJO', 'XJO', 1, 'SHA256', 2000, 240, 1),
(234, 'XLB', 'XLB', 'XLB', 1, 'X11', 2000, 241, 1),
(235, 'XPM', 'XPM', 'XPM', 1, 'Multiple', 2000, 242, 1),
(236, 'XST', 'XST', 'XST', 1, 'X13', 2000, 243, 1),
(237, 'XXX', 'XXX', 'XXX', 1, 'Scrypt', 2000, 244, 1),
(238, 'YAC', 'YAC', 'YAC', 1, 'Scrypt', 2000, 245, 1),
(239, 'ZCC', 'ZCC', 'ZCC', 1, 'Scrypt', 2000, 246, 1),
(240, 'ZED', 'ZED', 'ZED', 1, 'Scrypt', 2000, 247, 1),
(241, 'ZRC*', 'ZRC*', 'ZRC*', 1, 'X11', 2000, 248, 1),
(242, 'BCN', 'BCN', 'BCN', 1, 'CryptoNight', 2000, 249, 1),
(243, 'EKN', 'EKN', 'EKN', 1, 'X13', 2000, 250, 1),
(244, 'XDN', 'XDN', 'XDN', 1, 'CryptoNight', 2000, 251, 1),
(245, 'XAU', 'XAU', 'XAU', 1, 'SHA256', 2000, 252, 1),
(246, 'TMC', 'TMC', 'TMC', 1, 'N/A', 2000, 253, 1),
(247, 'XEM', 'XEM', 'XEM', 1, '', 2000, 254, 1),
(248, 'BURST', 'BURST', 'BURST', 1, 'Shabal256', 2000, 255, 1),
(249, 'NBT', 'NBT', 'NBT', 1, 'SHA256', 2000, 256, 1),
(250, 'SJCX', 'SJCX', 'SJCX', 1, 'Counterparty', 2000, 257, 1),
(251, 'START', 'START', 'START', 1, 'X11', 2000, 258, 1),
(252, 'HUGE', 'HUGE', 'HUGE', 1, 'Blake', 2000, 259, 1),
(253, 'XCP', 'XCP', 'XCP', 1, 'N/A', 2000, 261, 1),
(254, 'MAID', 'MAID', 'MAID', 1, 'N/A', 2000, 262, 1),
(255, '007', '007', '007', 1, 'Scrypt', 2000, 263, 1),
(256, 'NSR', 'NSR', 'NSR', 1, 'N/A', 2000, 264, 1),
(257, 'MONA', 'MONA', 'MONA', 1, 'Scrypt', 2000, 265, 1),
(258, 'CELL', 'CELL', 'CELL', 1, 'N/A', 2000, 266, 1),
(259, 'TEK', 'TEK', 'TEK', 1, 'SHA256', 2000, 267, 1),
(260, 'TRON', 'TRON', 'TRON', 1, 'SHA256', 2000, 268, 1),
(261, 'BAY', 'BAY', 'BAY', 1, 'N/A', 2000, 269, 1),
(262, 'NTRN', 'NTRN', 'NTRN', 1, 'SHA256', 2000, 270, 1),
(263, 'SLING', 'SLING', 'SLING', 1, 'SHA256', 2000, 271, 1),
(264, 'XVC', 'XVC', 'XVC', 1, 'Whirlpool', 2000, 272, 1),
(265, 'CRAVE', 'CRAVE', 'CRAVE', 1, 'Scrypt', 2000, 273, 1),
(266, 'BLOCK', 'BLOCK', 'BLOCK', 1, 'N/A', 2000, 274, 1),
(267, 'XSI', 'XSI', 'XSI', 1, 'Scrypt', 2000, 275, 1),
(268, 'GHS', 'GHS', 'GHS', 1, 'N/A', 2000, 276, 1),
(269, 'BYC', 'BYC', 'BYC', 1, 'N/A', 2000, 277, 1),
(270, 'GRC', 'GRC', 'GRC', 1, 'Scrypt', 2000, 278, 1),
(271, 'GEMZ', 'GEMZ', 'GEMZ', 1, 'N/A', 2000, 279, 1),
(272, 'KTK', 'KTK', 'KTK', 1, 'Scrypt', 2000, 280, 1),
(273, 'HZ', 'HZ', 'HZ', 1, 'N/A', 2000, 281, 1),
(274, 'FAIR', 'FAIR', 'FAIR', 1, 'Groestl', 2000, 282, 1),
(275, 'QORA', 'QORA', 'QORA', 1, 'N/A', 2000, 283, 1),
(276, 'RBY', 'RBY', 'RBY', 1, 'Scrypt', 2000, 285, 1),
(277, 'KORE', 'KORE', 'KORE', 1, 'X13', 2000, 287, 1),
(278, 'WBB', 'WBB', 'WBB', 1, 'Scrypt', 2000, 288, 1),
(279, 'SSD', 'SSD', 'SSD', 1, 'SHA256', 2000, 289, 1),
(280, 'XTC', 'XTC', 'XTC', 1, 'N/A', 2000, 290, 1),
(281, 'NOTE', 'NOTE', 'NOTE', 1, 'Scrypt', 2000, 291, 1),
(282, 'GRID*', 'GRID*', 'GRID*', 1, 'N/A', 2000, 292, 1),
(283, 'FLO', 'FLO', 'FLO', 1, 'Scrypt', 2000, 293, 1),
(284, 'MMXIV', 'MMXIV', 'MMXIV', 1, 'SHA256', 2000, 294, 1),
(285, '8BIT', '8BIT', '8BIT', 1, 'Scrypt', 2000, 295, 1),
(286, 'STV', 'STV', 'STV', 1, 'X13', 2000, 296, 1),
(287, 'EBS', 'EBS', 'EBS', 1, 'N/A', 2000, 297, 1),
(288, 'AM', 'AM', 'AM', 1, 'X13', 2000, 298, 1),
(289, 'XMG', 'XMG', 'XMG', 1, 'M7M', 2000, 299, 1),
(290, 'AMBER', 'AMBER', 'AMBER', 1, 'X11', 2000, 300, 1),
(291, 'JPC', 'JPC', 'JPC', 1, 'SHA3', 2000, 301, 1),
(292, 'NKT', 'NKT', 'NKT', 1, 'X11', 2000, 302, 1),
(293, 'J', 'J', 'J', 1, 'Multiple', 2000, 303, 1),
(294, 'GHC', 'GHC', 'GHC', 1, 'Scrypt', 2000, 304, 1),
(295, 'DTC*', 'DTC', 'DTC*', 1, 'X13', 2000, 305, 1),
(296, 'ABY', 'ABY', 'ABY', 1, 'Scrypt', 2000, 306, 1),
(297, 'LDOGE', 'LDOGE', 'LDOGE', 1, 'Scrypt', 2000, 307, 1),
(298, 'MTR', 'MTR', 'MTR', 1, 'X11', 2000, 308, 1),
(299, 'TRI', 'TRI', 'TRI', 1, 'X13', 2000, 309, 1),
(300, 'SWARM', 'SWARM', 'SWARM', 1, 'N/A', 2000, 310, 1),
(301, 'BBR', 'BBR', 'BBR', 1, 'X11', 2000, 311, 1),
(302, 'BTCRY', 'BTCRY', 'BTCRY', 1, 'N/A', 2000, 312, 1),
(303, 'BCR', 'BCR', 'BCR', 1, 'Momentum', 2000, 313, 1),
(304, 'XPB', 'XPB', 'XPB', 1, 'CryptoNight', 2000, 314, 1),
(305, 'XDQ', 'XDQ', 'XDQ', 1, 'Blake', 2000, 315, 1),
(306, 'FLDC', 'FLDC', 'FLDC', 1, 'Stanford Folding', 2000, 316, 1),
(307, 'SLR', 'SLR', 'SLR', 1, 'Scrypt', 2000, 317, 1),
(308, 'SMAC', 'SMAC', 'SMAC', 1, 'X11', 2000, 318, 1),
(309, 'TRK', 'TRK', 'TRK', 1, 'X11', 2000, 319, 1),
(310, 'U', 'U', 'U', 1, 'X11', 2000, 320, 1),
(311, 'UIS', 'UIS', 'UIS', 1, 'Multiple', 2000, 321, 1),
(312, 'CYP', 'CYP', 'CYP', 1, 'QuBit', 2000, 322, 1),
(313, 'UFO', 'UFO', 'UFO', 1, 'NeoScrypt', 2000, 323, 1),
(314, 'ASN', 'ASN', 'ASN', 1, 'QuBit', 2000, 324, 1),
(315, 'OC', 'OC', 'OC', 1, 'Scrypt', 2000, 325, 1),
(316, 'GSM', 'GSM', 'GSM', 1, 'X11', 2000, 326, 1),
(317, 'FSC2', 'FSC2', 'FSC2', 1, 'Scrypt', 2000, 327, 1),
(318, 'NXTTY', 'NXTTY', 'NXTTY', 1, 'N/A', 2000, 328, 1),
(319, 'QBK', 'QBK', 'QBK', 1, 'X13', 2000, 329, 1),
(320, 'BLC', 'BLC', 'BLC', 1, 'Blake', 2000, 330, 1),
(321, 'MARYJ', 'MARYJ', 'MARYJ', 1, 'X15', 2000, 331, 1),
(322, 'OMC', 'OMC', 'OMC', 1, 'Scrypt', 2000, 333, 1),
(323, 'GIG', 'GIG', 'GIG', 1, 'X11', 2000, 334, 1),
(324, 'CC', 'CC', 'CC', 1, 'Scrypt', 2000, 335, 1),
(325, 'BITS', 'BITS', 'BITS', 1, 'Scrypt', 2000, 336, 1),
(326, 'LTBC', 'LTBC', 'LTBC', 1, 'N/A', 2000, 337, 1),
(327, 'NEOS', 'NEOS', 'NEOS', 1, 'SHA256', 2000, 338, 1),
(328, 'HYPER', 'HYPER', 'HYPER', 1, 'Scrypt', 2000, 339, 1),
(329, 'VTR', 'VTR', 'VTR', 1, 'Scrypt', 2000, 340, 1),
(330, 'METAL', 'METAL', 'METAL', 1, 'Scrypt', 2000, 341, 1),
(331, 'PINK', 'PINK', 'PINK', 1, 'X11', 2000, 342, 1),
(332, 'GRE', 'GRE', 'GRE', 1, 'Scrypt', 2000, 343, 1),
(333, 'XG', 'XG', 'XG', 1, 'XG Hash', 2000, 344, 1),
(334, 'CHILD', 'CHILD', 'CHILD', 1, 'X11', 2000, 345, 1),
(335, 'BOOM', 'BOOM', 'BOOM', 1, 'X13', 2000, 346, 1),
(336, 'MINE', 'MINE', 'MINE', 1, 'Scrypt', 2000, 347, 1),
(337, 'ROS', 'ROS', 'ROS', 1, 'X11', 2000, 348, 1),
(338, 'UNAT', 'UNAT', 'UNAT', 1, 'SHA256', 2000, 349, 1),
(339, 'SLM', 'SLM', 'SLM', 1, 'N/A', 2000, 350, 1),
(340, 'GAIA', 'GAIA', 'GAIA', 1, 'X11', 2000, 351, 1),
(341, 'TRUST', 'TRUST', 'TRUST', 1, 'X11', 2000, 352, 1),
(342, 'FCN', 'FCN', 'FCN', 1, 'CryptoNight', 2000, 353, 1),
(343, 'XCN', 'XCN', 'XCN', 1, 'M7 POW', 2000, 354, 1),
(344, 'CURE', 'CURE', 'CURE', 1, 'Scrypt', 2000, 355, 1),
(345, 'GMC', 'GMC', 'GMC', 1, 'Scrypt', 2000, 356, 1),
(346, 'MMC', 'MMC', 'MMC', 1, 'Multiple', 2000, 357, 1),
(347, 'XBC', 'XBC', 'XBC', 1, 'Scrypt', 2000, 359, 1),
(348, 'CYC', 'CYC', 'CYC', 1, 'X11', 2000, 360, 1),
(349, 'OCTO', 'OCTO', 'OCTO', 1, 'N/A', 2000, 361, 1),
(350, 'MSC', 'MSC', 'MSC', 1, 'Scrypt', 2000, 362, 1),
(351, 'EGG', 'EGG', 'EGG', 1, 'Scrypt', 2000, 363, 1),
(352, 'C2', 'C2', 'C2', 1, 'Scrypt', 2000, 364, 1),
(353, 'GSX', 'GSX', 'GSX', 1, 'N/A', 2000, 365, 1),
(354, 'CAM', 'CAM', 'CAM', 1, 'X11', 2000, 366, 1),
(355, 'RBR', 'RBR', 'RBR', 1, 'Multiple', 2000, 367, 1),
(356, 'XQN', 'XQN', 'XQN', 1, 'Scrypt', 2000, 368, 1),
(357, 'ICASH', 'ICASH', 'ICASH', 1, 'X11', 2000, 369, 1),
(358, 'NODE', 'NODE', 'NODE', 1, 'Curve25519', 2000, 370, 1),
(359, 'SOON', 'SOON', 'SOON', 1, 'SHA256', 2000, 371, 1),
(360, 'BTMI', 'BTMI', 'BTMI', 1, 'Scrypt', 2000, 372, 1),
(361, 'EVENT', 'EVENT', 'EVENT', 1, 'Scrypt', 2000, 373, 1),
(362, '1CR', '1CR', '1CR', 1, 'Scrypt', 2000, 374, 1),
(363, 'VIOR', 'VIOR', 'VIOR', 1, 'Scrypt', 2000, 375, 1),
(364, 'XCO', 'XCO', 'XCO', 1, 'SHA256', 2000, 376, 1),
(365, 'VMC', 'VMC', 'VMC', 1, 'Scrypt-n', 2000, 377, 1),
(366, 'MRS', 'MRS', 'MRS', 1, 'X11', 2000, 378, 1),
(367, 'VIRAL', 'VIRAL', 'VIRAL', 1, 'Scrypt', 2000, 379, 1),
(368, 'EQM', 'EQM', 'EQM', 1, 'SHA256', 2000, 380, 1),
(369, 'ISL', 'ISL', 'ISL', 1, 'X11', 2000, 381, 1),
(370, 'QSLV', 'QSLV', 'QSLV', 1, 'X11', 2000, 382, 1),
(371, 'XWT', 'XWT', 'XWT', 1, 'X15', 2000, 383, 1),
(372, 'XNA', 'XNA', 'XNA', 1, 'X11', 2000, 384, 1),
(373, 'RDN', 'RDN', 'RDN', 1, 'N/A', 2000, 385, 1),
(374, 'SKB', 'SKB', 'SKB', 1, 'SHA256', 2000, 386, 1),
(375, 'BSTY', 'BSTY', 'BSTY', 1, 'yescript', 2000, 387, 1),
(376, 'FCS', 'FCS', 'FCS', 1, 'X11', 2000, 388, 1),
(377, 'GAM', 'GAM', 'GAM', 1, 'Scrypt', 2000, 389, 1),
(378, 'NXS', 'NXS', 'NXS', 1, 'SHA3', 2000, 390, 1),
(379, 'CESC', 'CESC', 'CESC', 1, 'Scrypt', 2000, 391, 1),
(380, 'TWLV', 'TWLV', 'TWLV', 1, 'T-Inside', 2000, 392, 1),
(381, 'EAGS', 'EAGS', 'EAGS', 1, 'X11', 2000, 393, 1),
(382, 'MWC', 'MWC', 'MWC', 1, 'X11', 2000, 394, 1),
(383, 'ADC', 'ADC', 'ADC', 1, 'Scrypt', 2000, 395, 1),
(384, 'MARS', 'MARS', 'MARS', 1, 'X11', 2000, 396, 1),
(385, 'XMS', 'XMS', 'XMS', 1, 'X11', 2000, 397, 1),
(386, 'SPHR', 'SPHR', 'SPHR', 1, 'Scrypt', 2000, 398, 1),
(387, 'SIGU', 'SIGU', 'SIGU', 1, 'Scrypt', 2000, 399, 1),
(388, 'BTX*', 'BTX*', 'BTX*', 1, 'X11', 2000, 400, 1),
(389, 'DCC', 'DCC', 'DCC', 1, 'SHA256', 2000, 401, 1),
(390, 'M1', 'M1', 'M1', 1, 'X13', 2000, 402, 1),
(391, 'DB', 'DB', 'DB', 1, 'Scrypt', 2000, 403, 1),
(392, 'CTO', 'CTO', 'CTO', 1, 'Lyra2RE', 2000, 404, 1),
(393, 'EDGE', 'EDGE', 'EDGE', 1, 'SHA256', 2000, 405, 1),
(394, 'LUX*', 'LUX*', 'LUX*', 1, 'X11', 2000, 406, 1),
(395, 'FUTC', 'FUTC', 'FUTC', 1, 'X13', 2000, 407, 1),
(396, 'GLOBE', 'GLOBE', 'GLOBE', 1, 'N/A', 2000, 408, 1),
(397, 'TAM', 'TAM', 'TAM', 1, 'Scrypt', 2000, 409, 1),
(398, 'MRP', 'MRP', 'MRP', 1, 'X11', 2000, 410, 1),
(399, 'CREVA', 'CREVA', 'CREVA', 1, 'X11', 2000, 411, 1),
(400, 'XFC', 'XFC', 'XFC', 1, 'X11', 2000, 412, 1),
(401, 'NANAS', 'NANAS', 'NANAS', 1, 'Scrypt', 2000, 413, 1),
(402, 'LOG', 'LOG', 'LOG', 1, 'N/A', 2000, 414, 1),
(403, 'XCE', 'XCE', 'XCE', 1, 'SHA256', 2000, 415, 1),
(404, 'ACP', 'ACP', 'ACP', 1, 'SHA256', 2000, 416, 1),
(405, 'DRZ', 'DRZ', 'DRZ', 1, 'QUAIT', 2000, 417, 1),
(406, 'BUCKS*', 'BUCKS*', 'BUCKS*', 1, 'N/A', 2000, 418, 1),
(407, 'BSC', 'BSC', 'BSC', 1, 'X11', 2000, 419, 1),
(408, 'DRKT', 'DRKT', 'DRKT', 1, 'SHA256', 2000, 420, 1),
(409, 'CIRC', 'CIRC', 'CIRC', 1, 'vDPOS', 2000, 421, 1),
(410, 'NKA', 'NKA', 'NKA', 1, 'SHA256', 2000, 422, 1),
(411, 'VERSA', 'VERSA', 'VERSA', 1, 'N/A', 2000, 423, 1),
(412, 'EPY', 'EPY', 'EPY', 1, 'Scrypt', 2000, 424, 1),
(413, 'SQL', 'SQL', 'SQL', 1, 'X11', 2000, 425, 1),
(414, 'POLY', 'POLY', 'POLY', 1, 'Scrypt', 2000, 426, 1),
(415, 'PIGGY', 'PIGGY', 'PIGGY', 1, 'X11', 2000, 427, 1),
(416, 'CHA', 'CHA', 'CHA', 1, 'Scrypt', 2000, 428, 1),
(417, 'MIL', 'MIL', 'MIL', 1, 'X11', 2000, 429, 1),
(418, 'CRW', 'CRW', 'CRW', 1, 'SHA256', 2000, 430, 1),
(419, 'GEN', 'GEN', 'GEN', 1, 'Scrypt', 2000, 431, 1),
(420, 'XPH', 'XPH', 'XPH', 1, 'N/A', 2000, 432, 1),
(421, 'GRM', 'GRM', 'GRM', 1, 'N/A', 2000, 433, 1),
(422, 'QTZ', 'QTZ', 'QTZ', 1, 'SHA256', 2000, 434, 1),
(423, 'ARB', 'ARB', 'ARB', 1, 'N/A', 2000, 435, 1),
(424, 'LTS', 'LTS', 'LTS', 1, 'N/A', 2000, 436, 1),
(425, 'SPC', 'SPC', 'SPC', 1, 'NIST5', 2000, 437, 1),
(426, 'GP', 'GP', 'GP', 1, 'X11', 2000, 438, 1),
(427, 'BITZ', 'BITZ', 'BITZ', 1, 'N/A', 2000, 439, 1),
(428, 'DUB', 'DUB', 'DUB', 1, 'X15', 2000, 440, 1),
(429, 'GRAV', 'GRAV', 'GRAV', 1, 'SHA256', 2000, 441, 1),
(430, 'BOB', 'BOB', 'BOB', 1, 'Scrypt', 2000, 442, 1),
(431, 'MCN', 'MCN', 'MCN', 1, 'CryptoNight', 2000, 443, 1),
(432, 'QCN', 'QCN', 'QCN', 1, 'CryptoNight', 2000, 444, 1),
(433, 'HEDG', 'HEDG', 'HEDG', 1, 'X13', 2000, 445, 1),
(434, 'SONG', 'SONG', 'SONG', 1, 'Scrypt', 2000, 446, 1),
(435, 'XSEED', 'XSEED', 'XSEED', 1, 'SHA256', 2000, 447, 1),
(436, 'CRE', 'CRE', 'CRE', 1, 'SHA256', 2000, 448, 1),
(437, 'AXIOM', 'AXIOM', 'AXIOM', 1, 'N/A', 2000, 449, 1),
(438, 'SMLY', 'SMLY', 'SMLY', 1, 'Scrypt', 2000, 450, 1),
(439, 'RBT', 'RBT', 'RBT', 1, 'N/A', 2000, 451, 1),
(440, 'CHIP', 'CHIP', 'CHIP', 1, 'X11', 2000, 452, 1),
(441, 'SPEC', 'SPEC', 'SPEC', 1, 'Scrypt', 2000, 453, 1),
(442, 'GRAM', 'GRAM', 'GRAM', 1, 'N/A', 2000, 454, 1),
(443, 'UNC', 'UNC', 'UNC', 1, 'X11', 2000, 455, 1),
(444, 'SPRTS', 'SPRTS', 'SPRTS', 1, 'SHA256', 2000, 456, 1),
(445, 'ZNY', 'ZNY', 'ZNY', 1, 'Scrypt', 2000, 457, 1),
(446, 'BTQ', 'BTQ', 'BTQ', 1, 'Multiple', 2000, 458, 1),
(447, 'PKB', 'PKB', 'PKB', 1, 'SHA256', 2000, 459, 1),
(448, 'STR*', 'STR*', 'STR*', 1, 'Scrypt', 2000, 460, 1),
(449, 'SNRG', 'SNRG', 'SNRG', 1, 'X11', 2000, 461, 1),
(450, 'GHOUL', 'GHOUL', 'GHOUL', 1, 'N/A', 2000, 462, 1),
(451, 'HNC', 'HNC', 'HNC', 1, 'Scrypt', 2000, 463, 1),
(452, 'DIGS', 'DIGS', 'DIGS', 1, 'Scrypt', 2000, 464, 1),
(453, 'EXP', 'EXP', 'EXP', 1, 'Ethash', 2000, 465, 1),
(454, 'GCR', 'GCR', 'GCR', 1, 'N/A', 2000, 466, 1),
(455, 'MAPC', 'MAPC', 'MAPC', 1, 'X11', 2000, 467, 1),
(456, 'MI', 'MI', 'MI', 1, 'Scrypt', 2000, 468, 1),
(457, 'CON', 'CON_', 'CON', 1, 'X13', 2000, 469, 1),
(458, 'NEU*', 'NEU*', 'NEU*', 1, 'N/A', 2000, 470, 1),
(459, 'TX', 'TX', 'TX', 1, 'X11', 2000, 471, 1),
(460, 'GRS', 'GRS', 'GRS', 1, 'Groestl', 2000, 472, 1),
(461, 'CLV', 'CLV', 'CLV', 1, 'N/A', 2000, 474, 1),
(462, 'FCT', 'FCT', 'FCT', 1, 'N/A', 2000, 475, 1),
(463, 'LYB', 'LYB', 'LYB', 1, 'Lyra2RE', 2000, 476, 1),
(464, 'BST', 'BST', 'BST', 1, 'X11', 2000, 477, 1),
(465, 'PXI', 'PXI', 'PXI', 1, 'X11', 2000, 478, 1),
(466, 'CPC', 'CPC', 'CPC', 1, 'X11', 2000, 479, 1),
(467, 'AMS', 'AMS', 'AMS', 1, 'Quark', 2000, 480, 1),
(468, 'OBITS', 'OBITS', 'OBITS', 1, 'N/A', 2000, 481, 1),
(469, 'CLUB', 'CLUB', 'CLUB', 1, 'Scrypt', 2000, 482, 1),
(470, 'RADS', 'RADS', 'RADS', 1, 'N/A', 2000, 483, 1),
(471, 'EMC', 'EMC', 'EMC', 1, 'SHA256', 2000, 484, 1),
(472, 'BLITZ', 'BLITZ', 'BLITZ', 1, 'X13', 2000, 485, 1),
(473, 'HIRE*', 'HIRE*', 'HIRE*', 1, 'Scrypt', 2000, 486, 1),
(474, 'EGC', 'EGC', 'EGC', 1, 'X15', 2000, 487, 1),
(475, 'MND', 'MND', 'MND', 1, 'X11', 2000, 488, 1),
(476, 'I0C', 'I0C', 'I0C', 1, 'SHA256', 2000, 489, 1),
(477, 'BTA', 'BTA', 'BTA', 1, 'Scrypt', 2000, 490, 1),
(478, 'KARMA', 'KARMA', 'KARMA', 1, 'Scrypt', 2000, 491, 1),
(479, 'DCR', 'DCR', 'DCR', 1, 'BLAKE256', 2000, 492, 1),
(480, 'NAS2', 'NAS2', 'NAS2', 1, 'N/A', 2000, 493, 1),
(481, 'PAK', 'PAK', 'PAK', 1, 'Scrypt', 2000, 494, 1),
(482, 'CRB', 'CRB', 'CRB', 1, 'N/A', 2000, 495, 1),
(483, 'DOGED', 'DOGED', 'DOGED', 1, 'Scrypt', 2000, 496, 1),
(484, 'REP', 'REP', 'REP', 1, 'N/A', 2000, 498, 1),
(485, 'OK', 'OK', 'OK', 1, 'N/A', 2000, 499, 1),
(486, 'VOX', 'VOX', 'VOX', 1, 'Scrypt', 2000, 500, 1),
(487, 'AMP', 'AMP', 'AMP', 1, 'N/A', 2000, 501, 1),
(488, 'HODL', 'HODL', 'HODL', 1, '1GB AES Pattern Search', 2000, 502, 1),
(489, 'DGD', 'DGD', 'DGD', 1, 'N/A', 2000, 503, 1),
(490, 'EDRC', 'EDRC', 'EDRC', 1, 'SHA256', 2000, 504, 1),
(491, 'WAVES', 'WAVES', 'WAVES', 1, '', 2000, 507, 1),
(492, 'HTC', 'HTC', 'HTC', 1, 'X11', 2000, 508, 1),
(493, 'GAME', 'GAME', 'GAME', 1, 'Scrypt', 2000, 509, 1),
(494, 'DSH', 'DSH', 'DSH', 1, 'CryptoNight', 2000, 510, 1),
(495, 'DBIC', 'DBIC', 'DBIC', 1, 'SHA256', 2000, 511, 1),
(496, 'XHI', 'XHI', 'XHI', 1, 'Scrypt', 2000, 512, 1),
(497, 'SPOTS', 'SPOTS', 'SPOTS', 1, 'N/A', 2000, 513, 1),
(498, 'BIOS', 'BIOS', 'BIOS', 1, 'Quark', 2000, 514, 1),
(499, 'KNC*', 'KNC*', 'KNC*', 1, 'X11', 2000, 515, 1),
(500, 'CAB', 'CAB', 'CAB', 1, 'N/A', 2000, 516, 1),
(501, 'DIEM', 'DIEM', 'DIEM', 1, 'SHA256', 2000, 517, 1),
(502, 'GBT', 'GBT', 'GBT', 1, 'POS 3.0', 2000, 518, 1),
(503, 'SAR', 'SAR', 'SAR', 1, 'SHA256', 2000, 519, 1),
(504, 'RCX', 'RCX', 'RCX', 1, 'Scrypt', 2000, 520, 1),
(505, 'PWR', 'PWR', 'PWR', 1, 'NIST5', 2000, 521, 1),
(506, 'TRUMP', 'TRUMP', 'TRUMP', 1, 'Blake', 2000, 522, 1),
(507, 'PRM', 'PRM', 'PRM', 1, 'SHA256', 2000, 523, 1),
(508, 'BCY', 'BCY', 'BCY', 1, 'Counterparty', 2000, 524, 1),
(509, 'RBIES', 'RBIES', 'RBIES', 1, 'N/A', 2000, 525, 1),
(510, 'STEEM', 'STEEM', 'STEEM', 1, 'N/A', 2000, 526, 1),
(511, 'BLRY', 'BLRY', 'BLRY', 1, 'Scrypt', 2000, 527, 1),
(512, 'XWC', 'XWC', 'XWC', 1, 'Scrypt', 2000, 528, 1),
(513, 'DOT', 'DOT', 'DOT', 1, 'Scrypt', 2000, 529, 1),
(514, 'SCOT', 'SCOT', 'SCOT', 1, 'Counterparty', 2000, 530, 1),
(515, 'DNET', 'DNET', 'DNET', 1, 'Quark', 2000, 531, 1),
(516, 'BAC', 'BAC', 'BAC', 1, 'N/A', 2000, 532, 1),
(517, 'XID*', 'XID*', 'XID*', 1, 'N/A', 2000, 533, 1),
(518, 'GRT', 'GRT', 'GRT', 1, 'SHA256', 2000, 535, 1),
(519, 'TCR', 'TCR', 'TCR', 1, 'QuBit', 2000, 536, 1),
(520, 'POST', 'POST', 'POST', 1, 'N/A', 2000, 537, 1),
(521, 'INFX', 'INFX', 'INFX', 1, 'X11', 2000, 538, 1),
(522, 'ETHS', 'ETHS', 'ETHS', 1, 'Scrypt', 2000, 539, 1),
(523, 'PXL', 'PXL', 'PXL', 1, 'SHA256', 2000, 540, 1),
(524, 'NUM', 'NUM', 'NUM', 1, 'Scrypt', 2000, 541, 1),
(525, 'SOUL', 'SOUL', 'SOUL', 1, 'Scrypt', 2000, 542, 1),
(526, 'ION', 'ION', 'ION', 1, 'N/A', 2000, 543, 1),
(527, 'GROW', 'GROW', 'GROW', 1, 'N/A', 2000, 544, 1),
(528, 'UNITY', 'UNITY', 'UNITY', 1, 'N/A', 2000, 545, 1),
(529, 'OLDSF', 'OLDSF', 'OLDSF', 1, 'N/A', 2000, 546, 1),
(530, 'SSTC', 'SSTC', 'SSTC', 1, 'X11', 2000, 547, 1),
(531, 'NETC', 'NETC', 'NETC', 1, 'X13', 2000, 548, 1),
(532, 'GPU', 'GPU', 'GPU', 1, 'Scrypt', 2000, 549, 1),
(533, 'TAGR', 'TAGR', 'TAGR', 1, 'X15', 2000, 550, 1),
(534, 'HMP', 'HMP', 'HMP', 1, 'Scrypt-n', 2000, 551, 1),
(535, 'ADZ', 'ADZ', 'ADZ', 1, 'X11', 2000, 552, 1),
(536, 'GAP', 'GAP', 'GAP', 1, 'Scrypt', 2000, 553, 1),
(537, 'MYC', 'MYC', 'MYC', 1, 'Scrypt', 2000, 554, 1),
(538, 'IVZ', 'IVZ', 'IVZ', 1, 'N/A', 2000, 555, 1),
(539, 'VTA', 'VTA', 'VTA', 1, 'Scrypt', 2000, 556, 1),
(540, 'SLS', 'SLS', 'SLS', 1, 'Scrypt', 2000, 557, 1),
(541, 'SOIL', 'SOIL', 'SOIL', 1, 'Dagger', 2000, 558, 1),
(542, 'CUBE', 'CUBE', 'CUBE', 1, 'N/A', 2000, 559, 1),
(543, 'YOC', 'YOC', 'YOC', 1, 'Scrypt', 2000, 560, 1),
(544, 'COIN*', 'COIN*', 'COIN*', 1, 'SHA256', 2000, 561, 1),
(545, 'APC', 'APC', 'APC', 1, 'N/A', 2000, 563, 1),
(546, 'STEPS', 'STEPS', 'STEPS', 1, 'N/A', 2000, 564, 1),
(547, 'DBTC', 'DBTC', 'DBTC', 1, 'Scrypt', 2000, 565, 1),
(548, 'UNIT', 'UNIT', 'UNIT', 1, '', 13, 566, 1),
(549, 'AEON', 'AEON', 'AEON', 1, 'CryptoNight-Lite', 2000, 567, 1),
(550, 'MOIN', 'MOIN', 'MOIN', 1, 'N/A', 2000, 568, 1),
(551, 'SIB', 'SIB', 'SIB', 1, 'X11GOST', 2000, 569, 1),
(552, 'ERC', 'ERC', 'ERC', 1, 'X11', 2000, 570, 1),
(553, 'AIB', 'AIB', 'AIB', 1, 'Scrypt', 2000, 571, 1),
(554, 'PRIME', 'PRIME', 'PRIME', 1, 'N/A', 2000, 572, 1),
(555, 'BERN', 'BERN', 'BERN', 1, 'X14', 2000, 573, 1),
(556, 'BIGUP', 'BIGUP', 'BIGUP', 1, 'N/A', 2000, 574, 1),
(557, 'KR', 'KR', 'KR', 1, 'Dagger-Hashimoto', 2000, 575, 1),
(558, 'XRE', 'XRE', 'XRE', 1, 'X11Evo', 2000, 576, 1),
(559, 'MEME', 'MEME', 'MEME', 1, 'X11', 2000, 578, 1),
(560, 'XDB', 'XDB', 'XDB', 1, 'X11', 2000, 579, 1),
(561, 'ANTI', 'ANTI', 'ANTI', 1, 'SHA256', 2000, 580, 1),
(562, 'BRK', 'BRK', 'BRK', 1, 'SHA256', 2000, 581, 1),
(563, 'COLX', 'COLX', 'COLX', 1, 'X11', 2000, 582, 1),
(564, 'MNM', 'MNM', 'MNM', 1, 'X13', 2000, 583, 1),
(565, 'ADCN', 'ADCN', 'ADCN', 1, 'Scrypt', 2000, 584, 1),
(566, 'ZEIT', 'ZEIT', 'ZEIT', 1, 'PoS', 2000, 585, 1),
(567, '2GIVE', '2GIVE', '2GIVE', 1, 'Scrypt', 2000, 587, 1),
(568, 'CGA', 'CGA', 'CGA', 1, 'Scrypt', 2000, 588, 1),
(569, 'SWING', 'SWING', 'SWING', 1, 'SHA256', 2000, 589, 1),
(570, 'SAFEX', 'SAFEX', 'SAFEX', 1, 'Scrypt', 2000, 590, 1),
(571, 'NEBU', 'NEBU', 'NEBU', 1, 'PoS', 2000, 591, 1),
(572, 'AEC', 'AEC', 'AEC', 1, 'X11', 2000, 592, 1),
(573, 'FRN', 'FRN', 'FRN', 1, 'Scrypt', 2000, 593, 1),
(574, 'ADN', 'ADN', 'ADN', 1, 'ScryptOG', 2000, 594, 1),
(575, 'PULSE', 'PULSE', 'PULSE', 1, 'SHA256D', 2000, 595, 1),
(576, 'N7', 'N7', 'N7', 1, 'Scrypt', 2000, 596, 1),
(577, 'CYG', 'CYG', 'CYG', 1, 'X11', 2000, 597, 1),
(578, 'LGBTQ', 'LGBTQ', 'LGBTQ', 1, 'X11', 2000, 598, 1),
(579, 'UTH', 'UTH', 'UTH', 1, 'Dagger', 2000, 599, 1),
(580, 'MPRO', 'MPRO', 'MPRO', 1, 'PoS', 2000, 600, 1),
(581, 'KAT', 'KAT', 'KAT', 1, 'SHA256D', 2000, 601, 1),
(582, 'SPM', 'SPM', 'SPM', 1, 'Scrypt', 2000, 603, 1),
(583, 'MOJO', 'MOJO', 'MOJO', 1, 'PoS', 2000, 604, 1),
(584, 'BELA', 'BELA', 'BELA', 1, 'Scrypt', 2000, 605, 1),
(585, 'FLX', 'FLX', 'FLX', 1, 'Scrypt', 2000, 606, 1),
(586, 'BOLI', 'BOLI', 'BOLI', 1, 'X11', 2000, 607, 1),
(587, 'CLUD', 'CLUD', 'CLUD', 1, 'Scrypt', 2000, 608, 1),
(588, 'DIME', 'DIME', 'DIME', 1, 'Quark', 2000, 609, 1),
(589, 'FLY', 'FLY', 'FLY', 1, 'X13', 2000, 610, 1),
(590, 'HVCO', 'HVCO', 'HVCO', 1, 'SHA256', 2000, 611, 1),
(591, 'GIZ', 'GIZ', 'GIZ', 1, 'X11', 2000, 612, 1),
(592, 'GREXIT', 'GREXIT', 'GREXIT', 1, 'N/A', 2000, 613, 1),
(593, 'CARBON', 'CARBON', 'CARBON', 1, 'Scrypt', 2000, 614, 1),
(594, 'DEUR', 'DEUR', 'DEUR', 1, 'Scrypt', 2000, 615, 1),
(595, 'TUR', 'TUR', 'TUR', 1, 'N/A', 2000, 616, 1),
(596, 'LEMON', 'LEMON', 'LEMON', 1, 'N/A', 2000, 617, 1),
(597, 'STS', 'STS', 'STS', 1, 'X13', 2000, 618, 1),
(598, 'DISK', 'DISK', 'DISK', 1, 'X11', 2000, 619, 1),
(599, 'NEVA', 'NEVA', 'NEVA', 1, 'N/A', 2000, 620, 1),
(600, 'CYT', 'CYT', 'CYT', 1, 'PoS', 2000, 621, 1),
(601, 'FUZZ', 'FUZZ', 'FUZZ', 1, 'Scrypt', 2000, 622, 1),
(602, 'NKC', 'NKC', 'NKC', 1, 'Scrypt', 2000, 623, 1),
(603, 'SCRT', 'SCRT', 'SCRT', 1, 'X11', 2000, 624, 1),
(604, 'XRA', 'XRA', 'XRA', 1, 'X11', 2000, 625, 1),
(605, 'XNX', 'XNX', 'XNX', 1, 'Scrypt', 2000, 626, 1),
(606, 'STAR*', 'STAR*', 'STAR*', 1, 'Scrypt', 2000, 627, 1),
(607, 'STHR', 'STHR', 'STHR', 1, 'PoS', 2000, 628, 1),
(608, 'DBG', 'DBG', 'DBG', 1, 'PoS', 2000, 629, 1),
(609, 'BON', 'BON*', 'BON', 1, 'Scrypt', 2000, 630, 1),
(610, 'WMC', 'WMC', 'WMC', 1, 'X11', 2000, 631, 1),
(611, 'GOTX', 'GOTX', 'GOTX', 1, 'Scrypt', 2000, 632, 1),
(612, 'FLVR', 'FLVR', 'FLVR', 1, 'SHA256', 2000, 633, 1),
(613, 'SHREK', 'SHREK', 'SHREK', 1, 'Scrypt', 2000, 633, 1),
(614, 'STA*', 'STA*', 'STA*', 1, 'PoS', 2000, 635, 1),
(615, 'RISE', 'RISE', 'RISE', 1, 'DPoS', 2000, 636, 1),
(616, 'REV', 'REV', 'REV', 1, 'SHA256', 2000, 637, 1),
(617, 'PBC', 'PBC', 'PBC', 1, 'X11', 2000, 638, 1),
(618, 'OBS', 'OBS', 'OBS', 1, 'X11', 2000, 639, 1),
(619, 'EXIT', 'EXIT', 'EXIT', 1, 'Scrypt', 2000, 640, 1),
(620, 'EDC', 'EDC', 'EDC', 1, 'Scrypt', 2000, 641, 1),
(621, 'CLINT', 'CLINT', 'CLINT', 1, 'SHA256', 2000, 642, 1),
(622, 'CKC', 'CKC', 'CKC', 1, 'SHA256', 2000, 643, 1),
(623, 'VIP', 'VIP', 'VIP', 1, 'NIST5', 2000, 644, 1),
(624, 'NXE', 'NXE', 'NXE', 1, 'NIST5', 2000, 645, 1),
(625, 'ZOOM', 'ZOOM', 'ZOOM', 1, 'Lyra2RE', 2000, 646, 1),
(626, 'DRACO', 'DRACO', 'DRACO', 1, 'N/A', 2000, 647, 1),
(627, 'YOVI', 'YOVI', 'YOVI', 1, 'SHA256', 2000, 648, 1),
(628, 'ORLY', 'ORLY', 'ORLY', 1, 'X15', 2000, 649, 1),
(629, 'KUBO', 'KUBO', 'KUBO', 1, 'Scrypt', 2000, 650, 1),
(630, 'INCP', 'INCP', 'INCP', 1, 'X11', 2000, 651, 1),
(631, 'SAK', 'SAK', 'SAK', 1, 'SHA256', 2000, 652, 1),
(632, 'EVIL', 'EVIL', 'EVIL', 1, 'X11', 2000, 653, 1),
(633, 'OMA', 'OMA', 'OMA', 1, 'X15', 2000, 654, 1),
(634, 'MUE', 'MUE', 'MUE', 1, '', 12, 655, 1),
(635, 'COX', 'COX', 'COX', 1, 'Scrypt', 2000, 656, 1),
(636, 'BNT', 'BNT', 'BNT', 1, 'N/A', 2000, 657, 1),
(637, 'BSD', 'BSD', 'BSD', 1, 'X11', 2000, 659, 1),
(638, 'DES', 'DES', 'DES', 1, 'Scrypt', 2000, 660, 1),
(639, 'BIT16', 'BIT16', 'BIT16', 1, 'NIST5', 2000, 661, 1),
(640, 'PDC', 'PDC', 'PDC', 1, 'N/A', 2000, 662, 1),
(641, 'CMT', 'CMT', 'CMT', 1, 'Scrypt', 2000, 663, 1),
(642, 'CHESS', 'CHESS', 'CHESS', 1, 'Scrypt', 2000, 665, 1),
(643, 'SPACE', 'SPACE', 'SPACE', 1, 'Scrypt', 2000, 666, 1),
(644, 'REE', 'REE', 'REE', 1, 'Scrypt', 2000, 667, 1),
(645, 'LQD', 'LQD', 'LQD', 1, 'N/A', 2000, 668, 1),
(646, 'MARV', 'MARV', 'MARV', 1, 'Scrypt', 2000, 669, 1),
(647, 'XDE2', 'XDE2', 'XDE2', 1, 'SHA256', 2000, 670, 1),
(648, 'VEC2', 'VEC2', 'VEC2', 1, 'Dagger-Hashimoto', 2000, 671, 1),
(649, 'OMNI', 'OMNI', 'OMNI', 1, 'Scrypt', 2000, 672, 1),
(650, 'GSY', 'GSY', 'GSY', 1, 'SHA256', 2000, 673, 1),
(651, 'TKN*', 'TKN*', 'TKN*', 1, 'SHA256', 2000, 674, 1),
(652, 'LIR', 'LIR', 'LIR', 1, 'POS 3.0', 2000, 675, 1),
(653, 'MMNXT', 'MMNXT', 'MMNXT', 1, 'N/A', 2000, 676, 1),
(654, 'SCRPT', 'SCRPT', 'SCRPT', 1, 'Scrypt', 2000, 677, 1),
(655, 'LBC', 'LBC', 'LBC', 1, 'N/A', 2000, 678, 1),
(656, 'SBD', 'SBD', 'SBD', 1, 'N/A', 2000, 680, 1),
(657, 'CJ', 'CJ', 'CJ', 1, 'X13', 2000, 681, 1),
(658, 'PUT', 'PUT', 'PUT', 1, 'Scrypt', 2000, 682, 1),
(659, 'KRAK', 'KRAK', 'KRAK', 1, 'SHA256', 2000, 683, 1),
(660, 'DLISK', 'DLISK', 'DLISK', 1, 'N/A', 2000, 684, 1),
(661, 'IBANK', 'IBANK', 'IBANK', 1, 'Scrypt', 2000, 685, 1),
(662, 'STRAT', 'STRAT', 'STRAT', 1, 'X13', 2000, 687, 1),
(663, 'VOYA', 'VOYA', 'VOYA', 1, 'N/A', 2000, 688, 1),
(664, 'ENTER', 'ENTER', 'ENTER', 1, 'Scrypt', 2000, 689, 1),
(665, 'WGC', 'WGC', 'WGC', 1, 'SHA256', 2000, 690, 1),
(666, 'BM', 'BM', 'BM', 1, 'X13', 2000, 691, 1),
(667, 'FRWC', 'FRWC', 'FRWC', 1, 'Scrypt', 2000, 692, 1),
(668, 'PSY', 'PSY', 'PSY', 1, 'SHA256D', 2000, 693, 1),
(669, 'XT', 'XT', 'XT', 1, 'Scrypt', 2000, 694, 1),
(670, 'RUST', 'RUST', 'RUST', 1, 'Scrypt', 2000, 695, 1),
(671, 'NZC', 'NZC', 'NZC', 1, 'Scrypt', 2000, 696, 1),
(672, 'SNGLS', 'SNGLS', 'SNGLS', 1, 'N/A', 2000, 697, 1),
(673, 'XAUR', 'XAUR', 'XAUR', 1, 'N/A', 2000, 698, 1),
(674, 'BFX', 'BFX', 'BFX', 1, 'N/A', 2000, 699, 1),
(675, 'UNIQ', 'UNIQ', 'UNIQ', 1, 'SHA256D', 2000, 700, 1),
(676, 'CRX', 'CRX', 'CRX', 1, 'Scrypt', 2000, 701, 1),
(677, 'DCT', 'DCT', 'DCT', 1, 'N/A', 2000, 702, 1),
(678, 'XPOKE', 'XPOKE', 'XPOKE', 1, 'X13', 2000, 703, 1),
(679, 'MUDRA', 'MUDRA', 'MUDRA', 1, 'X13', 2000, 704, 1),
(680, 'WARP', 'WARP', 'WARP', 1, 'PoS', 2000, 705, 1),
(681, 'CNMT', 'CNMT', 'CNMT', 1, 'N/A', 2000, 706, 1),
(682, 'PIZZA', 'PIZZA', 'PIZZA', 1, 'X11', 2000, 707, 1),
(683, 'LC', 'LC', 'LC', 1, 'X11', 2000, 708, 1),
(684, 'HEAT', 'HEAT', 'HEAT', 1, 'N/A', 2000, 709, 1),
(685, 'ICN', 'ICN', 'ICN', 1, 'N/A', 2000, 710, 1),
(686, 'EXB', 'EXB', 'EXB', 1, 'SHA256', 2000, 711, 1),
(687, 'WINGS', 'WINGS', 'WINGS', 1, 'N/A', 2000, 712, 1),
(688, 'CDX*', 'CDX*', 'CDX*', 1, 'N/A', 2000, 713, 1),
(689, 'RBIT', 'RBIT', 'RBIT', 1, 'Scrypt', 2000, 714, 1),
(690, 'DCS.', 'DCS', 'DCS.', 1, 'N/A', 2000, 715, 1),
(691, 'KMD', 'KMD', 'KMD', 1, 'Equihash', 2000, 716, 1),
(692, 'GB', 'GB', 'GB', 1, 'X11', 2000, 717, 1),
(693, 'ANC', 'ANC', 'ANC', 1, 'N/A', 2000, 719, 1),
(694, 'SYNX', 'SYNX', 'SYNX', 1, 'X11', 2000, 720, 1),
(695, 'MC', 'MC', 'MC', 1, 'N/A', 2000, 721, 1),
(696, 'EDR', 'EDR', 'EDR', 1, 'X11', 2000, 722, 1),
(697, 'JWL', 'JWL', 'JWL', 1, 'POS 3.0', 2000, 723, 1),
(698, 'WAY', 'WAY', 'WAY', 1, 'X11', 2000, 724, 1),
(699, 'TAB', 'TAB', 'TAB', 1, 'Scrypt', 2000, 725, 1),
(700, 'TRIG', 'TRIG', 'TRIG', 1, 'N/A', 2000, 726, 1),
(701, 'BITCNY', 'BITCNY', 'BITCNY', 1, 'N/A', 2000, 727, 1),
(702, 'BITUSD', 'BITUSD', 'BITUSD', 1, 'N/A', 2000, 728, 1),
(703, 'ATM*', 'ATM*', 'ATM*', 1, 'X11', 2000, 729, 1),
(704, 'STO', 'STO', 'STO', 1, 'X11', 2000, 730, 1),
(705, 'SNS', 'SNS', 'SNS', 1, 'N/A', 2000, 731, 1),
(706, 'FSN', 'FSN', 'FSN', 1, 'SHA256', 2000, 732, 1),
(707, 'CTC', 'CTC', 'CTC', 1, 'Scrypt', 2000, 733, 1),
(708, 'TOT', 'TOT', 'TOT', 1, 'Scrypt', 2000, 734, 1),
(709, 'BTD', 'BTD', 'BTD', 1, 'Scrypt', 2000, 735, 1),
(710, 'BOTS', 'BOTS', 'BOTS', 1, 'N/A', 2000, 736, 1),
(711, 'MDC', 'MDC', 'MDC', 1, 'Scrypt', 2000, 737, 1),
(712, 'FTP', 'FTP', 'FTP', 1, 'X11', 2000, 738, 1),
(713, 'ZET2', 'ZET2', 'ZET2', 1, 'Quark', 2000, 739, 1),
(714, 'COV*', 'COV*', 'COV*', 1, 'SHA256', 2000, 740, 1),
(715, 'KRB', 'KRB', 'KRB', 1, 'CryptoNight', 2000, 741, 1),
(716, 'TELL', 'TELL', 'TELL', 1, 'X11', 2000, 742, 1),
(717, 'ENE', 'ENE', 'ENE', 1, 'X13', 2000, 743, 1),
(718, 'TDFB', 'TDFB', 'TDFB', 1, 'SHA256D', 2000, 744, 1),
(719, 'BLOCKPAY', 'BLOCKPAY', 'BLOCKPAY', 1, 'N/A', 2000, 745, 1),
(720, 'BXT', 'BXT', 'BXT', 1, 'SHA256', 2000, 746, 1),
(721, 'MST', 'MST', 'MST', 1, 'X11', 2000, 748, 1),
(722, 'GOON', 'GOON', 'GOON', 1, 'Scrypt', 2000, 749, 1),
(723, 'VLT', 'VLT', 'VLT', 1, 'N/A', 2000, 751, 1),
(724, 'ZNE', 'ZNE', 'ZNE', 1, 'Scrypt', 2000, 752, 1),
(725, 'DCK', 'DCK', 'DCK', 1, 'X11', 2000, 753, 1),
(726, 'COVAL', 'COVAL', 'COVAL', 1, 'Multiple', 2000, 754, 1),
(727, 'DGDC', 'DGDC', 'DGDC', 1, 'X13', 2000, 755, 1),
(728, 'TODAY', 'TODAY', 'TODAY', 1, 'Scrypt', 2000, 756, 1),
(729, 'VRM', 'VRM', 'VRM', 1, 'N/A', 2000, 757, 1),
(730, 'ROOT', 'ROOT', 'ROOT', 1, 'Scrypt', 2000, 758, 1),
(731, '1ST', '1ST', '1ST', 1, 'N/A', 2000, 759, 1),
(732, 'GPL', 'GPL', 'GPL', 1, 'N/A', 2000, 760, 1),
(733, 'DOPE', 'DOPE', 'DOPE', 1, 'Scrypt', 2000, 761, 1),
(734, 'B3', 'B3', 'B3', 1, 'X11', 2000, 762, 1),
(735, 'FX', 'FX', 'FX', 1, 'Scrypt', 2000, 763, 1),
(736, 'PIO', 'PIO', 'PIO', 1, 'X11', 2000, 764, 1),
(737, 'GAY', 'GAY', 'GAY', 1, 'X11', 2000, 765, 1),
(738, 'SMSR', 'SMSR', 'SMSR', 1, 'QuBit', 2000, 766, 1),
(739, 'UBIQ', 'UBIQ', 'UBIQ', 1, 'Progressive-n', 2000, 767, 1),
(740, 'ARM', 'ARM', 'ARM', 1, 'Scrypt', 2000, 768, 1),
(741, 'RING', 'RING', 'RING', 1, 'Scrypt', 2000, 769, 1),
(742, 'ERB', 'ERB', 'ERB', 1, 'Scrypt', 2000, 770, 1),
(743, 'LAZ', 'LAZ', 'LAZ', 1, 'DPoS', 2000, 771, 1),
(744, 'FONZ', 'FONZ', 'FONZ', 1, 'SHA256', 2000, 772, 1),
(745, 'BTCR', 'BTCR', 'BTCR', 1, 'Scrypt', 2000, 773, 1),
(746, 'DROP', 'DROP', 'DROP', 1, 'X13', 2000, 774, 1),
(747, 'SANDG', 'SANDG', 'SANDG', 1, 'SHA256', 2000, 775, 1),
(748, 'PNK', 'PNK', 'PNK', 1, 'PoS', 2000, 776, 1),
(749, 'MOOND', 'MOOND', 'MOOND', 1, 'Scrypt', 2000, 777, 1),
(750, 'DLC', 'DLC', 'DLC', 1, 'SHA256', 2000, 778, 1),
(751, 'SEN', 'SEN', 'SEN', 1, 'Scrypt', 2000, 779, 1),
(752, 'SCN', 'SCN', 'SCN', 1, 'Scrypt', 2000, 781, 1),
(753, 'WEX', 'WEX', 'WEX', 1, 'N/A', 2000, 782, 1),
(754, 'LTH', 'LTH', 'LTH', 1, 'PoS', 2000, 783, 1),
(755, 'BRONZ', 'BRONZ', 'BRONZ', 1, 'Scrypt', 2000, 784, 1),
(756, 'SH', 'SH', 'SH', 1, 'Scrypt', 2000, 785, 1),
(757, 'BUZZ', 'BUZZ', 'BUZZ', 1, 'SHA256D', 2000, 786, 1),
(758, 'MG', 'MG', 'MG', 1, 'SHA256', 2000, 788, 1),
(759, 'PSI', 'PSI', 'PSI', 1, 'X11', 2000, 789, 1),
(760, 'XPO', 'XPO', 'XPO', 1, 'PoS', 2000, 790, 1),
(761, 'NLC', 'NLC', 'NLC', 1, 'SHA256D', 2000, 791, 1),
(762, 'PSB', 'PSB', 'PSB', 1, 'Scrypt', 2000, 792, 1),
(763, 'XBTS', 'XBTS', 'XBTS', 1, 'X11', 2000, 793, 1),
(764, 'FIT', 'FIT', 'FIT', 1, 'X11', 2000, 794, 1),
(765, 'PINKX', 'PINKX', 'PINKX', 1, 'Scrypt', 2000, 796, 1),
(766, 'FIRE', 'FIRE', 'FIRE', 1, 'X15', 2000, 797, 1),
(767, 'UNF', 'UNF', 'UNF', 1, 'Scrypt', 2000, 798, 1),
(768, 'SPORT', 'SPORT', 'SPORT', 1, 'X11', 2000, 799, 1),
(769, 'PPY', 'PPY', 'PPY', 1, 'N/A', 2000, 801, 1),
(770, 'NTC', 'NTC', 'NTC', 1, 'Scrypt', 2000, 802, 1),
(771, 'EGO', 'EGO', 'EGO', 1, 'PoS', 2000, 803, 1),
(772, 'BTCL*', 'BTCL*', 'BTCL*', 1, 'Scrypt', 2000, 804, 1),
(773, 'RCN*', 'RCN*', 'RCN*', 1, 'SHA256', 2000, 805, 1),
(774, 'X2', 'X2', 'X2', 1, 'N/A', 2000, 806, 1),
(775, 'MT', 'MT', 'MT', 1, 'N/A', 2000, 807, 1),
(776, 'TIA', 'TIA', 'TIA', 1, 'Lyra2RE', 2000, 808, 1),
(777, 'GBRC', 'GBRC', 'GBRC', 1, 'Scrypt', 2000, 809, 1),
(778, 'XUP', 'XUP', 'XUP', 1, 'X13', 2000, 810, 1),
(779, 'HALLO', 'HALLO', 'HALLO', 1, 'X11', 2000, 812, 1),
(780, 'BBCC', 'BBCC', 'BBCC', 1, 'Scrypt', 2000, 813, 1),
(781, 'EMIGR', 'EMIGR', 'EMIGR', 1, 'SHA256', 2000, 814, 1),
(782, 'BHC', 'BHC', 'BHC', 1, 'Quark', 2000, 815, 1),
(783, 'CRAFT', 'CRAFT', 'CRAFT', 1, 'Scrypt', 2000, 816, 1),
(784, 'INV', 'INV', 'INV', 1, 'X11', 2000, 817, 1),
(785, 'OLYMP', 'OLYMP', 'OLYMP', 1, 'X11', 2000, 818, 1),
(786, 'DPAY', 'DPAY', 'DPAY', 1, 'X13', 2000, 819, 1),
(787, 'ATOM', 'ATOM', 'ATOM', 1, 'Scrypt', 2000, 820, 1),
(788, 'HKG', 'HKG', 'HKG', 1, 'N/A', 2000, 821, 1),
(789, 'ANTC', 'ANTC', 'ANTC', 1, 'Scrypt', 2000, 822, 1),
(790, 'JOBS', 'JOBS', 'JOBS', 1, 'X11', 2000, 823, 1),
(791, 'DGORE', 'DGORE', 'DGORE', 1, 'X11', 2000, 824, 1),
(792, 'THC', 'THC', 'THC', 1, 'Scrypt', 2000, 825, 1),
(793, 'TRA', 'TRA', 'TRA', 1, 'Scrypt', 2000, 826, 1),
(794, 'RMS', 'RMS', 'RMS', 1, 'NIST5', 2000, 827, 1),
(795, 'FJC', 'FJC', 'FJC', 1, 'Scrypt-n', 2000, 828, 1),
(796, 'VAPOR', 'VAPOR', 'VAPOR', 1, 'SHA256', 2000, 829, 1),
(797, 'SDP', 'SDP', 'SDP', 1, 'X13', 2000, 830, 1),
(798, 'RRT', 'RRT', 'RRT', 1, 'N/A', 2000, 831, 1),
(799, 'XZC', 'XZC', 'XZC', 1, 'Lyra2RE', 2000, 832, 1),
(800, 'PRE', 'PRE', 'PRE', 1, 'Scrypt', 2000, 833, 1),
(801, 'CALC', 'CALC', 'CALC', 1, 'SHA256', 2000, 834, 1),
(802, 'LEA', 'LEA', 'LEA', 1, 'SHA256', 2000, 835, 1),
(803, 'CF', 'CF', 'CF', 1, 'SHA256', 2000, 836, 1),
(804, 'CRNK', 'CRNK', 'CRNK', 1, 'X11', 2000, 837, 1),
(805, 'CFC', 'CFC', 'CFC', 1, 'PoS', 2000, 838, 1),
(806, 'VTY', 'VTY', 'VTY', 1, 'Scrypt', 2000, 839, 1),
(807, 'SFE', 'SFE', 'SFE', 1, 'N/A', 2000, 841, 1),
(808, 'ARDR', 'ARDR', 'ARDR', 1, 'N/A', 2000, 842, 1),
(809, 'BS', 'BS', 'BS', 1, 'X11', 2000, 843, 1),
(810, 'JIF', 'JIF', 'JIF', 1, 'SHA256D', 2000, 844, 1),
(811, 'CRAB', 'CRAB', 'CRAB', 1, 'X15', 2000, 845, 1),
(812, 'AIR*', 'AIR*', 'AIR*', 1, 'Scrypt', 2000, 846, 1),
(813, 'HILL', 'HILL', 'HILL', 1, 'N/A', 2000, 847, 1),
(814, 'FOREX', 'FOREX', 'FOREX', 1, 'X15', 2000, 848, 1),
(815, 'MONETA', 'MONETA', 'MONETA', 1, 'Scrypt', 2000, 849, 1),
(816, 'EC', 'EC', 'EC', 1, 'SHA256D', 2000, 850, 1),
(817, 'RUBIT', 'RUBIT', 'RUBIT', 1, 'Scrypt', 2000, 851, 1),
(818, 'HCC', 'HCC', 'HCC', 1, 'Scrypt', 2000, 852, 1),
(819, 'BRAIN', 'BRAIN', 'BRAIN', 1, 'X11', 2000, 853, 1),
(820, 'VTX', 'VTX', 'VTX', 1, 'SHA256', 2000, 854, 1),
(821, 'KRC', 'KRC', 'KRC', 1, 'X11', 2000, 855, 1),
(822, 'LFC', 'LFC', 'LFC', 1, 'X11', 2000, 857, 1),
(823, 'ZUR', 'ZUR', 'ZUR', 1, 'Quark', 2000, 858, 1),
(824, 'NUBIS', 'NUBIS', 'NUBIS', 1, 'SHA256D', 2000, 859, 1),
(825, 'TENNET', 'TENNET', 'TENNET', 1, 'SHA256D', 2000, 860, 1),
(826, 'PEC', 'PEC', 'PEC', 1, 'X11', 2000, 861, 1),
(827, 'GMX', 'GMX', 'GMX', 1, 'Scrypt', 2000, 862, 1),
(828, '32BIT', '32BIT', '32BIT', 1, 'X11', 2000, 863, 1),
(829, 'GNJ', 'GNJ', 'GNJ', 1, 'X14', 2000, 864, 1),
(830, 'TEAM', 'TEAM', 'TEAM', 1, 'PoS', 2000, 865, 1),
(831, 'SCT', 'SCT', 'SCT', 1, 'Scrypt', 2000, 866, 1),
(832, 'LANA', 'LANA', 'LANA', 1, 'SHA256D', 2000, 867, 1),
(833, 'ELE', 'ELE', 'ELE', 1, 'Ethash', 2000, 868, 1),
(834, 'GCC', 'GCC', 'GCC', 1, 'Scrypt', 2000, 869, 1),
(835, 'AND', 'AND', 'AND', 1, 'X11', 2000, 870, 1),
(836, 'GBYTE', 'GBYTE', 'GBYTE', 1, 'N/A', 2000, 871, 1),
(837, 'EQUAL', 'EQUAL', 'EQUAL', 1, 'X13', 2000, 872, 1),
(838, 'SWEET', 'SWEET', 'SWEET', 1, 'PoS', 2000, 873, 1),
(839, '2BACCO', '2BACCO', '2BACCO', 1, 'Scrypt', 2000, 874, 1),
(840, 'DKC', 'DKC', 'DKC', 1, 'Scrypt', 2000, 875, 1),
(841, 'COC', 'COC', 'COC', 1, 'SHA256', 2000, 876, 1),
(842, 'CHOOF', 'CHOOF', 'CHOOF', 1, 'Scrypt', 2000, 877, 1),
(843, 'CSH', 'CSH', 'CSH', 1, 'SHA256', 2000, 878, 1),
(844, 'ZCL', 'ZCL', 'ZCL', 1, 'Equihash', 2000, 879, 1),
(845, 'RYCN', 'RYCN', 'RYCN', 1, 'X13', 2000, 880, 1),
(846, 'PCS', 'PCS', 'PCS', 1, 'X11', 2000, 881, 1),
(847, 'NBIT', 'NBIT', 'NBIT', 1, 'Scrypt', 2000, 882, 1),
(848, 'WINE', 'WINE', 'WINE', 1, 'Scrypt', 2000, 883, 1),
(849, 'DAR', 'DAR', 'DAR', 1, 'N/A', 2000, 884, 1),
(850, 'ARK', 'ARK', 'ARK', 1, 'DPoS', 2000, 885, 1),
(851, 'IFLT', 'IFLT', 'IFLT', 1, 'X11', 2000, 886, 1),
(852, 'ZECD', 'ZECD', 'ZECD', 1, 'Scrypt', 2000, 887, 1),
(853, 'ZXT', 'ZXT', 'ZXT', 1, 'N/A', 2000, 888, 1),
(854, 'WASH', 'WASH', 'WASH', 1, 'X11', 2000, 889, 1),
(855, 'TESLA', 'TESLA', 'TESLA', 1, 'N/A', 2000, 890, 1),
(856, 'LUCKY', 'LUCKY', 'LUCKY', 1, 'PoS', 2000, 891, 1),
(857, 'VSL', 'VSL', 'VSL', 1, 'N/A', 2000, 892, 1),
(858, 'TPG', 'TPG', 'TPG', 1, 'PoS', 2000, 893, 1),
(859, 'LEO', 'LEO', 'LEO', 1, 'Scrypt', 2000, 894, 1),
(860, 'MDT', 'MDT', 'MDT', 1, 'SHA256', 2000, 895, 1),
(861, 'CBD', 'CBD', 'CBD', 1, 'PoS', 2000, 896, 1),
(862, 'PEX', 'PEX', 'PEX', 1, 'SHA256D', 2000, 897, 1),
(863, 'INSANE', 'INSANE', 'INSANE', 1, 'X11', 2000, 898, 1),
(864, 'PEN', 'PEN', 'PEN', 1, 'Scrypt', 2000, 901, 1),
(865, 'BASH', 'BASH', 'BASH', 1, 'Scrypt', 2000, 902, 1),
(866, 'FAME', 'FAME', 'FAME', 1, 'QuBit', 2000, 903, 1),
(867, 'LIV', 'LIV', 'LIV', 1, 'Scrypt', 2000, 904, 1),
(868, 'SP', 'SP', 'SP', 1, 'Scrypt', 2000, 905, 1),
(869, 'MEGA', 'MEGA', 'MEGA', 1, 'N/A', 2000, 906, 1),
(870, 'VRS', 'VRS', 'VRS', 1, 'N/A', 2000, 907, 1),
(871, 'ALC', 'ALC', 'ALC', 1, 'X13', 2000, 908, 1),
(872, 'DOGETH', 'DOGETH', 'DOGETH', 1, 'X11', 2000, 909, 1),
(873, 'KLC', 'KLC', 'KLC', 1, 'Scrypt', 2000, 910, 1),
(874, 'HUSH', 'HUSH', 'HUSH', 1, 'Equihash', 2000, 911, 1),
(875, 'BTLC', 'BTLC', 'BTLC', 1, 'PoS', 2000, 912, 1),
(876, 'DRM8', 'DRM8', 'DRM8', 1, 'Scrypt', 2000, 913, 1),
(877, 'FIST', 'FIST', 'FIST', 1, 'X13', 2000, 914, 1),
(878, 'EBZ', 'EBZ', 'EBZ', 1, 'PoS', 2000, 915, 1),
(879, 'DRS', 'DRS', 'DRS', 1, 'Scrypt', 2000, 917, 1),
(880, 'FGZ', 'FGZ', 'FGZ', 1, 'Scrypt', 2000, 918, 1),
(881, 'BOSON', 'BOSON', 'BOSON', 1, 'X11', 2000, 919, 1),
(882, 'ATX', 'ATX', 'ATX', 1, 'X11', 2000, 920, 1),
(883, 'PNC', 'PNC', 'PNC', 1, 'SHA256', 2000, 921, 1),
(884, 'BRDD', 'BRDD', 'BRDD', 1, 'Scrypt', 2000, 922, 1),
(885, 'TIME', 'TIME', 'TIME', 1, 'N/A', 2000, 923, 1),
(886, 'BIP', 'BIP', 'BIP', 1, 'CryptoNight', 2000, 924, 1),
(887, 'XNC', 'XNC', 'XNC', 1, 'Scrypt', 2000, 925, 1),
(888, 'EMB', 'EMB', 'EMB', 1, 'X13', 2000, 926, 1),
(889, 'BTTF', 'BTTF', 'BTTF', 1, 'PoS', 2000, 927, 1),
(890, 'DLR', 'DLR', 'DLR', 1, 'X11', 2000, 928, 1),
(891, 'CSMIC', 'CSMIC', 'CSMIC', 1, 'SHA256D', 2000, 929, 1),
(892, 'FIRST', 'FIRST', 'FIRST', 1, 'Scrypt', 2000, 930, 1),
(893, 'SCASH', 'SCASH', 'SCASH', 1, 'X13', 2000, 931, 1),
(894, 'XEN', 'XEN', 'XEN', 1, 'X11', 2000, 932, 1),
(895, 'JIO', 'JIO', 'JIO', 1, 'N/A', 2000, 933, 1),
(896, 'IW', 'IW', 'IW', 1, 'X11', 2000, 934, 1),
(897, 'JNS', 'JNS', 'JNS', 1, 'N/A', 2000, 935, 1),
(898, 'TRICK', 'TRICK', 'TRICK', 1, 'PoS', 2000, 936, 1),
(899, 'DCRE', 'DCRE', 'DCRE', 1, 'N/A', 2000, 937, 1),
(900, 'FRE', 'FRE', 'FRE', 1, 'PoS', 2000, 938, 1),
(901, 'NPC', 'NPC', 'NPC', 1, 'SHA256D', 2000, 939, 1),
(902, 'PLNC', 'PLNC', 'PLNC', 1, 'Scrypt', 2000, 940, 1),
(903, 'DGMS', 'DGMS', 'DGMS', 1, 'Scrypt', 2000, 941, 1),
(904, 'ICOB', 'ICOB', 'ICOB', 1, 'Scrypt', 2000, 942, 1),
(905, 'ARCO', 'ARCO', 'ARCO', 1, 'Scrypt', 2000, 943, 1),
(906, 'KURT', 'KURT', 'KURT', 1, 'X11', 2000, 944, 1),
(907, 'XCRE', 'XCRE', 'XCRE', 1, 'PoS', 2000, 945, 1),
(908, 'ENT', 'ENT', 'ENT', 1, 'X11', 2000, 946, 1),
(909, 'UR', 'UR', 'UR', 1, 'Dagger', 2000, 948, 1),
(910, 'MTLM3', 'MTLM3', 'MTLM3', 1, 'Scrypt', 2000, 949, 1),
(911, 'ODNT', 'ODNT', 'ODNT', 1, 'SHA256D', 2000, 950, 1),
(912, 'EUC', 'EUC', 'EUC', 1, 'SHA256', 2000, 951, 1),
(913, 'CCX', 'CCX', 'CCX', 1, 'Scrypt', 2000, 952, 1),
(914, 'BCF', 'BCF', 'BCF', 1, 'Scrypt', 2000, 953, 1),
(915, 'SEEDS', 'SEEDS', 'SEEDS', 1, 'SHA256D', 2000, 954, 1),
(916, 'POSW', 'POSW', 'POSW', 1, 'Scrypt', 2000, 955, 1),
(917, 'TKS', 'TKS', 'TKS', 1, 'N/A', 2000, 956, 1),
(918, 'BCCOIN', 'BCCOIN', 'BCCOIN', 1, 'Scrypt', 2000, 957, 1),
(919, 'SHORTY', 'SHORTY', 'SHORTY', 1, 'PoS', 2000, 959, 1),
(920, 'PCM', 'PCM', 'PCM', 1, 'Scrypt', 2000, 960, 1),
(921, 'KC', 'KC', 'KC', 1, 'SHA256', 2000, 961, 1),
(922, 'CORAL', 'CORAL', 'CORAL', 1, 'X13', 2000, 962, 1),
(923, 'BamitCoin', 'BAM', 'BamitCoin', 1, 'X11', 2000, 963, 1),
(924, 'NXC', 'NXC', 'NXC', 1, 'N/A', 2000, 964, 1),
(925, 'MONEY', 'MONEY', 'MONEY', 1, 'Scrypt', 2000, 965, 1),
(926, 'BSTAR', 'BSTAR', 'BSTAR', 1, 'X11', 2000, 966, 1),
(927, 'HSP', 'HSP', 'HSP', 1, 'Scrypt', 2000, 967, 1),
(928, 'HZT', 'HZT', 'HZT', 1, 'Scrypt', 2000, 968, 1),
(929, 'XSP', 'XSP', 'XSP', 1, 'X13', 2000, 970, 1),
(930, 'BULLS', 'BULLS', 'BULLS', 1, 'Scrypt', 2000, 972, 1),
(931, 'INCNT', 'INCNT', 'INCNT', 1, 'N/A', 2000, 973, 1),
(932, 'ICON', 'ICON', 'ICON', 1, 'PoS', 2000, 974, 1),
(933, 'NIC', 'NIC', 'NIC', 1, 'PoS', 2000, 975, 1),
(934, 'ACN', 'ACN', 'ACN', 1, 'PoS', 2000, 976, 1),
(935, 'XNG', 'XNG', 'XNG', 1, 'X11', 2000, 977, 1),
(936, 'XCI', 'XCI', 'XCI', 1, 'CryptoNight', 2000, 978, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES
(937, 'LOOK', 'LOOK', 'LOOK', 1, 'X11', 2000, 979, 1),
(938, 'LOC', 'LOC', 'LOC', 1, 'Quark', 2000, 980, 1),
(939, 'MMXVI', 'MMXVI', 'MMXVI', 1, 'N/A', 2000, 981, 1),
(940, 'TRST', 'TRST', 'TRST', 1, 'N/A', 2000, 983, 1),
(941, 'MIS', 'MIS', 'MIS', 1, 'X11', 2000, 984, 1),
(942, 'WOP', 'WOP', 'WOP', 1, 'X11', 2000, 985, 1),
(943, 'CQST', 'CQST', 'CQST', 1, 'X13', 2000, 986, 1),
(944, 'IMPS', 'IMPS', 'IMPS', 1, 'X13', 2000, 987, 1),
(945, 'IN', 'IN', 'IN', 1, 'X11', 2000, 988, 1),
(946, 'CHIEF', 'CHIEF', 'CHIEF', 1, 'Scrypt', 2000, 989, 1),
(947, 'GOAT', 'GOAT', 'GOAT', 1, 'Scrypt', 2000, 990, 1),
(948, 'ANAL', 'ANAL', 'ANAL', 1, 'SHA256', 2000, 991, 1),
(949, 'RC', 'RC', 'RC', 1, 'Scrypt', 2000, 992, 1),
(950, 'PND', 'PND', 'PND', 1, 'Scrypt', 2000, 993, 1),
(951, 'PX', 'PX', 'PX', 1, 'SHA256', 2000, 994, 1),
(952, 'CND*', 'CND*', 'CND*', 1, 'Scrypt', 2000, 995, 1),
(953, 'OPTION', 'OPTION', 'OPTION', 1, 'X11', 2000, 996, 1),
(954, 'AV', 'AV', 'AV', 1, 'PoS', 2000, 997, 1),
(955, 'LTD', 'LTD', 'LTD', 1, 'PoS', 2000, 998, 1),
(956, 'UNITS', 'UNITS', 'UNITS', 1, 'Scrypt', 2000, 999, 1),
(957, 'HEEL', 'HEEL', 'HEEL', 1, 'PoS', 2000, 1000, 1),
(958, 'GAKH', 'GAKH', 'GAKH', 1, 'Scrypt', 2000, 1001, 1),
(959, 'SHIFT', 'SHIFT', 'SHIFT', 1, 'DPoS', 2000, 1003, 1),
(960, 'S8C', 'S8C', 'S8C', 1, 'Scrypt', 2000, 1004, 1),
(961, 'LVG', 'LVG', 'LVG', 1, 'N/A', 2000, 1005, 1),
(962, 'DRA', 'DRA', 'DRA', 1, 'Scrypt', 2000, 1006, 1),
(963, 'ASAFE2', 'ASAFE2', 'ASAFE2', 1, 'Scrypt', 2000, 1007, 1),
(964, 'LTCR', 'LTCR', 'LTCR', 1, 'QuBit', 2000, 1008, 1),
(965, 'QBC', 'QBC', 'QBC', 1, 'X11', 2000, 1009, 1),
(966, 'XPRO', 'XPRO', 'XPRO', 1, 'X15', 2000, 1010, 1),
(967, 'AST*', 'AST*', 'AST*', 1, 'X13', 2000, 1011, 1),
(968, 'GIFT', 'GIFT', 'GIFT', 1, 'X13', 2000, 1012, 1),
(969, 'VIDZ', 'VIDZ', 'VIDZ', 1, 'PoS', 2000, 1013, 1),
(970, 'INC', 'INC', 'INC', 1, 'PoS', 2000, 1014, 1),
(971, 'PTA', 'PTA', 'PTA', 1, 'SHA256', 2000, 1015, 1),
(972, 'ACID', 'ACID', 'ACID', 1, 'SHA256', 2000, 1016, 1),
(973, 'ZLQ', 'ZLQ', 'ZLQ', 1, 'QuBit', 2000, 1017, 1),
(974, 'RADI', 'RADI', 'RADI', 1, 'X13', 2000, 1018, 1),
(975, 'RNC', 'RNC', 'RNC', 1, 'X11', 2000, 1019, 1),
(976, 'GOLOS', 'GOLOS', 'GOLOS', 1, 'N/A', 2000, 1020, 1),
(977, 'PASC', 'PASC', 'PASC', 1, 'N/A', 2000, 1021, 1),
(978, 'TWIST', 'TWIST', 'TWIST', 1, 'X11', 2000, 1022, 1),
(979, 'PAYP', 'PAYP', 'PAYP', 1, 'X11', 2000, 1023, 1),
(980, 'DETH', 'DETH', 'DETH', 1, 'X11', 2000, 1024, 1),
(981, 'YAY', 'YAY', 'YAY', 1, 'Scrypt', 2000, 1025, 1),
(982, 'YES', 'YES', 'YES', 1, 'Scrypt', 2000, 1027, 1),
(983, 'LENIN', 'LENIN', 'LENIN', 1, 'SHA256D', 2000, 1028, 1),
(984, 'MRSA', 'MRSA', 'MRSA', 1, 'X13', 2000, 1029, 1),
(985, 'OS76', 'OS76', 'OS76', 1, 'Scrypt', 2000, 1030, 1),
(986, 'BOSS', 'BOSS', 'BOSS', 1, 'SHA256', 2000, 1031, 1),
(987, 'MKR', 'MKR', 'MKR', 1, 'N/A', 2000, 1032, 1),
(988, 'BIC', 'BIC', 'BIC', 1, 'CryptoNight', 2000, 1033, 1),
(989, 'CRPS', 'CRPS', 'CRPS', 1, 'X11', 2000, 1034, 1),
(990, 'MOTO', 'MOTO', 'MOTO', 1, 'N/A', 2000, 1035, 1),
(991, 'NTCC', 'NTCC', 'NTCC', 1, 'X11', 2000, 1036, 1),
(992, 'XNC*', 'XNC*', 'XNC*', 1, 'X13', 2000, 1037, 1),
(993, 'HXX', 'HXX', 'HXX', 1, 'Lyra2RE', 2000, 1038, 1),
(994, 'SPKTR', 'SPKTR', 'SPKTR', 1, 'SHA256', 2000, 1039, 1),
(995, 'MAC', 'MAC', 'MAC', 1, 'Time Travel', 2000, 1040, 1),
(996, 'SEL', 'SEL', 'SEL', 1, 'PoS', 2000, 1041, 1),
(997, 'NOO', 'NOO', 'NOO', 1, 'PoS', 2000, 1042, 1),
(998, 'CHAO', 'CHAO', 'CHAO', 1, 'SHA256D', 2000, 1043, 1),
(999, 'XGB', 'XGB', 'XGB', 1, 'X13', 2000, 1044, 1),
(1000, 'YMC', 'YMC', 'YMC', 1, 'Scrypt', 2000, 1045, 1),
(1001, 'JOK', 'JOK', 'JOK', 1, 'Scrypt', 2000, 1046, 1),
(1002, 'GBIT', 'GBIT', 'GBIT', 1, 'Scrypt', 2000, 1047, 1),
(1003, 'TEC', 'TEC', 'TEC', 1, 'Multiple', 2000, 1048, 1),
(1004, 'BOMB', 'BOMB', 'BOMB', 1, 'Scrypt', 2000, 1049, 1),
(1005, 'RIDE', 'RIDE', 'RIDE', 1, 'PoS', 2000, 1050, 1),
(1006, 'PIVX', 'PIVX', 'PIVX', 1, 'Quark', 2000, 1051, 1),
(1007, 'KED', 'KED', 'KED', 1, 'Scrypt', 2000, 1052, 1),
(1008, 'CNO', 'CNO', 'CNO', 1, 'Scrypt', 2000, 1053, 1),
(1009, 'WEALTH', 'WEALTH', 'WEALTH', 1, 'DPoS', 2000, 1054, 1),
(1010, 'XSPEC', 'XSPEC', 'XSPEC', 1, 'POS 3.0', 2000, 1056, 1),
(1011, 'PEPECASH', 'PEPECASH', 'PEPECASH', 1, 'N/A', 2000, 1057, 1),
(1012, 'CLICK', 'CLICK', 'CLICK', 1, 'PoS', 2000, 1058, 1),
(1013, 'ELS', 'ELS', 'ELS', 1, 'Scrypt', 2000, 1059, 1),
(1014, 'KUSH', 'KUSH', 'KUSH', 1, 'X11', 2000, 1060, 1),
(1015, 'ERY', 'ERY', 'ERY', 1, 'X11', 2000, 1061, 1),
(1016, 'PRES', 'PRES', 'PRES', 1, 'N/A', 2000, 1063, 1),
(1017, 'BTZ', 'BTZ', 'BTZ', 1, 'X11', 2000, 1064, 1),
(1018, 'OPES', 'OPES', 'OPES', 1, 'Argon2', 2000, 1065, 1),
(1019, 'WCT', 'WCT', 'WCT', 1, 'N/A', 2000, 1066, 1),
(1020, 'UBQ', 'UBQ', 'UBQ', 1, 'Dagger-Hashimoto', 2000, 1067, 1),
(1021, 'RATIO', 'RATIO', 'RATIO', 1, 'PoS', 2000, 1068, 1),
(1022, 'BAN', 'BAN', 'BAN', 1, 'PoS', 2000, 1069, 1),
(1023, 'NICE', 'NICE', 'NICE', 1, 'Scrypt', 2000, 1070, 1),
(1024, 'SMF', 'SMF', 'SMF', 1, 'Scrypt', 2000, 1071, 1),
(1025, 'CWXT', 'CWXT', 'CWXT', 1, 'N/A', 2000, 1072, 1),
(1026, 'TECH', 'TECH', 'TECH', 1, 'X13', 2000, 1073, 1),
(1027, 'CIR', 'CIR', 'CIR', 1, 'SHA256D', 2000, 1074, 1),
(1028, 'LEPEN', 'LEPEN', 'LEPEN', 1, 'SHA256', 2000, 1075, 1),
(1029, 'ROUND', 'ROUND', 'ROUND', 1, 'N/A', 2000, 1076, 1),
(1030, 'MAR', 'MAR', 'MAR', 1, 'X11', 2000, 1077, 1),
(1031, 'MARX', 'MARX', 'MARX', 1, 'X11', 2000, 1078, 1),
(1032, 'TAT', 'TAT', 'TAT', 1, 'N/A', 2000, 1079, 1),
(1033, 'HAZE', 'HAZE', 'HAZE', 1, 'Scrypt', 2000, 1080, 1),
(1034, 'PRX', 'PRX', 'PRX', 1, 'Scrypt', 2000, 1081, 1),
(1035, 'NRC', 'NRC', 'NRC', 1, 'PoS', 2000, 1082, 1),
(1036, 'PAC', 'PAC', 'PAC', 1, 'SHA256D', 2000, 1083, 1),
(1037, 'IMPCH', 'IMPCH', 'IMPCH', 1, 'Scrypt', 2000, 1084, 1),
(1038, 'ERR', 'ERR', 'ERR', 1, 'Scrypt', 2000, 1085, 1),
(1039, 'TIC', 'TIC', 'TIC', 1, 'Scrypt', 2000, 1086, 1),
(1040, 'NUKE', 'NUKE', 'NUKE', 1, 'PoS', 2000, 1087, 1),
(1041, 'EOC', 'EOC', 'EOC', 1, 'Scrypt', 2000, 1088, 1),
(1042, 'SFC', 'SFC', 'SFC', 1, 'Scrypt', 2000, 1089, 1),
(1043, 'JANE', 'JANE', 'JANE', 1, 'X11', 2000, 1090, 1),
(1044, 'PARA', 'PARA', 'PARA', 1, 'Scrypt', 2000, 1091, 1),
(1045, 'MM', 'MM', 'MM', 1, 'X11', 2000, 1092, 1),
(1046, 'BXC', 'BXC', 'BXC', 1, 'CryptoNight', 2000, 1093, 1),
(1047, 'NDOGE', 'NDOGE', 'NDOGE', 1, 'X11', 2000, 1094, 1),
(1048, 'ZBC', 'ZBC', 'ZBC', 1, 'Scrypt', 2000, 1095, 1),
(1049, 'MLN', 'MLN', 'MLN', 1, 'N/A', 2000, 1096, 1),
(1050, 'FRST', 'FRST', 'FRST', 1, 'Scrypt', 2000, 1097, 1),
(1051, 'PAY', 'PAY', 'PAY', 1, 'N/A', 2000, 1098, 1),
(1052, 'ORO', 'ORO', 'ORO', 1, 'Scrypt', 2000, 1099, 1),
(1053, 'ALEX', 'ALEX', 'ALEX', 1, 'SHA256', 2000, 1100, 1),
(1054, 'TBCX', 'TBCX', 'TBCX', 1, 'SHA256D', 2000, 1101, 1),
(1055, 'MCAR', 'MCAR', 'MCAR', 1, 'Scrypt', 2000, 1102, 1),
(1056, 'THS', 'THS', 'THS', 1, 'DPoS', 2000, 1103, 1),
(1057, 'ACES', 'ACES', 'ACES', 1, 'X13', 2000, 1104, 1),
(1058, 'UAEC', 'UAEC', 'UAEC', 1, 'X11', 2000, 1105, 1),
(1059, 'EA', 'EA', 'EA', 1, 'SHA256', 2000, 1106, 1),
(1060, 'PIE', 'PIE', 'PIE', 1, 'PoS', 2000, 1107, 1),
(1061, 'CREA', 'CREA', 'CREA', 1, 'Keccak', 2000, 1109, 1),
(1062, 'WISC', 'WISC', 'WISC', 1, 'Scrypt', 2000, 1110, 1),
(1063, 'BVC', 'BVC', 'BVC', 1, 'Scrypt', 2000, 1111, 1),
(1064, 'FIND', 'FIND', 'FIND', 1, 'X13', 2000, 1112, 1),
(1065, 'MLITE', 'MLITE', 'MLITE', 1, 'SHA256D', 2000, 1113, 1),
(1066, 'STALIN', 'STALIN', 'STALIN', 1, 'X11', 2000, 1114, 1),
(1067, 'TSE', 'TSE', 'TSE', 1, 'Scrypt', 2000, 1115, 1),
(1068, 'VLTC', 'VLTC', 'VLTC', 1, 'X11', 2000, 1116, 1),
(1069, 'BIOB', 'BIOB', 'BIOB', 1, 'SHA256D', 2000, 1117, 1),
(1070, 'SWT', 'SWT', 'SWT', 1, 'N/A', 2000, 1118, 1),
(1071, 'PASL', 'PASL', 'PASL', 1, 'SHA256', 2000, 1119, 1),
(1072, 'CHAT', 'CHAT', 'CHAT', 1, 'Scrypt', 2000, 1123, 1),
(1073, 'CDN', 'CDN', 'CDN', 1, 'Scrypt', 2000, 1124, 1),
(1074, 'TPAY', 'TPAY', 'TPAY', 1, 'Scrypt', 2000, 1125, 1),
(1075, 'NETKO', 'NETKO', 'NETKO', 1, 'Blake', 2000, 1126, 1),
(1076, 'HONEY', 'HONEY', 'HONEY', 1, 'Blake2S', 2000, 1128, 1),
(1077, 'MXT', 'MXT', 'MXT', 1, 'X13', 2000, 1129, 1),
(1078, 'MUSIC', 'MUSIC', 'MUSIC', 1, 'Ethash', 2000, 1130, 1),
(1079, 'DTB', 'DTB', 'DTB', 1, 'N/A', 2000, 1131, 1),
(1080, 'VEG', 'VEG', 'VEG', 1, 'PoS', 2000, 1132, 1),
(1081, 'MBIT', 'MBIT', 'MBIT', 1, 'Scrypt', 2000, 1133, 1),
(1082, 'VOLT', 'VOLT', 'VOLT', 1, 'PoS', 2000, 1134, 1),
(1083, 'MGO', 'MGO', 'MGO', 1, 'N/A', 2000, 1135, 1),
(1084, 'EDG', 'EDG', 'EDG', 1, 'N/A', 2000, 1136, 1),
(1085, 'B@', 'B@', 'B@', 1, 'N/A', 2000, 1137, 1),
(1086, 'BEST', 'BEST', 'BEST', 1, 'Scrypt', 2000, 1138, 1),
(1087, 'CHC', 'CHC', 'CHC', 1, 'N/A', 2000, 1139, 1),
(1088, 'ZENI', 'ZENI', 'ZENI', 1, 'Scrypt', 2000, 1140, 1),
(1089, 'PLANET', 'PLANET', 'PLANET', 1, 'Scrypt', 2000, 1141, 1),
(1090, 'DUCK', 'DUCK', 'DUCK', 1, 'Scrypt', 2000, 1142, 1),
(1091, 'BNX', 'BNX', 'BNX', 1, 'X11', 2000, 1143, 1),
(1092, 'BSTK', 'BSTK', 'BSTK', 1, 'PoS', 2000, 1144, 1),
(1093, 'RNS', 'RNS', 'RNS', 1, 'Scrypt', 2000, 1145, 1),
(1094, 'DBIX', 'DBIX', 'DBIX', 1, 'Dagger-Hashimoto', 2000, 1146, 1),
(1095, 'AMIS', 'AMIS', 'AMIS', 1, 'N/A', 2000, 1147, 1),
(1096, 'KAYI', 'KAYI', 'KAYI', 1, 'N/A', 2000, 1148, 1),
(1097, 'XVP', 'XVP', 'XVP', 1, 'X11', 2000, 1149, 1),
(1098, 'BOAT', 'BOAT', 'BOAT', 1, 'HMQ1725', 2000, 1150, 1),
(1099, 'TAJ', 'TAJ', 'TAJ', 1, 'Blake2S', 2000, 1151, 1),
(1100, 'IMX', 'IMX', 'IMX', 1, 'X11', 2000, 1152, 1),
(1101, 'CJC', 'CJC', 'CJC', 1, 'PoS', 2000, 1153, 1),
(1102, 'AMY', 'AMY', 'AMY', 1, 'Scrypt', 2000, 1154, 1),
(1103, 'QBT', 'QBT', 'QBT', 1, 'SHA256', 2000, 1155, 1),
(1104, 'SRC*', 'SRC*', 'SRC*', 1, 'N/A', 2000, 1156, 1),
(1105, 'EB3', 'EB3', 'EB3', 1, 'Scrypt', 2000, 1157, 1),
(1106, 'XVE', 'XVE', 'XVE', 1, 'PoS', 2000, 1158, 1),
(1107, 'FAZZ', 'FAZZ', 'FAZZ', 1, 'PoS', 2000, 1159, 1),
(1108, 'APT', 'APT', 'APT', 1, 'Scrypt-n', 2000, 1160, 1),
(1109, 'BLAZR', 'BLAZR', 'BLAZR', 1, 'Scrypt', 2000, 1161, 1),
(1110, 'ARPA', 'ARPA', 'ARPA', 1, 'SHA256D', 2000, 1162, 1),
(1111, 'BNB*', 'BNB*', 'BNB*', 1, 'X11', 2000, 1163, 1),
(1112, 'UNI', 'UNI', 'UNI', 1, 'Scrypt', 2000, 1164, 1),
(1113, 'ECO', 'ECO', 'ECO', 1, 'Scrypt', 2000, 1165, 1),
(1114, 'XLR', 'XLR', 'XLR', 1, 'XEVAN', 2000, 1166, 1),
(1115, 'DARK', 'DARK', 'DARK', 1, 'SHA256', 2000, 1167, 1),
(1116, 'DON', 'DON', 'DON', 1, 'Scrypt', 2000, 1168, 1),
(1117, 'MER', 'MER', 'MER', 1, 'N/A', 2000, 1169, 1),
(1118, 'WGO', 'WGO', 'WGO', 1, 'N/A', 2000, 1170, 1),
(1119, 'RLC', 'RLC', 'RLC', 1, 'N/A', 2000, 1171, 1),
(1120, 'ATMS', 'ATMS', 'ATMS', 1, 'PoS', 2000, 1172, 1),
(1121, 'INPAY', 'INPAY', 'INPAY', 1, 'N/A', 2000, 1173, 1),
(1122, 'ETT', 'ETT', 'ETT', 1, 'N/A', 2000, 1174, 1),
(1123, 'WBTC*', 'WBTC*', 'WBTC*', 1, 'N/A', 2000, 1175, 1),
(1124, 'VISIO', 'VISIO', 'VISIO', 1, 'X13', 2000, 1176, 1),
(1125, 'HPC', 'HPC', 'HPC', 1, 'X11', 2000, 1177, 1),
(1126, 'GOT', 'GOT', 'GOT', 1, 'Scrypt', 2000, 1178, 1),
(1127, 'CXT', 'CXT', 'CXT', 1, 'NIST5', 2000, 1179, 1),
(1128, 'EMPC', 'EMPC', 'EMPC', 1, 'X11', 2000, 1180, 1),
(1129, 'GNO', 'GNO', 'GNO', 1, 'N/A', 2000, 1181, 1),
(1130, 'LGD', 'LGD', 'LGD', 1, 'N/A', 2000, 1182, 1),
(1131, 'TAAS', 'TAAS', 'TAAS', 1, 'N/A', 2000, 1183, 1),
(1132, 'BUCKS', 'BUCKS', 'BUCKS', 1, 'Scrypt', 2000, 1184, 1),
(1133, 'XBY', 'XBY', 'XBY', 1, 'N/A', 2000, 1185, 1),
(1134, 'GUP', 'GUP', 'GUP', 1, 'N/A', 2000, 1186, 1),
(1135, 'MCRN', 'MCRN', 'MCRN', 1, 'PoS', 2000, 1187, 1),
(1136, 'LUN', 'LUN', 'LUN', 1, 'N/A', 2000, 1188, 1),
(1137, 'RAIN', 'RAIN', 'RAIN', 1, 'X11', 2000, 1189, 1),
(1138, 'WSX', 'WSX', 'WSX', 1, 'X11', 2000, 1190, 1),
(1139, 'IEC', 'IEC', 'IEC', 1, 'Scrypt', 2000, 1191, 1),
(1140, 'IMS', 'IMS', 'IMS', 1, 'Scrypt', 2000, 1192, 1),
(1141, 'ARGUS', 'ARGUS', 'ARGUS', 1, 'Scrypt', 2000, 1194, 1),
(1142, 'CNT', 'CNT', 'CNT', 1, 'X11', 2000, 1195, 1),
(1143, 'LMC', 'LMC', 'LMC', 1, 'Scrypt', 2000, 1196, 1),
(1144, 'TKN', 'TKN', 'TKN', 1, 'N/A', 2000, 1197, 1),
(1145, 'BTCS', 'BTCS', 'BTCS', 1, 'Scrypt', 2000, 1198, 1),
(1146, 'PROC', 'PROC', 'PROC', 1, 'SHA256', 2000, 1199, 1),
(1147, 'XGR', 'XGR', 'XGR', 1, 'X11', 2000, 1200, 1),
(1148, 'WRC*', 'WRC*', 'WRC*', 1, 'Scrypt', 2000, 1201, 1),
(1149, 'BENJI', 'BENJI', 'BENJI', 1, 'Scrypt', 2000, 1202, 1),
(1150, 'HMQ', 'HMQ', 'HMQ', 1, 'N/A', 2000, 1203, 1),
(1151, 'BCAP', 'BCAP', 'BCAP', 1, 'N/A', 2000, 1204, 1),
(1152, 'DUO', 'DUO', 'DUO', 1, 'Scrypt', 2000, 1205, 1),
(1153, 'RBX', 'RBX', 'RBX', 1, 'N/A', 2000, 1206, 1),
(1154, 'GRW', 'GRW', 'GRW', 1, 'Scrypt', 2000, 1207, 1),
(1155, 'APX', 'APX', 'APX', 1, 'N/A', 2000, 1208, 1),
(1156, 'MILO', 'MILO', 'MILO', 1, 'Scrypt', 2000, 1209, 1),
(1157, 'OLV', 'OLV', 'OLV', 1, 'Scrypt', 2000, 1210, 1),
(1158, 'ILC', 'ILC', 'ILC', 1, 'SHA256', 2000, 1211, 1),
(1159, 'MRT', 'MRT', 'MRT', 1, 'N/A', 2000, 1212, 1),
(1160, 'IOU', 'IOU', 'IOU', 1, 'N/A', 2000, 1213, 1),
(1161, 'PZM', 'PZM', 'PZM', 1, 'SHA256', 2000, 1214, 1),
(1162, 'PHR', 'PHR', 'PHR', 1, 'PoS', 2000, 1215, 1),
(1163, 'ANT', 'ANT', 'ANT', 1, 'N/A', 2000, 1216, 1),
(1164, 'PUPA', 'PUPA', 'PUPA', 1, 'Blake2S', 2000, 1217, 1),
(1165, 'RICE', 'RICE', 'RICE', 1, 'X13', 2000, 1218, 1),
(1166, 'XCT', 'XCT', 'XCT', 1, 'SHA256', 2000, 1219, 1),
(1167, 'RED', 'RED', 'RED', 1, 'Scrypt', 2000, 1221, 1),
(1168, 'ZSE', 'ZSE', 'ZSE', 1, 'X11', 2000, 1222, 1),
(1169, 'CTIC', 'CTIC', 'CTIC', 1, 'N/A', 2000, 1223, 1),
(1170, 'TAP', 'TAP', 'TAP', 1, 'X11', 2000, 1224, 1),
(1171, 'BITOK', 'BITOK', 'BITOK', 1, 'Scrypt', 2000, 1225, 1),
(1172, 'PBT', 'PBT', 'PBT', 1, 'N/A', 2000, 1226, 1),
(1173, 'MUU', 'MUU', 'MUU', 1, 'SHA256', 2000, 1227, 1),
(1174, 'INF8', 'INF8', 'INF8', 1, 'HybridScryptHash256', 2000, 1228, 1),
(1175, 'HTML5', 'HTML5', 'HTML5', 1, 'X15', 2000, 1229, 1),
(1176, 'MNE', 'MNE', 'MNE', 1, 'N/A', 2000, 1230, 1),
(1177, 'DICE', 'DICE', 'DICE', 1, 'N/A', 2000, 1231, 1),
(1178, 'SUB*', 'SUB*', 'SUB*', 1, 'PoS', 2000, 1232, 1),
(1179, 'USC', 'USC', 'USC', 1, 'SHA256', 2000, 1233, 1),
(1180, 'DUX', 'DUX', 'DUX', 1, 'Scrypt', 2000, 1234, 1),
(1181, 'XPS', 'XPS', 'XPS', 1, 'Scrypt', 2000, 1235, 1),
(1182, 'EQT', 'EQT', 'EQT', 1, 'Scrypt', 2000, 1236, 1),
(1183, 'INSN', 'INSN', 'INSN', 1, 'X11', 2000, 1237, 1),
(1184, 'BAT', 'BAT', 'BAT', 1, '', 2000, 1238, 1),
(1185, 'MAT*', 'MAT*', 'MAT*', 1, 'Scrypt', 2000, 1239, 1),
(1186, 'F16', 'F16', 'F16', 1, 'Scrypt', 2000, 1240, 1),
(1187, 'HAMS', 'HAMS', 'HAMS', 1, 'Scrypt', 2000, 1241, 1),
(1188, 'QTUM', 'QTUM', 'QTUM', 1, 'POS 3.0', 2000, 1242, 1),
(1189, 'NEF', 'NEF', 'NEF', 1, 'Scrypt', 2000, 1243, 1),
(1190, 'BOS', 'BOS', 'BOS', 1, 'N/A', 2000, 1245, 1),
(1191, 'QWARK', 'QWARK', 'QWARK', 1, 'N/A', 2000, 1246, 1),
(1192, 'IOT', 'IOT', 'IOT', 1, '', 2000, 1247, 1),
(1193, 'QRL', 'QRL', 'QRL', 1, 'N/A', 2000, 1248, 1),
(1194, 'ADL', 'ADL', 'ADL', 1, 'N/A', 2000, 1249, 1),
(1195, 'ECC*', 'ECC*', 'ECC*', 1, 'Scrypt', 2000, 1250, 1),
(1196, 'PTOY', 'PTOY', 'PTOY', 1, 'N/A', 2000, 1251, 1),
(1197, 'ZRC', 'ZRC', 'ZRC', 1, 'N/A', 2000, 1252, 1),
(1198, 'LKK', 'LKK', 'LKK', 1, 'N/A', 2000, 1253, 1),
(1199, 'ESP', 'ESP', 'ESP', 1, 'HMQ1725', 2000, 1254, 1),
(1200, 'MAD', 'MAD', 'MAD', 1, 'PoS', 2000, 1255, 1),
(1201, 'DYN', 'DYN', 'DYN', 1, 'Argon2', 2000, 1256, 1),
(1202, 'SEQ', 'SEQ', 'SEQ', 1, 'Scrypt', 2000, 1257, 1),
(1203, 'MCAP', 'MCAP', 'MCAP', 1, 'N/A', 2000, 1258, 1),
(1204, 'MYST', 'MYST', 'MYST', 1, 'N/A', 2000, 1259, 1),
(1205, 'VERI', 'VERI', 'VERI', 1, 'N/A', 2000, 1260, 1),
(1206, 'SNM', 'SNM', 'SNM', 1, 'N/A', 2000, 1261, 1),
(1207, 'SKY', 'SKY', 'SKY', 1, 'N/A', 2000, 1262, 1),
(1208, 'CFI', 'CFI', 'CFI', 1, 'N/A', 2000, 1263, 1),
(1209, 'SNT', 'SNT', 'SNT', 1, '', 2000, 1252, 1),
(1210, 'AVT', 'AVT', 'AVT', 1, 'N/A', 2000, 1265, 1),
(1211, 'CVC', 'CVC', 'CVC', 1, 'N/A', 2000, 1266, 1),
(1212, 'IXT', 'IXT', 'IXT', 1, 'N/A', 2000, 1267, 1),
(1213, 'DENT', 'DENT', 'DENT', 1, 'N/A', 2000, 1268, 1),
(1214, 'BQX', 'ETHOS', 'BQX', 1, 'N/A', 2000, 1269, 1),
(1215, 'STA', 'STA', 'STA', 1, 'N/A', 2000, 1270, 1),
(1216, 'TFL', 'TFL', 'TFL', 1, 'N/A', 2000, 1271, 1),
(1217, 'EFYT', 'EFYT', 'EFYT', 1, 'N/A', 2000, 1272, 1),
(1218, 'XTZ', 'XTZ', 'XTZ', 1, 'N/A', 2000, 1273, 1),
(1219, 'MCO', 'MCO', 'MCO', 1, 'N/A', 2000, 1275, 1),
(1220, 'NMR', 'NMR', 'NMR', 1, 'N/A', 2000, 1276, 1),
(1221, 'ADX', 'ADX', 'ADX', 1, 'N/A', 2000, 1277, 1),
(1222, 'QAU', 'QAU', 'QAU', 1, 'N/A', 2000, 1278, 1),
(1223, 'ECOB', 'ECOB', 'ECOB', 1, 'N/A', 2000, 1279, 1),
(1224, 'PLBT', 'PLBT', 'PLBT', 1, 'N/A', 2000, 1280, 1),
(1225, 'USDT', 'USDT', 'USDT', 1, 'N/A', 2000, 1281, 1),
(1226, 'XRB', 'XRB', 'XRB', 1, 'Blake2b', 2000, 1282, 1),
(1227, 'AHT', 'AHT', 'AHT', 1, 'Ethash', 2000, 1283, 1),
(1228, 'ATB', 'ATB', 'ATB', 1, 'SHA256', 2000, 1284, 1),
(1229, 'TIX', 'TIX', 'TIX', 1, 'N/A', 2000, 1285, 1),
(1230, 'CMP', 'CMP', 'CMP', 1, 'N/A', 2000, 1287, 1),
(1231, 'RVT', 'RVT', 'RVT', 1, 'N/A', 2000, 1288, 1),
(1232, 'HRB', 'HRB', 'HRB', 1, 'N/A', 2000, 1289, 1),
(1233, 'NET*', 'NET*', 'NET*', 1, 'N/A', 2000, 1290, 1),
(1234, '8BT', '8BT', '8BT', 1, 'N/A', 2000, 1291, 1),
(1235, 'ACT', 'ACT', 'ACT', 1, 'N/A', 2000, 1293, 1),
(1236, 'DNT', 'DNT', 'DNT', 1, 'N/A', 2000, 1294, 1),
(1237, 'SUR', 'SUR', 'SUR', 1, 'N/A', 2000, 1295, 1),
(1238, 'PING', 'PING', 'PING', 1, 'N/A', 2000, 1296, 1),
(1239, 'MIV', 'MIV', 'MIV', 1, 'Scrypt', 2000, 1297, 1),
(1240, 'BET*', 'BET*', 'BET*', 1, 'N/A', 2000, 1298, 1),
(1241, 'SAN', 'SAN', 'SAN', 1, 'N/A', 2000, 1299, 1),
(1242, 'KIN', 'KIN', 'KIN', 1, 'N/A', 2000, 1300, 1),
(1243, 'WGR', 'WGR', 'WGR', 1, 'PoS', 2000, 1301, 1),
(1244, 'XEL', 'XEL', 'XEL', 1, 'N/A', 2000, 1302, 1),
(1245, 'NVST', 'NVST', 'NVST', 1, 'N/A', 2000, 1303, 1),
(1246, 'FUN', 'FUN', 'FUN', 1, 'N/A', 2000, 1304, 1),
(1247, 'FUNC', 'FUNC', 'FUNC', 1, 'N/A', 2000, 1305, 1),
(1248, 'PQT', 'PQT', 'PQT', 1, 'N/A', 2000, 1306, 1),
(1249, 'WTT', 'WTT', 'WTT', 1, 'N/A', 2000, 1307, 1),
(1250, 'MTL', 'MTL', 'MTL', 1, 'N/A', 2000, 1308, 1),
(1251, 'HVN', 'HVN', 'HVN', 1, 'N/A', 2000, 1309, 1),
(1252, 'MYB', 'MYB', 'MYB', 1, 'N/A', 2000, 1310, 1),
(1253, 'PPT', 'PPT', 'PPT', 1, 'N/A', 2000, 1311, 1),
(1254, 'SNC', 'SNC', 'SNC', 1, 'N/A', 2000, 1312, 1),
(1255, 'STAR', 'STAR', 'STAR', 1, 'N/A', 2000, 1314, 1),
(1256, 'COR', 'COR', 'COR', 1, 'N/A', 2000, 1316, 1),
(1257, 'XRL', 'XRL', 'XRL', 1, 'N/A', 2000, 1317, 1),
(1258, 'OROC', 'OROC', 'OROC', 1, 'N/A', 2000, 1318, 1),
(1259, 'OAX', 'OAX', 'OAX', 1, 'N/A', 2000, 1319, 1),
(1260, 'MBI', 'MBI', 'MBI', 1, 'N/A', 2000, 1320, 1),
(1261, 'DDF', 'DDF', 'DDF', 1, 'N/A', 2000, 1321, 1),
(1262, 'DIM', 'DIM', 'DIM', 1, 'N/A', 2000, 1322, 1),
(1263, 'DNA', 'DNA', 'DNA', 1, 'N/A', 2000, 1324, 1),
(1264, 'FYN', 'FYN', 'FYN', 1, 'N/A', 2000, 1325, 1),
(1265, 'DCY', 'DCY', 'DCY', 1, 'CryptoNight', 2000, 1327, 1),
(1266, 'CFT', 'CFT', 'CFT', 1, 'N/A', 2000, 1328, 1),
(1267, 'DNR', 'DNR', 'DNR', 1, 'NIST5', 2000, 1329, 1),
(1268, 'DP', 'DP', 'DP', 1, 'X11', 2000, 1330, 1),
(1269, 'VUC', 'VUC', 'VUC', 1, 'NIST5', 2000, 1331, 1),
(1270, 'BTPL', 'BTPL', 'BTPL', 1, 'Skein', 2000, 1332, 1),
(1271, 'UNIFY', 'UNIFY', 'UNIFY', 1, 'Scrypt', 2000, 1333, 1),
(1272, 'IPC', 'IPC', 'IPC', 1, 'NeoScrypt', 2000, 1334, 1),
(1273, 'BRIT', 'BRIT', 'BRIT', 1, 'X13', 2000, 1335, 1),
(1274, 'AMMO', 'AMMO', 'AMMO', 1, 'N/A', 2000, 1336, 1),
(1275, 'SOCC', 'SOCC', 'SOCC', 1, 'Scrypt', 2000, 1337, 1),
(1276, 'MASS', 'MASS', 'MASS', 1, 'N/A', 2000, 1339, 1),
(1277, 'LA', 'LA', 'LA', 1, 'N/A', 2000, 1340, 1),
(1278, 'IML', 'IML', 'IML', 1, 'N/A', 2000, 1341, 1),
(1279, 'STU', 'STU', 'STU', 1, 'N/A', 2000, 1343, 1),
(1280, 'PLR', 'PLR', 'PLR', 1, 'N/A', 2000, 1344, 1),
(1281, 'GUNS', 'GUNS', 'GUNS', 1, 'N/A', 2000, 1345, 1),
(1282, 'IFT', 'IFT', 'IFT', 1, 'N/A', 2000, 1346, 1),
(1283, 'CAT*', 'CAT', 'CAT*', 1, 'N/A', 2000, 1347, 1),
(1284, 'PRO', 'PRO', 'PRO', 1, 'N/A', 2000, 1348, 1),
(1285, 'SYC', 'SYC', 'SYC', 1, 'N/A', 2000, 1349, 1),
(1286, 'IND', 'IND', 'IND', 1, 'N/A', 2000, 1350, 1),
(1287, 'AHT*', 'AHT*', 'AHT*', 1, 'N/A', 2000, 1351, 1),
(1288, 'TRIBE', 'TRIBE', 'TRIBE', 1, 'N/A', 2000, 1352, 1),
(1289, 'ZRX', 'ZRX', 'ZRX', 1, 'N/A', 2000, 1353, 1),
(1290, 'TNT', 'TNT', 'TNT', 1, 'N/A', 2000, 1354, 1),
(1291, 'PRE*', 'PRE*', 'PRE*', 1, 'N/A', 2000, 1355, 1),
(1292, 'COSS', 'COSS', 'COSS', 1, 'N/A', 2000, 1356, 1),
(1293, 'STORM', 'STORM', 'STORM', 1, 'N/A', 2000, 1357, 1),
(1294, 'STORJ', 'STORJ', 'STORJ', 1, 'N/A', 2000, 1360, 1),
(1295, 'SCORE', 'SCORE', 'SCORE', 1, 'Scrypt', 2000, 1361, 1),
(1296, 'OMG', 'OMG', 'OMG', 1, '', 2000, 1362, 1),
(1297, 'OTX', 'OTX', 'OTX', 1, 'X11', 2000, 1364, 1),
(1298, 'EQB', 'EQB', 'EQB', 1, 'N/A', 2000, 1365, 1),
(1299, 'VOISE', 'VOISE', 'VOISE', 1, 'N/A', 2000, 1366, 1),
(1300, 'ETBS', 'ETBS', 'ETBS', 1, 'N/A', 2000, 1367, 1),
(1301, 'CVCOIN', 'CVCOIN', 'CVCOIN', 1, 'N/A', 2000, 1368, 1),
(1302, 'DRP', 'DRP', 'DRP', 1, 'N/A', 2000, 1369, 1),
(1303, 'ARC', 'ARC', 'ARC', 1, 'X11', 2000, 1370, 1),
(1304, 'BOG', 'BOG', 'BOG', 1, 'SHA256', 2000, 1371, 1),
(1305, 'NDC', 'NDC', 'NDC', 1, 'N/A', 2000, 1372, 1),
(1306, 'POE', 'POE', 'POE', 1, 'N/A', 2000, 1373, 1),
(1307, 'ADT', 'ADT', 'ADT', 1, 'N/A', 2000, 1374, 1),
(1308, 'AE', 'AE', 'AE', 1, 'N/A', 2000, 1375, 1),
(1309, 'UET', 'UET', 'UET', 1, 'N/A', 2000, 1376, 1),
(1310, 'PART', 'PART', 'PART', 1, 'PoS', 2000, 1377, 1),
(1311, 'AGRS', 'AGRS', 'AGRS', 1, 'N/A', 2000, 1378, 1),
(1312, 'SAND', 'SAND', 'SAND', 1, 'X11', 2000, 1379, 1),
(1313, 'XAI*', 'XAI*', 'XAI*', 1, 'N/A', 2000, 1380, 1),
(1314, 'DMT', 'DMT', 'DMT', 1, 'N/A', 2000, 1381, 1),
(1315, 'DAS', 'DAS', 'DAS', 1, 'X11', 2000, 1382, 1),
(1316, 'ADST', 'ADST', 'ADST', 1, 'N/A', 2000, 1383, 1),
(1317, 'CAT', 'CAT*', 'CAT', 1, 'N/A', 2000, 1384, 1),
(1318, 'XCJ', 'XCJ', 'XCJ', 1, 'N/A', 2000, 1385, 1),
(1319, 'RKC', 'RKC', 'RKC', 1, 'N/A', 2000, 1386, 1),
(1320, 'NLC2', 'NLC2', 'NLC2', 1, 'PoS', 2000, 1387, 1),
(1321, 'LINDA', 'LINDA', 'LINDA', 1, 'Scrypt', 2000, 1388, 1),
(1322, 'SPN', 'SPN', 'SPN', 1, 'N/A', 2000, 1389, 1),
(1323, 'KING', 'KING', 'KING', 1, 'N/A', 2000, 1390, 1),
(1324, 'ANCP', 'ANCP', 'ANCP', 1, 'N/A', 2000, 1391, 1),
(1325, 'RCC', 'RCC', 'RCC', 1, 'N/A', 2000, 1392, 1),
(1326, 'ROOTS', 'ROOTS', 'ROOTS', 1, 'N/A', 2000, 1393, 1),
(1327, 'SNK', 'SNK', 'SNK', 1, 'N/A', 2000, 1394, 1),
(1328, 'CABS', 'CABS', 'CABS', 1, 'N/A', 2000, 1395, 1),
(1329, 'OPT', 'OPT', 'OPT', 1, 'N/A', 2000, 1396, 1),
(1330, 'ZNT', 'ZNT', 'ZNT', 1, 'N/A', 2000, 1397, 1),
(1331, 'BITSD', 'BITSD', 'BITSD', 1, 'N/A', 2000, 1398, 1),
(1332, 'XLC', 'XLC', 'XLC', 1, 'CryptoNight', 2000, 1399, 1),
(1333, 'SKIN', 'SKIN', 'SKIN', 1, 'N/A', 2000, 1400, 1),
(1334, 'MSP', 'MSP', 'MSP', 1, 'N/A', 2000, 1401, 1),
(1335, 'HIRE', 'HIRE', 'HIRE', 1, 'N/A', 2000, 1402, 1),
(1336, 'BBT*', 'BBT*', 'BBT*', 1, 'N/A', 2000, 1403, 1),
(1337, 'REAL', 'REAL', 'REAL', 1, 'N/A', 2000, 1404, 1),
(1338, 'DFBT', 'DFBT', 'DFBT', 1, 'N/A', 2000, 1405, 1),
(1339, 'EQ', 'EQ', 'EQ', 1, 'N/A', 2000, 1406, 1),
(1340, 'WLK', 'WLK', 'WLK', 1, 'N/A', 2000, 1407, 1),
(1341, 'ONION', 'ONION', 'ONION', 1, 'X13', 2000, 1409, 1),
(1342, 'BTX', 'BTX', 'BTX', 1, 'Time Travel', 2000, 1410, 1),
(1343, 'ICE', 'ICE', 'ICE', 1, 'N/A', 2000, 1411, 1),
(1344, 'XID', 'XID', 'XID', 1, 'N/A', 2000, 1412, 1),
(1345, 'GCN', 'GCN', 'GCN', 1, 'Scrypt', 2000, 1413, 1),
(1346, 'ATOM*', 'ATOM*', 'ATOM*', 1, 'PoS', 2000, 1414, 1),
(1347, 'ICOO', 'ICOO', 'ICOO', 1, 'N/A', 2000, 1416, 1),
(1348, 'TME', 'TME', 'TME', 1, 'N/A', 2000, 1417, 1),
(1349, 'SMART', 'SMART', 'SMART', 1, 'Keccak', 2000, 1418, 1),
(1350, 'SIGT', 'SIGT', 'SIGT', 1, 'SkunkHash v2 Raptor', 2000, 1419, 1),
(1351, 'ONX', 'ONX', 'ONX', 1, 'X11', 2000, 1420, 1),
(1352, 'COE', 'COE', 'COE', 1, 'N/A', 2000, 1421, 1),
(1353, 'ARENA', 'ARENA', 'ARENA', 1, 'N/A', 2000, 1422, 1),
(1354, 'WINK', 'WINK', 'WINK', 1, 'PoS', 2000, 1423, 1),
(1355, 'CRM', 'CRM', 'CRM', 1, 'X11', 2000, 1424, 1),
(1356, 'BCH', 'BCH', 'BCH', 1, '', 2, 1425, 1),
(1357, 'DGPT', 'DGPT', 'DGPT', 1, 'N/A', 2000, 1426, 1),
(1358, 'MOBI', 'MOBI', 'MOBI', 1, 'N/A', 2000, 1427, 1),
(1359, 'CSNO', 'CSNO', 'CSNO', 1, 'N/A', 2000, 1428, 1),
(1360, 'KICK', 'KICK', 'KICK', 1, 'N/A', 2000, 1429, 1),
(1361, 'SDAO', 'SDAO', 'SDAO', 1, 'N/A', 2000, 1430, 1),
(1362, 'STX', 'STX', 'STX', 1, 'N/A', 2000, 1431, 1),
(1363, 'BNB', 'BNB', 'BNB', 1, 'N/A', 2000, 1432, 1),
(1364, 'CORE', 'CORE', 'CORE', 1, 'N/A', 2000, 1433, 1),
(1365, 'KCN', 'KCN', 'KCN', 1, 'N/A', 2000, 1434, 1),
(1366, 'QVT', 'QVT', 'QVT', 1, 'N/A', 2000, 1435, 1),
(1367, 'TIE', 'TIE', 'TIE', 1, 'N/A', 2000, 1436, 1),
(1368, 'AUT', 'AUT', 'AUT', 1, 'N/A', 2000, 1437, 1),
(1369, 'CTT', 'CTT', 'CTT', 1, 'N/A', 2000, 1438, 1),
(1370, 'GRWI', 'GRWI', 'GRWI', 1, 'DPoS', 2000, 1439, 1),
(1371, 'MNY', 'MNY', 'MNY', 1, 'N/A', 2000, 1440, 1),
(1372, 'MTH', 'MTH', 'MTH', 1, 'N/A', 2000, 1441, 1),
(1373, 'CCC', 'CCC', 'CCC', 1, 'N/A', 2000, 1442, 1),
(1374, 'UMC', 'UMC', 'UMC', 1, 'N/A', 2000, 1443, 1),
(1375, 'BMXT', 'BMXT', 'BMXT', 1, 'Scrypt', 2000, 1444, 1),
(1376, 'GAS', 'GAS', 'GAS', 1, 'N/A', 2000, 1445, 1),
(1377, 'FIL', 'FIL', 'FIL', 1, 'N/A', 2000, 1446, 1),
(1378, 'OCL', 'OCL', 'OCL', 1, 'N/A', 2000, 1447, 1),
(1379, 'BNC', 'BNC', 'BNC', 1, 'N/A', 2000, 1448, 1),
(1380, 'TOM', 'TOM', 'TOM', 1, 'N/A', 2000, 1449, 1),
(1381, 'BTM*', 'BTM*', 'BTM*', 1, 'N/A', 2000, 1450, 1),
(1382, 'XAS', 'XAS', 'XAS', 1, 'N/A', 2000, 1451, 1),
(1383, 'SMNX', 'SMNX', 'SMNX', 1, 'N/A', 2000, 1452, 1),
(1384, 'DCN', 'DCN', 'DCN', 1, 'N/A', 2000, 1453, 1),
(1385, 'DLT', 'DLT', 'DLT', 1, 'N/A', 2000, 1454, 1),
(1386, 'MRV', 'MRV', 'MRV', 1, 'N/A', 2000, 1455, 1),
(1387, 'MBRS', 'MBRS', 'MBRS', 1, 'N/A', 2000, 1456, 1),
(1388, 'SUB', 'SUB', 'SUB', 1, 'N/A', 2000, 1457, 1),
(1389, 'MET', 'MET', 'MET', 1, 'N/A', 2000, 1458, 1),
(1390, 'NEBL', 'NEBL', 'NEBL', 1, 'N/A', 2000, 1460, 1),
(1391, 'PGL', 'PGL', 'PGL', 1, 'N/A', 2000, 1461, 1),
(1392, 'AUTH', 'AUTH', 'AUTH', 1, 'N/A', 2000, 1463, 1),
(1393, 'CASH*', 'CASH*', 'CASH*', 1, 'N/A', 2000, 1464, 1),
(1394, 'CMPCO', 'CMPCO', 'CMPCO', 1, 'Scrypt', 2000, 1465, 1),
(1395, 'DTCT', 'DTCT', 'DTCT', 1, 'N/A', 2000, 1466, 1),
(1396, 'CTR', 'CTR', 'CTR', 1, 'N/A', 2000, 1467, 1),
(1397, 'WNET', 'WNET', 'WNET', 1, 'N/A', 2000, 1468, 1),
(1398, 'PRG', 'PRG', 'PRG', 1, 'N/A', 2000, 1469, 1),
(1399, 'THNX', 'THNX', 'THNX', 1, 'N/A', 2000, 1470, 1),
(1400, 'WORM', 'WORM', 'WORM', 1, 'PoS', 2000, 1471, 1),
(1401, 'VNT', 'VNT', 'VNT', 1, 'N/A', 2000, 1473, 1),
(1402, 'SIFT', 'SIFT', 'SIFT', 1, 'N/A', 2000, 1474, 1),
(1403, 'IGNIS', 'IGNIS', 'IGNIS', 1, 'N/A', 2000, 1475, 1),
(1404, 'IWT', 'IWT', 'IWT', 1, 'N/A', 2000, 1476, 1),
(1405, 'JDC', 'JDC', 'JDC', 1, 'N/A', 2000, 1477, 1),
(1406, 'ITT', 'ITT', 'ITT', 1, 'N/A', 2000, 1478, 1),
(1407, 'AIX', 'AIX', 'AIX', 1, 'N/A', 2000, 1483, 1),
(1408, 'EVX', 'EVX', 'EVX', 1, 'N/A', 2000, 1484, 1),
(1409, 'ENTRP', 'ENTRP', 'ENTRP', 1, 'N/A', 2000, 1488, 1),
(1410, 'ICOS', 'ICOS', 'ICOS', 1, 'N/A', 2000, 1490, 1),
(1411, 'PIX', 'PIX', 'PIX', 1, 'N/A', 2000, 1493, 1),
(1412, 'MEDI', 'MEDI', 'MEDI', 1, 'N/A', 2000, 1495, 1),
(1413, 'HGT', 'HGT', 'HGT', 1, 'N/A', 2000, 1496, 1),
(1414, 'LTA', 'LTA', 'LTA', 1, 'N/A', 2000, 1497, 1),
(1415, 'NIMFA', 'NIMFA', 'NIMFA', 1, 'N/A', 2000, 1498, 1),
(1416, 'SCOR', 'SCOR', 'SCOR', 1, 'N/A', 2000, 1499, 1),
(1417, 'MLS', 'MLS', 'MLS', 1, 'N/A', 2000, 1500, 1),
(1418, 'KEX', 'KEX', 'KEX', 1, 'N/A', 2000, 1501, 1),
(1419, 'COB', 'COB', 'COB', 1, 'N/A', 2000, 1502, 1),
(1420, 'BRO', 'BRO', 'BRO', 1, 'PoS', 2000, 1503, 1),
(1421, 'MINEX', 'MINEX', 'MINEX', 1, 'N/A', 2000, 1504, 1),
(1422, 'ATL', 'ATL', 'ATL', 1, 'N/A', 2000, 1505, 1),
(1423, 'ARI*', 'ARI*', 'ARI*', 1, 'N/A', 2000, 1506, 1),
(1424, 'MAG*', 'MAG*', 'MAG*', 1, 'N/A', 2000, 1507, 1),
(1425, 'DFT', 'DFT', 'DFT', 1, 'Scrypt', 2000, 1508, 1),
(1426, 'VEN', 'VEN', 'VEN', 1, 'N/A', 2000, 1509, 1),
(1427, 'UTK', 'UTK', 'UTK', 1, 'N/A', 2000, 1510, 1),
(1428, 'LAT', 'LAT', 'LAT', 1, 'N/A', 2000, 1511, 1),
(1429, 'SOJ', 'SOJ', 'SOJ', 1, 'Scrypt', 2000, 1512, 1),
(1430, 'HDG', 'HDG', 'HDG', 1, 'N/A', 2000, 1513, 1),
(1431, 'STCN', 'STCN', 'STCN', 1, 'PoS', 2000, 1514, 1),
(1432, 'SQP', 'SQP', 'SQP', 1, 'N/A', 2000, 1515, 1),
(1433, 'RIYA', 'RIYA', 'RIYA', 1, 'N/A', 2000, 1516, 1),
(1434, 'LNK', 'LNK', 'LNK', 1, 'N/A', 2000, 1517, 1),
(1435, 'AMB', 'AMB', 'AMB', 1, 'N/A', 2000, 1518, 1),
(1436, 'WAN', 'WAN', 'WAN', 1, 'N/A', 2000, 1519, 1),
(1437, 'MNT', 'MNT', 'MNT', 1, 'N/A', 2000, 1520, 1),
(1438, 'ALTOCAR', 'ALTOCAR', 'ALTOCAR', 1, 'N/A', 2000, 1522, 1),
(1439, 'CFT*', 'CFT*', 'CFT*', 1, 'N/A', 2000, 1523, 1),
(1440, 'BLX', 'BLX', 'BLX', 1, 'N/A', 2000, 1524, 1),
(1441, 'BKX', 'BKX', 'BKX', 1, 'N/A', 2000, 1525, 1),
(1442, 'BOU', 'BOU', 'BOU', 1, 'N/A', 2000, 1526, 1),
(1443, 'OXY', 'OXY', 'OXY', 1, 'DPoS', 2000, 1527, 1),
(1444, 'AMT', 'AMT', 'AMT', 1, 'N/A', 2000, 1529, 1),
(1445, 'GIM', 'GIM', 'GIM', 1, 'N/A', 2000, 1530, 1),
(1446, 'LBTC', 'LBTC', 'LBTC', 1, 'Scrypt', 2000, 1533, 1),
(1447, 'FRAZ', 'FRAZ', 'FRAZ', 1, 'Scrypt', 2000, 1534, 1),
(1448, 'EMT', 'EMT', 'EMT', 1, 'N/A', 2000, 1535, 1),
(1449, 'GXC', 'GXC', 'GXC', 1, 'N/A', 2000, 1536, 1),
(1450, 'HBT', 'HBT', 'HBT', 1, 'N/A', 2000, 1537, 1),
(1451, 'KRONE', 'KRONE', 'KRONE', 1, 'Scrypt', 2000, 1538, 1),
(1452, 'SRT', 'SRT', 'SRT', 1, 'N/A', 2000, 1539, 1),
(1453, 'AVA', 'AVA', 'AVA', 1, 'N/A', 2000, 1540, 1),
(1454, 'BT', 'BT', 'BT', 1, 'N/A', 2000, 1541, 1),
(1455, 'ACC', 'ACC', 'ACC', 1, 'Scrypt', 2000, 1542, 1),
(1456, 'Z2', 'Z2', 'Z2', 1, 'SHA256', 2000, 1544, 1),
(1457, 'LINX', 'LINX', 'LINX', 1, 'Scrypt', 2000, 1545, 1),
(1458, 'XCXT', 'XCXT', 'XCXT', 1, 'Scrypt', 2000, 1546, 1),
(1459, 'BLAS', 'BLAS', 'BLAS', 1, 'Blake2S', 2000, 1547, 1),
(1460, 'GOOD', 'GOOD', 'GOOD', 1, 'Scrypt', 2000, 1548, 1),
(1461, 'TRV', 'TRV', 'TRV', 1, 'N/A', 2000, 1550, 1),
(1462, 'CRTM', 'CRTM', 'CRTM', 1, 'N/A', 2000, 1551, 1),
(1463, 'PST', 'PST', 'PST', 1, 'N/A', 2000, 1553, 1),
(1464, 'MTX', 'MTX', 'MTX', 1, 'N/A', 2000, 1554, 1),
(1465, 'PRIX', 'PRIX', 'PRIX', 1, 'N/A', 2000, 1555, 1),
(1466, 'CTX', 'CTX', 'CTX', 1, 'N/A', 2000, 1556, 1),
(1467, 'ENJ', 'ENJ', 'ENJ', 1, 'N/A', 2000, 1561, 1),
(1468, 'CNX', 'CNX', 'CNX', 1, 'N/A', 2000, 1562, 1),
(1469, 'DRC', 'DRC', 'DRC', 1, 'N/A', 2000, 1563, 1),
(1470, 'FUEL', 'FUEL', 'FUEL', 1, 'N/A', 2000, 1564, 1),
(1471, 'ACE', 'ACE', 'ACE', 1, 'N/A', 2000, 1565, 1),
(1472, 'WRC', 'WRC', 'WRC', 1, 'N/A', 2000, 1566, 1),
(1473, 'WTC', 'WTC', 'WTC', 1, 'Ethash', 2000, 1567, 1),
(1474, 'BRX', 'BRX', 'BRX', 1, 'N/A', 2000, 1568, 1),
(1475, 'UCASH', 'UCASH', 'UCASH', 1, 'N/A', 2000, 1569, 1),
(1476, 'WRT', 'WRT', 'WRT', 1, 'X11', 2000, 1570, 1),
(1477, 'ORME', 'ORME', 'ORME', 1, 'N/A', 2000, 1571, 1),
(1478, 'DEEP', 'DEEP', 'DEEP', 1, 'N/A', 2000, 1572, 1),
(1479, 'TMT', 'TMT', 'TMT', 1, 'N/A', 2000, 1573, 1),
(1480, 'WSH', 'WSH', 'WSH', 1, 'N/A', 2000, 1575, 1),
(1481, 'ARNA*', 'ARNA', 'ARNA*', 1, 'N/A', 2000, 1576, 1),
(1482, 'ABC', 'ABC', 'ABC', 1, 'N/A', 2000, 1577, 1),
(1483, 'PRP', 'PRP', 'PRP', 1, 'N/A', 2000, 1578, 1),
(1484, 'BMC', 'BMC', 'BMC', 1, 'N/A', 2000, 1579, 1),
(1485, 'SKR*', 'SKR*', 'SKR*', 1, 'N/A', 2000, 1580, 1),
(1486, '3DES', '3DES', '3DES', 1, 'N/A', 2000, 1581, 1),
(1487, 'PYN', 'PYN', 'PYN', 1, 'N/A', 2000, 1582, 1),
(1488, 'KAPU', 'KAPU', 'KAPU', 1, 'DPoS', 2000, 1583, 1),
(1489, 'SENSE', 'SENSE', 'SENSE', 1, 'N/A', 2000, 1584, 1),
(1490, 'VEE', 'VEE', 'VEE', 1, 'N/A', 2000, 1586, 1),
(1491, 'FC', 'FC', 'FC', 1, 'N/A', 2000, 1587, 1),
(1492, 'RCN', 'RCN', 'RCN', 1, 'N/A', 2000, 1588, 1),
(1493, 'NRN', 'NRN', 'NRN', 1, 'N/A', 2000, 1589, 1),
(1494, 'EVC', 'EVC', 'EVC', 1, 'N/A', 2000, 1590, 1),
(1495, 'LINK', 'LINK', 'LINK', 1, 'N/A', 2000, 1591, 1),
(1496, 'WIZ', 'WIZ', 'WIZ', 1, 'N/A', 2000, 1592, 1),
(1497, 'EDO', 'EDO', 'EDO', 1, 'N/A', 2000, 1593, 1),
(1498, 'ATKN', 'ATKN', 'ATKN', 1, 'N/A', 2000, 1594, 1),
(1499, 'KNC', 'KNC', 'KNC', 1, 'N/A', 2000, 1595, 1),
(1500, 'RUSTBITS', 'RUSTBITS', 'RUSTBITS', 1, 'N/A', 2000, 1596, 1),
(1501, 'REX', 'REX', 'REX', 1, 'N/A', 2000, 1597, 1),
(1502, 'ETHD', 'ETHD', 'ETHD', 1, 'Scrypt', 2000, 1598, 1),
(1503, 'SUMO', 'SUMO', 'SUMO', 1, 'CryptoNight', 2000, 1599, 1),
(1504, 'TRX', 'TRX', 'TRX', 1, 'N/A', 2000, 1600, 1),
(1505, '8S', '8S', '8S', 1, 'N/A', 2000, 1601, 1),
(1506, 'H2O', 'H2O', 'H2O', 1, 'N/A', 2000, 1602, 1),
(1507, 'TKT', 'TKT', 'TKT', 1, 'N/A', 2000, 1603, 1),
(1508, 'RHEA', 'RHEA', 'RHEA', 1, 'N/A', 2000, 1604, 1),
(1509, 'ART', 'ART', 'ART', 1, 'N/A', 2000, 1605, 1),
(1510, 'DRT', 'DRT', 'DRT', 1, 'N/A', 2000, 1606, 1),
(1511, 'SNOV', 'SNOV', 'SNOV', 1, 'N/A', 2000, 1607, 1),
(1512, 'DTT', 'DTT', 'DTT', 1, 'N/A', 2000, 1608, 1),
(1513, 'MTN', 'MTN', 'MTN', 1, 'N/A', 2000, 1609, 1),
(1514, 'STOCKBET', 'STOCKBET', 'STOCKBET', 1, 'N/A', 2000, 1610, 1),
(1515, 'PLM', 'PLM', 'PLM', 1, 'N/A', 2000, 1611, 1),
(1516, 'SALT', 'SALT', 'SALT', 1, 'N/A', 2000, 1613, 1),
(1517, 'SND', 'SND', 'SND', 1, 'N/A', 2000, 1614, 1),
(1518, 'XP', 'XP', 'XP', 1, 'SHA256', 2000, 1616, 1),
(1519, 'LRC', 'LRC', 'LRC', 1, 'N/A', 2000, 1617, 1),
(1520, 'HSR', 'HSR', 'HSR', 1, 'N/A', 2000, 1618, 1),
(1521, 'GLA', 'GLA', 'GLA', 1, 'N/A', 2000, 1619, 1),
(1522, 'ZNA', 'ZNA', 'ZNA', 1, 'N/A', 2000, 1620, 1),
(1523, 'EZM', 'EZM', 'EZM', 1, 'N/A', 2000, 1621, 1),
(1524, 'ODN', 'ODN', 'ODN', 1, 'SHA-512', 2000, 1622, 1),
(1525, 'POLL', 'POLL', 'POLL', 1, 'N/A', 2000, 1623, 1),
(1526, 'MTK', 'MTK', 'MTK', 1, 'N/A', 2000, 1624, 1),
(1527, 'CAS', 'CAS', 'CAS', 1, 'N/A', 2000, 1625, 1),
(1528, 'MAT', 'MAT', 'MAT', 1, 'N/A', 2000, 1626, 1),
(1529, 'GJC', 'GJC', 'GJC', 1, 'N/A', 2000, 1628, 1),
(1530, 'WIC', 'WIC', 'WIC', 1, 'N/A', 2000, 1629, 1),
(1531, 'WEB', 'WEB', 'WEB', 1, 'N/A', 2000, 1630, 1),
(1532, 'WAND', 'WAND', 'WAND', 1, 'N/A', 2000, 1631, 1),
(1533, 'ELIX', 'ELIX', 'ELIX', 1, 'N/A', 2000, 1632, 1),
(1534, 'HAC', 'HAC', 'HAC', 1, 'N/A', 2000, 1634, 1),
(1535, 'ADA', 'ADA', 'ADA', 1, '', 2000, 1635, 1),
(1536, 'YOYOW', 'YOYOW', 'YOYOW', 1, 'N/A', 2000, 1636, 1),
(1537, 'REC', 'REC', 'REC', 1, 'X11', 2000, 1637, 1),
(1538, 'BIS', 'BIS', 'BIS', 1, 'N/A', 2000, 1638, 1),
(1539, 'OPP', 'OPP', 'OPP', 1, 'N/A', 2000, 1639, 1),
(1540, 'ROCK', 'ROCK', 'ROCK', 1, 'N/A', 2000, 1640, 1),
(1541, 'ICX', 'ICX', 'ICX', 1, 'N/A', 2000, 1642, 1),
(1542, 'VSX', 'VSX', 'VSX', 1, 'X13', 2000, 1643, 1),
(1543, 'WISH*', 'WISH*', 'WISH*', 1, 'N/A', 2000, 1644, 1),
(1544, 'FLASH', 'FLASH', 'FLASH', 1, 'N/A', 2000, 1645, 1),
(1545, 'BTCZ', 'BTCZ', 'BTCZ', 1, 'Equihash', 2000, 1647, 1),
(1546, 'CZC', 'CZC', 'CZC', 1, 'N/A', 2000, 1648, 1),
(1547, 'PPP', 'PPP', 'PPP', 1, 'N/A', 2000, 1649, 1),
(1548, 'GUESS', 'GUESS', 'GUESS', 1, 'N/A', 2000, 1650, 1),
(1549, 'CAN', 'CAN', 'CAN', 1, 'N/A', 2000, 1651, 1),
(1550, 'ETP', 'ETP', 'ETP', 1, 'Ethash', 2000, 1652, 1),
(1551, 'ERT', 'ERT', 'ERT', 1, 'N/A', 2000, 1654, 1),
(1552, 'BAC*', 'BAC*', 'BAC*', 1, 'N/A', 2000, 1655, 1),
(1553, 'FLIK', 'FLIK', 'FLIK', 1, 'N/A', 2000, 1656, 1),
(1554, 'TRIP', 'TRIP', 'TRIP', 1, 'N/A', 2000, 1657, 1),
(1555, 'MBT', 'MBT', 'MBT', 1, 'N/A', 2000, 1658, 1),
(1556, 'JVY', 'JVY', 'JVY', 1, 'N/A', 2000, 1659, 1),
(1557, 'ALIS', 'ALIS', 'ALIS', 1, 'N/A', 2000, 1660, 1),
(1558, 'LEV', 'LEV', 'LEV', 1, 'N/A', 2000, 1661, 1),
(1559, 'ARBI', 'ARBI', 'ARBI', 1, 'Ethash', 2000, 1663, 1),
(1560, 'ELT', 'ELT', 'ELT', 1, 'N/A', 2000, 1664, 1),
(1561, 'REQ', 'REQ', 'REQ', 1, 'N/A', 2000, 1665, 1),
(1562, 'ARN', 'ARN', 'ARN', 1, 'N/A', 2000, 1666, 1),
(1563, 'DAT', 'DAT', 'DAT', 1, 'N/A', 2000, 1667, 1),
(1564, 'VIBE', 'VIBE', 'VIBE', 1, 'N/A', 2000, 1668, 1),
(1565, 'ROK', 'ROK', 'ROK', 1, 'N/A', 2000, 1669, 1),
(1566, 'XRED', 'XRED', 'XRED', 1, 'N/A', 2000, 1670, 1),
(1567, 'DAY', 'DAY', 'DAY', 1, 'N/A', 2000, 1671, 1),
(1568, 'AST', 'AST', 'AST', 1, 'N/A', 2000, 1673, 1),
(1569, 'FLP', 'FLP', 'FLP', 1, 'N/A', 2000, 1674, 1),
(1570, 'HXT', 'HXT', 'HXT', 1, 'Scrypt', 2000, 1675, 1),
(1571, 'CND', 'CND', 'CND', 1, 'N/A', 2000, 1676, 1),
(1572, 'VRP*', 'VRP', 'VRP*', 1, 'N/A', 2000, 1677, 1),
(1573, 'NTM', 'NTM', 'NTM', 1, 'Scrypt', 2000, 1678, 1),
(1574, 'TZC', 'TZC', 'TZC', 1, 'NeoScrypt', 2000, 1679, 1),
(1575, 'ENG', 'ENG', 'ENG', 1, 'N/A', 2000, 1680, 1),
(1576, 'MCI', 'MCI', 'MCI', 1, 'N/A', 2000, 1681, 1),
(1577, 'COV', 'COV', 'COV', 1, 'N/A', 2000, 1682, 1),
(1578, 'WAX', 'WAX', 'WAX', 1, 'N/A', 2000, 1683, 1),
(1579, 'AIR', 'AIR', 'AIR', 1, 'N/A', 2000, 1684, 1),
(1580, 'NTO', 'NTO', 'NTO', 1, 'N/A', 2000, 1685, 1),
(1581, 'ATCC', 'ATCC', 'ATCC', 1, 'Scrypt', 2000, 1686, 1),
(1582, 'KOLION', 'KOLION', 'KOLION', 1, 'N/A', 2000, 1687, 1),
(1583, 'WILD', 'WILD', 'WILD', 1, 'N/A', 2000, 1688, 1),
(1584, 'ELTC2', 'ELTC2', 'ELTC2', 1, 'N/A', 2000, 1689, 1),
(1585, 'ILCT', 'ILCT', 'ILCT', 1, 'SHA256', 2000, 1690, 1),
(1586, 'POWR', 'POWR', 'POWR', 1, 'N/A', 2000, 1691, 1),
(1587, 'C20', 'C20', 'C20', 1, 'N/A', 2000, 1692, 1),
(1588, 'RYZ', 'RYZ', 'RYZ', 1, 'N/A', 2000, 1693, 1),
(1589, 'GXC*', 'GXC*', 'GXC*', 1, 'X15', 2000, 1694, 1),
(1590, 'ELM', 'ELM', 'ELM', 1, 'X11', 2000, 1696, 1),
(1591, 'TER', 'TER', 'TER', 1, 'Scrypt', 2000, 1697, 1),
(1592, 'XCS', 'XCS', 'XCS', 1, 'POS 3.0', 2000, 1698, 1),
(1593, 'BQ', 'BQ', 'BQ', 1, 'N/A', 2000, 1699, 1),
(1594, 'CAV', 'CAV', 'CAV', 1, 'N/A', 2000, 1700, 1),
(1595, 'CLOUT', 'CLOUT', 'CLOUT', 1, 'N/A', 2000, 1701, 1),
(1596, 'PTC*', 'PTC*', 'PTC*', 1, 'N/A', 2000, 1702, 1),
(1597, 'WABI', 'WABI', 'WABI', 1, 'N/A', 2000, 1703, 1),
(1598, 'EVR', 'EVR', 'EVR', 1, 'N/A', 2000, 1704, 1),
(1599, 'TOA', 'TOA', 'TOA', 1, 'Scrypt', 2000, 1705, 1),
(1600, 'MNZ', 'MNZ', 'MNZ', 1, 'Equihash', 2000, 1706, 1),
(1601, 'VIVO', 'VIVO', 'VIVO', 1, 'NeoScrypt', 2000, 1707, 1),
(1602, 'RPX', 'RPX', 'RPX', 1, 'N/A', 2000, 1708, 1),
(1603, 'MDA', 'MDA', 'MDA', 1, 'N/A', 2000, 1709, 1),
(1604, 'ZSC', 'ZSC', 'ZSC', 1, 'N/A', 2000, 1710, 1),
(1605, 'AURS', 'AURS', 'AURS', 1, 'Scrypt', 2000, 1711, 1),
(1606, 'CAG', 'CAG', 'CAG', 1, 'N/A', 2000, 1712, 1),
(1607, 'PKT', 'PKT', 'PKT', 1, 'N/A', 2000, 1713, 1),
(1608, 'INXT', 'INXT', 'INXT', 1, 'N/A', 2000, 1716, 1),
(1609, 'ATS', 'ATS', 'ATS', 1, 'N/A', 2000, 1717, 1),
(1610, 'RGC', 'RGC', 'RGC', 1, 'NIST5', 2000, 1718, 1),
(1611, 'EBET', 'EBET', 'EBET', 1, 'N/A', 2000, 1719, 1),
(1612, 'R', 'R', 'R', 1, 'N/A', 2000, 1720, 1),
(1613, 'MOD', 'MOD', 'MOD', 1, 'N/A', 2000, 1721, 1),
(1614, 'BM*', 'BM*', 'BM*', 1, 'N/A', 2000, 1722, 1),
(1615, 'CPAY', 'CPAY', 'CPAY', 1, 'N/A', 2000, 1723, 1),
(1616, 'RUP', 'RUP', 'RUP', 1, 'Lyra2REv2', 2000, 1724, 1),
(1617, 'BON*', 'BON', 'BON*', 1, 'N/A', 2000, 1725, 1),
(1618, 'APPC', 'APPC', 'APPC', 1, 'N/A', 2000, 1726, 1),
(1619, 'WHL', 'WHL', 'WHL', 1, 'Ethash', 2000, 1727, 1),
(1620, 'UP', 'UP', 'UP', 1, 'N/A', 2000, 1730, 1),
(1621, 'ETG', 'ETG', 'ETG', 1, 'N/A', 2000, 1731, 1),
(1622, 'WOMEN', 'WOMEN', 'WOMEN', 1, 'Scrypt', 2000, 1732, 1),
(1623, 'MAY', 'MAY', 'MAY', 1, 'SHA256', 2000, 1733, 1),
(1624, 'RNDR', 'RNDR', 'RNDR', 1, 'N/A', 2000, 1734, 1),
(1625, 'EDDIE', 'EDDIE', 'EDDIE', 1, 'Scrypt', 2000, 1735, 1),
(1626, 'SCT*', 'SCT*', 'SCT*', 1, 'N/A', 2000, 1736, 1),
(1627, 'NAMO', 'NAMO', 'NAMO', 1, 'NIST5', 2000, 1737, 1),
(1628, 'KCS', 'KCS', 'KCS', 1, 'N/A', 2000, 1738, 1),
(1629, 'GAT', 'GAT', 'GAT', 1, 'N/A', 2000, 1739, 1),
(1630, 'BLUE', 'BLUE', 'BLUE', 1, 'N/A', 2000, 1740, 1),
(1631, 'FLLW', 'FLLW', 'FLLW', 1, 'N/A', 2000, 1742, 1),
(1632, 'WYR', 'WYR', 'WYR', 1, 'N/A', 2000, 1743, 1),
(1633, 'VZT', 'VZT', 'VZT', 1, 'N/A', 2000, 1744, 1),
(1634, 'INDI', 'INDI', 'INDI', 1, 'N/A', 2000, 1745, 1),
(1635, 'LUX', 'LUX', 'LUX', 1, 'PHI1612', 2000, 1748, 1),
(1636, 'BAR', 'BAR', 'BAR', 1, 'N/A', 2000, 1749, 1),
(1637, 'PIRL', 'PIRL', 'PIRL', 1, 'Dagger', 2000, 1750, 1),
(1638, 'ECASH', 'ECASH', 'ECASH', 1, 'N/A', 2000, 1751, 1),
(1639, 'DRGN', 'DRGN', 'DRGN', 1, 'N/A', 2000, 1753, 1),
(1640, 'ODMC', 'ODMC', 'ODMC', 1, 'N/A', 2000, 1754, 1),
(1641, 'CABS*', 'CABS*', 'CABS*', 1, 'N/A', 2000, 1755, 1),
(1642, 'BRAT', 'BRAT', 'BRAT', 1, 'N/A', 2000, 1756, 1),
(1643, 'DTR', 'DTR', 'DTR', 1, 'N/A', 2000, 1757, 1),
(1644, 'TKR', 'TKR', 'TKR', 1, 'N/A', 2000, 1758, 1),
(1645, 'KEY', 'KEY', 'KEY', 1, 'N/A', 2000, 1759, 1),
(1646, 'ELITE', 'ELITE', 'ELITE', 1, 'N/A', 2000, 1760, 1),
(1647, 'XIOS', 'XIOS', 'XIOS', 1, 'Scrypt', 2000, 1761, 1),
(1648, 'DOVU', 'DOVU', 'DOVU', 1, 'N/A', 2000, 1762, 1),
(1649, 'ETN', 'ETN', 'ETN', 1, '', 2000, 1763, 1),
(1650, 'REA', 'REA', 'REA', 1, 'N/A', 2000, 1764, 1),
(1651, 'AVE', 'AVE', 'AVE', 1, 'Avesta hash', 2000, 1765, 1),
(1652, 'XNN', 'XNN', 'XNN', 1, 'N/A', 2000, 1766, 1),
(1653, 'BTDX', 'BTDX', 'BTDX', 1, 'Quark', 2000, 1767, 1),
(1654, 'LOAN*', 'LOAN', 'LOAN*', 1, 'N/A', 2000, 1768, 1),
(1655, 'ZAB', 'ZAB', 'ZAB', 1, 'N/A', 2000, 1770, 1),
(1656, 'MDL', 'MDL', 'MDL', 1, 'N/A', 2000, 1771, 1),
(1657, 'BT1', 'BT1', 'BT1', 1, 'N/A', 2000, 1772, 1),
(1658, 'BT2', 'BT2', 'BT2', 1, 'N/A', 2000, 1773, 1),
(1659, 'SHP', 'SHP', 'SHP', 1, 'N/A', 2000, 1774, 1),
(1660, 'JCR', 'JCR', 'JCR', 1, 'N/A', 2000, 1775, 1),
(1661, 'XSB', 'XSB', 'XSB', 1, 'X11', 2000, 1776, 1),
(1662, 'ATM', 'ATM', 'ATM', 1, 'N/A', 2000, 1777, 1),
(1663, 'EBST', 'EBST', 'EBST', 1, 'Scrypt', 2000, 1778, 1),
(1664, 'KEK', 'KEK', 'KEK', 1, 'POS 2.0', 2000, 1779, 1),
(1665, 'AID', 'AID', 'AID', 1, 'N/A', 2000, 1780, 1),
(1666, 'BHC*', 'BHC*', 'BHC*', 1, 'Scrypt', 2000, 1781, 1),
(1667, 'ALTCOM', 'ALTCOM', 'ALTCOM', 1, 'SkunkHash', 2000, 1782, 1),
(1668, 'OST', 'OST', 'OST', 1, 'N/A', 2000, 1783, 1),
(1669, 'DATA', 'DATA', 'DATA', 1, 'N/A', 2000, 1784, 1),
(1670, 'UGC', 'UGC', 'UGC', 1, 'N/A', 2000, 1785, 1),
(1671, 'DTC', 'DTC*', 'DTC', 1, 'Multiple', 2000, 1786, 1),
(1672, 'PLAY', 'PLAY', 'PLAY', 1, 'N/A', 2000, 1787, 1),
(1673, 'PURE', 'PURE', 'PURE', 1, 'X11', 2000, 1788, 1),
(1674, 'CLD', 'CLD', 'CLD', 1, 'N/A', 2000, 1789, 1),
(1675, 'OTN', 'OTN', 'OTN', 1, 'N/A', 2000, 1790, 1),
(1676, 'POS', 'POS', 'POS', 1, 'N/A', 2000, 1791, 1),
(1677, 'NEOG', 'NEOG', 'NEOG', 1, 'N/A', 2000, 1793, 1),
(1678, 'EXN', 'EXN', 'EXN', 1, 'N/A', 2000, 1794, 1),
(1679, 'INS', 'INS', 'INS', 1, 'N/A', 2000, 1795, 1),
(1680, 'TRCT', 'TRCT', 'TRCT', 1, 'N/A', 2000, 1796, 1),
(1681, 'UKG', 'UKG', 'UKG', 1, 'N/A', 2000, 1797, 1),
(1682, 'BTCRED', 'BTCRED', 'BTCRED', 1, 'N/A', 2000, 1798, 1),
(1683, 'EBCH', 'EBCH', 'EBCH', 1, 'N/A', 2000, 1799, 1),
(1684, 'JPC*', 'JPC*', 'JPC*', 1, 'N/A', 2000, 1800, 1),
(1685, 'AXT', 'AXT', 'AXT', 1, 'N/A', 2000, 1801, 1),
(1686, 'RDN*', 'RDN*', 'RDN*', 1, 'N/A', 2000, 1802, 1),
(1687, 'NEU', 'NEU', 'NEU', 1, 'N/A', 2000, 1803, 1),
(1688, 'RUPX', 'RUPX', 'RUPX', 1, 'Scrypt', 2000, 1804, 1),
(1689, 'BDR', 'BDR', 'BDR', 1, 'N/A', 2000, 1805, 1),
(1690, 'XIN*', 'XIN', 'XIN*', 1, 'SHA256', 2000, 1806, 1),
(1691, 'DUTCH', 'DUTCH', 'DUTCH', 1, 'Scrypt', 2000, 1807, 1),
(1692, 'TIO', 'TIO', 'TIO', 1, 'N/A', 2000, 1808, 1),
(1693, 'HNC*', 'HNC*', 'HNC*', 1, 'X13', 2000, 1809, 1),
(1694, 'MDC*', 'MDC*', 'MDC*', 1, 'Scrypt', 2000, 1811, 1),
(1695, 'PURA', 'PURA', 'PURA', 1, 'X11', 2000, 1812, 1),
(1696, 'INN', 'INN', 'INN', 1, 'NeoScrypt', 2000, 1813, 1),
(1697, 'HST', 'HST', 'HST', 1, 'N/A', 2000, 1814, 1),
(1698, 'BCPT', 'BCPT', 'BCPT', 1, 'N/A', 2000, 1815, 1),
(1699, 'BDL', 'BDL', 'BDL', 1, 'Scrypt', 2000, 1816, 1),
(1700, 'CMS', 'CMS', 'CMS', 1, 'N/A', 2000, 1817, 1),
(1701, 'XBL', 'XBL', 'XBL', 1, 'N/A', 2000, 1818, 1),
(1702, 'ZEPH', 'ZEPH', 'ZEPH', 1, 'N/A', 2000, 1819, 1),
(1703, 'ATFS', 'ATFS', 'ATFS', 1, 'N/A', 2000, 1820, 1),
(1704, 'NULS', 'NULS', 'NULS', 1, 'N/A', 2000, 1823, 1),
(1705, 'PHR*', 'PHR*', 'PHR*', 1, 'POS 3.0', 2000, 1824, 1),
(1706, 'LCASH', 'LCASH', 'LCASH', 1, 'N/A', 2000, 1825, 1),
(1707, 'CFD', 'CFD', 'CFD', 1, 'N/A', 2000, 1826, 1),
(1708, 'SPHTX', 'SPHTX', 'SPHTX', 1, 'N/A', 2000, 1827, 1),
(1709, 'PLC', 'PLC', 'PLC', 1, 'N/A', 2000, 1828, 1),
(1710, 'SRN', 'SRN', 'SRN', 1, 'N/A', 2000, 1829, 1),
(1711, 'WSC', 'WSC', 'WSC', 1, 'Scrypt', 2000, 1830, 1),
(1712, 'DBET', 'DBET', 'DBET', 1, 'N/A', 2000, 1831, 1),
(1713, 'XGOX', 'xGOx', 'XGOX', 1, 'Scrypt', 2000, 1832, 1),
(1714, 'NEWB', 'NEWB', 'NEWB', 1, 'N/A', 2000, 1833, 1),
(1715, 'LIFE', 'LIFE', 'LIFE', 1, 'N/A', 2000, 1834, 1),
(1716, 'RMC', 'RMC', 'RMC', 1, 'N/A', 2000, 1836, 1),
(1717, 'CREDO', 'CREDO', 'CREDO', 1, 'N/A', 2000, 1837, 1),
(1718, 'MSR', 'MSR', 'MSR', 1, 'CryptoNight', 2000, 1838, 1),
(1719, 'ESC*', 'ESC', 'ESC*', 1, 'N/A', 2000, 1841, 1),
(1720, 'EVN', 'EVN', 'EVN', 1, 'N/A', 2000, 1842, 1),
(1721, 'BNK', 'BNK', 'BNK', 1, 'N/A', 2000, 1843, 1),
(1722, 'ELLA', 'ELLA', 'ELLA', 1, 'Ethash', 2000, 1844, 1),
(1723, 'BPL', 'BPL', 'BPL', 1, 'DPoS', 2000, 1845, 1),
(1724, 'ROCK*', 'ROCK*', 'ROCK*', 1, 'N/A', 2000, 1847, 1),
(1725, 'DRXNE', 'DRXNE', 'DRXNE', 1, 'PoS', 2000, 1848, 1),
(1726, 'SKR', 'SKR', 'SKR', 1, 'Scrypt', 2000, 1849, 1),
(1727, 'GRID', 'GRID', 'GRID', 1, 'N/A', 2000, 1850, 1),
(1728, 'XPTX', 'XPTX', 'XPTX', 1, 'Quark', 2000, 1851, 1),
(1729, 'GVT', 'GVT', 'GVT', 1, 'N/A', 2000, 1852, 1),
(1730, 'ETK', 'ETK', 'ETK', 1, 'N/A', 2000, 1853, 1),
(1731, 'ASTRO', 'ASTRO', 'ASTRO', 1, 'N/A', 2000, 1854, 1),
(1732, 'GMT', 'GMT', 'GMT', 1, 'N/A', 2000, 1855, 1),
(1733, 'EPY*', 'EPY*', 'EPY*', 1, 'N/A', 2000, 1856, 1),
(1734, 'SOAR', 'SOAR', 'SOAR', 1, 'N/A', 2000, 1857, 1),
(1735, 'HOLD', 'HOLD', 'HOLD', 1, 'Scrypt', 2000, 1859, 1),
(1736, 'MNX', 'MNX', 'MNX', 1, 'Mars', 2000, 1860, 1),
(1737, 'CRDS', 'CRDS', 'CRDS', 1, 'Argon2', 2000, 1861, 1),
(1738, 'VIU', 'VIU', 'VIU', 1, 'N/A', 2000, 1862, 1),
(1739, 'SCR', 'SCR', 'SCR', 1, 'DPoS', 2000, 1863, 1),
(1740, 'DBR', 'DBR', 'DBR', 1, 'N/A', 2000, 1864, 1),
(1741, 'GFT', 'GFT', 'GFT', 1, 'N/A', 2000, 1866, 1),
(1742, 'STAC', 'STAC', 'STAC', 1, 'N/A', 2000, 1867, 1),
(1743, 'QSP', 'QSP', 'QSP', 1, 'N/A', 2000, 1868, 1),
(1744, 'RIPT', 'RIPT', 'RIPT', 1, 'N/A', 2000, 1869, 1),
(1745, 'BBT', 'BBT', 'BBT', 1, 'N/A', 2000, 1870, 1),
(1746, 'GBX', 'GBX', 'GBX', 1, 'NeoScrypt', 2000, 1871, 1),
(1747, 'ICC', 'ICC', 'ICC', 1, 'SHA256', 2000, 1875, 1),
(1748, 'JNT', 'JNT', 'JNT', 1, 'N/A', 2000, 1876, 1),
(1749, 'QASH', 'QASH', 'QASH', 1, 'N/A', 2000, 1877, 1),
(1750, 'ALQO', 'ALQO', 'ALQO', 1, 'Quark', 2000, 1878, 1),
(1751, 'KNC**', 'KNC**', 'KNC**', 1, 'Scrypt', 2000, 1879, 1),
(1752, 'TRIA', 'TRIA', 'TRIA', 1, 'N/A', 2000, 1880, 1),
(1753, 'PBL', 'PBL', 'PBL', 1, 'N/A', 2000, 1881, 1),
(1754, 'UFR', 'UFR', 'UFR', 1, 'N/A', 2000, 1884, 1),
(1755, 'LOCI', 'LOCI', 'LOCI', 1, 'N/A', 2000, 1885, 1),
(1756, 'TAU', 'TAU', 'TAU', 1, 'DPoS', 2000, 1886, 1),
(1757, 'LAB', 'LAB', 'LAB', 1, 'N/A', 2000, 1887, 1),
(1758, 'FLIXX', 'FLIXX', 'FLIXX', 1, 'N/A', 2000, 1889, 1),
(1759, 'FRD', 'FRD', 'FRD', 1, 'N/A', 2000, 1890, 1),
(1760, 'ECA', 'ECA', 'ECA', 1, 'NIST5', 2000, 1892, 1),
(1761, 'LDM', 'LDM', 'LDM', 1, 'N/A', 2000, 1893, 1),
(1762, 'LTG', 'LTG', 'LTG', 1, 'N/A', 2000, 1894, 1),
(1763, 'BCD', 'BCD', 'BCD', 1, 'X13', 2000, 1895, 1),
(1764, 'STP', 'STP', 'STP', 1, 'N/A', 2000, 1896, 1),
(1765, 'SPANK', 'SPANK', 'SPANK', 1, 'N/A', 2000, 1897, 1),
(1766, 'WISH', 'WISH', 'WISH', 1, 'N/A', 2000, 1898, 1),
(1767, 'AERM', 'AERM', 'AERM', 1, 'SkunkHash', 2000, 1899, 1),
(1768, 'PLX', 'PLX', 'PLX', 1, 'N/A', 2000, 1900, 1),
(1769, 'NIO', 'NIO', 'NIO', 1, 'N/A', 2000, 1901, 1),
(1770, 'ETHB', 'ETHB', 'ETHB', 1, 'N/A', 2000, 1902, 1),
(1771, 'CDX', 'CDX', 'CDX', 1, 'N/A', 2000, 1903, 1),
(1772, 'FOOD', 'FOOD', 'FOOD', 1, 'N/A', 2000, 1904, 1),
(1773, 'VOT', 'VOT', 'VOT', 1, 'Equihash', 2000, 1906, 1),
(1774, 'UQC', 'UQC', 'UQC', 1, 'N/A', 2000, 1907, 1),
(1775, 'LEND', 'LEND', 'LEND', 1, 'N/A', 2000, 1908, 1),
(1776, 'SETH', 'SETH', 'SETH', 1, 'N/A', 2000, 1909, 1),
(1777, 'TIO*', 'TIO*', 'TIO*', 1, 'N/A', 2000, 1910, 1),
(1778, 'XSH', 'XSH', 'XSH', 1, 'Multiple', 2000, 1912, 1),
(1779, 'BCD*', 'BCD*', 'BCD*', 1, 'N/A', 2000, 1913, 1),
(1780, 'BCO*', 'BCO', 'BCO*', 1, 'Scrypt', 2000, 1915, 1),
(1781, 'DSR', 'DSR', 'DSR', 1, 'NeoScrypt', 2000, 1916, 1),
(1782, 'BDG', 'BDG', 'BDG', 1, 'N/A', 2000, 1917, 1),
(1783, 'ONG', 'ONG', 'ONG', 1, 'N/A', 2000, 1918, 1),
(1784, 'PRL', 'PRL', 'PRL', 1, 'N/A', 2000, 1919, 1),
(1785, 'BTCM', 'BTCM', 'BTCM', 1, 'N/A', 2000, 1920, 1),
(1786, 'ETBT', 'ETBT', 'ETBT', 1, 'N/A', 2000, 1922, 1),
(1787, 'ZCG', 'ZCG', 'ZCG', 1, 'N/A', 2000, 1923, 1),
(1788, 'MUT', 'MUT', 'MUT', 1, 'Scrypt', 2000, 1924, 1),
(1789, 'AION', 'AION', 'AION', 1, 'N/A', 2000, 1925, 1),
(1790, 'MEOW', 'MEOW', 'MEOW', 1, 'Scrypt', 2000, 1926, 1),
(1791, 'DIVX', 'DIVX', 'DIVX', 1, 'N/A', 2000, 1927, 1),
(1792, 'CNBC', 'CNBC', 'CNBC', 1, 'Scrypt', 2000, 1928, 1),
(1793, 'RHOC', 'RHOC', 'RHOC', 1, 'N/A', 2000, 1929, 1),
(1794, 'ARC*', 'ARC*', 'ARC*', 1, 'N/A', 2000, 1930, 1),
(1795, 'XUN', 'XUN', 'XUN', 1, 'CryptoNight', 2000, 1931, 1),
(1796, 'RFL', 'RFL', 'RFL', 1, 'N/A', 2000, 1932, 1),
(1797, 'COFI', 'COFI', 'COFI', 1, 'N/A', 2000, 1933, 1),
(1798, 'ELTCOIN', 'ELTCOIN', 'ELTCOIN', 1, 'N/A', 2000, 1934, 1),
(1799, 'GRX', 'GRX', 'GRX', 1, 'N/A', 2000, 1935, 1),
(1800, 'NTK', 'NTK', 'NTK', 1, 'N/A', 2000, 1936, 1),
(1801, 'ERO', 'ERO', 'ERO', 1, 'N/A', 2000, 1937, 1),
(1802, 'CMT*', 'CMT*', 'CMT*', 1, 'N/A', 2000, 1938, 1),
(1803, 'RLX', 'RLX', 'RLX', 1, 'N/A', 2000, 1939, 1),
(1804, 'MAN', 'MAN', 'MAN', 1, 'Scrypt', 2000, 1940, 1),
(1805, 'CWV', 'CWV', 'CWV', 1, 'N/A', 2000, 1941, 1),
(1806, 'ACT*', 'ACT*', 'ACT*', 1, 'DPoS', 2000, 1942, 1),
(1807, 'NRO', 'NRO', 'NRO', 1, 'SHA256', 2000, 1943, 1),
(1808, 'SEND', 'SEND', 'SEND', 1, 'Quark', 2000, 1944, 1),
(1809, 'GLT', 'GLT', 'GLT', 1, 'SHA256', 2000, 1945, 1),
(1810, 'X8X', 'X8X', 'X8X', 1, 'N/A', 2000, 1946, 1),
(1811, 'COAL', 'COAL', 'COAL', 1, 'CryptoNight', 2000, 1947, 1),
(1812, 'DAXX', 'DAXX', 'DAXX', 1, 'Ethash', 2000, 1948, 1),
(1813, 'BWK', 'BWK', 'BWK', 1, 'NIST5', 2000, 1949, 1),
(1814, 'FNT', 'FNT', 'FNT', 1, 'N/A', 2000, 1950, 1),
(1815, 'XMRG', 'XMRG', 'XMRG', 1, 'N/A', 2000, 1951, 1),
(1816, 'BTCE', 'BTCE', 'BTCE', 1, 'N/A', 2000, 1952, 1),
(1817, 'FYP', 'FYP', 'FYP', 1, 'N/A', 2000, 1953, 1),
(1818, 'BOXY', 'BOXY', 'BOXY', 1, 'Scrypt', 2000, 1954, 1),
(1819, 'EGAS', 'EGAS', 'EGAS', 1, 'N/A', 2000, 1957, 1),
(1820, 'DPP', 'DPP', 'DPP', 1, 'N/A', 2000, 1958, 1),
(1821, 'ADB', 'ADB', 'ADB', 1, 'N/A', 2000, 1959, 1),
(1822, 'TGT', 'TGT', 'TGT', 1, 'N/A', 2000, 1960, 1),
(1823, 'BMT', 'BMT', 'BMT', 1, 'N/A', 2000, 1962, 1),
(1824, 'BIO', 'BIO', 'BIO', 1, 'N/A', 2000, 1963, 1),
(1825, 'MTRC', 'MTRC', 'MTRC', 1, 'N/A', 2000, 1965, 1),
(1826, 'BTCL', 'BTCL', 'BTCL', 1, 'N/A', 2000, 1966, 1),
(1827, 'PCN', 'PCN', 'PCN', 1, 'N/A', 2000, 1967, 1),
(1828, 'RBTC', 'RBTC', 'RBTC', 1, 'N/A', 2000, 1970, 1),
(1829, 'CRED', 'CRED', 'CRED', 1, 'N/A', 2000, 1971, 1),
(1830, 'SBTC', 'SBTC', 'SBTC', 1, 'SHA256', 2000, 1972, 1),
(1831, 'KLK', 'KLK', 'KLK', 1, 'Scrypt', 2000, 1973, 1),
(1832, 'AC3', 'AC3', 'AC3', 1, 'X11', 2000, 1974, 1),
(1833, 'GTO', 'GTO', 'GTO', 1, 'N/A', 2000, 1975, 1),
(1834, 'TNB', 'TNB', 'TNB', 1, 'N/A', 2000, 1976, 1),
(1835, 'CHIPS*', 'CHIPS', 'CHIPS*', 1, 'SHA256', 2000, 1977, 1),
(1836, 'HKN', 'HKN', 'HKN', 1, 'N/A', 2000, 1978, 1),
(1837, 'B2B', 'B2BX', 'B2B', 1, 'N/A', 2000, 1979, 1),
(1838, 'LOC*', 'LOC*', 'LOC*', 1, 'N/A', 2000, 1980, 1),
(1839, 'MNT*', 'MNT*', 'MNT*', 1, 'N/A', 2000, 1981, 1),
(1840, 'ITNS', 'ITNS', 'ITNS', 1, 'CryptoNight', 2000, 1982, 1),
(1841, 'SMT*', 'SMT*', 'SMT*', 1, 'N/A', 2000, 1984, 1),
(1842, 'GER', 'GER', 'GER', 1, 'Scrypt', 2000, 1985, 1),
(1843, 'LTCU', 'LTCU', 'LTCU', 1, 'Scrypt', 2000, 1986, 1),
(1844, 'EMGO', 'EMGO', 'EMGO', 1, 'N/A', 2000, 1987, 1),
(1845, 'BTCA', 'BTCA', 'BTCA', 1, 'N/A', 2000, 1988, 1),
(1846, 'HQX', 'HQX', 'HQX', 1, 'N/A', 2000, 1989, 1),
(1847, 'ETF', 'ETF', 'ETF', 1, 'Ethash', 2000, 1990, 1),
(1848, 'BCX*', 'BCX*', 'BCX*', 1, 'DPoS', 2000, 1991, 1),
(1849, 'LUX**', 'LUX**', 'LUX**', 1, 'N/A', 2000, 1992, 1),
(1850, 'STAK', 'STAK', 'STAK', 1, 'Lyra2REv2', 2000, 1993, 1),
(1851, 'BCOIN', 'BCOIN', 'BCOIN', 1, 'N/A', 2000, 1994, 1),
(1852, 'BNTY', 'BNTY', 'BNTY', 1, 'N/A', 2000, 1997, 1);
INSERT INTO `dbt_currency` (`id`, `icon`, `name`, `symbol`, `rate`, `algorithm`, `position`, `rank`, `status`) VALUES
(1853, 'BRD', 'BRD', 'BRD', 1, 'N/A', 2000, 1998, 1),
(1854, 'HAT', 'HAT', 'HAT', 1, 'N/A', 2000, 1999, 1),
(1855, 'ELF', 'ELF', 'ELF', 1, 'N/A', 2000, 2000, 1),
(1856, 'CWX', 'CWX', 'CWX', 1, 'N/A', 2000, 2002, 1),
(1857, 'DBC', 'DBC', 'DBC', 1, 'N/A', 2000, 2003, 1),
(1858, 'ZEN*', 'ZEN*', 'ZEN*', 1, 'N/A', 2000, 2004, 1),
(1859, 'POP', 'POP', 'POP', 1, 'Scrypt', 2000, 2005, 1),
(1860, 'CRC', 'CRC', 'CRC', 1, 'NeoScrypt', 2000, 2006, 1),
(1861, 'PNX', 'PNX', 'PNX', 1, 'X11', 2000, 2007, 1),
(1862, 'BAS', 'BAS', 'BAS', 1, 'N/A', 2000, 2008, 1),
(1863, 'UTT', 'UTT', 'UTT', 1, 'N/A', 2000, 2009, 1),
(1864, 'HBC', 'HBC', 'HBC', 1, 'X11', 2000, 2010, 1),
(1865, 'AMM', 'AMM', 'AMM', 1, 'N/A', 2000, 2011, 1),
(1866, 'DAV', 'DAV', 'DAV', 1, 'Scrypt', 2000, 2012, 1),
(1867, 'XCPO', 'XCPO', 'XCPO', 1, 'PoS', 2000, 2013, 1),
(1868, 'GET', 'GET', 'GET', 1, 'N/A', 2000, 2014, 1),
(1869, 'ERC20', 'ERC20', 'ERC20', 1, 'N/A', 2000, 2015, 1),
(1870, 'ITC', 'ITC', 'ITC', 1, 'N/A', 2000, 2016, 1),
(1871, 'HTML', 'HTML', 'HTML', 1, 'SHA256', 2000, 2017, 1),
(1872, 'NMS', 'NMS', 'NMS', 1, 'Skein', 2000, 2019, 1),
(1873, 'PHO', 'PHO', 'PHO', 1, 'BLAKE256', 2000, 2020, 1),
(1874, 'XTRA', 'XTRA', 'XTRA', 1, 'N/A', 2000, 2021, 1),
(1875, 'NTWK', 'NTWK', 'NTWK', 1, 'N/A', 2000, 2023, 1),
(1876, 'SUCR', 'SUCR', 'SUCR', 1, 'X11', 2000, 2024, 1),
(1877, 'SMART*', 'SMART*', 'SMART*', 1, 'N/A', 2000, 2025, 1),
(1878, 'GNX', 'GNX', 'GNX', 1, 'N/A', 2000, 2026, 1),
(1879, 'NAS', 'NAS', 'NAS', 1, 'N/A', 2000, 2027, 1),
(1880, 'ACCO', 'ACCO', 'ACCO', 1, 'Scrypt', 2000, 2028, 1),
(1881, 'BTH', 'BTH', 'BTH', 1, 'N/A', 2000, 2029, 1),
(1882, 'TOK', 'TOK', 'TOK', 1, 'Scrypt', 2000, 2031, 1),
(1883, 'EREAL', 'EREAL', 'EREAL', 1, 'N/A', 2000, 2032, 1),
(1884, 'CPN', 'CPN', 'CPN', 1, 'Scrypt', 2000, 2033, 1),
(1885, 'XFT', 'XFT', 'XFT', 1, 'Scrypt', 2000, 2034, 1),
(1886, 'QLC', 'QLC', 'QLC', 1, 'N/A', 2000, 2035, 1),
(1887, 'BTSE', 'BTE*', 'BTSE', 1, 'N/A', 2000, 2036, 1),
(1888, 'OMGC', 'OMGC', 'OMGC', 1, 'Scrypt', 2000, 2037, 1),
(1889, 'Q2C', 'Q2C', 'Q2C', 1, 'QuBit', 2000, 2038, 1),
(1890, 'BLT', 'BLT', 'BLT', 1, 'N/A', 2000, 2039, 1),
(1891, 'SPF', 'SPF', 'SPF', 1, 'N/A', 2000, 2040, 1),
(1892, 'TDS', 'TDS', 'TDS', 1, 'N/A', 2000, 2041, 1),
(1893, 'ORE', 'ORE', 'ORE', 1, 'Lyra2REv2', 2000, 2042, 1),
(1894, 'SPK', 'SPK', 'SPK', 1, 'NeoScrypt', 2000, 2043, 1),
(1895, 'GOA', 'GOA', 'GOA', 1, 'NeoScrypt', 2000, 2044, 1),
(1896, 'FLS', 'FLS', 'FLS', 1, 'N/A', 2000, 2045, 1),
(1897, 'PHILS', 'PHILS', 'PHILS', 1, 'Scrypt', 2000, 2046, 1),
(1898, 'GUN', 'GUN', 'GUN', 1, 'NeoScrypt', 2000, 2047, 1),
(1899, 'DFS', 'DFS', 'DFS', 1, 'Scrypt', 2000, 2048, 1),
(1900, 'POLIS', 'POLIS', 'POLIS', 1, 'X11', 2000, 2050, 1),
(1901, 'FLOT', 'FLOT', 'FLOT', 1, 'N/A', 2000, 2052, 1),
(1902, 'CL', 'CL', 'CL', 1, 'N/A', 2000, 2053, 1),
(1903, 'SHND', 'SHND', 'SHND', 1, 'SHA256D', 2000, 2054, 1),
(1904, 'AUA', 'AUA', 'AUA', 1, 'N/A', 2000, 2055, 1),
(1905, 'SAGA', 'SAGA', 'SAGA', 1, 'Scrypt', 2000, 2057, 1),
(1906, 'TSL', 'TSL', 'TSL', 1, 'N/A', 2000, 2059, 1),
(1907, 'IRL', 'IRL', 'IRL', 1, 'Scrypt', 2000, 2060, 1),
(1908, 'TROLL', 'TROLL', 'TROLL', 1, 'Scrypt', 2000, 2063, 1),
(1909, 'FOR', 'FOR', 'FOR', 1, 'N/A', 2000, 2064, 1),
(1910, 'SGR', 'SGR', 'SGR', 1, 'N/A', 2000, 2065, 1),
(1911, 'JET', 'JET', 'JET', 1, 'N/A', 2000, 2066, 1),
(1912, 'MDS', 'MDS', 'MDS', 1, 'N/A', 2000, 2067, 1),
(1913, 'LCP', 'LCP', 'LCP', 1, 'Scrypt', 2000, 2068, 1),
(1914, 'GTC', 'GTC', 'GTC', 1, 'N/A', 2000, 2069, 1),
(1915, 'IETH', 'IETH', 'IETH', 1, 'N/A', 2000, 2070, 1),
(1916, 'GCC*', 'GCC*', 'GCC*', 1, 'X13', 2000, 2071, 1),
(1917, 'SDRN', 'SDRN', 'SDRN', 1, 'N/A', 2000, 2072, 1),
(1918, 'KBR', 'KBR', 'KBR', 1, 'N/A', 2000, 2075, 1),
(1919, 'HPB', 'HPB', 'HPB', 1, 'DPoS', 2000, 2076, 1),
(1920, 'MONK', 'MONK', 'MONK', 1, 'X11', 2000, 2078, 1),
(1921, 'JINN', 'JINN', 'JINN', 1, 'N/A', 2000, 2079, 1),
(1922, 'SET', 'SET', 'SET', 1, 'N/A', 2000, 2080, 1),
(1923, 'MGN', 'MGN', 'MGN', 1, 'Quark', 2000, 2081, 1),
(1924, 'KZC', 'KZC', 'KZC', 1, 'X11', 2000, 2082, 1),
(1925, 'GNR', 'GNR', 'GNR', 1, 'N/A', 2000, 2084, 1),
(1926, 'BRC', 'BRC', 'BRC', 1, 'N/A', 2000, 2087, 1),
(1927, 'HIVE', 'HIVE', 'HIVE', 1, 'N/A', 2000, 2089, 1),
(1928, 'GX', 'GX', 'GX', 1, 'N/A', 2000, 2090, 1),
(1929, 'LCK', 'LCK', 'LCK', 1, 'N/A', 2000, 2091, 1),
(1930, 'ETL', 'ETL', 'ETL', 1, 'N/A', 2000, 2093, 1),
(1931, 'TEL', 'TEL', 'TEL', 1, 'N/A', 2000, 2094, 1),
(1932, 'BRC*', 'BRC*', 'BRC*', 1, 'N/A', 2000, 2096, 1),
(1933, 'ZAP', 'ZAP', 'ZAP', 1, 'N/A', 2000, 2099, 1),
(1934, 'AIDOC', 'AIDOC', 'AIDOC', 1, 'N/A', 2000, 2100, 1),
(1935, 'ECC', 'ECC', 'ECC', 1, 'Scrypt', 2000, 2101, 1),
(1936, 'LCT', 'LCT', 'LCT', 1, 'N/A', 2000, 2103, 1),
(1937, 'EBC', 'EBC', 'EBC', 1, 'N/A', 2000, 2104, 1),
(1938, 'INT', 'INT', 'INT', 1, 'N/A', 2000, 2106, 1),
(1939, 'STN', 'STN', 'STN', 1, 'Scrypt', 2000, 2108, 1),
(1940, 'PCOIN', 'PCOIN', 'PCOIN', 1, 'X11', 2000, 2110, 1),
(1941, 'BLN', 'BLN', 'BLN', 1, 'N/A', 2000, 2111, 1),
(1942, 'EDT', 'EDT', 'EDT', 1, 'N/A', 2000, 2113, 1),
(1943, 'CYDER', 'CYDER', 'CYDER', 1, 'PoS', 2000, 2114, 1),
(1944, 'EKO', 'EKO', 'EKO', 1, 'N/A', 2000, 2117, 1),
(1945, 'BTO', 'BTO', 'BTO', 1, 'N/A', 2000, 2119, 1),
(1946, 'DOC*', 'DOC', 'DOC*', 1, 'N/A', 2000, 2120, 1),
(1947, 'ARCT', 'ARCT', 'ARCT', 1, 'N/A', 2000, 2121, 1),
(1948, 'IMV', 'IMV', 'IMV', 1, 'N/A', 2000, 2122, 1),
(1949, 'AURA', 'AURA', 'AURA', 1, 'N/A', 2000, 2123, 1),
(1950, 'IDH', 'IDH', 'IDH', 1, 'N/A', 2000, 2124, 1),
(1951, 'CBT', 'CBT', 'CBT', 1, 'N/A', 2000, 2125, 1),
(1952, 'ITZ', 'ITZ', 'ITZ', 1, 'C11', 2000, 2126, 1),
(1953, 'XBP', 'XBP', 'XBP', 1, 'X13', 2000, 2127, 1),
(1954, 'EXRN', 'EXRN', 'EXRN', 1, 'N/A', 2000, 2128, 1),
(1955, 'AGI', 'AGI', 'AGI', 1, 'N/A', 2000, 2129, 1),
(1956, 'BFT', 'BFT', 'BFT', 1, 'N/A', 2000, 2130, 1),
(1957, 'LGO', 'LGO', 'LGO', 1, 'N/A', 2000, 2131, 1),
(1958, 'SGL', 'SGL', 'SGL', 1, 'NeoScrypt', 2000, 2133, 1),
(1959, 'TNC', 'TNC', 'TNC', 1, 'N/A', 2000, 2134, 1),
(1960, 'DTA', 'DTA', 'DTA', 1, 'N/A', 2000, 2137, 1),
(1961, 'CV', 'CV', 'CV', 1, 'N/A', 2000, 2138, 1),
(1962, 'DTX', 'DTX', 'DTX', 1, 'N/A', 2000, 2139, 1),
(1963, 'OCN', 'OCN', 'OCN', 1, 'N/A', 2000, 2141, 1),
(1964, 'THETA', 'THETA', 'THETA', 1, 'N/A', 2000, 2142, 1),
(1965, 'MDT*', 'MDT*', 'MDT*', 1, 'N/A', 2000, 2143, 1),
(1966, 'PRPS', 'PRPS', 'PRPS', 1, 'N/A', 2000, 2144, 1),
(1967, 'DUBI', 'DUBI', 'DUBI', 1, 'N/A', 2000, 2145, 1),
(1968, 'BPT', 'BPT', 'BPT', 1, 'N/A', 2000, 2146, 1),
(1969, 'IOST', 'IOST', 'IOST', 1, 'N/A', 2000, 2148, 1),
(1970, 'TCT', 'TCT', 'TCT', 1, 'N/A', 2000, 2149, 1),
(1971, 'TRAC', 'TRAC', 'TRAC', 1, 'N/A', 2000, 2150, 1),
(1972, 'MOT', 'MOT', 'MOT', 1, 'N/A', 2000, 2151, 1),
(1973, 'ZIL', 'ZIL', 'ZIL', 1, 'N/A', 2000, 2152, 1),
(1974, 'HORSE', 'HORSE', 'HORSE', 1, 'N/A', 2000, 2153, 1),
(1975, 'QUN', 'QUN', 'QUN', 1, 'N/A', 2000, 2154, 1),
(1976, 'ACC*', 'ACC*', 'ACC*', 1, 'N/A', 2000, 2156, 1),
(1977, 'SWFTC', 'SWFTC', 'SWFTC', 1, 'N/A', 2000, 2157, 1),
(1978, 'SENT', 'SENT', 'SENT', 1, 'N/A', 2000, 2158, 1),
(1979, 'IPL', 'IPL', 'IPL', 1, 'N/A', 2000, 2159, 1),
(1980, 'OPC', 'OPC', 'OPC', 1, 'Scrypt', 2000, 2160, 1),
(1981, 'SAF', 'SAF', 'SAF', 1, 'N/A', 2000, 2161, 1),
(1982, 'SHA', 'SHA', 'SHA', 1, 'SHA256', 2000, 2162, 1),
(1983, 'PYLNT', 'PYLNT', 'PYLNT', 1, 'N/A', 2000, 2163, 1),
(1984, 'GRLC', 'GRLC', 'GRLC', 1, 'N/A', 2000, 2164, 1),
(1985, 'EVE', 'EVE', 'EVE', 1, 'N/A', 2000, 2166, 1),
(1986, 'YEE', 'YEE', 'YEE', 1, 'N/A', 2000, 2167, 1),
(1987, 'GTC*', 'GTC*', 'GTC*', 1, 'Scrypt', 2000, 2170, 1),
(1988, 'BTW', 'BTW', 'BTW', 1, 'DPoS', 2000, 2172, 1),
(1989, 'AXP', 'AXP', 'AXP', 1, 'N/A', 2000, 2173, 1),
(1990, 'FOTA', 'FOTA', 'FOTA', 1, 'N/A', 2000, 2174, 1),
(1991, 'CPC*', 'CPC*', 'CPC*', 1, 'N/A', 2000, 2176, 1),
(1992, 'PXS', 'PXS', 'PXS', 1, 'N/A', 2000, 2178, 1),
(1993, 'ZPT', 'ZPT', 'ZPT', 1, 'N/A', 2000, 2179, 1),
(1994, 'CROAT', 'CROAT', 'CROAT', 1, 'CryptoNight', 2000, 2180, 1),
(1995, 'REF', 'REF', 'REF', 1, 'N/A', 2000, 2181, 1),
(1996, 'SXDT', 'SXDT', 'SXDT', 1, 'N/A', 2000, 2182, 1),
(1997, 'SXUT', 'SXUT', 'SXUT', 1, 'N/A', 2000, 2183, 1),
(1998, 'FAIR*', 'FAIR*', 'FAIR*', 1, 'N/A', 2000, 2185, 1),
(1999, 'VAL', 'VAL', 'VAL', 1, 'Scrypt', 2000, 2186, 1),
(2000, 'MAN*', 'MAN*', 'MAN*', 1, 'N/A', 2000, 2187, 1),
(2001, 'BCDN', 'BCDN', 'BCDN', 1, 'N/A', 2000, 2188, 1),
(2002, 'STK', 'STK', 'STK', 1, 'N/A', 2000, 2189, 1),
(2003, 'MZX', 'MZX', 'MZX', 1, 'N/A', 2000, 2190, 1),
(2004, 'POLY*', 'POLY*', 'POLY*', 1, 'N/A', 2000, 2194, 1),
(2005, 'XTO', 'XTO', 'XTO', 1, 'X11', 2000, 2195, 1),
(2006, 'RUFF', 'RUFF', 'RUFF', 1, 'N/A', 2000, 2196, 1),
(2007, 'ELA', 'ELA', 'ELA', 1, 'N/A', 2000, 2197, 1),
(2008, 'TPAY*', 'TPAY*', 'TPAY*', 1, 'POS 3.0', 2000, 2198, 1),
(2009, 'CXO', 'CXO', 'CXO', 1, 'N/A', 2000, 2199, 1),
(2010, 'SISA', 'SISA', 'SISA', 1, 'N/A', 2000, 2203, 1),
(2011, 'EBIT', 'EBIT', 'EBIT', 1, 'N/A', 2000, 2204, 1),
(2012, 'CUZ', 'CUZ', 'CUZ', 1, 'N/A', 2000, 2209, 1),
(2013, 'ING', 'ING', 'ING', 1, 'N/A', 2000, 2214, 1),
(2014, 'LHC', 'LHC', 'LHC', 1, 'N/A', 2000, 2215, 1),
(2015, 'BLZ', 'BLZ', 'BLZ', 1, 'N/A', 2000, 2216, 1),
(2016, 'HALAL', 'HALAL', 'HALAL', 1, 'N/A', 2000, 2217, 1),
(2017, 'CRAVE*', 'CRAVE*', 'CRAVE*', 1, 'SHA256', 2000, 2218, 1),
(2018, 'CHSB', 'CHSB', 'CHSB', 1, 'N/A', 2000, 2219, 1),
(2019, 'MCT', 'MCT', 'MCT', 1, 'Ethash', 2000, 2221, 1),
(2020, 'CWIS', 'CWIS', 'CWIS', 1, 'Scrypt', 2000, 2223, 1),
(2021, 'MBC', 'MBC', 'MBC', 1, 'Scrypt', 2000, 2224, 1),
(2022, 'MTN*', 'MTN*', 'MTN*', 1, 'N/A', 2000, 2227, 1),
(2023, 'WBTC', 'WBTC', 'WBTC', 1, 'Scrypt', 2000, 2229, 1),
(2024, 'TKY', 'TKY', 'TKY', 1, 'NeoScrypt', 2000, 2235, 1),
(2025, 'PARETO', 'PARETO', 'PARETO', 1, 'N/A', 2000, 2247, 1),
(2026, 'BEE', 'BEE', 'BEE', 1, 'N/A', 2000, 2258, 1),
(2027, 'MUN', 'MUN', 'MUN', 1, 'SkunkHash', 2000, 2259, 1),
(2028, 'TIG', 'TIG', 'TIG', 1, 'N/A', 2000, 2260, 1),
(2029, 'DXT', 'DXT', 'DXT', 1, 'N/A', 2000, 2267, 1),
(2030, 'USX', 'USX', 'USX', 1, 'Scrypt', 2000, 2276, 1),
(2031, 'BCA', 'BCA', 'BCA', 1, 'SHA256', 2000, 2278, 1),
(2032, 'FSN*', 'FSN*', 'FSN*', 1, 'N/A', 2000, 2283, 1),
(2033, 'ARY', 'ARY', 'ARY', 1, 'N/A', 2000, 2286, 1),
(2034, 'BUN', 'BUN', 'BUN', 1, 'Scrypt', 2000, 2293, 1),
(2035, 'TRDT', 'TRDT', 'TRDT', 1, 'N/A', 2000, 2297, 1),
(2036, 'XBTY', 'XBTY', 'XBTY', 1, 'N/A', 2000, 2299, 1),
(2037, 'JC', 'JC', 'JC', 1, 'N/A', 2000, 2300, 1),
(2038, 'SKC', 'SKC', 'SKC', 1, 'Skein', 2000, 2302, 1),
(2039, 'JEW', 'JEW', 'JEW', 1, 'Quark', 2000, 2304, 1),
(2040, 'CRDNC', 'CRDNC', 'CRDNC', 1, 'SHA256', 2000, 2311, 1),
(2041, 'XVG', 'XVG', 'XVG', 1, '', 2000, 99, 1),
(2042, 'TTT', 'TTT', 'TTT', 1, 'N/A', 2000, 1528, 1),
(2043, 'INK', 'INK', 'INK', 1, 'N/A', 2000, 2074, 1),
(2044, 'NEC*', 'NEC*', 'NEC*', 1, 'N/A', 2000, 2320, 1),
(2045, 'WPR', 'WPR', 'WPR', 1, 'N/A', 2000, 1752, 1),
(2046, 'DTC**', 'DTC**', 'DTC**', 1, 'Scrypt', 2000, 2335, 1),
(2047, 'DRPU', 'DRPU', 'DRPU', 1, 'N/A', 2000, 2244, 1),
(2048, 'DADI', 'DADI', 'DADI', 1, 'N/A', 2000, 2336, 1),
(2049, 'GXS', 'GXS', 'GXS', 1, 'N/A', 2000, 2058, 1),
(2050, 'BBP', 'BBP', 'BBP', 1, 'Proof-of-BibleHash', 2000, 2340, 1),
(2051, 'HLC', 'HLC', 'HLC', 1, 'N/A', 2000, 2210, 1),
(2052, 'MED*', 'MED*', 'MED*', 1, 'N/A', 2000, 1995, 1),
(2053, 'BOT', 'BOT', 'BOT', 1, 'N/A', 2000, 2061, 1),
(2054, 'QBT*', 'QBT*', 'QBT*', 1, 'N/A', 2000, 2155, 1),
(2055, 'XDCE', 'XDCE', 'XDCE', 1, 'SHA256', 2000, 1961, 1),
(2056, 'ECHT', 'ECHT', 'ECHT', 1, 'N/A', 2000, 1715, 1),
(2057, 'KRM', 'KRM', 'KRM', 1, 'Groestl', 2000, 2307, 1),
(2058, 'CDY', 'CDY', 'CDY', 1, 'Equihash', 2000, 2309, 1),
(2059, 'SSS', 'SSS', 'SSS', 1, 'Scrypt', 2000, 2310, 1),
(2060, 'DDD', 'DDD', 'DDD', 1, 'N/A', 2000, 2175, 1),
(2061, 'BIFI', 'BIFI', 'BIFI', 1, 'N/A', 2000, 2312, 1),
(2062, 'BTF', 'BTF', 'BTF', 1, 'N/A', 2000, 2315, 1),
(2063, 'IPC*', 'IPC*', 'IPC*', 1, 'N/A', 2000, 2316, 1),
(2064, 'RCT', 'RCT', 'RCT', 1, 'N/A', 2000, 2206, 1),
(2065, 'SHOW', 'SHOW', 'SHOW', 1, 'N/A', 2000, 2317, 1),
(2066, 'STC', 'STC', 'STC', 1, 'N/A', 2000, 2318, 1),
(2067, 'AIT', 'AIT', 'AIT', 1, 'Lyra2RE', 2000, 2321, 1),
(2068, 'DTT*', 'DTT*', 'DTT*', 1, 'N/A', 2000, 1769, 1),
(2069, 'STQ', 'STQ', 'STQ', 1, 'N/A', 2000, 2322, 1),
(2070, 'TEN', 'TEN', 'TEN', 1, 'N/A', 2000, 2348, 1),
(2071, 'BETR', 'BETR', 'BETR', 1, 'N/A', 2000, 2211, 1),
(2072, 'CRPT', 'CRPT', 'CRPT', 1, 'N/A', 2000, 2132, 1),
(2073, 'LWF', 'LWF', 'LWF', 1, 'DPoS', 2000, 2086, 1),
(2074, 'DEB', 'DEB', 'DEB', 1, 'N/A', 2000, 1888, 1),
(2075, 'PYP', 'PYP', 'PYP', 1, 'N/A', 2000, 1969, 1),
(2076, 'GMR', 'GMR', 'GMR', 1, 'N/A', 2000, 2213, 1),
(2077, 'ALT', 'ALT', 'ALT', 1, 'SHA256', 2000, 2323, 1),
(2078, 'TRF', 'TRF', 'TRF', 1, 'Dagger', 2000, 2324, 1),
(2079, 'KB3', 'KB3', 'KB3', 1, 'X11', 2000, 2325, 1),
(2080, 'LCC', 'LCC', 'LCC', 1, 'SHA256', 2000, 2361, 1),
(2081, 'NYX', 'NYX', 'NYX', 1, 'NeoScrypt', 2000, 2263, 1),
(2082, 'MWAT', 'MWAT', 'MWAT', 1, 'N/A', 2000, 2303, 1),
(2083, 'ZYD', 'ZYD', 'ZYD', 1, 'SHA256', 2000, 747, 1),
(2084, 'DASH', 'DASH', 'DASH', 1, '', 4, 4, 1),
(2085, 'PTR', 'PTR', 'PTR', 1, 'N/A', 2000, 2360, 1),
(2086, 'EBTC', 'EBTC', 'EBTC', 1, 'N/A', 2000, 1633, 1),
(2087, 'FLIP', 'FLIP', 'FLIP', 1, 'Scrypt', 2000, 2371, 1),
(2088, 'NLG', 'NLG', 'NLG', 1, 'Scrypt', 2000, 284, 1),
(2089, 'UTN', 'UTN', 'UTN', 1, 'N/A', 2000, 1956, 1),
(2090, 'ILT', 'ILT', 'ILT', 1, 'N/A', 2000, 2288, 1),
(2091, 'IQB', 'IQB', 'IQB', 1, 'N/A', 2000, 2253, 1),
(2092, 'BANCA', 'BANCA', 'BANCA', 1, 'N/A', 2000, 2236, 1),
(2093, 'EARTH', 'EARTH', 'EARTH', 1, 'N/A', 2000, 1641, 1),
(2094, 'WCG', 'WCG', 'WCG', 1, 'SHA256', 2000, 2088, 1),
(2095, 'XMCC', 'XMCC', 'XMCC', 1, 'X11', 2000, 1462, 1),
(2096, 'CRC**', 'CRC**', 'CRC**', 1, 'N/A', 2000, 2191, 1),
(2097, 'NBR', 'NBR', 'NBR', 1, 'CryptoNight', 2000, 2285, 1),
(2098, 'HLP', 'HLP', 'HLP', 1, 'N/A', 2000, 2357, 1),
(2099, 'Q1S', 'Q1S', 'Q1S', 1, 'N/A', 2000, 2193, 1),
(2100, 'EQL', 'EQL', 'EQL', 1, 'N/A', 2000, 2330, 1),
(2101, 'VULC', 'VULC', 'VULC', 1, 'Scrypt', 2000, 2332, 1),
(2102, 'SPA', 'SPA', 'SPA', 1, 'Scrypt-n', 2000, 204, 1),
(2103, 'UNRC', 'UNRC', 'UNRC', 1, 'SHA256', 2000, 2339, 1),
(2104, 'TOKC', 'TOKC', 'TOKC', 1, 'X13', 2000, 2338, 1),
(2105, 'SXC', 'SXC', 'SXC', 1, 'Scrypt', 2000, 61, 1),
(2106, 'HYS', 'HYS', 'HYS', 1, 'N/A', 2000, 2344, 1),
(2107, 'LCWP', 'LCWP', 'LCWP', 1, 'N/A', 2000, 2345, 1),
(2108, 'BCR*', 'BCR*', 'BCR*', 1, 'N/A', 2000, 2364, 1),
(2109, 'SPC*', 'SPC*', 'SPC*', 1, 'N/A', 2000, 2370, 1),
(2110, 'GOOD*', 'GOOD*', 'GOOD*', 1, 'N/A', 2000, 2374, 1),
(2111, 'DTH', 'DTH', 'DTH', 1, 'N/A', 2000, 2378, 1),
(2112, 'SOC', 'SOC', 'SOC', 1, 'N/A', 2000, 2379, 1),
(2113, 'TDX', 'TDX', 'TDX', 1, 'N/A', 2000, 2380, 1),
(2114, 'CLN', 'CLN', 'CLN', 1, 'N/A', 2000, 2386, 1),
(2115, 'MLT', 'MLT', 'MLT', 1, 'N/A', 2000, 2116, 1),
(2116, 'VST', 'VST', 'VST', 1, 'N/A', 2000, 2105, 1),
(2117, 'REN', 'REN', 'REN', 1, 'N/A', 2000, 2377, 1),
(2118, 'BAX', 'BAX', 'BAX', 1, 'N/A', 2000, 2368, 1),
(2119, 'WT', 'WT', 'WT', 1, 'N/A', 2000, 2201, 1),
(2120, 'SPX', 'SPX*', 'SPX', 1, 'PoS', 2000, 679, 1),
(2121, 'BASHC', 'BASHC', 'BASHC', 1, 'Skein', 2000, 2389, 1),
(2122, 'DIGIF', 'DIGIF', 'DIGIF', 1, 'X11', 2000, 2390, 1),
(2123, 'NIHL', 'NIHL', 'NIHL', 1, 'NeoScrypt', 2000, 2387, 1),
(2124, 'CBS', 'CBS', 'CBS', 1, 'NeoScrypt', 2000, 2392, 1),
(2125, 'REBL', 'REBL', 'REBL', 1, 'N/A', 2000, 1792, 1),
(2126, 'SPICE', 'SPICE', 'SPICE', 1, 'N/A', 2000, 2192, 1),
(2127, 'FDX', 'FDX', 'FDX', 1, 'N/A', 2000, 2327, 1),
(2128, 'ALX', 'ALX', 'ALX', 1, 'DPoS', 2000, 2376, 1),
(2129, 'LYM', 'LYM', 'LYM', 1, 'N/A', 2000, 2275, 1),
(2130, 'NPX', 'NPX', 'NPX', 1, 'N/A', 2000, 1359, 1),
(2131, 'LNC', 'LNC', 'LNC', 1, 'N/A', 2000, 1482, 1),
(2132, 'BERRY', 'BERRY', 'BERRY', 1, 'N/A', 2000, 2369, 1),
(2133, 'AUC', 'AUC', 'AUC', 1, 'N/A', 2000, 2399, 1),
(2134, 'CPY', 'CPY', 'CPY', 1, 'N/A', 2000, 2107, 1),
(2135, 'EXY', 'EXY', 'EXY', 1, 'N/A', 2000, 1858, 1),
(2136, 'DTRC', 'DTRC', 'DTRC', 1, 'N/A', 2000, 2252, 1),
(2137, 'LIZ', 'LIZ', 'LIZ', 1, 'Skein', 2000, 2400, 1),
(2138, 'DAI', 'DAI', 'DAI', 1, 'N/A', 2000, 2290, 1),
(2139, 'NCASH', 'NCASH', 'NCASH', 1, 'N/A', 2000, 2402, 1),
(2140, 'CIF', 'CIF', 'CIF', 1, 'X11', 2000, 2401, 1),
(2141, 'MANA', 'MANA', 'MANA', 1, 'N/A', 2000, 1415, 1),
(2142, 'TRTL', 'TRTL', 'TRTL', 1, 'CryptoNight', 2000, 2237, 1),
(2143, 'CMCT', 'CMCT', 'CMCT', 1, 'N/A', 2000, 2404, 1),
(2144, 'PUT*', 'PUT*', 'PUT*', 1, 'N/A', 2000, 2405, 1),
(2145, 'SAT', 'SAT', 'SAT', 1, 'N/A', 2000, 2271, 1),
(2146, 'SPD', 'SPD', 'SPD', 1, '', 6, 2403, 1),
(2147, 'VANY', 'VANY', 'VANY', 1, 'N/A', 2000, 2365, 1),
(2148, 'POA', 'POA', 'POA', 1, 'Proof-of-Authority', 2000, 2407, 1),
(2149, 'LOT', 'LOT', 'LOT', 1, 'Scrypt', 2000, 2381, 1),
(2150, 'LEAF', 'LEAF', 'LEAF', 1, 'Scrypt', 2000, 2383, 1),
(2151, 'COMP', 'COMP', 'COMP', 1, 'X11', 2000, 2384, 1),
(2152, 'FUNK', 'FUNK', 'FUNK', 1, 'Scrypt', 2000, 2382, 1),
(2153, 'SCL', 'SCL', 'SCL', 1, 'N/A', 2000, 1549, 1),
(2154, 'TES', 'TES', 'TES', 1, 'Multiple', 2000, 215, 1),
(2155, 'LDC*', 'LDC', 'LDC*', 1, 'N/A', 2000, 2184, 1),
(2156, 'CHAN', 'CHAN', 'CHAN', 1, 'Cloverhash', 2000, 1286, 1),
(2157, 'TFD', 'TFD', 'TFD', 1, 'N/A', 2000, 2366, 1),
(2158, 'ZOI', 'ZOI', 'ZOI', 1, 'Lyra2RE', 2000, 1127, 1),
(2159, 'HT', 'HT', 'HT', 1, 'N/A', 2000, 2308, 1),
(2160, 'BIX', 'BIX', 'BIX', 1, 'N/A', 2000, 2240, 1),
(2161, 'RFR', 'RFR', 'RFR', 1, 'N/A', 2000, 2415, 1),
(2162, 'KREDS', 'KREDS', 'KREDS', 1, 'Lyra2REv2', 2000, 2329, 1),
(2163, 'DGM', 'DGM', 'DGM', 1, 'X11', 2000, 2391, 1),
(2164, 'XYO', 'XYO', 'XYO', 1, 'N/A', 2000, 2414, 1),
(2165, 'BTCH', 'BTCH', 'BTCH', 1, 'Equihash', 2000, 2397, 1),
(2166, 'CCRB', 'CCRB', 'CCRB', 1, 'N/A', 2000, 971, 1),
(2167, 'PLU', 'PLU', 'PLU', 1, 'N/A', 2000, 1062, 1),
(2168, 'JOY', 'JOY', 'JOY', 1, 'N/A', 2000, 2169, 1),
(2169, 'FUND', 'FUND', 'FUND', 1, 'N/A', 2000, 2419, 1),
(2170, 'NGC', 'NGC', 'NGC', 1, 'N/A', 2000, 1955, 1),
(2171, 'UBTC', 'UBTC', 'UBTC', 1, 'SHA256', 2000, 2118, 1),
(2172, 'CS*', 'CS*', 'CS*', 1, 'N/A', 2000, 2421, 1),
(2173, 'ROYAL', 'ROYAL', 'ROYAL', 1, 'X13', 2000, 856, 1),
(2174, 'DEA', 'DEA', 'DEA', 1, 'Scrypt', 2000, 1220, 1),
(2175, 'RVN', 'RVN', 'RVN', 1, 'X16R', 2000, 2411, 1),
(2176, 'FND', 'FND', 'FND', 1, 'N/A', 2000, 1326, 1),
(2177, 'PUSHI', 'PUSHI', 'PUSHI', 1, 'X11', 2000, 2422, 1),
(2178, 'ZER', 'ZER', 'ZER', 1, 'Equihash', 2000, 1122, 1),
(2179, 'SRNT', 'SRNT', 'SRNT', 1, 'N/A', 2000, 2115, 1),
(2180, 'LSK', 'LSK', 'LSK', 1, 'DPoS', 2000, 506, 1),
(2181, 'BTG', 'BTG', 'BTG', 1, 'Equihash', 2000, 1729, 1),
(2182, 'VVI', 'VVI', 'VVI', 1, 'N/A', 2000, 2351, 1),
(2183, 'ELP', 'ELP', 'ELP', 1, 'XEVAN', 2000, 2434, 1),
(2184, 'NEO', 'NEO', 'NEO', 1, '', 2000, 718, 1),
(2185, 'CCT', 'CCT', 'CCT', 1, 'N/A', 2000, 1574, 1),
(2186, 'CS', 'CS', 'CS', 1, 'DPoS', 2000, 969, 1),
(2187, 'SWM', 'SWM', 'SWM', 1, 'N/A', 2000, 2226, 1),
(2188, 'PROPS', 'PROPS', 'PROPS', 1, 'N/A', 2000, 2417, 1),
(2189, 'BINS', 'BINS', 'BINS', 1, 'N/A', 2000, 2423, 1),
(2190, 'POKER', 'POKER', 'POKER', 1, 'Scrypt', 2000, 2424, 1),
(2191, 'AXYS', 'AXYS', 'AXYS', 1, 'N/A', 2000, 2425, 1),
(2192, 'EVN*', 'EVN*', 'EVN*', 1, 'N/A', 2000, 2426, 1),
(2193, 'BOLD', 'BOLD', 'BOLD', 1, 'N/A', 2000, 2427, 1),
(2194, 'EXTN', 'EXTN', 'EXTN', 1, 'Scrypt', 2000, 2428, 1),
(2195, 'ETS', 'ETS', 'ETS', 1, 'N/A', 2000, 2430, 1),
(2196, 'LIPC', 'LIPC', 'LIPC', 1, 'Scrypt', 2000, 2431, 1),
(2197, 'HELL', 'HELL', 'HELL', 1, 'N/A', 2000, 2433, 1),
(2198, 'ACAT', 'ACAT', 'ACAT', 1, 'N/A', 2000, 2435, 1),
(2199, 'CO2', 'CO2', 'CO2', 1, 'N/A', 2000, 2438, 1),
(2200, 'SPX*', 'SPX', 'SPX*', 1, 'N/A', 2000, 2097, 1),
(2201, 'CCOS', 'CCOS', 'CCOS', 1, 'N/A', 2000, 1996, 1),
(2202, 'HBZ', 'HBZ', 'HBZ', 1, 'N/A', 2000, 2242, 1),
(2203, 'PMA', 'PMA', 'PMA', 1, 'N/A', 2000, 2062, 1),
(2204, 'NYC', 'NYC', 'NYC', 1, 'Scrypt', 2000, 1532, 1),
(2205, 'RKT', 'RKT', 'RKT', 1, 'N/A', 2000, 2436, 1),
(2206, 'SVD', 'SVD', 'SVD', 1, 'N/A', 2000, 2395, 1),
(2207, 'GNT', 'GNT', 'GNT', 1, '', 2000, 900, 1),
(2208, 'DNN', 'DNN', 'DNN', 1, 'N/A', 2000, 2056, 1),
(2209, 'MAG', 'MAG', 'MAG', 1, 'X11', 2000, 1882, 1),
(2210, 'DIG', 'DIG', 'DIG', 1, 'N/A', 2000, 2429, 1),
(2211, 'BTC', 'BTC', 'BTC', 1, '', 1, 1, 1),
(2212, 'EON', 'EON', 'EON', 1, 'N/A', 2000, 1552, 1),
(2213, 'VLX', 'VLX', 'VLX', 1, 'Scrypt', 2000, 2440, 1),
(2214, 'eFIC', 'eFIC', 'eFIC', 1, 'N/A', 2000, 2232, 1),
(2215, 'XEC', 'XEC', 'XEC', 1, 'N/A', 2000, 1486, 1),
(2216, 'ONT', 'ONT', 'ONT', 1, '', 2000, 2446, 1),
(2217, 'CSC', 'CSC', 'CSC', 1, 'N/A', 2000, 96, 1),
(2218, 'XNK', 'XNK', 'XNK', 1, 'N/A', 2000, 2412, 1),
(2219, 'FUCK', 'FUCK', 'FUCK', 1, 'N/A', 2000, 1472, 1),
(2220, 'CRU', 'CRU', 'CRU', 1, 'X11', 2000, 2452, 1),
(2221, 'PFR', 'PFR', 'PFR', 1, 'N/A', 2000, 1891, 1),
(2222, 'ELI*', 'ELI*', 'ELI*', 1, 'YescryptR16', 2000, 2453, 1),
(2223, 'VIB', 'VIB', 'VIB', 1, 'N/A', 2000, 1408, 1),
(2224, 'GGS', 'GGS', 'GGS', 1, 'N/A', 2000, 1323, 1),
(2225, 'ELI', 'ELI', 'ELI', 1, 'N/A', 2000, 2437, 1),
(2226, 'CLO', 'CLO', 'CLO', 1, 'N/A', 2000, 2451, 1),
(2227, 'BEZ', 'BEZ', 'BEZ', 1, 'N/A', 2000, 2456, 1),
(2228, 'ENTRC', 'ENTRC', 'ENTRC', 1, 'N/A', 2000, 2458, 1),
(2229, 'CFTY', 'CFTY', 'CFTY', 1, 'N/A', 2000, 2136, 1),
(2230, 'PTC', 'PTC', 'PTC', 1, 'Scrypt', 2000, 286, 1),
(2231, 'GRFT', 'GRFT', 'GRFT', 1, 'CryptoNight', 2000, 1646, 1),
(2232, 'XUC', 'XUC', 'XUC', 1, 'N/A', 2000, 1342, 1),
(2233, 'ABT', 'ABT*', 'ABT', 1, 'N/A', 2000, 1865, 1),
(2234, 'ABT*', 'ABT', 'ABT*', 1, 'N/A', 2000, 2241, 1),
(2235, 'REM', 'REM', 'REM', 1, 'N/A', 2000, 2030, 1),
(2236, 'STEX', 'STEX', 'STEX', 1, 'N/A', 2000, 1883, 1),
(2237, 'ACTN', 'ACTN', 'ACTN', 1, 'N/A', 2000, 2441, 1),
(2238, 'CDT', 'CDT', 'CDT', 1, 'N/A', 2000, 1292, 1),
(2239, 'EXMR', 'EXMR', 'EXMR', 1, 'N/A', 2000, 2281, 1),
(2240, 'UETL', 'UETL', 'UETL', 1, 'N/A', 2000, 2284, 1),
(2241, 'ANK', 'ANK', 'ANK', 1, 'N/A', 2000, 2353, 1),
(2242, 'XRP', 'XRP', 'XRP', 1, '', 2000, 12, 1),
(2243, 'LTC', 'LTC', 'LTC', 1, '', 3, 3, 1),
(2244, 'VPRC', 'VPRC', 'VPRC', 1, 'Scrypt', 2000, 562, 1),
(2245, 'SC', 'SC', 'SC', 1, '', 2000, 473, 1),
(2246, 'BIT', 'BIT', 'BIT', 1, 'N/A', 2000, 2463, 1),
(2247, 'LUC', 'LUC', 'LUC', 1, 'N/A', 2000, 2112, 1),
(2248, 'MFG', 'MFG', 'MFG', 1, 'N/A', 2000, 2092, 1),
(2249, 'GAI', 'GAI', 'GAI', 1, 'N/A', 2000, 2331, 1),
(2250, 'DNO', 'DNO', 'DNO', 1, 'N/A', 2000, 2231, 1),
(2251, 'XTROPTIONS', 'XTROPTIONS', 'XTROPTIONS', 1, 'N/A', 2000, 2460, 1),
(2252, 'BTCGO', 'BTCGO', 'BTCGO', 1, 'N/A', 2000, 2459, 1),
(2253, 'PGC', 'PGC', 'PGC', 1, 'Dagger-Hashimoto', 2000, 2462, 1),
(2254, 'NDC*', 'NDC*', 'NDC*', 1, 'X11', 2000, 2256, 1),
(2255, 'IOP', 'IOP', 'IOP', 1, 'SHA256', 2000, 1055, 1),
(2256, 'CSTL', 'CSTL', 'CSTL', 1, 'X11', 2000, 1872, 1),
(2257, 'PKC', 'PKC', 'PKC', 1, 'N/A', 2000, 2466, 1),
(2258, 'BTCP', 'BTCP', 'BTCP', 1, 'Equihash', 2000, 2301, 1),
(2259, 'PRFT', 'PRFT', 'PRFT', 1, 'N/A', 2000, 2246, 1),
(2260, 'DRG', 'DRG', 'DRG', 1, 'N/A', 2000, 2095, 1),
(2261, 'FLX*', 'FLX*', 'FLX*', 1, 'N/A', 2000, 2350, 1),
(2262, 'SQOIN', 'SQOIN', 'SQOIN', 1, 'N/A', 2000, 2467, 1),
(2263, 'RAVE', 'RAVE', 'RAVE', 1, 'Ethash', 2000, 2287, 1),
(2264, 'MAG**', 'MAG**', 'MAG**', 1, 'N/A', 2000, 2337, 1),
(2265, 'ZUP', 'ZUP', 'ZUP', 1, 'N/A', 2000, 2443, 1),
(2266, 'INVOX', 'INVOX', 'INVOX', 1, 'N/A', 2000, 2439, 1),
(2267, 'EQUI', 'EQUI', 'EQUI', 1, 'N/A', 2000, 2220, 1),
(2268, 'ZEN', 'ZEN', 'ZEN', 1, 'Equihash', 2000, 1244, 1),
(2269, 'TBAR', 'TBAR', 'TBAR', 1, 'N/A', 2000, 2468, 1),
(2270, 'CPL', 'CPL', 'CPL', 1, 'N/A', 2000, 2470, 1),
(2271, 'IPBC', 'IPBC', 'IPBC', 1, 'CryptoNight', 2000, 2471, 1),
(2272, 'AUTO', 'AUTO', 'AUTO', 1, 'N/A', 2000, 2472, 1),
(2273, 'CIX', 'CIX', 'CIX', 1, 'N/A', 2000, 1653, 1),
(2274, 'CHG', 'CHG', 'CHG', 1, 'N/A', 2000, 2473, 1),
(2275, 'MOAT', 'MOAT', 'MOAT', 1, 'N/A', 2000, 2454, 1),
(2276, 'WELL', 'WELL', 'WELL', 1, 'N/A', 2000, 2051, 1),
(2277, 'OMX', 'OMX', 'OMX', 1, 'N/A', 2000, 2474, 1),
(2278, 'TKNL', 'TKLN', 'TKNL', 1, 'N/A', 2000, 2469, 1),
(2279, 'ABYSS', 'ABYSS', 'ABYSS', 1, 'N/A', 2000, 1911, 1),
(2280, 'CBC', 'CBC', 'CBC', 1, 'N/A', 2000, 2448, 1),
(2281, 'SGN', 'SGN', 'SGN', 1, 'N/A', 2000, 2147, 1),
(2282, 'ONL', 'ONL', 'ONL', 1, 'N/A', 2000, 2098, 1),
(2283, 'SPEND', 'SPEND', 'SPEND', 1, 'N/A', 2000, 2177, 1),
(2284, 'VIN', 'VIN', 'VIN', 1, 'N/A', 2000, 2358, 1),
(2285, 'MNTS', 'MNTS', 'MNTS', 1, 'N/A', 2000, 2393, 1),
(2286, 'CRE*', 'CRE*', 'CRE*', 1, 'N/A', 2000, 2333, 1),
(2287, 'MDX', 'MDX', 'MDX', 1, 'N/A', 2000, 2445, 1),
(2288, 'CAPP', 'CAPP', 'CAPP', 1, 'N/A', 2000, 1585, 1),
(2289, 'BITCAR', 'BITCAR', 'BITCAR', 1, 'N/A', 2000, 2385, 1),
(2290, 'GRO', 'GRO', 'GRO', 1, 'N/A', 2000, 2225, 1),
(2291, 'SFU', 'SFU', 'SFU', 1, 'N/A', 2000, 2109, 1),
(2292, 'CRL', 'CRL', 'CRL', 1, 'N/A', 2000, 2273, 1),
(2293, 'HGS', 'HGS', 'HGS', 1, 'N/A', 2000, 2202, 1),
(2294, 'CJT', 'CJT', 'CJT', 1, 'N/A', 2000, 1839, 1),
(2295, 'MCU', 'MCU', 'MCU', 1, 'N/A', 2000, 2140, 1),
(2296, 'DOR', 'DOR', 'DOR', 1, 'Ethash', 2000, 2245, 1),
(2297, 'PTC**', 'PTC**', 'PTC**', 1, 'Scrypt', 2000, 2465, 1),
(2298, 'ADBL', 'ADBL', 'ADBL', 1, 'N/A', 2000, 2313, 1),
(2299, 'FILL', 'FILL', 'FILL', 1, 'N/A', 2000, 2406, 1),
(2300, 'CLIN', 'CLIN', 'CLIN', 1, 'N/A', 2000, 2372, 1),
(2301, 'EOS', 'EOS', 'EOS', 1, '', 2000, 1274, 1),
(2302, 'VLR', 'VLR', 'VLR', 1, 'N/A', 2000, 2001, 1),
(2303, 'DRC*', 'DRC*', 'DRC*', 1, 'N/A', 2000, 1905, 1),
(2304, 'SMT**', 'SMT', 'SMT**', 1, 'N/A', 2000, 1714, 1),
(2305, 'HMT', 'HMT', 'HMT', 1, 'N/A', 2000, 2444, 1),
(2306, 'GENE', 'GENE', 'GENE', 1, 'N/A', 2000, 2018, 1),
(2307, 'CEL', 'CEL', 'CEL', 1, 'N/A', 2000, 2420, 1),
(2308, 'ORI', 'ORI', 'ORI', 1, 'N/A', 2000, 2274, 1),
(2309, 'CEDEX', 'CEDEX', 'CEDEX', 1, 'N/A', 2000, 2418, 1),
(2310, 'NBX', 'NBX', 'NBX', 1, 'N/A', 2000, 2367, 1),
(2311, 'ET4', 'ET4', 'ET4', 1, 'N/A', 2000, 2102, 1),
(2312, 'LYK', 'LYK', 'LYK', 1, 'N/A', 2000, 2261, 1),
(2313, 'FSBT', 'FSBT', 'FSBT', 1, 'N/A', 2000, 2135, 1),
(2314, 'HION', 'HION', 'HION', 1, 'N/A', 2000, 2022, 1),
(2315, 'BBI', 'BBI', 'BBI', 1, 'N/A', 2000, 2455, 1),
(2316, 'GES', 'GES', 'GES', 1, 'N/A', 2000, 1822, 1),
(2317, 'PROOF', 'PROOF', 'PROOF', 1, 'N/A', 2000, 2396, 1),
(2318, 'REPUX', 'REPUX', 'REPUX', 1, 'N/A', 2000, 2168, 1),
(2319, 'GOFF', 'GOFF', 'GOFF', 1, 'N/A', 2000, 2432, 1),
(2320, 'XCD', 'XCD', 'XCD', 1, 'N/A', 2000, 2171, 1),
(2321, 'SHPING', 'SHPING', 'SHPING', 1, 'N/A', 2000, 2359, 1),
(2322, 'CARE', 'CARE', 'CARE', 1, 'N/A', 2000, 2243, 1),
(2323, 'ENK', 'ENK', 'ENK', 1, 'N/A', 2000, 2375, 1),
(2324, 'DHT', 'DHT', 'DHT', 1, 'N/A', 2000, 2373, 1),
(2325, 'NVT', 'NVT', 'NVT', 1, 'N/A', 2000, 2346, 1),
(2326, 'GEA', 'GEA', 'GEA', 1, 'N/A', 2000, 1914, 1),
(2327, 'AR*', 'AR*', 'AR*', 1, 'SHA256', 2000, 1543, 1),
(2328, 'HHEM', 'HHEM', 'HHEM', 1, 'N/A', 2000, 2222, 1),
(2329, 'USDC', 'USDC', 'USDC', 1, 'Scrypt', 2000, 2447, 1),
(2330, 'redBUX', 'redBUX', 'redBUX', 1, 'N/A', 2000, 2398, 1),
(2331, 'HAV', 'HAV', 'HAV', 1, 'N/A', 2000, 2476, 1),
(2332, 'TOMO', 'TOMO', 'TOMO', 1, 'N/A', 2000, 2477, 1),
(2333, 'KNW', 'KNW', 'KNW', 1, 'N/A', 2000, 2461, 1),
(2334, 'LIYEP', 'CHI', 'LIYEP', 1, '', 2000, 2478, 1),
(2335, 'CHF', 'CHF', 'CHF', 1, 'N/A', 2000, 2479, 1),
(2336, '$', 'USD', 'USD', 1, '', 2000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_deposit`
--

CREATE TABLE `dbt_deposit` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `amount` double(19,8) NOT NULL,
  `method` varchar(50) NOT NULL,
  `fees_amount` double(19,8) NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `deposit_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Pending, 1= confirm, 2=Cancel',
  `ip` varchar(50) NOT NULL,
  `approved_cancel_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_exchange`
--

CREATE TABLE `dbt_exchange` (
  `id` int(11) NOT NULL,
  `exchange_type` varchar(10) NOT NULL,
  `source_wallet` varchar(300) NOT NULL,
  `crypto_qty` double(19,8) NOT NULL,
  `crypto_rate` double(19,8) NOT NULL,
  `complete_qty` double(19,8) NOT NULL,
  `available_qty` double(19,8) NOT NULL,
  `total_amount` double(19,8) NOT NULL,
  `amount_available` double(19,8) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `market_symbol` varchar(50) NOT NULL,
  `fees_amount` double(19,8) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Cancel, 1=Complete, 2=Running'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_exchange_details`
--

CREATE TABLE `dbt_exchange_details` (
  `id` int(11) NOT NULL,
  `exc_id` int(11) NOT NULL,
  `exchange_type` varchar(10) NOT NULL,
  `source_wallet` varchar(300) NOT NULL,
  `destination_wallet` varchar(300) NOT NULL,
  `crypto_qty` double(19,8) NOT NULL,
  `crypto_rate` double(19,8) NOT NULL,
  `complete_qty` double(19,8) NOT NULL,
  `available_qty` double(19,8) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `market_symbol` varchar(50) NOT NULL,
  `fees_amount` double(19,8) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_exchange_history`
--

CREATE TABLE `dbt_exchange_history` (
  `id` int(11) NOT NULL,
  `coin_symbol` varchar(100) NOT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `last_price` double(19,8) NOT NULL,
  `total_coin_supply` double(19,8) NOT NULL,
  `price_high_1h` double(19,8) NOT NULL,
  `price_low_1h` double(19,8) NOT NULL,
  `price_change_1h` double(19,8) NOT NULL,
  `volume_1h` double(19,8) NOT NULL,
  `price_high_24h` double(19,8) NOT NULL,
  `price_low_24h` double(19,8) NOT NULL,
  `price_change_24h` double(19,8) NOT NULL,
  `volume_24h` double(19,8) NOT NULL,
  `open` double(19,8) NOT NULL,
  `close` double(19,8) NOT NULL,
  `volumefrom` double(19,8) NOT NULL,
  `volumeto` double(19,8) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_fees`
--

CREATE TABLE `dbt_fees` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `fees` double NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_messenger`
--

CREATE TABLE `dbt_messenger` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(50) NOT NULL,
  `reciver_id` varchar(50) NOT NULL,
  `subject` text NOT NULL,
  `messege` text NOT NULL,
  `replay_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_payout_method`
--

CREATE TABLE `dbt_payout_method` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `method` varchar(250) NOT NULL,
  `wallet_id` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_release_setup`
--

CREATE TABLE `dbt_release_setup` (
  `id` int(11) NOT NULL,
  `round_name` varchar(100) NOT NULL,
  `day` tinyint(5) NOT NULL,
  `target` int(11) NOT NULL,
  `fillup_target` double(19,8) NOT NULL,
  `exchange_currency` varchar(100) NOT NULL,
  `start_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_token`
--

CREATE TABLE `dbt_token` (
  `id` bigint(22) NOT NULL,
  `token` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_transfer`
--

CREATE TABLE `dbt_transfer` (
  `id` int(11) NOT NULL,
  `sender_user_id` varchar(255) DEFAULT NULL,
  `receiver_user_id` varchar(255) DEFAULT NULL,
  `amount` double(19,8) DEFAULT NULL,
  `fees` double(19,8) NOT NULL,
  `request_ip` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comments` mediumtext,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='client to client transfer success, request data recorded.';

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user`
--

CREATE TABLE `dbt_user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password_reset_token` varchar(300) DEFAULT NULL,
  `googleauth` varchar(100) DEFAULT NULL,
  `referral_id` varchar(100) DEFAULT NULL,
  `referral_status` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` text,
  `bio` text,
  `image` varchar(300) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '"0=Deactivated account, 1=Activated account, 2=Pending account, 3=Suspend account"',
  `verified` int(11) NOT NULL DEFAULT '0' COMMENT '0= did not submit info, 1= verified, 2=Cancel, 3=processing',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_cryptowallet`
--

CREATE TABLE `dbt_user_cryptowallet` (
  `id` bigint(22) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `wallet` varchar(100) NOT NULL,
  `balance` double(19,8) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_log`
--

CREATE TABLE `dbt_user_log` (
  `log_id` int(11) NOT NULL,
  `log_type` varchar(50) NOT NULL COMMENT '"acc_update = User Account Update, login=User Login info, deposit=User Deposit info, transfer=User Transfer info, withdraw=User Withdraw info, open_order="',
  `access_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_agent` varchar(300) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_verify_doc`
--

CREATE TABLE `dbt_user_verify_doc` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `verify_type` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `id_number` varchar(300) NOT NULL,
  `document1` varchar(300) NOT NULL,
  `document2` varchar(300) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_verify`
--

CREATE TABLE `dbt_verify` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(250) DEFAULT NULL,
  `session_id` varchar(250) DEFAULT NULL,
  `verify_code` varchar(250) DEFAULT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `data` text,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_withdraw`
--

CREATE TABLE `dbt_withdraw` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `wallet_id` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `method` varchar(50) NOT NULL,
  `fees_amount` double NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `success_date` datetime DEFAULT NULL,
  `cancel_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Cancel request, 1=Approved request, 2=Pending request',
  `ip` varchar(50) NOT NULL,
  `approved_cancel_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `earning_id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `Purchaser_id` varchar(250) DEFAULT NULL,
  `earning_type` varchar(45) NOT NULL,
  `package_id` varchar(250) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `date` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `comments` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Weekly ROI, Monthly ROI, team bonous, direct referal bonous';

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_gateway`
--

CREATE TABLE `email_sms_gateway` (
  `es_id` int(11) NOT NULL,
  `gatewayname` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `protocol` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mailtype` varchar(100) DEFAULT NULL,
  `charset` varchar(100) DEFAULT NULL,
  `api` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_sms_gateway`
--

INSERT INTO `email_sms_gateway` (`es_id`, `gatewayname`, `title`, `protocol`, `host`, `port`, `user`, `userid`, `password`, `mailtype`, `charset`, `api`) VALUES
(1, 'budgetsms', 'Bdtask SMS', NULL, 'https://api.budgetsms.net/sendsms/?', NULL, 'tradeboxbdtask', '139062', NULL, NULL, NULL, 'b39edd600577b6b3bd16cc69aec82f05'),
(2, 'smtp', 'Bbtask mail', 'smtp', 'ssl://smtp.gmail.com', '465', 'rdmvaijah@gmail.com', '', 'vai99862', 'html', 'utf-8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `order_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `sponsor_id` varchar(255) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `invest_date` date DEFAULT NULL,
  `day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All investment and primary investor and referrar information will be stored here.';

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text,
  `french` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES
(1, 'email', 'Email Address', 'Email'),
(2, 'password', 'Password', 'Mot de passe'),
(3, 'login', 'Log In', 'Connexion'),
(4, 'incorrect_email_password', 'Incorrect Email/Password!', 'Mot de passe ou email incorrect'),
(5, 'user_role', 'User Role', 'Rôle Utilisateur'),
(6, 'please_login', 'Please Log In', 'Veuillez vous connecter'),
(7, 'setting', 'Setting', 'Reglages'),
(8, 'profile', 'Profile', 'Profil'),
(9, 'logout', 'Log Out', 'Déconnexion'),
(10, 'please_try_again', 'Please Try Again', 'Essayez encore !'),
(11, 'admin', 'Admin', 'Administrateur'),
(12, 'dashboard', 'Dashboard', 'Tableau de Bord'),
(13, 'language_setting', 'Language Setting', 'Reglage Langue'),
(14, 'status', 'Status', 'Status'),
(15, 'active', 'Active', 'Actif'),
(16, 'inactive', 'Inactive', 'Inactif'),
(17, 'cancel', 'Cancel', 'Annuler'),
(18, 'save', 'Save', 'Sauvegarder'),
(19, 'serial', 'SL.NO', 'Serial'),
(20, 'action', 'Action', 'Action'),
(21, 'edit', 'Edit ', 'Editer'),
(22, 'delete', 'Delete', 'Supprimer'),
(23, 'save_successfully', 'Save Successfully!', 'Sauvegarde reussi'),
(24, 'update_successfully', 'Update Successfully!', 'Mise à jour reussi'),
(25, 'delete_successfully', 'Delete successfully!', 'Suppression Reussi'),
(26, 'are_you_sure', 'Are You Sure ? ', 'Etes-vous sure?'),
(27, 'ip_address', 'IP Address', 'Adresse IP'),
(28, 'application_title', 'Application Title', 'Titre appli'),
(29, 'favicon', 'Favicon', 'favicon'),
(30, 'logo', 'Logo', 'Logo'),
(31, 'footer_text', 'Footer Text', 'Titre Footer'),
(32, 'language', 'Language', 'Langue'),
(33, 'website_title', 'Website Title', 'Titre site web'),
(34, 'invalid_logo', 'Invalid Logo', 'Logo invalide'),
(35, 'submit_successfully', 'Submit Successfully!', 'Envoi reussi'),
(36, 'application_setting', 'Application Setting', 'Reglages appli'),
(37, 'invalid_favicon', 'Invalid Favicon', 'Favicon Invalide'),
(38, 'submit', 'Submit', 'Envoyez'),
(39, 'site_align', 'Website Align', 'Alignement site'),
(40, 'right_to_left', 'Right to Left', 'Doite vers la gauche'),
(41, 'left_to_right', 'Left to Right', 'Gauche Vers la droite'),
(42, 'subject', 'Subject', 'Sujet'),
(43, 'receiver_name', 'Send To', 'Nom Bénéficiaire'),
(44, 'select_user', 'Select User', 'Selectionner Utilisateur'),
(45, 'message_sent', 'Messages Sent', 'Message Envoyé'),
(46, 'mail', 'Mail', 'Mail'),
(47, 'send_mail', 'Send Mail', 'Envoyer Mail'),
(48, 'mail_setting', 'Mail Setting', 'Reglage mail'),
(49, 'protocol', 'Protocol', 'Protocole'),
(50, 'mailpath', 'Mail Path', 'Repertoire Mail'),
(51, 'mailtype', 'Mail Type', 'Type mail'),
(52, 'validate_email', 'Validate Email Address', 'Validez votre Email'),
(53, 'true', 'True', 'Vraie'),
(54, 'false', 'False', 'faux'),
(55, 'attach_file', 'Attach File', 'Joindre un document'),
(56, 'wordwrap', 'Enable Word Wrap', 'Wordwrap'),
(57, 'send', 'Send', 'Envoyer'),
(58, 'app_setting', 'App Setting', 'Reglages appli'),
(59, 'sms', 'SMS', 'SMS'),
(60, 'gateway_setting', 'Gateway Setting', 'Reglage portail'),
(61, 'time_zone', 'Time Zone', 'Time Zone'),
(62, 'provider', 'Provider', 'Fournisseur'),
(63, 'sms_template', 'SMS Template', 'Template SMS'),
(64, 'template_name', 'Template Name', 'Nom du template'),
(65, 'sms_schedule', 'SMS Schedule', 'Emploi du temps SMS'),
(66, 'schedule_name', 'Schedule Name', 'Nom d''horaire'),
(67, 'time', 'Time', 'Heure'),
(68, 'already_exists', 'Already Exists', 'Existe déjà'),
(69, 'send_custom_sms', 'Send Custom SMS', 'Envoyer SMS personalisé'),
(70, 'sms_sent', 'SMS Sent!', 'SMS envoyé'),
(71, 'custom_sms_list', 'Custom SMS List', 'List SMS personalisé'),
(72, 'reciver', 'Reciver', 'Bénéficiaire'),
(73, 'auto_sms_report', 'Auto SMS Report', 'Rapport SMS Auto'),
(74, 'user_sms_list', 'User SMS List', 'Liste SMS utilisateurs'),
(75, 'send_sms', 'Send SMS', 'Envoyer SMS'),
(76, 'new_sms', 'New SMS', 'Nouveau Message'),
(77, 'update', 'Update', 'Mettre à jour'),
(78, 'reset', 'Reset', 'Reinitialiser'),
(79, 'messages', 'Messages', 'Messages'),
(80, 'inbox', 'Inbox', 'Boite de réception'),
(81, 'sent', 'Sent', 'Envoyé'),
(82, 'captcha', 'Captcha', 'Captcha'),
(83, 'welcome_back', 'Welcome back ', 'Bienvenue à nouveau !'),
(84, 'inbox_message', 'Inbox Message', 'SMS Boite de réception'),
(85, 'image_upload_successfully', 'Image Upload Successfully.', 'Upload d''image reussi'),
(87, 'users', 'Users', 'Utilisateurs'),
(88, 'add_user', 'Add User', 'Ajouter utilisateur'),
(89, 'user_list', 'User List', 'Liste Utilisateurs'),
(90, 'firstname', 'First Name', 'Nom'),
(91, 'lastname', 'Last Name', 'Prénoms'),
(92, 'about', 'About', 'A propos de nous'),
(93, 'preview', 'Preview', 'Visualliser'),
(94, 'last_login', 'Last Login', 'Dernière connexion'),
(95, 'last_logout', 'Last Logout', 'Dernière Déconnexion'),
(96, 'image', 'Image', 'Image'),
(97, 'fullname', 'Full Name', 'Nom Complet'),
(98, 'new_message', 'New Message', 'Nouveau Message'),
(99, 'message', 'Message', 'Message'),
(100, 'sender_name', 'Sender Name', 'Nom de l''expéditeur'),
(101, 'sl_no', 'SL No.', 'Numéro SL'),
(103, 'message_details', 'Message Details', 'Détails message'),
(104, 'date', 'Date', 'Date'),
(105, 'select_option', 'Select Option', 'Selectionner Option'),
(106, 'edit_profile', 'Edit Profile', 'Editer Profile'),
(107, 'edit_user', 'Edit User', 'Editer utilisateur'),
(108, 'sent_message', 'Sent Message', 'Message Envoyé'),
(109, 'sub_admin', 'Sub Admin', 'Sub Administrateur'),
(110, 'admin_list', 'Admin List', 'List Administrateurs'),
(111, 'add_admin', 'Add Admin', 'Ajouter Administrateur'),
(112, 'edit_admin', 'Edit Admin', 'Editer Admin'),
(113, 'username', 'Username', 'Nom utilisateur'),
(114, 'sponsor_id', 'Sponsor ID', 'ID sponsor'),
(115, 'mobile', 'Mobile', 'Mobile'),
(116, 'register', 'Register', 'Enregistrer'),
(117, 'conf_password', 'Confirm Password', 'Reglage mot de passe'),
(118, 'user_id', 'User ID', 'ID utilisateur'),
(119, 'package', 'Package', 'Pack'),
(120, 'create', 'Create', 'Créer'),
(121, 'package_name', 'Package Name', 'Nom du pack'),
(122, 'package_deatils', 'Package Deatils', 'Detail pack'),
(123, 'package_amount', 'Package Amount', 'Montant pack'),
(124, 'daily_roi', 'Daily ROI', 'ROI journalier'),
(125, 'weekly_roi', 'Weekly ROI', 'ROI Hebdomadaire'),
(126, 'monthly_roi', 'Monthly ROI', 'ROI Mensuel'),
(127, 'yearly_roi', 'Yearly ROI', 'ROI annuel'),
(128, 'total_percent', 'Total Percent', 'Poucentage Total'),
(129, 'add_package', 'Add Package', 'Ajouter un Pack'),
(130, 'edit_package', 'Edit Package', 'Editer Pack'),
(131, 'package_list', 'Package List', 'Liste Packs'),
(132, 'withdraw', 'Withdraw', 'Retraits'),
(133, 'request', 'Request', 'Requête'),
(134, 'success', 'Success', 'Succès ! '),
(135, 'request_date', 'Request Date', 'Date Requête'),
(136, 'payment_method', 'Payment Method', 'Methode de paiement'),
(137, 'amount', 'Amount', 'Montant'),
(138, 'charge', 'Charge', 'Frais'),
(139, 'total', 'Total', 'Total'),
(140, 'comments', 'Comments', 'Commentaires'),
(141, 'pending', 'Pending', 'En cours'),
(142, 'cancel_date', 'Cancel Date', 'Annuler date'),
(143, 'block_list', 'Block List', 'Liste Noire'),
(144, 'commission', 'Commission', 'Commission'),
(145, 'setup', 'Setup', 'Regler'),
(146, 'setup_list', 'Setup List', 'Liste de reglage'),
(147, 'commission_list', 'Commission List', 'Liste Commission'),
(148, 'level_name', 'Level Name', 'Nom du stage'),
(149, 'personal_invest', 'Personal Invest', 'Mon investissement'),
(150, 'total_invest', 'Total Invest', 'Total Investissement'),
(151, 'team_bonous', 'Team Bonous', 'Bonus d''Equipe'),
(152, 'referral_bonous', 'Referral Bonous', 'Bonus parrainage'),
(154, 'form_submit_msg', 'Insert Successfully', 'Envoyer formulaire'),
(155, 'transection_category', 'Transaction Category', 'Catégorie Transaction'),
(156, 'transfer_add_msg', 'Transfer Successfully', 'Ajouter SMS transfert'),
(157, 'transfer', 'Transfer', 'Transfert'),
(158, 'deposit', 'Deposit', 'Depot'),
(159, 'add_deposit', 'Add Deposit', 'Effectuer un Depot'),
(160, 'deposit_list', 'Deposit List', 'Liste depot'),
(161, 'team', 'Team', 'Equipe'),
(162, 'investment', 'Investment', 'Investissement personnel'),
(163, 'notification', 'Notification', 'Notification'),
(164, 'receiver_id', 'Receiver Id', 'ID Bénéficiaire'),
(165, 'comment', 'Comments', 'Commentaire'),
(166, 'otp_send_to', 'OTP Send To', 'OTP envoyer à'),
(167, 'transection', 'Transaction', 'Transactions'),
(168, 'buy', 'Buy', 'Acheter'),
(169, 'balance', 'Balance', 'Solde de compte'),
(170, 'deposit_amount', 'Deposit Amount', 'Montant Depot'),
(171, 'deposit_method', 'Deposit Method', 'Methode depot'),
(172, 'deposit_wallet_id', 'Deposit Wallet Id', 'Wallet ID'),
(174, 'confirm_transfer', 'Confirm Transfer', 'Confirmer transfert'),
(175, 'transfer_amount', 'Transfer Amount', 'Montant Transfert'),
(176, 'enter_verify_code', 'Enter Verify Code', 'Entrer code de vérification'),
(177, 'confirm', 'Confirm', 'Confirmer'),
(178, 'deopsit_add_msg', 'Deposit Add Successfully.', 'Depot effectué avec succès'),
(179, 'transfar_recite', 'Transfer Recite', 'Reçu de transfert'),
(180, 'earn', 'Earn', 'Gagner'),
(181, 'balance_is_unavailable', 'Balance Is not sufficient', 'Solde insuffisant'),
(182, 'package_buy_successfully', 'Package Buy Successfully!', 'Achat du package reussi ! '),
(184, 'withdraw_recite', 'Withdraw Recite', 'Reçu de retrait'),
(185, 'withdraw_confirm', 'withdraw Confirm', 'Confirmation Retrait'),
(187, 'change_verify', 'Confirm Verify', 'Changer Verification'),
(188, 'change_password', 'Password Change', 'Changer mot de passe'),
(189, 'enter_confirm_password', 'Enter Confirm Password', 'Confirmer mot de passe'),
(190, 'enter_new_password', 'Enter New Password', 'Entrer nouveau mot de passe'),
(191, 'enter_old_password', 'Enter Old Password', 'Entrer ancien mot de passe'),
(192, 'change', 'Change', 'Changer'),
(193, 'password_change_successfull', 'Password Change Successfully', 'Mot de passe changé avec succès'),
(194, 'old_password_is_wrong', 'Old Password Is Wrong', 'Entrer ancien mot de passe incorrect'),
(195, 'fees_setting', 'Fees Setting', 'Reglages frais'),
(196, 'level', 'Level', 'Stage'),
(197, 'select_level', 'Select Level', 'Selectionner stage'),
(198, 'fees_setting_successfully', 'Fees Setting Successfully', 'Reglages Frais reussi'),
(199, 'bitcoin', 'Bitcoin', 'Bitcoin'),
(200, 'payeer', 'Payeer', 'Payeer'),
(201, 'name', 'Name', 'Nom'),
(202, 'order_id', 'Order Id', 'ID de commande'),
(203, 'fees', 'Fees', 'Frais'),
(204, 'period', 'Period', 'Période'),
(205, 'commission_ret', 'Commission Ret', 'Commission ret'),
(206, 'title', 'Title', 'Titre'),
(207, 'details', 'Details', 'Details'),
(208, 'personal_info', 'Personal Information', 'Informations personnels'),
(209, 'sponsor_info', 'Sponsor Information', 'Info Sponsor'),
(210, 'affiliate_url', 'Affiliat Url', 'Lien parrainage'),
(211, 'copy', 'Copy', 'Copier'),
(212, 'my_payout', 'My Payout', 'Mes Paiements'),
(213, 'personal_sales', 'Personal Sales', 'Ventes Personnelles'),
(214, 'bank_details', 'Bank Details', 'Details de banque'),
(215, 'beneficiary_name', 'Beneficiary Name', 'Nom Beneficiaire'),
(216, 'bank_name', 'Bank Name', 'Nom de banque'),
(217, 'branch', 'Branch', 'Branche'),
(218, 'account_number', 'Account Number', 'Numéro de compte'),
(219, 'ifsc_code', 'IFC Code', 'Code IFSC'),
(220, 'account', 'Account', 'Compte'),
(221, 'my_commission', 'My Commission', 'Mes commissions'),
(222, 'finance', 'Finance', 'Finance'),
(223, 'exchange', 'Exchange', 'Echange'),
(224, 'bitcoin_setting', 'Bitcoin Setting', 'Reglages bitcoin'),
(225, 'payeer_setting', 'Payeer Setting', 'Reglages Payeer'),
(226, 'bank_information', 'Bank Information', 'Infos de banque'),
(227, 'bitcoin_wallet_id', 'Bitcoin Wallet ID', 'Wallet Bitcoin'),
(228, 'payment_method_setting', 'Payment Method Setting', 'Reglage methode de paiement'),
(229, 'payeer_wallet_id', 'Payeer Wallet Id', 'ID Payeer'),
(230, 'my_package', 'My Package', 'Mes packs'),
(231, 'my_team', 'My Team', 'Mon Equipe'),
(232, 'receipt', 'Receipt', 'Réçu'),
(233, 'withdraw_successfull', 'Withdraw Successfully', 'Retrait reussi !'),
(234, 'team_bonus', 'Team Bonus', 'Bonus d''Equipe'),
(235, 'withdraw_list', 'Withdraw List', 'Liste retraits'),
(236, 'pending_withdraw', 'Pending Withdraw', 'Demande de retrat en cours'),
(237, 'reciver_account', 'Receiver Account', 'Compte Bénéficiaire'),
(238, 'french', 'French', 'Français'),
(239, 'commission_setup', 'Commission Setup', 'Reglage commission'),
(240, 'personal_investment', 'Personal Investment', 'Investissement personnel'),
(241, 'total_investment', 'Total investment', 'Total Investissement'),
(242, 'transfer_list', 'Transfer List', 'Liste transfert'),
(243, 'form_to', 'From To', ''),
(244, 'receive', 'Receive', ''),
(245, 'wallet_id', 'Wallet Id', 'ID Wallet'),
(246, 'withdraw_details', 'Withdraw Details', 'Details retraits'),
(247, 'generation_one', 'Generation One', 'Génération 1'),
(248, 'generation_two', 'Generation Two', 'Génération 2'),
(249, 'generation_three', 'Generation Three', 'Génération 3'),
(250, 'generation_four', 'Generation Four', 'Génération 4'),
(251, 'generation_five', 'Generation Five', 'Génération 5'),
(252, 'generation_empty_message', 'You Have No Generation', ''),
(253, 'view', 'View', 'Aperçu'),
(254, 'cancle', 'Cancel', 'Annuler'),
(255, 'type', 'Type', 'Type'),
(256, 'your_total_balance_is', 'Your Total Balance Is', 'Votre montant total est de'),
(257, 'bonus', 'Bonus', 'Bonus'),
(258, 'personal_turnover', 'Sponser Turnover', 'Mon Chiffre d''affaire perso'),
(259, 'team_turnover', 'Team Turnover', 'Chiffre d''affaire Equipe'),
(260, 'post_article', 'Post Article', ''),
(261, 'article_list', 'Article List', 'LIste article'),
(262, 'add_article', 'Add Article', 'Ajouter article'),
(263, 'headline_en', 'Headline English', 'Titre EN'),
(264, 'headline_fr', 'Headline French', 'Titre  FR'),
(265, 'article_en', 'Article English', 'Article EN'),
(266, 'article_fr', 'Article French', 'Article FR'),
(267, 'edit_article', 'Edit Article', 'Editer article'),
(268, 'cat_list', 'Category List', 'Liste panier'),
(269, 'add_cat', 'Add Category', 'Ajouter au panier'),
(270, 'parent_cat', 'Parent Category', ''),
(271, 'cat_name_en', 'Category Name English', 'Nom panier EN'),
(272, 'cat_name_fr', 'Category Name French', 'Nom panier FR'),
(273, 'cat_title_en', 'Category Title English', 'Titre Panier EN'),
(274, 'cat_title_fr', 'Category Title French', 'Titre panier FR'),
(275, 'select_cat', 'Select Category', 'Selectionner Cat'),
(276, 'edit_cat', 'Edit Category', 'Editer Panier'),
(277, 'position_serial', 'Position Serial', ''),
(278, 'currency_list', 'Currency List', 'Liste de devise'),
(279, 'currency', 'Currency', 'Devise'),
(280, 'cryptocurrency_name', 'CryptoCurrency  Name', 'Nom Crypto monnaie'),
(281, 'select_cryptocurrency', 'Select Cryptocurrency', 'Selectionner Crypto'),
(282, 'edit_currency', 'Edit Currency', 'Editer Devise'),
(283, 'exchange_list', 'Exchange List', 'Liste échanges'),
(284, 'add_exchange', 'Add Exchange', 'Ajouter Echange'),
(285, 'edit_exchange', 'Edit Exchange', 'Editer Echange'),
(286, 'wallet_data', 'Wallet ID', 'Données Wallet'),
(287, 'sell_adjustment', 'Sell Adjustment', 'Ajustement Vente'),
(288, 'buy_adjustment', 'Buy Adjustment', ''),
(289, 'exchange_wallet', 'Exchange Wallet', 'Wallet Echange'),
(290, 'exchange_wallet_list', 'Exchange Wallet List', 'Liste Wallet echange'),
(291, 'add_exchange_wallet', 'Add Exchange Wallet', 'Ajouter Wallet'),
(292, 'edit_exchange_wallet', 'Edit Exchange Wallet', 'Modifier Wallet echange'),
(293, 'local_currency_list', 'Local Currency List', 'LIste  Monnaies locales'),
(294, 'local_currency', 'Local Currency', 'Devise Locale'),
(295, 'add_local_currency', 'Add Local Currency', 'Ajouter Monnaie'),
(296, 'edit_local_currency', 'Edit Local Currency', 'Editer Devise locale'),
(297, 'currency_name', 'Currency Name', 'Nom devise'),
(298, 'currency_iso_code', 'Currency ISO Code', 'Code ISO devise '),
(299, 'usd_exchange_rate', 'USD Exchange Rate', 'Taux d''echange USD'),
(300, 'currency_symbol', 'Currency Symbol', 'Symboles Devise'),
(301, 'symbol_position', 'Symbol Position', 'Position symbole'),
(302, 'currency_position', 'Currency Position', 'Position devise'),
(303, 'payment_gateway', 'Payment Gateway', 'Portail de paiement'),
(304, 'gateway_name', 'Gateway Name', 'Nom passerelle'),
(305, 'gateway_setting', 'Gateway Setting', 'Reglage portail'),
(306, 'add_payment_gateway', 'Add Payment Gateway', 'Ajouter Methode paiment'),
(307, 'public_key', 'Public Key', 'Clé publique'),
(308, 'private_key', 'Private Key', ''),
(309, 'shop_id', 'Shop ID', 'ID shop'),
(310, 'secret_key', 'Secret Key', 'Clé secrete'),
(311, 'edit_payment_gateway', 'Edit Payment Gateway', 'Editer Methode de paiement'),
(312, 'slider_list', 'Slider List', ''),
(313, 'add_slider', 'Add Slider', 'Ajouter Slider'),
(314, 'headline', 'Headline', 'Titre'),
(315, 'edit_slider', 'Edit Slider', ''),
(316, 'social_app', 'Social App', ''),
(317, 'edit_social_app', 'Edit Social App', 'Editer RS appli'),
(318, 'social_link', 'Social Link', ''),
(319, 'add_link', 'Add Link', 'Ajouter Lien'),
(320, 'link', 'Link', 'Lien'),
(321, 'icon', 'Icon', 'Icône'),
(322, 'edit_social_link', 'Edit Social Link', 'Edit les liens RS'),
(323, 'transection_info', 'Transection Info', 'Info transaction'),
(324, 'sell', 'Sell', 'Vendre'),
(325, 'article', 'Article', 'Article'),
(326, 'coin_amount', 'Coin Amount', 'Montat Crypto'),
(327, 'coin_name', 'Coin Name', 'Nom Crypto'),
(328, 'buy_amount', 'Buy Amount', 'Montant achat'),
(329, 'sell_amount', 'Sell Amount', 'Montant à vendre'),
(330, 'wallet_data', 'Wallet ID', 'Données Wallet'),
(331, 'usd_amount', 'USD Amount', 'Montant USD'),
(332, 'rate_coin', 'Coin Rate', 'Taux coin'),
(333, 'local_amount', 'Local Amount', 'Montant Local'),
(334, 'om_name', 'OM Name', 'Nom OM'),
(335, 'om_mobile_no', 'OM Phone No', 'N° OM'),
(336, 'transaction_no', 'Transaction No', 'N° de transaction'),
(337, 'idcard_no', 'ID Card No', 'N° CNI'),
(338, 'buy_list', 'Buy List', 'Buy list'),
(339, 'add_buy', 'Add Buy', 'Ajouter Achat'),
(340, 'transection_type', 'Transection Type', 'Type de transaction'),
(341, 'payment_successfully', 'Payment Successfully', 'Paiement effectué'),
(342, 'payment_cancel', 'Payment Cancel', 'Paiement annulé'),
(343, 'payment_successfully', 'Payment Successfully', 'Paiement effectué'),
(344, 'sell_list', 'Sell List', 'LIste de vente '),
(345, 'add_sell', 'Add Sell', 'Ajouter Vente'),
(346, 'edit_sell', 'Edit Sell', ''),
(347, 'account_active_mail', 'Please check Email to activate your account', 'Activer votre mail'),
(348, 'accept_terms_privacy', 'Crypto Privacy policy and Terms of Use', 'Accepter conditions et termes'),
(349, 'username_used', 'Username Already Used', 'Nom d''utilisateur déjà utilisé'),
(350, 'account_create_success_social', 'Account Created Successfully and Your Account activated', 'Compte crée avec succès'),
(351, 'email_used', 'Email Already Used', 'Adresse mail déjà utilisé'),
(352, 'account_create_active_link', 'Account Created Successfully. Activation link send your Email address', 'Lien d''activation'),
(353, 'active_account', 'Active Account', 'Compte actif'),
(354, 'wrong_try_activation', 'Wrong Try', 'Mauvaise activation'),
(355, 'pay_now', 'Pay Now', 'Payer maintenant'),
(356, 'payment_successfully', 'Payment Successfully', 'Paiement effectué'),
(357, 'sell_successfully', 'Sell Successfully', 'Vente effectuée avec succès'),
(358, 'already_clicked', 'Already Clicked There', 'Déja Validé'),
(359, 'user_info', 'User Info', 'info utilisateur'),
(360, 'user_id', 'User ID', 'ID utilisateur'),
(361, 'registered_ip', 'Registered IP', ''),
(362, 'requested_ip', 'Requested IP', ''),
(363, 'transaction_status', 'Transaction Status', 'Status de la transaction'),
(364, 'receive_status', 'receive_status', ''),
(365, 'receive_complete', 'Receive Complete', ''),
(366, 'payment_status', 'Payment Status', 'Status de paiement'),
(367, 'payment_complete', 'Payment Complete', 'Paiement complet'),
(368, 'url', 'URL', 'url'),
(369, 'app_id', 'App ID', 'ID appli'),
(370, 'app_secret', 'App Secret', 'Secret Appli'),
(371, 'api_key', 'API Key', 'Clé API'),
(372, 'app_name', 'App Name', 'Nom Appli'),
(373, 'social_list', 'Social List', ''),
(374, 'select_payment_method', 'Select Payment Method', 'Selectionner mode de paiement'),
(375, 'payable', 'Payable', ''),
(376, 'rate', 'Rate', 'Taux'),
(377, 'how_do_you_receive_money', 'How do you receive money', 'Comment Reçevoir votre argent'),
(378, 'withdraw_method', 'Withdraw Method', 'Methode de retrait'),
(379, 'select_withdraw_method', 'Select Withdraw Method', 'Selectionner méthode de retrait'),
(380, 'account_info', 'Account Info', 'Info compte'),
(381, 'upload_docunemts', 'Upload Docunemts', 'Ajouter fichier'),
(382, 'my_generation', 'My Generation', 'Mon Equipe'),
(383, 'category', 'Category', 'Catégorie'),
(384, 'slider_h1_en', 'Slider H1 English', ''),
(385, 'slider_h1_fr', 'Slider H1 French', ''),
(386, 'slider_h2_en', 'Slider H2 English', ''),
(387, 'slider_h2_fr', 'Slider H2 French', ''),
(388, 'slider_h3_en', 'Slider H3 English', ''),
(389, 'slider_h3_fr', 'Slider H3 French', ''),
(390, 'complete', 'Complete', 'Complet'),
(391, 'refresh_currency', 'Refresh Currency', ''),
(392, 'cryptocurrency', 'Crypto Currency', 'Crypto Monnaie'),
(393, 'symbol', 'Symbol', 'Symbole'),
(394, 'please_select_cryptocurrency_first', 'Please Select CryptoCurrency First', 'Veuillez choisir une crypto monnaie'),
(395, 'please_select_diffrent_payment_method', 'Please select Diffrent Payment Method', 'Selectionner une autre méthode de paiement'),
(396, 'add_credit', 'Add Credit', 'Crediter Compte'),
(397, 'credit', 'Credit', 'Crédit'),
(398, 'credit_list', 'Credit List', 'Liste de Credit'),
(399, 'notes', 'Note', 'Notes'),
(400, 'my_level_info', 'My Level Info', 'Info Niveau'),
(401, 'slider', 'Slider', 'Slider'),
(402, 'exchange_setting', 'Exchange Setting', 'Reglage Echange'),
(403, 'exchange_all_request', 'Exchange all Request', 'Toutes requêtes echanges'),
(404, 'total_user', 'Total User', 'Nombre d''utilisateurs'),
(405, 'total_roi', 'Total ROI', 'Total ROI'),
(406, 'total_commission', 'Total Commission', 'Total commission'),
(407, 'download_pdf', 'Download PDF', 'Télécharger '),
(408, 'view_all_news', 'View all news', 'Aperçu News'),
(409, 'download_company_brochure', 'Download Company Brochure', 'Téléchargez notre brochure'),
(410, 'get_in_touch', 'Get in touch', 'Contactez-nous'),
(411, 'read_more', 'Read More', 'Lire plus'),
(412, 'know_more', 'Know more', 'Savoir plus'),
(413, 'choose_plan', 'Choose plan', 'acheter'),
(414, 'latest_jobs', 'Latest Jobs', 'Latest Jobs'),
(415, 'website', 'Website', 'website'),
(416, 'chose_one_of_the_following_methods', 'Chose One of the Following Methods.', 'chose_one_of_the_following_methods.'),
(417, 'sign_in_using_your_email_address', 'Sign in Using Your Email Address', 'Connectez-vous avec votre username ou email'),
(418, 'forgot_password', 'Forgot Password', 'Forgot Password'),
(419, 'remember_me', 'Remember me', 'Remember me'),
(420, 'username_or_email', 'Username or email', 'Username or email'),
(421, 'dont_have_an_account', 'Don''t have an account', 'Don''t have an account'),
(422, 'sign_up_now', 'Sign up Now', 'Créer un compte maintenant'),
(423, 'send_code', 'Send Code', 'Send Code'),
(424, 'sign_up', 'Sign Up', 'Créer un compte'),
(425, 'already_user', 'Already User', 'Already User'),
(426, 'sign_in_now', 'Sign In Now', 'Connectez-vous maintenant'),
(427, 'sign_up_for_free', 'Sign Up For Free', 'Créer un compte gratuitement'),
(428, 'join_thousands_of_companies_that_Use_globalcrypt_every_day', 'Join Thousands of Companies that Use Global Crypto Every Day', 'Join Thousands of Companies that Use Global Crypto Every Day'),
(429, 'your_password_at_global_crypto_are_encrypted_and_secured', 'Your Password at Global Crypto are encrypted and Secured', 'Votre mot de passe Global Crypto est crypté et securisé'),
(430, 'email_username_used', 'Email/Username Already Used', 'Email/Username Already Used'),
(431, 'address', 'Address', 'Address'),
(432, 'phone', 'Phone', 'Phone'),
(433, 'admin_align', 'Admin Align', 'Admin Align'),
(434, 'office_time', 'Office Time', 'Office Time'),
(435, 'logo_web', 'WebSite Logo', 'WebSite Logo'),
(436, 'dashboard_logo', 'Dashboard Logo', 'Dashboard Logo'),
(437, 'advertisement', 'Advertisement', 'Advertisement'),
(438, 'script', 'Script', 'Script'),
(439, 'add_advertisement', 'Add Advertisement', 'Add Advertisement'),
(440, 'page', 'Page', 'Page'),
(441, 'embed_code', 'Embed code', 'Embed code'),
(442, 'add_type', 'Add Type', 'Add Type'),
(443, 'edit_advertisement', 'Edit Advertisement', 'Edit Advertisement'),
(444, 'host', 'Host', 'Host'),
(445, 'port', 'Port', 'Port'),
(446, 'apikey', 'API Key', 'API Key'),
(447, 'mail_type', 'Mail Type', 'Mail Type'),
(448, 'charset', 'Charset', 'Charset'),
(449, 'news', 'News', 'News'),
(450, 'news_list', 'News List', 'News List'),
(451, 'edit_news', 'Edit News', 'Edit News'),
(452, 'post_news', 'Post News', 'Post News'),
(453, 'close', 'Close', 'Close'),
(454, 'contact_us', 'Contact Us', 'Contact Us'),
(455, 'watch_video', 'WATCH VIDEO', 'WATCH VIDEO'),
(456, 'about_bitcoin', 'About Bitcoin', 'About Bitcoin'),
(457, 'get_start', 'Get Start', 'Get Start'),
(458, 'cryptocoins', 'Crypto Coins', 'Crypto Coins'),
(459, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter!', 'Subscribe to our newsletter!'),
(460, 'email_newslatter', 'Email Newsletter', 'Email Newsletter'),
(461, 'services', 'Services', 'Services'),
(462, 'our_company', 'Our Company', 'Our Company'),
(463, 'sign_in', 'Sign In', 'Connectez-vous'),
(464, 'join_the_new_yera_of_cryptocurrency_exchange', 'Join the new Yera of cryptocurrency exchange', 'Join the new Yera of cryptocurrency exchange'),
(465, 'access_the_cryptocurrency_experience_you_deserve', 'Access the cryptocurrency experience you deserve', 'Access the cryptocurrency experience you deserve'),
(466, 'home', 'Home', 'Home'),
(467, 'scroll_to_top', 'Scroll to Top', 'Scroll to Top'),
(468, 'ticker', 'Ticker', 'Ticker'),
(469, 'price', 'Price', 'Price'),
(470, 'capitalization', 'Capitalization', 'Capitalization'),
(471, '1d_change', '1D change', '1D change'),
(472, 'graph_24h', 'Graph 24H', 'Graph 24H'),
(473, 'recent_post', 'Recent Post', 'Recent Post'),
(474, 'my_social_link', 'My Social link', 'My Social link'),
(475, 'tell_us_about_your_project', 'Tell Us About Your Project', 'Tell Us About Your Project'),
(476, 'company', 'Company', 'Company'),
(477, 'reset_your_password', 'Reset Your Password', 'Reset Your Password'),
(478, '24h_change', '24H change', '24H change'),
(479, '24h_volume', '24H Volume', '24H Volume'),
(480, 'latitudelongitude', 'Latitude, Longitude', 'Latitude, Longitude'),
(481, 'send_money', 'Send Money', 'Send Money'),
(482, 'article', 'Article', 'article'),
(483, 'contact', 'Contact', 'contact'),
(484, 'team', 'Team', 'team'),
(485, 'client', 'Client', 'client'),
(486, 'service', 'Service', 'service'),
(487, 'testimonial', 'Testimonial', 'testimonial'),
(488, 'faq', 'F.A.Q', 'faq'),
(489, 'short_description_en', 'Short description english', 'Short Description'),
(490, 'long_description_en', 'Long description English', 'Long Description'),
(491, 'short_description_fr', 'Short description english', 'Short Description'),
(492, 'long_description_fr', 'Long description English', 'Long Description'),
(493, 'info', 'Information', 'Information'),
(494, 'quote', 'Quote', 'Quote'),
(495, 'question_fr', 'Question French', 'Question French'),
(496, 'question_en', 'Question English', 'Question English'),
(497, 'answer_en', 'Answer English', 'Answer English'),
(498, 'answer_fr', 'Answer French', 'Answer French'),
(499, 'content', 'Page Content', 'Page Content'),
(500, 'add_content', 'Add Content', 'Add Content'),
(501, 'edit_content', 'Edit Content', 'Edit Content'),
(502, 'video', 'video (If Youtube Link)', 'video'),
(503, 'add_faq', 'Add F.A.Q', 'Add faq'),
(504, 'add_testimonial', 'Add Testimonial', 'Add testimonial'),
(505, 'add_service', 'Add Service', 'Add service'),
(506, 'add_client', 'Add Client', 'Add client'),
(507, 'add_team', 'Add Team', 'Add team'),
(508, 'add_contact', 'Add Contact', 'Add contact'),
(509, 'add_article', 'Add Article', 'Add article'),
(510, 'edit_article', 'edit Article', 'edit article'),
(511, 'edit_contact', 'edit Contact', 'edit contact'),
(512, 'edit_team', 'edit Team', 'edit team'),
(513, 'edit_client', 'edit Client', 'edit client'),
(514, 'edit_service', 'edit Service', 'edit service'),
(515, 'edit_testimonial', 'edit Testimonial', 'edit testimonial'),
(516, 'edit_faq', 'edit F.A.Q', 'edit faq'),
(517, 'article_list', 'Article List', 'article'),
(518, 'contact_list', 'Contact List', 'contact'),
(519, 'team_list', 'Team List', 'team'),
(520, 'client_list', 'Client List', 'client'),
(521, 'service_list', 'Service List', 'service'),
(522, 'testimonial_list', 'Testimonial List', 'testimonial'),
(523, 'faq_list', 'F.A.Q List', 'faq'),
(524, 'content_list', 'Page Content', 'Page Content'),
(525, 'add_teammember', 'Add Teammember', 'Add Teammember'),
(526, 'tooltip_package_name', 'Example: Silver Package', 'Example: Silver Package'),
(527, 'tooltip_package_details', 'This is for Package Short Details', 'This is for Package Short Details.'),
(528, 'tooltip_package_amount', 'Package Amount in Dollar. Example: 200', 'Package Amount in Dollar. Example: 200'),
(529, 'tooltip_package_daily_roi', 'Please Set this field with Zero. Example: 0', 'Please Set this field with Zero. Example: 0'),
(530, 'tooltip_package_weekly_roi', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period'),
(531, 'tooltip_package_monthly_roi', 'Sum of weekly ROI in a month', 'Sum of weekly ROI in a month'),
(532, 'tooltip_package_yearly_roi', 'Sum of weekly ROI in a Year', 'Sum of weekly ROI in a Year'),
(533, 'tooltip_package_total_percent_roi', 'Total Persent Of ROI', 'Total Persent Of ROI'),
(534, 'tooltip_package_period', 'Package Period', 'Package Period'),
(535, 'trading', 'Trading', 'Trade'),
(536, 'trade_history', 'Trade History', 'Trade History'),
(537, 'market', 'Market', 'Market'),
(538, 'coin_pair', 'Coin Pair', 'Coin Pair'),
(539, 'pending_deposit', 'Pending Deposit', 'Demande de retrat en cours'),
(540, 'email_and_sms_setting', 'Email And Sms Setting', 'Email And Sms Setting'),
(541, 'email_and_sms_gateway', 'Email And Sms Gateway', 'Email And Sms Gateway'),
(542, 'trade', 'Trade', 'Trade'),
(543, 'referral_id', 'Referral ID', ''),
(544, 'please_enter_valid_email', 'Please Enter Valid Email !!!', 'Please Enter Valid Email !!!'),
(545, 'already_subscribe', 'This Email Address already subscribed', 'This Email Address already subscribed'),
(546, 'message_send_successfuly', 'TMessage send successfuly', 'Message send successfuly'),
(547, 'message_send_fail', 'Message send Fail', 'Message send Fail'),
(548, 'setup_payment_gateway', 'setup payment gateway', 'setup payment gateway'),
(549, 'blog', 'Blog', 'Blog'),
(550, 'advisors', 'Advisors', 'Advisors'),
(551, 'advisors_list', 'Advisors List\r\n', 'Advisors List'),
(552, 'edit_advisors', 'Edit Advisors', 'Edit Advisors'),
(553, 'designation', 'designation', 'designation'),
(554, 'user_profile', 'User Profile', 'User Profile'),
(555, 'token_sold', 'Token Sold', 'Token Sold'),
(556, 'token', 'Token', 'Token'),
(557, 'token_value', 'Token Value', 'Token Value'),
(558, 'running', 'Running', 'Running'),
(559, 'team_overview', 'Team Overview', 'Team Overview'),
(560, 'overview_header_en', 'Overview Header English', 'Overview Header English'),
(561, 'sub_header_en', 'Sub Header English', 'Sub Header English'),
(562, 'description_en', 'Description English', 'Description English'),
(563, 'overview_header_fr', 'Overview Header French', 'Overview Header French'),
(564, 'sub_header_fr', 'Sub Header French', 'Sub Header French'),
(565, 'description_fr', 'Description French', 'Description French'),
(566, 'flag', 'Flag', 'Flag'),
(567, 'round_name', 'Round Name', 'Round Name'),
(568, 'target', 'Target', 'Target'),
(569, 'coin', 'Coin', 'Coin'),
(570, 'release_date', 'Release Date', 'Release Date'),
(571, 'release_time', 'Release Time', 'Release Time'),
(572, 'duration', 'Duration', 'Duration'),
(573, 'roi', 'ROI', 'ROI'),
(574, 'referral', 'REFERRAL', 'REFERRAL'),
(575, 'total_coin', 'Total Coin', 'Total Coin'),
(576, 'hold_coin', 'Hold Coin', 'Hold Coin'),
(577, 'pre_sell', 'Pre Sell', 'Pre Sell'),
(578, 'sell_available', 'Sell Available', 'Sell Available'),
(579, 'sell_available_limit', 'You can''t release coin more than sell available limit. ', 'You can''t release coin more than sell available limit. '),
(580, 'client_id', 'Client Id', 'Client Id'),
(581, 'client_secret', 'Client Secret', 'Client Secret'),
(582, 'live_demo', 'Live demo', 'Live demo'),
(583, 'target_raised', '% target raised', '% target raised'),
(584, 'ends_in', 'ends in:', 'ends in:'),
(585, 'raised', 'Raised', 'Raised'),
(586, 'whitepaper', 'Whitepaper', 'Whitepaper'),
(587, 'soft_cap', 'Soft Cap', 'Soft Cap'),
(588, 'buy_tokens', 'Buy Tokens', 'Buy Tokens'),
(589, 'bonus', 'Bonus', 'Bonus'),
(590, 'how_it_work', 'How it work', 'How it work'),
(591, 'pre_sale', 'Pre-Sale', 'Pre-Sale'),
(592, 'ico_pre_sell_live', 'ICO PRE - SALE IS LIVE', 'ICO PRE - SALE IS LIVE');

-- --------------------------------------------------------

--
-- Table structure for table `menu_control`
--

CREATE TABLE `menu_control` (
  `id` int(11) NOT NULL,
  `ico_wallet` int(11) NOT NULL,
  `exchange` int(11) NOT NULL,
  `package` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_control`
--

INSERT INTO `menu_control` (`id`, `ico_wallet`, `exchange`, `package`) VALUES
(1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` varchar(250) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `notification_type` varchar(45) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` mediumtext,
  `status` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='SMS and Email notified data will be stored in this table.';

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `period` varchar(250) DEFAULT NULL,
  `commission_ret` varchar(250) DEFAULT NULL,
  `package_deatils` mediumtext,
  `package_amount` float NOT NULL,
  `weekly_roi` float NOT NULL,
  `monthly_roi` float NOT NULL,
  `yearly_roi` float NOT NULL,
  `daily_roi` float DEFAULT NULL,
  `total_percent` varchar(45) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='All investment packages will be stored here.';

-- --------------------------------------------------------

--
-- Table structure for table `payeer_payments`
--

CREATE TABLE `payeer_payments` (
  `id` int(11) NOT NULL,
  `m_operation_id` int(11) NOT NULL,
  `m_operation_ps` int(11) NOT NULL,
  `m_operation_date` varchar(100) NOT NULL,
  `m_operation_pay_date` varchar(100) NOT NULL,
  `m_shop` int(11) NOT NULL,
  `m_orderid` varchar(300) NOT NULL,
  `m_amount` varchar(100) NOT NULL,
  `m_curr` varchar(100) NOT NULL,
  `m_desc` varchar(300) NOT NULL,
  `m_status` varchar(100) NOT NULL,
  `m_sign` text NOT NULL,
  `lang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(11) NOT NULL,
  `identity` varchar(50) NOT NULL,
  `agent` varchar(100) NOT NULL,
  `public_key` text NOT NULL,
  `private_key` text NOT NULL,
  `shop_id` varchar(100) NOT NULL,
  `secret_key` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `data`, `status`) VALUES
(1, 'bitcoin', 'GoUrl Payment Gateway', 'a:13:{s:7:"bitcoin";s:64:"09f93901e45070268d3070d88ae00ad8e90c9771c91900dca74d579742536c32";s:11:"bitcoincash";s:0:"";s:8:"litecoin";s:0:"";s:4:"dash";s:0:"";s:8:"dogecoin";s:0:"";s:9:"speedcoin";s:0:"";s:8:"reddcoin";s:0:"";s:7:"potcoin";s:0:"";s:11:"feathercoin";s:0:"";s:8:"vertcoin";s:0:"";s:8:"peercoin";s:0:"";s:12:"monetaryunit";s:0:"";s:17:"universalcurrency";s:0:"";}', 'a:13:{s:7:"bitcoin";s:50:"22592AAtNOwwBitcoin77BTCPRVk7hmp8s3ew6pwgOMgxMq81F";s:11:"bitcoincash";s:0:"";s:8:"litecoin";s:0:"";s:4:"dash";s:0:"";s:8:"dogecoin";s:0:"";s:9:"speedcoin";s:0:"";s:8:"reddcoin";s:0:"";s:7:"potcoin";s:0:"";s:11:"feathercoin";s:0:"";s:8:"vertcoin";s:0:"";s:8:"peercoin";s:0:"";s:12:"monetaryunit";s:0:"";s:17:"universalcurrency";s:0:"";}', '', '', '', 1),
(2, 'payeer', 'Payeer', '474181962', 'xOngnN7CMIx6w5S3', '', '', '', 1),
(4, 'phone', 'Mobile Money', '+880 1746 40 68 01', '', '', '', '', 1),
(5, 'paypal', 'Paypal', 'AfmTkhn-GYb_HAsPayWeLDVTG39jNjGsJ3siJSNDs6QGr52KDLnAT28fIv4TVni5P3Dax8w1y-Libl_j', 'EHGJveSf9GJcbyQwgYmouRi9baBPKLPqeSYjYesiG4UJTSnQ45q3gwQdkB6TvFQAjkYm42D1P_Hqn340', '', 'sandbox', '', 1),
(6, 'stripe', 'Stripe', 'pk_test_BPLwYal0sn4KkKaDTzuj5oRq', 'sk_test_6J6dcwXf8ruEZGCvlC09C9NK', '', '', '', 1),
(7, 'coinpayment', 'CoinPayments', '51fec43efdeb1323d1a0854ffa807b64abf822ca6dd79ba619cdb6de6783b892', 'D432e1907d50C5e399A7E6a34d50DE1B4dfe809980f3a4a295dc7Ac7889Bc3e8', '', '', '{"marcent_id":"7bc213faca51052a85eccd6ce1c56eef","ipn_secret":"TaR#@)1331","debug_email":"tareq7500@gmail.com","debuging_active":1,"withdraw":"1"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_web` varchar(255) NOT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `office_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `title`, `description`, `email`, `phone`, `logo`, `logo_web`, `favicon`, `language`, `site_align`, `footer_text`, `time_zone`, `latitude`, `office_time`) VALUES
(1, 'Crypto Currency Treading System', 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', 'tareq7500@gmail.com', '+88-01817-584639', 'upload/settings/5385b510d68935d70ac6374386a40ecd.png', 'upload/settings/3e0408b38ca08be14cd13d6db241ed10.png', 'upload/settings/ce8cb9255d11ec59b439f808a370a6b5.png', 'english', 'LTR', '© All rights reserved. Made with  <i class="far fa-heart"></i><a href="http://bdtask.com/" target="_blank">  by bdtask</a>', 'Asia/Dhaka', '40.6700, -73.9400', 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>');

-- --------------------------------------------------------

--
-- Table structure for table `sms_email_send_setup`
--

CREATE TABLE `sms_email_send_setup` (
  `id` int(11) NOT NULL,
  `method` text NOT NULL,
  `deposit` int(11) DEFAULT NULL,
  `transfer` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `payout` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `team_bonnus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_email_send_setup`
--

INSERT INTO `sms_email_send_setup` (`id`, `method`, `deposit`, `transfer`, `withdraw`, `payout`, `commission`, `team_bonnus`) VALUES
(1, 'email', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'sms', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_article`
--

CREATE TABLE `web_article` (
  `article_id` int(11) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `headline_en` varchar(300) DEFAULT NULL,
  `headline_fr` varchar(300) DEFAULT NULL,
  `article_image` varchar(100) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `article1_en` longtext NOT NULL,
  `article1_fr` longtext NOT NULL,
  `article2_en` longtext NOT NULL,
  `article2_fr` longtext NOT NULL,
  `video` varchar(300) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `page_content` int(11) DEFAULT '0' COMMENT 'if this is a Page content set 1 else 0',
  `position_serial` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `publish_by` varchar(20) NOT NULL,
  `edit_history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES
(1, NULL, 'What is ICO Crypto?', 'What is ICO Crypto?', 'upload/766555a4325c61b84cb801635fbe719e.png', '', '<p>ICO Crypto is a platform for the future of funding that powering dat for the new equity blockchain<br></p>', '', 'There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have suffered alteration in some form, by injected humour, or \r\nrandomised words which don''t look even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsum, you need to be sure there isn''t \r\nanything.', '', 'https://www.youtube.com/watch?v=RRzrr2oqNPA', 2, 1, 1, '2019-01-10 07:18:25', 'admin@demo.com', 0),
(2, NULL, 'Cryptoland Just Entered the Real World', 'Cryptoland Just Entered the Real World', 'upload/71c99062ca8ad956da6c370fe902c8c4.jpg', '', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<br></p>', '', '', '', 'https://www.youtube.com/watch?v=RRzrr2oqNPA', 1, 1, 1, '2019-01-10 07:19:41', 'admin@demo.com', 0),
(3, '50', '$50', NULL, NULL, '', 'billion USD â€” excepted revenue of coins by 2020', 'billion USD â€” excepted revenue of coins by 2020', '', '', NULL, 20, 0, 0, '2018-12-27 11:45:56', 'admin@demo.com', 0),
(4, '150', '150', NULL, NULL, '', 'million potential clients worldwide', 'million potential clients worldwide', '', '', NULL, 20, 0, 0, '2018-12-27 11:46:12', 'admin@demo.com', 0),
(5, '25', '25%', NULL, NULL, '', 'no borders for international payments', 'no borders for international payments', '', '', NULL, 20, 0, 0, '2018-12-27 11:46:38', 'admin@demo.com', 0),
(6, '10x', '10x', NULL, NULL, '', 'faster transaction speed', 'faster transaction speed', '', '', NULL, 20, 0, 0, '2018-12-27 11:46:48', 'admin@demo.com', 0),
(7, NULL, 'Bitcoin public trading launched', 'Bitcoin public trading launched', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 1, '2018-06-27 00:00:00', '', 0),
(8, NULL, 'First peak value for Bitcoin', 'First peak value for Bitcoin', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 3, '2018-07-27 00:00:00', '', 0),
(9, NULL, '$1 billion capitalization', '$1 billion capitalization', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 3, '2018-08-27 00:00:00', '', 0),
(10, NULL, 'Bitcoin worth $1,000', 'Bitcoin worth $1,000', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 4, '2018-09-05 00:00:00', '', 0),
(11, NULL, 'Ripple''s major gains', 'Ripple''s major gains', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 5, '2018-09-25 00:00:00', '', 0),
(12, NULL, 'LiteCoin''s surge', 'LiteCoin''s surge', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 6, '2018-10-19 00:00:00', '', 0),
(13, NULL, 'Ethereum`s meteoric rise', 'Ethereum`s meteoric rise', NULL, '', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', 'First 1,000 Bitcoins were released to the public, each one costing $0.3', '$67,751,058', 'Total Market Capitalization', NULL, 3, 0, 7, '2018-11-15 00:00:00', '', 0),
(14, NULL, 'Private/Pre Sale', NULL, NULL, '', '60', '#8d62cd', '', '', NULL, 17, 0, 1, '2019-01-09 07:08:29', 'admin@demo.com', 0),
(15, NULL, 'Public ICO', NULL, NULL, '', '10', '#0095eb', '', '', NULL, 17, 0, 2, '2018-12-27 12:08:51', 'admin@demo.com', 0),
(16, NULL, 'Team & Advisor', NULL, NULL, '', '25', '#df0866', '', '', NULL, 17, 0, 3, '2018-12-27 12:09:10', 'admin@demo.com', 0),
(17, NULL, 'Marketing', NULL, NULL, '', '30', '#f68968', '', '', NULL, 17, 0, 4, '2018-12-27 12:10:20', 'admin@demo.com', 0),
(18, NULL, 'Bounty', NULL, NULL, '', '30', '#f2ebce', '', '', NULL, 17, 0, 5, '2018-12-27 12:10:54', 'admin@demo.com', 0),
(19, NULL, 'Crowdsale', NULL, NULL, '', '350', '#09ffdf', '', '', NULL, 18, 0, 1, '2018-12-27 12:23:19', 'admin@demo.com', 0),
(20, NULL, 'Team', NULL, NULL, '', '340', '#f2ebce', '', '', NULL, 18, 0, 2, '2018-12-27 12:23:17', 'admin@demo.com', 0),
(21, NULL, 'Advisore', NULL, NULL, '', '274', '#f68968', '', '', NULL, 18, 0, 3, '2018-12-27 12:23:16', 'admin@demo.com', 0),
(22, NULL, 'Project Reserve', NULL, NULL, '', '234', '#df0866', '', '', NULL, 18, 0, 4, '2018-12-27 12:23:14', 'admin@demo.com', 0),
(23, NULL, 'Mosternodes', NULL, NULL, '', '214', '#0095eb', '', '', NULL, 18, 0, 5, '2018-12-27 12:23:13', 'admin@demo.com', 0),
(24, NULL, 'Mosternodes', NULL, NULL, '', '194', '#f2ebce', '', '', NULL, 18, 0, 6, '2018-12-27 12:23:11', 'admin@demo.com', 0),
(26, NULL, 'JOHN DOE', NULL, 'upload/team/37d7c20949ac4bb7752339a848ddd023.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 1, '2018-12-27 12:33:46', 'admin@demo.com', 0),
(27, NULL, 'JOHN DOE', NULL, 'upload/team/e550079e7c1c92fce88fc18f97d1d1a3.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 2, '2018-12-27 12:35:33', 'admin@demo.com', 0),
(28, NULL, 'JOHN DOE', NULL, 'upload/team/2ea5dcd56cbf07857c5e779bc2aac6e7.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 3, '2018-12-27 12:36:05', 'admin@demo.com', 0),
(29, NULL, 'JOHN DOE', NULL, 'upload/team/f578a4cea754be444f1c1d1ce18f9374.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 4, '2018-12-27 12:36:17', 'admin@demo.com', 0),
(30, NULL, 'JOHN DOE', NULL, 'upload/team/9aca2d83fb6df075638512b3da11315f.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 5, '2018-12-27 12:36:29', 'admin@demo.com', 0),
(31, NULL, 'JOHN DOE', NULL, 'upload/team/4d44c8efc5bb01a1a6b8d104483c6b0a.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 6, '2018-12-27 12:36:44', 'admin@demo.com', 0),
(32, NULL, 'JOHN DOE', NULL, 'upload/team/cc5c6257e80f0f39c0f81f149ca8fb44.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 7, '2018-12-27 12:37:36', 'admin@demo.com', 0),
(33, NULL, 'JOHN DOE', NULL, 'upload/team/6fd3f95f0aa92740ebec2c002945bbae.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 8, '2018-12-27 12:37:59', 'admin@demo.com', 0),
(34, NULL, 'JOHN DOE', NULL, 'upload/team/c1b56d81f4a915333209fafa0f960d60.jpg', '', 'UI Designer', 'UI Designer', '', '', NULL, 5, 0, 9, '2018-12-27 12:38:16', 'admin@demo.com', 0),
(35, NULL, 'JOHN DOE', NULL, 'upload/advisors/d191ef66f3c9d633bb8de06a72b64c55.jpg', '', 'Bitcoin Expert', '#', '#', '#', NULL, 15, 0, 1, '2018-12-27 12:40:22', 'admin@demo.com', 0),
(36, NULL, 'JOHN DOE', NULL, 'upload/advisors/6a0dc87a2fb87a7b04fe4fcd1139f2ab.jpg', '', 'Software Enginer', '#', '#', '#', NULL, 15, 0, 2, '2018-12-27 12:41:07', 'admin@demo.com', 0),
(37, NULL, 'JOHN DOE', NULL, 'upload/advisors/c6423366875ca03549428d44ecf59e0f.jpg', '', 'Bitcoin Mining Exparts', '#', '#', '#', NULL, 15, 0, 3, '2018-12-27 12:42:15', 'admin@demo.com', 0),
(38, NULL, 'JOHN DOE', NULL, 'upload/advisors/8bf34014a827ae5ff1b908fb8b14a111.jpg', '', 'Bitcoin Mining Exparts', '#', '#', '#', NULL, 15, 0, 4, '2018-12-27 12:41:47', 'admin@demo.com', 0),
(39, NULL, 'What is WordPress?', 'What is WordPress?', NULL, '', 'WordPress is open source web software that you can install on your web server to create your website, blog, community, or network. WordPress started out as a tool for blogging, but has evolved into a full-fledged Content Management System (CMS), capable of powering websites, networks, and communities.', 'WordPress is open source web software that you can install on your web server to create your website, blog, community, or network. WordPress started out as a tool for blogging, but has evolved into a full-fledged Content Management System (CMS), capable of powering websites, networks, and communities.', '', '', NULL, 12, 0, 0, '2018-12-27 12:44:14', 'admin@demo.com', 0),
(40, NULL, 'How do you know when it is time to get support?', 'How do you know when it is time to get support?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 12, 0, 0, '2018-12-27 12:45:18', 'admin@demo.com', 0),
(41, NULL, 'What payment methods do you accept?', 'What payment methods do you accept?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 12, 0, 0, '2018-12-27 12:45:39', 'admin@demo.com', 0),
(42, NULL, 'Where can I see which insurance plans are?', 'Where can I see which insurance plans are?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 13, 0, 0, '2018-12-27 12:46:23', 'admin@demo.com', 0),
(43, NULL, 'How do you know when it is time to get support?', 'How do you know when it is time to get support?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 13, 0, 0, '2018-12-27 12:46:45', 'admin@demo.com', 0),
(44, NULL, 'What payment methods do you accept?', 'What payment methods do you accept?', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.', '', '', NULL, 14, 0, 0, '2018-12-27 12:47:06', 'admin@demo.com', 0),
(45, NULL, 'Tanzil', NULL, '', '', 'This is best ICO application', '', 'I strongly recommend it', '', NULL, 11, 0, 0, '2019-01-09 07:07:08', 'admin@demo.com', 0),
(46, NULL, 'WHO ARE WE?', 'WHO ARE WE?', NULL, '', 'Meet the Entire Team', 'Meet the Entire Team', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Adipisci quae nesciunt officia! Autem, nam eum voluptatem, esse voluptatibus deleniti tempora laboriosam sequi pariatur, explicabo itaque.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Adipisci quae nesciunt officia! Autem, nam eum voluptatem, esse voluptatibus deleniti tempora laboriosam sequi pariatur, explicabo itaque.', NULL, NULL, 0, 0, '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_category`
--

CREATE TABLE `web_category` (
  `cat_id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `cat_name_en` varchar(100) NOT NULL,
  `cat_name_fr` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `cat_image` varchar(300) DEFAULT NULL,
  `cat_title1_en` varchar(100) DEFAULT NULL,
  `cat_title1_fr` varchar(100) DEFAULT NULL,
  `cat_title2_en` varchar(300) DEFAULT NULL,
  `cat_title2_fr` varchar(300) DEFAULT NULL,
  `menu` int(11) DEFAULT NULL COMMENT '1 = Top Menu, 2 = Footer 1, 3 = Footer 2, 4 = Top and Footer 1, 5 = Top and Footer 2, 0 = Not Menu',
  `position_serial` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_category`
--

INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES
(1, 'home', 'Home', 'FranÃ§ais', 0, '', '', 'FranÃ§ais', '', '', 0, NULL, 1),
(2, 'about', 'About', 'FranÃ§ais', 0, '', '', '', '', '', 4, 1, 1),
(3, 'roadmap', 'RoadMap', 'FranÃ§ais', 0, '', '', '', '', '', 5, 2, 1),
(4, 'token', 'Token', 'FranÃ§ais', 0, '', 'Token Distribution', 'Token Distribution', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 4, 3, 1),
(5, 'team', 'Team', 'FranÃ§ais', 0, '', 'Our Team Member', 'Our Team Member', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 4, 4, 1),
(6, 'faq', 'Faq', 'FranÃ§ais', 0, '', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 5, 5, 1),
(7, 'blog', 'Blog', 'FranÃ§ais', 0, '', 'Recent Blogs Posts', 'Recent Blogs Posts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 4, 6, 1),
(8, 'contact', 'Contact', 'FranÃ§ais', 0, '', 'For ICO Projects', 'For ICO Projects', 'Coinsurance invests in promising ICO projects. We offer you a funding and access to our community.', 'Coinsurance invests in promising ICO projects. We offer you a funding and access to our community.', 5, 7, 1),
(9, 'ico', 'ICO', 'FranÃ§ais', 7, '', '', '', '', '', 0, NULL, 1),
(10, 'btc', 'BTC', 'FranÃ§ais', 7, '', '', '', '', '', 0, NULL, 1),
(11, 'testimonial', 'Testimonial', '', 0, '', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 0, 0, 1),
(12, 'regular-questation', 'Regular Questation', 'Regular Questation', 6, '', '', '', '', '', 0, 1, 1),
(13, 'clients-questation', 'Clients Questation', '', 6, '', '', '', '', '', 0, 2, 1),
(14, 'trending-questation', 'Trending Questation', '', 6, '', '', '', '', '', 0, 3, 1),
(15, 'advisors', 'Advisors', 'advisors', 0, '', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 0, 0, 1),
(16, 'chart', 'Chart', '', 0, '', '', '', '', '', 0, 0, 1),
(17, 'chart-one', 'Chart one', '', 16, '', '', '', '', '', 0, 0, 1),
(18, 'chart-two', 'Chart two', '', 16, '', '', '', '', '', 0, 2, 1),
(19, 'client', 'Client', 'Client', 2, '', '', '', '', '', 0, 0, 1),
(20, 'aboutcoin', 'AboutCoin', '', 2, '', 'Run Your ICO from Anywhere', 'Run Your ICO from Anywhere', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_language`
--

CREATE TABLE `web_language` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `flag` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `flag`) VALUES
(1, 'FR', 'fr');

-- --------------------------------------------------------

--
-- Table structure for table `web_news`
--

CREATE TABLE `web_news` (
  `article_id` int(11) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `headline_en` varchar(300) NOT NULL,
  `headline_fr` varchar(300) NOT NULL,
  `article_image` varchar(100) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `article1_en` longtext NOT NULL,
  `article1_fr` longtext NOT NULL,
  `article2_en` longtext NOT NULL,
  `article2_fr` longtext NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_serial` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `publish_by` varchar(20) NOT NULL,
  `edit_history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_news`
--

INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES
(1, 'true-flip-enters-the-slot-market-with-chains-code', 'True Flip enters the slot market with Chain’s Code', '', 'upload/news/bd92f765617da2c82d5cef5c1ebde2d3.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-12-27 12:53:21', 'admin@demo.com', 0),
(2, 'bitcoin-in-brief-monday-twitter-wields-the-banhammer', 'Bitcoin in Brief Monday: Twitter Wields the Banhammer', '', 'upload/news/c325b409f002e058ddbe9fa5dc07290f.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:54:12', 'admin@demo.com', 0),
(3, 'ethereum-price-technical-analysis-ethusd-eyes-more-gains', 'Ethereum Price Technical Analysis – ETH/USD Eyes More Gains', '', 'upload/news/b222d9177c5c522393710d9c10bc0c7f.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-12-27 12:54:22', 'admin@demo.com', 0),
(4, 'south-africa-puts-onus-on-taxpayers-to-declare-all-cryptocurrency-income', 'South Africa Puts Onus on Taxpayers to Declare All Cryptocurrency Income', '', 'upload/news/166e293c430bdf835f0c6d6a127e4e13.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:13', 'admin@demo.com', 0),
(5, 'neo-eos-litecoin-iota-and-stellar-technical-analysis-april-9-2018', 'NEO, EOS, Litecoin, IOTA and Stellar: Technical Analysis April 9, 2018', '', 'upload/news/b731dbe9143e088de015c0c844d40105.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-07-29 01:23:21', 'admin@demo.com', 0),
(6, 'why-invest-in-dash', 'Why Invest in Dash?', '', 'upload/news/9d5c09ab5b25569514fa852e2d2c1483.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-07-29 01:25:38', 'admin@demo.com', 0),
(7, 'asic-resistance-increasingly-hot-topic-in-crypto-as-monero-forks', 'ASIC Resistance Increasingly Hot Topic in Crypto as Monero Forks', '', 'upload/news/32083222f2430503659756a60d3b0b6b.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:28', 'admin@demo.com', 0),
(8, 'canadian-mining-giant-hyperblock-acquires-cryptoglobal-for-106-million', 'CANADIAN MINING GIANT HYPERBLOCK ACQUIRES CRYPTOGLOBAL FOR $106 MILLION', '', 'upload/news/e56c8562afa3795f3c4c3ecccc3bfa83.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:34', 'admin@demo.com', 0),
(9, 'how-can-blockchains-remove-the-pay-to-trade-barrier-in-the-market', 'How Can Blockchains Remove the ‘Pay to Trade’ Barrier in the Market?', '', 'upload/news/2ff94094fcfbe19daf303a479b9fad68.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-07-29 01:23:40', 'admin@demo.com', 0),
(10, 'how-blockchain-is-making-it-easier-to-get', 'How Blockchain Is Making It Easier to Get', '', 'upload/news/44807c1619ecc1f8374b8930477187aa.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 10, NULL, 0, '2018-07-29 01:23:49', 'admin@demo.com', 0),
(11, 'ripple-price-technical-analysis-xrpusd', 'Ripple Price Technical Analysis – XRP/USD', '', 'upload/news/7bb7ce86a91923d1716a3360bd2f5e8a.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:55:44', 'admin@demo.com', 0),
(12, 'bitfinex-introduces-trading-for-12-altcoins', 'Bitfinex Introduces Trading for 12 Altcoins', '', 'upload/news/aa977efaa45a12e667f22e021f486e65.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:55:57', 'admin@demo.com', 0),
(13, 'bitcoin-cash-price-trend-including-tether', 'Bitcoin Cash Price Trend Including Tether', '', 'upload/news/e25f96e1e8aad36e4bf3315fc8866d39.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 9, NULL, 0, '2018-12-27 12:53:03', 'admin@demo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_slider`
--

CREATE TABLE `web_slider` (
  `id` int(11) NOT NULL,
  `slider_h1_en` varchar(900) DEFAULT NULL,
  `slider_h1_fr` varchar(900) DEFAULT NULL,
  `slider_h2_en` varchar(900) DEFAULT NULL,
  `slider_h2_fr` varchar(900) DEFAULT NULL,
  `slider_h3_en` varchar(900) DEFAULT NULL,
  `slider_h3_fr` varchar(900) DEFAULT NULL,
  `slider_img` varchar(300) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `web_social_link`
--

CREATE TABLE `web_social_link` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_social_link`
--

INSERT INTO `web_social_link` (`id`, `name`, `link`, `icon`, `status`, `date`) VALUES
(1, 'Facebook', 'https://www.facebook.com', 'facebook', 1, '2018-04-02 01:52:31'),
(2, 'twitter', 'https://twitter.com', 'tumblr', 1, '2018-07-09 18:12:09'),
(3, 'google plus', 'https://google-plus.com', 'linkedin', 1, '2018-07-09 18:12:09'),
(4, 'youtube', 'https://www.youtube.com', 'dribbble', 1, '2018-07-09 18:12:09'),
(5, 'instagram', 'https://instagram.com', 'instagram', 1, '2018-01-31 19:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `web_subscriber`
--

CREATE TABLE `web_subscriber` (
  `sub_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coinpayments_payments`
--
ALTER TABLE `coinpayments_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coin_setup`
--
ALTER TABLE `coin_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`);

--
-- Indexes for table `dbt_balance`
--
ALTER TABLE `dbt_balance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `dbt_balance_log`
--
ALTER TABLE `dbt_balance_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dbt_coin_manager`
--
ALTER TABLE `dbt_coin_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_country`
--
ALTER TABLE `dbt_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_cron`
--
ALTER TABLE `dbt_cron`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_crypto_transaction`
--
ALTER TABLE `dbt_crypto_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_currency`
--
ALTER TABLE `dbt_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Symbol` (`symbol`);

--
-- Indexes for table `dbt_deposit`
--
ALTER TABLE `dbt_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_exchange`
--
ALTER TABLE `dbt_exchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_exchange_details`
--
ALTER TABLE `dbt_exchange_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_exchange_history`
--
ALTER TABLE `dbt_exchange_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_fees`
--
ALTER TABLE `dbt_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_messenger`
--
ALTER TABLE `dbt_messenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_payout_method`
--
ALTER TABLE `dbt_payout_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_release_setup`
--
ALTER TABLE `dbt_release_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_token`
--
ALTER TABLE `dbt_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `dbt_transfer`
--
ALTER TABLE `dbt_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_user`
--
ALTER TABLE `dbt_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `dbt_user_cryptowallet`
--
ALTER TABLE `dbt_user_cryptowallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet` (`wallet`);

--
-- Indexes for table `dbt_user_log`
--
ALTER TABLE `dbt_user_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dbt_user_verify_doc`
--
ALTER TABLE `dbt_user_verify_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_verify`
--
ALTER TABLE `dbt_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_withdraw`
--
ALTER TABLE `dbt_withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`earning_id`);

--
-- Indexes for table `email_sms_gateway`
--
ALTER TABLE `email_sms_gateway`
  ADD PRIMARY KEY (`es_id`);

--
-- Indexes for table `investment`
--
ALTER TABLE `investment`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `idinvestment_UNIQUE` (`order_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_control`
--
ALTER TABLE `menu_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `payeer_payments`
--
ALTER TABLE `payeer_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sms_email_send_setup`
--
ALTER TABLE `sms_email_send_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_article`
--
ALTER TABLE `web_article`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `web_category`
--
ALTER TABLE `web_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `web_language`
--
ALTER TABLE `web_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_news`
--
ALTER TABLE `web_news`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `web_slider`
--
ALTER TABLE `web_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_social_link`
--
ALTER TABLE `web_social_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_subscriber`
--
ALTER TABLE `web_subscriber`
  ADD PRIMARY KEY (`sub_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `coinpayments_payments`
--
ALTER TABLE `coinpayments_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `coin_setup`
--
ALTER TABLE `coin_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_balance`
--
ALTER TABLE `dbt_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_balance_log`
--
ALTER TABLE `dbt_balance_log`
  MODIFY `log_id` bigint(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_coin_manager`
--
ALTER TABLE `dbt_coin_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dbt_country`
--
ALTER TABLE `dbt_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `dbt_cron`
--
ALTER TABLE `dbt_cron`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_crypto_transaction`
--
ALTER TABLE `dbt_crypto_transaction`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_currency`
--
ALTER TABLE `dbt_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2337;
--
-- AUTO_INCREMENT for table `dbt_deposit`
--
ALTER TABLE `dbt_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_exchange`
--
ALTER TABLE `dbt_exchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_exchange_details`
--
ALTER TABLE `dbt_exchange_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_exchange_history`
--
ALTER TABLE `dbt_exchange_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_fees`
--
ALTER TABLE `dbt_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_messenger`
--
ALTER TABLE `dbt_messenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_payout_method`
--
ALTER TABLE `dbt_payout_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_release_setup`
--
ALTER TABLE `dbt_release_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_token`
--
ALTER TABLE `dbt_token`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_transfer`
--
ALTER TABLE `dbt_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_user`
--
ALTER TABLE `dbt_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_user_cryptowallet`
--
ALTER TABLE `dbt_user_cryptowallet`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_user_log`
--
ALTER TABLE `dbt_user_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_user_verify_doc`
--
ALTER TABLE `dbt_user_verify_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_verify`
--
ALTER TABLE `dbt_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_withdraw`
--
ALTER TABLE `dbt_withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `earning_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_sms_gateway`
--
ALTER TABLE `email_sms_gateway`
  MODIFY `es_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `investment`
--
ALTER TABLE `investment`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;
--
-- AUTO_INCREMENT for table `menu_control`
--
ALTER TABLE `menu_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payeer_payments`
--
ALTER TABLE `payeer_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sms_email_send_setup`
--
ALTER TABLE `sms_email_send_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_article`
--
ALTER TABLE `web_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `web_category`
--
ALTER TABLE `web_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `web_language`
--
ALTER TABLE `web_language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `web_news`
--
ALTER TABLE `web_news`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `web_slider`
--
ALTER TABLE `web_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `web_social_link`
--
ALTER TABLE `web_social_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_subscriber`
--
ALTER TABLE `web_subscriber`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
