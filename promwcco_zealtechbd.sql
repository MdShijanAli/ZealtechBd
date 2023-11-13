-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2022 at 08:22 AM
-- Server version: 10.3.37-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `promwcco_zealtechbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'uploads/160132196_116194603857700_4220280086503084701_n_62a4c6602f94f.jpg', '<div style=\"\"><font color=\"#000000\" face=\"Open Sans, Helvetica, Arial, Lucida, sans-serif\"><span style=\"font-size: 14px; letter-spacing: 1px;\">ZealTechBD is an independent branding and experience digital marketing agency based on worldwide.&nbsp;</span></font><span style=\"font-size: 14px; letter-spacing: 1px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Helvetica, Arial, Lucida, sans-serif;\">The team at Zealtechbd provides fresh and creative designs. We are experienced graphic designers and make it our goal to bring you success. Your passions and goals become our own. Call us to see how we can help!</span></div>', '2021-03-09 10:52:11', '2022-11-20 18:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Website', 'website', NULL, '2021-03-17 09:19:10', '2021-03-17 09:19:10'),
(2, 'Design', 'design', NULL, '2021-03-17 09:20:48', '2021-03-17 09:20:48'),
(3, 'Graphics', 'graphics', NULL, '2021-03-17 09:21:09', '2021-03-17 09:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `slug`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Probaho Club', 'probaho-club', 'uploads/service/Logo_624caed939869.jpg', NULL, '2021-03-15 12:47:23', '2022-04-06 01:04:25'),
(2, 'Dreamers Organization', 'dreamers-organization', 'uploads/service/109840077_611960116403839_6037702036063974038_n_624caf163b726.jpg', '2022-06-12 12:37:33', '2021-03-15 13:00:06', '2022-06-12 12:37:33'),
(3, 'Jack Fruit', 'jack-fruit', 'uploads/service/Screenshot_1_624caf3bc333d.png', '2022-06-12 12:41:52', '2021-03-15 13:00:21', '2022-06-12 12:41:52'),
(4, 'Abroad Club', 'abroad-club', 'uploads/service/191819551_157912956369511_6937481200757383698_n_624caf889661e.jpg', NULL, '2021-03-15 13:00:39', '2022-04-06 01:07:20'),
(5, 'Wow Event Solution', 'wow-event-solution', 'uploads/service/logo3_62a5a3f49b7e2.png', '2022-06-12 12:30:08', '2021-03-15 13:00:54', '2022-06-12 12:30:08'),
(6, 'Legolandmegamall', 'legolandmegamall', 'uploads/service/Untitled-1_624cb04223e64.png', '2022-06-12 12:35:37', '2021-03-15 13:01:08', '2022-06-12 12:35:37'),
(7, 'Rafusoft', 'rafusoft', 'uploads/client/74575087_2594089620645733_4734028028709961728_n_624caf7130ed8.jpg', '2022-06-12 12:33:35', '2022-04-06 01:06:57', '2022-06-12 12:33:35'),
(8, 'Bikers Ocean', 'bikers-ocean', 'uploads/client/Untitled-1_624cb09d53174.png', '2022-06-12 12:17:43', '2022-04-06 01:11:57', '2022-06-12 12:17:43'),
(9, 'Quickfix Global', 'quickfix-global', 'uploads/service/Quickfix_62a59f28ca4d7.png', NULL, '2022-06-12 12:08:17', '2022-06-12 12:09:12'),
(10, 'Gadget N Phone', 'gadget-n-phone', 'uploads/client/GNP_62a59f875faa7.png', NULL, '2022-06-12 12:10:47', '2022-06-12 12:10:47'),
(11, 'Bikers Ocean', 'bikers-ocean', 'uploads/client/BO_62a5a117ace39.png', NULL, '2022-06-12 12:17:27', '2022-06-12 12:17:27'),
(12, 'KBT Moto & Accessories', 'kbt-moto-accessories', 'uploads/client/KBT_62a5a171c43ea.png', NULL, '2022-06-12 12:18:57', '2022-06-12 12:18:57'),
(13, 'Deshi Khadok', 'deshi-khadok', 'uploads/client/Deshi-Khadok_62a5a2435214e.png', NULL, '2022-06-12 12:22:27', '2022-06-12 12:22:27'),
(14, 'Crazy Snacks', 'crazy-snacks', 'uploads/client/Crazy-Snacks_62a5a2c713fce.png', NULL, '2022-06-12 12:24:39', '2022-06-12 12:24:39'),
(15, 'Hijab Bibi', 'hijab-bibi', 'uploads/client/Hijab-Bibi_62a5a3228995b.png', NULL, '2022-06-12 12:26:10', '2022-06-12 12:26:10'),
(16, 'Wow Event Solution', 'wow-event-solution', 'uploads/client/logo3_62a5a42245bda.png', NULL, '2022-06-12 12:30:26', '2022-06-12 12:30:26'),
(17, 'Rafusoft', 'rafusoft', 'uploads/service/Rafusoft_62a5a4da11dd4.png', NULL, '2022-06-12 12:32:00', '2022-06-12 12:33:30'),
(18, 'Legoland Megamall', 'legoland-megamall', 'uploads/client/Legoland_62a5a568f2a2b.png', NULL, '2022-06-12 12:35:52', '2022-06-12 12:35:52'),
(19, 'Dreamers Organization', 'dreamers-organization', 'uploads/client/Dreamers_62a5a5e167748.png', NULL, '2022-06-12 12:37:53', '2022-06-12 12:37:53'),
(20, 'Jack Fruit', 'jack-fruit', 'uploads/service/Jackfruit_62a5a7b549074.png', NULL, '2022-06-12 12:42:07', '2022-06-12 12:45:41'),
(21, 'Modina Computer', 'modina-computer', 'uploads/service/Modina-computer_62a5ab6e916bd.png', NULL, '2022-06-12 13:00:50', '2022-06-12 13:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `about` text DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `name`, `phone`, `email`, `address`, `about`, `slogan`, `facebook`, `twitter`, `linkedin`, `instagram`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'ZealtechBD', '+88 01977749733', 'info@zealtechbd.com', 'Ka/32/5/A (2nd Floor), Palash Tower,  Shahjadpur, Badda, Dhaka Division, Bangladesh.', 'ZealTechBD is a web design, Graphic design & digital marketing agency based company in Bangladesh. It has been providing services to the clients from 50+ countries around the world.', 'Zeal for Future....', 'https://www.facebook.com/zealtechbd', 'https://twitter.com/ZealtechBD', 'https://www.linkedin.com/in/zealtech-bd-540253251/', 'https://www.instagram.com/zealtechbd/', 'uploads/302738717_447093420772959_397594488092081339_n_632c0cb91b0e9.jpg', '2021-03-08 14:30:39', '2022-11-20 18:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Charles Perez', 'hemukyn@mailinator.com', 'Anim ut sint error s', '+1 (372) 986-9711', 'Quia enim laboriosam', NULL, '2021-03-10 12:12:21', '2021-03-10 12:12:21'),
(2, 'azharul islam', 'azharul@gmail.com', 'Hellow Ssubject', '01738722919', 'text here', '2021-03-21 09:25:56', '2021-03-10 12:34:19', '2021-03-21 09:25:56'),
(3, 'Mara Barton', 'menug@mailinator.com', 'Vel voluptatum repel', '+1 (791) 609-8832', 'Esse consequat Ea a', NULL, '2021-03-11 11:07:57', '2021-03-11 11:07:57'),
(4, 'Xantha Kim', 'bapov@mailinator.com', 'Aut corrupti repreh', '+1 (978) 891-3623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, '2021-03-21 09:14:43', '2021-03-21 09:14:43'),
(5, 'Harry Williams', 'harrywilliams.tech01@gmail.com', 'Question about your websites', '3862024511', 'Hey,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site, though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results. Would you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIt\'s a relatively simple fix. If this is a priority.\r\n\r\nPlease share your “Mobile Number\" and a suitable time to talk, so I can help you in that.\r\n\r\n\r\nRegards,\r\nHarry Williams\r\nDigital Marketing Expert\r\n\r\nYou can call also our Support Assistant\r\nMiss Sharon: 1-386-202-4511\r\nMiss Catherine: 1-620-765-4699', NULL, '2022-04-07 21:36:35', '2022-04-07 21:36:35'),
(6, 'Brianna Belton', 'briannawebsolution@gmail.com', 'Re: Want more clients and customers?', '1201201200', 'Hope you are doing well,\r\n\r\nAs I see you have a newly launched website, not showing on top search engines like Google/Bing/Yahoo. If you are on page #1 you will get so many new customers every day.\r\nIf you want to avail this opportunity.\r\n\r\n10 plus years of Experience | Partnered with 20+ Digital Agencies | 60+ SEO, SMO - SEM Google Ads Certified Professionals (Google ads, Bing ads, FB ads etc.), expert website designers & developers.\r\n\r\nPlease share your phone number (With Country Code)/Skype and suitable time (Meeting) to talk to you,  I\'d be happy to explain to you our plan and strategy.\r\n\r\nLooking forward to your reply,\r\nBrianna Belton', NULL, '2022-04-08 10:23:17', '2022-04-08 10:23:17'),
(7, 'Monarch web', 'monarchwebsolution@gmail.com', 'Re : Website Design & Development service provider', '1201201200', 'Hope you are doing well!\r\n\r\nI am Nishant, \r\n\r\nWe collaborate with startups, SMBs, and new domain owners to provide Website design - re-design and development services at modest rate.\r\n\r\nWe have a dedicated team of 45 professional designers and developers with over 8 plus years of experience and we thrive on the idea that design makes a difference. \r\n\r\nOur services at a glance: - \r\n\r\nWebsite Designing/Re-Designing \r\n\r\n#E-commerce development (Magento, Shopify, Woo Commerce etc.)\r\n\r\n#Graphic Designing\r\n\r\n#WordPress Theme Design & Customization\r\n\r\n#Custom themes, Plugins & Widget Development\r\n\r\n#Custom Templates, Modules, Plugins Design & Development\r\n\r\nShare a brief about your project with your phone number (With Country Code) /Skype and suitable time (Meeting) to talk to you, and get a guaranteed response within 24 hours.\r\n\r\n\r\nI’m waiting for your reply. \r\n\r\nKinds Regards,\r\nMonarch (Web Solution Manager)', NULL, '2022-04-26 11:38:54', '2022-04-26 11:38:54'),
(8, 'Ronaldsen', 'no-replyDintaitymn@gmail.com', 'Mailing via the feedback form.', '83478874965', 'Hi!  zealtechstudio.com \r\n \r\nWe offer \r\n \r\nSending your commercial proposal through the feedback form which can be found on the sites in the Communication partition. Contact form are filled in by our software and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique raise the probability that your message will be open. \r\n \r\nOur database contains more than 27 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing Up to 50,000 messages. \r\n \r\n \r\nThis letter is created automatically.  Use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', NULL, '2022-05-26 07:35:54', '2022-05-26 07:35:54'),
(9, 'Helina Aziz', 'helinaaziz966@gmail.com', 'Subject: Owner of Website:zealtechstudio.com', '82688236888', 'As-salamu alaykum, \r\n \r\nHow are you? \r\n \r\nMy name is Ms. Helina Aziz. Am reaching you through your website because I might not get you on the phone. \r\n \r\nI am interested in investing in your country through your personal business or services. I will like to keep this brief until I hear from you, you can reach me on  helinaaziz966@gmail.com or helina.aziz@saudiroyalfamily.live and WhatsApp messenger +447418439845. \r\n \r\nHave a nice day, \r\nMs. Helina Aziz', NULL, '2022-05-31 01:11:27', '2022-05-31 01:11:27'),
(10, 'HenryZoogs', 'RookTessa9292@o2.pl', 'Non tamen nummorum? Financial robot faciam te eum!', '89039154215', 'Scimus quomodo fieri dives, et tu? https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-03 21:54:24', '2022-06-03 21:54:24'),
(11, 'Duncan Smith', '5rdhp2fe29yb@beconfidential.com', 'Investment Portfolio', '88482262117', 'Dear Sir/Madam \r\n \r\nYou can only achieve financial freedom when you create multiple streams of income. \r\n \r\nI have an investment portfolio that will benefit both of us and I hope it will be appealing to you. \r\n \r\nIf interested contact me for more information via my E-mail: duncansmith2801@gmail.com \r\n \r\nI look forward to your quick reply. \r\n \r\nRegards \r\nDuncan Smith', NULL, '2022-06-04 01:40:12', '2022-06-04 01:40:12'),
(12, 'HenryZoogs', 'gortrek@forum.dk:sheila2007', 'Wow! Hoc Robot est, a tincidunt magna enim consectetur volutpat.', '89031405409', 'Fac pupa domi et deductae hoc Bot. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-06 02:18:48', '2022-06-06 02:18:48'),
(13, 'HenryZoogs', 'klunner@forum.dk', 'Financial libertatem, quid est hoc robot praestat.', '89035457259', 'Operam! Financial robot perducat vos milia! https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-06 05:22:14', '2022-06-06 05:22:14'),
(14, 'HenryZoogs', 'm40-190cm@forum.dk', 'Non erit sollicitum, si sunt accensi. Opus online.', '89038617925', 'At $1000 die facile est, si uti hoc financial Robot. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-06 08:26:16', '2022-06-06 08:26:16'),
(15, 'HenryZoogs', 'stp@forum.dk', 'Pecunia opus? Ut hic facile! Iustus premere hoc deducere in robot.', '89036409796', 'Non erit sollicitum, si sunt accensi. Opus online. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-06 11:34:39', '2022-06-06 11:34:39'),
(16, 'HenryZoogs', 'andreaskoldorf@mailme.dk', 'Wow! Hoc Robot est, a tincidunt magna enim consectetur volutpat.', '89035229171', 'Etiam sciat puer ut $100 hodie ope huius robot. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-06 15:03:02', '2022-06-06 15:03:02'),
(17, 'HenryZoogs', 'rudicka.tat@mailme.dk', 'Satus faciens milia pupa omni septimana.', '89034857975', 'Satus faciens milia pupa omni septimana. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-06 18:08:07', '2022-06-06 18:08:07'),
(18, 'HenryZoogs', 'lbbyg@mail-online.dk', 'Scimus quam crescere tua financial stabilitatem.', '89035339590', 'Financial libertatem est, quod quisque eget. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-06 21:08:44', '2022-06-06 21:08:44'),
(19, 'HenryZoogs', 'be@forum.dk', 'Quaestus potest esse perquam facile uti, si hoc Robot.', '89033138854', 'At $1000 die facile est, si uti hoc financial Robot. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-07 00:17:08', '2022-06-07 00:17:08'),
(20, 'HenryZoogs', 'mads-kamel@mailme.dk', 'Augmentum est nunc, sit amet quis ligula.', '89034202850', 'Financial libertatem est, quod quisque eget. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-07 03:19:22', '2022-06-07 03:19:22'),
(21, 'HenryZoogs', 'scorcher@mail-online.dk', 'Invenire de facillimum pecuniam victum.', '89033029215', 'Non tamen nummorum? Reficere nunc! https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-07 06:19:37', '2022-06-07 06:19:37'),
(22, 'HenryZoogs', 'ben-aly@mailme.dk', 'Reprehendo ex novissima modo, ut a fantastic utilitatem.', '89030918047', 'Wow! Hoc est celerrime, quia a financial libertatem. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-07 09:19:54', '2022-06-07 09:19:54'),
(23, 'HenryZoogs', 'camilla.drachmann@forum.dk', 'Non opus ad vigilate tota nocte mereri pecuniam. Adipiscing robot.', '89032167156', 'Invenimus in ieiunas modo sit dives. Inveniet eam hic. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-07 12:33:50', '2022-06-07 12:33:50'),
(24, 'HenryZoogs', 'innulicka@mailme.dk', 'Pecuniam in penitus usura hoc Bot. Vere operatur!', '89033227591', 'Nulla diam consequat? Sit Robot pecuniam pro te. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-07 15:31:57', '2022-06-07 15:31:57'),
(25, 'HenryZoogs', 'madsbue@forum.dk', 'Financial robot est a valde via ut curo et crescere reditus.', '89034790622', 'Financial robot praestat omnibus stabilitatem et reditus. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-07 18:41:51', '2022-06-07 18:41:51'),
(26, 'HenryZoogs', 'ab_suport@forum.dk', 'Omnis qui necessitatibus pecuniam, ut hanc Robot ex.', '89031382547', 'Quaestus est facile, si vos utor financial Robot. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-07 21:48:15', '2022-06-07 21:48:15'),
(27, 'HenryZoogs', 'm.o.k@forum.dk', 'Lorem optimum obsideri instrumentum, tincidunt ut pretium nunc.', '89035757139', 'Successu formula invenitur. Discere magis de eo. https://Zoogs.bode-roesch.de/Zoogs', NULL, '2022-06-08 00:52:40', '2022-06-08 00:52:40'),
(28, 'HenryZoogs', 'michaelb@forum.dk', 'Invenire de ieiunas via a financial libertatem.', '89031423240', 'Nec opus est quaerere job amplius. Opus online. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-08 03:54:57', '2022-06-08 03:54:57'),
(29, 'HenryZoogs', 'jwa@forum.dk', 'Lucraris in Penitus facile est, si vos utor Robot.', '89038638624', 'Quomodo Robot facit $1000 de $1 dignissim. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-08 06:55:29', '2022-06-08 06:55:29'),
(30, 'HenryZoogs', 'fritsandersen@mailme.dk', 'Financial Robot est futura opes et libertatem.', '89036505556', 'Quomodo Robot facit $1000 de $1 dignissim. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-08 09:56:35', '2022-06-08 09:56:35'),
(31, 'HenryZoogs', 'aso1973@forum.dk', 'In ieiunas modo, ut peram crassitudine reperitur.', '89036203751', 'Wow! Hoc est celerrime, quia a financial libertatem. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-08 13:03:16', '2022-06-08 13:03:16'),
(32, 'HenryZoogs', 'andreas1@forum.dk', 'Vultus deinceps ad reditus? Ut online.', '89037524604', 'Invenire de facillimum pecuniam victum. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-08 16:07:18', '2022-06-08 16:07:18'),
(33, 'HenryZoogs', 'per_h1@forum.dk', 'Vultus pro an securus via ad pecuniam? Reprehendo sicco financial robot.', '89038135303', 'Addito reditus pro omnibus. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-08 19:10:43', '2022-06-08 19:10:43'),
(34, 'HenryZoogs', 'titine@mailme.dk', 'Earn etiam pecunia sine conatus et artes.', '89033224192', 'Earn etiam pecunia sine labore. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-08 22:13:55', '2022-06-08 22:13:55'),
(35, 'HenryZoogs', 'vabis@forum.dk', 'Nulla diam consequat? Sit Robot pecuniam pro te.', '89038326898', 'Mille arietes sunt praestatur, si vos utor is robot. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-09 01:12:30', '2022-06-09 01:12:30'),
(36, 'HenryZoogs', 'xxxvampirexxx@yandex.ru', 'Buy omnia vis mereri pecuniam.', '89032988055', 'Non opus anymore. Iustus launch robot. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-09 04:20:01', '2022-06-09 04:20:01'),
(37, 'HenryZoogs', 'ob1@forum.dk', 'Providere familia tua, cum pecunia in aetate. Adipiscing Robot!', '89036905147', 'Pecuniam, domi hoc frigus hiemis. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-09 07:21:52', '2022-06-09 07:21:52'),
(38, 'HenryZoogs', 'irina.dm2012@mailme.dk', 'Pretium non habetis? Quisque online.', '89031540138', 'Non opus anymore dum Robot launched! https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-09 10:22:55', '2022-06-09 10:22:55'),
(39, 'HenryZoogs', 'lou.ford83@mailme.dk', 'Nec opus est quaerere job amplius. Opus online.', '89031025174', 'Vultus deinceps ad reditus? Ut online. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-09 13:22:27', '2022-06-09 13:22:27'),
(40, 'HenryZoogs', 'theismadsen@forum.dk', 'Quomodo Robot facit $1000 de $1 dignissim.', '89031447186', 'At $1000 die facile est, si uti hoc financial Robot. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-09 16:21:44', '2022-06-09 16:21:44'),
(41, 'HenryZoogs', 'paamedjernskjorten@forum.dk', 'Pecuniam, non bellum! Financial Robot quid opus est tibi.', '89031978531', 'Lorem optimum obsideri instrumentum, tincidunt ut pretium nunc. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-09 19:18:03', '2022-06-09 19:18:03'),
(42, 'HenryZoogs', 'rozzin@forum.dk', 'The financial Robot is your future wealth and independence.', '89037827485', 'Join the society of successful people who make money here. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-10 03:51:07', '2022-06-10 03:51:07'),
(43, 'Kevin Johnson', 'funneldeals360@gmail.com', 'Just a quick question', '85673471895', 'Hello \r\n \r\nDo you want to get more leads for your business or increase sales within days? \r\n \r\nThen you might want to get a Sales Funnel Landing Page that will motivate prospects to take action immediately and drive more sales for your business. \r\n \r\nAnd today, we have slashed our price from $997 to just $497. So, you are saving $500 when you order a Sales Funnel this week. \r\n \r\nBut this offer is only good this week, for the first 10 clients, so you need to order now, before you miss out. \r\n \r\nTo Book A 10 Minute Call With Me, Click Here: https://bit.ly/gb360-funnel-appointment \r\n \r\nYou can get an American owned and operated professional Sales Funnel building marketing company to create a high-quality Sales Funnel for your business. \r\n \r\nDid you know: \r\n \r\n•	Sales Funnels are much more powerful than websites when it comes to conversions \r\n•	Sales Funnels average sales per visitor is 2-3 times higher per order than a standard website \r\n•	Sales Funnels are one of the most inexpensive tools to use to obtain prospect contact info \r\nAgain, this $497 promotion is for this week only. Don’t miss out!!! The normal price is $997, so today you are saving $500. Get a sales funnel today before the 10 discounted funnel slots are gone. \r\n \r\nClick Here Now To Book A 10 Minute Call With Me: https://bit.ly/gb360-funnel-appointment', NULL, '2022-06-10 05:36:02', '2022-06-10 05:36:02'),
(44, 'HenryZoogs', 'kursusq@forum.dk', 'Robot is the best way for everyone who looks for financial independence.', '89031640603', 'Make money in the internet using this Bot. It really works! https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-10 06:10:55', '2022-06-10 06:10:55'),
(45, 'HenryZoogs', 'jjrock@mail-online.dk', 'Wow! Hoc Robot est, a tincidunt magna enim consectetur volutpat.', '89030021910', 'Fac pupa iustus sedentem in domum suam. https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-10 09:28:22', '2022-06-10 09:28:22'),
(46, 'LorenaWeini', 'jasonward9681@gmail.com', 'Posting positive reviews', '88184861192', 'Hello, \r\n \r\nOur company, RatingsKing, specializes in posting 5-star testimonials on all major review sites. This way people can find you much easier and get a good impression of your business. \r\nJust go on our website and choose the package that best fits your needs at https://ratingsking.com/packages.php \r\n \r\nOur packages start from $49/month. \r\nDepending on your package you will have a number of positive reviews that we will do for you. You will have reports monthly with the work that has been done in your account. \r\n \r\nUsually, we are posting on all major reviews sites or other listings you may have.', NULL, '2022-06-10 19:22:11', '2022-06-10 19:22:11'),
(47, 'HenryZoogs', 'krakatua@mail-online.dk', 'Quaestus potest esse perquam facile uti, si hoc Robot.', '89037571095', 'Etiam sciat puer ad pecuniam. Facere vobis? https://Zoogs.blueliners07.de/Zoogs', NULL, '2022-06-10 21:04:54', '2022-06-10 21:04:54'),
(48, 'HenryZoogs', 'palle1@forum.dk', 'Planto vestri laptop a financial instrumentum, cum hoc progressio.', '89037266689', 'Opus cash? Launch hoc robot et quod potest videre. https://Zoogs.coronect.de/Zoogs', NULL, '2022-06-11 00:06:10', '2022-06-11 00:06:10'),
(49, 'HenryZoogs', 'cartmen.erik@mailme.dk', 'Quaestus potest esse perquam facile uti, si hoc Robot.', '89037146339', 'Adipiscing diam Robot et facere negotium. https://Zoogs.coronect.de/Zoogs', NULL, '2022-06-11 03:15:15', '2022-06-11 03:15:15'),
(50, 'HenryZoogs', 'j-riget@forum.dk', 'Reprehendo sicco novus financial instrumentum, quae potest facere vos divites essetis.', '89039114956', 'Non erit sollicitum, si sunt accensi. Opus online. https://Zoogs.coronect.de/Zoogs', NULL, '2022-06-11 06:10:50', '2022-06-11 06:10:50'),
(51, 'HenryZoogs', 'lgf@forum.dk', 'Scimus quam crescere tua financial stabilitatem.', '89032244433', 'Earn etiam pecunia sine labore. https://Zoogs.coronect.de/Zoogs', NULL, '2022-06-11 09:08:25', '2022-06-11 09:08:25'),
(52, 'HenryZoogs', 'dehwe0@mailme.dk', 'Invenimus in ieiunas modo sit dives. Inveniet eam hic.', '89035165127', 'Fac $1000 de $1 in paucis minutis. Adipiscing diam robot nunc. https://Zoogs.coronect.de/Zoogs', NULL, '2022-06-11 11:56:16', '2022-06-11 11:56:16'),
(53, 'Michael', 'tbformleads@gmail.com', 'I have a question', '87879426981', 'Hello, \r\n \r\nI would like to schedule a quick call to discuss our marketing system that can bring you leads daily. \r\n \r\nWe use a robust email application that mimics real people sending emails, so we get a huge delivery rate. \r\n \r\nSTART GETTING HOT LEADS NOW: \r\n \r\n- We create the content for the email(s). \r\n- We forward leads to you daily. \r\n- We send to 500 new contacts a day M-F (10k monthly), then we send 5 follow up emails (that is 50k emails a month). \r\n \r\nPlus!! Monthly, we provide the 10,000 targeted new email addresses that we will email to. That email list is worth over $2,000 a month, but you get that free with our service. \r\n \r\nJust imagine, you will start getting hot leads within days of getting started with us. Get started now for a $47.00 setup fee and just $997 per month (month-to-month/no long-term contract). \r\n \r\nBook a 10 min call with me now: Click Here  (   http://www.erpgoldgroup.com/appointments/   ) \r\n \r\nNOTE: To hire a person to send one-to-one emails (like our system does) would cost around $2,500 a month, but with us, you pay just $997. \r\n \r\nOffer good for the first 20 clients, start getting quality leads now, don’t miss out.  Book appointment now: Click Here  (   http://www.erpgoldgroup.com/appointments/   ) \r\n \r\nSincerely, \r\n \r\n-	Michael', NULL, '2022-06-11 14:05:53', '2022-06-11 14:05:53'),
(54, 'HenryZoogs', 'licklips@forum.dk', 'Sit Robot et adducam te pecuniam dum reliqua.', '89039733011', 'Pecuniam in penitus usura hoc Bot. Vere operatur! https://Zoogs.coronect.de/Zoogs', NULL, '2022-06-11 14:55:12', '2022-06-11 14:55:12'),
(55, 'HenryZoogs', 'metaksa1986@mailme.dk', 'Financial Robot est maxime financial tool in rete!', '89038976872', 'Online referte sunt facillimus via financial libertatem. https://Zoogs.coronect.de/Zoogs', NULL, '2022-06-11 17:51:45', '2022-06-11 17:51:45'),
(56, 'Domingo Wolken', 'jaouadhifarah0@bebekpenyet.buzz', NULL, '070 1968 3384', 'Good job on the new site! Now go ahead and submit it to our free directory here https://1mdr.short.gy/submityoursite', NULL, '2022-06-14 22:22:09', '2022-06-14 22:22:09'),
(57, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'There they go…', '555-555-1212', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at zealtechbd.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=zealtechbd.com', NULL, '2022-06-14 23:16:39', '2022-06-14 23:16:39'),
(58, 'Elenamt', 'elenamt@mail.com', 'I\'m lookіng fоr ѕеriоus manǃ..', '88792192767', 'Нellо all, guуsǃ Ι know, mу meѕѕage mау bе tоо sрeсifіс,\r\nВut mу ѕіstеr found niсе mаn herе аnd thеy married, sо hоw about me?! :)\r\nΙ аm 24 уeаrѕ old, Εlеna, from Rоmanіа, Ι knоw English аnd Gеrman lаnguаges alsо\r\nАnd... I hаvе sрeсіfіс diѕeаѕе, namеd nymрhomаniа. Ԝho knоw what іs thіs, can undеrѕtаnd me (bettеr tо ѕаy it immedіаtely)\r\nАh уеѕ, I cооk vеry tаstу! аnd Ι lоve nоt оnlу coоk ;))\r\nΙm rеal gіrl, not рrоstitutе, and lоokіng for ѕeriouѕ and hоt rеlationshіp...\r\nΑnywaу, yоu сan find my profіle here: http://treatoten.cf/user/81718/', NULL, '2022-06-15 20:38:20', '2022-06-15 20:38:20'),
(59, 'Marjorie Ayers', 'nsamuelvale101@yaungshop.com', NULL, '(07) 4538 0482', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://1mdr.short.gy/submityoursite', NULL, '2022-06-19 11:56:40', '2022-06-19 11:56:40'),
(60, 'Harry Williams', 'harrywilliams.tech02@gmail.com', 'Question about your websites', '6207654699', 'Hey,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site, though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results. Would you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIt\'s a relatively simple fix. If this is a priority.\r\n\r\nPlease share your “Mobile Number\" and a suitable time to talk, so I can help you in that.\r\n\r\n\r\nBest Regards\r\nHarry Williams\r\nDigital Marketing Team\r\nCall Us: 1-620-765-4699', NULL, '2022-06-23 00:50:24', '2022-06-23 00:50:24'),
(61, 'Tony Pimentel', 'bchakka111975s@ronell.me', NULL, '760-706-3873', 'Free submission of your new website to over 1000 business directories here https://1mdr.short.gy/submityoursite', NULL, '2022-06-23 16:31:52', '2022-06-23 16:31:52'),
(62, 'CrytoMubMub', 'MerinoBart@o2.pl', 'See how Robot makes $1000 from $1 of investment.', '89034047040', 'The huge income without investments is available, now! https://vom.startupers.se/promo', NULL, '2022-06-26 02:55:00', '2022-06-26 02:55:00'),
(63, 'CrytoMubMub', 'drops07@naver.com', 'We know how to become rich and do you?', '89038707492', 'Need money? Get it here easily? https://vom.startupers.se/gotodate/go', NULL, '2022-06-27 18:02:23', '2022-06-27 18:02:23'),
(64, 'CrytoMubMub', 'thwak@charter.net', 'Invest $1 today to make $1000 tomorrow.', '89030654619', 'Every your dollar can turn into $100 after you lunch this Robot. https://vom.startupers.se/gotodate/go', NULL, '2022-06-27 21:34:57', '2022-06-27 21:34:57'),
(65, 'CrytoMubMub', 'tqdiphv@great-sex-entertainment.com', 'The online job can bring you a fantastic profit.', '89035453255', 'Earn additional money without efforts. https://vom.startupers.se/gotodate/go', NULL, '2022-06-28 00:46:08', '2022-06-28 00:46:08'),
(66, 'CrytoMubMub', 'eyesiso@yahoo.com', 'Have no money? It’s easy to earn them online here.', '89037515512', 'Using this Robot is the best way to make you rich. https://vom.startupers.se/gotodate/go', NULL, '2022-06-28 03:58:24', '2022-06-28 03:58:24'),
(67, 'CrytoMubMub', 'cocobutter96@sbcglobal.net', 'Join the society of successful people who make money here.', '89037653577', 'It is the best time to launch the Robot to get more money. https://vom.startupers.se/gotodate/go', NULL, '2022-06-28 07:32:26', '2022-06-28 07:32:26'),
(68, 'CrytoMubMub', 'cooper.cooper.lon@gmail.com', 'Looking for an easy way to make money? Check out the financial robot.', '89036597183', 'Earn additional money without efforts and skills. https://vom.startupers.se/gotodate/go', NULL, '2022-06-28 10:44:28', '2022-06-28 10:44:28'),
(69, 'CrytoMubMub', 'ristic29@gmail.com', 'Check out the automatic Bot, which works for you 24/7.', '89036248097', 'Need money? Earn it without leaving your home. https://vom.startupers.se/gotodate/go', NULL, '2022-06-28 13:58:01', '2022-06-28 13:58:01'),
(70, 'CrytoMubMub', 'xlittlebubblezx@aol.com', 'No need to work anymore while you have the Robot launched!', '89030655908', 'This robot can bring you money 24/7. https://vom.startupers.se/gotodate/go', NULL, '2022-06-28 17:05:44', '2022-06-28 17:05:44'),
(71, 'CrytoMubMub', 'rocky9331@gmail.com', 'Check out the new financial tool, which can make you rich.', '89037829525', 'Wow! This Robot is a great start for an online career. https://vom.startupers.se/gotodate/go', NULL, '2022-06-28 20:54:16', '2022-06-28 20:54:16'),
(72, 'CrytoMubMub', 'Callie.michelle95@gmail.com', 'Have no financial skills? Let Robot make money for you.', '89033660962', '# 1 financial expert in the net! Check out the new Robot. https://vom.startupers.se/gotodate/go', NULL, '2022-06-29 00:04:51', '2022-06-29 00:04:51'),
(73, 'CrytoMubMub', 'tlg119@hotmail.com', 'The additional income for everyone.', '89039853775', 'Every your dollar can turn into $100 after you lunch this Robot. https://vom.startupers.se/gotodate/go', NULL, '2022-06-29 03:15:02', '2022-06-29 03:15:02'),
(74, 'CrytoMubMub', 'sudip_agarwal@rediffmail.com', 'Find out about the fastest way for a financial independence.', '89037602755', 'Turn $1 into $100 instantly. Use the financial Robot. https://vom.startupers.se/gotodate/go', NULL, '2022-06-29 06:25:16', '2022-06-29 06:25:16'),
(75, 'CrytoMubMub', 'dbinterm@yahoo.com', 'Try out the best financial robot in the Internet.', '89036646281', 'Need money? Get it here easily? https://vom.startupers.se/gotodate/go', NULL, '2022-06-29 09:36:36', '2022-06-29 09:36:36'),
(76, 'CrytoMubMub', 'aylensmith@yahoo.com', 'See how Robot makes $1000 from $1 of investment.', '89036874224', 'No need to worry about the future if your use this financial robot. https://vom.startupers.se/gotodate/go', NULL, '2022-06-29 12:49:17', '2022-06-29 12:49:17'),
(77, 'CrytoMubMub', 'pnwinnubst@hotmail.com', 'Make dollars staying at home and launched this Bot.', '89038937078', 'Need money? Get it here easily? https://vom.startupers.se/gotodate/go', NULL, '2022-06-29 16:07:03', '2022-06-29 16:07:03'),
(78, 'CrytoMub', 'yefxyqnhss@dvkces.com', 'The fastest way to make your wallet thick is found.', '89031153271', 'Financial robot is a great way to manage and increase your income. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-03 10:22:10', '2022-07-03 10:22:10'),
(79, 'CrytoMub', 'josephhenrye@gmail.com', '# 1 financial expert in the net! Check out the new Robot.', '89031187564', 'Every your dollar can turn into $100 after you lunch this Robot. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-03 19:47:56', '2022-07-03 19:47:56'),
(80, 'CrytoMub', 'rudylily@hotmail.com', 'Still not a millionaire? Fix it now!', '89038726655', 'Learn how to make hundreds of backs each day. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-03 22:26:38', '2022-07-03 22:26:38'),
(81, 'CrytoMub', 'pxndxrockerita@hotmail.com', 'The best online investment tool is found. Learn more!', '89037014195', 'Start making thousands of dollars every week just using this robot. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-04 01:03:52', '2022-07-04 01:03:52'),
(82, 'CrytoMub', 'elkaptin.mans@aol.com', 'Try out the automatic robot to keep earning all day long.', '89037002300', 'Making money in the net is easier now. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-04 03:41:09', '2022-07-04 03:41:09'),
(83, 'CrytoMub', 'lansterster@gmail.com', 'Invest $1 today to make $1000 tomorrow.', '89038769203', 'Everyone can earn as much as he wants suing this Bot. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-04 06:20:36', '2022-07-04 06:20:36'),
(84, 'CrytoMub', 'jgptwinz@yahoo.com', 'Looking forward for income? Get it online.', '89036327152', 'The huge income without investments is available. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-04 09:01:49', '2022-07-04 09:01:49'),
(85, 'CrytoMub', 'sarifoter4@hotmail.com', 'Need money? Get it here easily! Just press this to launch the robot.', '89031365065', 'Your money work even when you sleep. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-04 11:43:32', '2022-07-04 11:43:32'),
(86, 'CrytoMub', 'westech2@gmail.com', 'Let your money grow into the capital with this Robot.', '89038542870', 'Looking forward for income? Get it online. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-04 14:22:45', '2022-07-04 14:22:45'),
(87, 'Judy Collier', 'gemooboy.lovej@bucol.net', NULL, '(02) 6783 1715', 'Good job on the new site! Now go ahead and submit it to our free directory here https://1mdr.short.gy/submityoursite', NULL, '2022-07-04 15:54:11', '2022-07-04 15:54:11'),
(88, 'CrytoMub', 'emarion235@rocketmail.com', 'One dollar is nothing, but it can grow into $100 here.', '89038257400', 'Earn additional money without efforts and skills. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-04 16:59:03', '2022-07-04 16:59:03'),
(89, 'CrytoMub', 'suzus01+852@gmail.com', 'Make thousands of bucks. Pay nothing.', '89032539418', '# 1 financial expert in the net! Check out the new Robot. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-04 19:40:16', '2022-07-04 19:40:16'),
(90, 'CrytoMub', 'sjh91910@gmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89035016290', 'Financial Robot is #1 investment tool ever. Launch it! https://vom.dkworld.de/gotodate/go', NULL, '2022-07-04 22:17:33', '2022-07-04 22:17:33'),
(91, 'CrytoMub', 'tlonthedl@yahoo.com', 'We know how to become rich and do you?', '89030430073', 'Let the financial Robot be your companion in the financial market. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-05 00:56:22', '2022-07-05 00:56:22'),
(92, 'CrytoMub', 'krella1@msn.com', 'Online Bot will bring you wealth and satisfaction.', '89039612354', 'Find out about the fastest way for a financial independence. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-05 03:35:36', '2022-07-05 03:35:36'),
(93, 'CrytoMub', 'Gaddisbreyatta@yahoo.com', 'The best online investment tool is found. Learn more!', '89032112693', 'Robot never sleeps. It makes money for you 24/7. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-05 06:17:00', '2022-07-05 06:17:00'),
(94, 'CrytoMub', 'gemdan18@yahoo.com', 'Make thousands of bucks. Pay nothing.', '89037348434', 'Launch the financial Bot now to start earning. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-05 08:51:45', '2022-07-05 08:51:45'),
(95, 'CrytoMub', 'marienorthern50@yahoo.com', 'Make dollars just sitting home.', '89033109481', 'Wow! This is a fastest way for a financial independence. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-05 11:26:53', '2022-07-05 11:26:53'),
(96, 'CrytoMub', 'winnyning@gmail.com', 'Online job can be really effective if you use this Robot.', '89035884094', 'Launch the best investment instrument to start making money today. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-05 14:03:01', '2022-07-05 14:03:01'),
(97, 'CrytoMub', 'Rage311777@aol.com', 'Trust the financial Bot to become rich.', '89032386141', 'Financial robot is the best companion of rich people. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-05 16:40:28', '2022-07-05 16:40:28'),
(98, 'CrytoMub', 'kasalweyasa@yahoo.com', 'Financial robot is your success formula is found. Learn more about it.', '89030683105', 'Provide your family with the money in age. Launch the Robot! https://vom.dkworld.de/gotodate/go', NULL, '2022-07-05 19:16:29', '2022-07-05 19:16:29'),
(99, 'CrytoMub', 'teekia.latise@gmail.com', 'This robot will help you to make hundreds of dollars each day.', '89032148107', 'Earn additional money without efforts and skills. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-05 21:53:39', '2022-07-05 21:53:39'),
(100, 'CrytoMub', 'kimber4me@hotmail.com', 'Financial robot is your success formula is found. Learn more about it.', '89032589642', 'There is no need to look for a job anymore. Work online. https://vom.dkworld.de/gotodate/go', NULL, '2022-07-06 00:31:01', '2022-07-06 00:31:01'),
(101, 'CrytoMub', 'casacn235@gmail.com', 'This robot can bring you money 24/7.', '89030531946', 'The financial Robot is the most effective financial tool in the net! https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-06 03:05:45', '2022-07-06 03:05:45'),
(102, 'CrytoMub', 'realroy123@gmail.com', 'Your money work even when you sleep.', '89037814559', 'Let your money grow into the capital with this Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-06 05:45:54', '2022-07-06 05:45:54'),
(103, 'CrytoMub', 'angelitolatino@hotmail.com', 'Find out about the fastest way for a financial independence.', '89037910325', 'No worries if you are fired. Work online. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-06 08:27:04', '2022-07-06 08:27:04'),
(104, 'CrytoMub', 'mackyou2001@pacbell.net', 'We know how to become rich and do you?', '89039131756', 'No need to stay awake all night long to earn money. Launch the robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-06 11:07:53', '2022-07-06 11:07:53'),
(105, 'CrytoMub', 'christywhite06@gmail.com', 'Everyone can earn as much as he wants now.', '89030334246', 'This robot will help you to make hundreds of dollars each day. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-06 13:44:51', '2022-07-06 13:44:51'),
(106, 'CrytoMub', 'jimmartin47960@comcast.net', 'The financial Robot is your future wealth and independence.', '89035044036', 'Making money is very easy if you use the financial Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-06 16:27:27', '2022-07-06 16:27:27'),
(107, 'CrytoMub', 'karla.watkins@ymail.com', 'The online income is your key to success.', '89031927245', 'Using this Robot is the best way to make you rich. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-06 19:05:19', '2022-07-06 19:05:19'),
(108, 'CrytoMub', 'udohx8@hotmial.com', 'Let the financial Robot be your companion in the financial market.', '89033949795', 'We know how to make our future rich and do you? https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-06 21:47:20', '2022-07-06 21:47:20'),
(109, 'CrytoMub', 'kathiavargas523@yahoo.com', 'Additional income is now available for anyone all around the world.', '89034186470', 'Financial Robot is #1 investment tool ever. Launch it! https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-07 00:30:48', '2022-07-07 00:30:48'),
(110, 'CrytoMub', 'jasminemillar20@gmail.com', 'Check out the automatic Bot, which works for you 24/7.', '89033187556', 'Making money can be extremely easy if you use this Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-07 03:06:03', '2022-07-07 03:06:03'),
(111, 'CrytoMub', 'candycane1348@cs.com', 'Watch your money grow while you invest with the Robot.', '89038777901', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-07 05:48:51', '2022-07-07 05:48:51'),
(112, 'CrytoMub', 'akelam@msn.com', 'The huge income without investments is available, now!', '89038610860', 'We know how to become rich and do you? https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-07 08:25:05', '2022-07-07 08:25:05'),
(113, 'CrytoMub', 'Niteshkamra01@gmail.com', 'Need money? Earn it without leaving your home.', '89034998690', 'Everyone can earn as much as he wants now. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-07 11:02:39', '2022-07-07 11:02:39'),
(114, 'CrytoMub', 'irenevanessa@aol.com', 'The fastest way to make you wallet thick is here.', '89032669532', 'Small investments can bring tons of dollars fast. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-07 22:52:46', '2022-07-07 22:52:46'),
(115, 'CrytoMub', 'mlevrault@yahoo.com', 'The best way for everyone who rushes for financial independence.', '89038614325', 'Make thousands of bucks. Pay nothing. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-08 02:02:30', '2022-07-08 02:02:30'),
(116, 'CrytoMub', 'twatson@unither.com', 'Need money? Get it here easily?', '89037075227', 'Make your computer to be you earning instrument. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-08 05:07:53', '2022-07-08 05:07:53'),
(117, 'CrytoMub', 'bosmith@ncdr.com', 'Financial robot is your success formula is found. Learn more about it.', '89039452959', 'Online job can be really effective if you use this Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-08 08:12:42', '2022-07-08 08:12:42'),
(118, 'CrytoMub', 'AQUILA_WHITAKER@YAHOO.COM', 'Financial robot guarantees everyone stability and income.', '89031373787', 'Your computer can bring you additional income if you use this Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-08 11:16:53', '2022-07-08 11:16:53'),
(119, 'CrytoMub', 'lesliesk@bellsouth.net', 'Thousands of bucks are guaranteed if you use this robot.', '89034195749', 'The huge income without investments is available, now! https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-08 14:22:19', '2022-07-08 14:22:19'),
(120, 'CrytoMub', 'luvcauses@yahoo.com', 'Make yourself rich in future using this financial robot.', '89039760286', 'Attention! Here you can earn money online! https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-08 17:31:13', '2022-07-08 17:31:13'),
(121, 'CrytoMub', 'ntzan@att.net', 'Earn additional money without efforts.', '89031280102', 'Still not a millionaire? The financial robot will make you him! https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-08 20:31:28', '2022-07-08 20:31:28'),
(122, 'CrytoMub', 'cassbry2001@yahoo.com', 'Have no money? It’s easy to earn them online here.', '89032371934', 'We know how to increase your financial stability. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-08 23:30:46', '2022-07-08 23:30:46'),
(123, 'CrytoMub', 'varin81@msn.com', 'No need to work anymore. Just launch the robot.', '89038392480', 'Provide your family with the money in age. Launch the Robot! https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-09 02:28:35', '2022-07-09 02:28:35'),
(124, 'CrytoMub', 'akorostyshevsky@hotmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89039424942', 'We know how to make our future rich and do you? https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-09 05:28:57', '2022-07-09 05:28:57'),
(125, 'CrytoMub', 'poeske_31@msn.com', 'Launch the best investment instrument to start making money today.', '89035632549', 'Earn additional money without efforts. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-09 08:27:48', '2022-07-09 08:27:48'),
(126, 'CrytoMub', 'staceycurci@yahoo.com', 'Have no financial skills? Let Robot make money for you.', '89039484657', 'Even a child knows how to make money. Do you? https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-09 11:24:43', '2022-07-09 11:24:43'),
(127, 'Orville Harry', 'vnatasha.sunaina4@tahugejrot.buzz', NULL, '487 29 894', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://1mdr.short.gy/submityoursite', NULL, '2022-07-09 12:50:17', '2022-07-09 12:50:17'),
(128, 'CrytoMub', 'lizzandile@hotmail.com', 'Make money in the internet using this Bot. It really works!', '89038190267', 'No need to work anymore while you have the Robot launched! https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-09 14:25:10', '2022-07-09 14:25:10'),
(129, 'CrytoMub', 'nb133935@yahoo.com', 'The best way for everyone who rushes for financial independence.', '89035056451', '# 1 financial expert in the net! Check out the new Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-09 17:26:39', '2022-07-09 17:26:39'),
(130, 'CrytoMub', 'rute-vaz@hotmail.com', 'The best online job for retirees. Make your old ages rich.', '89030671291', 'Invest $1 today to make $1000 tomorrow. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-09 20:26:39', '2022-07-09 20:26:39'),
(131, 'CrytoMub', 'beck0500@msn.com', 'Find out about the easiest way of money earning.', '89036807977', 'Check out the automatic Bot, which works for you 24/7. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-09 23:25:28', '2022-07-09 23:25:28'),
(132, 'CrytoMub', 'jwgtwi@yahoo.com', 'Online job can be really effective if you use this Robot.', '89033351697', 'Just one click can turn you dollar into $1000. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-10 02:27:13', '2022-07-10 02:27:13'),
(133, 'CrytoMub', 'jayvillemaire@yahoo.com', 'Most successful people already use Robot. Do you?', '89036001230', 'Earn additional money without efforts and skills. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-10 05:28:48', '2022-07-10 05:28:48'),
(134, 'CrytoMub', 'yahni97@yahoo.com', 'Making money in the net is easier now.', '89032511197', 'Launch the financial Robot and do your business. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-10 08:26:37', '2022-07-10 08:26:37'),
(135, 'CrytoMub', 'ayehya_07@yahoo.com', 'Make thousands every week working online here.', '89039242515', 'Have no money? It’s easy to earn them online here. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-10 11:49:43', '2022-07-10 11:49:43'),
(136, 'CrytoMub', 'kerriryder70@verizon.net', 'The best way for everyone who rushes for financial independence.', '89039968620', 'Have no money? It’s easy to earn them online here. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-10 14:50:26', '2022-07-10 14:50:26'),
(137, 'CrytoMub', 'marcelo_mena@hotmail.com', 'Rich people are rich because they use this robot.', '89039391580', 'Make money 24/7 without any efforts and skills. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-10 17:54:04', '2022-07-10 17:54:04'),
(138, 'CrytoMub', 'jpcntgv@hotmails.com', 'Earning $1000 a day is easy if you use this financial Robot.', '89038988603', 'The online income is your key to success. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-10 20:53:22', '2022-07-10 20:53:22'),
(139, 'CrytoMub', 'laboredgroup6ai33o@outlook.com', 'Financial robot is the best companion of rich people.', '89037024043', 'Have no financial skills? Let Robot make money for you. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-10 23:51:48', '2022-07-10 23:51:48'),
(140, 'CrytoMub', 'treshawnlinne@yahoo.com', 'The online income is the easiest ways to make you dream come true.', '89032506035', 'Need money? Earn it without leaving your home. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-11 03:17:18', '2022-07-11 03:17:18'),
(141, 'CrytoMub', 'aned@aol.com', 'Check out the new financial tool, which can make you rich.', '89034543232', 'The financial Robot is your future wealth and independence. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-11 06:16:08', '2022-07-11 06:16:08'),
(142, 'CrytoMub', 'shnoobi@hotmail.com', 'We have found the fastest way to be rich. Find it out here.', '89032602007', 'Your computer can bring you additional income if you use this Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-11 09:16:22', '2022-07-11 09:16:22'),
(143, 'CrytoMub', 'tpearlgo22@gmail.com', 'No worries if you are fired. Work online.', '89030343440', 'Making money is very easy if you use the financial Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-11 12:18:15', '2022-07-11 12:18:15'),
(144, 'CrytoMub', 'willyard72@yahoo.com', 'Make money in the internet using this Bot. It really works!', '89031610946', 'Earning money in the Internet is easy if you use Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-11 15:22:59', '2022-07-11 15:22:59'),
(145, 'CrytoMub', 'dudemcallister@yahoo.com', '# 1 financial expert in the net! Check out the new Robot.', '89039067435', 'Thousands of bucks are guaranteed if you use this robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-11 18:22:42', '2022-07-11 18:22:42'),
(146, 'CrytoMub', 'qljgtklsjt@qxfcsa.com', 'Even a child knows how to make money. Do you?', '89031636712', 'Financial robot is the best companion of rich people. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-11 21:23:29', '2022-07-11 21:23:29'),
(147, 'CrytoMub', 'cchoan@gmail.com', 'We know how to become rich and do you?', '89036540541', 'Feel free to buy everything you want with the additional income. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-12 00:25:52', '2022-07-12 00:25:52'),
(148, 'CrytoMub', 'meilynjperez@gmail.com', 'Your money work even when you sleep.', '89039684743', 'The fastest way to make you wallet thick is here. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-12 03:28:38', '2022-07-12 03:28:38'),
(149, 'CrytoMub', 'chelsie907@yahoo.com', 'The online income is the easiest ways to make you dream come true.', '89032799001', 'Make dollars staying at home and launched this Bot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-12 06:35:01', '2022-07-12 06:35:01'),
(150, 'CrytoMub', 'dstout4@yahoo.com', 'Join the society of successful people who make money here.', '89039135693', 'Start making thousands of dollars every week just using this robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-12 09:35:27', '2022-07-12 09:35:27'),
(151, 'CrytoMub', 'mayannjoy20@yahoo.com', 'The online income is the easiest ways to make you dream come true.', '89030610837', 'The online job can bring you a fantastic profit. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-12 12:35:08', '2022-07-12 12:35:08'),
(152, 'CrytoMub', 'rmadan.1961@gmail.com', 'Let the financial Robot be your companion in the financial market.', '89039104324', 'Make thousands every week working online here. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-12 15:39:02', '2022-07-12 15:39:02'),
(153, 'CrytoMub', 'elses22@yahoo.com', 'Make thousands of bucks. Pay nothing.', '89033714856', 'Make your laptop a financial instrument with this program. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-12 18:48:14', '2022-07-12 18:48:14'),
(154, 'CrytoMub', 'pzanas@yahoo.com', 'Launch the financial Robot and do your business.', '89031525305', 'Invest $1 today to make $1000 tomorrow. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-12 21:53:03', '2022-07-12 21:53:03'),
(155, 'CrytoMub', 'rose1234581@hotmail.com', 'Make your computer to be you earning instrument.', '89032601937', 'Earning $1000 a day is easy if you use this financial Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-13 01:00:15', '2022-07-13 01:00:15'),
(156, 'CrytoMub', 'cindysweetness@hotmail.com', 'Even a child knows how to make $100 today.', '89039857204', 'Trust your dollar to the Robot and see how it grows to $100. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-13 04:04:55', '2022-07-13 04:04:55'),
(157, 'CrytoMub', 'Itzangel304@aol.com', 'The huge income without investments is available, now!', '89039255299', 'We know how to make our future rich and do you? https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-13 07:08:10', '2022-07-13 07:08:10');
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(158, 'CrytoMub', 'david_mccarnan2000@yahoo.com', 'Attention! Financial robot may bring you millions!', '89032095797', 'Start your online work using the financial Robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-13 10:10:02', '2022-07-13 10:10:02'),
(159, 'CrytoMub', 'lonzo1760@h0tmail.com', 'Rich people are rich because they use this robot.', '89038272369', 'Learn how to make hundreds of backs each day. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-13 13:10:47', '2022-07-13 13:10:47'),
(160, 'CrytoMub', 'millerjane40@yahoo.com', 'Let the financial Robot be your companion in the financial market.', '89034733906', 'Make money in the internet using this Bot. It really works! https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-13 16:13:16', '2022-07-13 16:13:16'),
(161, 'CrytoMub', 'requita_willis@yahoo.com', 'Make money 24/7 without any efforts and skills.', '89032077332', 'Need money? Get it here easily! Just press this to launch the robot. https://vom.seamonkey.es/gotodate/go', NULL, '2022-07-13 19:12:52', '2022-07-13 19:12:52'),
(162, 'CrytoMub', 'kmdv@comcast.net', 'Launch the robot and let it bring you money.', '89039119217', 'Feel free to buy everything you want with the additional income. https://vom.startupers.se/gotodate/go', NULL, '2022-07-13 22:14:35', '2022-07-13 22:14:35'),
(163, 'CrytoMub', 'astraziota410@aol.com', 'Making money can be extremely easy if you use this Robot.', '89038081791', 'Start making thousands of dollars every week. https://vom.startupers.se/gotodate/go', NULL, '2022-07-14 01:14:51', '2022-07-14 01:14:51'),
(164, 'CrytoMub', 'redboiy2008@yahoo.com', 'The best online job for retirees. Make your old ages rich.', '89035174597', 'The fastest way to make you wallet thick is here. https://vom.startupers.se/gotodate/go', NULL, '2022-07-14 04:16:53', '2022-07-14 04:16:53'),
(165, 'CrytoMub', 'kandiscott@comcast.net', 'Earning $1000 a day is easy if you use this financial Robot.', '89033603934', 'Find out about the easiest way of money earning. https://vom.startupers.se/gotodate/go', NULL, '2022-07-14 07:19:27', '2022-07-14 07:19:27'),
(166, 'CrytoMub', 'pnprettybenz@yahoo.com', 'Online job can be really effective if you use this Robot.', '89037345214', 'Check out the new financial tool, which can make you rich. https://vom.startupers.se/gotodate/go', NULL, '2022-07-14 10:23:59', '2022-07-14 10:23:59'),
(167, 'CrytoMub', 'germx1011@yahoo.com', 'Need money? Get it here easily! Just press this to launch the robot.', '89032012094', 'Trust your dollar to the Robot and see how it grows to $100. https://vom.startupers.se/gotodate/go', NULL, '2022-07-14 13:28:58', '2022-07-14 13:28:58'),
(168, 'Yazemotape', 'mitaxebandilis@gmail.com', 'Заработок с телефона!', '83837781512', 'Заработок с телефона! \r\nЛегкий способ заработка доступен каждому https://nebukavse.blogspot.hk  zealtechbd.com', NULL, '2022-07-14 15:32:37', '2022-07-14 15:32:37'),
(169, 'Cleveland Burnham', '5hoss@gmailup.com', NULL, '(03) 5355 0243', 'Give your new site a boost, submit your site now to our free directory and start getting more clients https://1mdr.short.gy/submityoursite', NULL, '2022-07-14 16:16:14', '2022-07-14 16:16:14'),
(170, 'CrytoMub', 'molly_molencamp@yahoo.com', 'Feel free to buy everything you want with the additional income.', '89035176768', 'Make money, not war! Financial Robot is what you need. https://vom.startupers.se/gotodate/go', NULL, '2022-07-14 16:25:28', '2022-07-14 16:25:28'),
(171, 'CrytoMub', 'saharaugustine@yahoo.com', 'No need to work anymore. Just launch the robot.', '89032141077', 'Try out the best financial robot in the Internet. https://vom.startupers.se/gotodate/go', NULL, '2022-07-14 19:25:11', '2022-07-14 19:25:11'),
(172, 'CrytoMub', 'brown_n_proud_mex@yahoo.com', 'Additional income is now available for anyone all around the world.', '89030466149', 'Make thousands every week working online here. https://vom.startupers.se/gotodate/go', NULL, '2022-07-14 22:23:29', '2022-07-14 22:23:29'),
(173, 'CrytoMub', 'trungngoctran89@gmail.com', 'Your money work even when you sleep.', '89033439654', 'Make money online, staying at home this cold winter. https://vom.startupers.se/gotodate/go', NULL, '2022-07-15 01:19:50', '2022-07-15 01:19:50'),
(174, 'CrytoMub', 'aaronfletcher013@yahoo.com', 'Online earnings are the easiest way for financial independence.', '89034941507', 'Robot is the best way for everyone who looks for financial independence. https://vom.startupers.se/gotodate/go', NULL, '2022-07-15 04:19:58', '2022-07-15 04:19:58'),
(175, 'CrytoMub', 'matta@zmonline.com', 'The fastest way to make you wallet thick is here.', '89039627960', 'No need to work anymore while you have the Robot launched! https://vom.startupers.se/gotodate/go', NULL, '2022-07-15 07:17:56', '2022-07-15 07:17:56'),
(176, 'CrytoMub', 'jom_guidotti@yahoo.com', 'Using this Robot is the best way to make you rich.', '89035767818', 'No worries if you are fired. Work online. https://vom.startupers.se/gotodate/go', NULL, '2022-07-15 10:16:57', '2022-07-15 10:16:57'),
(177, 'CrytoMub', 'harriagnel@aol.com', 'Learn how to make hundreds of backs each day.', '89038974170', 'Just one click can turn you dollar into $1000. https://vom.startupers.se/gotodate/go', NULL, '2022-07-15 13:15:26', '2022-07-15 13:15:26'),
(178, 'CrytoMub', 'hiru_marius995@yahoo.com', 'Making money can be extremely easy if you use this Robot.', '89030108364', 'Financial robot is your success formula is found. Learn more about it. https://vom.startupers.se/gotodate/go', NULL, '2022-07-15 16:14:55', '2022-07-15 16:14:55'),
(179, 'CrytoMub', 'ravibothra1@gmail.com', 'Online earnings are the easiest way for financial independence.', '89035425859', 'Making money can be extremely easy if you use this Robot. https://vom.startupers.se/gotodate/go', NULL, '2022-07-15 19:16:01', '2022-07-15 19:16:01'),
(180, 'CrytoMub', 'DOUG@360FINANCIAL.COM', 'We know how to become rich and do you?', '89034063162', 'No need to work anymore. Just launch the robot. https://vom.startupers.se/gotodate/go', NULL, '2022-07-15 22:15:04', '2022-07-15 22:15:04'),
(181, 'CrytoMub', 'robbiecalifornia@yahoo.com', 'Making money can be extremely easy if you use this Robot.', '89030200313', 'Every your dollar can turn into $100 after you lunch this Robot. https://vom.startupers.se/gotodate/go', NULL, '2022-07-16 01:15:27', '2022-07-16 01:15:27'),
(182, 'CrytoMub', 'kromanuski@gmail.com', 'Need money? Get it here easily?', '89030536164', 'Looking for additional money? Try out the best financial instrument. https://vom.startupers.se/gotodate/go', NULL, '2022-07-16 04:14:58', '2022-07-16 04:14:58'),
(183, 'CrytoMub', 'Maritza.perez25@yahoo.com', 'Financial independence is what everyone needs.', '89038890062', 'Learn how to make hundreds of backs each day. https://vom.startupers.se/gotodate/go', NULL, '2022-07-16 07:12:13', '2022-07-16 07:12:13'),
(184, 'CrytoMub', 'tabikan@hotmail.com', 'No need to work anymore while you have the Robot launched!', '89034116307', 'Invest $1 today to make $1000 tomorrow. https://vom.startupers.se/gotodate/go', NULL, '2022-07-16 10:11:34', '2022-07-16 10:11:34'),
(185, 'CrytoMub', 'natrayannandini25@gmail.com', 'Let the financial Robot be your companion in the financial market.', '89037683459', 'It is the best time to launch the Robot to get more money. https://vom.startupers.se/gotodate/go', NULL, '2022-07-16 13:09:58', '2022-07-16 13:09:58'),
(186, 'CrytoMub', 'lilricketp@yahoo.com', 'Turn $1 into $100 instantly. Use the financial Robot.', '89031873799', 'This robot can bring you money 24/7. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-16 16:11:35', '2022-07-16 16:11:35'),
(187, 'CrytoMub', 'tmmitchell21@gmail.com', 'It is the best time to launch the Robot to get more money.', '89035793399', 'Let the Robot bring you money while you rest. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-16 19:08:31', '2022-07-16 19:08:31'),
(188, 'CrytoMub', 'crazeeguy18@yahoo.com', 'Make thousands every week working online here.', '89035082193', 'The online income is your key to success. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-16 22:07:50', '2022-07-16 22:07:50'),
(189, 'CrytoMub', 'shiori95@hotmail.com', 'Your money work even when you sleep.', '89038107776', 'Everyone can earn as much as he wants suing this Bot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-17 01:08:23', '2022-07-17 01:08:23'),
(190, 'CrytoMub', 'tbook@ruraltel.net', 'Still not a millionaire? Fix it now!', '89038158958', 'Need money? Get it here easily! Just press this to launch the robot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-17 04:09:05', '2022-07-17 04:09:05'),
(191, 'CrytoMub', 'amr_abbas_75@yahoo.com', 'Looking for additional money? Try out the best financial instrument.', '89033825820', 'Have no money? Earn it online. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-17 07:09:25', '2022-07-17 07:09:25'),
(192, 'CrytoMub', 'mrgoofy325@aol.com', 'Need some more money? Robot will earn them really fast.', '89031361515', 'There is no need to look for a job anymore. Work online. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-17 10:06:14', '2022-07-17 10:06:14'),
(193, 'CrytoMub', 'mariepcasey@yahoo.com', 'Making money in the net is easier now.', '89032076277', 'We know how to become rich and do you? https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-17 13:03:18', '2022-07-17 13:03:18'),
(194, 'CrytoMub', 'r3823543@yahoo.com', 'Additional income is now available for anyone all around the world.', '89038158424', 'Launch the financial Robot and do your business. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-17 16:01:22', '2022-07-17 16:01:22'),
(195, 'CrytoMub', 'tmywhz3@cnrgdr.com', 'Looking forward for income? Get it online.', '89030056608', 'The financial Robot is your # 1 expert of making money. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-17 18:59:05', '2022-07-17 18:59:05'),
(196, 'CrytoMub', 'shivamairways@sify.com', 'Make your laptop a financial instrument with this program.', '89039737691', 'Wow! This Robot is a great start for an online career. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-17 21:53:39', '2022-07-17 21:53:39'),
(197, 'CrytoMub', 'swtp_414@yahoo.com', 'Earning money in the Internet is easy if you use Robot.', '89031780996', 'The financial Robot is your # 1 expert of making money. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-18 00:49:56', '2022-07-18 00:49:56'),
(198, 'CrytoMub', 'kmoto209@yahoo.com', 'No need to stay awake all night long to earn money. Launch the robot.', '89035493608', 'Only one click can grow up your money really fast. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-18 03:49:32', '2022-07-18 03:49:32'),
(199, 'CrytoMub', 'bigmutt@comcast.net', 'Feel free to buy everything you want with the additional income.', '89039247878', 'Making money is very easy if you use the financial Robot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-18 06:46:38', '2022-07-18 06:46:38'),
(200, 'CrytoMub', 'idrissa_l@yahoo.com', 'We know how to become rich and do you?', '89031413880', 'Try out the best financial robot in the Internet. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-18 09:48:11', '2022-07-18 09:48:11'),
(201, 'CrytoMub', 'fo.rf.ourfa.ith@gmail.com', 'Make your money work for you all day long.', '89035222074', 'Start making thousands of dollars every week just using this robot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-18 12:46:52', '2022-07-18 12:46:52'),
(202, 'CrytoMub', 'yzd0157@sohu.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89030460412', 'Financial independence is what everyone needs. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-18 15:44:46', '2022-07-18 15:44:46'),
(203, 'CrytoMub', 'Kekereal@yahoo.com', 'No need to worry about the future if your use this financial robot.', '89032303917', 'Financial Robot is #1 investment tool ever. Launch it! https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-18 18:44:22', '2022-07-18 18:44:22'),
(204, 'CrytoMub', 'longchamp0910@gmail.com', 'Earning $1000 a day is easy if you use this financial Robot.', '89039962572', 'Make thousands every week working online here. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-18 21:50:42', '2022-07-18 21:50:42'),
(205, 'CrytoMub', 'willyoughn@yahoo.com', 'Financial robot is the best companion of rich people.', '89035105434', 'Make dollars staying at home and launched this Bot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-19 00:48:01', '2022-07-19 00:48:01'),
(206, 'CrytoMub', 'norma_rvs@yahoo.com', 'Earn additional money without efforts.', '89035898247', 'Earning $1000 a day is easy if you use this financial Robot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-19 03:46:43', '2022-07-19 03:46:43'),
(207, 'CrytoMub', 'bryanbrown99@mac.com', 'Rich people are rich because they use this robot.', '89033184952', 'Make yourself rich in future using this financial robot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-19 06:48:12', '2022-07-19 06:48:12'),
(208, 'Raina Cade', 'contact@besttimes.buzz', 'Love the site!', '24-32-68-38', 'I forget what I was searching for but I stumbled upon your site and loved it! Something about the content and layout that I felt compelled to give you some positive feedback. Anyway keep up the great work and have a pleasant day. 03sM5j_L0d7D', NULL, '2022-07-19 09:41:36', '2022-07-19 09:41:36'),
(209, 'CrytoMub', 'azmi_masyida@yahoo.com', 'Check out the automatic Bot, which works for you 24/7.', '89037699635', 'Financial robot is a great way to manage and increase your income. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-19 09:47:59', '2022-07-19 09:47:59'),
(210, 'CrytoMub', 'BERNADETTEKEARSON@SBCGLOBAL.NET', 'Make yourself rich in future using this financial robot.', '89037074885', 'Online job can be really effective if you use this Robot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-19 12:48:43', '2022-07-19 12:48:43'),
(211, 'CrytoMub', 'townleynetworksolutions@gmail.com', 'Financial robot guarantees everyone stability and income.', '89033719888', 'Check out the new financial tool, which can make you rich. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-19 15:47:17', '2022-07-19 15:47:17'),
(212, 'CrytoMub', 'heather.witbeck@bvsd.org', 'Invest $1 today to make $1000 tomorrow.', '89037924441', 'Attention! Here you can earn money online! https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-20 00:47:56', '2022-07-20 00:47:56'),
(213, 'CrytoMub', 'nikkihill33@gmail.com', 'Financial robot is the best companion of rich people.', '89034185178', 'Everyone can earn as much as he wants suing this Bot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-20 06:44:23', '2022-07-20 06:44:23'),
(214, 'CrytoMub', 'rholland018@gmail.com', 'Trust your dollar to the Robot and see how it grows to $100.', '89032311231', 'Let your money grow into the capital with this Robot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-20 15:48:40', '2022-07-20 15:48:40'),
(215, 'CrytoMub', 'casualdata@gmail.com', 'Make thousands every week working online here.', '89039575728', 'Let the financial Robot be your companion in the financial market. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-20 22:07:22', '2022-07-20 22:07:22'),
(216, 'CrytoMub', 'erinkay0905@gmail.com', 'Financial independence is what this robot guarantees.', '89030714918', 'Make money, not war! Financial Robot is what you need. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-21 01:13:28', '2022-07-21 01:13:28'),
(217, 'CrytoMub', 'blenangellove@yahoo.com', 'Automatic robot is the best start for financial independence.', '89034043634', 'The online job can bring you a fantastic profit. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-21 04:15:29', '2022-07-21 04:15:29'),
(218, 'Eric Jones', 'ericjonesmyemail@gmail.com', 'Your site – more leads?', '555-555-1212', 'Hey, this is Eric and I ran across zealtechbd.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=zealtechbd.com', NULL, '2022-07-21 05:31:22', '2022-07-21 05:31:22'),
(219, 'CrytoMub', 'tiffanyr1@cox.net', 'Learn how to make hundreds of backs each day.', '89038184801', 'Online earnings are the easiest way for financial independence. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-21 09:01:25', '2022-07-21 09:01:25'),
(220, 'CrytoMub', 'brookdavis100@yahoo.com', 'Financial Robot is #1 investment tool ever. Launch it!', '89030177265', 'Online job can be really effective if you use this Robot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-21 13:49:03', '2022-07-21 13:49:03'),
(221, 'CrytoMub', 'peyton50@bellsouth.net', 'The additional income is available for everyone using this robot.', '89036350064', 'Start making thousands of dollars every week. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-21 19:01:47', '2022-07-21 19:01:47'),
(222, 'CrytoMub', 'sobolevi@yahoo.com', 'Just one click can turn you dollar into $1000.', '89034514668', 'Making money can be extremely easy if you use this Robot. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-21 23:44:14', '2022-07-21 23:44:14'),
(223, 'CrytoMub', 'sydtephehintwymowan@hotmail.com', 'No need to work anymore while you have the Robot launched!', '89035676613', 'Financial robot is the best companion of rich people. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-22 04:27:41', '2022-07-22 04:27:41'),
(224, 'CrytoMub', 'fl.o.od.z.y.v.a@gmail.com', 'Even a child knows how to make money. This robot is what you need!', '89035959098', 'Launch the robot and let it bring you money. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-22 09:29:26', '2022-07-22 09:29:26'),
(225, 'CrytoMub', 'kiaragrunt@hardingpost.com', 'The online financial Robot is your key to success.', '89030510475', 'No worries if you are fired. Work online. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-22 14:18:57', '2022-07-22 14:18:57'),
(226, 'CrytoMub', 'williford@prodigy.net', 'Need cash? Launch this robot and see what it can.', '89038921949', 'Trust the financial Bot to become rich. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-22 19:09:58', '2022-07-22 19:09:58'),
(227, 'CrytoMub', 'testoriaslit@aol.com', 'See how Robot makes $1000 from $1 of investment.', '89036253709', 'Financial robot keeps bringing you money while you sleep. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-22 23:55:49', '2022-07-22 23:55:49'),
(228, 'CrytoMub', 'blaygon@gmail.com', 'This robot will help you to make hundreds of dollars each day.', '89036759789', 'Let the financial Robot be your companion in the financial market. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-23 04:44:12', '2022-07-23 04:44:12'),
(229, 'CrytoMub', 'renzobartman@hotmail.com', 'Online earnings are the easiest way for financial independence.', '89034704310', 'Additional income is now available for anyone all around the world. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-23 14:21:14', '2022-07-23 14:21:14'),
(230, 'CrytoMub', 'yamasoldier@yahoo.com', 'Attention! Financial robot may bring you millions!', '89037759949', 'Financial robot is a great way to manage and increase your income. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-23 19:06:31', '2022-07-23 19:06:31'),
(231, 'CrytoMub', 'rankinerica353@yahoo.com', 'Turn $1 into $100 instantly. Use the financial Robot.', '89038883804', 'Your money work even when you sleep. https://vom.elletvweb.it/gotodate/go', NULL, '2022-07-24 00:00:27', '2022-07-24 00:00:27'),
(232, 'CrytoMub', 'snagaraddi@gmail.com', 'Watch your money grow while you invest with the Robot.', '89030033811', 'We know how to make our future rich and do you? https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-26 04:50:58', '2022-07-26 04:50:58'),
(233, 'CrytoMub', 'miguelkobe@yahoo.com', 'Need money? Earn it without leaving your home.', '89032056024', 'We have found the fastest way to be rich. Find it out here. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-26 09:39:57', '2022-07-26 09:39:57'),
(234, 'CrytoMub', 'lashawnhol@gmail.com', 'Even a child knows how to make $100 today.', '89038903102', '# 1 financial expert in the net! Check out the new Robot. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-26 14:34:17', '2022-07-26 14:34:17'),
(235, 'CrytoMub', 'waddington49@googlemail.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89034898983', 'This robot will help you to make hundreds of dollars each day. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-26 19:15:34', '2022-07-26 19:15:34'),
(236, 'CrytoMub', 'jose917@att.net', 'Earning money in the Internet is easy if you use Robot.', '89030829180', 'Find out about the fastest way for a financial independence. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-27 00:00:17', '2022-07-27 00:00:17'),
(237, 'CrytoMub', 'sjmcrae81@yahoo.com', 'Making money is very easy if you use the financial Robot.', '89031645362', 'Online earnings are the easiest way for financial independence. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-27 04:49:08', '2022-07-27 04:49:08'),
(238, 'CrytoMub', 'hayeslillian1946@yahoo.com', 'Wow! This Robot is a great start for an online career.', '89038762872', 'Make thousands of bucks. Pay nothing. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-27 14:16:56', '2022-07-27 14:16:56'),
(239, 'CrytoMub', 'motherbro@aol.com', 'Check out the automatic Bot, which works for you 24/7.', '89031832567', 'Robot never sleeps. It makes money for you 24/7. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-27 19:03:33', '2022-07-27 19:03:33'),
(240, 'CrytoMub', 'gfclarke@hotmail.com', 'The financial Robot is your # 1 expert of making money.', '89038937171', 'Everyone can earn as much as he wants now. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-27 23:50:54', '2022-07-27 23:50:54'),
(241, 'CrytoMub', 'mandigum@gmail.com', 'Learn how to make hundreds of backs each day.', '89030476970', 'We know how to make our future rich and do you? https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-28 04:53:06', '2022-07-28 04:53:06'),
(242, 'CrytoMub', 'didig972@hotmail.com', 'Make money, not war! Financial Robot is what you need.', '89035192823', 'This robot can bring you money 24/7. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-28 09:40:30', '2022-07-28 09:40:30'),
(243, 'CrytoMub', 'travislng@yahoo.com', 'Even a child knows how to make $100 today.', '89031701698', 'Make yourself rich in future using this financial robot. https://vom.frostyelk.se/gotodate/go', NULL, '2022-07-28 14:28:04', '2022-07-28 14:28:04'),
(244, 'CrytoMub', 'alexandercisu@yahoo.com', 'Need money? Get it here easily! Just press this to launch the robot.', '89038454205', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://vom.pumpati.de/vom', NULL, '2022-07-28 18:14:03', '2022-07-28 18:14:03'),
(245, 'CrytoMub', 'tc.woolsey@cox.net', 'The additional income is available for everyone using this robot.', '89030009726', 'Need money? Get it here easily! Just press this to launch the robot. https://vom.pumpati.de/vom', NULL, '2022-07-28 21:19:02', '2022-07-28 21:19:02'),
(246, 'CrytoMub', 'kaydnmadyn@yahoo.com', 'The financial Robot is your # 1 expert of making money.', '89031060205', 'Need cash? Launch this robot and see what it can. https://vom.pumpati.de/vom', NULL, '2022-07-29 00:20:18', '2022-07-29 00:20:18'),
(247, 'CrytoMub', 'keyboard_mentality@yahoo.com', 'Make your computer to be you earning instrument.', '89033342183', 'Turn $1 into $100 instantly. Use the financial Robot. https://vom.pumpati.de/vom', NULL, '2022-07-29 03:19:14', '2022-07-29 03:19:14'),
(248, 'CrytoMub', 'LiamRK2@gmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89035964179', 'The online financial Robot is your key to success. https://vom.pumpati.de/vom', NULL, '2022-07-29 06:23:02', '2022-07-29 06:23:02'),
(249, 'CrytoMub', 'casdf_999@hotmail.com', 'Wow! This Robot is a great start for an online career.', '89030500733', 'Small investments can bring tons of dollars fast. https://vom.pumpati.de/vom', NULL, '2022-07-29 09:25:09', '2022-07-29 09:25:09'),
(250, 'CrytoMub', 'carriecampos@hotmail.com', 'Launch the financial Robot and do your business.', '89031927738', 'The financial Robot works for you even when you sleep. https://vom.pumpati.de/vom', NULL, '2022-07-29 12:25:17', '2022-07-29 12:25:17'),
(251, 'CrytoMub', 'andreanine@rocketmail.com', 'Rich people are rich because they use this robot.', '89032398051', 'Let your money grow into the capital with this Robot. https://vom.pumpati.de/vom', NULL, '2022-07-29 15:26:55', '2022-07-29 15:26:55'),
(252, 'CrytoMub', 'mynameisxochil@gmail.com', 'Earning $1000 a day is easy if you use this financial Robot.', '89039005754', 'Financial robot is a great way to manage and increase your income. https://vom.pumpati.de/vom', NULL, '2022-07-29 18:29:03', '2022-07-29 18:29:03'),
(253, 'CrytoMub', 'candasejade@yahoo.com', 'Only one click can grow up your money really fast.', '89030155663', 'Need some more money? Robot will earn them really fast. https://vom.pumpati.de/vom', NULL, '2022-07-29 21:30:43', '2022-07-29 21:30:43'),
(254, 'CrytoMub', 'rafa6433@gmail.com', 'The financial Robot is your future wealth and independence.', '89030592307', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://vom.pumpati.de/vom', NULL, '2022-07-30 03:38:24', '2022-07-30 03:38:24'),
(255, 'CrytoMub', 'markmaryjo@comcast.net', 'Everyone who needs money should try this Robot out.', '89032807664', 'Launch the robot and let it bring you money. https://vom.pumpati.de/vom', NULL, '2022-07-30 06:40:51', '2022-07-30 06:40:51'),
(256, 'CrytoMub', 'Hdbasketball404_marg@yahoo.com', 'Join the society of successful people who make money here.', '89037089634', 'Everyone who needs money should try this Robot out. https://vom.pumpati.de/vom', NULL, '2022-07-30 09:50:32', '2022-07-30 09:50:32'),
(257, 'CrytoMub', 'LoriMolnar@aol.com', 'Still not a millionaire? Fix it now!', '89034151138', 'Provide your family with the money in age. Launch the Robot! https://vom.pumpati.de/vom', NULL, '2022-07-30 12:53:56', '2022-07-30 12:53:56'),
(258, 'CrytoMub', 'timmydavies19@yahoo.com', 'Most successful people already use Robot. Do you?', '89034835893', 'Learn how to make hundreds of backs each day. https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-30 15:59:43', '2022-07-30 15:59:43'),
(259, 'CrytoMub', 'sarkanyda@gmail.com', 'Launch the robot and let it bring you money.', '89031037586', 'Looking for an easy way to make money? Check out the financial robot. https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-30 18:59:54', '2022-07-30 18:59:54'),
(260, 'CrytoMub', 'pflood7@gmail.com', 'Your money work even when you sleep.', '89030209624', 'Provide your family with the money in age. Launch the Robot! https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-30 21:59:28', '2022-07-30 21:59:28'),
(261, 'CrytoMub', 'badboysanchez1@yahoo.com', 'Make thousands every week working online here.', '89031034296', 'Online earnings are the easiest way for financial independence. https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-31 00:57:27', '2022-07-31 00:57:27'),
(262, 'CrytoMub', 'zeeksoto@gmail.com', 'Make your laptop a financial instrument with this program.', '89038550200', 'This robot will help you to make hundreds of dollars each day. https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-31 07:04:42', '2022-07-31 07:04:42'),
(263, 'CrytoMub', 's.s409_@hotmail.com', 'Let the financial Robot be your companion in the financial market.', '89033527933', 'Buy everything you want earning money online. https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-31 10:04:37', '2022-07-31 10:04:37'),
(264, 'CrytoMub', 'tfaires66@netscape.net', 'Feel free to buy everything you want with the additional income.', '89034903416', 'Make money in the internet using this Bot. It really works! https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-31 13:09:23', '2022-07-31 13:09:23'),
(265, 'CrytoMub', 'dunlap_k1492@yahoo.com', 'Make money, not war! Financial Robot is what you need.', '89038142607', 'No need to worry about the future if your use this financial robot. https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-31 16:11:45', '2022-07-31 16:11:45'),
(266, 'CrytoMub', 'abbechristopher@yahoo.com', 'Looking forward for income? Get it online.', '89034190113', 'Find out about the easiest way of money earning. https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-31 19:15:16', '2022-07-31 19:15:16'),
(267, 'CrytoMub', 'ndlove_123@yahoo.com', 'The best way for everyone who rushes for financial independence.', '89033812621', 'Financial independence is what everyone needs. https://vom.qbe-medienhaus.de/vom', NULL, '2022-07-31 22:17:30', '2022-07-31 22:17:30'),
(268, 'CrytoMub', 'rockmentary@hotmail.com', 'Even a child knows how to make money. Do you?', '89035116169', 'Buy everything you want earning money online. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-01 01:22:15', '2022-08-01 01:22:15'),
(269, 'CrytoMub', 'thetylers42@sbcglobal.net', 'Everyone who needs money should try this Robot out.', '89038005647', 'Let the financial Robot be your companion in the financial market. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-01 04:24:43', '2022-08-01 04:24:43'),
(270, 'CrytoMub', 'velitamia@hotmail.com', 'Launch the robot and let it bring you money.', '89034641822', 'Find out about the easiest way of money earning. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-01 07:26:37', '2022-08-01 07:26:37'),
(271, 'CrytoMub', 'kjhduiwehf@gmail.com', 'Everyone can earn as much as he wants now.', '89030418344', 'Check out the newest way to make a fantastic profit. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-01 10:24:10', '2022-08-01 10:24:10'),
(272, 'CrytoMub', 'onestuffybunny@sbcglobal.net', 'Make money in the internet using this Bot. It really works!', '89037577324', 'Wow! This is a fastest way for a financial independence. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-01 13:24:19', '2022-08-01 13:24:19'),
(273, 'CrytoMub', 'graghu.kiran@gmail.com', 'Have no money? It’s easy to earn them online here.', '89036800042', 'Earn additional money without efforts. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-01 16:26:27', '2022-08-01 16:26:27'),
(274, 'CrytoMub', 'karimovamaya@hotmail.com', 'Thousands of bucks are guaranteed if you use this robot.', '89032459943', 'Making money in the net is easier now. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-01 19:50:43', '2022-08-01 19:50:43'),
(275, 'CrytoMub', 'trinaquilts@yahoo.com', 'Even a child knows how to make $100 today with the help of this robot.', '89032200320', 'The additional income is available for everyone using this robot. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-01 22:50:36', '2022-08-01 22:50:36'),
(276, 'CrytoMub', 'bb_blum@hotmail.com', 'Attention! Financial robot may bring you millions!', '89038074483', 'Make dollars staying at home and launched this Bot. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-02 01:52:03', '2022-08-02 01:52:03'),
(277, 'CrytoMub', 'Suru_agg79@yahoo.com', 'The financial Robot is the most effective financial tool in the net!', '89035539268', 'Robot is the best solution for everyone who wants to earn. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-02 04:57:07', '2022-08-02 04:57:07'),
(278, 'CrytoMub', 'soto_frances_454@yahoo.com', 'No need to stay awake all night long to earn money. Launch the robot.', '89037799781', 'Only one click can grow up your money really fast. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-02 08:03:12', '2022-08-02 08:03:12'),
(279, 'CrytoMub', 'jeffliu08@gmail.com', 'The fastest way to make your wallet thick is found.', '89037808313', 'Check out the new financial tool, which can make you rich. https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-02 11:01:22', '2022-08-02 11:01:22'),
(280, 'CrytoMub', 'rfc_serv@hotmail.com', 'Money, money! Make more money with financial robot!', '89034761261', 'We know how to become rich and do you? https://vom.qbe-medienhaus.de/vom', NULL, '2022-08-02 14:03:36', '2022-08-02 14:03:36'),
(281, 'CrytoMub', 'Hottipsfashion@gmail.com', 'Make dollars just sitting home.', '89036075356', 'Financial robot is your success formula is found. Learn more about it. https://drive.google.com/file/d/1Rqop87rM8CQDz6UtBb2tXehOKwoUG4KK/view?usp=sharing', NULL, '2022-08-02 17:07:19', '2022-08-02 17:07:19'),
(282, 'CrytoMub', 'cikizwa_yokwe@ymail.com', 'Still not a millionaire? The financial robot will make you him!', '89031078993', 'Buy everything you want earning money online. https://drive.google.com/file/d/16h--2NxCymIYLkRyC39ltIg-nBif8Ayz/view?usp=sharing', NULL, '2022-08-02 20:07:34', '2022-08-02 20:07:34'),
(283, 'CrytoMub', 'ashek_asala222@yahoo.com', 'Online Bot will bring you wealth and satisfaction.', '89035036693', 'Making money in the net is easier now. https://drive.google.com/file/d/1iPHBY0ZdbiBAqS_jjakxVNLlSevtFd41/view?usp=sharing', NULL, '2022-08-02 23:07:31', '2022-08-02 23:07:31'),
(284, 'CrytoMub', '4@buy-usedcars.com', 'The fastest way to make your wallet thick is found.', '89033986533', '# 1 financial expert in the net! Check out the new Robot. https://drive.google.com/file/d/1ZtpcAfZ5MIqMTOn0hOHHCykKbwSNPrmw/view?usp=sharing', NULL, '2022-08-03 02:10:07', '2022-08-03 02:10:07'),
(285, 'CrytoMub', 'jjdn58@gmail.com', 'Let your money grow into the capital with this Robot.', '89038850857', 'Making money is very easy if you use the financial Robot. https://drive.google.com/file/d/1HMRjvdPNeZ2W7wQLK2YHm_Q_pmRH4IzX/view?usp=sharing', NULL, '2022-08-03 05:09:39', '2022-08-03 05:09:39'),
(286, 'CrytoMub', 'evinnrobsmom@yahoo.com', 'Turn $1 into $100 instantly. Use the financial Robot.', '89039783728', 'Financial robot is your success formula is found. Learn more about it. https://drive.google.com/file/d/1HMRjvdPNeZ2W7wQLK2YHm_Q_pmRH4IzX/view?usp=sharing', NULL, '2022-08-03 08:05:12', '2022-08-03 08:05:12'),
(287, 'CrytoMub', 'Kvalentine88@hotmail.com', 'Make money 24/7 without any efforts and skills.', '89035129881', 'Online Bot will bring you wealth and satisfaction. https://drive.google.com/file/d/16h--2NxCymIYLkRyC39ltIg-nBif8Ayz/view?usp=sharing', NULL, '2022-08-03 11:12:12', '2022-08-03 11:12:12'),
(288, 'CrytoMub', 'dprice303@hotmail.com', 'Let the Robot bring you money while you rest.', '89035250350', 'Need cash? Launch this robot and see what it can. https://drive.google.com/file/d/1z2pZkAuKV9gLJURJKnMx-Tik7d1gjSUI/view', NULL, '2022-08-03 14:15:19', '2022-08-03 14:15:19'),
(289, 'CrytoMub', 'jthomas@alvarezandmarsal.com', 'Even a child knows how to make $100 today.', '89035560514', 'Launch the financial Robot and do your business. https://vom.gizmo-inc.fr/vom', NULL, '2022-08-03 17:15:36', '2022-08-03 17:15:36'),
(290, 'CrytoMub', 'kdvanpelt@earthlink.net', 'Make thousands of bucks. Financial robot will help you to do it!', '89034525638', 'The fastest way to make you wallet thick is here. https://vom.gizmo-inc.fr/vom', NULL, '2022-08-03 20:17:26', '2022-08-03 20:17:26'),
(291, 'CrytoMub', 'rafkehove@hotmail.com', 'Invest $1 today to make $1000 tomorrow.', '89038991671', 'Have no money? It’s easy to earn them online here. https://vom.gizmo-inc.fr/vom', NULL, '2022-08-03 23:17:40', '2022-08-03 23:17:40'),
(292, 'CrytoMub', 'indijnsc2000@yahoo.com', 'Launch the best investment instrument to start making money today.', '89035913792', 'Most successful people already use Robot. Do you? https://vom.gizmo-inc.fr/vom', NULL, '2022-08-04 02:19:22', '2022-08-04 02:19:22'),
(293, 'CrytoMub', 'shcavallo@aol.com', 'No need to work anymore. Just launch the robot.', '89039485382', 'Invest $1 today to make $1000 tomorrow. https://vom.gizmo-inc.fr/vom', NULL, '2022-08-04 05:25:40', '2022-08-04 05:25:40'),
(294, 'CrytoMub', 'rolabu@gmail.com', 'Financial robot keeps bringing you money while you sleep.', '89030761541', 'Invest $1 today to make $1000 tomorrow. https://vom.gizmo-inc.fr/vom', NULL, '2022-08-04 08:28:38', '2022-08-04 08:28:38'),
(295, 'Wilfred Manson', 'ntoukirhasan7860@jaypetfood.com', NULL, '078 4606 4308', 'Good job on the new site! Now go ahead and submit it to our free directory here https://bit.ly/submit_site_2', NULL, '2022-08-04 10:48:41', '2022-08-04 10:48:41'),
(296, 'CrytoMub', 'volldammd@gmail.com', 'Making money can be extremely easy if you use this Robot.', '89038415621', 'No need to worry about the future if your use this financial robot. https://vom.gizmo-inc.fr/vom', NULL, '2022-08-04 11:31:13', '2022-08-04 11:31:13'),
(297, 'CrytoMub', 'isabelnavarroramos@hotmail.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', '89033702807', 'We know how to make our future rich and do you? https://vom.chronicleshardcore.de/vom', NULL, '2022-08-04 14:37:31', '2022-08-04 14:37:31'),
(298, 'CrytoMub', 'kmcdaniel66@aol.com', 'Make your laptop a financial instrument with this program.', '89036539924', 'Thousands of bucks are guaranteed if you use this robot. https://vom.chronicleshardcore.de/vom', NULL, '2022-08-04 17:40:55', '2022-08-04 17:40:55'),
(299, 'CrytoMub', 'armando.areias@gmail.com', 'The best online investment tool is found. Learn more!', '89035815319', 'Everyone who needs money should try this Robot out. https://vom.chronicleshardcore.de/vom', NULL, '2022-08-04 20:42:26', '2022-08-04 20:42:26'),
(300, 'CrytoMub', 'rquinny@comcast.net', 'Only one click can grow up your money really fast.', '89036382377', 'The financial Robot is the most effective financial tool in the net! https://vom.chronicleshardcore.de/vom', NULL, '2022-08-04 23:44:54', '2022-08-04 23:44:54'),
(301, 'CrytoMub', 'ruthmartin31@yahoo.com', 'Launch the financial Robot and do your business.', '89038974980', 'Provide your family with the money in age. Launch the Robot! https://vom.chronicleshardcore.de/vom', NULL, '2022-08-05 02:44:24', '2022-08-05 02:44:24'),
(302, 'CrytoMub', 'toddntam@agalis.net', 'Most successful people already use Robot. Do you?', '89032377160', 'Financial robot is the best companion of rich people. https://vom.danceit.es/vom', NULL, '2022-08-05 05:45:43', '2022-08-05 05:45:43'),
(303, 'CrytoMub', 'serr.atejn.se.t@gmail.com', 'Check out the new financial tool, which can make you rich.', '89032074837', 'Try out the automatic robot to keep earning all day long. https://vom.danceit.es/vom', NULL, '2022-08-05 08:48:28', '2022-08-05 08:48:28'),
(304, 'CrytoMub', 'shadow2lou@aol.com', 'Launch the best investment instrument to start making money today.', '89031958625', 'Just one click can turn you dollar into $1000. https://vom.danceit.es/vom', NULL, '2022-08-05 11:51:09', '2022-08-05 11:51:09'),
(305, 'CrytoMub', 'tearsofanangel7@gmail.com', 'Start your online work using the financial Robot.', '89032415935', 'Making money in the net is easier now. https://vom.danceit.es/vom', NULL, '2022-08-05 14:57:45', '2022-08-05 14:57:45'),
(306, 'CrytoMub', 'betsey.ford@gmail.com', 'Make your laptop a financial instrument with this program.', '89032011465', 'Earning money in the Internet is easy if you use Robot. https://vom.danceit.es/vom', NULL, '2022-08-05 18:00:19', '2022-08-05 18:00:19'),
(307, 'CrytoMub', 'rebel6183@yahoo.com', 'Let your money grow into the capital with this Robot.', '89035556757', 'Launch the financial Robot and do your business. https://vom.echinat.de/vom', NULL, '2022-08-05 21:03:00', '2022-08-05 21:03:00'),
(308, 'CrytoMub', 'nupurkhera@gmail.com', 'Need money? The financial robot is your solution.', '89031331903', 'Even a child knows how to make money. This robot is what you need! https://vom.echinat.de/vom', NULL, '2022-08-06 00:06:06', '2022-08-06 00:06:06'),
(309, 'CrytoMub', 'KRECYNTHIAJ@YAHOO.COM', 'Have no money? It’s easy to earn them online here.', '89038516123', 'Everyone can earn as much as he wants suing this Bot. https://vom.echinat.de/vom', NULL, '2022-08-06 03:07:57', '2022-08-06 03:07:57'),
(310, 'CrytoMub', 'longjosh@hotmail.com', 'Trust the financial Bot to become rich.', '89033905451', 'Automatic robot is the best start for financial independence. https://vom.echinat.de/vom', NULL, '2022-08-06 06:11:13', '2022-08-06 06:11:13'),
(311, 'CrytoMub', 'jendooley1@gmail.com', 'Let your money grow into the capital with this Robot.', '89031726440', 'Find out about the easiest way of money earning. https://vom.echinat.de/vom', NULL, '2022-08-06 09:15:26', '2022-08-06 09:15:26'),
(312, 'Email Influence', 'contact@emailinfluence.xyz', 'Missing Out on Email Marketing?', '06-79635507', 'Are you missing out on email marketing for your site? Running a site is a full time job. With limited time and resources, it be difficult to put energy in marketing your business. But with email marketing, promoting your business becomesa a whole lot easier. Receive your free guide here https://emailinfluence.xyz/email/?e8x2_oksdlr.io \r\n\r\nTo remove your site from our list visit https://emailinfluence.xyz/unsubscribe/', NULL, '2022-08-06 10:46:31', '2022-08-06 10:46:31'),
(313, 'CrytoMub', 'montsotomar5@yahoo.com', 'Financial robot keeps bringing you money while you sleep.', '89037579381', 'Everyone who needs money should try this Robot out. https://vom.echinat.de/vom', NULL, '2022-08-06 12:18:43', '2022-08-06 12:18:43'),
(314, 'CrytoMub', 'rt_chavarria@hotmail.com', 'Online earnings are the easiest way for financial independence.', '89038419775', 'Launch the financial Bot now to start earning. https://vom.echinat.de/vom', NULL, '2022-08-06 17:22:08', '2022-08-06 17:22:08'),
(315, 'CrytoMub', 'ila1601@yahoo.com', 'Financial robot is your success formula is found. Learn more about it.', '89036435739', 'Even a child knows how to make $100 today with the help of this robot. https://vom.echinat.de/vom', NULL, '2022-08-06 20:21:24', '2022-08-06 20:21:24'),
(316, 'CrytoMub', 'kerryhz28@yahoo.com', 'Online Bot will bring you wealth and satisfaction.', '89033101812', '# 1 financial expert in the net! Check out the new Robot. https://vom.echinat.de/vom', NULL, '2022-08-06 23:24:56', '2022-08-06 23:24:56'),
(317, 'CrytoMub', 'p.r.o.to.t.y.p.er.ac.c@gmail.com', 'Let your money grow into the capital with this Robot.', '89034433378', 'Financial robot is a great way to manage and increase your income. https://vom.echinat.de/vom', NULL, '2022-08-07 02:26:59', '2022-08-07 02:26:59'),
(318, 'CrytoMub', 'a_gentle_rayne@yahoo.com', 'Provide your family with the money in age. Launch the Robot!', '89034945645', 'Buy everything you want earning money online. https://vom.echinat.de/vom', NULL, '2022-08-07 05:32:09', '2022-08-07 05:32:09'),
(319, 'CrytoMub', 'butterflygirl420690@gmail.com', 'There is no need to look for a job anymore. Work online.', '89035318138', 'Financial robot is your success formula is found. Learn more about it. https://vom.echinat.de/vom', NULL, '2022-08-07 08:39:47', '2022-08-07 08:39:47'),
(320, 'CrytoMub', 'dadiggins61@aol.com', 'This robot will help you to make hundreds of dollars each day.', '89031592341', 'Automatic robot is the best start for financial independence. https://vom.echinat.de/vom', NULL, '2022-08-07 11:44:03', '2022-08-07 11:44:03'),
(321, 'CrytoMub', 'torriholmes69@gmail.com', 'Robot is the best solution for everyone who wants to earn.', '89030074446', 'The online job can bring you a fantastic profit. https://vom.echinat.de/vom', NULL, '2022-08-07 14:47:30', '2022-08-07 14:47:30'),
(322, 'CrytoMub', 'bruce.nichols.sr@comcast.net', 'The best way for everyone who rushes for financial independence.', '89036713913', 'The huge income without investments is available, now! https://vom.echinat.de/vom', NULL, '2022-08-07 17:50:14', '2022-08-07 17:50:14'),
(323, 'CrytoMub', 'michaelmcclurembi@yahoo.com', 'Even a child knows how to make $100 today.', '89035459937', 'Wow! This Robot is a great start for an online career. https://vom.echinat.de/vom', NULL, '2022-08-07 20:54:11', '2022-08-07 20:54:11'),
(324, 'CrytoMub', 'joykjh@gmail.com', 'The best way for everyone who rushes for financial independence.', '89037961116', 'The online income is your key to success. https://vom.echinat.de/vom', NULL, '2022-08-07 23:55:09', '2022-08-07 23:55:09'),
(325, 'CrytoMub', 'nada_khaled@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89030112945', 'Earning $1000 a day is easy if you use this financial Robot. https://vom.echinat.de/vom', NULL, '2022-08-08 02:56:31', '2022-08-08 02:56:31'),
(326, 'CrytoMub', 'komoletski@gmail.com', 'Financial independence is what this robot guarantees.', '89039656005', 'Let the financial Robot be your companion in the financial market. https://vom.echinat.de/vom', NULL, '2022-08-08 05:55:26', '2022-08-08 05:55:26'),
(327, 'CrytoMub', 'zxkaraxz@msn.com', 'Buy everything you want earning money online.', '89035093963', 'We know how to become rich and do you? https://vom.echinat.de/vom', NULL, '2022-08-08 08:57:08', '2022-08-08 08:57:08'),
(328, 'Mobile&TV', 'zealtechbd099@gmail.com', 'need products', '01770065676', 'my tv', NULL, '2022-08-08 10:16:31', '2022-08-08 10:16:31'),
(329, 'CrytoMub', 'swati11_4me@yahoo.com', 'Launch the financial Bot now to start earning.', '89039968495', 'Make thousands of bucks. Pay nothing. https://vom.echinat.de/vom', NULL, '2022-08-08 11:57:48', '2022-08-08 11:57:48'),
(330, 'CrytoMub', 'stylishsibu@yahoo.com', 'The best online investment tool is found. Learn more!', '89035090373', 'Have no financial skills? Let Robot make money for you. https://vom.echinat.de/vom', NULL, '2022-08-08 14:58:29', '2022-08-08 14:58:29'),
(331, 'CrytoMub', 'alsrb8076@naver.com', 'Make dollars just sitting home.', '89033797850', 'Your money keep grow 24/7 if you use the financial Robot. https://vom.echinat.de/vom', NULL, '2022-08-08 17:59:05', '2022-08-08 17:59:05'),
(332, 'CrytoMub', 'Fellihn@sportsjapanesehome.com', 'Only one click can grow up your money really fast.', '89033912613', 'Need money? Earn it without leaving your home. https://vom.echinat.de/vom', NULL, '2022-08-08 21:01:34', '2022-08-08 21:01:34'),
(333, 'CrytoMub', 'mouna.bouho@gmail.com', 'Everyone can earn as much as he wants now.', '89037977664', 'Make your money work for you all day long. https://vom.echinat.de/vom', NULL, '2022-08-09 00:06:31', '2022-08-09 00:06:31'),
(334, 'CrytoMub', 'mhastings84@yahoo.com', 'Invest $1 today to make $1000 tomorrow.', '89031629792', 'Need money? Get it here easily! Just press this to launch the robot. https://vom.echinat.de/vom', NULL, '2022-08-09 03:05:55', '2022-08-09 03:05:55'),
(335, 'CrytoMub', 'bburkett@donotuse.com', 'Find out about the easiest way of money earning.', '89038965470', 'The success formula is found. Learn more about it. https://vom.echinat.de/vom', NULL, '2022-08-09 06:07:12', '2022-08-09 06:07:12'),
(336, 'CrytoMub', 'sarocra29@gmail.com', 'Start making thousands of dollars every week just using this robot.', '89038677693', 'Attention! Here you can earn money online! https://vom.echinat.de/vom', NULL, '2022-08-09 09:13:11', '2022-08-09 09:13:11'),
(337, 'CrytoMub', 'ocherro1025@aol.com', 'Trust your dollar to the Robot and see how it grows to $100.', '89037767745', 'This robot can bring you money 24/7. https://vom.echinat.de/vom', NULL, '2022-08-09 12:17:54', '2022-08-09 12:17:54'),
(338, 'CrytoMub', 'santa2011claus@yahoo.com', 'One dollar is nothing, but it can grow into $100 here.', '89038654651', 'Still not a millionaire? The financial robot will make you him! https://vom.echinat.de/vom', NULL, '2022-08-09 15:18:40', '2022-08-09 15:18:40'),
(339, 'CrytoMub', 'powersm3@sbcglobal.net', 'Need money? Get it here easily! Just press this to launch the robot.', '89033909093', 'We know how to make our future rich and do you? https://vom.echinat.de/vom', NULL, '2022-08-09 18:22:56', '2022-08-09 18:22:56');
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(340, 'CrytoMub', 'saruman63@hotmail.com', 'Financial robot is a great way to manage and increase your income.', '89039537829', 'Making money is very easy if you use the financial Robot. https://vom.echinat.de/vom', NULL, '2022-08-09 21:20:42', '2022-08-09 21:20:42'),
(341, 'CrytoMub', 'natasha.lachica@gmail.com', 'Trust your dollar to the Robot and see how it grows to $100.', '89036546411', 'Try out the automatic robot to keep earning all day long. https://vom.echinat.de/vom', NULL, '2022-08-10 00:27:37', '2022-08-10 00:27:37'),
(342, 'CrytoMub', 'antony@nms-solutions.com', 'The financial Robot is the most effective financial tool in the net!', '89038717480', 'Need some more money? Robot will earn them really fast. https://vom.echinat.de/vom', NULL, '2022-08-10 03:32:37', '2022-08-10 03:32:37'),
(343, 'CrytoMub', 'nursyaficangelai@hotmail.com', 'Looking for additional money? Try out the best financial instrument.', '89038068259', 'Need money? Earn it without leaving your home. https://vom.echinat.de/vom', NULL, '2022-08-10 06:32:38', '2022-08-10 06:32:38'),
(344, 'CrytoMub', 'carolyn.christian@comcast.net', 'Let the Robot bring you money while you rest.', '89038976744', 'Still not a millionaire? Fix it now! https://vom.echinat.de/vom', NULL, '2022-08-10 09:56:53', '2022-08-10 09:56:53'),
(345, 'CrytoMub', 'pattty_1982@hotmail.com', 'Looking forward for income? Get it online.', '89037931388', 'The online income is your key to success. https://vom.echinat.de/vom', NULL, '2022-08-10 13:03:52', '2022-08-10 13:03:52'),
(346, 'CrytoMub', 'angelromo@yahoo.com', 'No need to work anymore while you have the Robot launched!', '89033814256', 'Additional income is now available for anyone all around the world. https://vom.echinat.de/vom', NULL, '2022-08-10 16:09:51', '2022-08-10 16:09:51'),
(347, 'CrytoMub', 'lady_murda@yahoo.com', 'Make thousands of bucks. Financial robot will help you to do it!', '89038041868', 'Using this Robot is the best way to make you rich. https://vom.echinat.de/vom', NULL, '2022-08-10 19:12:07', '2022-08-10 19:12:07'),
(348, 'CrytoMubMub', 'sherrykelley90@hotmail.com', 'Looking for additional money? Try out the best financial instrument.', '89034491607', 'Provide your family with the money in age. Launch the Robot! https://vom.rbertilsson.se/', NULL, '2022-08-11 13:43:40', '2022-08-11 13:43:40'),
(349, 'CrytoMubMub', 'katarinavictoria.ruiz@gmail.com', 'Try out the automatic robot to keep earning all day long.', '89037411503', 'Financial robot is your success formula is found. Learn more about it. https://vom.rbertilsson.se/', NULL, '2022-08-12 20:17:56', '2022-08-12 20:17:56'),
(350, 'CrytoMubMub', 'cpocarun@yahoo.com', 'Trust your dollar to the Robot and see how it grows to $100.', '89037259766', 'Trust your dollar to the Robot and see how it grows to $100. https://vom.rbertilsson.se/', NULL, '2022-08-14 01:20:56', '2022-08-14 01:20:56'),
(351, 'CrytoMubMub', 'sofia_medeiros13@hotmail.com', 'Provide your family with the money in age. Launch the Robot!', '89036402252', 'Your money work even when you sleep. https://vom.rbertilsson.se/', NULL, '2022-08-15 07:17:20', '2022-08-15 07:17:20'),
(352, 'CrytoMubMub', 'rkcardo@hotmail.com', 'Make thousands of bucks. Financial robot will help you to do it!', '89033809799', 'The fastest way to make you wallet thick is here. https://vom.rbertilsson.se/', NULL, '2022-08-16 13:01:12', '2022-08-16 13:01:12'),
(353, 'CrytoMub', 'aljovee@yahoo.com', 'Money, money! Make more money with financial robot!', '89036810970', 'Financial Robot is #1 investment tool ever. Launch it! https://vom.rbertilsson.se/', NULL, '2022-08-16 14:35:25', '2022-08-16 14:35:25'),
(354, 'CrytoMub', 'ttmanson@gmail.com', 'Need money? Get it here easily?', '89032718596', 'Everyone who needs money should try this Robot out. https://vom.rbertilsson.se/', NULL, '2022-08-16 17:17:35', '2022-08-16 17:17:35'),
(355, 'CrytoMub', 'Castle7onthehill@aol.com', 'Make money, not war! Financial Robot is what you need.', '89032493178', 'Financial robot is a great way to manage and increase your income. https://vom.rbertilsson.se/', NULL, '2022-08-16 19:56:44', '2022-08-16 19:56:44'),
(356, 'CrytoMub', 'irdi_mortensen@hotmail.com', 'The additional income for everyone.', '89032746090', 'Have no financial skills? Let Robot make money for you. https://vom.rbertilsson.se/', NULL, '2022-08-16 22:57:46', '2022-08-16 22:57:46'),
(357, 'CrytoMub', 'beckybelvin@gmail.com', 'Attention! Here you can earn money online!', '89036337580', 'Check out the newest way to make a fantastic profit. https://vom.rbertilsson.se/', NULL, '2022-08-17 01:46:03', '2022-08-17 01:46:03'),
(358, 'CrytoMub', 'gaille_mdr19@yahoo.com', 'Wow! This Robot is a great start for an online career.', '89030995671', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://vom.rbertilsson.se/', NULL, '2022-08-17 05:00:22', '2022-08-17 05:00:22'),
(359, 'CrytoMub', 'c.r.edpe.reze.d@gmail.com', 'Making money in the net is easier now.', '89032393371', 'Have no money? Earn it online. https://vom.rbertilsson.se/', NULL, '2022-08-17 07:42:38', '2022-08-17 07:42:38'),
(360, 'CrytoMub', 'sticew@bellsouth.net', 'Even a child knows how to make $100 today with the help of this robot.', '89038286727', 'Small investments can bring tons of dollars fast. https://vom.rbertilsson.se/', NULL, '2022-08-17 10:25:18', '2022-08-17 10:25:18'),
(361, 'CrytoMub', 'matthewbitonti@yahoo.com', 'Make your computer to be you earning instrument.', '89033175882', 'The financial Robot is your future wealth and independence. https://vom.rbertilsson.se/', NULL, '2022-08-17 13:27:52', '2022-08-17 13:27:52'),
(362, 'CrytoMub', 'rockcool119@gmail.com', 'Just one click can turn you dollar into $1000.', '89032767081', 'No need to worry about the future if your use this financial robot. https://vom.rbertilsson.se/', NULL, '2022-08-17 16:42:36', '2022-08-17 16:42:36'),
(363, 'CrytoMub', 'abnjoe031777@yahoo.com', 'Your computer can bring you additional income if you use this Robot.', '89039786048', 'One dollar is nothing, but it can grow into $100 here. https://vom.rbertilsson.se/', NULL, '2022-08-17 19:22:33', '2022-08-17 19:22:33'),
(364, 'CrytoMub', 'owenjen420@yahoo.com', 'Still not a millionaire? The financial robot will make you him!', '89039298996', 'No need to work anymore. Just launch the robot. https://vom.rbertilsson.se/', NULL, '2022-08-17 22:21:22', '2022-08-17 22:21:22'),
(365, 'CrytoMub', 'chris_vjay18@yahoo.com', 'Financial independence is what everyone needs.', '89036861332', 'No worries if you are fired. Work online. https://vom.rbertilsson.se/', NULL, '2022-08-18 00:59:27', '2022-08-18 00:59:27'),
(366, 'CrytoMub', 'DlFosberg@aol.com', 'Need cash? Launch this robot and see what it can.', '89037575032', 'Online job can be really effective if you use this Robot. https://vom.rbertilsson.se/', NULL, '2022-08-18 03:40:26', '2022-08-18 03:40:26'),
(367, 'CrytoMub', 'Kem@xt2000.com', 'Even a child knows how to make $100 today with the help of this robot.', '89035295141', 'Make dollars just sitting home. https://vom.rbertilsson.se/', NULL, '2022-08-18 06:20:23', '2022-08-18 06:20:23'),
(368, 'CrytoMub', 'MAHESHWARI_KH@VERIZON.NET', 'The financial Robot is the most effective financial tool in the net!', '89034887378', 'Earning $1000 a day is easy if you use this financial Robot. https://vom.rbertilsson.se/', NULL, '2022-08-18 09:01:53', '2022-08-18 09:01:53'),
(369, 'CrytoMub', 'petertruitt@verizon.net', 'Your money work even when you sleep.', '89033498584', 'Robot never sleeps. It makes money for you 24/7. https://vom.rbertilsson.se/', NULL, '2022-08-18 11:35:33', '2022-08-18 11:35:33'),
(370, 'CrytoMub', 'kayla.barber@ymail.com', 'Have no money? Earn it online.', '89037132329', 'Using this Robot is the best way to make you rich. https://vom.rbertilsson.se/', NULL, '2022-08-18 14:12:00', '2022-08-18 14:12:00'),
(371, 'CrytoMub', 'oseyijo@yahoo.com', 'See how Robot makes $1000 from $1 of investment.', '89035808674', 'Earning $1000 a day is easy if you use this financial Robot. https://vom.rbertilsson.se/', NULL, '2022-08-18 16:44:17', '2022-08-18 16:44:17'),
(372, 'CrytoMub', 'abnsmw@hotmail.com', 'There is no need to look for a job anymore. Work online.', '89032880773', 'Check out the automatic Bot, which works for you 24/7. https://vom.rbertilsson.se/', NULL, '2022-08-18 19:25:10', '2022-08-18 19:25:10'),
(373, 'CrytoMub', 'h_purvis@yahoo.com', 'Launch the robot and let it bring you money.', '89039783308', 'The online income is the easiest ways to make you dream come true. https://vom.rbertilsson.se/', NULL, '2022-08-18 22:05:54', '2022-08-18 22:05:54'),
(374, 'CrytoMub', 'Angie_Unruh@hotmail.com', 'No need to work anymore. Just launch the robot.', '89036981125', 'Feel free to buy everything you want with the additional income. https://vom.escueladelcambio.es/', NULL, '2022-08-19 00:43:52', '2022-08-19 00:43:52'),
(375, 'CrytoMub', 'Nicknak07@yahoo.com', 'Everyone can earn as much as he wants now.', '89031437478', 'Make yourself rich in future using this financial robot. https://vom.escueladelcambio.es/', NULL, '2022-08-19 03:26:48', '2022-08-19 03:26:48'),
(376, 'CrytoMub', 'melissahdg693@aol.com', 'It is the best time to launch the Robot to get more money.', '89034207965', 'Looking for an easy way to make money? Check out the financial robot. https://vom.escueladelcambio.es/', NULL, '2022-08-19 06:01:40', '2022-08-19 06:01:40'),
(377, 'CrytoMub', 'enosk@comcast.net', 'Most successful people already use Robot. Do you?', '89031421568', 'Make money, not war! Financial Robot is what you need. https://vom.escueladelcambio.es/', NULL, '2022-08-19 08:43:49', '2022-08-19 08:43:49'),
(378, 'CrytoMub', 'rickjames19751975@yahoo.com', 'One click of the robot can bring you thousands of bucks.', '89036151700', 'Still not a millionaire? Fix it now! https://vom.escueladelcambio.es/', NULL, '2022-08-19 11:01:22', '2022-08-19 11:01:22'),
(379, 'CrytoMub', 'lovely_9891@yahoo.com', 'Make money online, staying at home this cold winter.', '89038338721', 'Let the financial Robot be your companion in the financial market. https://vom.escueladelcambio.es/', NULL, '2022-08-19 14:07:38', '2022-08-19 14:07:38'),
(380, 'CrytoMub', 'engg.shwetabhverma@gmail.com', 'No need to worry about the future if your use this financial robot.', '89036247591', 'Launch the robot and let it bring you money. https://vom.escueladelcambio.es/', NULL, '2022-08-19 16:46:25', '2022-08-19 16:46:25'),
(381, 'Goliperwas', 'julianderson22@hotmail.com', 'Вам задание на онлайн работу. Оплата сразу после выполнения. Куда оплатить?', '81619294247', 'Здравствуйте! \r\n \r\nЖМИТЕ СЮДА И ЗАБЕРИТЕ. http://vihvsegdaest.blogspot.sk \r\n \r\nЕсли не заберёте, сразу удалю.', NULL, '2022-08-19 17:21:10', '2022-08-19 17:21:10'),
(382, 'CrytoMub', 'lisalugo3@yahoo.com', 'No need to stay awake all night long to earn money. Launch the robot.', '89038870600', 'Still not a millionaire? The financial robot will make you him! https://vom.escueladelcambio.es/', NULL, '2022-08-19 19:22:27', '2022-08-19 19:22:27'),
(383, 'CrytoMub', 'luisayuso182@yahoo.com', 'Your money work even when you sleep.', '89031933839', 'Financial independence is what this robot guarantees. https://vom.escueladelcambio.es/', NULL, '2022-08-19 20:45:44', '2022-08-19 20:45:44'),
(384, 'CrytoMub', 'alitnllianlt.dg52@gmail.com', 'Online earnings are the easiest way for financial independence.', '89036412216', 'Online Bot will bring you wealth and satisfaction. https://vom.escueladelcambio.es/', NULL, '2022-08-19 23:25:49', '2022-08-19 23:25:49'),
(385, 'CrytoMub', 'godswill3angels@comcast.net', 'Let your money grow into the capital with this Robot.', '89038162513', 'Earn additional money without efforts. https://vom.escueladelcambio.es/', NULL, '2022-08-20 01:53:37', '2022-08-20 01:53:37'),
(386, 'CrytoMub', 'tony_edako@yahoo.com', 'Automatic robot is the best start for financial independence.', '89030946590', 'Make dollars just sitting home. https://vom.escueladelcambio.es/', NULL, '2022-08-20 04:27:53', '2022-08-20 04:27:53'),
(387, 'CrytoMub', 'mikeyb4522@gmail.com', 'Make thousands of bucks. Pay nothing.', '89031470194', 'Making money can be extremely easy if you use this Robot. https://vom.escueladelcambio.es/', NULL, '2022-08-20 07:06:46', '2022-08-20 07:06:46'),
(388, 'CrytoMub', 'epiknoob@ymail.com', '# 1 financial expert in the net! Check out the new Robot.', '89037538324', 'The additional income is available for everyone using this robot. https://vom.escueladelcambio.es/', NULL, '2022-08-20 09:38:48', '2022-08-20 09:38:48'),
(389, 'CrytoMub', 'davidpawelko94@gmail.com', 'Make money 24/7 without any efforts and skills.', '89038589116', 'One click of the robot can bring you thousands of bucks. https://vom.escueladelcambio.es/', NULL, '2022-08-20 12:13:24', '2022-08-20 12:13:24'),
(390, 'CrytoMub', 'jenniferyador@msn.com', 'Try out the automatic robot to keep earning all day long.', '89039084592', 'There is no need to look for a job anymore. Work online. https://vom.escueladelcambio.es/', NULL, '2022-08-20 15:38:04', '2022-08-20 15:38:04'),
(391, 'CrytoMub', 'latashaj1992@yahoo.com', 'Additional income is now available for anyone all around the world.', '89032735364', 'It is the best time to launch the Robot to get more money. https://vom.escueladelcambio.es/', NULL, '2022-08-20 18:10:20', '2022-08-20 18:10:20'),
(392, 'CrytoMub', 'manofgod1124@yahoo.com', 'Join the society of successful people who make money here.', '89036691166', 'Make money in the internet using this Bot. It really works! https://vom.escueladelcambio.es/', NULL, '2022-08-20 20:50:20', '2022-08-20 20:50:20'),
(393, 'CrytoMub', 'alexa_elena89@yahoo.com', 'Make money 24/7 without any efforts and skills.', '89032317730', 'Making money is very easy if you use the financial Robot. https://vom.escueladelcambio.es/', NULL, '2022-08-20 23:48:25', '2022-08-20 23:48:25'),
(394, 'CrytoMub', 'afigobok@yandexmailserv.com', 'Check out the newest way to make a fantastic profit.', '89031210109', 'We have found the fastest way to be rich. Find it out here. https://vom.escueladelcambio.es/', NULL, '2022-08-21 02:33:50', '2022-08-21 02:33:50'),
(395, 'CrytoMub', 'robertsveca@yahoo.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89035828391', 'Check out the new financial tool, which can make you rich. https://vom.escueladelcambio.es/', NULL, '2022-08-21 05:14:01', '2022-08-21 05:14:01'),
(396, 'CrytoMub', 'gangstap@mail.com', 'Need money? The financial robot is your solution.', '89031000032', 'There is no need to look for a job anymore. Work online. https://vom.escueladelcambio.es/', NULL, '2022-08-21 07:57:54', '2022-08-21 07:57:54'),
(397, 'CrytoMub', 'indistinguivel@gmail.com', 'Robot is the best way for everyone who looks for financial independence.', '89030706325', 'The success formula is found. Learn more about it. https://vom.escueladelcambio.es/', NULL, '2022-08-21 11:12:25', '2022-08-21 11:12:25'),
(398, 'CrytoMub', 'Brandonfa13@yahoo.com', 'See how Robot makes $1000 from $1 of investment.', '89038923050', 'Buy everything you want earning money online. https://vom.escueladelcambio.es/', NULL, '2022-08-21 17:09:37', '2022-08-21 17:09:37'),
(399, 'CrytoMub', 'jakewilletts@gmail.com', 'Still not a millionaire? The financial robot will make you him!', '89033571830', 'Make money, not war! Financial Robot is what you need. https://vom.escueladelcambio.es/', NULL, '2022-08-21 20:22:06', '2022-08-21 20:22:06'),
(400, 'CrytoMub', 'crazygroundz02@yahoo.com', 'We know how to make our future rich and do you?', '89039700896', 'Find out about the fastest way for a financial independence. https://vom.escueladelcambio.es/', NULL, '2022-08-22 00:28:39', '2022-08-22 00:28:39'),
(401, 'CrytoMub', 'soccergod5624@yahoo.com', 'This robot will help you to make hundreds of dollars each day.', '89036127789', 'Financial independence is what this robot guarantees. https://vom.escueladelcambio.es/', NULL, '2022-08-22 03:58:42', '2022-08-22 03:58:42'),
(402, 'CrytoMub', 'debramitchell@earthlink.net', 'Make money online, staying at home this cold winter.', '89031983177', 'The financial Robot is your # 1 expert of making money. https://vom.escueladelcambio.es/', NULL, '2022-08-22 07:00:14', '2022-08-22 07:00:14'),
(403, 'CrytoMub', 'thruster666666@yahoo.com', 'Everyone can earn as much as he wants now.', '89031148281', 'Everyone can earn as much as he wants now. https://vom.escueladelcambio.es/', NULL, '2022-08-22 09:48:30', '2022-08-22 09:48:30'),
(404, 'CrytoMub', 'd_leake@hotmail.com', 'The best online investment tool is found. Learn more!', '89037947573', 'We have found the fastest way to be rich. Find it out here. http://go.tazalus.com/096s', NULL, '2022-08-22 12:58:02', '2022-08-22 12:58:02'),
(405, 'CrytoMub', 'bluethunder350@bellsouth.net', 'The financial Robot is your # 1 expert of making money.', '89039897849', 'Earning $1000 a day is easy if you use this financial Robot. http://go.tazalus.com/096s', NULL, '2022-08-22 15:35:59', '2022-08-22 15:35:59'),
(406, 'CrytoMub', 'cedes_m@ymail.com', 'The financial Robot is the most effective financial tool in the net!', '89036403956', 'Find out about the easiest way of money earning. http://go.tazalus.com/096s', NULL, '2022-08-22 18:26:58', '2022-08-22 18:26:58'),
(407, 'CrytoMub', 'doverspike02@hotmail.com', 'Earning $1000 a day is easy if you use this financial Robot.', '89035286836', 'Start making thousands of dollars every week just using this robot. http://go.tazalus.com/096s', NULL, '2022-08-22 20:59:06', '2022-08-22 20:59:06'),
(408, 'CrytoMub', 'hoters_3@hotmail.com', 'Let your money grow into the capital with this Robot.', '89036968974', 'The financial Robot is your future wealth and independence. http://go.tazalus.com/096s', NULL, '2022-08-23 00:05:33', '2022-08-23 00:05:33'),
(409, 'CrytoMub', 'c0okiiebabiex3@aol.com', 'Thousands of bucks are guaranteed if you use this robot.', '89038865226', 'Trust your dollar to the Robot and see how it grows to $100. http://go.tazalus.com/096s', NULL, '2022-08-23 02:38:59', '2022-08-23 02:38:59'),
(410, 'CrytoMub', 'lbbcrd@elhcyp.com', 'Thousands of bucks are guaranteed if you use this robot.', '89037478204', 'Check out the newest way to make a fantastic profit. http://go.tazalus.com/096s', NULL, '2022-08-23 05:21:19', '2022-08-23 05:21:19'),
(411, 'CrytoMub', 'ela.franko2015@gmail.com', 'Financial robot guarantees everyone stability and income.', '89039469626', 'The fastest way to make you wallet thick is here. http://go.tazalus.com/096s', NULL, '2022-08-23 08:19:49', '2022-08-23 08:19:49'),
(412, 'CrytoMub', 'shellydolan@hotmail.com', 'Looking for additional money? Try out the best financial instrument.', '89031789289', 'Financial independence is what this robot guarantees. http://go.tazalus.com/096s', NULL, '2022-08-23 11:00:46', '2022-08-23 11:00:46'),
(413, 'CrytoMub', 'kp_hsieh@hotmail.com', 'Even a child knows how to make $100 today.', '89033959870', 'One click of the robot can bring you thousands of bucks. http://go.tazalus.com/096s', NULL, '2022-08-23 13:39:21', '2022-08-23 13:39:21'),
(414, 'CrytoMub', 'shawnbarraza@yahoo.com', 'No need to work anymore while you have the Robot launched!', '89031260354', 'Financial independence is what everyone needs. http://go.tazalus.com/096s', NULL, '2022-08-23 16:19:49', '2022-08-23 16:19:49'),
(415, 'CrytoMub', 'ayac@bellsouth.net', 'Thousands of bucks are guaranteed if you use this robot.', '89036123832', 'Make your laptop a financial instrument with this program. http://go.tazalus.com/096s', NULL, '2022-08-23 19:01:15', '2022-08-23 19:01:15'),
(416, 'CrytoMub', 'jesus_estrada123@hotmail.com', 'Still not a millionaire? Fix it now!', '89038833152', 'Turn $1 into $100 instantly. Use the financial Robot. http://go.tazalus.com/096s', NULL, '2022-08-23 21:34:29', '2022-08-23 21:34:29'),
(417, 'CrytoMub', 'iamstorm93@gmail.com', 'Check out the new financial tool, which can make you rich.', '89038104854', 'Feel free to buy everything you want with the additional income. http://go.tazalus.com/096s', NULL, '2022-08-24 00:03:50', '2022-08-24 00:03:50'),
(418, 'CrytoMub', 'tjarjoura@gmail.com', 'One dollar is nothing, but it can grow into $100 here.', '89037640797', 'Financial independence is what everyone needs. http://go.tazalus.com/096s', NULL, '2022-08-24 02:40:49', '2022-08-24 02:40:49'),
(419, 'CrytoMub', 'gangdetrois@gmail.com', 'Earn additional money without efforts.', '89037477757', 'Even a child knows how to make $100 today. http://go.tazalus.com/096s', NULL, '2022-08-24 05:22:15', '2022-08-24 05:22:15'),
(420, 'CrytoMub', 'whiteorchilds@yahoo.com', 'Launch the financial Robot and do your business.', '89039754928', 'The online financial Robot is your key to success. http://go.tazalus.com/096s', NULL, '2022-08-24 08:02:18', '2022-08-24 08:02:18'),
(421, 'CrytoMub', 'gangster_girl21@yahoo.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89038305395', 'Make thousands of bucks. Pay nothing. http://go.tazalus.com/096s', NULL, '2022-08-24 10:43:40', '2022-08-24 10:43:40'),
(422, 'Trena Legge', '3chawki.berrada@onlyu.link', NULL, '418 9028', 'Good job on the new site! Now go ahead and submit it to our free directory here https://bit.ly/submit_site_4lSEZtY470R0', NULL, '2022-08-24 11:05:01', '2022-08-24 11:05:01'),
(423, 'CrytoMub', 'Swaqqerbabie@yahoo.com', 'The huge income without investments is available.', '89038213376', 'The huge income without investments is available, now! http://go.tazalus.com/096s', NULL, '2022-08-24 13:34:25', '2022-08-24 13:34:25'),
(424, 'Goliperwas', 'frideamrik2@hotmail.com', 'Вам задание на онлайн работу. Оплата сразу после выполнения. Куда оплатить?', '89313988951', 'Привет! \r\n \r\nЯ получаю каждый день такие суммы и даже больше. http://usperametod.blogspot.tw zealtechbd.com \r\n \r\nНабираю штат сотрудников. \r\n \r\nПодключиться по этой личной ссылке. http://usperametod.blogspot.de zealtechbd.com \r\n \r\nДействуйте!', NULL, '2022-08-26 02:39:25', '2022-08-26 02:39:25'),
(425, 'CrytoMub', 'sujitaries@gmail.com', 'Earning money in the Internet is easy if you use Robot.', '89034587767', 'Thousands of bucks are guaranteed if you use this robot. http://go.tazalus.com/0j0l', NULL, '2022-09-02 16:42:27', '2022-09-02 16:42:27'),
(426, 'CrytoMub', 'yeahmustafa@gmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89033574335', 'One dollar is nothing, but it can grow into $100 here. http://go.tazalus.com/0j0l', NULL, '2022-09-02 18:59:46', '2022-09-02 18:59:46'),
(427, 'CrytoMub', 'juliablewitt@hotmail.com', 'This robot will help you to make hundreds of dollars each day.', '89032616737', 'Everyone can earn as much as he wants suing this Bot. http://go.tazalus.com/0j0l', NULL, '2022-09-02 21:15:32', '2022-09-02 21:15:32'),
(428, 'CrytoMub', 'addiffseknu@zoroasterdomain.com', 'Earn additional money without efforts.', '89035658010', 'Join the society of successful people who make money here. http://go.tazalus.com/0j0l', NULL, '2022-09-02 23:28:22', '2022-09-02 23:28:22'),
(429, 'CrytoMub', 'erh197272@aol.com', 'Earn additional money without efforts and skills.', '89039394582', 'Only one click can grow up your money really fast. http://go.tazalus.com/0j0l', NULL, '2022-09-03 01:43:03', '2022-09-03 01:43:03'),
(430, 'CrytoMub', 'steve.carey@academyhypnoticscience.net', 'Robot is the best way for everyone who looks for financial independence.', '89030024363', 'Start making thousands of dollars every week. http://go.tazalus.com/0j0l', NULL, '2022-09-03 03:56:25', '2022-09-03 03:56:25'),
(431, 'CrytoMub', 'ankruse22@me.com', 'The online income is the easiest ways to make you dream come true.', '89037357403', 'Trust your dollar to the Robot and see how it grows to $100. http://go.tazalus.com/0j0l', NULL, '2022-09-03 06:13:23', '2022-09-03 06:13:23'),
(432, 'CrytoMub', 'sagarpco@gmail.com', 'Have no financial skills? Let Robot make money for you.', '89031328416', 'Buy everything you want earning money online. http://go.tazalus.com/0j0l', NULL, '2022-09-03 08:25:20', '2022-09-03 08:25:20'),
(433, 'CrytoMub', 'zymirakucuso@hotmail.com', 'Robot is the best solution for everyone who wants to earn.', '89032791716', 'Let the financial Robot be your companion in the financial market. http://go.tazalus.com/0j0l', NULL, '2022-09-03 10:36:28', '2022-09-03 10:36:28'),
(434, 'CrytoMub', 'cheekay2002@yahoo.com', 'Make money online, staying at home this cold winter.', '89032475836', 'The success formula is found. Learn more about it. http://go.tazalus.com/0j0l', NULL, '2022-09-03 12:47:58', '2022-09-03 12:47:58'),
(435, 'CrytoMub', 'secretinasw@gmail.com', 'Let the financial Robot be your companion in the financial market.', '89032212092', 'Financial Robot is #1 investment tool ever. Launch it! http://go.tazalus.com/0j0l', NULL, '2022-09-03 15:00:45', '2022-09-03 15:00:45'),
(436, 'CrytoMub', 'Rh4thm_N_B3ats@yahoo.com', 'Trust the financial Bot to become rich.', '89035204572', 'Let the financial Robot be your companion in the financial market. http://go.tazalus.com/0j0l', NULL, '2022-09-03 17:13:12', '2022-09-03 17:13:12'),
(437, 'CrytoMub', 'dudly125r@aol.com', 'Make dollars staying at home and launched this Bot.', '89039954865', 'Find out about the fastest way for a financial independence. http://go.tazalus.com/0j0l', NULL, '2022-09-03 19:23:42', '2022-09-03 19:23:42'),
(438, 'CrytoMub', 'b269049@bsnow.net', 'Turn $1 into $100 instantly. Use the financial Robot.', '89033428706', 'Online Bot will bring you wealth and satisfaction. http://go.tazalus.com/0j0l', NULL, '2022-09-03 21:38:49', '2022-09-03 21:38:49'),
(439, 'CrytoMub', 'fotis.hds@gmail.com', 'No need to stay awake all night long to earn money. Launch the robot.', '89032954583', 'Let the Robot bring you money while you rest. http://go.tazalus.com/0j0l', NULL, '2022-09-03 23:52:19', '2022-09-03 23:52:19'),
(440, 'CrytoMub', 'koike_teppei18@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89038629556', 'The huge income without investments is available. http://go.tazalus.com/0j0l', NULL, '2022-09-04 02:04:58', '2022-09-04 02:04:58'),
(441, 'CrytoMub', 'kimberlymcquien@aol.com', 'The best way for everyone who rushes for financial independence.', '89034962494', 'The best online job for retirees. Make your old ages rich. http://go.tazalus.com/0j0l', NULL, '2022-09-04 04:17:38', '2022-09-04 04:17:38'),
(442, 'CrytoMub', 'anastasiaredbear@yahoo.com', 'Try out the best financial robot in the Internet.', '89038283749', 'Looking for additional money? Try out the best financial instrument. http://go.tazalus.com/0j0l', NULL, '2022-09-04 06:26:50', '2022-09-04 06:26:50'),
(443, 'CrytoMub', 'mbwoodson@embarqmail.com', 'Even a child knows how to make money. Do you?', '89034015011', '# 1 financial expert in the net! Check out the new Robot. http://go.tazalus.com/0j0l', NULL, '2022-09-04 08:36:45', '2022-09-04 08:36:45'),
(444, 'CrytoMub', 'imawat2hot4u@yahoo.com', 'We have found the fastest way to be rich. Find it out here.', '89034867699', 'We know how to increase your financial stability. http://go.tazalus.com/0j0l', NULL, '2022-09-04 10:47:31', '2022-09-04 10:47:31'),
(445, 'CrytoMub', 'jettesiv@hotmail.com', 'Need money? Get it here easily?', '89035740464', 'Just one click can turn you dollar into $1000. http://go.tazalus.com/0j0l', NULL, '2022-09-04 12:58:01', '2022-09-04 12:58:01'),
(446, 'CrytoMub', 'khryszan17@gmail.com', 'Most successful people already use Robot. Do you?', '89034493572', 'Have no money? Earn it online. http://go.tygyguip.com/096s', NULL, '2022-09-04 15:09:19', '2022-09-04 15:09:19'),
(447, 'CrytoMub', 'deetau9220@bellsouth.net', 'Everyone can earn as much as he wants now.', '89039343747', 'Even a child knows how to make $100 today. http://go.tygyguip.com/096s', NULL, '2022-09-04 17:23:59', '2022-09-04 17:23:59'),
(448, 'CrytoMub', 'ivanlo2@yahoo.com', 'Watch your money grow while you invest with the Robot.', '89030479604', 'Online Bot will bring you wealth and satisfaction. http://go.tygyguip.com/096s', NULL, '2022-09-04 19:35:28', '2022-09-04 19:35:28'),
(449, 'CrytoMub', 'dais_tamara@yahoo.com', 'There is no need to look for a job anymore. Work online.', '89036345782', 'Financial Robot is #1 investment tool ever. Launch it! https://emdn.cl/promo', NULL, '2022-09-04 21:46:07', '2022-09-04 21:46:07'),
(450, 'CrytoMub', 'samabeer@hotmail.com', 'Check out the newest way to make a fantastic profit.', '89034541151', 'The financial Robot is your # 1 expert of making money. https://emdn.cl/promo', NULL, '2022-09-05 00:00:55', '2022-09-05 00:00:55'),
(451, 'CrytoMub', 'aracheotes@yahoo.com', 'Financial independence is what this robot guarantees.', '89039301821', 'Still not a millionaire? Fix it now! https://emdn.cl/promo', NULL, '2022-09-05 02:09:51', '2022-09-05 02:09:51'),
(452, 'CrytoMub', 'evilleguyizfun@aol.com', 'Make money online, staying at home this cold winter.', '89031673552', 'Even a child knows how to make $100 today with the help of this robot. https://emdn.cl/promo', NULL, '2022-09-05 04:21:17', '2022-09-05 04:21:17'),
(453, 'CrytoMub', 'arthorizon86@gmail.com', 'Financial robot keeps bringing you money while you sleep.', '89030582901', 'Online earnings are the easiest way for financial independence. https://emdn.cl/promo', NULL, '2022-09-05 06:29:57', '2022-09-05 06:29:57'),
(454, 'CrytoMub', 'gigtunes@msn.com', 'Robot never sleeps. It makes money for you 24/7.', '89035233031', 'The financial Robot is the most effective financial tool in the net! https://emdn.cl/promo', NULL, '2022-09-05 08:41:30', '2022-09-05 08:41:30'),
(455, 'CrytoMub', 'jlyons1217@aol.com', 'Financial robot is the best companion of rich people.', '89039042290', 'Your money keep grow 24/7 if you use the financial Robot. https://emdn.cl/promo', NULL, '2022-09-05 10:51:39', '2022-09-05 10:51:39'),
(456, 'CrytoMub', 'reazzi@hotmail.com', 'Need cash? Launch this robot and see what it can.', '89037774008', 'Automatic robot is the best start for financial independence. https://emdn.cl/promo', NULL, '2022-09-05 13:08:01', '2022-09-05 13:08:01'),
(457, 'CrytoMub', 'elainad9@cox.net', 'Feel free to buy everything you want with the additional income.', '89035907423', 'Try out the best financial robot in the Internet. https://emdn.cl/promo', NULL, '2022-09-05 15:17:55', '2022-09-05 15:17:55'),
(458, 'CrytoMub', 'Steenfam@outlook.com', 'Even a child knows how to make $100 today.', '89033612151', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://tiendaskon.com.es/promo', NULL, '2022-09-05 17:30:33', '2022-09-05 17:30:33'),
(459, 'CrytoMub', 'rk_mahendra@yahoo.com', 'Feel free to buy everything you want with the additional income.', '89032791535', 'Financial independence is what this robot guarantees. https://tiendaskon.com.es/promo', NULL, '2022-09-05 19:43:51', '2022-09-05 19:43:51'),
(460, 'CrytoMub', 'mdcmeprice@yahoo.com', 'No worries if you are fired. Work online.', '89030612697', 'The success formula is found. Learn more about it. https://tiendaskon.com.es/promo', NULL, '2022-09-05 21:54:36', '2022-09-05 21:54:36'),
(461, 'CrytoMub', 'stu@stuwilson.com', 'The huge income without investments is available, now!', '89034832963', 'The online financial Robot is your key to success. https://tiendaskon.com.es/promo', NULL, '2022-09-06 00:04:57', '2022-09-06 00:04:57'),
(462, 'CrytoMub', 'markygibbs1979@hotmail.com', 'Still not a millionaire? The financial robot will make you him!', '89036320673', 'Learn how to make hundreds of backs each day. https://tiendaskon.com.es/promo', NULL, '2022-09-06 02:18:09', '2022-09-06 02:18:09'),
(463, 'CrytoMub', 'Danahunts@gmail.com', 'No need to stay awake all night long to earn money. Launch the robot.', '89035444515', 'The online job can bring you a fantastic profit. https://tiendaskon.com.es/promo', NULL, '2022-09-06 04:31:44', '2022-09-06 04:31:44'),
(464, 'CrytoMub', '1284839724@qq.com', 'The online income is your key to success.', '89038900679', 'Making money in the net is easier now. https://tiendaskon.com.es/promo', NULL, '2022-09-06 06:41:46', '2022-09-06 06:41:46'),
(465, 'CrytoMub', 'cildacmariano@yahoo.com', 'Make your laptop a financial instrument with this program.', '89033661713', 'Automatic robot is the best start for financial independence. https://tiendaskon.com.es/promo', NULL, '2022-09-06 08:59:58', '2022-09-06 08:59:58'),
(466, 'CrytoMub', 'Arconguy@gmail.com', 'Most successful people already use Robot. Do you?', '89037754872', 'The huge income without investments is available, now! https://tiendaskon.com.es/promo', NULL, '2022-09-06 11:13:14', '2022-09-06 11:13:14'),
(467, 'CrytoMub', 'julia_roeck@hotmail.com', 'The best way for everyone who rushes for financial independence.', '89037444755', 'Make thousands of bucks. Pay nothing. https://tiendaskon.com.es/promo', NULL, '2022-09-06 13:26:15', '2022-09-06 13:26:15'),
(468, 'CrytoMub', 'Ausmodzhd@live.com', 'Try out the automatic robot to keep earning all day long.', '89030165217', 'Make your computer to be you earning instrument. https://hierbalimon.es/promo', NULL, '2022-09-06 15:39:40', '2022-09-06 15:39:40'),
(469, 'CrytoMub', 'watashiwatashi98@yahoo.com', 'Launch the financial Robot and do your business.', '89034846902', 'Make dollars just sitting home. https://hierbalimon.es/promo', NULL, '2022-09-06 17:53:46', '2022-09-06 17:53:46'),
(470, 'CrytoMub', 'John.Koehl@fmr.com', 'No need to work anymore. Just launch the robot.', '89036500124', 'Still not a millionaire? The financial robot will make you him! https://hierbalimon.es/promo', NULL, '2022-09-06 20:11:46', '2022-09-06 20:11:46'),
(471, 'CrytoMub', 'janmagdaet_maike92@yahoo.com', 'Attention! Here you can earn money online!', '89038514696', 'Need money? Get it here easily? https://hierbalimon.es/promo', NULL, '2022-09-06 22:30:12', '2022-09-06 22:30:12'),
(472, 'Email Influence', 'contact@t051m7.emailinfluence.xyz', 'Missing Out on Email Marketing?', '570-292-2823', 'Are you missing out on email marketing for your site? Running a site is a full time job. With limited time and resources, it be difficult to put energy in marketing your business. But with email marketing, promoting your business becomes a whole lot easier. Receive your free guide here https://thewayofemail.buzz/email/?lwhbd19@t051m7_io\r\n\r\nTo remove your site from our list visit https://thewayofemail.buzz/unsubscribe/?lwhbd19@t051m7_io', NULL, '2022-09-06 23:04:15', '2022-09-06 23:04:15'),
(473, 'Catherinakn', 'catherinakn@aol.com', 'I am not а jеаlоuѕ girl. Loоking for a ѕerіous manǃ..', '82752221842', 'Helloǃ\r\nPеrhaрs my mesѕagе іѕ toо ѕрeсіfic.\r\nВut mу оlder sistеr found a wondеrful mаn here аnd they hаve а greаt relаtionѕhiр, but whаt аbout mе?\r\nΙ am 24 уеаrѕ оld, Сathеrina, frоm the Czесh Rеpublіс, knоw Еngliѕh lаnguagе аlsо\r\nΑnd... better to ѕау іt іmmеdіаtеly. Ι аm biѕехuаl. Ι аm nоt ϳeаlouѕ of аnоther woman... eѕpеciаlly іf wе mаke lоve tоgеther.\r\nAh уеѕ, I cоok vеry tasty! аnd Ι lovе not only cоok ;))\r\nIm reаl girl and lооkіng for sеrious аnd hоt relatіоnshір...\r\nΑnywaу, уou саn find my profіlе hеrе: http://guistealperg.ml/pg-86086/', NULL, '2022-09-06 23:29:31', '2022-09-06 23:29:31'),
(474, 'CrytoMub', 'harpman77@aol.com', 'Rich people are rich because they use this robot.', '89035301359', 'Still not a millionaire? Fix it now! https://hierbalimon.es/promo', NULL, '2022-09-07 00:47:33', '2022-09-07 00:47:33'),
(475, 'CrytoMub', 'kevinsaidler@yahoo.com', 'The online income is your key to success.', '89031014024', 'No need to stay awake all night long to earn money. Launch the robot. https://hierbalimon.es/promo', NULL, '2022-09-07 02:59:35', '2022-09-07 02:59:35'),
(476, 'CrytoMub', 'tamnasr@hotmail.com', 'Attention! Here you can earn money online!', '89036442199', 'Need some more money? Robot will earn them really fast. https://hierbalimon.es/promo', NULL, '2022-09-07 05:09:49', '2022-09-07 05:09:49'),
(477, 'CrytoMub', 'meowandtaz@yahoo.com', 'Make yourself rich in future using this financial robot.', '89034959466', 'Everyone can earn as much as he wants now. https://hierbalimon.es/promo', NULL, '2022-09-07 07:19:36', '2022-09-07 07:19:36'),
(478, 'Email Influence', 'contact@9qk9td.thewayofemail.buzz', 'Missing Out on Email Marketing?', '061 943 94 68', 'Are you missing out on email marketing for your site? Running a site is a full time job. With limited time and resources, it be difficult to put energy in marketing your business. But with email marketing, promoting your business becomes a whole lot easier. Receive your free guide here https://thewayofemail.buzz/email/?lwhbd19@9qk9td_io\r\n\r\nTo remove your site from our list visit https://thewayofemail.buzz/unsubscribe/?lwhbd19@9qk9td_io', NULL, '2022-09-07 07:36:25', '2022-09-07 07:36:25'),
(479, 'CrytoMub', 'debbiemeluzio@yahoo.com', 'Financial robot is the best companion of rich people.', '89032644251', 'Need money? The financial robot is your solution. https://hierbalimon.es/promo', NULL, '2022-09-07 09:28:56', '2022-09-07 09:28:56'),
(480, 'CrytoMub', 'angelinecayleeboyd@yahoo.com', 'Make your laptop a financial instrument with this program.', '89031281522', 'We know how to become rich and do you? https://hierbalimon.es/promo', NULL, '2022-09-07 11:40:30', '2022-09-07 11:40:30'),
(481, 'CrytoMub', 'rahmanlogin@yahoo.com', 'Start making thousands of dollars every week just using this robot.', '89034467661', 'We know how to make our future rich and do you? https://hierbalimon.es/promo', NULL, '2022-09-07 13:51:13', '2022-09-07 13:51:13'),
(482, 'CrytoMub', 'unni.ajit@gmail.com', 'The financial Robot is the most effective financial tool in the net!', '89030116275', 'The huge income without investments is available. https://bodyandsoul.com.es/promo', NULL, '2022-09-07 16:03:33', '2022-09-07 16:03:33'),
(483, 'CrytoMub', 'hands69chaos@yahoo.com', 'Feel free to buy everything you want with the additional income.', '89031609602', 'The financial Robot is the most effective financial tool in the net! https://bodyandsoul.com.es/promo', NULL, '2022-09-07 18:18:08', '2022-09-07 18:18:08'),
(484, 'CrytoMub', 'franicisico_305@MSN.COM', 'Launch the best investment instrument to start making money today.', '89036726247', 'One dollar is nothing, but it can grow into $100 here. https://bodyandsoul.com.es/promo', NULL, '2022-09-07 20:32:38', '2022-09-07 20:32:38'),
(485, 'CrytoMub', 'Rovaunti.lewis@gmail.com', 'Attention! Here you can earn money online!', '89032782230', 'No need to worry about the future if your use this financial robot. https://bodyandsoul.com.es/promo', NULL, '2022-09-07 22:47:05', '2022-09-07 22:47:05'),
(486, 'CrytoMub', 'moveas@hotmail.com', 'Most successful people already use Robot. Do you?', '89030014068', 'Financial robot is your success formula is found. Learn more about it. https://bodyandsoul.com.es/promo', NULL, '2022-09-08 01:00:42', '2022-09-08 01:00:42'),
(487, 'CrytoMub', 'mrcnadian@gmail.com', 'Robot is the best way for everyone who looks for financial independence.', '89031662067', 'The additional income is available for everyone using this robot. https://bodyandsoul.com.es/promo', NULL, '2022-09-08 03:10:56', '2022-09-08 03:10:56'),
(488, 'CrytoMub', 'sehgal.mansi@gmail.com', 'Wow! This is a fastest way for a financial independence.', '89038824748', 'See how Robot makes $1000 from $1 of investment. https://bodyandsoul.com.es/promo', NULL, '2022-09-08 05:20:44', '2022-09-08 05:20:44'),
(489, 'CrytoMub', 'thewillisfam84@yahoo.com', 'Financial robot is your success formula is found. Learn more about it.', '89036217891', 'Everyone can earn as much as he wants suing this Bot. https://bodyandsoul.com.es/promo', NULL, '2022-09-08 07:30:03', '2022-09-08 07:30:03'),
(490, 'CrytoMub', 'stephanie001122@yahoo.com', 'Additional income is now available for anyone all around the world.', '89039967214', 'Only one click can grow up your money really fast. https://bodyandsoul.com.es/promo', NULL, '2022-09-08 09:42:19', '2022-09-08 09:42:19'),
(491, 'CrytoMub', 'tasawarabbas055@gmail.com', 'Everyone can earn as much as he wants suing this Bot.', '89034994612', 'Only one click can grow up your money really fast. https://bodyandsoul.com.es/promo', NULL, '2022-09-08 11:53:01', '2022-09-08 11:53:01'),
(492, 'CrytoMub', 'jocelynskelley@gmail.com', 'No need to worry about the future if your use this financial robot.', '89033953407', 'Financial robot is a great way to manage and increase your income. https://puertobelenn.cl/promo', NULL, '2022-09-08 14:04:11', '2022-09-08 14:04:11'),
(493, 'CrytoMub', 'SUCCESS4JEN@YAHOO.COM', 'Trust the financial Bot to become rich.', '89030577359', 'Launch the financial Robot and do your business. https://puertobelenn.cl/promo', NULL, '2022-09-08 16:18:02', '2022-09-08 16:18:02'),
(494, 'CrytoMub', 'robyn_mcdevitt@yahoo.com', 'See how Robot makes $1000 from $1 of investment.', '89036530170', 'Watch your money grow while you invest with the Robot. https://puertobelenn.cl/promo', NULL, '2022-09-08 18:31:19', '2022-09-08 18:31:19'),
(495, 'CrytoMub', 'kanderson2572@gmail.com', 'Make your money work for you all day long.', '89037113179', 'The best way for everyone who rushes for financial independence. http://64181.xml.admanage.com/xml/click/?m=64181&f=444355&r=1441385997&p=2&h=puertobelenn.cl%2Fpromo', NULL, '2022-09-08 23:00:13', '2022-09-08 23:00:13'),
(496, 'CrytoMub', 'apathymongor@yahoo.com', 'Make money 24/7 without any efforts and skills.', '89033188752', 'Launch the best investment instrument to start making money today. http://pro-spray.pl/fr/przelacz_culture?jezyk=en&redirect=https%3A%2F%2Fpuertobelenn.cl%2Fpromo', NULL, '2022-09-09 01:12:35', '2022-09-09 01:12:35'),
(497, 'CrytoMub', 'agm.mixologist@workmail.com', 'The online job can bring you a fantastic profit.', '89038913381', 'Rich people are rich because they use this robot. http://dikoms.ru/bitrix/rk.php?goto=https://puertobelenn.cl/promo', NULL, '2022-09-09 03:23:24', '2022-09-09 03:23:24'),
(498, 'CrytoMub', 'davidedwards@googlemail.com', 'Your money work even when you sleep.', '89037444502', 'We know how to become rich and do you? http://rostovklad.ru/go.php?https://puertobelenn.cl/promo', NULL, '2022-09-09 05:34:29', '2022-09-09 05:34:29'),
(499, 'CrytoMub', 'alisha.gonzales44@yahoo.com', 'Make your money work for you all day long.', '89031025070', 'It is the best time to launch the Robot to get more money. http://www.braintrust.gr/msinb/customer_visits.asp?link=https://puertobelenn.cl/promo', NULL, '2022-09-09 07:46:31', '2022-09-09 07:46:31'),
(500, 'CrytoMub', 'bobwilliams@bobsgraphics.com', 'Still not a millionaire? The financial robot will make you him!', '89039018133', 'Need cash? Launch this robot and see what it can. http://www.beauty.at/redir?link=https://puertobelenn.cl/promo', NULL, '2022-09-09 09:54:05', '2022-09-09 09:54:05'),
(501, 'CrytoMub', 'bigcitystyles@gmail.com', 'Make money 24/7 without any efforts and skills.', '89035440273', 'No need to worry about the future if your use this financial robot. http://wap.tomyamclub.com/wap_api/get_msisdn.php?URL=https://puertobelenn.cl/promo', NULL, '2022-09-09 12:02:30', '2022-09-09 12:02:30'),
(502, 'CrytoMub', 'Gravity@yahoo.com', 'Only one click can grow up your money really fast.', '89039767640', 'Watch your money grow while you invest with the Robot. https://kinkyliterature.com/axds.php?action=click&id=&url=https://puertobelenn.cl/promo', NULL, '2022-09-09 14:10:43', '2022-09-09 14:10:43'),
(503, 'CrytoMub', 'lea16morgan@yahoo.com', 'Need money? Get it here easily! Just press this to launch the robot.', '89039951304', 'Make money in the internet using this Bot. It really works! https://www.birds.cz/avif/redirect.php?from=avif.obs.php&url=https://puertobelenn.cl/promo', NULL, '2022-09-09 16:20:52', '2022-09-09 16:20:52'),
(504, 'CrytoMub', 'jtglywou@freemailboxy.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89037351600', 'Small investments can bring tons of dollars fast. http://blogas.ateitis.lt/?wptouch_switch=desktop&redirect=https%3A%2F%2Fpuertobelenn.cl%2Fpromo', NULL, '2022-09-09 18:31:42', '2022-09-09 18:31:42'),
(505, 'CrytoMub', 'paulienneyt@hotmail.com', 'Let your money grow into the capital with this Robot.', '89033654475', 'Need some more money? Robot will earn them really fast. http://m.shopinanaheim.com/redirect.aspx?url=https://puertobelenn.cl/promo', NULL, '2022-09-09 20:44:36', '2022-09-09 20:44:36'),
(506, 'CrytoMub', 'pami.brown@yahoo.com', 'Buy everything you want earning money online.', '89036248252', 'No need to worry about the future if your use this financial robot. https://kindara.zendesk.com/login?return_to=https%3A%2F%2Fpuertobelenn.cl%2Fpromo', NULL, '2022-09-09 22:55:08', '2022-09-09 22:55:08'),
(507, 'CrytoMub', 'rak625@hotmail.com', 'No need to worry about the future if your use this financial robot.', '89036062583', 'Financial robot is your success formula is found. Learn more about it. https://quehacerensantiago.cl/promo', NULL, '2022-09-10 01:03:26', '2022-09-10 01:03:26'),
(508, 'CrytoMub', 'smallboi23@gmail.com', 'Financial robot guarantees everyone stability and income.', '89034451137', 'Robot never sleeps. It makes money for you 24/7. https://quehacerensantiago.cl/promo', NULL, '2022-09-10 03:10:45', '2022-09-10 03:10:45'),
(509, 'CrytoMub', 'simonosgerby@hotmail.com', 'The online job can bring you a fantastic profit.', '89035502090', 'Invest $1 today to make $1000 tomorrow. https://quehacerensantiago.cl/promo', NULL, '2022-09-10 05:18:48', '2022-09-10 05:18:48'),
(510, 'CrytoMub', 'Samantha.jordan248@gmail.com', 'Need some more money? Robot will earn them really fast.', '89037103416', 'Have no money? It’s easy to earn them online here. https://quehacerensantiago.cl/promo', NULL, '2022-09-10 07:26:51', '2022-09-10 07:26:51'),
(511, 'CrytoMub', 'pittmpvjkansaran@hotmail.com', 'Robot is the best way for everyone who looks for financial independence.', '89031720617', 'Let the Robot bring you money while you rest. https://quehacerensantiago.cl/promo', NULL, '2022-09-10 09:34:35', '2022-09-10 09:34:35'),
(512, 'CrytoMub', 'ianb1873@googlemail.com', 'Launch the robot and let it bring you money.', '89034951301', 'Even a child knows how to make $100 today with the help of this robot. https://quehacerensantiago.cl/promo', NULL, '2022-09-10 11:43:59', '2022-09-10 11:43:59'),
(513, 'CrytoMub', 'nishamalukani@gmail.com', 'Launch the financial Bot now to start earning.', '89034159528', 'Watch your money grow while you invest with the Robot. https://quehacerensantiago.cl/promo', NULL, '2022-09-10 13:52:03', '2022-09-10 13:52:03'),
(514, 'CrytoMub', 'shan32m@yahoo.com', 'The financial Robot is your # 1 expert of making money.', '89032851470', 'We have found the fastest way to be rich. Find it out here. http://em.gohawaii.com/mtr40/c2.php?HVCB/26693011/218753/H/N/V/https://varatradgardsforening.se/promo', NULL, '2022-09-10 16:02:41', '2022-09-10 16:02:41'),
(515, 'CrytoMub', 'melony_m2007@yahoo.com', 'Try out the automatic robot to keep earning all day long.', '89031536239', 'Launch the best investment instrument to start making money today. https://www.cyprussecurity.com/click_count.php?link=https://varatradgardsforening.se/promo', NULL, '2022-09-10 18:11:24', '2022-09-10 18:11:24'),
(516, 'CrytoMub', 'spornickaltovise@yahoo.com', 'Feel free to buy everything you want with the additional income.', '89037308111', 'The success formula is found. Learn more about it. http://partyroll.org/member/?wptouch_switch=desktop&redirect=https%3A%2F%2Fvaratradgardsforening.se%2Fpromo', NULL, '2022-09-10 20:21:56', '2022-09-10 20:21:56'),
(517, 'CrytoMub', 'karenb@centurylink.net', 'It is the best time to launch the Robot to get more money.', '89039387332', 'The fastest way to make your wallet thick is found. http://lp-inside.ru/go?https://varatradgardsforening.se/promo', NULL, '2022-09-10 22:30:38', '2022-09-10 22:30:38'),
(518, 'CrytoMub', 'soomeh324@gmail.com', 'See how Robot makes $1000 from $1 of investment.', '89037629996', 'Launch the financial Bot now to start earning. http://kouhei-ne.jp/link3/link3.cgi?mode=cnt&no=8&hpurl=https://varatradgardsforening.se%2Fpromo/', NULL, '2022-09-11 00:40:57', '2022-09-11 00:40:57'),
(519, 'CrytoMub', 'kdavis1937@att.net', 'Make dollars just sitting home.', '89039139794', 'Launch the robot and let it bring you money. http://www.wave24.net/cgi-bin/linkrank/out.cgi?id=108216&cg=4&url=varatradgardsforening.se%2Fpromo/', NULL, '2022-09-11 02:47:56', '2022-09-11 02:47:56'),
(520, 'CrytoMub', 'Migue.luisfernando5@gmail.com', 'Looking forward for income? Get it online.', '89034756572', 'One click of the robot can bring you thousands of bucks. http://go.tygyguip.com/096s', NULL, '2022-09-11 04:55:42', '2022-09-11 04:55:42'),
(521, 'CrytoMub', 'hongliquan@126.com', 'Try out the best financial robot in the Internet.', '89033689853', 'The success formula is found. Learn more about it. http://go.tygyguip.com/096s', NULL, '2022-09-11 07:22:01', '2022-09-11 07:22:01'),
(522, 'CrytoMub', 'scn021751@yahoo.com', 'Even a child knows how to make money. This robot is what you need!', '89034062037', 'The best way for everyone who rushes for financial independence. http://go.tygyguip.com/096s', NULL, '2022-09-11 09:39:16', '2022-09-11 09:39:16'),
(523, 'CrytoMub', 'williams.jodonna@gmail.com', 'Financial robot keeps bringing you money while you sleep.', '89038655395', 'Feel free to buy everything you want with the additional income. http://go.tygyguip.com/096s', NULL, '2022-09-11 11:49:14', '2022-09-11 11:49:14'),
(524, 'CrytoMub', 'car.lvk.e.l.l.e.y@gmail.com', 'Financial robot guarantees everyone stability and income.', '89030709527', 'The financial Robot works for you even when you sleep. http://go.tygyguip.com/096s', NULL, '2022-09-11 13:57:15', '2022-09-11 13:57:15'),
(525, 'CrytoMub', 'twinkie_91@yahoo.com', 'Attention! Financial robot may bring you millions!', '89035759433', 'Automatic robot is the best start for financial independence. http://go.tygyguip.com/096s', NULL, '2022-09-11 16:10:07', '2022-09-11 16:10:07');
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(526, 'CrytoMub', 'simon.wiesler@hotmail.com', 'Even a child knows how to make $100 today with the help of this robot.', '89036832627', 'Check out the new financial tool, which can make you rich. http://go.tygyguip.com/096s', NULL, '2022-09-11 18:18:52', '2022-09-11 18:18:52'),
(527, 'CrytoMub', 'aseteritto@gmail.com', 'Need cash? Launch this robot and see what it can.', '89030252874', 'Start making thousands of dollars every week just using this robot. http://go.tygyguip.com/096s', NULL, '2022-09-11 20:29:56', '2022-09-11 20:29:56'),
(528, 'CrytoMub', 'aleonesio@cox.net', 'No need to stay awake all night long to earn money. Launch the robot.', '89034980044', 'Make your computer to be you earning instrument. http://go.tygyguip.com/096s', NULL, '2022-09-11 22:41:55', '2022-09-11 22:41:55'),
(529, 'CrytoMub', 'ozma90@gmail.com', 'The financial Robot works for you even when you sleep.', '89034287543', 'Watch your money grow while you invest with the Robot. http://go.tygyguip.com/096s', NULL, '2022-09-12 00:50:38', '2022-09-12 00:50:38'),
(530, 'CrytoMub', 'nutshell840@gmail.com', 'The financial Robot works for you even when you sleep.', '89034900794', 'Rich people are rich because they use this robot. http://go.tygyguip.com/096s', NULL, '2022-09-12 02:57:47', '2022-09-12 02:57:47'),
(531, 'CrytoMub', 'Jamestgoode@gmail.com', 'Earning $1000 a day is easy if you use this financial Robot.', '89031118696', 'Online earnings are the easiest way for financial independence. http://go.tygyguip.com/096s', NULL, '2022-09-12 05:04:53', '2022-09-12 05:04:53'),
(532, 'CrytoMub', 'revathi223@gmail.com', 'This robot will help you to make hundreds of dollars each day.', '89038706083', 'Robot never sleeps. It makes money for you 24/7. http://go.tygyguip.com/096s', NULL, '2022-09-12 07:13:34', '2022-09-12 07:13:34'),
(533, 'CrytoMub', 'hugosousasa@gmail.com', 'Have no money? It’s easy to earn them online here.', '89036951795', 'Need money? Earn it without leaving your home. http://go.tygyguip.com/096s', NULL, '2022-09-12 09:29:53', '2022-09-12 09:29:53'),
(534, 'CrytoMub', 'ashlyn.banci@gmail.com', 'The huge income without investments is available, now!', '89034498110', 'Money, money! Make more money with financial robot! http://go.tygyguip.com/096s', NULL, '2022-09-12 11:40:08', '2022-09-12 11:40:08'),
(535, 'CrytoMub', 'jlbazzel@yahoo.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', '89037602666', 'Launch the financial Robot and do your business. http://go.tygyguip.com/096s', NULL, '2022-09-12 13:49:30', '2022-09-12 13:49:30'),
(536, 'CrytoMub', 'syl24xxx@hotmail.com', 'The financial Robot is your # 1 expert of making money.', '89033089483', 'Trust the financial Bot to become rich. http://go.tygyguip.com/096s', NULL, '2022-09-12 15:58:20', '2022-09-12 15:58:20'),
(537, 'CrytoMub', 'Mewithstupid2@gmail.com', 'Financial robot guarantees everyone stability and income.', '89039001083', 'Trust the financial Bot to become rich. http://go.tygyguip.com/096s', NULL, '2022-09-12 18:12:43', '2022-09-12 18:12:43'),
(538, 'CrytoMub', 'alecksmart@gmail.com', 'Make thousands of bucks. Financial robot will help you to do it!', '89034292081', 'Make money 24/7 without any efforts and skills. https://allnews.elk.pl/wfdl', NULL, '2022-09-12 20:45:39', '2022-09-12 20:45:39'),
(539, 'CrytoMub', 'Gigisomoza@gmail.com', 'Using this Robot is the best way to make you rich.', '89032485014', 'Feel free to buy everything you want with the additional income. https://allnews.elk.pl/wfdl', NULL, '2022-09-12 22:55:32', '2022-09-12 22:55:32'),
(540, 'CrytoMub', 'tarousukoritu@aol.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89036296377', 'Every your dollar can turn into $100 after you lunch this Robot. https://allnews.elk.pl/wfdl', NULL, '2022-09-13 01:04:39', '2022-09-13 01:04:39'),
(541, 'CrytoMub', 'cognac72@mail.com', 'Your computer can bring you additional income if you use this Robot.', '89032641980', 'Invest $1 today to make $1000 tomorrow. https://allnews.elk.pl/wfdl', NULL, '2022-09-13 03:13:36', '2022-09-13 03:13:36'),
(542, 'CrytoMub', 'gypsyhchick00@aol.com', 'One dollar is nothing, but it can grow into $100 here.', '89038938476', 'Make thousands of bucks. Pay nothing. https://allcnews.xyz/wfdl', NULL, '2022-09-13 05:23:47', '2022-09-13 05:23:47'),
(543, 'CrytoMub', 'webbhochiminh@orangeinbox.org', 'Small investments can bring tons of dollars fast.', '89038878941', 'Check out the automatic Bot, which works for you 24/7. https://allcnews.xyz/wfdl', NULL, '2022-09-13 07:32:32', '2022-09-13 07:32:32'),
(544, 'CrytoMub', 'gracesgibson@gmail.com', 'This robot will help you to make hundreds of dollars each day.', '89031087938', 'There is no need to look for a job anymore. Work online. https://allcnews.xyz/wfdl', NULL, '2022-09-13 09:42:34', '2022-09-13 09:42:34'),
(545, 'CrytoMub', 'kahpo@comcast.net', 'Still not a millionaire? Fix it now!', '89036479956', 'Let the Robot bring you money while you rest. https://allcnews.xyz/wfdl', NULL, '2022-09-13 11:56:39', '2022-09-13 11:56:39'),
(546, 'CrytoMub', 'reed92dixon@yahoo.com', 'Make money 24/7 without any efforts and skills.', '89035189440', 'The fastest way to make you wallet thick is here. https://allcnews.xyz/wfdl', NULL, '2022-09-13 14:26:11', '2022-09-13 14:26:11'),
(547, 'CrytoMub', 'tobycoco@comcast.net', 'No need to worry about the future if your use this financial robot.', '89030431775', 'No need to work anymore. Just launch the robot. http://go.tygyguip.com/0j35', NULL, '2022-09-13 16:57:34', '2022-09-13 16:57:34'),
(548, 'CrytoMub', 'mallikajoseph@gmail.com', 'The online income is your key to success.', '89039076671', 'The online income is the easiest ways to make you dream come true. https://allcryptonnews.xyz/0j35', NULL, '2022-09-13 19:10:08', '2022-09-13 19:10:08'),
(549, 'CrytoMub', 'greenday_manoj@yahoo.com', 'Rich people are rich because they use this robot.', '89034131923', 'Looking forward for income? Get it online. https://allcryptonnews.xyz/0j35', NULL, '2022-09-13 21:21:46', '2022-09-13 21:21:46'),
(550, 'CrytoMub', 'wnhqsy@gmail.com', 'Making money can be extremely easy if you use this Robot.', '89038191528', 'Financial robot is a great way to manage and increase your income. https://allcryptonnews.xyz/0j35', NULL, '2022-09-13 23:30:48', '2022-09-13 23:30:48'),
(551, 'CrytoMub', 'steadyon39@yahoo.com', 'The online income is your key to success.', '89035232018', 'Everyone who needs money should try this Robot out. https://allcryptonnews.xyz/0j35', NULL, '2022-09-14 02:02:30', '2022-09-14 02:02:30'),
(552, 'CrytoMub', 'mcrgurl25@yahoo.com', 'Financial robot keeps bringing you money while you sleep.', '89039691362', 'Most successful people already use Robot. Do you? https://allcryptonnews.xyz/0j35', NULL, '2022-09-14 04:13:57', '2022-09-14 04:13:57'),
(553, 'CrytoMub', 'herrera8849@sbcglobal.net', 'Still not a millionaire? Fix it now!', '89037866681', 'Invest $1 today to make $1000 tomorrow. https://allcryptonnews.xyz/0j35', NULL, '2022-09-14 06:21:10', '2022-09-14 06:21:10'),
(554, 'CrytoMub', 'lolitasgarci@hotmail.com', 'Make your money work for you all day long.', '89034028570', 'Robot never sleeps. It makes money for you 24/7. https://allcryptonnews.xyz/0j35', NULL, '2022-09-14 08:29:24', '2022-09-14 08:29:24'),
(555, 'CrytoMub', 'daniel.aubele@t-mobile.com', 'Trust your dollar to the Robot and see how it grows to $100.', '89031621779', 'Your computer can bring you additional income if you use this Robot. https://allcryptonnews.xyz/0j35', NULL, '2022-09-14 10:40:27', '2022-09-14 10:40:27'),
(556, 'CrytoMub', 'pquirozg@gmail.com', 'Launch the best investment instrument to start making money today.', '89035848707', 'Earning $1000 a day is easy if you use this financial Robot. https://allcryptonnews.xyz/0j35', NULL, '2022-09-14 12:50:29', '2022-09-14 12:50:29'),
(557, 'CrytoMub', 'cstar1996@yahoo.com', 'Attention! Financial robot may bring you millions!', '89031380865', 'Launch the financial Robot and do your business. https://allcryptonnews.xyz/0j35', NULL, '2022-09-14 14:58:33', '2022-09-14 14:58:33'),
(558, 'CrytoMub', 'gaokuitig2q7@163.com', 'Buy everything you want earning money online.', '89038860735', 'The online financial Robot is your key to success. https://allcryptonnews.xyz/0j35', NULL, '2022-09-14 17:11:26', '2022-09-14 17:11:26'),
(559, 'CrytoMub', 'jakiramuse@yahoo.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89036804767', 'Try out the automatic robot to keep earning all day long. https://go.tygyguip.com/0j35', NULL, '2022-09-14 19:22:36', '2022-09-14 19:22:36'),
(560, 'CrytoMub', 'priya219@yahoo.com', 'Making money in the net is easier now.', '89037661338', 'Have no money? Earn it online. https://go.tygyguip.com/0j35', NULL, '2022-09-14 21:34:20', '2022-09-14 21:34:20'),
(561, 'CrytoMub', 'babyballa027@aol.com', 'The financial Robot works for you even when you sleep.', '89030128978', 'Let your money grow into the capital with this Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-14 23:44:19', '2022-09-14 23:44:19'),
(562, 'CrytoMub', 'skj@feverfilms.org', 'The financial Robot is your # 1 expert of making money.', '89033802193', 'Join the society of successful people who make money here. https://go.tygyguip.com/0j35', NULL, '2022-09-15 01:53:18', '2022-09-15 01:53:18'),
(563, 'CrytoMub', 'andy.1964@live.com', 'The online income is the easiest ways to make you dream come true.', '89031800654', '# 1 financial expert in the net! Check out the new Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-15 04:00:43', '2022-09-15 04:00:43'),
(564, 'CrytoMub', 'clos2pin69@yahoo.com', 'Let the financial Robot be your companion in the financial market.', '89035276527', 'Even a child knows how to make money. Do you? https://go.tygyguip.com/0j35', NULL, '2022-09-15 06:07:57', '2022-09-15 06:07:57'),
(565, 'CrytoMub', 'jabberjaw74@yahoo.com', 'The online income is the easiest ways to make you dream come true.', '89035131324', 'One click of the robot can bring you thousands of bucks. https://go.tygyguip.com/0j35', NULL, '2022-09-15 08:15:30', '2022-09-15 08:15:30'),
(566, 'CrytoMub', 'sasfaw@tx.rr.com', 'Need money? The financial robot is your solution.', '89038633166', 'No need to work anymore. Just launch the robot. https://go.tygyguip.com/0j35', NULL, '2022-09-15 10:24:20', '2022-09-15 10:24:20'),
(567, 'CrytoMub', 'stevenschmittou@yahoo.com', 'Automatic robot is the best start for financial independence.', '89032179120', 'Find out about the easiest way of money earning. https://go.tygyguip.com/0j35', NULL, '2022-09-15 11:52:57', '2022-09-15 11:52:57'),
(568, 'CrytoMub', 'cswoods@zoomtown.com', 'Financial robot is your success formula is found. Learn more about it.', '89032276959', 'Looking forward for income? Get it online. https://go.tygyguip.com/0j35', NULL, '2022-09-15 14:02:21', '2022-09-15 14:02:21'),
(569, 'CrytoMub', 'huggablecreepers@gmail.com', 'Financial robot is a great way to manage and increase your income.', '89030656474', 'The financial Robot is the most effective financial tool in the net! https://go.tygyguip.com/0j35', NULL, '2022-09-15 16:16:44', '2022-09-15 16:16:44'),
(570, 'CrytoMub', 'sergio5497@hotmail.com', 'Financial independence is what everyone needs.', '89033489378', 'Your money keep grow 24/7 if you use the financial Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-15 18:28:16', '2022-09-15 18:28:16'),
(571, 'CrytoMub', 'verks27@sbcglobal.net', 'Check out the newest way to make a fantastic profit.', '89035673194', 'This robot can bring you money 24/7. https://go.tygyguip.com/0j35', NULL, '2022-09-15 20:39:31', '2022-09-15 20:39:31'),
(572, 'CrytoMub', 'evilsnowbunny@gmail.com', 'Earn additional money without efforts and skills.', '89033970950', 'Your money work even when you sleep. https://go.tygyguip.com/0j35', NULL, '2022-09-15 22:50:55', '2022-09-15 22:50:55'),
(573, 'CrytoMub', 'cheerchick07_08@yahoo.com', 'See how Robot makes $1000 from $1 of investment.', '89032894266', 'Have no money? It’s easy to earn them online here. https://go.tygyguip.com/0j35', NULL, '2022-09-16 01:03:25', '2022-09-16 01:03:25'),
(574, 'CrytoMub', 'viectimnguoi2612.vn@gmail.com', 'Everyone who needs money should try this Robot out.', '89030999371', 'Financial robot guarantees everyone stability and income. https://go.tygyguip.com/0j35', NULL, '2022-09-16 03:11:19', '2022-09-16 03:11:19'),
(575, 'CrytoMub', 'dabely01@hotmail.com', 'The online income is the easiest ways to make you dream come true.', '89034781469', 'Automatic robot is the best start for financial independence. https://go.tygyguip.com/0j35', NULL, '2022-09-16 05:18:31', '2022-09-16 05:18:31'),
(576, 'CrytoMub', 'johnyhogg@gmail.com', 'Launch the best investment instrument to start making money today.', '89037178122', 'Your computer can bring you additional income if you use this Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-16 07:47:26', '2022-09-16 07:47:26'),
(577, 'CrytoMub', 'mhjones_12@yahoo.com', 'Everyone can earn as much as he wants suing this Bot.', '89036059689', 'Robot never sleeps. It makes money for you 24/7. https://go.tygyguip.com/0j35', NULL, '2022-09-16 09:56:04', '2022-09-16 09:56:04'),
(578, 'CrytoMub', 'sea2kcom@gmail.com', 'Even a child knows how to make money. Do you?', '89038122964', 'The financial Robot is your # 1 expert of making money. https://go.tygyguip.com/0j35', NULL, '2022-09-16 12:06:04', '2022-09-16 12:06:04'),
(579, 'CrytoMub', 'garciav4@sbcglobal.net', 'The huge income without investments is available.', '89037688240', 'Launch the best investment instrument to start making money today. https://go.tygyguip.com/0j35', NULL, '2022-09-16 14:14:09', '2022-09-16 14:14:09'),
(580, 'CrytoMub', 'gmi555@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89033415595', 'The additional income for everyone. https://go.tygyguip.com/0j35', NULL, '2022-09-16 16:24:01', '2022-09-16 16:24:01'),
(581, 'CrytoMub', 'rfoguth@sbcglobal.net', 'Financial Robot is #1 investment tool ever. Launch it!', '89038506214', 'Online earnings are the easiest way for financial independence. https://go.tygyguip.com/0j35', NULL, '2022-09-16 18:35:11', '2022-09-16 18:35:11'),
(582, 'CrytoMub', 'haggisturtle@aol.com', 'Learn how to make hundreds of backs each day.', '89037508535', 'Launch the robot and let it bring you money. https://go.tygyguip.com/0j35', NULL, '2022-09-16 20:46:33', '2022-09-16 20:46:33'),
(583, 'CrytoMub', 'jhirano@yahoo.com', 'Need money? The financial robot is your solution.', '89030903252', 'Start making thousands of dollars every week just using this robot. https://go.tygyguip.com/0j35', NULL, '2022-09-16 23:17:52', '2022-09-16 23:17:52'),
(584, 'CrytoMub', 'magdi_b@hotmail.com', 'Make money 24/7 without any efforts and skills.', '89038638039', 'Invest $1 today to make $1000 tomorrow. https://go.tygyguip.com/0j35', NULL, '2022-09-17 01:26:23', '2022-09-17 01:26:23'),
(585, 'CrytoMub', 'dairymansused@yahoo.com', 'No need to worry about the future if your use this financial robot.', '89035763044', 'Learn how to make hundreds of backs each day. https://go.tygyguip.com/0j35', NULL, '2022-09-17 03:34:22', '2022-09-17 03:34:22'),
(586, 'CrytoMub', 'charmed_kitty@hotmail.com', 'Launch the robot and let it bring you money.', '89030190814', 'Making money is very easy if you use the financial Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-17 05:42:23', '2022-09-17 05:42:23'),
(587, 'CrytoMub', 'pdehaas@hotmail.com', 'Start making thousands of dollars every week.', '89032264069', 'Financial independence is what everyone needs. https://go.tygyguip.com/0j35', NULL, '2022-09-17 07:52:40', '2022-09-17 07:52:40'),
(588, 'CrytoMub', 'trumblersv@bigmir.net', 'Making money in the net is easier now.', '89035238792', 'Make money in the internet using this Bot. It really works! https://go.tygyguip.com/0j35', NULL, '2022-09-17 10:02:58', '2022-09-17 10:02:58'),
(589, 'CrytoMub', 'mw.hayashi@gmail.com', 'The huge income without investments is available.', '89031308842', 'The financial Robot is the most effective financial tool in the net! https://go.tygyguip.com/0j35', NULL, '2022-09-17 12:13:38', '2022-09-17 12:13:38'),
(590, 'CrytoMub', 'r537@netzero.com', 'Invest $1 today to make $1000 tomorrow.', '89035322362', 'The online financial Robot is your key to success. https://go.tygyguip.com/0j35', NULL, '2022-09-17 14:22:55', '2022-09-17 14:22:55'),
(591, 'CrytoMub', 'iravalenzuela1988@yahoo.com', 'Thousands of bucks are guaranteed if you use this robot.', '89038552796', 'Earn additional money without efforts and skills. https://go.tygyguip.com/0j35', NULL, '2022-09-17 16:32:19', '2022-09-17 16:32:19'),
(592, 'CrytoMub', 'DebOBrien@comcast.net', 'See how Robot makes $1000 from $1 of investment.', '89038902778', 'No worries if you are fired. Work online. https://go.tygyguip.com/0j35', NULL, '2022-09-17 18:45:10', '2022-09-17 18:45:10'),
(593, 'CrytoMub', 'gary.public@gmail.com', 'Additional income is now available for anyone all around the world.', '89032632422', 'Online Bot will bring you wealth and satisfaction. https://go.tygyguip.com/0j35', NULL, '2022-09-17 20:59:10', '2022-09-17 20:59:10'),
(594, 'CrytoMub', 'tito.tahir@gmail.com', 'Check out the new financial tool, which can make you rich.', '89032376503', 'Rich people are rich because they use this robot. https://go.tygyguip.com/0j35', NULL, '2022-09-17 23:15:40', '2022-09-17 23:15:40'),
(595, 'CrytoMub', 'snkmclean@yahoo.com', 'Make your laptop a financial instrument with this program.', '89035761872', 'Online job can be really effective if you use this Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-18 01:25:02', '2022-09-18 01:25:02'),
(596, 'CrytoMub', 'perreira@woh.rr.com', 'No need to stay awake all night long to earn money. Launch the robot.', '89030999607', 'Financial robot is your success formula is found. Learn more about it. https://go.tygyguip.com/0j35', NULL, '2022-09-18 03:52:32', '2022-09-18 03:52:32'),
(597, 'CrytoMub', 'KERRY.DRAKE33@YAHOO.COM', 'Let the Robot bring you money while you rest.', '89032453474', 'Only one click can grow up your money really fast. https://go.tygyguip.com/0j35', NULL, '2022-09-18 05:59:31', '2022-09-18 05:59:31'),
(598, 'CrytoMub', 'grimreaper185@yahoo.com', 'Feel free to buy everything you want with the additional income.', '89030933768', 'Have no money? It’s easy to earn them online here. https://go.tygyguip.com/0j35', NULL, '2022-09-18 08:08:29', '2022-09-18 08:08:29'),
(599, 'CrytoMub', 'paulodanieldias@hotmail.com', 'Buy everything you want earning money online.', '89036354331', 'Launch the robot and let it bring you money. https://go.tygyguip.com/0j35', NULL, '2022-09-18 10:19:47', '2022-09-18 10:19:47'),
(600, 'CrytoMub', 'cwhitehead5600@yahoo.com', 'Financial robot guarantees everyone stability and income.', '89038023625', 'Using this Robot is the best way to make you rich. https://go.tygyguip.com/0j35', NULL, '2022-09-18 12:29:42', '2022-09-18 12:29:42'),
(601, 'CrytoMub', 'wertybuty@gmail.com', 'Launch the robot and let it bring you money.', '89038637416', 'Invest $1 today to make $1000 tomorrow. https://go.tygyguip.com/0j35', NULL, '2022-09-18 14:39:37', '2022-09-18 14:39:37'),
(602, 'CrytoMub', 'vomalley50@gmail.com', 'Find out about the easiest way of money earning.', '89030586191', 'The online financial Robot is your key to success. https://go.tygyguip.com/0j35', NULL, '2022-09-18 16:48:25', '2022-09-18 16:48:25'),
(603, 'CrytoMub', 'cyprien.chatteleyn@caramail.com', 'The online income is the easiest ways to make you dream come true.', '89034049597', 'The fastest way to make your wallet thick is found. https://go.tygyguip.com/0j35', NULL, '2022-09-18 18:58:33', '2022-09-18 18:58:33'),
(604, 'CrytoMub', 'samuel_sse@hotmail.com', 'No worries if you are fired. Work online.', '89039534538', 'Make dollars staying at home and launched this Bot. https://go.tygyguip.com/0j35', NULL, '2022-09-18 21:07:48', '2022-09-18 21:07:48'),
(605, 'CrytoMub', 'satelitex233@chainlinkthemovie.com', 'There is no need to look for a job anymore. Work online.', '89038245666', 'Using this Robot is the best way to make you rich. https://go.tygyguip.com/0j35', NULL, '2022-09-18 23:18:38', '2022-09-18 23:18:38'),
(606, 'CrytoMub', 'butlinron50@gmail.com', 'Start making thousands of dollars every week just using this robot.', '89032613548', 'Launch the robot and let it bring you money. https://go.tygyguip.com/0j35', NULL, '2022-09-19 01:26:17', '2022-09-19 01:26:17'),
(607, 'CrytoMub', 'micahstone20@gmail.com', 'Earn additional money without efforts.', '89037163677', 'The online job can bring you a fantastic profit. https://go.tygyguip.com/0j35', NULL, '2022-09-19 03:38:44', '2022-09-19 03:38:44'),
(608, 'CrytoMub', 'mike17504@yahoo.com', 'Financial robot keeps bringing you money while you sleep.', '89031462343', 'No need to stay awake all night long to earn money. Launch the robot. https://go.tygyguip.com/0j35', NULL, '2022-09-19 05:46:56', '2022-09-19 05:46:56'),
(609, 'CrytoMub', 'semcd1969@windstream.net', 'Still not a millionaire? The financial robot will make you him!', '89033533480', 'Have no financial skills? Let Robot make money for you. https://go.tygyguip.com/0j35', NULL, '2022-09-19 07:55:00', '2022-09-19 07:55:00'),
(610, 'CrytoMub', 'tremendiss@yahoo.com', 'Learn how to make hundreds of backs each day.', '89033375529', 'Turn $1 into $100 instantly. Use the financial Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-19 10:04:27', '2022-09-19 10:04:27'),
(611, 'CrytoMub', 'Brandon71599@gmail.com', 'Let the Robot bring you money while you rest.', '89037843445', 'Find out about the fastest way for a financial independence. https://go.tygyguip.com/0j35', NULL, '2022-09-19 12:14:48', '2022-09-19 12:14:48'),
(612, 'CrytoMub', 'ghettogirl171282@yahoo.com', 'No need to worry about the future if your use this financial robot.', '89037736951', 'Have no financial skills? Let Robot make money for you. https://go.tygyguip.com/0j35', NULL, '2022-09-19 14:24:12', '2022-09-19 14:24:12'),
(613, 'CrytoMub', 'ian2483@hotmail.com', 'Rich people are rich because they use this robot.', '89034935725', '# 1 financial expert in the net! Check out the new Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-19 16:37:47', '2022-09-19 16:37:47'),
(614, 'CrytoMub', 'ash_10ll@yahoo.com', 'Even a child knows how to make money. Do you?', '89031395532', 'Financial robot is your success formula is found. Learn more about it. https://go.tygyguip.com/0j35', NULL, '2022-09-19 18:48:50', '2022-09-19 18:48:50'),
(615, 'CrytoMub', 'ranoosh.3aysh.jakar@hotmail.com', 'Make your laptop a financial instrument with this program.', '89030288325', 'Making money is very easy if you use the financial Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-19 20:59:02', '2022-09-19 20:59:02'),
(616, 'CrytoMub', 'danny-729@hotmail.com', 'Launch the financial Bot now to start earning.', '89034723122', 'Even a child knows how to make $100 today. https://go.tygyguip.com/0j35', NULL, '2022-09-19 23:10:12', '2022-09-19 23:10:12'),
(617, 'CrytoMub', 'james51665@triad.rr.com', 'Most successful people already use Robot. Do you?', '89038014840', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://go.tygyguip.com/0j35', NULL, '2022-09-20 01:19:38', '2022-09-20 01:19:38'),
(618, 'CrytoMub', 'Jeremy.walker2@ntlworld.net', 'Online job can be really effective if you use this Robot.', '89037882987', 'Find out about the easiest way of money earning. https://go.tygyguip.com/0j35', NULL, '2022-09-20 03:27:11', '2022-09-20 03:27:11'),
(619, 'CrytoMub', 'masaleh@hotmail.com', 'The financial Robot is your future wealth and independence.', '89038648168', 'Looking forward for income? Get it online. https://go.tygyguip.com/0j35', NULL, '2022-09-20 05:35:24', '2022-09-20 05:35:24'),
(620, 'CrytoMub', 'qiaomey_renny@hotmail.com', 'Wow! This is a fastest way for a financial independence.', '89039314383', 'The additional income for everyone. https://go.tygyguip.com/0j35', NULL, '2022-09-20 07:48:13', '2022-09-20 07:48:13'),
(621, 'CrytoMub', 'j_a_c_o_b_05_15_96@yahoo.com', 'Check out the new financial tool, which can make you rich.', '89032135211', 'No need to work anymore while you have the Robot launched! https://go.tygyguip.com/0j35', NULL, '2022-09-20 09:56:44', '2022-09-20 09:56:44'),
(622, 'CrytoMub', 'marcusdowd23@gmail.com', 'Even a child knows how to make $100 today with the help of this robot.', '89039311306', 'Just one click can turn you dollar into $1000. https://go.tygyguip.com/0j35', NULL, '2022-09-20 12:06:42', '2022-09-20 12:06:42'),
(623, 'CrytoMub', 'miszxtink@hotmail.com', 'Check out the newest way to make a fantastic profit.', '89033882992', 'Start making thousands of dollars every week. https://go.tygyguip.com/0j35', NULL, '2022-09-20 14:16:17', '2022-09-20 14:16:17'),
(624, 'CrytoMub', 'barbaranovotney@yahoo.com', 'Still not a millionaire? The financial robot will make you him!', '89037971067', 'Even a child knows how to make $100 today with the help of this robot. https://go.tygyguip.com/0j35', NULL, '2022-09-20 16:28:48', '2022-09-20 16:28:48'),
(625, 'CrytoMub', 'taylorkinney10@gmail.com', 'Trust your dollar to the Robot and see how it grows to $100.', '89033588462', 'Start your online work using the financial Robot. https://go.tygyguip.com/0j35', NULL, '2022-09-20 18:39:10', '2022-09-20 18:39:10'),
(626, 'CrytoMub', 'brandnner4@sbcglobal.net', 'Just one click can turn you dollar into $1000.', '89033291727', 'Have no financial skills? Let Robot make money for you. https://go.hinebixi.com/0j35', NULL, '2022-09-20 20:48:21', '2022-09-20 20:48:21'),
(627, 'CrytoMub', 'adhiambomercyline64@yahoo.com', 'Financial robot guarantees everyone stability and income.', '89035739090', 'Money, money! Make more money with financial robot! https://go.hinebixi.com/0j35', NULL, '2022-09-20 22:57:44', '2022-09-20 22:57:44'),
(628, 'CrytoMub', 'Alpettychic@yahoo.com', 'Everyone who needs money should try this Robot out.', '89038770645', 'Launch the robot and let it bring you money. https://go.hinebixi.com/0j35', NULL, '2022-09-21 01:06:08', '2022-09-21 01:06:08'),
(629, 'CrytoMub', 'mitchelllm10@gmail.com', 'Most successful people already use Robot. Do you?', '89038983865', 'The financial Robot is the most effective financial tool in the net! https://go.hinebixi.com/0j35', NULL, '2022-09-21 03:18:06', '2022-09-21 03:18:06'),
(630, 'CrytoMub', 'bubbles898@gmail.com', 'Find out about the easiest way of money earning.', '89031815551', 'Financial robot guarantees everyone stability and income. https://go.hinebixi.com/0j35', NULL, '2022-09-21 05:29:07', '2022-09-21 05:29:07'),
(631, 'CrytoMub', 'petrelli2733@zoominternet.net', 'Let the Robot bring you money while you rest.', '89035754880', 'Financial robot is your success formula is found. Learn more about it. https://go.hinebixi.com/0j35', NULL, '2022-09-21 07:37:52', '2022-09-21 07:37:52'),
(632, 'CrytoMub', 'shaylene@live.com', 'Making money in the net is easier now.', '89030941052', 'No need to stay awake all night long to earn money. Launch the robot. https://go.hinebixi.com/0j35', NULL, '2022-09-21 09:45:21', '2022-09-21 09:45:21'),
(633, 'CrytoMub', 'srabb3@gmail.com', 'Make thousands of bucks. Pay nothing.', '89034438317', 'One dollar is nothing, but it can grow into $100 here. https://go.hinebixi.com/0j35', NULL, '2022-09-21 11:55:53', '2022-09-21 11:55:53'),
(634, 'CrytoMub', 'bukortyna@yahoo.com', 'Make thousands of bucks. Pay nothing.', '89038372057', 'Earning money in the Internet is easy if you use Robot. https://go.hinebixi.com/0j35', NULL, '2022-09-21 14:03:39', '2022-09-21 14:03:39'),
(635, 'CrytoMub', 'bmajorsgrace5@gmail.com', 'Financial independence is what this robot guarantees.', '89034188188', 'Financial robot is your success formula is found. Learn more about it. https://go.hinebixi.com/0j35', NULL, '2022-09-21 16:18:55', '2022-09-21 16:18:55'),
(636, 'CrytoMub', 'sariarif62@hotmail.com', '# 1 financial expert in the net! Check out the new Robot.', '89037102969', 'Have no financial skills? Let Robot make money for you. https://go.hinebixi.com/0j35', NULL, '2022-09-21 18:30:00', '2022-09-21 18:30:00'),
(637, 'CrytoMub', 'racdonatelli@gmail.com', 'Online job can be really effective if you use this Robot.', '89037817538', 'One click of the robot can bring you thousands of bucks. https://go.obermatsa.com/0j35', NULL, '2022-09-21 20:40:54', '2022-09-21 20:40:54'),
(638, 'CrytoMub', 'XdraderX@hotmail.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89039389433', 'Making money is very easy if you use the financial Robot. https://go.obermatsa.com/0j35', NULL, '2022-09-21 22:52:51', '2022-09-21 22:52:51'),
(639, 'CrytoMub', 'asawyer624@aim.com', 'This robot can bring you money 24/7.', '89033041993', 'Check out the newest way to make a fantastic profit. https://go.obermatsa.com/0j35', NULL, '2022-09-22 01:07:08', '2022-09-22 01:07:08'),
(640, 'CrytoMub', 'anna9-0324@hotmail.com', 'Launch the financial Robot and do your business.', '89031367826', 'Small investments can bring tons of dollars fast. https://go.obermatsa.com/0j35', NULL, '2022-09-22 02:21:39', '2022-09-22 02:21:39'),
(641, 'CrytoMub', 'miannuzzi33@gmail.com', 'Even a child knows how to make $100 today with the help of this robot.', '89039753391', 'Check out the newest way to make a fantastic profit. https://go.obermatsa.com/0j35', NULL, '2022-09-22 04:31:02', '2022-09-22 04:31:02'),
(642, 'CrytoMub', 'PRINCESS178350@YAHOO.COM', 'One click of the robot can bring you thousands of bucks.', '89030332269', 'Looking for additional money? Try out the best financial instrument. https://go.obermatsa.com/0j35', NULL, '2022-09-22 06:42:45', '2022-09-22 06:42:45'),
(643, 'CrytoMub', 'teresamayville@comcast.net', 'No need to work anymore. Just launch the robot.', '89036485367', 'Everyone can earn as much as he wants now. https://go.obermatsa.com/0j35', NULL, '2022-09-22 08:51:31', '2022-09-22 08:51:31'),
(644, 'CrytoMub', 'rubyjtuesday@yahoo.com', 'One click of the robot can bring you thousands of bucks.', '89038531153', 'We know how to increase your financial stability. https://go.obermatsa.com/0j35', NULL, '2022-09-22 11:20:27', '2022-09-22 11:20:27'),
(645, 'Abuzafor', 'swajonphotography@gmail.com', 'Test message', '01977749733', 'Hlw', NULL, '2022-09-22 11:39:58', '2022-09-22 11:39:58'),
(646, 'CrytoMub', 'little_razial@hotmail.com', 'Make yourself rich in future using this financial robot.', '89035059517', 'Make thousands every week working online here. https://go.obermatsa.com/0j35', NULL, '2022-09-22 13:30:50', '2022-09-22 13:30:50'),
(647, 'CrytoMub', 'itsokimanemokid@yahoo.com', 'Check out the newest way to make a fantastic profit.', '89033423461', 'Make your money work for you all day long. https://go.obermatsa.com/0j35', NULL, '2022-09-22 15:40:59', '2022-09-22 15:40:59'),
(648, 'CrytoMub', 'boydsheronda79@yahoo.com', 'We have found the fastest way to be rich. Find it out here.', '89030865771', 'Check out the newest way to make a fantastic profit. https://go.obermatsa.com/0j35', NULL, '2022-09-22 17:55:18', '2022-09-22 17:55:18'),
(649, 'CrytoMub', 'seboss_benoit@msn.com', 'Thousands of bucks are guaranteed if you use this robot.', '89037336282', 'Financial robot guarantees everyone stability and income. https://go.obermatsa.com/0j35', NULL, '2022-09-22 20:07:52', '2022-09-22 20:07:52'),
(650, 'CrytoMub', 'danielednfld@yahoo.com', 'The huge income without investments is available.', '89030280567', 'Looking forward for income? Get it online. https://go.obermatsa.com/0j35', NULL, '2022-09-22 22:18:24', '2022-09-22 22:18:24'),
(651, 'CrytoMub', 'missleks@aol.com', 'This robot can bring you money 24/7.', '89032583538', 'Make money online, staying at home this cold winter. https://go.obermatsa.com/0j35', NULL, '2022-09-23 00:31:32', '2022-09-23 00:31:32'),
(652, 'CrytoMub', '733corey@gmail.com', 'Even a child knows how to make $100 today with the help of this robot.', '89032406076', 'Check out the newest way to make a fantastic profit. https://go.obermatsa.com/0j35', NULL, '2022-09-23 02:39:55', '2022-09-23 02:39:55'),
(653, 'CrytoMub', 'amontgomery7012@yahoo.com', 'The online job can bring you a fantastic profit.', '89039512162', 'Thousands of bucks are guaranteed if you use this robot. https://go.obermatsa.com/0j35', NULL, '2022-09-23 04:47:21', '2022-09-23 04:47:21'),
(654, 'CrytoMub', 's.ha.deioa@gmail.com', 'Make your computer to be you earning instrument.', '89032299642', 'Attention! Financial robot may bring you millions! https://go.obermatsa.com/0j35', NULL, '2022-09-23 06:56:19', '2022-09-23 06:56:19'),
(655, 'CrytoMub', 'rimbriano@gmail.com', 'Make thousands of bucks. Pay nothing.', '89033375406', 'Make thousands of bucks. Financial robot will help you to do it! https://go.obermatsa.com/0j35', NULL, '2022-09-23 09:06:12', '2022-09-23 09:06:12'),
(656, 'CrytoMub', 'recognizetoad@hamstermail.net', 'Financial independence is what this robot guarantees.', '89030164846', 'One dollar is nothing, but it can grow into $100 here. https://go.obermatsa.com/0j35', NULL, '2022-09-23 11:19:55', '2022-09-23 11:19:55'),
(657, 'CrytoMub', 'AthenaLoveGodess@aol.com', 'Make money online, staying at home this cold winter.', '89039088594', 'Launch the best investment instrument to start making money today. https://go.obermatsa.com/0j35', NULL, '2022-09-23 13:28:03', '2022-09-23 13:28:03'),
(658, 'CrytoMub', '9890710583@gmail.com', 'Have no money? It’s easy to earn them online here.', '89036147419', 'No need to stay awake all night long to earn money. Launch the robot. https://go.obermatsa.com/0j35', NULL, '2022-09-23 15:36:00', '2022-09-23 15:36:00'),
(659, 'CrytoMub', 'diwan.dxb@hotmail.com', 'Make yourself rich in future using this financial robot.', '89033033945', 'Financial robot keeps bringing you money while you sleep. https://go.obermatsa.com/0j35', NULL, '2022-09-23 17:55:54', '2022-09-23 17:55:54'),
(660, 'CrytoMub', 'ronaldo_1978_09@hotmail.com', 'Earning $1000 a day is easy if you use this financial Robot.', '89030017423', 'Robot is the best solution for everyone who wants to earn. https://go.obermatsa.com/0j35', NULL, '2022-09-23 20:05:32', '2022-09-23 20:05:32'),
(661, 'CrytoMub', 'fishfishy@mail.com', 'It is the best time to launch the Robot to get more money.', '89034705947', 'Financial robot keeps bringing you money while you sleep. https://go.obermatsa.com/0j35', NULL, '2022-09-23 22:13:33', '2022-09-23 22:13:33'),
(662, 'CrytoMub', 'vadol98@gmail.com', 'It is the best time to launch the Robot to get more money.', '89031288287', 'Looking for additional money? Try out the best financial instrument. https://go.obermatsa.com/0j35', NULL, '2022-09-24 00:21:45', '2022-09-24 00:21:45'),
(663, 'CrytoMub', 'mumms11@aol.com', 'Still not a millionaire? The financial robot will make you him!', '89034026671', 'The additional income for everyone. https://go.obermatsa.com/0j35', NULL, '2022-09-24 02:27:04', '2022-09-24 02:27:04'),
(664, 'CrytoMub', 'alanamyrie@yahoo.com', 'Still not a millionaire? The financial robot will make you him!', '89038573070', 'Launch the robot and let it bring you money. https://go.obermatsa.com/0j35', NULL, '2022-09-24 04:33:42', '2022-09-24 04:33:42'),
(665, 'CrytoMub', 'sab-082@hotmail.com', 'This robot will help you to make hundreds of dollars each day.', '89031407674', 'Attention! Financial robot may bring you millions! https://go.obermatsa.com/0j35', NULL, '2022-09-24 06:40:32', '2022-09-24 06:40:32'),
(666, 'CrytoMub', 'm.osiecka81@googlemail.com', 'We know how to make our future rich and do you?', '89030540738', 'The huge income without investments is available, now! https://go.obermatsa.com/0j35', NULL, '2022-09-24 08:46:46', '2022-09-24 08:46:46'),
(667, 'CrytoMub', 'yogeshkumarbalu@gmail.com', 'The additional income for everyone.', '89031558538', 'Even a child knows how to make money. Do you? https://go.obermatsa.com/0j35', NULL, '2022-09-24 10:55:45', '2022-09-24 10:55:45'),
(668, 'CrytoMub', 'instylejan@aol.com', 'Launch the best investment instrument to start making money today.', '89035015056', 'The additional income for everyone. https://go.obermatsa.com/0j35', NULL, '2022-09-24 13:03:20', '2022-09-24 13:03:20'),
(669, 'CrytoMub', 'kelseyg32792@gmail.com', 'The best online job for retirees. Make your old ages rich.', '89036941167', 'Every your dollar can turn into $100 after you lunch this Robot. https://go.obermatsa.com/0j35', NULL, '2022-09-24 15:10:10', '2022-09-24 15:10:10'),
(670, 'CrytoMub', 'smorlian@hotmail.com', 'We have found the fastest way to be rich. Find it out here.', '89031822102', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://go.obermatsa.com/0j35', NULL, '2022-09-24 17:20:11', '2022-09-24 17:20:11'),
(671, 'CrytoMub', 'vahoagie@verizon.net', 'Make your money work for you all day long.', '89034244472', 'Start your online work using the financial Robot. https://go.obermatsa.com/0j35', NULL, '2022-09-24 19:28:29', '2022-09-24 19:28:29'),
(672, 'CrytoMub', 'angelasfranesa@ymail.com', 'The additional income is available for everyone using this robot.', '89030005890', 'Make your money work for you all day long. https://go.obermatsa.com/0j35', NULL, '2022-09-24 21:34:44', '2022-09-24 21:34:44'),
(673, 'CrytoMub', 'pravinkumar.soni@tcs.com', 'Buy everything you want earning money online.', '89034131363', 'Everyone can earn as much as he wants now. https://go.obermatsa.com/0j35', NULL, '2022-09-24 23:47:44', '2022-09-24 23:47:44'),
(674, 'CrytoMub', 'not4trix@hotmail.com', 'Try out the best financial robot in the Internet.', '89039719840', 'Online earnings are the easiest way for financial independence. https://go.obermatsa.com/0j35', NULL, '2022-09-25 01:53:55', '2022-09-25 01:53:55'),
(675, 'CrytoMub', 'riff@hitel.net', 'Launch the financial Bot now to start earning.', '89038083785', 'Trust the financial Bot to become rich. https://go.obermatsa.com/0j35', NULL, '2022-09-25 04:03:27', '2022-09-25 04:03:27'),
(676, 'CrytoMub', 'sbodrqbn@myemailboxmail.com', 'Make your money work for you all day long.', '89036790137', 'Make yourself rich in future using this financial robot. https://go.obermatsa.com/0j35', NULL, '2022-09-25 06:09:03', '2022-09-25 06:09:03'),
(677, 'CrytoMub', 'nwphxguy@yahoo.com', 'Need some more money? Robot will earn them really fast.', '89032673187', 'The financial Robot is your future wealth and independence. https://go.obermatsa.com/0j35', NULL, '2022-09-25 08:14:03', '2022-09-25 08:14:03'),
(678, 'CrytoMub', 'esteortz@gmail.com', 'The financial Robot works for you even when you sleep.', '89031960003', 'Financial robot is your success formula is found. Learn more about it. https://go.obermatsa.com/0j35', NULL, '2022-09-25 10:20:47', '2022-09-25 10:20:47'),
(679, 'CrytoMub', 'bella242424@hotmail.com', 'Attention! Here you can earn money online!', '89033478978', 'The financial Robot works for you even when you sleep. https://go.obermatsa.com/0j35', NULL, '2022-09-25 12:29:49', '2022-09-25 12:29:49'),
(680, 'CrytoMub', 'crutcher83@yahoo.com', 'Even a child knows how to make $100 today with the help of this robot.', '89035052903', 'Find out about the fastest way for a financial independence. https://go.obermatsa.com/0j35', NULL, '2022-09-25 14:35:52', '2022-09-25 14:35:52'),
(681, 'CrytoMub', 'tan_cc72@yahoo.com', 'Attention! Here you can earn money online!', '89037224727', 'Financial robot guarantees everyone stability and income. https://go.obermatsa.com/0j35', NULL, '2022-09-25 16:43:41', '2022-09-25 16:43:41'),
(682, 'CrytoMub', 'emma.tyler@allianz.com', 'The financial Robot is your future wealth and independence.', '89034108421', 'The online income is your key to success. https://go.obermatsa.com/0j35', NULL, '2022-09-25 18:51:38', '2022-09-25 18:51:38'),
(683, 'CrytoMub', 'reccoro_54@hotmail.com', 'Check out the new financial tool, which can make you rich.', '89031935425', 'Financial robot is a great way to manage and increase your income. https://go.obermatsa.com/0j35', NULL, '2022-09-25 20:58:25', '2022-09-25 20:58:25'),
(684, 'CrytoMub', 'sandi_1706@hotmail.com', 'Earn additional money without efforts and skills.', '89036062697', 'Trust your dollar to the Robot and see how it grows to $100. https://go.obermatsa.com/0j35', NULL, '2022-09-25 23:04:14', '2022-09-25 23:04:14'),
(685, 'CrytoMub', 'cindy.eads@yahoo.com', 'Need cash? Launch this robot and see what it can.', '89033691450', 'Earning $1000 a day is easy if you use this financial Robot. https://go.obermatsa.com/0j35', NULL, '2022-09-26 01:11:01', '2022-09-26 01:11:01'),
(686, 'CrytoMub', 'vivipad1@yahoo.com', 'The online financial Robot is your key to success.', '89036943516', 'Launch the robot and let it bring you money. https://go.obermatsa.com/0j35', NULL, '2022-09-26 03:16:02', '2022-09-26 03:16:02'),
(687, 'CrytoMub', 'bigdaddytee@gmail.com', 'Make money online, staying at home this cold winter.', '89036023938', 'Launch the robot and let it bring you money. https://go.obermatsa.com/0j35', NULL, '2022-09-26 05:26:16', '2022-09-26 05:26:16'),
(688, 'CrytoMub', 'balaskf@yahoo.com', 'Learn how to make hundreds of backs each day.', '89036980332', 'Wow! This Robot is a great start for an online career. https://go.obermatsa.com/0j35', NULL, '2022-09-26 07:30:05', '2022-09-26 07:30:05'),
(689, 'CrytoMub', 'sierrabny256@yahoo.com', 'The online job can bring you a fantastic profit.', '89034302985', 'Only one click can grow up your money really fast. https://go.obermatsa.com/0j35', NULL, '2022-09-26 09:35:59', '2022-09-26 09:35:59'),
(690, 'CrytoMub', '4222mcg@y7mail.com', 'This robot will help you to make hundreds of dollars each day.', '89039997332', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://go.obermatsa.com/0j35', NULL, '2022-09-26 11:44:11', '2022-09-26 11:44:11'),
(691, 'CrytoMub', 'mguarnev@hotmail.com', 'This robot can bring you money 24/7.', '89033889375', 'Find out about the fastest way for a financial independence. https://go.obermatsa.com/0j35', NULL, '2022-09-26 13:49:45', '2022-09-26 13:49:45'),
(692, 'CrytoMub', 'bis.onbkhl@gmail.com', 'Your money work even when you sleep.', '89039088038', 'The best online job for retirees. Make your old ages rich. https://go.obermatsa.com/0j35', NULL, '2022-09-26 15:56:26', '2022-09-26 15:56:26'),
(693, 'CrytoMub', 'rpotchoiba@gmail.com', 'Looking forward for income? Get it online.', '89039319212', 'Find out about the fastest way for a financial independence. https://go.obermatsa.com/0j35', NULL, '2022-09-26 18:08:16', '2022-09-26 18:08:16'),
(694, 'CrytoMub', 'gump_m@ccsdistrict.org', 'Looking for additional money? Try out the best financial instrument.', '89037635137', 'Even a child knows how to make $100 today with the help of this robot. https://go.obermatsa.com/0j35', NULL, '2022-09-26 20:25:02', '2022-09-26 20:25:02'),
(695, 'CrytoMub', 'suksmai@hotmail.com', 'Additional income is now available for anyone all around the world.', '89038204700', 'Earn additional money without efforts and skills. https://go.obermatsa.com/0j35', NULL, '2022-09-26 22:39:38', '2022-09-26 22:39:38'),
(696, 'CrytoMub', 'joc.lyn@hotmail.com', 'Even a child knows how to make money. Do you?', '89038398292', 'Need money? The financial robot is your solution. https://go.obermatsa.com/0j35', NULL, '2022-09-27 00:49:19', '2022-09-27 00:49:19'),
(697, 'CrytoMub', 'JulietNow@aol.com', 'The financial Robot is the most effective financial tool in the net!', '89034975032', 'Make your money work for you all day long. https://go.obermatsa.com/0j35', NULL, '2022-09-27 02:57:12', '2022-09-27 02:57:12'),
(698, 'CrytoMub', 'Btina71@gmail.com', 'Looking for additional money? Try out the best financial instrument.', '89031624199', 'One click of the robot can bring you thousands of bucks. https://go.obermatsa.com/0j35', NULL, '2022-09-27 05:05:48', '2022-09-27 05:05:48'),
(699, 'CrytoMub', 'craigbw@hotmail.com', 'Even a child knows how to make $100 today with the help of this robot.', '89030584491', 'Online Bot will bring you wealth and satisfaction. https://go.obermatsa.com/0j35', NULL, '2022-09-27 07:11:46', '2022-09-27 07:11:46'),
(700, 'Hortense Burston', 'hacker@aiahouse.hu', 'Your Site Has Been Hacked', '42-35-00-26', 'Your Site Has Been Hacked\r\n\r\nPLEASE FORWARD THIS EMAIL TO SOMEONE IN YOUR COMPANY WHO IS ALLOWED TO MAKE IMPORTANT DECISIONS!\r\n\r\nWe have hacked your website https://www.zealtechbd.com and extracted your databases.\r\n\r\nHow did this happen?\r\n\r\nOur team has found a vulnerability within your site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract your entire database and move the information to an offshore server.\r\n\r\nWhat does this mean?\r\n\r\nWe will systematically go through a series of steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails found they will be e-mailed that their information has been sold or leaked and your https://www.zealtechbd.com was at fault thusly damaging your reputation and having angry customers/associates with whatever angry customers/associates do. Lastly any links that you have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index our targets.\r\n\r\nHow do I stop this?\r\n\r\nWe are willing to refrain from destroying your site’s reputation for a small fee. The current fee is $2500 in bitcoins (BTC).\r\n\r\nPlease send the bitcoin to the following Bitcoin address (Copy and paste as it is case sensitive):\r\n\r\n3LKf6NWhJA8L5cmD5p9u6WksjW9SC2jauu\r\n\r\nOnce you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 7 days after receiving this e-mail or the database leak, e-mails dispatched, and de-index of your site WILL start!\r\n\r\nHow do I get Bitcoins?\r\n\r\nYou can easily buy bitcoins via several websites or even offline from a Bitcoin-ATM. \r\n\r\nWhat if I don’t pay?\r\n\r\nIf you decide not to pay, we will start the attack at the indicated date and uphold it until you do, there’s no counter measure to this, you will only end up wasting more money trying to find a solution. We will completely destroy your reputation amongst google and your customers.\r\n\r\nThis is not a hoax, do not reply to this email, don’t try to reason or negotiate, we will not read any replies. Once you have paid we will stop what we were doing and you will never hear from us again!\r\n\r\nPlease note that Bitcoin is anonymous and no one will find out that you have complied.', NULL, '2022-09-27 08:35:52', '2022-09-27 08:35:52'),
(701, 'CrytoMub', 'jamie.specter@gmail.com', 'We know how to become rich and do you?', '89030109296', 'Financial robot is a great way to manage and increase your income. https://go.obermatsa.com/0j35', NULL, '2022-09-27 09:20:42', '2022-09-27 09:20:42'),
(702, 'CrytoMub', 'the_kingtrent25@yahoo.com', 'One dollar is nothing, but it can grow into $100 here.', '89030015847', 'Still not a millionaire? Fix it now! https://go.obermatsa.com/0j35', NULL, '2022-09-27 11:27:38', '2022-09-27 11:27:38'),
(703, 'CrytoMub', 'babytuiala@yahoo.com', 'Launch the robot and let it bring you money.', '89039271006', 'Still not a millionaire? The financial robot will make you him! https://go.obermatsa.com/0j35', NULL, '2022-09-27 13:33:58', '2022-09-27 13:33:58'),
(704, 'CrytoMub', 'dhollymejia@yahoo.com', 'Find out about the fastest way for a financial independence.', '89034650803', 'Making money in the net is easier now. https://go.obermatsa.com/0j35', NULL, '2022-09-27 15:42:28', '2022-09-27 15:42:28'),
(705, 'CrytoMub', 'baltic.airways@airpost.net', 'Financial independence is what everyone needs.', '89039551539', 'One click of the robot can bring you thousands of bucks. https://go.obermatsa.com/0j35', NULL, '2022-09-27 17:51:45', '2022-09-27 17:51:45'),
(706, 'CrytoMub', 'bubba61589s@yahoo.com', 'Financial robot is the best companion of rich people.', '89033428520', 'Need money? Get it here easily? https://go.obermatsa.com/0j35', NULL, '2022-09-27 20:00:58', '2022-09-27 20:00:58'),
(707, 'CrytoMub', 'presty9@aol.com', 'Make money online, staying at home this cold winter.', '89033740811', 'This robot can bring you money 24/7. https://go.obermatsa.com/0j35', NULL, '2022-09-27 22:08:24', '2022-09-27 22:08:24'),
(708, 'CrytoMub', 'atharnklodhi@yahoo.com', 'Have no financial skills? Let Robot make money for you.', '89036546961', 'We know how to increase your financial stability. https://go.obermatsa.com/0j35', NULL, '2022-09-28 00:14:09', '2022-09-28 00:14:09'),
(709, 'CrytoMub', 'angelinadj@gmail.com', 'Earning $1000 a day is easy if you use this financial Robot.', '89038743356', 'Financial robot guarantees everyone stability and income. http://go.obermatsa.com/0ja8', NULL, '2022-09-28 18:02:11', '2022-09-28 18:02:11'),
(710, 'CrytoMub', 'federick_herrera15@hotmail.com', 'Launch the best investment instrument to start making money today.', '89030564405', 'Provide your family with the money in age. Launch the Robot! http://go.obermatsa.com/0ja8', NULL, '2022-09-29 00:43:31', '2022-09-29 00:43:31'),
(711, 'CrytoMub', 'rastifano@ra.rockwell.com', 'Your computer can bring you additional income if you use this Robot.', '89034948317', 'The online income is your key to success. http://go.obermatsa.com/0ja8', NULL, '2022-09-29 07:40:31', '2022-09-29 07:40:31'),
(712, 'CrytoMub', 'gator2114@aol.com', 'Try out the automatic robot to keep earning all day long.', '89039739255', 'Watch your money grow while you invest with the Robot. http://go.obermatsa.com/0ja8', NULL, '2022-09-29 14:40:56', '2022-09-29 14:40:56'),
(713, 'CrytoMub', 'jessesquirrel@nixonbox.com', 'Start making thousands of dollars every week just using this robot.', '89038427589', 'Making money in the net is easier now. https://go.diryjyaz.com/0j35', NULL, '2022-09-29 21:42:53', '2022-09-29 21:42:53');
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(714, 'CrytoMub', 'hempbykaty@gmail.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', '89038896428', 'Your computer can bring you additional income if you use this Robot. https://go.diryjyaz.com/0j35', NULL, '2022-09-30 08:44:28', '2022-09-30 08:44:28'),
(715, 'CrytoMub', 'babiimia92@yahoo.com', 'Trust your dollar to the Robot and see how it grows to $100.', '89035652518', 'One click of the robot can bring you thousands of bucks. https://go.diryjyaz.com/0j35', NULL, '2022-09-30 15:27:25', '2022-09-30 15:27:25'),
(716, 'CrytoMub', 'ras.travels@gmail.com', 'Everyone who needs money should try this Robot out.', '89032368837', 'Small investments can bring tons of dollars fast. https://go.diryjyaz.com/0j35', NULL, '2022-09-30 22:05:41', '2022-09-30 22:05:41'),
(717, 'Addie Primm', 'hacker@cannedrainbow.nl', 'Your Site Has Been Hacked', '052 677 84 15', 'Your Site Has Been Hacked\r\n\r\nPLEASE FORWARD THIS EMAIL TO SOMEONE IN YOUR COMPANY WHO IS ALLOWED TO MAKE IMPORTANT DECISIONS!\r\n\r\nWe have hacked your website http://www.zealtechbd.com and extracted your databases.\r\n\r\nHow did this happen?\r\n\r\nOur team has found a vulnerability within your site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract your entire database and move the information to an offshore server.\r\n\r\nWhat does this mean?\r\n\r\nWe will systematically go through a series of steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails found they will be e-mailed that their information has been sold or leaked and your http://www.zealtechbd.com was at fault thusly damaging your reputation and having angry customers/associates with whatever angry customers/associates do. Lastly any links that you have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index our targets.\r\n\r\nHow do I stop this?\r\n\r\nWe are willing to refrain from destroying your site’s reputation for a small fee. The current fee is $2500 in bitcoins (BTC).\r\n\r\nPlease send the bitcoin to the following Bitcoin address (Copy and paste as it is case sensitive): \r\n\r\nbc1qmghwkrrxlh62k4r530lgfxucum65087ya00wvz\r\n\r\n Once you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 7 days after receiving this e-mail or the database leak, e-mails dispatched, and de-index of your site WILL start!\r\n\r\nHow do I get Bitcoins?\r\n\r\nYou can easily buy bitcoins via several websites or even offline from a Bitcoin-ATM. \r\n\r\nWhat if I don’t pay?\r\n\r\nIf you decide not to pay, we will start the attack at the indicated date and uphold it until you do, there’s no counter measure to this, you will only end up wasting more money trying to find a solution. We will completely destroy your reputation amongst google and your customers.\r\n\r\nThis is not a hoax, do not reply to this email, don’t try to reason or negotiate, we will not read any replies. Once you have paid we will stop what we were doing and you will never hear from us again!\r\n\r\nPlease note that Bitcoin is anonymous and no one will find out that you have complied.', NULL, '2022-10-01 00:56:12', '2022-10-01 00:56:12'),
(718, 'CrytoMub', 'soccercrazy2009@sbcglobal.net', 'Need cash? Launch this robot and see what it can.', '89034056198', 'There is no need to look for a job anymore. Work online. https://go.diryjyaz.com/0j35', NULL, '2022-10-01 05:03:31', '2022-10-01 05:03:31'),
(719, 'CrytoMub', 'rachita_kumar@agilent.com', 'Start your online work using the financial Robot.', '89037860730', 'Attention! Here you can earn money online! https://go.diryjyaz.com/0j35', NULL, '2022-10-01 11:43:43', '2022-10-01 11:43:43'),
(720, 'CrytoMub', 'molinanunez@gmail.com', 'Online Bot will bring you wealth and satisfaction.', '89032166546', 'Earning money in the Internet is easy if you use Robot. https://go.diryjyaz.com/0j35', NULL, '2022-10-01 18:28:18', '2022-10-01 18:28:18'),
(721, 'CrytoMub', 'steph_cross@yahoo.com', 'Making money is very easy if you use the financial Robot.', '89030846467', 'The huge income without investments is available. https://go.diryjyaz.com/0j35', NULL, '2022-10-02 01:23:40', '2022-10-02 01:23:40'),
(722, 'CrytoMub', 'cossinsrich@yahoo.com', 'Making money can be extremely easy if you use this Robot.', '89034902259', 'Your computer can bring you additional income if you use this Robot. https://go.diryjyaz.com/0j35', NULL, '2022-10-02 08:03:58', '2022-10-02 08:03:58'),
(723, 'CrytoMub', 'latoletera@hotmail.com', 'Provide your family with the money in age. Launch the Robot!', '89035598021', 'Financial robot is the best companion of rich people. https://go.diryjyaz.com/0j35', NULL, '2022-10-02 14:44:38', '2022-10-02 14:44:38'),
(724, 'CrytoMub', 'linda.tuff001@gmail.com', 'Attention! Financial robot may bring you millions!', '89032100689', 'Provide your family with the money in age. Launch the Robot! https://go.diryjyaz.com/0j35', NULL, '2022-10-02 21:44:47', '2022-10-02 21:44:47'),
(725, 'CrytoMub', 'nstefanygd@gmail.com', 'Check out the new financial tool, which can make you rich.', '89034424376', 'Even a child knows how to make money. This robot is what you need! https://go.diryjyaz.com/0j35', NULL, '2022-10-03 04:26:00', '2022-10-03 04:26:00'),
(726, 'CrytoMub', 'peckha01@gmail.com', 'Make money 24/7 without any efforts and skills.', '89037755009', 'Make money in the internet using this Bot. It really works! https://go.diryjyaz.com/0j35', NULL, '2022-10-03 11:26:09', '2022-10-03 11:26:09'),
(727, 'CrytoMub', 'lottycrin@yahoo.com', 'Try out the best financial robot in the Internet.', '89031144578', 'Invest $1 today to make $1000 tomorrow. https://go.sakelonel.com/0jb5', NULL, '2022-10-03 18:08:30', '2022-10-03 18:08:30'),
(728, 'CrytoMub', 'topic@hotmailmail.com', 'The huge income without investments is available.', '89039013000', 'Need money? Get it here easily? https://go.sakelonel.com/0jb5', NULL, '2022-10-04 00:45:47', '2022-10-04 00:45:47'),
(729, 'CrytoMub', 'formattingwakbpwn3@yahoo.com', 'No need to work anymore. Just launch the robot.', '89034053214', 'Financial robot guarantees everyone stability and income. https://go.sakelonel.com/0jb5', NULL, '2022-10-04 07:27:01', '2022-10-04 07:27:01'),
(730, 'CrytoMub', 'combatmatt@gmail.com', 'We know how to increase your financial stability.', '89037233116', 'Wow! This is a fastest way for a financial independence. https://go.sakelonel.com/0jb5', NULL, '2022-10-04 14:08:04', '2022-10-04 14:08:04'),
(731, 'CrytoMub', 'muzammildeen@yahoo.com', 'Wow! This is a fastest way for a financial independence.', '89030687333', 'Financial robot is the best companion of rich people. https://go.sakelonel.com/0jb5', NULL, '2022-10-04 20:49:30', '2022-10-04 20:49:30'),
(732, 'CrytoMub', 'karisma.fb@gmail.com', 'Watch your money grow while you invest with the Robot.', '89033282536', 'Make dollars staying at home and launched this Bot. https://go.sakelonel.com/0j35', NULL, '2022-10-05 03:27:27', '2022-10-05 03:27:27'),
(733, 'CrytoMub', 'sam_x@hotmail.com', 'Check out the automatic Bot, which works for you 24/7.', '89032821427', 'Make yourself rich in future using this financial robot. https://go.sakelonel.com/0j35', NULL, '2022-10-05 10:09:25', '2022-10-05 10:09:25'),
(734, 'CrytoMub', 'kevbmg@yahoo.com', 'Financial robot is the best companion of rich people.', '89035525458', 'Money, money! Make more money with financial robot! http://go.cuxavyem.com/0j35', NULL, '2022-10-05 16:50:05', '2022-10-05 16:50:05'),
(735, 'CrytoMub', 'ronaldtenuijl@gmail.com', 'Have no financial skills? Let Robot make money for you.', '89037897640', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. http://go.cuxavyem.com/0j35', NULL, '2022-10-05 23:30:19', '2022-10-05 23:30:19'),
(736, 'CrytoMub', 'melinda_conroy@yahoo.com', 'Only one click can grow up your money really fast.', '89036273548', 'Let the financial Robot be your companion in the financial market. http://go.cuxavyem.com/0j35', NULL, '2022-10-06 06:08:53', '2022-10-06 06:08:53'),
(737, 'CrytoMub', 'samsonlkj@hotmail.com', 'We have found the fastest way to be rich. Find it out here.', '89038196959', 'Find out about the easiest way of money earning. http://go.cuxavyem.com/0j35', NULL, '2022-10-06 12:50:52', '2022-10-06 12:50:52'),
(738, 'CrytoMub', 'maledesma04@aol.com', 'Need some more money? Robot will earn them really fast.', '89031224429', 'Have no money? Earn it online. http://go.cuxavyem.com/0j35', NULL, '2022-10-06 19:51:10', '2022-10-06 19:51:10'),
(739, 'CrytoMub', 'smorris4433@cs.com', 'Make money in the internet using this Bot. It really works!', '89034361432', 'Automatic robot is the best start for financial independence. http://go.cuxavyem.com/0j35', NULL, '2022-10-07 02:49:46', '2022-10-07 02:49:46'),
(740, 'CrytoMub', 'jessica.m.staff@gmail.com', 'Trust the financial Bot to become rich.', '89032314993', 'We know how to make our future rich and do you? http://go.cuxavyem.com/0j35', NULL, '2022-10-07 09:31:36', '2022-10-07 09:31:36'),
(741, 'CrytoMub', 'jenniferlalbright@hotmail.com', 'Small investments can bring tons of dollars fast.', '89034011111', 'Financial independence is what this robot guarantees. http://go.cuxavyem.com/0j35', NULL, '2022-10-07 16:14:22', '2022-10-07 16:14:22'),
(742, 'CrytoMub', 'drummond@easyart.com', 'Wow! This Robot is a great start for an online career.', '89037187769', 'Let the financial Robot be your companion in the financial market. http://go.gepekaep.com/0j35', NULL, '2022-10-07 23:11:45', '2022-10-07 23:11:45'),
(743, 'CrytoMub', 'alissacasanova7@gmail.com', 'Let the Robot bring you money while you rest.', '89038983488', 'Need cash? Launch this robot and see what it can. http://go.gepekaep.com/0j35', NULL, '2022-10-08 07:34:48', '2022-10-08 07:34:48'),
(744, 'CrytoMub', 'sandysue45628@yahoo.com', 'No need to work anymore while you have the Robot launched!', '89038449422', 'Everyone can earn as much as he wants now. http://go.gepekaep.com/0j35', NULL, '2022-10-08 14:12:06', '2022-10-08 14:12:06'),
(745, 'CrytoMub', 'oz_ge_ce@hotmail.com', 'Need some more money? Robot will earn them really fast.', '89034967654', 'Attention! Financial robot may bring you millions! http://go.gepekaep.com/0j35', NULL, '2022-10-08 20:53:51', '2022-10-08 20:53:51'),
(746, 'CrytoMub', 'katrinadru@yahoo.com', 'Make thousands every week working online here.', '89036105453', 'Financial robot keeps bringing you money while you sleep. http://go.gepekaep.com/0j35', NULL, '2022-10-09 03:32:57', '2022-10-09 03:32:57'),
(747, 'CrytoMub', 'mc9k34x@yahoo.com', 'Making money is very easy if you use the financial Robot.', '89034122546', 'No need to work anymore. Just launch the robot. http://go.gepekaep.com/0j35', NULL, '2022-10-09 10:14:04', '2022-10-09 10:14:04'),
(748, 'CrytoMub', 'r.tehranian@yahoo.com', 'Make your laptop a financial instrument with this program.', '89034000159', 'Making money is very easy if you use the financial Robot. http://go.gepekaep.com/0j35', NULL, '2022-10-09 16:55:55', '2022-10-09 16:55:55'),
(749, 'CrytoMub', 'panygediolsfomuke@outlook.com', 'The fastest way to make your wallet thick is found.', '89038251495', 'Launch the financial Bot now to start earning. Telegram - @Cryptaxbot', NULL, '2022-10-10 04:13:19', '2022-10-10 04:13:19'),
(750, 'Lorena Bradberry', 'no-reply@kovropolis.com', 'Your Databases Has Been Hacked', '585-758-5826', 'PLEASE FORWARD THíS EMAiL TO SOMEONE íN YOUR COMPANY WHO íS ALLOWED TO MAKE íMPORTANT DECiSíONS!\r\n\r\nWe have hacked your website https://www.zealtechbd.com and extracted your databases.\r\n\r\nHow did this happen?\r\n\r\nOur team has found a vulnerabílíty wíthin your site that we were able to exploit. After findíng the vulnerabílíty we were able to get your database credentíals and extract your entire database and move the informatíon to an offshore server.\r\n\r\nWhat does this mean?\r\n\r\nWe will systematícally go through a series of steps of totally damaging your reputation. Fírst your database will be leaked or sold to the híghest bídder whích they will use with whatever their íntentíons are. Next if there are e-maíls found they wíll be e-mailed that theír ínformatíon has been sold or leaked and your site https://www.zealtechbd.com was at fault thusly damagíng your reputation and having angry customers/associates wíth whatever angry customers/assocíates do. Lastly any links that you have indexed ín the search engínes will be de-indexed based off of blackhat techniques that we used in the past to de-index our targets.\r\n\r\nHow do í stop this?\r\n\r\nWe are wíllíng to refraín from destroying your site’s reputatíon for a small fee. The current fee ís $3000 in bitcoins (BTC).\r\n\r\nPlease send the bitcoín to the following Bitcoín address (Make sure to copy and paste): \r\n\r\n3P1k3YWCh6P8Egkhft68timxr6RSTHMCzk\r\n\r\n Once you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 5 days after receívíng thís e-maíl or the database leak, e-maíls díspatched, and de-índex of your site WiLL start!\r\n\r\nHow do í get Bitcoíns?\r\n\r\nYou can easily buy bitcoins vía several websites or even offline from a Bítcoin-ATM. \r\n\r\nWhat if í don’t pay?\r\n\r\níf you decíde not to pay, we wíll start the attack at the indícated date and uphold ít until you do, there’s no counter measure to this, you will only end up wastíng more money trying to fínd a solution. We will completely destroy your reputation amongst google and your customers.\r\n\r\nThis is not a hoax, do not reply to this email, don’t try to reason or negotiate, we will not read any replies. Once you have paíd we wíll stop what we were doing and you wíll never hear from us again!\r\n\r\nPlease note that Bítcoín is anonymous and no one wíll fínd out that you have complied.', NULL, '2022-10-10 09:43:48', '2022-10-10 09:43:48'),
(751, 'CrytoMub', 'juniormontoya77@yahoo.com', 'Launch the financial Robot and do your business.', '89035285392', 'Make money online, staying at home this cold winter. Telegram - @Cryptaxbot', NULL, '2022-10-10 17:54:00', '2022-10-10 17:54:00'),
(752, 'CrytoMub', 'evansonoka@gmail.com', 'Make money in the internet using this Bot. It really works!', '89031947694', 'Rich people are rich because they use this robot. Telegram - @Cryptaxbot', NULL, '2022-10-11 00:36:04', '2022-10-11 00:36:04'),
(753, 'CrytoMub', 'darreld@hotmail.com', 'Let your money grow into the capital with this Robot.', '89037395242', 'Try out the best financial robot in the Internet. Telegram - @Cryptaxbot', NULL, '2022-10-11 07:19:50', '2022-10-11 07:19:50'),
(754, 'CrytoMub', 'pacho_141@hotmail.com', 'Watch your money grow while you invest with the Robot.', '89031780315', 'Launch the best investment instrument to start making money today. Telegram - @Cryptaxbot', NULL, '2022-10-11 13:56:54', '2022-10-11 13:56:54'),
(755, 'CrytoMub', 'kflavin@msn.com', 'Your money work even when you sleep.', '89039499188', 'The online income is the easiest ways to make you dream come true. Telegram - @Cryptaxbot', NULL, '2022-10-11 20:36:56', '2022-10-11 20:36:56'),
(756, 'CrytoMub', 'Hancoop@gmail.com', 'Learn how to make hundreds of backs each day.', '89032047898', 'Robot is the best solution for everyone who wants to earn. Telegram - @Cryptaxbot', NULL, '2022-10-12 03:20:03', '2022-10-12 03:20:03'),
(757, 'CrytoMub', 'ddohner@lcjvs.net', 'Try out the automatic robot to keep earning all day long.', '89036997397', 'One click of the robot can bring you thousands of bucks. Telegram - @Cryptaxbot', NULL, '2022-10-12 09:58:02', '2022-10-12 09:58:02'),
(758, 'CrytoMub', 'youngstunnuh@yahoo.com', 'Financial independence is what this robot guarantees.', '89030519255', 'See how Robot makes $1000 from $1 of investment. Telegram - @Cryptaxbot', NULL, '2022-10-12 16:38:15', '2022-10-12 16:38:15'),
(759, 'CrytoMub', 'Ziplix98@gmail.com', 'Trust the financial Bot to become rich.', '89033800664', 'Let the Robot bring you money while you rest. Telegram - @Cryptaxbot', NULL, '2022-10-12 23:17:26', '2022-10-12 23:17:26'),
(760, 'CrytoMub', 'sarita_sweetpink@hotmail.com', 'Making money can be extremely easy if you use this Robot.', '89033416688', 'Make thousands every week working online here. Telegram - @Cryptaxbot', NULL, '2022-10-13 05:57:59', '2022-10-13 05:57:59'),
(761, 'CrytoMub', 'wblanier@frontiernet.net', 'Looking for an easy way to make money? Check out the financial robot.', '89037927277', 'Make your laptop a financial instrument with this program. Telegram - @Cryptaxbot', NULL, '2022-10-13 12:37:47', '2022-10-13 12:37:47'),
(762, 'CrytoMub', 'bdavis43@hotmail.com', 'The additional income for everyone.', '89030605845', 'Check out the newest way to make a fantastic profit. Telegram - @Cryptaxbot', NULL, '2022-10-13 19:18:26', '2022-10-13 19:18:26'),
(763, 'CrytoMub', 'haveringan2@yahoo.com', 'Robot is the best solution for everyone who wants to earn.', '89035295179', 'Thousands of bucks are guaranteed if you use this robot. Telegram - @Cryptaxbot', NULL, '2022-10-14 01:59:14', '2022-10-14 01:59:14'),
(764, 'CrytoMub', 'shandelle.perry@bankofamerica.com', 'Even a child knows how to make $100 today.', '89035409923', 'The best online job for retirees. Make your old ages rich. Telegram - @Cryptaxbot', NULL, '2022-10-14 08:38:38', '2022-10-14 08:38:38'),
(765, 'CrytoMub', 'rosiefrench70@yahoo.com', 'Online Bot will bring you wealth and satisfaction.', '89034709809', 'Launch the robot and let it bring you money. Telegram - @Cryptaxbot', NULL, '2022-10-14 15:18:49', '2022-10-14 15:18:49'),
(766, 'CrytoMub', 'tcp301@gmail.com', 'Make yourself rich in future using this financial robot.', '89037025515', 'Robot never sleeps. It makes money for you 24/7. Telegram - @Cryptaxbot', NULL, '2022-10-14 21:59:53', '2022-10-14 21:59:53'),
(767, 'CrytoMub', 'reganvincent@gmail.com', 'Earn additional money without efforts.', '89036112554', 'Automatic robot is the best start for financial independence. Telegram - @Cryptaxbot', NULL, '2022-10-15 04:39:41', '2022-10-15 04:39:41'),
(768, 'CrytoMub', 'buddazure@yahoo.com', 'The financial Robot is your future wealth and independence.', '89038533934', 'Join the society of successful people who make money here. Telegram - @Cryptaxbot', NULL, '2022-10-15 11:21:05', '2022-10-15 11:21:05'),
(769, 'CrytoMub', 'singing_mel@hotmail.com', 'Earn additional money without efforts.', '89035518558', 'Thousands of bucks are guaranteed if you use this robot. Telegram - @Cryptaxbot', NULL, '2022-10-15 18:02:03', '2022-10-15 18:02:03'),
(770, 'CrytoMub', 'real_huntin@yahoo.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89030063876', 'Join the society of successful people who make money here. Telegram - @Cryptaxbot', NULL, '2022-10-16 00:44:17', '2022-10-16 00:44:17'),
(771, 'CrytoMub', 'Dlgamiao3@yahoo.com', 'Make your computer to be you earning instrument.', '89038017296', 'Start your online work using the financial Robot. Telegram - @Cryptaxbot', NULL, '2022-10-16 07:21:25', '2022-10-16 07:21:25'),
(772, 'CrytoMub', 'alisonchetri@yahoo.com', 'Launch the financial Robot and do your business.', '89030457529', 'We know how to increase your financial stability. Telegram - @Cryptaxbot', NULL, '2022-10-16 14:00:07', '2022-10-16 14:00:07'),
(773, 'CrytoMub', 'rtc322@comcast.net', 'The fastest way to make your wallet thick is found.', '89031614351', 'It is the best time to launch the Robot to get more money. Telegram - @Cryptaxbot', NULL, '2022-10-16 20:41:52', '2022-10-16 20:41:52'),
(774, 'CrytoMub', 'rafiki4017@yahoo.com', 'Robot is the best way for everyone who looks for financial independence.', '89033524009', 'Find out about the fastest way for a financial independence. Telegram - @Cryptaxbot', NULL, '2022-10-17 03:23:09', '2022-10-17 03:23:09'),
(775, 'CrytoMub', 'dscherzer@olshanlaw.com', 'Make thousands of bucks. Pay nothing.', '89036021922', 'Making money can be extremely easy if you use this Robot. Telegram - @Cryptaxbot', NULL, '2022-10-17 10:02:32', '2022-10-17 10:02:32'),
(776, 'CrytoMub', 'ankit_dsouza@yahoo.com', 'The additional income for everyone.', '89030297733', 'Check out the newest way to make a fantastic profit. Telegram - @Cryptaxbot', NULL, '2022-10-17 16:42:12', '2022-10-17 16:42:12'),
(777, 'CrytoMub', 'mandygm1@ymail.com', 'Make yourself rich in future using this financial robot.', '89036010083', 'Try out the automatic robot to keep earning all day long. Telegram - @Cryptaxbot', NULL, '2022-10-17 23:23:49', '2022-10-17 23:23:49'),
(778, 'CrytoMub', 'Www.samsonarenangbas@yahoo.com', 'Most successful people already use Robot. Do you?', '89032064854', 'No need to worry about the future if your use this financial robot. Telegram - @Cryptaxbot', NULL, '2022-10-18 10:47:21', '2022-10-18 10:47:21'),
(779, 'CrytoMub', 'j18hizel@yahoo.com', 'It is the best time to launch the Robot to get more money.', '89031279117', 'Launch the financial Robot and do your business. Telegram - @Cryptaxbot', NULL, '2022-10-18 17:22:44', '2022-10-18 17:22:44'),
(780, 'CrytoMub', 'geoffsbc@aol.com', 'The fastest way to make you wallet thick is here.', '89032792899', 'Making money in the net is easier now. Telegram - @Cryptaxbot', NULL, '2022-10-18 23:52:00', '2022-10-18 23:52:00'),
(781, 'CrytoMub', 'efwarren@earthlink.net', 'Earn additional money without efforts and skills.', '89034734321', 'No need to work anymore. Just launch the robot. Telegram - @Cryptaxbot', NULL, '2022-10-19 06:26:06', '2022-10-19 06:26:06'),
(782, 'CrytoMub', 'pillfiomiwribandi@hotmail.com', 'We know how to make our future rich and do you?', '89030664533', 'Start your online work using the financial Robot. Telegram - @Cryptaxbot', NULL, '2022-10-19 13:13:43', '2022-10-19 13:13:43'),
(783, 'CrytoMub', 'jayleng2919@yahoo.com', 'Robot is the best solution for everyone who wants to earn.', '89036899996', 'Make money online, staying at home this cold winter. Telegram - @Cryptaxbot', NULL, '2022-10-19 20:02:46', '2022-10-19 20:02:46'),
(784, 'CrytoMub', 'caicedod707@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89036880889', 'The financial Robot is your # 1 expert of making money. Telegram - @Cryptaxbot', NULL, '2022-10-20 02:44:32', '2022-10-20 02:44:32'),
(785, 'CrytoMub', 'misskarijean@yahoo.com', 'Robot is the best solution for everyone who wants to earn.', '89033378998', 'Invest $1 today to make $1000 tomorrow. Telegram - @Cryptaxbot', NULL, '2022-10-20 09:25:28', '2022-10-20 09:25:28'),
(786, 'CrytoMub', 'brittanymwatkins97@yahoo.com', 'The best online job for retirees. Make your old ages rich.', '89032758175', 'Wow! This Robot is a great start for an online career. Telegram - @Cryptaxbot', NULL, '2022-10-20 18:10:22', '2022-10-20 18:10:22'),
(787, 'CrytoMub', 'janessperov@cmail.com', 'Trust the financial Bot to become rich.', '89030355859', 'Looking for additional money? Try out the best financial instrument. Telegram - @Cryptaxbot', NULL, '2022-10-21 00:47:16', '2022-10-21 00:47:16'),
(788, 'CrytoMub', 'trollope4713@yahoo.com', 'This robot can bring you money 24/7.', '89036074457', 'Looking for an easy way to make money? Check out the financial robot. Telegram - @Cryptaxbot', NULL, '2022-10-21 07:28:23', '2022-10-21 07:28:23'),
(789, 'CrytoMub', 'tarabz@yahoo.com', 'Launch the financial Robot and do your business.', '89037499422', 'Watch your money grow while you invest with the Robot. Telegram - @Cryptaxbot', NULL, '2022-10-21 16:11:23', '2022-10-21 16:11:23'),
(790, 'CrytoMub', 'jufel_80@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89032112620', 'Earn additional money without efforts. Telegram - @Cryptaxbot', NULL, '2022-10-21 22:49:27', '2022-10-21 22:49:27'),
(791, 'CrytoMub', 'jeyselcaballero@aol.com', 'Financial independence is what everyone needs.', '89036160262', 'Robot is the best way for everyone who looks for financial independence. Telegram - @Cryptaxbot', NULL, '2022-10-22 05:47:43', '2022-10-22 05:47:43'),
(792, 'CrytoMub', 'sahlit4@sbcglobal.net', 'Have no financial skills? Let Robot make money for you.', '89033532843', 'Make money 24/7 without any efforts and skills. Telegram - @Cryptaxbot', NULL, '2022-10-22 12:28:05', '2022-10-22 12:28:05'),
(793, 'CrytoMub', 'runejt1@hotmail.com', 'Buy everything you want earning money online.', '89039595007', 'Have no financial skills? Let Robot make money for you. Telegram - @Cryptaxbot', NULL, '2022-10-22 19:12:59', '2022-10-22 19:12:59'),
(794, 'CrytoMub', 'lesterbaboon@jeffersonbox.com', 'Additional income is now available for anyone all around the world.', '89030198247', 'Financial robot keeps bringing you money while you sleep. Telegram - @Cryptaxbot', NULL, '2022-10-23 01:51:44', '2022-10-23 01:51:44'),
(795, 'CrytoMub', 'rreshamiya@gmail.com', 'Just one click can turn you dollar into $1000.', '89037569989', 'The huge income without investments is available, now! Telegram - @Cryptaxbot', NULL, '2022-10-23 08:29:29', '2022-10-23 08:29:29'),
(796, 'CrytoMub', 'watnowson44@aim.com', 'Make money 24/7 without any efforts and skills.', '89035234207', 'Check out the automatic Bot, which works for you 24/7. Telegram - @Cryptaxbot', NULL, '2022-10-23 21:10:11', '2022-10-23 21:10:11'),
(797, 'CrytoMub', 'blessedcuzahim@sbcglobal.net', 'Need money? Earn it without leaving your home.', '89034164792', 'The financial Robot works for you even when you sleep. Telegram - @Cryptaxbot', NULL, '2022-10-24 03:37:13', '2022-10-24 03:37:13'),
(798, 'CrytoMub', 'chardi33@yahoo.com', 'Robot is the best way for everyone who looks for financial independence.', '89038475676', 'The online income is the easiest ways to make you dream come true. Telegram - @Cryptaxbot', NULL, '2022-10-24 10:28:41', '2022-10-24 10:28:41'),
(799, 'CrytoMub', 'billy_talent_678@yahoo.com', 'See how Robot makes $1000 from $1 of investment.', '89035721836', 'Online earnings are the easiest way for financial independence. Telegram - @Cryptaxbot', NULL, '2022-10-24 17:04:56', '2022-10-24 17:04:56'),
(800, 'MxklFUYNEy', 'creedrez.pugachev93@list.ru', 'Такое сложно пропустить и отдать другому', '84517968894', 'Такое сложно пропустить и отдать другому https://yandex.ru/poll/enter/5KbDstggpquBYcMADttkRs#MDqYZmHzg71uRPfWNF0s', NULL, '2022-10-25 02:27:22', '2022-10-25 02:27:22'),
(801, 'CrytoMub', 'byuzhulei@hotmail.com', 'The best way for everyone who rushes for financial independence.', '89031247900', 'Financial independence is what everyone needs. Telegram - @Cryptaxbot', NULL, '2022-10-25 05:13:01', '2022-10-25 05:13:01'),
(802, 'CrytoMub', 'vnpnm637@gmail.com', 'Online earnings are the easiest way for financial independence.', '89032763189', 'Invest $1 today to make $1000 tomorrow. Telegram - @Cryptaxbot', NULL, '2022-10-25 11:48:25', '2022-10-25 11:48:25'),
(803, 'Camilla Krome', 'ohora@somitata.com', NULL, '06-56077803', 'Add your site to 1000 business directories with one click here-> https://bit.ly/submit_site_1', NULL, '2022-10-25 14:01:45', '2022-10-25 14:01:45'),
(804, 'CrytoMub', 'A.SALAZAR20988@GMAIL.COM', 'Only one click can grow up your money really fast.', '89037739502', 'The best online investment tool is found. Learn more! Telegram - @Cryptaxbot', NULL, '2022-10-25 18:33:36', '2022-10-25 18:33:36'),
(805, 'CrytoMub', 'ngelfacemcnutt@bellsouth.net', 'Need cash? Launch this robot and see what it can.', '89031327911', 'Make your money work for you all day long. Telegram - @Cryptaxbot', NULL, '2022-10-26 01:33:26', '2022-10-26 01:33:26'),
(806, 'CrytoMub', 'pjkellinger@gmail.com', 'Only one click can grow up your money really fast.', '89031422412', 'Wow! This is a fastest way for a financial independence. Telegram - @Cryptaxbot', NULL, '2022-10-26 08:32:52', '2022-10-26 08:32:52'),
(807, 'CrytoMub', 'palmertreey@hotmail.com', 'Make your money work for you all day long.', '89036734369', 'Need money? The financial robot is your solution. Telegram - @Cryptaxbot', NULL, '2022-10-26 15:00:24', '2022-10-26 15:00:24'),
(808, 'CrytoMub', 'pato_basket@hotmail.com', 'Using this Robot is the best way to make you rich.', '89033258195', 'Have no money? It’s easy to earn them online here. Telegram - @Cryptaxbot', NULL, '2022-10-26 22:56:17', '2022-10-26 22:56:17'),
(809, 'CrytoMub', 'lalogenco@hotmail.com', 'Financial robot is a great way to manage and increase your income.', '89035968745', '# 1 financial expert in the net! Check out the new Robot. Telegram - @Cryptaxbot', NULL, '2022-10-27 05:35:33', '2022-10-27 05:35:33'),
(810, 'CrytoMub', 'Kataeriki@gmail.com', 'Financial robot is a great way to manage and increase your income.', '89033275910', 'Have no money? Earn it online. Telegram - @Cryptaxbot', NULL, '2022-10-27 12:18:29', '2022-10-27 12:18:29'),
(811, 'CrytoMub', 'tom_caywood@yahoo.com', 'Looking for additional money? Try out the best financial instrument.', '89030216159', 'Looking for an easy way to make money? Check out the financial robot. Telegram - @Cryptaxbot', NULL, '2022-10-27 18:55:50', '2022-10-27 18:55:50'),
(812, 'CrytoMub', 'joseph.tran@ncr.com', 'The online income is your key to success.', '89031907304', 'Still not a millionaire? The financial robot will make you him! Telegram - @Cryptaxbot', NULL, '2022-10-28 01:37:14', '2022-10-28 01:37:14'),
(813, 'CrytoMub', 'cherie_melton19@yahoo.com', 'Earning money in the Internet is easy if you use Robot.', '89033509507', 'The success formula is found. Learn more about it. Telegram - @Cryptaxbot', NULL, '2022-10-28 08:17:47', '2022-10-28 08:17:47'),
(814, 'CrytoMub', 'kryabrams@hotmail.com', 'Robot is the best solution for everyone who wants to earn.', '89034011477', 'The success formula is found. Learn more about it. Telegram - @Cryptaxbot', NULL, '2022-10-28 15:06:16', '2022-10-28 15:06:16'),
(815, 'CrytoMub', 'maryannlime@jeffersonbox.com', 'Everyone can earn as much as he wants now.', '89032878991', 'Wow! This is a fastest way for a financial independence. Telegram - @Cryptaxbot', NULL, '2022-10-28 21:45:11', '2022-10-28 21:45:11'),
(816, 'CrytoMub', 'itsmekiara9955@aol.com', 'The fastest way to make your wallet thick is found.', '89036181845', 'Turn $1 into $100 instantly. Use the financial Robot. Telegram - @Cryptaxbot', NULL, '2022-10-29 20:18:42', '2022-10-29 20:18:42'),
(817, 'CrytoMub', 'slayer22sg@yahoo.com', 'Earning $1000 a day is easy if you use this financial Robot.', '89035879311', 'Robot is the best solution for everyone who wants to earn. Telegram - @Cryptaxbot', NULL, '2022-10-30 06:40:12', '2022-10-30 06:40:12'),
(818, 'CrytoMub', 'cryseekanvas@gmail.com', 'The financial Robot is the most effective financial tool in the net!', '89035755694', 'Check out the automatic Bot, which works for you 24/7. Telegram - @Cryptaxbot', NULL, '2022-10-30 13:13:15', '2022-10-30 13:13:15'),
(819, 'CrytoMub', 'zygnh0529@163.com', 'Need money? The financial robot is your solution.', '89036750248', 'Everyone can earn as much as he wants suing this Bot. Telegram - @Cryptaxbot', NULL, '2022-10-31 02:19:31', '2022-10-31 02:19:31'),
(820, 'CrytoMub', 'chadvan_99@yahoo.com', 'Have no financial skills? Let Robot make money for you.', '89038541280', 'Provide your family with the money in age. Launch the Robot! Telegram - @Cryptaxbot', NULL, '2022-10-31 08:46:08', '2022-10-31 08:46:08'),
(821, 'CrytoMub', 'redjack0303@yahoo.com', 'No need to stay awake all night long to earn money. Launch the robot.', '89034069459', 'Watch your money grow while you invest with the Robot. Telegram - @Cryptaxbot', NULL, '2022-10-31 15:21:53', '2022-10-31 15:21:53'),
(822, 'Bradford Mitten', 'roussama.ararouci@ldwdkj.com', NULL, '02686 44 19 09', 'Submit your site to over 1000 advertising websites for free now bit.ly/submit_site_2', NULL, '2022-10-31 15:34:02', '2022-10-31 15:34:02'),
(823, 'CrytoMub', 'sybd1980@gmail.com', 'Making money can be extremely easy if you use this Robot.', '89039965462', 'Rich people are rich because they use this robot. Telegram - @Cryptaxbot', NULL, '2022-10-31 22:07:34', '2022-10-31 22:07:34'),
(824, 'CrytoMub', 'jkbtihh@gmail.com', 'The online financial Robot is your key to success.', '89034845959', 'Online earnings are the easiest way for financial independence. Telegram - @Cryptaxbot', NULL, '2022-11-01 04:41:50', '2022-11-01 04:41:50'),
(825, 'CrytoMub', 'theperfecdrug91@gmail.com', 'There is no need to look for a job anymore. Work online.', '89039026515', 'No need to worry about the future if your use this financial robot. Telegram - @Cryptaxbot', NULL, '2022-11-01 11:22:02', '2022-11-01 11:22:02'),
(826, 'CrytoMub', 'jediwannabe1@hotmail.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89039439348', 'Everyone can earn as much as he wants now. Telegram - @Cryptaxbot', NULL, '2022-11-01 17:45:08', '2022-11-01 17:45:08'),
(827, 'CrytoMub', 'haley@haleybalephotography.com', 'Make dollars staying at home and launched this Bot.', '89030940301', 'This robot can bring you money 24/7. Telegram - @Cryptaxbot', NULL, '2022-11-02 00:17:21', '2022-11-02 00:17:21'),
(828, 'CrytoMub', 'pearsonkristy@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89037172493', 'Only one click can grow up your money really fast. Telegram - @Cryptaxbot', NULL, '2022-11-02 06:48:54', '2022-11-02 06:48:54'),
(829, 'CrytoMub', 'DJBrandywine198@aol.com', 'Provide your family with the money in age. Launch the Robot!', '89030878024', 'Let the financial Robot be your companion in the financial market. Telegram - @Cryptaxbot', NULL, '2022-11-02 13:29:36', '2022-11-02 13:29:36'),
(830, 'CrytoMub', 'aida.atkinson97@icloud.com', 'The best online job for retirees. Make your old ages rich.', '89037748883', 'Launch the financial Bot now to start earning. Telegram - @Cryptaxbot', NULL, '2022-11-02 20:07:13', '2022-11-02 20:07:13'),
(831, 'CrytoMub', 'ksyyan@cox.net', 'This robot will help you to make hundreds of dollars each day.', '89038848024', 'The best online investment tool is found. Learn more! Telegram - @Cryptaxbot', NULL, '2022-11-03 02:44:59', '2022-11-03 02:44:59'),
(832, 'CrytoMub', 'littlevudu@gmail.com', 'The online income is the easiest ways to make you dream come true.', '89035247498', 'Every your dollar can turn into $100 after you lunch this Robot. Telegram - @Cryptaxbot', NULL, '2022-11-03 09:27:26', '2022-11-03 09:27:26'),
(833, 'CrytoMub', 'jessie.joachim@hotmail.com', 'Financial robot is your success formula is found. Learn more about it.', '89030394900', 'The fastest way to make your wallet thick is found. Telegram - @Cryptaxbot', NULL, '2022-11-03 16:06:03', '2022-11-03 16:06:03'),
(834, 'CrytoMub', 'chael45ns@gmail.com', 'We know how to increase your financial stability.', '89039649057', 'The fastest way to make you wallet thick is here. Telegram - @Cryptaxbot', NULL, '2022-11-03 22:35:54', '2022-11-03 22:35:54'),
(835, 'CrytoMub', 'rsk2ua@hotmial.com', 'Watch your money grow while you invest with the Robot.', '89033706819', 'Launch the best investment instrument to start making money today. Telegram - @Cryptaxbot', NULL, '2022-11-04 05:05:55', '2022-11-04 05:05:55'),
(836, 'CrytoMub', 'jennifertorrente@gmail.com', 'Online Bot will bring you wealth and satisfaction.', '89039621098', 'Earn additional money without efforts. Telegram - @Cryptaxbot', NULL, '2022-11-04 11:35:30', '2022-11-04 11:35:30'),
(837, 'CrytoMub', 'aznhellokitty7@hotmail.com', 'Looking forward for income? Get it online.', '89034422999', 'Money, money! Make more money with financial robot! Telegram - @Cryptaxbot', NULL, '2022-11-04 18:08:49', '2022-11-04 18:08:49'),
(838, 'Justin McCarty', 'justinmccarty@mailerking.xyz', 'Do you accept link inserts?', '081 887 37 17', 'Hello,\r\n\r\nWondering if you accept link inserts on existing posts on zealtechbd.com?\r\n\r\nHow much would you charge for this?\r\n\r\nAlso, do you have any other sites for link inserts?\r\n\r\nJustin\r\n\r\nIf you\'d like to unsubscribe click the following link.\r\n\r\nhttps://mailerking.xyz/optout/?site=zealtechbd.com', NULL, '2022-11-04 19:40:11', '2022-11-04 19:40:11'),
(839, 'CrytoMub', 'vangieveronika@yahoo.com', 'Learn how to make hundreds of backs each day.', '89033300138', 'Looking for additional money? Try out the best financial instrument. Telegram - @Cryptaxbot', NULL, '2022-11-05 00:45:56', '2022-11-05 00:45:56'),
(840, 'CrytoMub', 'owen_tan0204@hotmail.com', 'Wow! This is a fastest way for a financial independence.', '89039869003', 'Watch your money grow while you invest with the Robot. Telegram - @Cryptaxbot', NULL, '2022-11-05 07:27:20', '2022-11-05 07:27:20'),
(841, 'CrytoMub', 'go.tot.he.sho.p.p.ing25@gmail.com', 'Wow! This Robot is a great start for an online career.', '89032121518', 'Making money is very easy if you use the financial Robot. Telegram - @Cryptaxbot', NULL, '2022-11-05 14:08:58', '2022-11-05 14:08:58'),
(842, 'CrytoMub', '624mkk9@mailwithyou.com', 'Make money, not war! Financial Robot is what you need.', '89039075210', 'No worries if you are fired. Work online. Telegram - @Cryptaxbot', NULL, '2022-11-05 20:40:54', '2022-11-05 20:40:54'),
(843, 'iHXFwkPFWd', 'callvisvetlana@list.ru', 'Приготовься во всех отношениях к следующему году', '87586264297', 'Приготовься во всех отношениях к следующему году https://yandex.ru/poll/enter/PcRXPzEH4n6B52BVZswgh2#VwRHS2TLWJmx56B8CzKs https://mail.ru zealtechbd.com', NULL, '2022-11-06 00:55:51', '2022-11-06 00:55:51'),
(844, 'CrytoMub', 'stephaniemason73@yahoo.com', 'Trust the financial Bot to become rich.', '89034932952', 'Everyone can earn as much as he wants now. Telegram - @Cryptaxbot', NULL, '2022-11-06 03:16:02', '2022-11-06 03:16:02'),
(845, 'CrytoMub', 'cristianobay@gmail.com', 'Automatic robot is the best start for financial independence.', '89034125882', 'Let the Robot bring you money while you rest. Telegram - @Cryptaxbot', NULL, '2022-11-06 10:45:24', '2022-11-06 10:45:24'),
(846, 'CrytoMub', 'shannonflaherty18080@gmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89030135103', 'The online job can bring you a fantastic profit. Telegram - @Cryptaxbot', NULL, '2022-11-06 17:16:38', '2022-11-06 17:16:38'),
(847, 'CrytoMub', 'csorba@sbcglobal.net', 'Earning money in the Internet is easy if you use Robot.', '89030789243', 'This robot will help you to make hundreds of dollars each day. Telegram - @Cryptaxbot', NULL, '2022-11-06 23:44:25', '2022-11-06 23:44:25'),
(848, 'CrytoMub', 'sid7889@gmail.com', 'Even a child knows how to make money. Do you?', '89030668076', 'Let your money grow into the capital with this Robot. Telegram - @Cryptaxbot', NULL, '2022-11-07 06:18:53', '2022-11-07 06:18:53'),
(849, 'CrytoMub', 'ratoncito_999@hotmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89032496507', 'The best online investment tool is found. Learn more! Telegram - @Cryptaxbot', NULL, '2022-11-07 13:00:06', '2022-11-07 13:00:06'),
(850, 'CrytoMub', 'rameshonlinegwl@gmail.com', 'No need to work anymore. Just launch the robot.', '89032894789', 'The online job can bring you a fantastic profit. Telegram - @Cryptaxbot', NULL, '2022-11-07 19:39:42', '2022-11-07 19:39:42'),
(851, 'CrytoMub', 'delvalleyuy@hotmail.com', 'Even a child knows how to make $100 today with the help of this robot.', '89034516730', 'Looking forward for income? Get it online. Telegram - @Cryptaxbot', NULL, '2022-11-08 02:14:49', '2022-11-08 02:14:49'),
(852, 'CrytoMub', 'realniggalove08@yahoo.com', 'Make thousands of bucks. Financial robot will help you to do it!', '89037710046', 'Find out about the fastest way for a financial independence. Telegram - @Cryptaxbot', NULL, '2022-11-08 08:55:46', '2022-11-08 08:55:46'),
(853, 'CrytoMub', 'evans.eliakim@yahoo.com', 'Making money in the net is easier now.', '89035312156', 'Need some more money? Robot will earn them really fast. Telegram - @Cryptaxbot', NULL, '2022-11-08 15:26:05', '2022-11-08 15:26:05'),
(854, 'CrytoMub', 'alrashedg@hotmail.com', 'We have found the fastest way to be rich. Find it out here.', '89030464712', 'Online earnings are the easiest way for financial independence. Telegram - @Cryptaxbot', NULL, '2022-11-08 22:01:27', '2022-11-08 22:01:27'),
(855, 'CrytoMub', 'dwr_the_necromancer@hotmail.com', 'Financial independence is what this robot guarantees.', '89037243213', 'The online financial Robot is your key to success. Telegram - @Cryptaxbot', NULL, '2022-11-09 04:35:32', '2022-11-09 04:35:32'),
(856, 'CrytoMub', 'nothingleftfortheyouth@hotmail.com', 'Start making thousands of dollars every week just using this robot.', '89039742310', 'The huge income without investments is available. Telegram - @Cryptaxbot', NULL, '2022-11-09 11:10:05', '2022-11-09 11:10:05'),
(857, 'CrytoMub', 'jennipuce63@hotmail.com', 'Robot is the best solution for everyone who wants to earn.', '89037193121', 'Let the financial Robot be your companion in the financial market. Telegram - @Cryptaxbot', NULL, '2022-11-09 17:41:30', '2022-11-09 17:41:30'),
(858, 'CrytoMub', 'ashleydaneman@gmail.com', 'Check out the newest way to make a fantastic profit.', '89034287173', 'Need money? Get it here easily! Just press this to launch the robot. Telegram - @Cryptaxbot', NULL, '2022-11-10 00:11:19', '2022-11-10 00:11:19'),
(859, 'CrytoMub', 'stephdhailly@cegetel.net', 'Even a child knows how to make money. This robot is what you need!', '89034918242', 'Feel free to buy everything you want with the additional income. Telegram - @Cryptaxbot', NULL, '2022-11-10 06:41:08', '2022-11-10 06:41:08'),
(860, 'CrytoMub', 'mrverma789@gmail.com', 'Everyone who needs money should try this Robot out.', '89032939891', 'Make thousands of bucks. Pay nothing. Telegram - @Cryptaxbot', NULL, '2022-11-10 13:18:24', '2022-11-10 13:18:24'),
(861, 'CrytoMub', 'lacey.cortez@att.net', 'The financial Robot is your future wealth and independence.', '89036467592', 'We know how to make our future rich and do you? Telegram - @Cryptaxbot', NULL, '2022-11-10 19:55:46', '2022-11-10 19:55:46'),
(862, 'CrytoMub', 'e.alviento@gmail.com', 'Using this Robot is the best way to make you rich.', '89031886201', 'Make your money work for you all day long. Telegram - @Cryptaxbot', NULL, '2022-11-11 02:36:15', '2022-11-11 02:36:15'),
(863, 'CrytoMub', 'modelmad@live.com', 'Have no money? It’s easy to earn them online here.', '89039311351', 'The fastest way to make you wallet thick is here. Telegram - @Cryptaxbot', NULL, '2022-11-11 09:14:38', '2022-11-11 09:14:38'),
(864, 'CrytoMub', 'gsl.borre@hotmail.com', 'Join the society of successful people who make money here.', '89037184083', 'Financial robot is your success formula is found. Learn more about it. Telegram - @Cryptaxbot', NULL, '2022-11-11 15:48:43', '2022-11-11 15:48:43'),
(865, 'CrytoMub', 'kyla.suits9@yahoo.com', 'The financial Robot works for you even when you sleep.', '89037553481', 'We have found the fastest way to be rich. Find it out here. Telegram - @Cryptaxbot', NULL, '2022-11-11 22:21:47', '2022-11-11 22:21:47'),
(866, 'CrytoMub', 'psycho_teen_2009@yahoo.com', 'Need some more money? Robot will earn them really fast.', '89037848721', 'The online income is the easiest ways to make you dream come true. Telegram - @Cryptaxbot', NULL, '2022-11-12 05:07:10', '2022-11-12 05:07:10'),
(867, 'CrytoMub', 'shavon.mjohnson@gmail.com', 'This robot can bring you money 24/7.', '89032699022', 'The fastest way to make your wallet thick is found. Telegram - @Cryptaxbot', NULL, '2022-11-12 11:42:43', '2022-11-12 11:42:43'),
(868, 'CrytoMub', 'taylormade0784@gmail.com', 'Everyone can earn as much as he wants now.', '89038129232', 'The success formula is found. Learn more about it. Telegram - @Cryptaxbot', NULL, '2022-11-12 18:27:18', '2022-11-12 18:27:18'),
(869, 'CrytoMub', 'halbir_@hotmail.com', 'Feel free to buy everything you want with the additional income.', '89037875919', 'Money, money! Make more money with financial robot! Telegram - @Cryptaxbot', NULL, '2022-11-13 01:15:15', '2022-11-13 01:15:15'),
(870, 'CrytoMub', 'eralalles@autosloansonlines.com', 'Online Bot will bring you wealth and satisfaction.', '89038037377', 'Launch the financial Bot now to start earning. Telegram - @Cryptaxbot', NULL, '2022-11-13 08:05:37', '2022-11-13 08:05:37'),
(871, 'CrytoMub', 'ljr1986@hotmail.com', 'Earn additional money without efforts.', '89034912706', '# 1 financial expert in the net! Check out the new Robot. Telegram - @Cryptaxbot', NULL, '2022-11-13 14:37:01', '2022-11-13 14:37:01'),
(872, 'CrytoMub', 'dhavalpunjabi07@gmail.com', 'Earning $1000 a day is easy if you use this financial Robot.', '89036552830', 'Attention! Financial robot may bring you millions! Telegram - @Cryptaxbot', NULL, '2022-11-13 21:11:31', '2022-11-13 21:11:31'),
(873, 'CrytoMub', 'sempre_musica@hotmail.com', 'Everyone can earn as much as he wants now.', '89031933894', 'Have no financial skills? Let Robot make money for you. Telegram - @Cryptaxbot', NULL, '2022-11-14 03:41:38', '2022-11-14 03:41:38'),
(874, 'CrytoMub', 'jihuo.810@hotmail.com', 'Make money 24/7 without any efforts and skills.', '89036510892', 'Need some more money? Robot will earn them really fast. Telegram - @Cryptaxbot', NULL, '2022-11-14 10:18:17', '2022-11-14 10:18:17'),
(875, 'CrytoMub', 'fiemark@hotmail.com', 'Even a child knows how to make money. This robot is what you need!', '89034111949', 'Making money is very easy if you use the financial Robot. Telegram - @Cryptaxbot', NULL, '2022-11-14 16:57:50', '2022-11-14 16:57:50'),
(876, 'CrytoMub', 'workingid907@gmail.com', 'Small investments can bring tons of dollars fast.', '89038629775', 'Feel free to buy everything you want with the additional income. Telegram - @Cryptaxbot', NULL, '2022-11-14 23:43:28', '2022-11-14 23:43:28'),
(877, 'CrytoMub', 'paoloaguilar58@yahoo.com', 'The best online investment tool is found. Learn more!', '89035518556', 'Even a child knows how to make money. This robot is what you need! Telegram - @Cryptaxbot', NULL, '2022-11-15 06:10:32', '2022-11-15 06:10:32'),
(878, 'CrytoMub', 'ronnehgorawr@aim.com', 'Everyone can earn as much as he wants suing this Bot.', '89035757572', 'Using this Robot is the best way to make you rich. Telegram - @Cryptaxbot', NULL, '2022-11-15 12:39:57', '2022-11-15 12:39:57'),
(879, 'CrytoMub', 'sbrookins84@windstream.net', 'Robot never sleeps. It makes money for you 24/7.', '89030344732', 'No need to stay awake all night long to earn money. Launch the robot. Telegram - @Cryptaxbot', NULL, '2022-11-15 19:23:56', '2022-11-15 19:23:56'),
(880, 'CrytoMub', 'paddlepaws00@yahoo.com', 'Even a child knows how to make money. This robot is what you need!', '89034397923', 'Check out the automatic Bot, which works for you 24/7. Telegram - @Cryptaxbot', NULL, '2022-11-16 07:00:36', '2022-11-16 07:00:36'),
(881, 'CrytoMub', 'ericr66@gmail.com', 'Turn $1 into $100 instantly. Use the financial Robot.', '89030691990', 'Need money? The financial robot is your solution. Telegram - @Cryptaxbot', NULL, '2022-11-16 13:45:45', '2022-11-16 13:45:45'),
(882, 'CrytoMub', 'phillip.sanchez@universalpro.com', 'Money, money! Make more money with financial robot!', '89035185676', 'We have found the fastest way to be rich. Find it out here. Telegram - @Cryptaxbot', NULL, '2022-11-16 20:16:24', '2022-11-16 20:16:24'),
(883, 'CrytoMub', 'shapalujaj@gmail.com', 'Make money 24/7 without any efforts and skills.', '89035304783', 'No need to worry about the future if your use this financial robot. Telegram - @Cryptaxbot', NULL, '2022-11-17 02:56:49', '2022-11-17 02:56:49'),
(884, 'CrytoMub', 'rmgronseth@yahoo.com', 'The financial Robot is your future wealth and independence.', '89037179623', 'Launch the financial Bot now to start earning. Telegram - @Cryptaxbot', NULL, '2022-11-17 09:47:08', '2022-11-17 09:47:08'),
(885, 'CrytoMub', 'qxm590815@sohu.com', 'Need money? The financial robot is your solution.', '89034314359', 'Make money online, staying at home this cold winter. Telegram - @Cryptaxbot', NULL, '2022-11-17 16:22:02', '2022-11-17 16:22:02'),
(886, 'CrytoMub', 'amiel.alex@gmail.com', 'Online Bot will bring you wealth and satisfaction.', '89034163017', 'Try out the automatic robot to keep earning all day long. Telegram - @Cryptaxbot', NULL, '2022-11-17 22:49:06', '2022-11-17 22:49:06'),
(887, 'CrytoMub', 'mchapin2@yahoo.com', 'Even a child knows how to make $100 today.', '89034952891', 'Make thousands of bucks. Financial robot will help you to do it! Telegram - @Cryptaxbot', NULL, '2022-11-18 05:16:00', '2022-11-18 05:16:00'),
(888, 'CrytoMub', 'kasim_sagheir@hotmail.com', 'Looking for additional money? Try out the best financial instrument.', '89036420774', 'Try out the best financial robot in the Internet. Telegram - @Cryptaxbot', NULL, '2022-11-18 11:45:21', '2022-11-18 11:45:21'),
(889, 'CrytoMub', 'kcarlton976@yahoo.com', 'Rich people are rich because they use this robot.', '89039452785', 'Robot is the best way for everyone who looks for financial independence. Telegram - @Cryptaxbot', NULL, '2022-11-18 18:12:02', '2022-11-18 18:12:02'),
(890, 'CatherinaHags', 'catherinaHags@yahoo.com', 'I am an ordіnаrу girl. I wаnt tо meet an оrdіnаry ѕеriоuѕ mаn.', '85627295872', 'Ηiǃ\r\nΙ\'ve noticed thаt many guyѕ рrefеr regular girlѕ.\r\nI аpрlaudе thе men оut there who hаd the balls tо enjoy the lоve оf mаny womеn аnd choоse the onе that he knеw wоuld be his bеѕt frіend during thе bumpy and сrаzy thіng саlled lіfе.\r\nI wаnted tо be that friеnd, not ϳuѕt а stablе, rеliablе аnd borіng housewife.\r\nI аm 24 уеarѕ old, Саthеrіna, from thе Czech Republіc, knоw Εngliѕh lаnguage alsо.\r\nАnуwaу, you сan find mу profіle hеrе: http://schedheckcodd.gq/page-50915/', NULL, '2022-11-18 22:07:12', '2022-11-18 22:07:12');
INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(891, 'skyreveryLar', 'malinoleg91@mail.ru', 'Private jet charter flights cost of hire', '83478737898', '<a href=https://skyrevery.com/private-jets/citation-mustang/>Private jet Cessna Citation Mustang price</a>        -  more information on our website <a href=https://skyrevery.com>skyrevery.com</a> \r\n<a href=https://skyrevery.com/>Private jet rental</a> at SkyRevery allows you to use such valuable resource as time most efficiently. \r\nYou are the one who decides where and when your private jet will fly. It is possible to organize and perform a flight between any two civil airports worldwide round the clock. In airports, private jet passengers use special VIP terminals where airport formalities are minimized, and all handling is really fast – you come just 30 minutes before  the estimated time of the departure of the rented private jet. \r\nWhen you need <a href=https://skyrevery.com/>private jet charter</a> now, we can organise your flight with departure in 3 hours from confirmation.', NULL, '2022-11-18 22:39:37', '2022-11-18 22:39:37'),
(892, 'CrytoMub', 'santiagoramirez_nevarez@hotmail.com', 'Even a child knows how to make $100 today.', '89033172545', 'Financial independence is what everyone needs. Telegram - @Cryptaxbot', NULL, '2022-11-19 00:36:52', '2022-11-19 00:36:52'),
(893, 'CrytoMub', 'happytrio@hotmail.com', 'Find out about the fastest way for a financial independence.', '89033959764', 'Every your dollar can turn into $100 after you lunch this Robot. Telegram - @Cryptaxbot', NULL, '2022-11-19 06:59:25', '2022-11-19 06:59:25'),
(894, 'CrytoMub', 'kayceehouston1@gmail.com', 'Try out the automatic robot to keep earning all day long.', '89037350706', 'Need money? The financial robot is your solution. Telegram - @Cryptaxbot', NULL, '2022-11-19 13:27:13', '2022-11-19 13:27:13'),
(895, 'CrytoMub', 'konain.aman@yahoo.com', 'This robot will help you to make hundreds of dollars each day.', '89030133845', 'The additional income for everyone. Telegram - @Cryptaxbot', NULL, '2022-11-19 20:26:52', '2022-11-19 20:26:52'),
(896, 'CrytoMub', 'MatthewTSalazar@gmail.com', 'Even a child knows how to make money. This robot is what you need!', '89030941968', 'Even a child knows how to make $100 today. Telegram - @Cryptaxbot', NULL, '2022-11-20 03:06:52', '2022-11-20 03:06:52'),
(897, 'CrytoMub', 'cdurst101@hotmail.com', 'Let the financial Robot be your companion in the financial market.', '89032022758', 'Attention! Here you can earn money online! Telegram - @Cryptaxbot', NULL, '2022-11-20 09:41:57', '2022-11-20 09:41:57'),
(898, 'CrytoMub', 'karentashner@gmail.com', 'Small investments can bring tons of dollars fast.', '89032543316', 'The financial Robot is your future wealth and independence. Telegram - @Cryptaxbot', NULL, '2022-11-20 16:07:26', '2022-11-20 16:07:26'),
(899, 'CrytoMub', 'brice1746@aol.com', 'Money, money! Make more money with financial robot!', '89033488665', 'Make thousands of bucks. Financial robot will help you to do it! Telegram - @Cryptaxbot', NULL, '2022-11-20 22:36:56', '2022-11-20 22:36:56'),
(900, 'MariaJarm', 'mariaJarm@mailfence.com', NULL, '89592315789', NULL, NULL, '2022-11-21 07:51:39', '2022-11-21 07:51:39'),
(901, 'CrytoMub', 'sunil.cpant@gmail.com', 'Most successful people already use Robot. Do you?', '89038783228', 'The online financial Robot is your key to success. Telegram - @Cryptaxbot', NULL, '2022-11-21 09:06:32', '2022-11-21 09:06:32'),
(902, 'CrytoMub', 'dcowboyzzz@yahoo.com', 'Need money? The financial robot is your solution.', '89034866924', 'Financial robot is the best companion of rich people. Telegram - @Cryptaxbot', NULL, '2022-11-21 15:38:43', '2022-11-21 15:38:43'),
(903, 'CrytoMub', 'SPYDERMEM@AOL.COM', 'The online income is the easiest ways to make you dream come true.', '89030783630', '# 1 financial expert in the net! Check out the new Robot. Telegram - @Cryptaxbot', NULL, '2022-11-21 22:03:03', '2022-11-21 22:03:03'),
(904, 'Kerrie', 'info@remodelingpr.com', 'Zealtech BD | Contact Us', '0345 3531627', 'World\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: https://hineck.shop\r\n\r\nEnjoy,\r\n\r\nKerrie\r\nZealtech BD | Contact Us', NULL, '2022-11-22 02:41:36', '2022-11-22 02:41:36'),
(905, 'CrytoMub', 'mp314595@gmail.com', 'Financial robot is your success formula is found. Learn more about it.', '89033336065', 'No worries if you are fired. Work online. Telegram - @Cryptaxbot', NULL, '2022-11-22 04:25:32', '2022-11-22 04:25:32'),
(906, 'CrytoMub', 'sh25519@naver.com', 'Make money 24/7 without any efforts and skills.', '89037543337', 'One click of the robot can bring you thousands of bucks. Telegram - @Cryptaxbot', NULL, '2022-11-22 11:03:01', '2022-11-22 11:03:01'),
(907, 'CrytoMub', 'thecogburns@comcast.net', 'The financial Robot is the most effective financial tool in the net!', '89034432572', 'Additional income is now available for anyone all around the world. Telegram - @Cryptaxbot', NULL, '2022-11-22 17:32:32', '2022-11-22 17:32:32'),
(908, 'CrytoMub', 'cramerhickey@gmail.com', 'Online job can be really effective if you use this Robot.', '89035098268', 'Thousands of bucks are guaranteed if you use this robot. Telegram - @Cryptaxbot', NULL, '2022-11-23 00:11:11', '2022-11-23 00:11:11'),
(909, 'CrytoMub', 'ejiogu.shanaiya@yahoo.com', 'Watch your money grow while you invest with the Robot.', '89038268049', 'Using this Robot is the best way to make you rich. Telegram - @Cryptaxbot', NULL, '2022-11-23 06:44:30', '2022-11-23 06:44:30'),
(910, 'CrytoMub', 'te@hotmail.com', 'Looking for additional money? Try out the best financial instrument.', '89038839038', 'Robot never sleeps. It makes money for you 24/7. Telegram - @Cryptaxbot', NULL, '2022-11-23 13:43:15', '2022-11-23 13:43:15'),
(911, 'CrytoMub', 'hrswb@chongseo.com', 'Using this Robot is the best way to make you rich.', '89039023475', 'One dollar is nothing, but it can grow into $100 here. Telegram - @Cryptaxbot', NULL, '2022-11-24 01:31:05', '2022-11-24 01:31:05'),
(912, 'CrytoMub', 'purple_eon@hotmail.com', 'The financial Robot works for you even when you sleep.', '89036331507', 'Try out the automatic robot to keep earning all day long. Telegram - @Cryptaxbot', NULL, '2022-11-24 07:58:12', '2022-11-24 07:58:12'),
(913, 'CrytoMub', 'zar.robinson@gmail.com', 'The online financial Robot is your key to success.', '89033609127', '# 1 financial expert in the net! Check out the new Robot. Telegram - @Cryptaxbot', NULL, '2022-11-24 14:24:00', '2022-11-24 14:24:00'),
(914, 'CrytoMub', 'a.n.t.i.q.u.i.t.yta.iv@gmail.com', 'Need cash? Launch this robot and see what it can.', '89032930207', 'Let your money grow into the capital with this Robot. Telegram - @Cryptaxbot', NULL, '2022-11-24 21:01:28', '2022-11-24 21:01:28'),
(915, 'CrytoMub', 'madamecounselor@gmail.com', 'The additional income for everyone.', '89031171441', 'Need some more money? Robot will earn them really fast. Telegram - @Cryptaxbot', NULL, '2022-11-25 03:30:32', '2022-11-25 03:30:32'),
(916, 'CrytoMub', 'rafaelandkathy@yahoo.com', 'We know how to make our future rich and do you?', '89035583504', 'Trust the financial Bot to become rich. Telegram - @Cryptaxbot', NULL, '2022-11-25 09:56:58', '2022-11-25 09:56:58'),
(917, 'CrytoMub', 'LarryV69@msn.com', 'Trust the financial Bot to become rich.', '89039693371', 'Rich people are rich because they use this robot. Telegram - @Cryptaxbot', NULL, '2022-11-25 16:22:06', '2022-11-25 16:22:06'),
(918, 'CrytoMub', 'suzanne_young@comcast.net', 'Learn how to make hundreds of backs each day.', '89035582434', 'Make yourself rich in future using this financial robot. Telegram - @Cryptaxbot', NULL, '2022-11-25 22:54:13', '2022-11-25 22:54:13'),
(919, 'CrytoMub', 'freddricolchapman@gmail.com', 'Even a child knows how to make money. Do you?', '89039224948', 'Most successful people already use Robot. Do you? Telegram - @Cryptaxbot', NULL, '2022-11-26 05:20:27', '2022-11-26 05:20:27'),
(920, 'CrytoMub', 'rainbow_fanatic@hotmail.com', 'Start making thousands of dollars every week.', '89038708474', 'The success formula is found. Learn more about it. Telegram - @Cryptaxbot', NULL, '2022-11-26 12:08:33', '2022-11-26 12:08:33'),
(921, 'CrytoMub', 'sefeeback@comcast.net', 'Let your money grow into the capital with this Robot.', '89038063366', 'The best way for everyone who rushes for financial independence. Telegram - @Cryptaxbot', NULL, '2022-11-26 18:39:38', '2022-11-26 18:39:38'),
(922, 'CrytoMub', 'susansummers1@verizon.net', 'Find out about the easiest way of money earning.', '89030712143', 'Everyone who needs money should try this Robot out. Telegram - @Cryptaxbot', NULL, '2022-11-27 01:10:37', '2022-11-27 01:10:37'),
(923, 'CrytoMub', 'jayoide@yeah.net', 'The best way for everyone who rushes for financial independence.', '89035529716', 'Attention! Financial robot may bring you millions! Telegram - @Cryptaxbot', NULL, '2022-11-27 07:38:00', '2022-11-27 07:38:00'),
(924, 'CrytoMub', 'fpnqmgthd@google.com', 'Join the society of successful people who make money here.', '89038667462', 'The financial Robot is your # 1 expert of making money. Telegram - @Cryptaxbot', NULL, '2022-11-27 14:06:35', '2022-11-27 14:06:35'),
(925, 'CrytoMub', 'jopodogma@lvivs.com', 'We have found the fastest way to be rich. Find it out here.', '89030117629', 'See how Robot makes $1000 from $1 of investment. Telegram - @Cryptaxbot', NULL, '2022-11-27 21:04:16', '2022-11-27 21:04:16'),
(926, 'AnikaJarm', 'anikaJarm@hotmail.com', 'Ι аm аn оrdіnаry gіrl. I want tо meеt аn ordinarу ѕеriоus man.', '84764173476', 'Ηіǃ\r\nI\'ve noticed that mаny guyѕ prеfеr regulаr gіrls.\r\nI aрplaudе the men оut thеrе who had the balls tо еnjoу thе lovе оf mаnу wоmen аnd choose the one that he knew would bе hіѕ bеst friеnd during the bumрy and crаzy thing cаlled lifе.\r\nI wanted tо bе that frіend, nоt ϳust а ѕtable, relіаble and bоrіng hоusewіfe.\r\nI am 23 уears old, Anіkа, frоm the Czech Rерublіc, know Εngliѕh lаnguagе alsо.\r\nΑnywaу, yоu саn fіnd mу profile hеre: http://diasysvida.tk/page-26444/', NULL, '2022-11-27 22:51:44', '2022-11-27 22:51:44'),
(927, 'CrytoMub', 'sexy55blue@yahoo.com', 'Earning money in the Internet is easy if you use Robot.', '89030185972', 'Let your money grow into the capital with this Robot. Telegram - @Cryptaxbot', NULL, '2022-11-28 03:30:51', '2022-11-28 03:30:51'),
(928, 'Joseph Joseph', 'free@freeaiwriting.com', 'Are you still in business?', '+1 310-620-8162', 'Dear, \r\n\r\nIn my search for a company to give our free artificial intelligence tool for testing (https://www.freeaiwriting.com) I came across zealtechbd.com. \r\n\r\nYou know the thing you get stuck on while coming up with a catchy social media post, advertisement or writing a blog. Not any longer. \r\n\r\nOur free tool writes 10 times faster than a human and with a much better output because it has read 10% of the internet and therefore knows what content converts. \r\n\r\nOur users see their revenue increase within the first month due to improved blogs, social media posts and ads . \r\nThrough freeaiwriting.com you can use the tool for free. \r\n\r\nKind regards. \r\n\r\nJoseph Smith', NULL, '2022-11-28 04:19:38', '2022-11-28 04:19:38'),
(929, 'CrytoMub', 'econnors03@verizon.net', 'The best way for everyone who rushes for financial independence.', '89036197776', 'The online job can bring you a fantastic profit. Telegram - @Cryptaxbot', NULL, '2022-11-28 10:04:41', '2022-11-28 10:04:41'),
(930, 'CrytoMub', 'coachcj3@gmail.com', 'Make money online, staying at home this cold winter.', '89038312937', 'Additional income is now available for anyone all around the world. Telegram - @Cryptaxbot', NULL, '2022-11-28 17:02:45', '2022-11-28 17:02:45'),
(931, 'CrytoMub', 'marisolcervantes73@yahoo.com', 'Start making thousands of dollars every week.', '89032967389', 'Online job can be really effective if you use this Robot. Telegram - @Cryptaxbot', NULL, '2022-11-28 23:40:35', '2022-11-28 23:40:35'),
(932, 'CrytoMub', 'zakulaurkovo@gmail.com', 'Let the Robot bring you money while you rest.', '89031999795', 'Make thousands of bucks. Financial robot will help you to do it! Telegram - @Cryptaxbot', NULL, '2022-11-29 06:24:03', '2022-11-29 06:24:03'),
(933, 'CrytoMub', 'guitar6string7@yahoo.com', 'Financial robot is the best companion of rich people.', '89038829844', 'The fastest way to make your wallet thick is found. Telegram - @Cryptaxbot', NULL, '2022-11-29 12:54:36', '2022-11-29 12:54:36'),
(934, 'CrytoMub', 'RYARD701@AOL.COM', 'No worries if you are fired. Work online.', '89039384213', 'See how Robot makes $1000 from $1 of investment. Telegram - @Cryptaxbot', NULL, '2022-11-29 19:31:11', '2022-11-29 19:31:11'),
(935, 'Kate Trilly', 'katytrilly9@gmail.com', 'Explainer Videos for zealtechbd.com', '614-906-5141', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site zealtechbd.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=zvGF7uRfH04\r\nhttps://www.youtube.com/watch?v=cZPsp217Iik\r\nhttps://www.youtube.com/watch?v=JHfnqS2zpU8\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nKate', NULL, '2022-12-01 21:45:07', '2022-12-01 21:45:07'),
(936, 'CrytoMub', 'jonathan.niemasz@yahoo.com', 'Make yourself rich in future using this financial robot.', '89039515476', 'Your money work even when you sleep. Telegram - @Cryptaxbot', NULL, '2022-12-02 01:29:24', '2022-12-02 01:29:24'),
(937, 'Roger', 'kontakt@digitalisierung.de', 'Roger Macdougall', '859-379-8495', 'Hey \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF:  https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nSincerely, \r\n\r\nRoger', NULL, '2022-12-02 07:19:18', '2022-12-02 07:19:18'),
(938, 'CrytoMub', 'meerkat4@sbcglobal.net', 'Start making thousands of dollars every week just using this robot.', '89036019542', 'Try out the best financial robot in the Internet. Telegram - @Cryptaxbot', NULL, '2022-12-02 07:59:41', '2022-12-02 07:59:41'),
(939, 'CrytoMub', 'jf_Acuarius@hotmail.com', 'Everyone can earn as much as he wants suing this Bot.', '89037862241', 'Even a child knows how to make money. Do you? Telegram - @Cryptaxbot', NULL, '2022-12-02 14:33:41', '2022-12-02 14:33:41'),
(940, 'CrytoMub', 'ralbakri@windowslive.com', 'Try out the best financial robot in the Internet.', '89030002247', 'Online job can be really effective if you use this Robot. Telegram - @Cryptaxbot', NULL, '2022-12-02 21:02:49', '2022-12-02 21:02:49'),
(941, 'CrytoMub', 'ggg602@new-purse.com', 'One click of the robot can bring you thousands of bucks.', '89034805770', 'One dollar is nothing, but it can grow into $100 here. https://worldnews.elk.pl', NULL, '2022-12-03 03:32:23', '2022-12-03 03:32:23'),
(942, 'CrytoMub', 'pbbhooe@aol.com', 'Financial robot guarantees everyone stability and income.', '89033798734', 'Robot is the best solution for everyone who wants to earn. https://worldnews.elk.pl', NULL, '2022-12-03 10:19:00', '2022-12-03 10:19:00'),
(943, 'CrytoMub', 'hafadassia@hotmail.com', 'Need money? Get it here easily?', '89035540841', 'Launch the robot and let it bring you money. https://worldnews.elk.pl', NULL, '2022-12-03 16:54:12', '2022-12-03 16:54:12'),
(944, 'CrytoMub', 'unique24@gmx.net', 'Buy everything you want earning money online.', '89037906948', 'Robot is the best way for everyone who looks for financial independence. https://worldnews.elk.pl', NULL, '2022-12-03 23:29:22', '2022-12-03 23:29:22'),
(945, 'CrytoMub', 'whitfieldcr@gmail.com', 'This robot can bring you money 24/7.', '89036213587', 'Make yourself rich in future using this financial robot. https://worldnews.elk.pl', NULL, '2022-12-04 05:57:41', '2022-12-04 05:57:41'),
(946, 'CrytoMub', 'ilovemitch83@yahoo.com', 'Start making thousands of dollars every week just using this robot.', '89037399355', 'Check out the newest way to make a fantastic profit. https://worldnews.elk.pl', NULL, '2022-12-04 12:30:16', '2022-12-04 12:30:16'),
(947, 'CrytoMub', 'sherriparsons724@yahoo.com', 'The financial Robot is your # 1 expert of making money.', '89035483740', 'Attention! Here you can earn money online! https://worldnews.elk.pl', NULL, '2022-12-04 19:03:58', '2022-12-04 19:03:58'),
(948, 'CrytoMub', 'e.warren1945@gmail.com', 'Still not a millionaire? Fix it now!', '89038367932', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://worldnews.elk.pl', NULL, '2022-12-05 02:18:59', '2022-12-05 02:18:59'),
(949, 'CrytoMub', 'skaterboy5634@gmail.com', 'Launch the financial Robot and do your business.', '89037828252', 'Find out about the easiest way of money earning. https://worldnews.elk.pl', NULL, '2022-12-05 13:50:23', '2022-12-05 13:50:23'),
(950, 'CrytoMub', 'gktejano@yahoo.com', 'Launch the financial Bot now to start earning.', '89037112148', 'Automatic robot is the best start for financial independence. https://worldnews.elk.pl', NULL, '2022-12-05 20:12:25', '2022-12-05 20:12:25'),
(951, 'CrytoMub', 'rojinegros_7_9@hotmail.com', 'Learn how to make hundreds of backs each day.', '89036881696', 'This robot can bring you money 24/7. https://worldnews.elk.pl', NULL, '2022-12-06 02:33:03', '2022-12-06 02:33:03'),
(952, 'CrytoMub', 'Mynabird91210@yahoo.com', 'Still not a millionaire? Fix it now!', '89034161122', 'Make dollars just sitting home. https://worldnews.elk.pl', NULL, '2022-12-06 08:57:06', '2022-12-06 08:57:06'),
(953, 'CrytoMub', 'randyworth45@yahoo.com', 'The financial Robot is your future wealth and independence.', '89037348816', 'Your computer can bring you additional income if you use this Robot. https://worldnews.elk.pl', NULL, '2022-12-06 15:22:56', '2022-12-06 15:22:56'),
(954, 'CrytoMub', 'michelle@bronzery.com', 'Make money online, staying at home this cold winter.', '89032647933', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://worldnews.elk.pl', NULL, '2022-12-06 22:39:25', '2022-12-06 22:39:25'),
(955, 'CrytoMub', 'Noahdoerr@yahoo.com', 'Even a child knows how to make $100 today with the help of this robot.', '89032793425', 'Make dollars just sitting home. https://worldnews.elk.pl', NULL, '2022-12-07 05:04:03', '2022-12-07 05:04:03'),
(956, 'CrytoMub', 'renatabyrnes@gmail.com', 'This robot can bring you money 24/7.', '89037341528', 'Looking for additional money? Try out the best financial instrument. https://worldnews.elk.pl', NULL, '2022-12-07 11:47:45', '2022-12-07 11:47:45'),
(957, 'CrytoMub', 'mr.mateus_wwe@hotmail.com', 'One dollar is nothing, but it can grow into $100 here.', '89034854322', 'Every your dollar can turn into $100 after you lunch this Robot. https://worldnews.elk.pl', NULL, '2022-12-08 00:38:27', '2022-12-08 00:38:27'),
(958, 'CrytoMub', 'imsevilla@email.msn.com', 'Make money, not war! Financial Robot is what you need.', '89032616123', 'One dollar is nothing, but it can grow into $100 here. https://worldnews.elk.pl', NULL, '2022-12-08 07:00:57', '2022-12-08 07:00:57'),
(959, 'CrytoMub', 'tony11793@yahoo.com', 'Have no money? Earn it online.', '89039251863', 'The best online investment tool is found. Learn more! https://worldnews.elk.pl', NULL, '2022-12-08 13:24:31', '2022-12-08 13:24:31'),
(960, 'CrytoMub', 'dianaoliva@comcast.net', 'Launch the best investment instrument to start making money today.', '89035014316', 'Make thousands every week working online here. https://worldnews.elk.pl', NULL, '2022-12-08 20:09:29', '2022-12-08 20:09:29'),
(961, 'CrytoMub', 'dawalama353@tahoo.com', 'The financial Robot is the most effective financial tool in the net!', '89032745390', 'This robot will help you to make hundreds of dollars each day. https://worldnews.elk.pl', NULL, '2022-12-09 02:48:15', '2022-12-09 02:48:15'),
(962, 'CrytoMub', 'play_power_07@hotmail.com', 'Even a child knows how to make money. This robot is what you need!', '89030509906', 'No need to worry about the future if your use this financial robot. https://worldnews.elk.pl', NULL, '2022-12-09 08:58:39', '2022-12-09 08:58:39'),
(963, 'CrytoMub', 'teresagroves@windstream.net', 'Launch the robot and let it bring you money.', '89032581111', 'Looking forward for income? Get it online. https://worldnews.elk.pl', NULL, '2022-12-09 15:20:18', '2022-12-09 15:20:18'),
(964, 'CrytoMub', 'jenjellison@hotmail.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89039531229', 'The huge income without investments is available, now! https://worldnews.elk.pl', NULL, '2022-12-09 21:41:41', '2022-12-09 21:41:41'),
(965, 'CrytoMub', 'isil08ist@mynet.com', 'Financial robot is a great way to manage and increase your income.', '89035886899', 'There is no need to look for a job anymore. Work online. https://worldnews.elk.pl', NULL, '2022-12-10 04:02:19', '2022-12-10 04:02:19'),
(966, 'CrytoMub', 'jencrwll@charter.net', 'Financial robot guarantees everyone stability and income.', '89035142121', 'Most successful people already use Robot. Do you? https://worldnews.elk.pl', NULL, '2022-12-10 10:45:08', '2022-12-10 10:45:08'),
(967, 'Agueda', 'agueda.mason@hotmail.com', 'Agueda Mason', '441 9467', 'Hi,\r\n\r\nDo you ever worry about your belongings when you travel? I know I do.  Our Sling Bags are drop-proof, anti-theft, scratch-resistant, and come with a USB charging port. They\'re perfect for keeping your belongings safe when you\'re on the go.\r\n\r\nI think these would make an excellent addition to your travel gear. I\'m confident you\'ll love them as much as I do.\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashiondaily.shop\r\n\r\nKind Regards, \r\n\r\nAgueda', NULL, '2022-12-10 12:28:22', '2022-12-10 12:28:22'),
(968, 'CrytoMub', 'scrase38@gmail.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', '89034192855', 'We have found the fastest way to be rich. Find it out here. https://worldnews.elk.pl', NULL, '2022-12-10 17:10:00', '2022-12-10 17:10:00'),
(969, 'CrytoMub', 'moll.ay96@gmail.com', 'Online earnings are the easiest way for financial independence.', '89037626822', 'Need money? Get it here easily! Just press this to launch the robot. https://worldnews.elk.pl', NULL, '2022-12-10 23:34:10', '2022-12-10 23:34:10'),
(970, 'CrytoMub', 'estherclown@chipmunkbox.com', 'Small investments can bring tons of dollars fast.', '89031860694', 'Make thousands of bucks. Financial robot will help you to do it! https://worldnews.elk.pl', NULL, '2022-12-11 05:57:21', '2022-12-11 05:57:21'),
(971, 'CrytoMub', 'cuteandsexy_guy@hotmail.com', 'We know how to increase your financial stability.', '89036990655', 'Make your laptop a financial instrument with this program. https://worldnews.elk.pl', NULL, '2022-12-11 12:11:58', '2022-12-11 12:11:58'),
(972, 'CrytoMub', 'curry_sweetheart88@hotmail.com', 'Need some more money? Robot will earn them really fast.', '89033774419', 'Robot never sleeps. It makes money for you 24/7. https://worldnews.elk.pl', NULL, '2022-12-11 18:41:16', '2022-12-11 18:41:16'),
(973, 'CrytoMub', 'postillo@mynet.com', 'Online earnings are the easiest way for financial independence.', '89038862596', 'The huge income without investments is available, now! https://newsworld.elk.pl', NULL, '2022-12-12 01:03:15', '2022-12-12 01:03:15'),
(974, 'CrytoMub', 'cgoettel@twcny.rr.com', 'Make thousands of bucks. Pay nothing.', '89039445669', 'Your money work even when you sleep. https://newsworld.elk.pl', NULL, '2022-12-12 07:21:54', '2022-12-12 07:21:54'),
(975, 'CrytoMub', 'popescu_georgian@yahoo.com', 'Attention! Financial robot may bring you millions!', '89034877891', 'Make thousands every week working online here. https://newsworld.elk.pl', NULL, '2022-12-12 13:47:45', '2022-12-12 13:47:45'),
(976, 'CrytoMub', 'youngwalrus@hamstermail.net', 'Financial robot is a great way to manage and increase your income.', '89035476252', 'The best online job for retirees. Make your old ages rich. https://newsworld.elk.pl', NULL, '2022-12-12 20:14:00', '2022-12-12 20:14:00'),
(977, 'CrytoMub', 'myboyonmars17@yahoo.com', 'Make thousands of bucks. Financial robot will help you to do it!', '89038393009', 'Earning $1000 a day is easy if you use this financial Robot. https://newsworld.elk.pl', NULL, '2022-12-13 02:42:36', '2022-12-13 02:42:36'),
(978, 'CrytoMub', 'kaileb5088@gmail.com', 'Make money online, staying at home this cold winter.', '89037610765', 'We know how to make our future rich and do you? https://newsworld.elk.pl', NULL, '2022-12-13 09:06:01', '2022-12-13 09:06:01'),
(979, 'CrytoMub', 'sajrules2003@yahoo.com', 'Invest $1 today to make $1000 tomorrow.', '89038019953', 'Launch the robot and let it bring you money. https://newsworld.elk.pl', NULL, '2022-12-13 15:28:41', '2022-12-13 15:28:41'),
(980, 'CrytoMub', 'southernpride.3@tds.net', 'Still not a millionaire? The financial robot will make you him!', '89030187055', 'Money, money! Make more money with financial robot! https://newsworld.elk.pl', NULL, '2022-12-13 21:56:25', '2022-12-13 21:56:25'),
(981, 'CrytoMub', 'zenkirit@gmail.com', 'Let your money grow into the capital with this Robot.', '89039176386', 'One dollar is nothing, but it can grow into $100 here. https://newsworld.elk.pl', NULL, '2022-12-14 04:37:59', '2022-12-14 04:37:59'),
(982, 'CrytoMub', 'nikdogg73@aol.com', 'We have found the fastest way to be rich. Find it out here.', '89035123716', 'Feel free to buy everything you want with the additional income. https://newsworld.elk.pl', NULL, '2022-12-14 20:02:52', '2022-12-14 20:02:52'),
(983, 'CrytoMub', 'nort_ney@hotmail.com', 'Let the Robot bring you money while you rest.', '89032936956', 'Robot is the best solution for everyone who wants to earn. https://newsworld.elk.pl', NULL, '2022-12-15 03:46:58', '2022-12-15 03:46:58'),
(984, 'CrytoMub', 'pumbus5@hotmail.com', 'Learn how to make hundreds of backs each day.', '89038728533', 'The success formula is found. Learn more about it. https://newsworld.elk.pl', NULL, '2022-12-15 10:12:43', '2022-12-15 10:12:43'),
(985, 'CrytoMub', 'EthanHaynes@google.com', 'The financial Robot is your future wealth and independence.', '89031167234', 'Need money? Earn it without leaving your home. https://newsworld.elk.pl', NULL, '2022-12-15 16:36:33', '2022-12-15 16:36:33'),
(986, 'CrytoMub', 'jfzw2554870@gmail.com', 'Just one click can turn you dollar into $1000.', '89037265206', 'Everyone can earn as much as he wants suing this Bot. https://newsworld.elk.pl', NULL, '2022-12-16 04:45:25', '2022-12-16 04:45:25'),
(987, 'CrytoMub', 'nick.iannone@yahoo.com', 'Financial robot is your success formula is found. Learn more about it.', '89038201195', 'Try out the automatic robot to keep earning all day long. https://newsworld.elk.pl', NULL, '2022-12-16 11:33:27', '2022-12-16 11:33:27'),
(988, 'CrytoMub', 'zarb.bernice@gmail.com', 'The best online investment tool is found. Learn more!', '89039745147', 'Let the Robot bring you money while you rest. https://newsworld.elk.pl', NULL, '2022-12-16 17:59:42', '2022-12-16 17:59:42'),
(989, 'CrytoMub', 'sk8ter4life1994@hotmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', '89035394766', 'No worries if you are fired. Work online. https://newsworld.elk.pl', NULL, '2022-12-17 00:57:12', '2022-12-17 00:57:12'),
(990, 'CrytoMub', 'chuckgbandit@aol.com', 'The best online job for retirees. Make your old ages rich.', '89039358246', 'Wow! This Robot is a great start for an online career. https://newsworld.elk.pl', NULL, '2022-12-17 07:38:30', '2022-12-17 07:38:30'),
(991, 'CrytoMub', 'JuanCB2005@yahoo.com', 'The online income is your key to success.', '89035486604', 'Make money 24/7 without any efforts and skills. https://newsworld.elk.pl', NULL, '2022-12-17 14:01:57', '2022-12-17 14:01:57'),
(992, 'CrytoMub', 'guduxian@163.com', 'The fastest way to make your wallet thick is found.', '89032372839', 'The online income is your key to success. https://newsworld.elk.pl', NULL, '2022-12-17 20:49:29', '2022-12-17 20:49:29'),
(993, 'CrytoMub', 'wendykuns@yahoo.com', 'Need some more money? Robot will earn them really fast.', '89039431647', 'Still not a millionaire? The financial robot will make you him! https://newsworld.elk.pl', NULL, '2022-12-18 03:19:42', '2022-12-18 03:19:42'),
(994, 'CrytoMub', 'audreyp4@aol.com', 'The online financial Robot is your key to success.', '89032026612', 'Trust the financial Bot to become rich. https://newsworld.elk.pl', NULL, '2022-12-18 09:52:09', '2022-12-18 09:52:09'),
(995, 'CrytoMub', 'eko_purple@hotmail.com', 'Every your dollar can turn into $100 after you lunch this Robot.', '89032776343', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://newsworld.elk.pl', NULL, '2022-12-18 16:15:34', '2022-12-18 16:15:34'),
(996, 'CrytoMub', 'wwanson@verizon.net', 'Earn additional money without efforts.', '89034260486', 'Everyone who needs money should try this Robot out. https://newsworld.elk.pl', NULL, '2022-12-18 22:41:54', '2022-12-18 22:41:54'),
(997, 'CrytoMub', 'david.romo69@yahoo.com', 'Everyone who needs money should try this Robot out.', '89037889804', 'There is no need to look for a job anymore. Work online. https://newsworld.elk.pl', NULL, '2022-12-19 05:08:47', '2022-12-19 05:08:47'),
(998, 'Joshua Arias', 'joshua@mailerking.xyz', 'Want to make a little extra cash?', '0421 42 55 26', 'Hi,\r\n\r\nI\'ll keep this short and to the point. I\'d like to pay you to post a link to one of my  legitmate client\'s website. I\'ll pay you directly through paypal.\r\n\r\nJoshua\r\n\r\nIf you don\'t want to hear from me again click this link.\r\n\r\nhttps://mailerking.xyz/optout/?site=zealtechbd.com', NULL, '2022-12-19 09:52:05', '2022-12-19 09:52:05'),
(999, 'CrytoMub', 'badpenny92@gmail.com', 'Looking for additional money? Try out the best financial instrument.', '89030179343', 'No need to work anymore. Just launch the robot. https://newsworld.elk.pl', NULL, '2022-12-19 11:35:38', '2022-12-19 11:35:38'),
(1000, 'CrytoMub', 'combinevic@gmail.com', 'Making money can be extremely easy if you use this Robot.', '89034613423', 'Wow! This Robot is a great start for an online career. https://newsworld.elk.pl', NULL, '2022-12-19 18:01:22', '2022-12-19 18:01:22'),
(1001, 'CrytoMub', 'Milliespark123@verizon.net', 'Make dollars staying at home and launched this Bot.', '89037357985', 'Robot never sleeps. It makes money for you 24/7. https://newsworld.elk.pl', NULL, '2022-12-20 00:26:20', '2022-12-20 00:26:20'),
(1002, 'Philomena', 'philomena@zealtechbd.com', 'Regarding zealtechbd.com', '0480 12 42 44', 'Hey \r\n \r\nIs your dog\'s nails getting too long? If you\'re tired of going to the vet or groomer to get them trimmed, why not try PawSafer™? \r\nWith PawSafer™, you can trim your dog\'s nails from the comfort of your own home, and it only takes a few minutes!\r\n\r\nPawSafer™ is the safest and most convenient way to trim your dog\'s nails, and it\'s very affordable. \r\n\r\nGet it while it\'s still 50% OFF + FREE Shipping\r\n\r\nBuy here: https://pawsafer.sale\r\n \r\nTo your success, \r\n \r\nPhilomena', NULL, '2022-12-20 03:05:15', '2022-12-20 03:05:15'),
(1003, 'CrytoMub', 'garciahouse4@bellsouth.net', 'One dollar is nothing, but it can grow into $100 here.', '89038647624', 'Even a child knows how to make money. This robot is what you need! https://newsworld.elk.pl', NULL, '2022-12-20 06:52:11', '2022-12-20 06:52:11'),
(1004, 'CrytoMub', 'melissam1@yahoo.com', 'We know how to become rich and do you?', '89033717363', 'This robot can bring you money 24/7. https://newsworld.elk.pl', NULL, '2022-12-20 13:14:49', '2022-12-20 13:14:49'),
(1005, 'CrytoMub', 'jalynhenry69@yahoo.com', 'Automatic robot is the best start for financial independence.', '89034956033', 'The financial Robot is your # 1 expert of making money. https://newsworld.elk.pl', NULL, '2022-12-20 19:36:58', '2022-12-20 19:36:58'),
(1006, 'CrytoMub', 'taraciampaglia@gmail.com', 'Your money work even when you sleep.', '89038836856', 'The financial Robot is your # 1 expert of making money. https://newsworld.elk.pl', NULL, '2022-12-21 02:01:14', '2022-12-21 02:01:14'),
(1007, 'CrytoMub', 'fdevof@gmail.com', 'Earning money in the Internet is easy if you use Robot.', '89038059444', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://newsworld.elk.pl', NULL, '2022-12-21 08:43:15', '2022-12-21 08:43:15'),
(1008, 'CrytoMub', 'd.i.vi.n.g.ce.xdbt@gmail.com', 'The online income is your key to success.', '89032458712', 'Make dollars just sitting home. https://newsworld.elk.pl', NULL, '2022-12-21 15:13:54', '2022-12-21 15:13:54'),
(1009, 'CrytoMub', 'noonan.john.p@gmail.com', 'Even a child knows how to make $100 today with the help of this robot.', '89038718077', 'Robot is the best way for everyone who looks for financial independence. https://newsworld.elk.pl', NULL, '2022-12-21 21:41:00', '2022-12-21 21:41:00'),
(1010, 'CrytoMub', 'kedrowskinicole@yahoo.com', 'The huge income without investments is available.', '89034653993', 'This robot will help you to make hundreds of dollars each day. https://newsworld.elk.pl', NULL, '2022-12-22 04:05:56', '2022-12-22 04:05:56'),
(1011, 'CrytoMub', 'imalettebaby@yahoo.com', 'Make thousands of bucks. Financial robot will help you to do it!', '89039315736', 'The financial Robot is your # 1 expert of making money. https://newsworld.elk.pl', NULL, '2022-12-22 11:15:22', '2022-12-22 11:15:22'),
(1012, 'CrytoMub', 'hientphan@earthlink.net', 'One dollar is nothing, but it can grow into $100 here.', '89030908260', 'The best online investment tool is found. Learn more! https://newsworld.elk.pl', NULL, '2022-12-22 17:38:01', '2022-12-22 17:38:01'),
(1013, 'CrytoMub', 'ragoczy@solarbears.fan.org', 'We know how to become rich and do you?', '89033215148', 'Check out the new financial tool, which can make you rich. https://newsworld.elk.pl', NULL, '2022-12-23 00:04:02', '2022-12-23 00:04:02'),
(1014, 'CrytoMub', 'Ky7s@aol.com', 'The huge income without investments is available.', '89033693034', 'This robot will help you to make hundreds of dollars each day. https://newsworld.elk.pl', NULL, '2022-12-23 06:24:51', '2022-12-23 06:24:51'),
(1015, 'CrytoMub', 'redapple_2871@hotmail.com', 'Your computer can bring you additional income if you use this Robot.', '89033500098', 'Your money work even when you sleep. https://newsworld.elk.pl', NULL, '2022-12-23 12:58:24', '2022-12-23 12:58:24'),
(1016, 'CrytoMub', 'thunder_hand@webstarts.com', 'Robot is the best solution for everyone who wants to earn.', '89031401602', 'The financial Robot works for you even when you sleep. https://newsworld.elk.pl', NULL, '2022-12-23 19:25:40', '2022-12-23 19:25:40'),
(1017, 'CrytoMub', 'jacbusviljoen@gmail.com', 'No need to work anymore. Just launch the robot.', '89032700256', 'Wow! This is a fastest way for a financial independence. https://newsworld.elk.pl', NULL, '2022-12-24 01:44:31', '2022-12-24 01:44:31'),
(1018, 'CrytoMub', 'brittsdev@gmail.com', 'Online job can be really effective if you use this Robot.', '89036491163', 'Financial robot guarantees everyone stability and income. https://newsworld.elk.pl', NULL, '2022-12-24 08:39:48', '2022-12-24 08:39:48'),
(1019, 'CrytoMub', 'george.chogovadze@gmail.com', 'Making money is very easy if you use the financial Robot.', '89031174154', 'The huge income without investments is available, now! https://newsworld.elk.pl', NULL, '2022-12-24 15:23:01', '2022-12-24 15:23:01'),
(1020, 'Isaac Bethune', 'bethune.isaac@hotmail.com', 'Hi zealtechbd.com Webmaster.', '917-842-8720', 'Submit your site to over 1000 directories all with one click here> bit.ly/submit_site_t9qPdO4E2oF2', NULL, '2022-12-24 16:41:45', '2022-12-24 16:41:45'),
(1021, 'CrytoMub', 'crorevagwoogs@kitooes.com', 'The additional income is available for everyone using this robot.', '89035270394', 'We have found the fastest way to be rich. Find it out here. https://newsworld.elk.pl', NULL, '2022-12-24 21:48:48', '2022-12-24 21:48:48'),
(1022, 'CrytoMub', 'bexflo02@gmail.com', 'Earn additional money without efforts.', '89035785022', 'Online earnings are the easiest way for financial independence. https://newsworld.elk.pl', NULL, '2022-12-25 04:12:35', '2022-12-25 04:12:35'),
(1023, 'CrytoMub', 'brkomrk@aol.com', 'Make money, not war! Financial Robot is what you need.', '89030625290', 'Make money, not war! Financial Robot is what you need. https://newsworld.elk.pl', NULL, '2022-12-25 10:35:03', '2022-12-25 10:35:03'),
(1024, 'CrytoMub', 'molee1818@yahoo.com', 'Attention! Financial robot may bring you millions!', '89038195338', 'Even a child knows how to make money. Do you? https://newsworld.elk.pl', NULL, '2022-12-25 17:03:24', '2022-12-25 17:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `slug`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Our Office', 'our-office', 'uploads/gallery/5d98cacd-ccaf-484c-93f9-ff93012742ee_63592234a54bd.jpg', NULL, '2021-03-16 16:33:30', '2022-10-26 16:04:04'),
(3, 'Working on Website Design', 'working-on-website-design', 'uploads/gallery/26af1db8-6544-44a7-9f28-abc85c187bfb_635922539d7c6.jpg', NULL, '2021-03-17 10:22:06', '2022-10-26 16:04:35'),
(4, 'Elit omnis dolore a', 'elit-omnis-dolore-a', 'uploads/gallery/portfolio-2_60522cef398cd.jpg', NULL, '2021-03-17 10:23:11', '2021-03-17 10:23:11'),
(5, 'Eveniet voluptatem', 'eveniet-voluptatem', 'uploads/gallery/portfolio-8_60522cfab835a.jpg', NULL, '2021-03-17 10:23:22', '2021-03-17 10:23:22'),
(6, 'Impedit non corrupt', 'impedit-non-corrupt', 'uploads/gallery/portfolio-details-2_6052311a026e6.jpg', NULL, '2021-03-17 10:40:58', '2021-03-17 10:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_03_144401_create_company_profiles_table', 1),
(6, '2021_03_09_160900_create_abouts_table', 2),
(8, '2021_03_10_110711_create_teams_table', 3),
(9, '2021_03_10_151813_create_services_table', 4),
(10, '2021_03_10_175157_create_contacts_table', 5),
(12, '2021_03_11_164744_create_testimonials_table', 6),
(13, '2021_03_13_195847_create_clients_table', 7),
(14, '2021_03_15_181854_create_subscribers_table', 8),
(16, '2021_03_16_153057_create_galleries_table', 9),
(17, '2021_03_16_223801_create_categories_table', 10),
(18, '2021_03_16_231612_create_portfolios_table', 11),
(19, '2021_03_23_181214_create_newpages_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `newpages`
--

CREATE TABLE `newpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newpages`
--

INSERT INTO `newpages` (`id`, `name`, `slug`, `title`, `sub_title`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, 'new page', 'new-page', 'new page title', 'Global Logistic Service For Business', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', NULL, '2021-03-24 10:20:56', '2021-03-24 10:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `category_id`, `name`, `slug`, `url`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'NFT Design', 'nft-design', 'http://zealtechbd.com/', 'uploads/portfolio/gigs 2_63591740da348.jpg', NULL, '2021-03-26 07:51:24', '2022-10-26 15:17:20'),
(2, 2, 'Asher Mclaughlin', 'asher-mclaughlin', 'http://zealtechbd.com/', 'uploads/portfolio/02012019-28_605deb8b385ed.jpg', '2021-03-26 08:14:16', '2021-03-26 08:11:23', '2021-03-26 08:14:16'),
(3, 2, 'Full Branding', 'full-branding', 'www.gadgetnphone.com', 'uploads/portfolio/SL-031720-29020-05-[Converted]_6359160fdc726.jpg', NULL, '2021-03-27 12:38:35', '2022-10-26 15:12:15'),
(4, 1, 'Resturent Website', 'resturent-website', 'www.crazysnacks.com', 'uploads/portfolio/168_6359141506ea8.jpg', NULL, '2021-03-27 12:39:29', '2022-10-26 15:03:49'),
(5, 1, 'Ecomarce website Design & Development', 'ecomarce-website-design-development', 'www.gadgetnphone.com', 'uploads/portfolio/Dark_Blue_and_Marble_Mockup_4_6358ef579c7cc.jpg', NULL, '2021-03-27 12:39:52', '2022-10-26 12:27:03'),
(6, 1, 'Website Design & Development', 'website-design-development', 'www.driftekharshams.com', 'uploads/portfolio/website_mockup-re_6358cf9df3d18.jpg', NULL, '2021-03-27 12:40:19', '2022-10-26 10:11:42'),
(7, 3, 'Post Design', 'post-design', 'Ummah Transport', 'uploads/portfolio/Mockup 2_6358f0240efaf.jpg', NULL, '2021-03-27 12:40:40', '2022-10-26 12:30:28'),
(8, 3, 'Socail Media Post Design', 'socail-media-post-design', 'MyChoice', 'uploads/portfolio/mockup_6358ea24b78be.jpg', NULL, '2021-07-07 12:43:07', '2022-10-26 12:04:52'),
(9, 3, 'Social Media Post Design', 'social-media-post-design', 'https://www.facebook.com/ummahtransportbd', 'uploads/portfolio/rsz_1m11_6358c8a27f910.jpg', NULL, '2021-07-07 12:43:21', '2022-10-26 09:41:54'),
(10, 3, 'Social Media Banner Design', 'social-media-banner-design', 'A suscipit libero se', 'uploads/portfolio/social Media_6358c8b393aa5.jpg', NULL, '2021-07-07 12:43:36', '2022-10-26 09:42:11'),
(11, 2, 'Book Cover Design', 'book-cover-design', 'Est ut aspernatur e', 'uploads/portfolio/I-will-do-professional-Book+Cover+design_632c1272f41e2.jpg', NULL, '2021-07-07 12:43:53', '2022-09-22 11:44:51'),
(12, 3, 'Social Media Post Design', 'social-media-post-design', 'Quasi ullam voluptat', 'uploads/portfolio/My Social Media post_632c12399342e.jpg', NULL, '2021-07-07 12:44:07', '2022-09-22 11:43:53'),
(13, 2, 'Youtube Thumbnail', 'youtube-thumbnail', 'Freelancer Faruk', 'uploads/portfolio/mockup222_63592157ecb99.jpg', NULL, '2022-10-26 15:54:15', '2022-10-26 16:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `details`, `image`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Graphic Design', 'graphic-design', '<p><span style=\"font-family: Arial; font-size: 13px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">Our experienced professionals will work on creating breathtaking designs to reach your customers and keep up with the brand\'s identity.</font></span></p>', 'uploads/service/5817154_637a33a65c35d.jpg', 'uploads/service/content_6066215adf361.png', NULL, '2021-03-10 10:21:40', '2022-11-21 16:13:48'),
(2, 'Web Design & Development', 'web-design-development', '<p><span style=\"font-family: Arial; font-size: 13px; white-space: pre-wrap;\"><font color=\"#000000\">Create beautiful, engaging websites using modern web design best practices.</font></span><br></p>', 'uploads/service/76-[Converted]_637a3560c9782.jpg', 'uploads/service/web-programming_62a4c8271101f.png', NULL, '2021-03-14 15:29:46', '2022-11-21 16:15:00'),
(3, 'Digital Marketing', 'digital-marketing', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Our element advanced specialists execute powerful web advertising arrangements in view of your business targets. With 100% modified strategies and centered site advancement methodology, we expand client engagement&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:14915,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15790330},&quot;9&quot;:0,&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:67852},&quot;15&quot;:&quot;proxima_novalight&quot;,&quot;16&quot;:10}\" style=\"font-size: 10pt; font-family: Arial; color: rgb(1, 9, 12);\"><b>Our element advanced specialists execute powerful web advertising arrangements in view of your business targets. With 100% modified strategies and centered site advancement methodology, we expand client engagement .</b></span><br></p>', 'uploads/service/275Z_4_637a324e0e7a2.jpg', 'uploads/service/bullhorn_62a4c8381b367.png', '2022-11-21 16:24:39', '2021-03-14 15:30:05', '2022-11-21 16:24:39'),
(4, 'Content Creation', 'content-creation', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span>', 'uploads/service/287_637a340d89d2f.jpg', 'uploads/service/content_62a4c87444507.png', NULL, '2021-03-14 15:32:07', '2022-11-20 19:05:01'),
(5, 'Digital Marketing', 'digital-marketing', '<p><span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Our element advanced specialists execute powerful web advertising arrangements in view of your business targets. With 100% modified strategies and centered site advancement methodology, we expand client engagement&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:14915,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:15790330},&quot;9&quot;:0,&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:67852},&quot;15&quot;:&quot;proxima_novalight&quot;,&quot;16&quot;:10}\" style=\"font-size: 10pt; font-family: Arial; color: rgb(1, 9, 12);\">Our element advanced specialists execute powerful web advertising arrangements in view of your business targets. With 100% modified strategies and centered site advancement methodology, we expand client engagement</span><br></p>', 'uploads/service/945452_637b60acc0f02.png', 'uploads/service/945452_637b60acc1286.png', '2022-11-21 16:28:40', '2022-11-21 16:27:40', '2022-11-21 16:28:40'),
(6, 'Digital Marketing', 'digital-marketing', '<p><b>Let\'s Check Digital Marketing Services</b></p><p>Facebook, Instagram &amp; Pinterest</p><p>Social Media Marketing, Management &amp; Optimization</p><p>Content creation,</p><p>Daily sheduil post,</p><p>Social Media Advatisment-</p><p>Engagement, Traffic, Lead, Conversion, Catalogue, book &amp; apps promotional campaign</p><p>Search Engile Marketing</p><p>Google Search, Lead, Display ad campaign</p><p>YouTube ads campaign</p><p>Google Merchant setup, Fix &amp; run campaign</p><p>Let\'s Check Digital Marketing Services</p><p>Available in also best Tracking and analytics services</p><p>Google Tag Manager &amp; Analytics setup</p><p>Facebook/Meta Pixel, Pinterest Tag, ticktock pixel install</p><p>Event and data Layer creation&nbsp;<span style=\"font-size: 1rem;\">Fix-</span></p><p>Any kind of GTM, Pixel, Pinterest tag event issue</p><p>Catalogue, Shop, Merchant issue</p><p>Facebook ads account disable, restricted</p><div><br></div>', 'uploads/service/Artboard_5_63917dece1cbc.png', 'uploads/service/3141158_63917dece6645.png', NULL, '2022-12-05 23:43:35', '2022-12-08 11:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'azharul@gmail.com', '2021-03-21 09:31:23', '2021-03-15 12:33:53', '2021-03-21 09:31:23'),
(2, 'author@gmail.com', NULL, '2021-03-21 09:31:48', '2021-03-21 09:31:48'),
(3, 'mahfuz@gmail.com', NULL, '2021-03-21 09:32:13', '2021-03-21 09:32:13'),
(4, 'zealtechbd.com@buycodeshop.com', NULL, '2022-12-09 13:40:14', '2022-12-09 13:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `priority`, `facebook`, `twitter`, `linkedin`, `instagram`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Abdur Rahman Babu', 'Operation Manager', 2, 'https://www.facebook.com/shunno.dhara', NULL, NULL, NULL, 'uploads/team/03_62a59aba3ce7b.JPG', NULL, '2021-03-10 06:48:52', '2022-06-12 11:50:18'),
(3, 'Abu Zafor Shourov', 'Digital Marketing Specialist', 4, 'Nisi veniam volupta', 'Esse dolorem velit', 'Esse odit nulla ut m', 'Aliqua Nostrum et s', 'uploads/team/unnamed_635923caceb85.jpg', NULL, '2021-03-10 08:36:57', '2022-10-26 16:10:50'),
(4, 'Tanmoy Kumar Sarkar', 'Clipping path specialist', 2, 'https://www.facebook.com/Tanmoyks.bd', NULL, NULL, NULL, 'uploads/team/Screenshot_1_62a59ba1e3920.jpg', NULL, '2021-03-10 12:56:02', '2022-06-12 11:54:09'),
(6, 'Montana Cross', 'Voluptate ut laborum', 3, 'Aut aut esse tempor', 'Ea ad quae voluptatu', 'Reiciendis laboris d', 'At aute aperiam mole', 'uploads/team/577-55-01_605061cd93203_605255715758b.jpg', NULL, '2021-03-11 23:21:28', '2021-03-17 13:16:01'),
(7, 'Bishnu Roy', 'Senior Visualizer', 5, 'https://www.facebook.com/bisnu.dp', NULL, NULL, NULL, 'uploads/team/4855944c-7ca5-43cc-a8d3-31269509c4a2_62a59b57525da.jpg', NULL, '2021-03-13 12:16:05', '2022-06-12 11:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quote` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `priority`, `designation`, `image`, `quote`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Atick Hasan Sajib', 1, 'Chairman', 'uploads/team/IMG_9024 copy_62b08ad27302c.jpg', 'There is no alternative to It in the present age. So we are also moving forward at a relentless pace.', NULL, '2021-03-11 12:43:39', '2022-06-20 18:57:22'),
(2, 'Swajon Rahman', 2, 'Managing Director', 'uploads/team/100- (1)_62b08eb26e77b.jpg', 'We don\'t say we are the best. We Hopefully our service will tell us all. We will go out of our way to serve our clients at home and abroad.', NULL, '2021-03-11 13:23:44', '2022-06-20 19:13:54'),
(3, 'Munna Ali', 3, 'Director', 'uploads/team/Munna PP Size Photo (1) (1)_62b08e453830f.jpeg', 'We believe in client satisfaction and we deliver projects that can successfully meet or exceed the prospects of the stakeholders', NULL, '2021-03-14 15:24:44', '2022-06-20 19:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'noImage.png',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john donne', 'john@gmail.com', 'admin', NULL, '$2y$10$EKkF0crC1jNxOYN/EYjMB.g4N3gh.ahIEpInlGfbKJUHQyo8KmBr2', 'uploads/user/testimonials-4_607d9d4ce0c3d.jpg', NULL, '2021-03-08 14:30:37', '2021-04-19 09:10:04'),
(2, 'azharul islam', 'azharul@gmail.com', 'azhar', NULL, '$2y$10$hAQ965Q4p9ahf9izfotYz.SyXbzZQCcNEiXe4TN38miwScl4I.3Py', 'uploads/user/89283007_2670224103224000_5958839683759734784_n_6058d4f96107c.jpg', NULL, '2021-03-22 11:33:45', '2021-03-22 11:51:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newpages`
--
ALTER TABLE `newpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_category_id_foreign` (`category_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `newpages`
--
ALTER TABLE `newpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
