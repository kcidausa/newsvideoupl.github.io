-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2021 at 04:51 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17127511_newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'campcodes@gmail.com', 1, '2020-03-27 17:51:00', '2020-04-24 18:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Taja khabar', 'Taja khabar', '2018-06-06 10:28:09', '2018-06-30 18:41:07', 1),
(5, 'Entertainment', 'Entertainment related  News', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Politics', 'Politics', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'Business', 'Business', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1),
(19, 'Crime', 'Crime Repot', '2021-06-26 17:35:54', NULL, 1),
(20, 'Special', 'Special', '2021-06-26 17:36:31', NULL, 1),
(21, 'Religion', 'Dharm', '2021-06-26 17:37:43', NULL, 1),
(22, 'Science', 'Science', '2021-06-26 17:37:55', NULL, 1),
(23, 'Dausa', 'Dausa', '2021-06-26 17:38:23', NULL, 1),
(24, 'Real State', 'Real State', '2021-06-26 17:38:38', NULL, 1),
(25, 'Weather', 'Weather', '2021-06-26 17:38:50', NULL, 1),
(26, 'Rajasthan', 'Rajasthan', '2021-06-26 17:39:03', NULL, 1),
(27, 'E-Mitra', 'E-Mitra', '2021-06-26 17:39:21', NULL, 1),
(28, 'CSC', 'Common Service Center', '2021-06-26 17:39:40', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 1),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 1),
(4, '13', 'radhakishan', 'kcidausa@gmail.com', 'thshhdjhjkd', '2021-06-24 23:16:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<h5><br>à¤¨à¤®à¤¸à¥à¤•à¤¾à¤° à¤¦à¥‹à¤¸à¥à¤¤à¥‹à¤‚ à¤®à¥‡à¤°à¤¾ à¤¨à¤¾à¤® à¤°à¤¾à¤§à¤¾à¤•à¤¿à¤¶à¤¨ à¤¹à¥ˆ à¤”à¤° à¤†à¤ª à¤¸à¤­à¥€ à¤•à¤¾ à¤¹à¤®à¤¾à¤°à¥€ à¤µà¥‡à¤¬à¤¸à¤¾à¤‡à¤Ÿ https://ndnewsh24x7.000webhostapp.com/ à¤ªà¤° à¤¸à¥à¤µà¤¾à¤—à¤¤ à¤¹à¥ˆà¥¤ à¤‡à¤¸ à¤µà¥‡à¤¬à¤¸à¤¾à¤‡à¤Ÿ à¤•à¥‡ à¤¬à¤¾à¤°à¥‡ à¤®à¥‡à¤‚ à¤à¤• à¤¦à¥‚à¤¸à¤°à¥‡ à¤•à¤¾ à¤¸à¥à¤µà¤¾à¤—à¤¤ à¤¹à¥ˆà¥¤ à¤†à¤œ à¤®à¥ˆà¤‚ à¤à¤• à¤¦à¥‚à¤¸à¤°à¥‡ à¤•à¥‹ à¤…à¤ªà¤¨à¥‡ à¤¬à¤¾à¤°à¥‡ à¤®à¥‡à¤‚ à¤•à¥à¤› à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¥‡à¤¨à¥‡ à¤œà¤¾ à¤°à¤¹à¤¾ à¤¹à¥‚à¤à¥¤ à¤¤à¥‹ à¤…à¤—à¤° à¤†à¤ªà¤•à¥‹ à¤…à¤­à¥€ à¤®à¥‡à¤°à¥‡ à¤¬à¤¾à¤°à¥‡ à¤®à¥‡à¤‚ à¤œà¤¾à¤¨à¤¨à¥‡ à¤®à¥‡à¤‚ à¤¦à¤¿à¤²à¤šà¤¸à¥à¤ªà¥€ à¤¹à¥ˆ à¤¤à¥‹ à¤†à¤ª à¤ªà¥‚à¤°à¤¾ à¤ªà¤¢à¤¼à¥‡à¤‚à¤—à¥‡à¥¤</br>\r\n<br>à¤¦à¥‹à¤¸à¥à¤¤à¥‹à¤‚ à¤®à¥‡à¤°à¤¾ à¤¨à¤¾à¤® à¤°à¤¾à¤§à¤¾à¤•à¤¿à¤¶à¤¨ à¤¹à¥ˆ à¤œà¥ˆà¤¸à¤¾ à¤•à¤¿ à¤®à¥à¤à¥‡ à¤ªà¤¹à¤²à¥‡ à¤¸à¥‡ à¤ªà¤¤à¤¾ à¤¹à¥ˆ à¤”à¤° à¤®à¥ˆà¤‚ à¤‡à¤‚à¤Ÿà¤°à¤¨à¥‡à¤Ÿ à¤ªà¤° à¤œà¥à¤¯à¤¾à¤¦à¤¾ à¤•à¤¾à¤® à¤•à¤°à¤¤à¤¾ à¤¹à¥‚à¤‚ à¤•à¥à¤¯à¥‹à¤‚à¤•à¤¿ à¤®à¥à¤à¥‡ à¤ªà¤¹à¤²à¥‡ à¤¸à¥‡ à¤¹à¥€ à¤ªà¤¤à¤¾ à¤¹à¥ˆ à¤•à¤¿ à¤®à¥‡à¤°à¥€ à¤‡à¤¸ à¤µà¥‡à¤¬à¤¸à¤¾à¤‡à¤Ÿ à¤ªà¤° à¤®à¥ˆà¤‚ à¤†à¤ª à¤¸à¤­à¥€ à¤•à¥‹ à¤¬à¥à¤²à¥‰à¤—à¤¿à¤‚à¤— à¤•à¥‡ à¤¬à¤¾à¤°à¥‡ à¤®à¥‡à¤‚ à¤¬à¤¤à¤¾à¤Šà¤‚à¤—à¤¾, à¤¯à¥‚à¤Ÿà¥à¤¯à¥‚à¤¬ à¤”à¤° à¤‘à¤¨à¤²à¤¾à¤‡à¤¨ à¤‡à¤‚à¤¡à¥‹à¤°à¥à¤®à¥‡à¤¶à¤¨ à¤¨à¤ˆ à¤ªà¥‹à¤¸à¥à¤Ÿ à¤²à¤¾à¤¤à¤¾ à¤°à¤¹à¤¤à¤¾ à¤¹à¥‚à¤‚, à¤‡à¤¸à¤²à¤¿à¤ à¤¯à¤¦à¤¿ à¤†à¤ª à¤…à¤­à¥€ à¤­à¥€ à¤‡à¤¸à¤•à¤¾ à¤†à¤¨à¤‚à¤¦ à¤²à¥‡à¤¨à¤¾ à¤šà¤¾à¤¹à¤¤à¥‡ à¤¹à¥ˆà¤‚à¥¤ à¤¤à¥‹ à¤¹à¤®à¤¾à¤°à¥€ à¤µà¥‡à¤¬à¤¸à¤¾à¤‡à¤Ÿ à¤ªà¤° à¤à¤¸à¥‡ à¤¹à¥€ à¤¬à¤¨à¥‡ à¤°à¤¹à¥‡à¤‚, à¤…à¤¬ à¤®à¥ˆà¤‚ à¤†à¤ªà¤•à¥‹ à¤…à¤ªà¤¨à¥‡ à¤¬à¤¾à¤°à¥‡ à¤®à¥‡à¤‚ à¤¥à¥‹à¤¡à¤¼à¤¾ à¤¬à¤¤à¤¾à¤¤à¤¾ à¤¹à¥‚à¤‚à¥¤</br></h5>\r\n<hr>\r\n\r\n<h5><br>About Me (https://ndnewsh24x7.000webhostapp.com/)</br>\r\n\r\n<br>Name â€“ Radhakishan</br>\r\n\r\n<br>Address â€“ Sainthal, Dausa (Rajasthan)</br>\r\n\r\n<br>Qualification â€“MSCIT,â€™Oâ€™ Level, B.A.</br>\r\n\r\n<br>Contact â€“ nihalnews24@gmail.com</br>\r\n\r\n<br>Thanks For Visit </br></h5>\r\n\r\n', '2018-06-30 18:01:03', '2021-06-24 21:42:14'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>Main Bus Stand Sainthal</p><p><b>Mobile Number : </b>+91 -9414801508,7737201508</p><p><b>Email -id : </b>nihalnews24x7@gmail.com</p>\r\n\r\n', '2018-06-30 18:01:36', '2021-06-24 21:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(7, 'Jasprit Bumrah ruled out of England T20I series due to injury', 3, 4, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">The Indian Cricket Team has received a huge blow right ahead of the commencement of the much-awaited series against England. Star speedster Jasprit Bumrah has been ruled out of the forthcoming 3-match T20I series as he suffered an injury in his left thumb.</span></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style=\"padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2018-06-30 18:49:23', '2018-08-28 15:57:32', 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury', '6d08a26c92cf30db69197a1fb7230626.jpg'),
(10, 'Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal', 7, 9, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><span itemprop=\"headline\" style=\"box-sizing: inherit;\">Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal</span>Tata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel Deal</h1>', '2018-06-30 19:08:56', '2018-08-28 15:59:59', 1, 'Tata-Steel,-Thyssenkrupp-Finalise-Landmark-Steel-Deal', '505e59c459d38ce4e740e3c9f5c6caf7.jpg'),
(11, 'UNs Jean Pierre Lacroix thanks India for contribution to peacekeeping', 6, 8, '<p>UNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeeping<br></p>', '2018-06-30 19:10:36', '2018-08-28 16:01:35', 1, 'UNs-Jean-Pierre-Lacroix-thanks-India-for-contribution-to-peacekeeping', '27095ab35ac9b89abb8f32ad3adef56a.jpg'),
(12, 'Shah holds meeting with NE states leaders in Manipur', 6, 7, '<p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">New Delhi: BJP president Amit Shah today held meetings with his party leaders who are in-charge of 11 Lok Sabha seats spread across seven northeast states as part of a drive to ensure that it wins the maximum number of these constituencies in the general election next year.</span><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><webviewcontentdata style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">Shah held separate meetings with Lok Sabha toli (group) of Arunachal Pradesh, Tripura, Meghalaya, Mizoram, Nagaland, Sikkim and Manipur in Manipur, the partys media head Anil Baluni said.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">Baluni said that Shah was in West Bengal for two days before he arrived in Manipur. The BJP chief would reach Odisha tomorrow.</webviewcontentdata><br></p>', '2018-06-30 19:11:44', '2018-08-28 16:01:43', 1, 'Shah-holds-meeting-with-NE-states-leaders-in-Manipur', '7fdc1a630c238af0815181f9faa190f5.jpg'),
(13, 'CSC à¤®à¥‡à¤‚ à¤•à¥€ à¤œà¤¾à¤à¤—à¥€ à¤•à¤°à¥€à¤¬ 20 à¤²à¤¾à¤– à¤­à¤°à¥à¤¤à¤¿à¤¯à¤¾à¤‚', 18, 10, 'à¤¨à¤ˆ à¤¦à¤¿à¤²à¥à¤²à¥€: à¤•à¥‰à¤®à¤¨ à¤¸à¤°à¥à¤µà¤¿à¤¸ à¤¸à¥‡à¤‚à¤Ÿà¤° à¤®à¥‡à¤‚ à¤•à¤°à¥€à¤¬ 20 à¤²à¤¾à¤– à¤¯à¥à¤µà¤¾à¤“à¤‚ à¤•à¥€ à¤­à¤°à¥à¤¤à¤¿à¤¯à¤¾à¤‚ à¤•à¥€ à¤œà¤¾à¤à¤—à¥€. à¤‡à¤¸ à¤•à¥à¤·à¥‡à¤¤à¥à¤° à¤®à¥‡à¤‚ à¤­à¤¾à¤°à¥€ à¤¸à¤‚à¤–à¥à¤¯à¤¾ à¤®à¥‡à¤‚ à¤²à¥‹à¤—à¥‹à¤‚ à¤•à¥‹ à¤°à¥‹à¤œà¤—à¤¾à¤° à¤‰à¤ªà¤²à¤¬à¥à¤§ à¤•à¤°à¤µà¤¾à¤¯à¤¾ à¤œà¤¾à¤à¤—à¤¾. \r\n\r\nà¤‡à¤¸à¤•à¥‡ à¤…à¤²à¤¾à¤µà¤¾ à¤šà¤¯à¤¨à¤¿à¤¤ à¤‰à¤®à¥à¤®à¥€à¤¦à¤µà¤¾à¤° à¤—à¥à¤°à¤¾à¤®à¥€à¤£ à¤ˆ-à¤¸à¥à¤Ÿà¥‹à¤° (E Store) à¤”à¤° à¤•à¤¿à¤¸à¤¾à¤¨ à¤ˆ-à¤®à¤¾à¤°à¥à¤Ÿ (Kisan E mart) à¤•à¥‡ à¤²à¤¿à¤ à¤¡à¤¿à¤²à¤¿à¤µà¤°à¥€ à¤à¤œà¥‡à¤‚à¤Ÿ à¤•à¥‡ à¤°à¥‚à¤ª à¤®à¥‡à¤‚ à¤•à¤¾à¤® à¤•à¤°à¥‡à¤‚à¤—à¥‡ à¤”à¤° CSC à¤•à¥‹ à¤¸à¤°à¤•à¤¾à¤° à¤”à¤° à¤…à¤¨à¥à¤¯ à¤à¤œà¥‡à¤‚à¤¸à¤¿à¤¯à¥‹à¤‚ à¤•à¥‡ à¤²à¤¿à¤ à¤µà¤¿à¤­à¤¿à¤¨à¥à¤¨ à¤¸à¤°à¥à¤µà¥‡ à¤•à¤°à¤¨à¥‡ à¤®à¥‡à¤‚ à¤®à¤¦à¤¦ à¤•à¤°à¥‡à¤‚à¤—à¥‡.\r\n\r\nà¤•à¥â€à¤¯à¤¾ à¤¹à¥ˆ CSC\r\nà¤¸à¤°à¤•à¤¾à¤° à¤¨à¥‡ à¤°à¤¾à¤·à¥à¤Ÿà¥€à¤¯ à¤ˆ-à¤—à¤µà¤°à¥à¤¨à¥‡à¤‚à¤¸ à¤ªà¥‰à¤²à¤¿à¤¸à¥€ à¤•à¥‡ à¤¤à¤¹à¤¤ à¤¸à¥‚à¤šà¤¨à¤¾à¤“à¤‚ à¤”à¤° à¤¯à¥‹à¤œà¤¨à¤¾à¤“à¤‚ à¤•à¥€ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤²à¥‹à¤—à¥‹à¤‚ à¤¤à¤• à¤ªà¤¹à¥à¤‚à¤šà¤¾à¤¨à¥‡ à¤•à¥‡ à¤²à¤¿à¤ CSC à¤•à¥€ à¤¶à¥à¤°à¥à¤†à¤¤ à¤•à¥€ à¤¥à¥€. à¤‡à¤¨ à¤¸à¥‡à¤‚à¤Ÿà¤° à¤¸à¥‡ à¤¸à¤°à¤•à¤¾à¤° à¤¨à¤¾à¤—à¤°à¤¿à¤•à¥‹à¤‚ à¤•à¥‹ à¤•à¥ƒà¤·à¤¿, à¤¸à¥à¤µà¤¾à¤¸à¥à¤¥à¥à¤¯, à¤¶à¤¿à¤•à¥à¤·à¤¾, à¤®à¤¨à¥‹à¤°à¤‚à¤œà¤¨, à¤¬à¥ˆà¤‚à¤•à¤¿à¤‚à¤— à¤”à¤° à¤µà¤¿à¤¤à¥à¤¤à¥€à¤¯ à¤¸à¥‡à¤µà¤¾ à¤•à¤¾ à¤«à¤¾à¤¯à¤¦à¤¾ à¤‰à¤ à¤¾à¤¨à¥‡ à¤•à¤¾ à¤®à¥Œà¤•à¤¾ à¤¦à¥‡à¤¤à¥€ à¤¹à¥ˆ. CSC à¤•à¤¾ à¤®à¥à¤–à¥à¤¯ à¤‰à¤¦à¥à¤¦à¥‡à¤¶à¥à¤¯ à¤²à¥‹à¤—à¥‹à¤‚ à¤•à¥‹ à¤¸à¤®à¤¯ à¤ªà¤° à¤•à¤® à¤²à¤¾à¤—à¤¤ à¤®à¥‡à¤‚ à¤ˆ-à¤—à¤µà¤°à¥à¤¨à¥‡à¤‚à¤¸ à¤¸à¤°à¥à¤µà¤¿à¤¸ à¤¦à¥‡à¤¨à¤¾ à¤¹à¥ˆ.', '2021-06-24 21:26:59', NULL, 1, 'CSC-à¤®à¥‡à¤‚-à¤•à¥€-à¤œà¤¾à¤à¤—à¥€-à¤•à¤°à¥€à¤¬-20-à¤²à¤¾à¤–-à¤­à¤°à¥à¤¤à¤¿à¤¯à¤¾à¤‚', '5f7cb8aaf8c9465f5515e5d5d09f7df5.jpg'),
(14, 'fhghjghfghfghj', 2, 11, '<pre class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" dir=\"ltr\" style=\"font-family: inherit; unicode-bidi: isolate; font-size: 24px; line-height: 32px; background-color: rgb(248, 249, 250); border-width: initial; border-style: none; border-color: initial; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; overflow: hidden; width: 270px; white-space: pre-wrap; color: rgb(32, 33, 36);\"><span class=\"Y2IQFc\" lang=\"hi\">खेल</span></pre>', '2021-06-26 17:22:41', NULL, 1, 'fhghjghfghfghj', 'f3ccdd27d2000e3f9255a7e3e2c48800.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 9, 'à¤…à¤œà¤¬ à¤—à¤œà¤¬ ', 'à¤…à¤œà¤¬ à¤—à¤œà¤¬ ', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Football', 'Football', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'India', 'India', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1),
(10, 18, 'csc', 'csc', '2021-06-24 21:26:07', NULL, 1),
(11, 2, 'Taja khabar', 'Taja khabar', '2021-06-26 17:21:43', NULL, 1),
(12, 28, 'CSC', 'Comman Service Center', '2021-06-26 17:45:36', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `video_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `video_name`, `location`) VALUES
(3, '202103191616163790', 'video/202103191616163790.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
