-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2021 at 02:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cedhosting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `blog_title` varchar(44) NOT NULL,
  `blog_desc` text NOT NULL,
  `blog_date` datetime NOT NULL,
  `author_name` varchar(44) NOT NULL DEFAULT 'Anonymous',
  `caption_img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_info`
--

CREATE TABLE `tbl_company_info` (
  `id` int(11) NOT NULL,
  `comp_name` varchar(55) NOT NULL,
  `comp_logo` varchar(1000) NOT NULL,
  `comp_contact` varchar(33) NOT NULL,
  `comp_email` varchar(33) NOT NULL,
  `comp_address` varchar(88) NOT NULL,
  `comp_city` varchar(44) NOT NULL,
  `comp_state` int(11) NOT NULL,
  `comp_pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_billing_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `promocode_applied_id` int(11) NOT NULL,
  `discount_amt` float NOT NULL,
  `total_amt_after_dis` float NOT NULL,
  `tax_amt` float NOT NULL,
  `final_invoice_amt` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product1`
--

CREATE TABLE `tbl_product1` (
  `id` int(10) NOT NULL,
  `prod_parent_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_available` tinyint(1) NOT NULL,
  `page_link` longtext NOT NULL,
  `prod_launch_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product1`
--

INSERT INTO `tbl_product1` (`id`, `prod_parent_id`, `prod_name`, `prod_available`, `page_link`, `prod_launch_date`) VALUES
(1, 0, 'Hosting', 1, '', '2021-01-12 10:09:36'),
(2, 1, 'windows hosting', 1, 'window.php', '2021-01-14 05:43:52'),
(3, 1, 'Linux Hosting', 1, 'linux.php', '2021-01-14 05:44:30'),
(4, 1, 'erere', 1, '', '2021-01-14 05:49:41'),
(37, 2, 'puneetyadav', 1, 'puneet.php', '2021-01-14 18:22:07'),
(38, 3, 'yadav', 1, 'et.php', '2021-01-14 18:25:13'),
(39, 2, 'linux hosting', 1, 'rt', '2021-01-15 09:46:58'),
(40, 1, 'gghjgghj', 1, '<p>yjyfghjujjf</p>', '2021-01-15 09:04:17'),
(41, 1, 'Mach hosting', 1, '<p>xyz</p>', '2021-01-15 09:06:29'),
(42, 1, 'hosing mac', 1, '<p style=\"list-style-type: none;\">Unlimited DomainsDisk SpaceBandwidth and Email Addresse</p>', '2021-01-15 09:08:21'),
(43, 1, 'hosinger', 1, '<p>drtgfh</p>', '2021-01-15 09:15:25'),
(44, 1, 'hosinger', 1, '<p>drtgfh</p>\n<p>fuewhu</p>\n<p>wfj</p>\n<p>ewfjfq</p>\n<p>frfojrg</p>', '2021-01-15 09:15:36'),
(45, 1, 'hosinger', 1, '<p>drtgfh</p>\n<p>fuewhu</p>\n<p>wfj</p>\n<p>ewfjfq</p>\n<p>frfojrg</p>', '2021-01-15 09:15:36'),
(46, 41, 'Basic', 1, 'not mendatory', '2021-01-15 15:04:32'),
(47, 41, 'Satandard', 1, 'abhi ke liye yahi ', '2021-01-15 15:10:01'),
(48, 1, 'Mac hosting', 1, '<ul>\n<li style=\"list-style-type: none;\">\n<ul>\n<li style=\"list-style-type: none;\">Unlimited&nbsp;Domains, Disk Space, Bandwidth and Email Addresses</li>\n<li style=\"list-style-type: none;\">99.9% uptime&nbsp;with dedicated 24/7 technical support</li>\n<li style=\"list-style-type: none;\">Powered by&nbsp;CloudLinux, cPanel (demo), Apache, MySQL, PHP, Ruby &amp; more</li>\n<li style=\"list-style-type: none;\">Launch&nbsp;your business with Rs. 2000* Google AdWords Credit *</li>\n<li style=\"list-style-type: none;\">30 day&nbsp;Money Back Guarantee</li>\n</ul>\n</li>\n</ul>\n<p>&nbsp;</p>', '2021-01-15 10:53:07'),
(49, 48, 'Basic Plan', 1, '', '2021-01-15 15:25:44'),
(50, 48, 'Standard Plan', 1, '', '2021-01-15 15:26:33'),
(51, 1, 'hostingeree', 1, '<p>rtgertgttgty</p>', '2021-01-16 13:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_description`
--

CREATE TABLE `tbl_product_description` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `mon_price` float NOT NULL,
  `annual_price` float NOT NULL,
  `sku` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_description`
--

INSERT INTO `tbl_product_description` (`id`, `prod_id`, `description`, `mon_price`, `annual_price`, `sku`) VALUES
(7, 37, '{\"webspace\":\"350\",\"bandwidth\":\"51\",\"freedomain\":\"domain\",\"languagetechnology\":\"c,html,java\",\"mailbox\":\"5\"}', 145, 240, 'xyz'),
(8, 38, '{\"webspace\":\"35\",\"bandwidth\":\"51\",\"freedomain\":\"domain\",\"languagetechnology\":\"c,html,java\",\"mailbox\":\"50\"}', 145, 240, 'xyz'),
(9, 39, '{\"webspace\":\"12\",\"bandwidth\":\"222\",\"freedomain\":\"0\",\"languagetechnology\":\"a,f,k\",\"mailbox\":\"0\"}', 21, 111, 'd'),
(10, 46, '{\"webspace\":\"450\",\"bandwidth\":\"500\",\"freedomain\":\"4\",\"languagetechnology\":\"c,python,java,html\",\"mailbox\":\"21\"}', 499, 1499, '12'),
(11, 47, '{\"webspace\":\"250\",\"bandwidth\":\"512\",\"freedomain\":\"10\",\"languagetechnology\":\"c,python,datasciencence\",\"mailbox\":\"10\"}', 199, 999, '10'),
(12, 49, '{\"webspace\":\"499\",\"bandwidth\":\"512\",\"freedomain\":\"10\",\"languagetechnology\":\"C,java\",\"mailbox\":\"10\"}', 499, 2999, '10'),
(13, 50, '{\"webspace\":\"499\",\"bandwidth\":\"512\",\"freedomain\":\"10\",\"languagetechnology\":\"C,java\",\"mailbox\":\"30\"}', 999, 4999, '30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promocode`
--

CREATE TABLE `tbl_promocode` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` varchar(22) NOT NULL,
  `max_discount` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `expiry_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `activation_time` datetime NOT NULL,
  `tenure` char(1) NOT NULL,
  `expiry_time` datetime NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_billing_add`
--

CREATE TABLE `tbl_user_billing_add` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `billing_name` varchar(55) NOT NULL,
  `house_no` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` int(11) NOT NULL,
  `country` varchar(55) NOT NULL,
  `pincode` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email_approved` tinyint(1) NOT NULL DEFAULT 0,
  `phone_approved` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `is_admin` tinyint(1) NOT NULL,
  `sign_up_date` datetime NOT NULL DEFAULT current_timestamp(),
  `password` varchar(100) NOT NULL,
  `security_question` varchar(100) DEFAULT NULL,
  `security_answer` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `email`, `name`, `mobile`, `email_approved`, `phone_approved`, `active`, `is_admin`, `sign_up_date`, `password`, `security_question`, `security_answer`) VALUES
(1, 'rtgsre', 'gfh', '6787', 1, 0, 1, 0, '2000-03-13 03:34:23', '54', 'dfgth', 'dresgsre'),
(2, 'yadavpunet766@gmail.com', 'puneet ', '98898787', 1, 0, 1, 0, '2021-01-12 12:51:28', '12', 'What is the name of your favourite childhood friend?', 'pta nhi'),
(3, 'yadavpunet766@gmail.com', 'puneet ', '', 1, 0, 1, 0, '2021-01-12 13:02:00', '00', 'What was your childhood nickname?', 'pta nhi'),
(13, 'yadavpunet766@gmail.com', 'raunak', '98898787', 1, 0, 1, 0, '2021-01-12 14:22:58', '$2y$10$d9MLhtquEdbCyHYNExWhueiSlCgqYsyU4GWpkGZpNBLAyKiwjDE.C', 'What was your childhood nickname?', 'pta nhi'),
(14, 'admin@gmail.com', 'admin', '98898787', 1, 0, 1, 1, '2021-01-12 14:24:08', '$2y$10$IJVAHY80IoIuKJgVsJnRPuyMoN2cJ7spAQg8MgqGWaZ9C/QKSwLny', 'What was your childhood nickname?', 'pta nhi'),
(15, 'raunakyadav00@gmail.com', 'raunak', '98898787', 1, 0, 1, 0, '2021-01-12 14:26:55', '$2y$10$r4CJrsBYAGEFL4dVDxZAQ.FjW2xOnDLYLiK/sk6tk5FlH4nAXVHNq', 'What is the name of your favourite childhood friend?', 'pta nhi'),
(16, 'dfggd@gmail.com', 'dfdfs', '2145t6y47', 1, 0, 1, 0, '2021-01-14 06:54:57', '$2y$10$jixEaXOYjK0k.HpqvsAN3OLfGnmCY7tZYWgq.m05e0gAAPVsHZvKq', 'What was your childhood nickname?', 'dfg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company_info`
--
ALTER TABLE `tbl_company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product1`
--
ALTER TABLE `tbl_product1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_description`
--
ALTER TABLE `tbl_product_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_promocode`
--
ALTER TABLE `tbl_promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_billing_add`
--
ALTER TABLE `tbl_user_billing_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_company_info`
--
ALTER TABLE `tbl_company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product1`
--
ALTER TABLE `tbl_product1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_product_description`
--
ALTER TABLE `tbl_product_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_promocode`
--
ALTER TABLE `tbl_promocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_billing_add`
--
ALTER TABLE `tbl_user_billing_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
