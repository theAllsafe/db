-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2021 at 05:31 PM
-- Server version: 10.3.29-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scsyin_multschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL,
  `aboutus` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `aboutus`, `image`, `description`, `updated_by`) VALUES
(1, 'About Us', 'http://localhost:8080/school/my-assets/image/293b08ba84ad22e23f11fe7d5cf43eeb.jpg', 'As a result of observing several inconsistencies and flaws, we have devised 5 comprehensive ways to tackle the barriers to education. \r\n<br>\r\nOur vision is to break all barriers between an educational ecosystem, and a knowledge seeker, irrespective of being present anywhere in the world.', '2021-02-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('502000001', '1-Abhishek Warehouse', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 1, 0.00, '1', '2020-10-03 18:15:18', '', '0000-00-00 00:00:00'),
('102030000001', '1-Walking Customer', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 1, NULL, 0.00, '1', '2019-11-16 08:44:42', '', '0000-00-00 00:00:00'),
('502000002', '2-TAS Lucknow', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 2, 0.00, '1', '2020-10-03 18:29:43', '', '0000-00-00 00:00:00'),
('102030000002', '2-Test Cust', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 2, NULL, 0.00, '1', '2020-10-03 18:43:02', '', '0000-00-00 00:00:00'),
('102030000003', '3-xyz', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 3, NULL, 0.00, '1', '2020-10-03 23:22:12', '', '0000-00-00 00:00:00'),
('102030000004', '4-Deepak', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 4, NULL, 0.00, '1', '2020-10-04 16:06:09', '', '0000-00-00 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, 'admin', '2015-10-15 19:50:43', '', '2019-09-05 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, NULL, NULL, 0.00, '', '2019-09-05 00:00:00', 'admin', '2013-09-18 15:29:35'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, NULL, NULL, 0.00, '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, '1', '2019-06-25 13:47:29', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, 0.00, '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, 0.00, '', '2019-09-05 00:00:00', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, 0.00, 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42'),
('401', 'Default expense', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, 1.00, '1', '2019-12-21 09:00:55', '', '0000-00-00 00:00:00'),
('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, 0.00, '1', '2019-04-08 10:36:32', '', '2019-09-05 00:00:00'),
('403', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, 1, NULL, NULL, 1.00, '1', '2019-06-17 11:44:52', '', '2019-09-05 00:00:00'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, 0.00, '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('4', 'Expence', 'COA', 0, 1, 0, 0, 'E', 0, 0, NULL, NULL, 0.00, '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, NULL, NULL, 0.00, '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, 0.00, '2', '2018-07-07 15:21:58', '', '2019-09-05 00:00:00'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, 0.00, 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, 0.00, '1', '2019-01-26 07:37:20', '', '2019-09-05 00:00:00'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, 0.00, '', '2019-09-05 00:00:00', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, 0.00, 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('402', 'Product Purchase', 'Expence', 1, 1, 0, 0, 'E', 0, 0, NULL, NULL, 0.00, '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42'),
('303', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, 0.00, '1', '2019-06-17 08:22:42', '', '2019-09-05 00:00:00'),
('304', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, 0.00, '1', '2019-06-17 11:31:11', '', '2019-09-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(1, '20201003184124', 'Purchase', '2020-10-03', '10107', 'Inventory Debit For Supplier TAS Lucknow', 6000.00, 0.00, '1', '1', '2020-10-03 18:41:24', NULL, NULL, '1'),
(2, '20201003184124', 'Purchase', '2020-10-03', '502000002', 'Supplier .TAS Lucknow', 0.00, 6000.00, '1', '1', '2020-10-03 00:00:00', NULL, NULL, '1'),
(3, '20201003184124', 'Purchase', '2020-10-03', '402', 'Company Credit For  TAS Lucknow', 6000.00, 0.00, '1', '1', '2020-10-03 18:41:24', NULL, NULL, '1'),
(4, '20201003184124', 'Purchase', '2020-10-03', '1020101', 'Cash in Hand For Supplier TAS Lucknow', 0.00, 6000.00, '1', '1', '2020-10-03 18:41:24', NULL, NULL, '1'),
(5, '20201003184124', 'Purchase', '2020-10-03', '502000002', 'Supplier .TAS Lucknow', 6000.00, 0.00, '1', '1', '2020-10-03 00:00:00', NULL, NULL, '1'),
(6, '8622677292', 'INV', '2020-10-03', '10107', 'Inventory credit For Invoice No1000', 0.00, 600.00, '1', '1', '2020-10-03 18:44:14', NULL, NULL, '1'),
(7, '8622677292', 'INV', '2020-10-03', '102030000002', 'Customer debit For Invoice No -  1000 Customer Test Cust', 720.00, 0.00, '1', '1', '2020-10-03 18:44:14', NULL, NULL, '1'),
(8, '8622677292', 'INVOICE', '2020-10-03', '303', 'Sale Income For Invoice NO - 1000 Customer Test Cust', 0.00, 720.00, '1', '1', '2020-10-03 18:44:14', NULL, NULL, '1'),
(9, '8622677292', 'INV', '2020-10-03', '102030000002', 'Customer credit for Paid Amount For Customer Invoice NO- 1000 Customer- Test Cust', 0.00, 720.00, '1', '1', '2020-10-03 18:44:14', NULL, NULL, '1'),
(10, '8622677292', 'INV', '2020-10-03', '1020101', 'Cash in Hand in Sale for Invoice No - 1000 customer- Test Cust', 720.00, 0.00, '1', '1', '2020-10-03 18:44:14', NULL, NULL, '1'),
(11, '20201003184830', 'Purchase', '2020-10-03', '10107', 'Inventory Debit For Supplier Abhishek Warehouse', 6500.00, 0.00, '1', '1', '2020-10-03 18:48:30', NULL, NULL, '1'),
(12, '20201003184830', 'Purchase', '2020-10-03', '502000001', 'Supplier .Abhishek Warehouse', 0.00, 6500.00, '1', '1', '2020-10-03 00:00:00', NULL, NULL, '1'),
(13, '20201003184830', 'Purchase', '2020-10-03', '402', 'Company Credit For  Abhishek Warehouse', 6500.00, 0.00, '1', '1', '2020-10-03 18:48:30', NULL, NULL, '1'),
(14, '20201003184830', 'Purchase', '2020-10-03', '1020101', 'Cash in Hand For Supplier Abhishek Warehouse', 0.00, 6500.00, '1', '1', '2020-10-03 18:48:30', NULL, NULL, '1'),
(15, '20201003184830', 'Purchase', '2020-10-03', '502000001', 'Supplier .Abhishek Warehouse', 6500.00, 0.00, '1', '1', '2020-10-03 00:00:00', NULL, NULL, '1'),
(16, '8622677292', 'Return', '2020-10-03', '102030000002', 'Customer debit For Return Test Cust', 0.00, 800.00, '1', '1', '2020-10-03 23:26:11', NULL, NULL, '1'),
(17, '4178378441', 'INV', '2020-10-04', '10107', 'Inventory credit For Invoice No1001', 0.00, 1850.00, '1', '1', '2020-10-04 16:07:36', NULL, NULL, '1'),
(18, '4178378441', 'INV', '2020-10-04', '102030000004', 'Customer debit For Invoice No -  1001 Customer Deepak', 895.00, 0.00, '1', '1', '2020-10-04 16:07:36', NULL, NULL, '1'),
(19, '4178378441', 'INVOICE', '2020-10-04', '303', 'Sale Income For Invoice NO - 1001 Customer Deepak', 0.00, 895.00, '1', '1', '2020-10-04 16:07:36', NULL, NULL, '1'),
(20, '5483569592', 'INV', '2020-10-10', '10107', 'Inventory credit For Invoice No1002', 0.00, 600.00, '1', '1', '2020-10-10 01:31:22', NULL, NULL, '1'),
(21, '5483569592', 'INV', '2020-10-10', '102030000001', 'Customer debit For Invoice No -  1002 Customer Walking Customer', 800.00, 0.00, '1', '1', '2020-10-10 01:31:22', NULL, NULL, '1'),
(22, '5483569592', 'INVOICE', '2020-10-10', '303', 'Sale Income For Invoice NO - 1002 Customer Walking Customer', 0.00, 800.00, '1', '1', '2020-10-10 01:31:22', NULL, NULL, '1'),
(23, '5483569592', 'INV', '2020-10-10', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1002 Customer- Walking Customer', 0.00, 800.00, '1', '1', '2020-10-10 01:31:22', NULL, NULL, '1'),
(24, '5483569592', 'INV', '2020-10-10', '1020101', 'Cash in Hand in Sale for Invoice No - 1002 customer- Walking Customer', 800.00, 0.00, '1', '1', '2020-10-10 01:31:22', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_category`
--

CREATE TABLE `appointment_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(210) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appointment_category`
--

INSERT INTO `appointment_category` (`id`, `category_name`, `image`) VALUES
(1, 'Career Councellor', 'http://scsy.in/school/my-assets/image/education/Career_Councellor.jpeg'),
(2, 'Admission Councellor', 'http://scsy.in/school/my-assets/image/education/Admission_Councellor.jpeg'),
(3, 'Psychiatrist', 'http://scsy.in/school/my-assets/image/education/Psychiatrist.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

CREATE TABLE `app_setting` (
  `id` int(11) NOT NULL,
  `localhserver` varchar(250) DEFAULT NULL,
  `onlineserver` varchar(250) DEFAULT NULL,
  `hotspot` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`id`, `localhserver`, `onlineserver`, `hotspot`) VALUES
(1, 'https://192.168.1.153/saleserp_sas_v-2', 'https://saleserpnew.bdtask.com/saleserp_v9.3-demo', 'https://192.168.1.167/saleserp');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_add`
--

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner_content` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_content`, `image`, `status`, `created_by`, `updated_by`) VALUES
(13, 'Skywart', 'http://scsy.in/school/my-assets/image/banner/f49ca9e9e16113ffed7d8b7570aa7dc9.jpg', 0, '2021-01-22 00:00:00', '2021-02-01 00:00:00'),
(14, 'books town', 'http://scsy.in/school/./my-assets/image/banner/8071286d3fe453435d8a43038dccb20c.jpg', 0, '2021-01-22 00:00:00', '0000-00-00 00:00:00'),
(16, 'counsellors', 'http://scsy.in/school/./my-assets/image/banner/5e1621ea0b9d2ca992ccf19800835650.jpg', 0, '2021-01-22 00:00:00', '0000-00-00 00:00:00'),
(19, 'learners program', 'http://scsy.in/school/./my-assets/image/banner/e7a9224bbc4a6187070ffcfa6e474508.jpg', 0, '2021-01-25 00:00:00', '0000-00-00 00:00:00'),
(20, 'competition', 'http://scsy.in/school/./my-assets/image/banner/24788d00b8ea6cd65eb394b886f5b9d4.jpg', 0, '2021-01-25 00:00:00', '0000-00-00 00:00:00'),
(21, 'SCHOLARSHIP', 'http://scsy.in/school/my-assets/image/banner/053ecf2983984d446070a075251c3c86.jpg', 0, '2021-01-25 00:00:00', '2021-02-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `add_book` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `book_price` varchar(100) DEFAULT NULL,
  `author_name` varchar(100) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `months` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `isbn_number` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `condition_type` varchar(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` datetime DEFAULT NULL,
  `updated_by` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `school_id`, `login_id`, `category_id`, `add_book`, `image`, `book_price`, `author_name`, `days`, `months`, `year`, `isbn_number`, `description`, `condition_type`, `status`, `created_by`, `updated_by`) VALUES
(1, NULL, 76, 3, 'Hindi', 'https://skywart.com/./my-assets/image/book/d6fe7810e4c4b2ec36863c1a144887a3.jpeg', '300', 'Hindi', 0, NULL, 0, 'JAVA123', 'Hindi', 'First hand', 0, '2021-04-08 00:00:00', NULL),
(3, NULL, 168, 3, 'accountancy ', 'http://skywart.com/./my-assets/image/book/49cedb964612a821b59326258b32d843.jpg', '200', 'kailash jha', 0, '31 1 0', 0, '152121212', 'accountancy book ', 'Second hand', 0, '2021-04-25 00:00:00', NULL),
(8, NULL, 89, 3, 'JAVA 06:24', 'https://www.skywart.com/./my-assets/image/book/032938d52dd5c1beb9dc31b9adbe22e9.jpeg', '390', 'PHP', 0, NULL, 0, 'JAVA123', 'vender@gmail.com', 'First hand', 0, '2021-05-06 00:00:00', NULL),
(9, NULL, 158, 3, 'Test', 'https://www.skywart.com/./my-assets/image/book/6fbc50dc49dda27fba12d937ad56a114.jpeg', '390', 'PHP', 5, '12', 1, 'JAVA123', 'Description', 'First hand', 0, '2021-05-07 00:00:00', NULL),
(10, NULL, 164, 2, 'Business studies', 'http://skywart.com/./my-assets/image/book/f3710a09a632df54ea82c7ca9aad5bc5.jpeg', '450', 'Dev Singh ', 0, '11', 0, '', 'total cost will be 450 for 11 months ', 'Second hand', 0, '2021-05-07 00:00:00', NULL),
(11, NULL, 164, 2, 'Business studies', 'http://skywart.com/./my-assets/image/book/6b5fe1ec05f20568b262cc49de0c70ae.jpeg', '450', 'Dev Singh ', 0, '11', 0, '', 'total cost will be 450 for 11 months ', 'Second hand', 0, '2021-05-07 00:00:00', NULL),
(12, NULL, 158, 3, 'JAVA', 'https://www.skywart.com/./my-assets/image/book/5763733ff28791de688691646a0782d4.jpeg', '890', 'PHP', 5, '1', 1, 'JAVA123', 'vc', 'Second hand', 0, '2021-05-07 00:00:00', NULL),
(13, NULL, 158, 3, 'JAVA 06:24', 'https://www.skywart.com/./my-assets/image/book/13058e31628dd0756d5cfdf5c388c6ff.jpeg', '390', 'PHP', 1, '1', 1, 'JAVA123', 'b', 'First hand', 0, '2021-05-07 00:00:00', NULL),
(14, NULL, 158, 3, 'JAVA 06:24', 'https://www.skywart.com/./my-assets/image/book/76efa5a20dc627c76a3f2a93413c123b.jpg', '390', 'PHP', 0, '', 0, 'JAVA123', 'q', 'First hand', 0, '2021-05-07 00:00:00', NULL),
(15, NULL, 158, 3, 'JAVA 06:24', 'https://www.skywart.com/./my-assets/image/book/1a2f1770c7f82088580cfcddc021f965.jpg', '390', 'PHP', 0, '', 0, 'JAVA123', 'a', 'First hand', 0, '2021-05-07 00:00:00', NULL),
(16, NULL, 158, 3, 'JAVA 06:24', 'https://www.skywart.com/./my-assets/image/book/c5bfca03b1caaae5b42e29f10a3e4239.jpg', '390', 'q', 0, '', 0, 'PHP123', 'q', 'First hand', 0, '2021-05-07 00:00:00', NULL),
(17, NULL, 174, 2, 'Financial Management and Policy ', 'http://skywart.com/./my-assets/image/book/f5df2aeeeb558c851c8b7670d896bb4d.jpeg', '200', 'James C Van Home', 0, '5', 0, '', 'This book is for rent and for 11 Months just for 200/- . The Publication house is Pearson . ', 'Second hand', 0, '2021-05-07 00:00:00', NULL),
(19, NULL, 188, 1, 'Social studies ', 'http://skywart.com/./my-assets/image/book/a8c021755e64ea9133988de1dbd9b1bd.jpeg', '875', 'Pranjal Singh ', 0, '', 0, '', 'book', 'First hand', 0, '2021-05-08 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `books_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isbn_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_slug` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `category_name`, `category_slug`, `image`, `created_by`, `updated_by`) VALUES
(1, 'Buy', 'buybook', 'http://scsy.in/school/my-assets/image/education/1-01.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Rent', 'rentbook', 'http://scsy.in/school/my-assets/image/education/2-01.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Lease', 'leasebook', 'http://scsy.in/school/my-assets/image/education/3-01.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id`, `username`, `email`, `mobile_number`, `status`, `created_by`) VALUES
(1, 'dds', 'aaa@wddd.vvv', '3324323333333', 0, '2020-10-15 00:00:00'),
(2, 'dsfdsfds', 'aaa@wddd.vvv', '764735743', 0, '2020-10-16 00:00:00'),
(3, 'sjdgfgshdf', 'tiwarisanny93@gmail.com', '43658734658734', 0, '2020-10-16 00:00:00'),
(4, '', '', '', 0, '2020-12-26 00:00:00'),
(5, 'Jessica.Effertz', 'elainelevin@msn.com', 'deliverables', 0, '2020-12-28 00:00:00'),
(6, 'Gerard.Carter35', 'mailgracepeters@aol.com', 'Green', 0, '2020-12-28 00:00:00'),
(7, 'Bernice.Shields', 'donny.carroll2@gmail.com', 'Camp', 0, '2021-01-11 00:00:00'),
(8, '', '', '', 0, '2021-01-18 00:00:00'),
(9, '', '', '', 0, '2021-01-19 00:00:00'),
(10, 'skywart', 'skywartgroup@gmail.com', '09936930509', 0, '2021-01-19 00:00:00'),
(11, '', '', '', 0, '2021-01-19 00:00:00'),
(12, '', '', '', 0, '2021-01-20 00:00:00'),
(13, '', '', '', 0, '2021-01-21 00:00:00'),
(14, 'Jordane_Raynor48', 'leannhilton@hiltonmgmt.com', 'attitude-oriented', 0, '2021-01-22 00:00:00'),
(15, '', '', '', 0, '2021-01-23 00:00:00'),
(16, '', '', '', 0, '2021-01-28 00:00:00'),
(17, 'Kam', 'info@skywart.com', '(34) 9004-9106', 0, '2021-01-31 00:00:00'),
(18, '', '', '', 0, '2021-02-04 00:00:00'),
(19, 'Eric Jones', 'ericjonesonline@outlook.com', '555-555-1212', 0, '2021-02-08 00:00:00'),
(20, 'admin', 'admin12121@gmail.com', '3456789', 0, '2021-02-18 00:00:00'),
(21, 'Gabriele', 'info@skywart.com', '0320 5289648', 0, '2021-02-18 00:00:00'),
(22, 'Manu', 'a@gmail.com', '09793527071', 0, '2021-03-01 00:00:00'),
(23, 'Tod', 'tod@skywart.com', '', 0, '2021-03-04 00:00:00'),
(24, 'Corrine', 'corrine@skywart.com', '702-208-4301', 0, '2021-03-05 00:00:00'),
(25, '', '', '', 0, '2021-03-06 00:00:00'),
(26, '', '', '', 0, '2021-03-08 00:00:00'),
(27, 'Shreya singh', 'shreyasingh3122001@gmail.com', '7275573976', 0, '2021-03-13 00:00:00'),
(28, 'Kourtney', 'kourtney@skywart.com', '', 0, '2021-03-13 00:00:00'),
(29, 'Joie', 'joie@skywart.com', '077 0518 3908', 0, '2021-03-18 00:00:00'),
(30, 'Clara', 'clara@skywart.com', '477 5248', 0, '2021-03-18 00:00:00'),
(31, 'Don', 'don@skywart.com', '04331 55 37 43', 0, '2021-03-21 00:00:00'),
(32, 'Angeles', 'turney.angeles@gmail.com', '814-506-0990', 0, '2021-03-29 00:00:00'),
(33, 'qfdhcgfyq', 'gbynbhd@outlook.com', 'http://www.gk956sm1xy6o855d29udbsu317v8to15s.org/', 0, '2021-03-31 00:00:00'),
(34, 'fhwvpspwnl', 'mqmrcvu@outlook.com', 'http://www.g40553ndd0n2jq25i1jw480mv5ji19vws.org/', 0, '2021-04-02 00:00:00'),
(35, 'Justine', 'info@skywart.com', '', 0, '2021-04-05 00:00:00'),
(36, 'Kraig', 'info@skywart.com', '(08) 8731 4771', 0, '2021-04-06 00:00:00'),
(37, 'Ernest', 'info@skywart.com', '0316 1354467', 0, '2021-04-16 00:00:00'),
(38, 'Hildegard', 'hildegard@skywart.com', '619-744-5711', 0, '2021-04-19 00:00:00'),
(39, '', '', '', 0, '2021-04-21 00:00:00'),
(40, '', '', '', 0, '2021-04-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_ads`
--

CREATE TABLE `campaign_ads` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_ads`
--

INSERT INTO `campaign_ads` (`id`, `image`, `status`, `created_by`, `updated_by`) VALUES
(7, 'http://scsy.in/school/my-assets/image/campaign/b9ed16e510d40d1d8ccac5eab6aa6b30.png', 0, '2021-02-01 00:00:00', '2021-02-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cityservice`
--

CREATE TABLE `cityservice` (
  `id` int(11) NOT NULL,
  `services` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cityservice`
--

INSERT INTO `cityservice` (`id`, `services`, `image`, `status`, `created_by`, `updated_by`) VALUES
(1, 'Our Regional Partner', 'http://scsy.in/school/my-assets/image/service/c0069f6f353ef37768b795a448e38c0a.jpg', 0, '2020-10-17 00:00:00', '2020-11-25 00:00:00'),
(3, 'Our Regional Partner', 'http://scsy.in/school/my-assets/image/service/3eff0cd7a3f122024297377b7858005d.jpg', 0, '2020-10-17 00:00:00', '2020-11-25 00:00:00'),
(4, 'Cities They Handel', 'http://scsy.in/school/my-assets/image/service/5b687db4cffd838cfeadb06fe122337e.jpg', 0, '2020-10-17 00:00:00', '2020-11-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `add_class` varchar(100) NOT NULL,
  `login_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `add_class`, `login_id`, `status`, `created_by`, `updated_by`) VALUES
(1, '3', 0, 0, '2020-10-18 00:00:00', '2020-10-18 00:00:00'),
(2, '5', 0, 0, '2020-10-18 00:00:00', '0000-00-00 00:00:00'),
(3, '1', 0, 0, '2020-11-17 00:00:00', '0000-00-00 00:00:00'),
(4, '14', 3, 0, '2020-11-23 00:00:00', '2020-11-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES
('1', 'All the safe', 'admit@gmail.com', 'New Ashok Nagar New Delhi', '8826279802', 'https://www.allthesafe.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `competiton`
--

CREATE TABLE `competiton` (
  `id` int(11) NOT NULL,
  `topic` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `login_id` int(11) NOT NULL,
  `unique_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `venue` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `eligibility` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fees` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timing` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `competiton`
--

INSERT INTO `competiton` (`id`, `topic`, `login_id`, `unique_id`, `venue`, `eligibility`, `fees`, `timing`, `description`, `status`, `role_id`, `created_by`, `updated_by`) VALUES
(1, 'Topic', 1, '154545', 'Venue', 'Eligibility', '32432', '324', 'Description', 1, 0, '2021-01-07 00:00:00', '2021-01-08 00:00:00'),
(3, 'First Topic', 2, '6565611', 'Siwan', 'MCA', '10000', '3:0 PM', 'testing', 1, 0, '2021-01-08 00:00:00', '0000-00-00 00:00:00'),
(4, 'Linux Meeting Day 1', 3, '3321422', 'India Nagar', 'Anyone Above 18', '25', '10am to 12 pm', 'Test Mode ', 1, 0, '2021-01-16 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `competiton_order`
--

CREATE TABLE `competiton_order` (
  `id` int(11) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `competiton_order`
--

INSERT INTO `competiton_order` (`id`, `comp_id`, `login_id`, `status`, `created_by`, `updated_by`) VALUES
(4, 3, 60, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 60, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 4, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `competiton_register`
--

CREATE TABLE `competiton_register` (
  `id` int(11) NOT NULL,
  `competiton_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `zip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pannumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gstnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `accountnumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ifsc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bankname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `beneficiary` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `meetlink` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_proof` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gstin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pancopy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `eheque` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `competiton_register`
--

INSERT INTO `competiton_register` (`id`, `competiton_name`, `role_id`, `username`, `image`, `password`, `mobile_number`, `email`, `state`, `city`, `zip`, `country`, `address`, `status`, `created_by`, `updated_by`, `company_name`, `pannumber`, `gstnumber`, `accountnumber`, `ifsc`, `bankname`, `beneficiary`, `meetlink`, `address_proof`, `gstin`, `pancopy`, `eheque`) VALUES
(1, 'Abhishekpandit', 11, 'competiton', '', 'competiton', '8267824534543', 'tiwarisanny93@gmail.commmmmmmmmmmmm', 7, 93, '1145646', 'India', 'mohan nagar', 0, '2021-01-07 00:00:00', '2021-01-08 00:00:00', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'Deepak', 11, 'deepak2222', '', '123123', '9801181091', 'rdpk864@gmail.com', 10, 218, '201301', 'india', 'siwan', 0, '2021-01-08 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'competition@competition.com', 11, 'competition@competition.com', '', 'competition@competition.com', '7418529632', 'competition@competition.com', 9, 157, '226016', 'India', 'competition@competition.com', 0, '2021-01-16 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Abhishek Tiwari', 11, 'tiwarisanny93@gmail.com', '', '123123', '08267826795', 'tiwarisanny93@gmail.com', 8, 112, '110096', '', 'd 113 b\r\nnew ashok nagar', 0, '2021-01-16 00:00:00', '0000-00-00 00:00:00', 'test company', 'erewrewr', 'werewrew', 'serjgjew', 'ghjg', 'hjg', 'hjg', 'http://skywart.com/', 'http://skywart.com/./my-assets/image/vendor/d1280cec47dc4d8c3b147c5c4871e3e7.png', 'http://skywart.com/./my-assets/image/vendor/d5fcb76267adfd8b663e4a38d0db6bf1.png', 'http://skywart.com/./my-assets/image/vendor/cd9ba9e91c9c20047ad389cd5b2bbaf4.png', 'http://skywart.com/./my-assets/image/vendor/4395dfa34636fa442e966a40a95679f8.png');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `created_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `phone`, `message`, `created_by`) VALUES
(1, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey, this is Eric and I ran across skywart.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-02-18 00:00:00'),
(2, 'Morris Payant', 'LorindaCasis@gmail.com', '', 'Looking for more serious customers for your site? We can get you targeted visitors tailored for your type of business To find out more Check out: https://bit.ly/buy-traffic-for-your-website', '2021-02-27 00:00:00'),
(3, 'Maude Breeze', 'breeze.maude@yahoo.com', '06-81553390', 'Want to get more serious customers for your online business? We can deliver targeted visitors specifically for your business\r\n For additional information Have a look at: https://bit.ly/buy-targeted-web-traffic', '2021-03-03 00:00:00'),
(4, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey, this is Eric and I ran across skywart.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-03-06 00:00:00'),
(5, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website skywart.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at skywart.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithcustomer.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-03-08 00:00:00'),
(6, 'Jacques', 'info@skywart.com', '04155 57 26 23', 'The #1 Best Dog Bed Of 2021\r\nGet yours now, we\'re currently having a sale & Free Shipping\r\n\r\nShop now: dogloverclub.store\r\n\r\nSkywart', '2021-03-09 00:00:00'),
(7, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey, this is Eric and I ran across skywart.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-03-20 00:00:00'),
(8, 'Joseph Davis', 'joseph@directbizlending.xyz', '202-991-6766', 'Hello,\r\nI hope you\'re having a great day and staying safe!\r\n\r\nAre you looking for working capital to further grow and expand your business?\r\n\r\nIf so, put the power of a direct lender to work for you.\r\n\r\nWe provide loans up to 500k without requiring good credit or collateral. This is because be base our funding decisions off your \r\ntotal bank deposits, and we approve over 95% of all businesses!\r\n\r\nPlus, we provide you a funding decision within 30 seconds without submitting a single document, and funding the very next day.\r\n\r\nVisit www.directbizlending.xyz to get your INSTANT APPROVAL now! Applying does NOT affect your credit!\r\n\r\nAlso, please check out this video to see all the funding options we have available for you.  www.directbizlending.xyz/video\r\n\r\nThanks again and we look forward to funding you soon. \r\n\r\n\r\nWarm Regards,\r\n\r\nJoseph Davis\r\nDirect Biz Lending\r\nwww.directbizlending.xyz\r\n', '2021-03-22 00:00:00'),
(9, 'Jeffrey', 'jeffrey@skywart.com', '69 957 56 64', 'Hello \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n \r\nMany Thanks, \r\n \r\nJeffrey\r\nSkywart', '2021-03-26 00:00:00'),
(10, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website skywart.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at skywart.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithcustomer.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-03-26 00:00:00'),
(11, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with skywart.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out skywart.com.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-04-17 00:00:00'),
(12, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website skywart.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at skywart.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithcustomer.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-04-19 00:00:00'),
(13, 'Ash', '57 Benny Street', '888-938-8893', 'Hello,\r\n\r\nMy Name is Ash and I Run Tech Know Space https://techknowspace.com We are your Premium GO-TO Service Centre for All Logic Board & Mainboard Repair\r\n\r\nWhen other shops say \"it can\'t be fixed\" WE CAN HELP!\r\n\r\nALL iPHONE 8 & NEWER\r\nBACK GLASS REPAIR - 1 HOUR\r\n\r\nDevices We Repair\r\nAudio Devices Audio Device Repair\r\n\r\nBluetooth Speakers - Headphones - iPod Touch\r\nComputers All Computer Repair\r\n\r\nAll Brands & Models - Custom Built - PC & Mac\r\nGame Consoles Game Console Repair\r\n\r\nPS4 - XBox One - Nintendo Switch\r\nLaptops All Laptop Repair\r\n\r\nAll Brands & Models - Acer, Asus, Compaq, Dell, HP, Lenovo, Toshiba\r\nMacBooks All MacBook Repair\r\n\r\nAll Series & Models - Air, Classic, Pro\r\nPhones All Phone Repair\r\n\r\nAll Brands & Models - BlackBerry, Huawei, iPhone, LG, OnePlus, Samsung, Sony\r\nSmart Watches Apple Watch Repair\r\n\r\nApple Watch - Samsung Gear - Moto 360\r\nTablets All Tablet Repair\r\n\r\nAll Brands & Models - iPad, Lenovo Yoga, Microsoft Surface, Samsung Tab\r\n\r\nDrone Repair\r\n\r\nCall us and tell us your issues today!\r\n\r\nToll Free: (888) 938-8893\r\nhttps://techknowspace.com\r\n\r\nAsh Mansukhani\r\nash@techknowspace.com\r\n<img src=\"https://yt3.ggpht.com/ytc/AAUvwnhUhkYdWNeEvgk0Kb1HPFRGjLlXdAKaAXUhwNjC=s900-c-k-c0x00ffffff-no-rj\" alt=\"Ash Mansukhani\" width=\"500\" height=\"600\"> \r\n', '2021-04-21 00:00:00'),
(14, 'Jan Willis', 'ivory.stiltner@inbox.ru', '04172 55 40 36', 'Hello There,\r\n\r\nAre you using Wordpress/Woocommerce or maybe will you intend to utilise it sooner or later ? We currently offer more than 2500 premium plugins but also themes to download : http://shortzz.xyz/0uwya\r\n\r\nThanks,\r\n\r\nJan', '2021-05-02 00:00:00'),
(15, 'Franklyn Mackintosh', 'mackintosh.franklyn@hotmail.com', '79 804 81 39', 'Boost visitor volumes to your site fast. Get 3,000 visitors in any niche for less than $40. Traffic guaranteed or your money refunded: http://bit.ly/real-human-visitors', '2021-05-08 00:00:00'),
(16, 'Demi Hipple', 'hipple.demi@hotmail.com', '044 538 31 46', 'Buy web traffic and boost visitors and sales in just 24 hours! Traffic guaranteed or full refund: http://bit.ly/web-traffic-for-any-niche', '2021-05-12 00:00:00'),
(17, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at skywart.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-05-12 00:00:00'),
(18, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website skywart.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at skywart.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithcustomer.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-05-14 00:00:00'),
(19, 'Cesar Mcinnis', 'cesar.mcinnis@gmail.com', '337-376-9276', 'Buy qualified web traffic for your site. Keyword Targeted. Full refund if not happy.  http://bit.ly/boost-web-traffic-now', '2021-05-15 00:00:00'),
(20, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with skywart.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out skywart.com.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-05-15 00:00:00'),
(21, 'Jaqueline Durand', 'durand.jaqueline@yahoo.com', '0340 5045042', 'Do you advertise with Facebook or Google? Or any other social media? You\'re probably paying way too much for clicks. I can get you high quality, niche targeted visitors to your site for less than a penny per click! 24 hour turnaround. Money back if not satisfied. Here\'s my site: http://bit.ly/boost-web-traffic-now', '2021-05-18 00:00:00'),
(22, 'Beverly Bradshaw', 'beverly.bradshaw@hotmail.com', '428 3400', 'Stats show that people are spending too much on ads online. Some sites are paying as much as $50 per click! This happens because there are too many sites all advertising at the same places. For example, Google is one of the oldest online advertisers around and they have literally billions of websites advertising with them. This creates a level of ad saturation that can only be fixed with higher bids for clicks. You see, the more they charge for clicks the less ads they have to show and that\'s good for them. Now it\'s time to do what\'s good for you! We can generate niche targeted clicks for you using ads that appear on news websites like cnn.com for less than a penny each! Money back guarantee if you\'re not satisfied: http://bit.ly/boost-web-traffic-now', '2021-05-21 00:00:00'),
(23, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website skywart.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at skywart.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithcustomer.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-05-21 00:00:00'),
(24, 'Audra Purnell', 'audra.purnell@gmail.com', '(02) 6110 3796', 'Stats show that people are spending too much on ads online. Some sites are paying as much as $50 per click! This happens because there are too many sites all advertising at the same places. For example, Google is one of the oldest online advertisers around and they have literally billions of websites advertising with them. This creates a level of ad saturation that can only be fixed with higher bids for clicks. You see, the more they charge for clicks the less ads they have to show and that\'s good for them. Now it\'s time to do what\'s good for you! We can generate niche targeted clicks for you using ads that appear on news websites like cnn.com for less than a penny each! Money back guarantee if you\'re not satisfied: http://bit.ly/boost-web-traffic-now', '2021-05-24 00:00:00'),
(25, 'Kathryn Wiles', 'kathryn.wiles@outlook.com', '077 1400 7673', 'Stats show that people are spending too much on ads online. Some sites are paying as much as $50 per click! This happens because there are too many sites all advertising at the same places. For example, Google is one of the oldest online advertisers around and they have literally billions of websites advertising with them. This creates a level of ad saturation that can only be fixed with higher bids for clicks. You see, the more they charge for clicks the less ads they have to show and that\'s good for them. Now it\'s time to do what\'s good for you! We can generate niche targeted clicks for you using ads that appear on news websites like cnn.com for less than a penny each! Money back guarantee if you\'re not satisfied: http://bit.ly/boost-web-traffic-now', '2021-05-26 00:00:00'),
(26, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with skywart.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out skywart.com.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-06-12 00:00:00'),
(27, 'Fay Callender', 'callender.fay@hotmail.com', '06-39681956', 'Don\'t buy traffic for your website until you\'ve seen this first:  http://bit.ly/boost-web-traffic-now', '2021-06-13 00:00:00'),
(28, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at skywart.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-06-14 00:00:00'),
(29, 'Tayla Coulombe', 'coulombe.tayla@googlemail.com', '0352 1842321', 'Don\'t buy traffic for your website until you\'ve seen this first:  http://bit.ly/boost-web-traffic-now', '2021-06-17 00:00:00'),
(30, 'AL SAEED CORPORATION LLC', 'alsaeedcorporation963@gmail.com', '83328739143', 'We are AL SAEED CORPORATION LLC \r\nWe give out loans to individuals/companies at 2% interest rate annually. We are interested in financing projects of large volume. The repayment period is 1 year to 30 years. \r\nCONTACT US: \r\nE-mail: adelhamad@alsaeedcorp.com', '2021-06-17 00:00:00'),
(31, 'Elouise', 'info@skywart.com', '06-40452585', 'Hi there \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 24.99 dollars.  If interested, please visit our site: designerframes.online\r\n \r\nThank You, \r\n \r\nSkywart', '2021-06-18 00:00:00'),
(32, 'Alexander Alan', 'alexander466alan@gmail.com', '83172248443', 'Looking for Facebook likes or Instagram followers? \r\nWe can help you. Please visit https://1000-likes.com/ to place your order.', '2021-06-18 00:00:00'),
(33, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website skywart.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at skywart.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithcustomer.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=skywart.com\r\n', '2021-06-19 00:00:00'),
(34, 'Mike Birch\r\n', 'no-replyjubrE@gmail.com', '88747961866', 'Howdy \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Birch\r\n \r\nSpeed SEO Digital Agency', '2021-06-20 00:00:00'),
(35, 'Modesto Blackmon', 'modesto.blackmon57@gmail.com', '08072 48 34 71', 'Don\'t buy traffic for your website until you\'ve seen this first:  http://bit.ly/boost-web-traffic-now', '2021-06-20 00:00:00'),
(36, 'Mike Webster\r\n', 'no-reply@google.com', '88591948516', 'Hi \r\n \r\nI have just analyzed  skywart.com for its SEO Trend and saw that your website could use a push. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\nregards \r\nMike Webster\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-06-21 00:00:00'),
(37, 'Corine Fremont', 'fremont.corine@msn.com', '01.40.95.67.56', 'Let me just say your site is amazing! It is well put together and easy to navigate which is a plus. With such a nice layout you must attract a lot of visitors. I just wanted to give you a heads up because your site inspired me to build my own. I hope everything is going great and much success in your future. Thank and have the best of day!', '2021-06-22 00:00:00'),
(38, 'Penni Lindley', 'lindley.penni@hotmail.com', '', 'Don\'t buy traffic for your website until you\'ve seen this first:  http://bit.ly/boost-web-traffic-now', '2021-06-23 00:00:00'),
(39, 'Fabian', 'info@skywart.com', '27-55-95-68', 'Hello \r\n\r\nEnjoy the best experiences in using cell phones/tablet to watch the video, play games, facetime, live stream, read, and more with Flexible Adjustable Tablet Holder. Make your life easier at any place, anywhere, anytime. \r\n\r\nShop now with 50% OFF at: universalholder.online\r\n\r\nThe Best, \r\n\r\nFabian\r\nSkywart', '2021-06-24 00:00:00'),
(40, 'Leonor Hatmaker', 'hatmaker.leonor36@msn.com', '070 1103 2953', 'Don\'t buy traffic for your website until you\'ve seen this first:  http://bit.ly/boost-web-traffic-now', '2021-06-26 00:00:00'),
(41, 'Jaime', 'jaime@skywart.com', '06-33899787', '2021 New Telescope Provide You The Clearest Visual Experience\r\n\r\nOur Super Zoom Telescope would allow you to do this anywhere with no problem! The unbeatable design lets you carry the telescope anywhere taking up no room at all.\r\n\r\nSave 50% OFF with Free Worldwide Shipping.  SHOP NOW today: https://telescope.fun\r\n\r\nEnjoy, \r\n\r\nJaime\r\nSkywart', '2021-06-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `mode` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `seat_available` varchar(50) NOT NULL,
  `course_time` varchar(50) NOT NULL,
  `course_price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `course_description` longtext NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currency_tbl`
--

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(1, 'INR', 'Rs.'),
(2, 'BDT', '৳');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pin_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `pin_code`, `created`, `modified`, `status`) VALUES
(183, '1904', '1904@gmail.com', '1234567865', 'vanrashi', NULL, '2021-04-20 11:22:04', '2021-04-20 11:22:04', '1'),
(184, '1904', '1904@gmail.com', '5675893', 'Vnarashi', NULL, '2021-04-20 11:23:30', '2021-04-20 11:23:30', '1'),
(185, 'sanjay ', 'info.skywart@gmail.com', '7985570425', 'Lucknow uttar pradesh ', NULL, '2021-04-22 15:53:17', '2021-04-22 15:53:17', '1'),
(186, 'sanjay ', 'info.skywart@gmail.com', '7985570425', 'LUcknow ', NULL, '2021-04-23 13:06:15', '2021-04-23 13:06:15', '1'),
(187, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar, Meerut, 250002', NULL, '2021-04-30 18:29:41', '2021-04-30 18:29:41', '1'),
(188, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar, Meerut, 250002', NULL, '2021-04-30 18:29:43', '2021-04-30 18:29:43', '1'),
(189, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-04-30 18:32:23', '2021-04-30 18:32:23', '1'),
(190, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-04-30 18:40:43', '2021-04-30 18:40:43', '1'),
(191, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-04-30 18:42:49', '2021-04-30 18:42:49', '1'),
(192, 'sanjay ', 'info.skywart@gmail.com', '454545', 'jjnjjnjn', NULL, '2021-04-30 19:28:36', '2021-04-30 19:28:36', '1'),
(193, 'sanjay ', 'info.skywart@gmail.com', '15151515', 'ffkfmkmfdkmdf', NULL, '2021-04-30 20:55:56', '2021-04-30 20:55:56', '1'),
(194, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-04-30 22:47:54', '2021-04-30 22:47:54', '1'),
(195, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-04-30 22:48:52', '2021-04-30 22:48:52', '1'),
(196, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-04-30 22:55:19', '2021-04-30 22:55:19', '1'),
(197, 'sanjay ', 'info.skywart@gmail.com', '7985570425', 'ccfcgcgvhvhvhv', NULL, '2021-05-01 11:15:01', '2021-05-01 11:15:01', '1'),
(198, 'sanjay ', 'info.skywart@gmail.com', '5151515151', '4444', NULL, '2021-05-01 11:17:49', '2021-05-01 11:17:49', '1'),
(199, 'sanjay ', 'info.skywart@gmail.com', '7985570425', '651515', NULL, '2021-05-01 14:11:22', '2021-05-01 14:11:22', '1'),
(200, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-05-02 14:21:02', '2021-05-02 14:21:02', '1'),
(201, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-05-03 22:27:13', '2021-05-03 22:27:13', '1'),
(202, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-05-03 22:28:09', '2021-05-03 22:28:09', '1'),
(203, 'Yashraj ', 'yash_raj17@yahoo.com', '8630945594', '243 Subhash Nagar meerut', NULL, '2021-05-03 23:12:49', '2021-05-03 23:12:49', '1'),
(204, 'Dheeraj', 'user22@gmail.com', '8931833123', 'GKP', NULL, '2021-05-05 09:25:09', '2021-05-05 09:25:09', '1'),
(205, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-06 21:56:18', '2021-05-06 21:56:18', '1'),
(206, '16042021', 'user16042021@gmail.com', '43254352543', '42414', NULL, '2021-05-06 22:00:44', '2021-05-06 22:00:44', '1'),
(207, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-07 11:11:24', '2021-05-07 11:11:24', '1'),
(208, '16042021', 'user16042021@gmail.com', '45678', 'hj ,n', NULL, '2021-05-07 11:16:05', '2021-05-07 11:16:05', '1'),
(209, '16042021', 'user16042021@gmail.com', '345678987654', 'Gkp', NULL, '2021-05-07 15:09:24', '2021-05-07 15:09:24', '1'),
(210, 'Vineet Bhaskar ', 'tusharbisht199816@gmail.com', '4545454545', 'Lucknow Uttar Pradesh ', NULL, '2021-05-07 15:53:34', '2021-05-07 15:53:34', '1'),
(211, 'sanjay ', 'info.skywart@gmail.com', '6654545', 'asasfasfafs', NULL, '2021-05-07 17:42:01', '2021-05-07 17:42:01', '1'),
(212, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', NULL, '2021-05-07 18:28:21', '2021-05-07 18:28:21', '1'),
(213, '16042021', 'user16042021@gmail.com', '45678956', 'rhfvmb', NULL, '2021-05-08 07:54:12', '2021-05-08 07:54:12', '1'),
(214, '16042021', 'user16042021@gmail.com', '55865', 'kvjm', NULL, '2021-05-08 07:56:25', '2021-05-08 07:56:25', '1'),
(215, '16042021', 'user16042021@gmail.com', '363554', 'vzxc', NULL, '2021-05-08 08:00:44', '2021-05-08 08:00:44', '1'),
(216, '16042021', 'user16042021@gmail.com', '66354', 'gsdbgz', NULL, '2021-05-08 08:02:05', '2021-05-08 08:02:05', '1'),
(217, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:03:24', '2021-05-08 08:03:24', '1'),
(218, '16042021', 'user16042021@gmail.com', '43255324', 'bdfxxc\r\n', NULL, '2021-05-08 08:05:17', '2021-05-08 08:05:17', '1'),
(219, '16042021', 'user16042021@gmail.com', '3456789', 'hcgh', NULL, '2021-05-08 08:06:09', '2021-05-08 08:06:09', '1'),
(220, '16042021', 'user16042021@gmail.com', '5342353', 'd fhfh', NULL, '2021-05-08 08:07:26', '2021-05-08 08:07:26', '1'),
(221, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:08:12', '2021-05-08 08:08:12', '1'),
(222, '16042021', 'user16042021@gmail.com', '3456789', 'cgvhbjn', NULL, '2021-05-08 08:15:09', '2021-05-08 08:15:09', '1'),
(223, '16042021', 'user16042021@gmail.com', '342235', 'cdfv', NULL, '2021-05-08 08:16:02', '2021-05-08 08:16:02', '1'),
(224, '16042021', 'user16042021@gmail.com', '342235', 'cdfv', NULL, '2021-05-08 08:16:02', '2021-05-08 08:16:02', '1'),
(225, '16042021', 'user16042021@gmail.com', '3453', 'scd', NULL, '2021-05-08 08:17:10', '2021-05-08 08:17:10', '1'),
(226, '16042021', 'user16042021@gmail.com', '3456789', 'gncmh', NULL, '2021-05-08 08:20:30', '2021-05-08 08:20:30', '1'),
(227, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:22:44', '2021-05-08 08:22:44', '1'),
(228, '16042021', 'user16042021@gmail.com', '6578', 'mgvmn', NULL, '2021-05-08 08:23:38', '2021-05-08 08:23:38', '1'),
(229, '16042021', 'user16042021@gmail.com', '3456', 'jhgjhbhj', NULL, '2021-05-08 08:28:39', '2021-05-08 08:28:39', '1'),
(230, '16042021', 'user16042021@gmail.com', '45678', 'ngcb', NULL, '2021-05-08 08:29:36', '2021-05-08 08:29:36', '1'),
(231, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:31:47', '2021-05-08 08:31:47', '1'),
(232, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:32:17', '2021-05-08 08:32:17', '1'),
(233, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:33:38', '2021-05-08 08:33:38', '1'),
(234, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:37:33', '2021-05-08 08:37:33', '1'),
(235, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:40:21', '2021-05-08 08:40:21', '1'),
(236, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:49:39', '2021-05-08 08:49:39', '1'),
(237, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:50:57', '2021-05-08 08:50:57', '1'),
(238, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:58:19', '2021-05-08 08:58:19', '1'),
(239, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 08:58:47', '2021-05-08 08:58:47', '1'),
(240, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 09:16:29', '2021-05-08 09:16:29', '1'),
(241, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 09:18:50', '2021-05-08 09:18:50', '1'),
(242, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 09:20:49', '2021-05-08 09:20:49', '1'),
(243, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 09:23:06', '2021-05-08 09:23:06', '1'),
(244, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 09:24:04', '2021-05-08 09:24:04', '1'),
(245, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 09:25:36', '2021-05-08 09:25:36', '1'),
(246, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 09:28:16', '2021-05-08 09:28:16', '1'),
(247, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 09:31:34', '2021-05-08 09:31:34', '1'),
(248, '16042021', 'user16042021@gmail.com', '3254234', 'bvx', NULL, '2021-05-08 09:34:07', '2021-05-08 09:34:07', '1'),
(249, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 09:35:56', '2021-05-08 09:35:56', '1'),
(250, '16042021', 'user16042021@gmail.com', '11', '11', NULL, '2021-05-08 09:51:46', '2021-05-08 09:51:46', '1'),
(251, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 10:00:53', '2021-05-08 10:00:53', '1'),
(252, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 10:02:52', '2021-05-08 10:02:52', '1'),
(253, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 10:05:06', '2021-05-08 10:05:06', '1'),
(254, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 10:06:08', '2021-05-08 10:06:08', '1'),
(255, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-08 10:22:28', '2021-05-08 10:22:28', '1'),
(256, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-10 09:12:03', '2021-05-10 09:12:03', '1'),
(257, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-10 09:13:20', '2021-05-10 09:13:20', '1'),
(258, '16042021', 'user16042021@gmail.com', '34567890', 'KDNKL', NULL, '2021-05-10 09:16:05', '2021-05-10 09:16:05', '1'),
(259, '16042021', 'user16042021@gmail.com', '3523452534', 'dsfgs', NULL, '2021-05-10 09:20:59', '2021-05-10 09:20:59', '1'),
(260, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-10 09:22:55', '2021-05-10 09:22:55', '1'),
(261, '16042021', 'user16042021@gmail.com', '3426524', 'xdfz', NULL, '2021-05-10 09:25:26', '2021-05-10 09:25:26', '1'),
(262, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-10 09:27:35', '2021-05-10 09:27:35', '1'),
(263, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-10 09:28:45', '2021-05-10 09:28:45', '1'),
(264, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-10 09:29:49', '2021-05-10 09:29:49', '1'),
(265, '16042021', 'user16042021@gmail.com', '54678', 'kvgh', NULL, '2021-05-10 09:36:09', '2021-05-10 09:36:09', '1'),
(266, '16042021', 'user16042021@gmail.com', '345678', 'gcg', NULL, '2021-05-10 09:39:11', '2021-05-10 09:39:11', '1'),
(267, 'Dheeraj', 'admin32121@gmail.com', '07896785675', 'Lucknow', NULL, '2021-05-10 09:43:49', '2021-05-10 09:43:49', '1'),
(268, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-10 09:52:20', '2021-05-10 09:52:20', '1'),
(269, '16042021', 'user16042021@gmail.com', '457689', 'jgcgh', NULL, '2021-05-10 09:53:11', '2021-05-10 09:53:11', '1'),
(270, 'Vineet Bhaskar ', 'tusharbisht199816@gmail.com', '545454', '54551', NULL, '2021-05-10 14:28:35', '2021-05-10 14:28:35', '1'),
(271, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-19 20:28:20', '2021-05-19 20:28:20', '1'),
(272, 'Dheeraj', 'admin122@gmail.com', '07896785675', 'Lucknow', NULL, '2021-05-19 20:49:43', '2021-05-19 20:49:43', '1'),
(273, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-19 20:52:13', '2021-05-19 20:52:13', '1'),
(274, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-19 20:53:48', '2021-05-19 20:53:48', '1'),
(275, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-19 20:55:25', '2021-05-19 20:55:25', '1'),
(276, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-19 20:56:34', '2021-05-19 20:56:34', '1'),
(277, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 06:34:55', '2021-05-20 06:34:55', '1'),
(278, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 06:39:45', '2021-05-20 06:39:45', '1'),
(279, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 06:40:40', '2021-05-20 06:40:40', '1'),
(280, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 06:45:36', '2021-05-20 06:45:36', '1'),
(281, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 06:48:47', '2021-05-20 06:48:47', '1'),
(282, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 06:52:17', '2021-05-20 06:52:17', '1'),
(283, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 07:02:43', '2021-05-20 07:02:43', '1'),
(284, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 07:04:13', '2021-05-20 07:04:13', '1'),
(285, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 07:07:41', '2021-05-20 07:07:41', '1'),
(286, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 07:08:52', '2021-05-20 07:08:52', '1'),
(287, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 11:03:06', '2021-05-20 11:03:06', '1'),
(288, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', NULL, '2021-05-20 11:05:45', '2021-05-20 11:05:45', '1'),
(289, '16042021', 'user16042021@gmail.com', '34567898765', 'Lucknow', NULL, '2021-05-20 14:11:31', '2021-05-20 14:11:31', '1'),
(290, '16042021', 'user16042021@gmail.com', '8931833660', 'Lucknow', '110010', '2021-05-20 15:21:03', '2021-05-20 15:21:03', '1'),
(291, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-05-20 15:39:19', '2021-05-20 15:39:19', '1'),
(292, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', '273415', '2021-05-20 16:10:09', '2021-05-20 16:10:09', '1'),
(293, '16042021', 'user16042021@gmail.com', '8931833660', 'lucknow', '273001', '2021-05-20 16:22:21', '2021-05-20 16:22:21', '1'),
(294, 'dheeraj kumar', 'student@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', '273413', '2021-05-20 16:26:39', '2021-05-20 16:26:39', '1'),
(295, '16042021', 'user16042021@gmail.com', '567890', 'xdfghjm', '456787', '2021-05-20 16:31:37', '2021-05-20 16:31:37', '1'),
(296, '16042021', 'user16042021@gmail.com', '567890', 'mgvjh,', '5477464', '2021-05-20 16:35:29', '2021-05-20 16:35:29', '1'),
(297, '16042021', 'user16042021@gmail.com', '45678765', 'hcjhc', '564647', '2021-05-20 16:36:54', '2021-05-20 16:36:54', '1'),
(298, '16042021', 'user16042021@gmail.com', '7668767678', 'lucknow', '273413', '2021-05-22 14:28:05', '2021-05-22 14:28:05', '1'),
(299, '16042021', 'user16042021@gmail.com', '3425345345', 'lucknow', '232323', '2021-05-22 14:31:55', '2021-05-22 14:31:55', '1'),
(300, '16042021', 'user16042021@gmail.com', '345432', 'qwe', '121221', '2021-05-22 15:03:20', '2021-05-22 15:03:20', '1'),
(301, 'Hello kumar', 'user16042021@gmail.com', '8931833660', 'Lucknow', '273413', '2021-05-22 15:52:14', '2021-05-22 15:52:14', '1'),
(302, '16042021', 'user16042021@gmail.com', '4576467', 'kfhv nb ', '767678', '2021-05-22 15:59:16', '2021-05-22 15:59:16', '1'),
(303, '16042021', 'user16042021@gmail.com', '3436646', 'lucknow', '341234', '2021-05-22 16:03:24', '2021-05-22 16:03:24', '1'),
(304, '16042021', 'user16042021@gmail.com', '568767', 'hghgvm', '876877', '2021-05-22 16:26:42', '2021-05-22 16:26:42', '1'),
(305, '16042021', 'user16042021@gmail.com', '65865587758', 'fvh', '6789876', '2021-05-22 16:28:30', '2021-05-22 16:28:30', '1'),
(306, '16042021', 'user16042021@gmail.com', '8931833660', 'lucknow', '273413', '2021-05-22 16:31:53', '2021-05-22 16:31:53', '1'),
(307, '16042021', 'user16042021@gmail.com', '5866688566', 'lucknow', '787879', '2021-05-22 16:59:35', '2021-05-22 16:59:35', '1'),
(308, 'Nadeem', 'test@gmail.com', '1111', 'sas ', '226012', '2021-05-23 15:40:58', '2021-05-23 15:40:58', '1'),
(309, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-05-23 16:53:26', '2021-05-23 16:53:26', '1'),
(310, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-05-23 19:25:03', '2021-05-23 19:25:03', '1'),
(311, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-05-23 19:29:58', '2021-05-23 19:29:58', '1'),
(312, 'Nadeem', 'test@gmail.com', '99999999', 'Test Address, Test Street', '111111', '2021-05-23 19:30:24', '2021-05-23 19:30:24', '1'),
(313, 'deepanshu', 'asdf@gmail.com', '2121546546', 'kjhiughiugiyfiy', '226002', '2021-05-23 19:30:31', '2021-05-23 19:30:31', '1'),
(314, 'Farhan Quazi', 'farhan9936@gmail.com', '09936930509', 'aliganj\r\naliganj', '226021', '2021-05-23 19:30:40', '2021-05-23 19:30:40', '1'),
(315, 'Varun Dhawan', 'varundhawan@gmail.com', '9966554433', 'DS/7 Sector-C\r\nKursi Road Jankipuram', '226021', '2021-05-23 19:32:34', '2021-05-23 19:32:34', '1'),
(316, 'Nadeem', 'test@gmail.com', '9999999999', 'Test Address, Test Street', '111111', '2021-05-23 19:35:22', '2021-05-23 19:35:22', '1'),
(317, 'deepanshu', 'asdf@gmail.com', '1123645', 'iufufguj', '226002', '2021-05-23 19:40:36', '2021-05-23 19:40:36', '1'),
(318, 'Nadeem', 'test@gmail.com', '9999999999', 'Test Number. Test Street\r\n', '111111', '2021-05-23 19:40:57', '2021-05-23 19:40:57', '1'),
(319, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-05-23 19:45:35', '2021-05-23 19:45:35', '1'),
(320, 'Nadeem', 'test@gmail.com', '99999999', 'TSTS', '111111', '2021-05-23 19:49:35', '2021-05-23 19:49:35', '1'),
(321, 'deepanshu', 'asdf@gmail.com', '4562213565', 'sdcd', '2260021', '2021-05-23 19:50:51', '2021-05-23 19:50:51', '1'),
(322, 'Nadeem', 'test@gmail.com', '9999999999', 'test house num, test street, test city', '111111', '2021-05-23 20:06:40', '2021-05-23 20:06:40', '1'),
(323, 'Nadeem', 'test@gmail.com', '99999999', 'testb testetset', '11111111', '2021-05-23 20:14:21', '2021-05-23 20:14:21', '1'),
(324, 'deepanshu', 'asdf@gmail.com', '2121356565135', '3gfsshgjgchgc', '3213135', '2021-05-23 20:15:02', '2021-05-23 20:15:02', '1'),
(325, 'Farhan Qazi', 'farhan9936@gmail.com', '854545415', 'dvdvvdv', '226022', '2021-05-24 12:08:41', '2021-05-24 12:08:41', '1'),
(326, '16042021', 'user16042021@gmail.com', '689789', 'lucknow', '6777699', '2021-05-24 12:49:10', '2021-05-24 12:49:10', '1'),
(327, '16042021', 'user16042021@gmail.com', '568565687', 'lucknow', '273001', '2021-05-24 13:08:05', '2021-05-24 13:08:05', '1'),
(328, '16042021', 'user16042021@gmail.com', '514543', 'qqqq', '211', '2021-05-24 13:17:22', '2021-05-24 13:17:22', '1'),
(329, '16042021', 'user16042021@gmail.com', '986876867767', 'lucknow', '240520', '2021-05-24 16:09:36', '2021-05-24 16:09:36', '1'),
(330, 'Farhan Qazi', 'farhan9936@gmail.com', '5544564752', 'asafdfsadsffdsdsffs', '226078', '2021-05-24 17:09:47', '2021-05-24 17:09:47', '1'),
(331, 'dheeraj', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', '273413', '2021-05-26 07:49:30', '2021-05-26 07:49:30', '1'),
(332, '16042021', 'user16042021@gmail.com', '8687698687', 'lucknow', '273413', '2021-05-26 09:47:02', '2021-05-26 09:47:02', '1'),
(333, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', '273413', '2021-05-27 09:41:44', '2021-05-27 09:41:44', '1'),
(334, 'Test', 'teststudent@gmail.com', '07896785675', '27-05-2021\r\ngorakhpur', '273413', '2021-05-27 09:51:49', '2021-05-27 09:51:49', '1'),
(335, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', '273413', '2021-05-27 09:53:14', '2021-05-27 09:53:14', '1'),
(336, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', '273413', '2021-05-27 09:54:07', '2021-05-27 09:54:07', '1'),
(337, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', '273413', '2021-05-27 09:56:03', '2021-05-27 09:56:03', '1'),
(338, 'Test', 'teststudent@gmail.com', '07896785675', 'Lucknow\r\ngorakhpur', '273413', '2021-05-27 10:04:43', '2021-05-27 10:04:43', '1'),
(339, 'Test', 'teststudent@gmail.com', '07896785675', '123w\r\ngorakhpur', '273413', '2021-05-27 10:06:30', '2021-05-27 10:06:30', '1'),
(340, '16042021', 'user16042021@gmail.com', '398728496', 'Lucknow', '3421343', '2021-05-28 20:38:57', '2021-05-28 20:38:57', '1'),
(341, '16042021', 'user16042021@gmail.com', '8931833660', 'lucknow', '273413', '2021-05-28 20:43:49', '2021-05-28 20:43:49', '1'),
(342, '16042021', 'user16042021@gmail.com', '8931833660', 'lucknow', '273413', '2021-05-28 20:44:47', '2021-05-28 20:44:47', '1'),
(343, '16042021', 'user16042021@gmail.com', '8931833660', 'Lucknow', '273413', '2021-05-28 20:57:49', '2021-05-28 20:57:49', '1'),
(344, '16042021', 'user16042021@gmail.com', '8931833660', 'lucknow', '273413', '2021-05-28 20:59:49', '2021-05-28 20:59:49', '1'),
(345, '16042021', 'user16042021@gmail.com', '8798678967', 'lucknow', '897654', '2021-05-29 11:31:02', '2021-05-29 11:31:02', '1'),
(346, '16042021', 'user16042021@gmail.com', '57765675765', '6gh', '76977878', '2021-05-29 11:39:28', '2021-05-29 11:39:28', '1'),
(347, '16042021', 'user16042021@gmail.com', '9889898989', 'lucknow', '273413', '2021-05-29 11:41:18', '2021-05-29 11:41:18', '1'),
(348, '16042021', 'user16042021@gmail.com', '8931833660', 'lucknow', '273413', '2021-05-29 11:42:55', '2021-05-29 11:42:55', '1'),
(349, '16042021', 'user16042021@gmail.com', '8931833660', 'lucknow', '273413', '2021-05-29 11:45:37', '2021-05-29 11:45:37', '1'),
(350, '16042021', 'user16042021@gmail.com', '8931833660', 'Lucknow', '232323', '2021-05-29 11:49:10', '2021-05-29 11:49:10', '1'),
(351, '16042021', 'user16042021@gmail.com', '8931833660', 'lucknow', '232323', '2021-05-29 11:54:27', '2021-05-29 11:54:27', '1'),
(352, '16042021', 'user16042021@gmail.com', '89318360', 'LUCKNOW', '233412', '2021-05-29 11:56:26', '2021-05-29 11:56:26', '1'),
(353, 'sanjay ', 'info.skywart@gmail.com', '551212', 'ada51da21da', '226087', '2021-05-29 18:27:33', '2021-05-29 18:27:33', '1'),
(354, 'Raj User', 'RajUser@gmail.com', '07896785675', 'Lucknow', '273413', '2021-06-02 08:03:15', '2021-06-02 08:03:15', '1'),
(355, 'Akhil Dubey', 'akhildubey@gmail.com', '9966554433', 'DS/7 Sector-C\r\nKursi Road Jankipuram', '226021', '2021-06-02 11:07:37', '2021-06-02 11:07:37', '1'),
(356, 'Nadeem', 'test@gmail.com', '9999999999', 'Address, Street, ', '12121212', '2021-06-02 14:30:18', '2021-06-02 14:30:18', '1'),
(357, 'Harsh Vardhan', 'harshvardhan@gmail.com', '789456123', 'DS/7 Sector-C\r\nKursi Road Jankipuram', '226021', '2021-06-03 11:55:10', '2021-06-03 11:55:10', '1'),
(358, 'Harsh Vardhan', 'harshvardhan@gmail.com', '789456123', 'DS/7 Sector-C\r\nKursi Road Jankipuram', '226021', '2021-06-03 11:58:58', '2021-06-03 11:58:58', '1'),
(359, 'Harsh Vardhan', 'harshvardhan@gmail.com', '789456123', 'DS/7 Sector-C\r\nKursi Road Jankipuram', '226021', '2021-06-03 12:13:33', '2021-06-03 12:13:33', '1'),
(360, 'Raj User', 'RajUser@gmail.com', '07896785675', 'ml', '273413', '2021-06-03 16:36:35', '2021-06-03 16:36:35', '1'),
(361, 'Raj', 'teacher1@gmail.com', '07896785675', 'lucknow', '273413', '2021-06-03 17:25:20', '2021-06-03 17:25:20', '1'),
(362, 'Harsh Vardhan', 'harshvardhan@gmail.com', '789456123', 'DS/7 Sector-C\r\nKursi Road Jankipuram', '226021', '2021-06-04 15:11:13', '2021-06-04 15:11:13', '1'),
(363, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-06-04 15:20:34', '2021-06-04 15:20:34', '1'),
(364, 'deep', 'sdfa@gmail.com', '64654656464', 'filg;ih;oinl/kn', '65132165', '2021-06-04 15:22:42', '2021-06-04 15:22:42', '1'),
(365, 'deep', 'ygdytdyd@gmail.com', '4561234562', 'ugugfifyfyt', '125462', '2021-06-04 15:26:28', '2021-06-04 15:26:28', '1'),
(366, 'deep', 'rasrs@hguu', '54654654', 'fdutdj', '1511651651', '2021-06-04 15:30:01', '2021-06-04 15:30:01', '1'),
(367, 'Raj User', 'RajUser@gmail.com', '55252532532', 'lucknow', '273413', '2021-06-04 15:33:45', '2021-06-04 15:33:45', '1'),
(368, 'd', 'assd@ddfwef', '31615165161', 'rfwrfwrrgwrgweg', '213213', '2021-06-04 15:34:01', '2021-06-04 15:34:01', '1'),
(369, 'deep', 'asknaons@sdnvlks', '5161651651651', '165fvknvvijjv ', '65425456', '2021-06-04 15:36:45', '2021-06-04 15:36:45', '1'),
(370, 'deepanshu', 'asdf@gmail.com', '21616165161', 'kgufycjyggvhj', '32162165', '2021-06-04 15:41:45', '2021-06-04 15:41:45', '1'),
(371, 'deepanshu', 'asdf@gmail.com', '3213213232', 'bvhgcghckvilv', '1161651651', '2021-06-04 15:45:16', '2021-06-04 15:45:16', '1'),
(372, 'Nadeem', 'test@gmail.com', '9999', 'test', '1111', '2021-06-04 15:46:05', '2021-06-04 15:46:05', '1'),
(373, 'SUFIA SIDDIQUI', 'skywartgroup@gmail.com', '9670800941', 'aliganj\r\naliganj', '226021', '2021-06-04 15:47:19', '2021-06-04 15:47:19', '1'),
(374, 'N', 'N@a.com', '2', 'Aa', '1', '2021-06-04 16:09:31', '2021-06-04 16:09:31', '1'),
(375, 'Raj', 'teacher1@gmail.com', '07896785675', 'lucknow', '273413', '2021-06-05 13:28:51', '2021-06-05 13:28:51', '1'),
(376, 'Raj', 'teacher1@gmail.com', '8931833123', 'lku', '273413', '2021-06-05 13:40:38', '2021-06-05 13:40:38', '1'),
(377, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-06-07 11:15:36', '2021-06-07 11:15:36', '1'),
(378, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-06-07 11:18:13', '2021-06-07 11:18:13', '1'),
(379, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-06-07 11:35:40', '2021-06-07 11:35:40', '1'),
(380, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-06-07 11:36:24', '2021-06-07 11:36:24', '1'),
(381, 'Mohd mujeeb', 'mdmujibraza732@gmail.com', '9648329208', '\r\nIndira Nagar, Lucknow,', '226016', '2021-06-11 11:49:51', '2021-06-11 11:49:51', '1'),
(382, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', '243 Subhash Nagar meerut', '250002', '2021-06-14 20:35:11', '2021-06-14 20:35:11', '1'),
(383, 'Vaasu Joshi', 'mnrvjoshi@gmail.com', '9454429422', 'DS/7 Sector-C\r\nKursi Road Jankipuram', '226021', '2021-06-15 19:15:37', '2021-06-15 19:15:37', '1'),
(384, 'Raj User', 'RajUser@gmail.com', '8931833123', 'Lucknow', '123456', '2021-06-16 20:31:46', '2021-06-16 20:31:46', '1'),
(385, 'Neha Mishra ', 'neha@gmail.com', '14545551', 'fgvgvgvgvgv', '226054', '2021-06-21 12:09:15', '2021-06-21 12:09:15', '1'),
(386, 'Rajat Patel', 'rajat@gmail.com', '45455121', '6112121', '151212', '2021-06-22 20:52:48', '2021-06-22 20:52:48', '1'),
(387, '16042021', 'user16042021@gmail.com', '07896785675', 'rfdtyg', '273413', '2021-06-25 15:33:23', '2021-06-25 15:33:23', '1'),
(388, 'User22', 'user2204@gmail.com', '07896785675', 'kg', '273413', '2021-07-05 10:59:04', '2021-07-05 10:59:04', '1'),
(389, 'Sundar Singh', 'sundar@gmail.com', '6626551', '515151', '515151', '2021-07-05 18:44:29', '2021-07-05 18:44:29', '1'),
(390, 'Raj User', 'test123@manager.com', '8931833123', 'asd', '273413', '2021-07-06 09:09:19', '2021-07-06 09:09:19', '1'),
(391, 'Tushar Bisht ', 'tush@gmail.com', '5555555555', '1234', '226032', '2021-07-06 22:11:05', '2021-07-06 22:11:05', '1'),
(392, 'Tushar Bisht ', 'tush@gmail.com', '1515', '26165', '115', '2021-07-06 23:35:12', '2021-07-06 23:35:12', '1'),
(393, 'Deepanshu Singh', 'deepanshu5@gmail.com', '23232', 'N N N N N', '6666', '2021-07-07 23:14:07', '2021-07-07 23:14:07', '1'),
(394, 'Tarun', 'tarun@gmail.com', '54694949', 'Gagagga', '54646466', '2021-07-07 23:23:11', '2021-07-07 23:23:11', '1'),
(395, 'Raj User', 'usertest@gmail.com', '07896785675', 'vbn', '273413', '2021-07-07 23:32:02', '2021-07-07 23:32:02', '1'),
(396, 'Raj User', 'usertest@gmail.com', '07896785675', 'bnm', '123456', '2021-07-07 23:33:59', '2021-07-07 23:33:59', '1'),
(397, 'Tarun', 'tarun@gmail.com', '88338388', 'Yccyf', '58338', '2021-07-07 23:37:59', '2021-07-07 23:37:59', '1'),
(398, 'Tarun', 'tarun@gmail.com', '9499464', 'Gwgwg', '5466464', '2021-07-08 00:16:00', '2021-07-08 00:16:00', '1'),
(399, 'Tarun', 'tarun@gmail.com', '5454646', 'Gaggaga', '6464664', '2021-07-08 00:17:25', '2021-07-08 00:17:25', '1'),
(400, 'Tarun', 'tarun@gmail.com', '54994949', 'Gaggag', '84849', '2021-07-08 00:23:40', '2021-07-08 00:23:40', '1'),
(401, 'Sunny Singh', 'sunny@gmail.com', '565666', '4551521', '202212', '2021-07-08 11:31:12', '2021-07-08 11:31:12', '1'),
(402, 'Gagan  Singh', 'gagan@gmail.com', '9335530381', 'Vikas nagar lucknow ', '226032', '2021-07-08 12:54:33', '2021-07-08 12:54:33', '1'),
(403, 'Shekhar Pandey', 'shekhar@gmail.com', '789665466', 'Vikas nnagar luckmow ', '226022', '2021-07-08 16:38:14', '2021-07-08 16:38:14', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `address2` text NOT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_by` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES
(1, 'Walking Customer', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-02 23:23:10', NULL),
(2, 'Test Cust', '7418529632', '', '7418529632', 'test@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-03 18:43:02', NULL),
(3, 'xyz', 'Qwerty', '', '123456', 'xyz@xyz.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-03 23:22:12', NULL),
(4, 'Deepak', 'new ashok nagar', '', '8826279802', 'rdpk864@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-04 16:06:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_banking_add`
--

CREATE TABLE `daily_banking_add` (
  `banking_id` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_closing`
--

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `stcode` varchar(2) NOT NULL,
  `dtcode` varchar(3) NOT NULL,
  `archivedtcode` int(10) NOT NULL,
  `dtname` varchar(100) NOT NULL,
  `lgdtcode` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`stcode`, `dtcode`, `archivedtcode`, `dtname`, `lgdtcode`) VALUES
('01', '001', 202, 'KUPWARA', '8'),
('01', '002', 192, 'BADGAM', '2'),
('37', '003', 204, 'LEH LADAKH', '9'),
('37', '004', 198, 'KARGIL', '6'),
('01', '005', 205, 'POONCH', '10'),
('01', '006', 0, 'RAJAURI', '12'),
('01', '007', 199, 'KATHUA', '7'),
('01', '008', 194, 'BARAMULLA', '3'),
('01', '009', 193, 'BANDIPORA', '623'),
('01', '010', 212, 'SRINAGAR', '13'),
('01', '011', 196, 'GANDERBAL', '626'),
('01', '012', 206, 'PULWAMA', '11'),
('01', '013', 211, 'SHOPIAN', '625'),
('01', '014', 191, 'ANANTNAG', '1'),
('01', '015', 203, 'KULGAM', '622'),
('01', '016', 195, 'DODA', '4'),
('01', '017', 208, 'RAMBAN', '621'),
('01', '018', 200, 'KISHTWAR', '620'),
('01', '019', 213, 'UDHAMPUR', '14'),
('01', '020', 209, 'REASI', '627'),
('01', '021', 197, 'JAMMU', '5'),
('01', '022', 210, 'SAMBA', '624'),
('02', '023', 180, 'CHAMBA', '16'),
('02', '024', 182, 'KANGRA', '18'),
('02', '025', 185, 'LAHUL AND SPITI', '21'),
('02', '026', 184, 'KULLU', '20'),
('02', '027', 186, 'MANDI', '22'),
('02', '028', 576, 'HAMIRPUR', '17'),
('02', '029', 190, 'UNA', '26'),
('02', '030', 179, 'BILASPUR', '15'),
('02', '031', 189, 'SOLAN', '25'),
('02', '032', 188, 'SIRMAUR', '24'),
('02', '033', 187, 'SHIMLA', '23'),
('02', '034', 183, 'KINNAUR', '19'),
('03', '035', 445, 'GURDASPUR', '32'),
('03', '036', 448, 'KAPURTHALA', '35'),
('03', '037', 447, 'JALANDHAR', '34'),
('03', '038', 446, 'HOSHIARPUR', '33'),
('03', '039', 0, 'NAWANSHAHR', '40'),
('03', '040', 443, 'FATEHGARH SAHIB', '30'),
('03', '041', 449, 'LUDHIANA', '36'),
('03', '042', 451, 'MOGA', '38'),
('03', '043', 441, 'FIROZEPUR', '31'),
('03', '044', 452, 'SRI MUKTSAR SAHIB', '39'),
('03', '045', 442, 'FARIDKOT', '29'),
('03', '046', 440, 'BATHINDA', '28'),
('03', '047', 450, 'MANSA', '37'),
('03', '048', 454, 'PATIALA', '41'),
('03', '049', 438, 'AMRITSAR', '27'),
('03', '050', 459, 'Tarn Taran', '609'),
('03', '051', 455, 'RUPNAGAR', '42'),
('03', '052', 0, 'S.A.S Nagar', '608'),
('03', '053', 457, 'SANGRUR', '43'),
('03', '054', 439, 'BARNALA', '605'),
('04', '055', 98, 'CHANDIGARH', '44'),
('05', '056', 631, 'UTTAR KASHI', '57'),
('05', '057', 621, 'CHAMOLI', '47'),
('05', '058', 628, 'RUDRA PRAYAG', '54'),
('05', '059', 629, 'TEHRI GARHWAL', '55'),
('05', '060', 623, 'DEHRADUN', '49'),
('05', '061', 626, 'PAURI GARHWAL', '52'),
('05', '062', 627, 'PITHORAGARH', '53'),
('05', '063', 620, 'BAGESHWAR', '46'),
('05', '064', 619, 'ALMORA', '45'),
('05', '065', 622, 'CHAMPAWAT', '48'),
('05', '066', 625, 'NAINITAL', '51'),
('05', '067', 630, 'UDAM SINGH NAGAR', '56'),
('05', '068', 624, 'HARIDWAR', '50'),
('06', '069', 172, 'PANCHKULA', '70'),
('06', '070', 158, 'AMBALA', '58'),
('06', '071', 178, 'YAMUNANAGAR', '76'),
('06', '072', 168, 'KURUKSHETRA', '68'),
('06', '073', 167, 'KAITHAL', '66'),
('06', '074', 166, 'KARNAL', '67'),
('06', '075', 173, 'PANIPAT', '71'),
('06', '076', 177, 'SONIPAT', '75'),
('06', '077', 165, 'JIND', '65'),
('06', '078', 161, 'FATEHABAD', '61'),
('06', '079', 176, 'SIRSA', '74'),
('06', '080', 163, 'HISAR', '63'),
('06', '081', 159, 'BHIWANI', '59'),
('06', '082', 175, 'ROHTAK', '73'),
('06', '083', 164, 'JHAJJAR', '64'),
('06', '084', 169, 'MAHENDRAGARH', '69'),
('06', '085', 174, 'REWARI', '72'),
('06', '086', 162, 'GURUGRAM', '62'),
('06', '087', 170, 'MEWAT', '604'),
('06', '088', 160, 'FARIDABAD', '60'),
('06', '089', 171, 'PALWAL', '619'),
('07', '090', 125, 'NORTH WEST', '82'),
('07', '091', 645, 'NORTH', '80'),
('07', '092', 124, 'NORTH EAST', '81'),
('07', '093', 0, 'EAST', '78'),
('07', '094', 122, 'NEW DELHI', '79'),
('07', '095', 120, 'CENTRAL', '77'),
('07', '096', 128, 'WEST', '85'),
('07', '097', 127, 'SOUTH WEST', '84'),
('07', '098', 649, 'SOUTH', '83'),
('08', '099', 474, 'GANGANAGAR', '100'),
('08', '100', 475, 'HANUMANGARH', '101'),
('08', '101', 462, 'BIKANER', '93'),
('08', '102', 469, 'CHURU', '96'),
('08', '103', 476, 'JHUNJHUNU', '106'),
('08', '104', 461, 'ALWAR', '87'),
('08', '105', 465, 'BHARATPUR', '91'),
('08', '106', 472, 'DHOLPUR', '98'),
('08', '107', 482, 'KARAULI', '108'),
('08', '108', 489, 'SAWAI MADHOPUR', '113'),
('08', '109', 471, 'DAUSA', '97'),
('08', '110', 479, 'JAIPUR', '102'),
('08', '111', 488, 'SIKAR', '114'),
('08', '112', 484, 'NAGAUR', '110'),
('08', '113', 478, 'JODHPUR', '107'),
('08', '114', 480, 'JAISALMER', '103'),
('08', '115', 463, 'BARMER', '90'),
('08', '116', 477, 'JALORE', '104'),
('08', '117', 490, 'SIROHI', '115'),
('08', '118', 485, 'PALI', '111'),
('08', '119', 460, 'AJMER', '86'),
('08', '120', 491, 'TONK', '116'),
('08', '121', 467, 'BUNDI', '94'),
('08', '122', 468, 'BHILWARA', '92'),
('08', '123', 487, 'RAJSAMAND', '112'),
('08', '124', 473, 'DUNGARPUR', '99'),
('08', '125', 464, 'BANSWARA', '88'),
('08', '126', 470, 'CHITTORGARH', '95'),
('08', '127', 483, 'KOTA', '109'),
('08', '128', 0, 'BARAN', '89'),
('08', '129', 481, 'JHALAWAR', '105'),
('08', '130', 492, 'UDAIPUR', '117'),
('08', '131', 486, 'PRATAPGARH', '629'),
('09', '132', 606, 'SAHARANPUR', '177'),
('09', '133', 600, 'MUZAFFARNAGAR', '172'),
('09', '134', 558, 'BIJNOR', '132'),
('09', '135', 599, 'MORADABAD', '171'),
('09', '136', 605, 'RAMPUR', '176'),
('09', '137', 619, 'AMROHA', '154'),
('09', '138', 597, 'MEERUT', '169'),
('09', '139', 550, 'BAGHPAT', '124'),
('09', '140', 572, 'GHAZIABAD', '145'),
('09', '141', 571, 'GAUTAM BUDDHA NAGAR', '144'),
('09', '142', 560, 'BULANDSHAHR', '134'),
('09', '143', 545, 'ALIGARH', '119'),
('09', '144', 578, 'HATHRAS', '163'),
('09', '145', 595, 'MATHURA', '167'),
('09', '146', 544, 'AGRA', '118'),
('09', '147', 570, 'FIROZABAD', '143'),
('09', '148', 594, 'MAINPURI', '166'),
('09', '149', 559, 'BUDAUN', '133'),
('09', '150', 556, 'BAREILLY', '130'),
('09', '151', 602, 'PILIBHIT', '173'),
('09', '152', 610, 'SHAHJAHANPUR', '180'),
('09', '153', 0, 'KHERI', '159'),
('09', '154', 614, 'SITAPUR', '183'),
('09', '155', 577, 'HARDOI', '150'),
('09', '156', 617, 'UNNAO', '186'),
('09', '157', 591, 'LUCKNOW', '162'),
('09', '158', 604, 'RAE BARELI', '175'),
('09', '159', 568, 'FARRUKHABAD', '141'),
('09', '160', 583, 'KANNAUJ', '155'),
('09', '161', 566, 'ETAWAH', '139'),
('09', '162', 548, 'AURAIYA', '122'),
('09', '163', 584, 'KANPUR DEHAT', '156'),
('09', '164', 585, 'KANPUR NAGAR', '157'),
('09', '165', 579, 'JALAUN', '151'),
('09', '166', 581, 'JHANSI', '153'),
('09', '167', 590, 'LALITPUR', '161'),
('09', '168', 181, 'HAMIRPUR', '149'),
('09', '169', 593, 'MAHOBA', '165'),
('09', '170', 554, 'BANDA', '128'),
('09', '171', 563, 'CHITRAKOOT', '136'),
('09', '172', 569, 'FATEHPUR', '142'),
('09', '173', 603, 'PRATAPGARH', '174'),
('09', '174', 587, 'KAUSHAMBI', '158'),
('09', '175', 546, 'ALLAHABAD', '120'),
('09', '176', 555, 'BARABANKI', '129'),
('09', '177', 567, 'FAIZABAD', '140'),
('09', '178', 547, 'AMBEDKAR NAGAR', '121'),
('09', '179', 616, 'SULTANPUR', '185'),
('09', '180', 551, 'BAHRAICH', '125'),
('09', '181', 612, 'SHRAVASTI', '181'),
('09', '182', 686, 'BALRAMPUR', '127'),
('09', '183', 574, 'GONDA', '147'),
('09', '184', 613, 'SIDDHARTH NAGAR', '182'),
('09', '185', 557, 'BASTI', '131'),
('09', '186', 608, 'SANT KABEER NAGAR', '178'),
('09', '187', 592, 'MAHARAJGANJ', '164'),
('09', '188', 575, 'GORAKHPUR', '148'),
('09', '189', 588, 'KUSHI NAGAR', '160'),
('09', '190', 564, 'DEORIA', '137'),
('09', '191', 549, 'AZAMGARH', '123'),
('09', '192', 596, 'MAU', '168'),
('09', '193', 552, 'BALLIA', '126'),
('09', '194', 580, 'JAUNPUR', '152'),
('09', '195', 573, 'GHAZIPUR', '146'),
('09', '196', 551, 'CHANDAULI', '135'),
('09', '197', 618, 'VARANASI', '187'),
('09', '198', 0, 'BHADOHI', '179'),
('09', '199', 598, 'MIRZAPUR', '170'),
('09', '200', 615, 'SONBHADRA', '184'),
('09', '201', 565, 'ETAH', '138'),
('09', '202', 0, 'Kasganj', '633'),
('10', '203', 0, 'PASHCHIM CHAMPARAN', '211'),
('10', '204', 0, 'PURBI CHAMPARAN', '213'),
('10', '205', 92, 'SHEOHAR', '220'),
('10', '206', 93, 'SITAMARHI', '221'),
('10', '207', 80, 'MADHUBANI', '206'),
('10', '208', 95, 'SUPAUL', '223'),
('10', '209', 60, 'ARARIA', '188'),
('10', '210', 77, 'KISHANGANJ', '203'),
('10', '211', 486, 'PURNIA', '214'),
('10', '212', 75, 'KATIHAR', '201'),
('10', '213', 79, 'MADHEPURA', '205'),
('10', '214', 88, 'SAHARSA', '216'),
('10', '215', 68, 'DARBHANGA', '195'),
('10', '216', 82, 'MUZAFFARPUR', '208'),
('10', '217', 71, 'GOPALGANJ', '197'),
('10', '218', 94, 'SIWAN', '222'),
('10', '219', 90, 'SARAN', '218'),
('10', '220', 96, 'VAISHALI', '224'),
('10', '221', 89, 'SAMASTIPUR', '217'),
('10', '222', 64, 'BEGUSARAI', '191'),
('10', '223', 76, 'KHAGARIA', '202'),
('10', '224', 65, 'BHAGALPUR', '192'),
('10', '225', 63, 'BANKA', '190'),
('10', '226', 81, 'MUNGER', '207'),
('10', '227', 78, 'LAKHISARAI', '204'),
('10', '228', 91, 'SHEIKHPURA', '219'),
('10', '229', 83, 'NALANDA', '209'),
('10', '230', 85, 'PATNA', '212'),
('10', '231', 66, 'BHOJPUR', '193'),
('10', '232', 67, 'BUXAR', '194'),
('10', '233', 74, 'KAIMUR (BHABUA)', '200'),
('10', '234', 87, 'ROHTAS', '215'),
('10', '235', 62, 'AURANGABAD', '189'),
('10', '236', 70, 'GAYA', '196'),
('10', '237', 84, 'NAWADA', '210'),
('10', '238', 72, 'JAMUI', '198'),
('10', '239', 73, 'JEHANABAD', '199'),
('10', '240', 61, 'ARWAL', '611'),
('11', '241', 123, 'NORTH DISTRICT', '226'),
('11', '242', 0, 'WEST DISTRICT', '228'),
('11', '243', 126, 'SOUTH DISTRICT', '227'),
('11', '244', 0, 'EAST DISTRICT', '225'),
('12', '245', 26, 'TAWANG', '238'),
('12', '246', 31, 'WEST KAMENG', '242'),
('12', '247', 20, 'EAST KAMENG', '231'),
('12', '248', 25, 'PAPUM PARE', '237'),
('12', '249', 30, 'UPPER SUBANSIRI', '241'),
('12', '250', 32, 'WEST SIANG', '243'),
('12', '251', 19, 'EAST SIANG', '232'),
('12', '252', 29, 'UPPER SIANG', '240'),
('12', '253', 18, 'CHANGLANG', '229'),
('12', '254', 27, 'TIRAP', '239'),
('12', '255', 24, 'LOWER SUBANSIRI', '236'),
('12', '256', 21, 'KURUNG KUMEY', '233'),
('12', '257', 28, 'DIBANG VALLEY', '230'),
('12', '258', 23, 'LOWER DIBANG VALLEY', '235'),
('12', '259', 22, 'LOHIT', '234'),
('12', '260', 17, 'ANJAW', '628'),
('13', '261', 398, 'MON', '247'),
('13', '262', 397, 'MOKOKCHUNG', '246'),
('13', '263', 403, 'ZUNHEBOTO', '251'),
('13', '264', 402, 'WOKHA', '250'),
('13', '265', 393, 'DIMAPUR', '244'),
('13', '266', 400, 'PHEK', '248'),
('13', '267', 401, 'TUENSANG', '249'),
('13', '268', 0, 'LONGLENG', '615'),
('13', '269', 394, 'KIPHIRE', '614'),
('13', '270', 395, 'KOHIMA', '245'),
('13', '271', 399, 'PEREN', '613'),
('14', '272', 373, 'SENAPATI', '257'),
('14', '273', 374, 'TAMENGLONG', '258'),
('14', '274', 370, 'CHURACHANDPUR', '254'),
('14', '275', 369, 'BISHNUPUR', '252'),
('14', '276', 375, 'THOUBAL', '259'),
('14', '277', 377, 'IMPHAL WEST', '256'),
('14', '278', 372, 'IMPHAL EAST', '255'),
('14', '279', 376, 'UKHRUL', '260'),
('14', '280', 371, 'CHANDEL', '253'),
('15', '281', 390, 'MAMIT', '266'),
('15', '282', 387, 'KOLASIB', '263'),
('15', '283', 385, 'AIZAWL', '261'),
('15', '284', 386, 'CHAMPHAI', '262'),
('15', '285', 392, 'SERCHHIP', '268'),
('15', '286', 389, 'LUNGLEI', '265'),
('15', '287', 388, 'LAWNGTLAI', '264'),
('15', '288', 391, 'SAIHA', '267'),
('16', '289', 543, 'West Tripura', '272'),
('16', '290', 541, 'South Tripura', '271'),
('16', '291', 539, 'Dhalai', '269'),
('16', '292', 540, 'North Tripura', '270'),
('17', '293', 383, 'WEST GARO HILLS', '278'),
('17', '294', 378, 'EAST GARO HILLS', '273'),
('17', '295', 382, 'SOUTH GARO HILLS', '277'),
('17', '296', 384, 'WEST KHASI HILLS', '279'),
('17', '297', 381, 'RI BHOI', '276'),
('17', '298', 379, 'EAST KHASI HILLS', '274'),
('17', '299', 0, 'WEST JAINTIA HILLS', '275'),
('18', '300', 51, 'KOKRAJHAR', '294'),
('18', '301', 41, 'DHUBRI', '285'),
('18', '302', 43, 'GOALPARA', '287'),
('18', '303', 34, 'BARPETA', '280'),
('18', '304', 0, 'MARIGAON', '296'),
('18', '305', 54, 'NAGAON', '297'),
('18', '306', 57, 'SONITPUR', '301'),
('18', '307', 52, 'LAKHIMPUR', '295'),
('18', '308', 39, 'DHEMAJI', '284'),
('18', '309', 58, 'TINSUKIA', '302'),
('18', '310', 42, 'DIBRUGARH', '286'),
('18', '311', 56, 'SIVASAGAR', '300'),
('18', '312', 46, 'JORHAT', '290'),
('18', '313', 44, 'GOLAGHAT', '288'),
('18', '314', 49, 'KARBI ANGLONG', '292'),
('18', '315', 40, 'DIMA HASAO', '299'),
('18', '316', 36, 'CACHAR', '282'),
('18', '317', 50, 'KARIMGANJ', '293'),
('18', '318', 45, 'HAILAKANDI', '289'),
('18', '319', 35, 'BONGAIGAON', '281'),
('18', '320', 37, 'CHIRANG', '612'),
('18', '321', 47, 'KAMRUP', '291'),
('18', '322', 48, 'KAMRUP METRO', '618'),
('18', '323', 55, 'NALBARI', '298'),
('18', '324', 33, 'BAKSA', '616'),
('18', '325', 38, 'DARRANG', '283'),
('18', '326', 59, 'UDALGURI', '617'),
('19', '327', 637, 'DARJEELING', '309'),
('19', '328', 640, 'JALPAIGURI', '314'),
('19', '329', 635, 'COOCHBEHAR', '308'),
('19', '330', 0, 'DINAJPUR UTTAR', '311'),
('19', '331', 0, 'DINAJPUR DAKSHIN', '310'),
('19', '332', 642, 'MALDAH', '316'),
('19', '333', 643, 'MURSHIDABAD', '319'),
('19', '334', 634, 'BIRBHUM', '307'),
('19', '335', 647, 'PURBA BARDHAMAN', '306'),
('19', '336', 644, 'NADIA', '320'),
('19', '337', 0, '24 PARAGANAS NORTH', '303'),
('19', '338', 638, 'HOOGHLY', '312'),
('19', '339', 632, 'BANKURA', '305'),
('19', '340', 648, 'PURULIA', '321'),
('19', '341', 639, 'HOWRAH', '313'),
('19', '342', 641, 'KOLKATA', '315'),
('19', '343', 0, '24 PARAGANAS SOUTH', '304'),
('19', '344', 0, 'MEDINIPUR WEST', '318'),
('19', '345', 0, 'MEDINIPUR EAST', '317'),
('20', '346', 220, 'GARHWA', '328'),
('20', '347', 215, 'CHATRA', '323'),
('20', '348', 227, 'KODERMA', '334'),
('20', '349', 221, 'GIRIDIH', '329'),
('20', '350', 0, 'DEOGHAR', '324'),
('20', '351', 222, 'GODDA', '330'),
('20', '352', 234, 'SAHEBGANJ', '340'),
('20', '353', 230, 'PAKUR', '337'),
('20', '354', 217, 'DHANBAD', '325'),
('20', '355', 214, 'BOKARO', '322'),
('20', '356', 229, 'LOHARDAGA', '336'),
('20', '357', 219, 'EAST SINGHBUM', '327'),
('20', '358', 231, 'PALAMU', '338'),
('20', '359', 228, 'LATEHAR', '335'),
('20', '360', 224, 'HAZARIBAGH', '332'),
('20', '361', 232, 'RAMGARH', '607'),
('20', '362', 218, 'DUMKA', '326'),
('20', '363', 225, 'JAMTARA', '333'),
('20', '364', 233, 'RANCHI', '339'),
('20', '365', 226, 'KHUNTI', '606'),
('20', '366', 223, 'GUMLA', '331'),
('20', '367', 236, 'SIMDEGA', '342'),
('20', '368', 237, 'WEST SINGHBHUM', '343'),
('20', '369', 0, 'SARAIKELA KHARSAWAN', '341'),
('21', '370', 408, 'BARGARH', '347'),
('21', '371', 415, 'JHARSUGUDA', '357'),
('21', '372', 431, 'SAMBALPUR', '371'),
('21', '373', 216, 'DEOGARH', '351'),
('21', '374', 433, 'SUNDARGARH', '373'),
('21', '375', 419, 'KENDUJHAR', '361'),
('21', '376', 425, 'MAYURBHANJ', '365'),
('21', '377', 409, 'BALESHWAR', '346'),
('21', '378', 406, 'BHADRAK', '348'),
('21', '379', 423, 'KENDRAPARA', '360'),
('21', '380', 417, 'JAGATSINGHAPUR', '355'),
('21', '381', 410, 'CUTTACK', '350'),
('21', '382', 416, 'JAJAPUR', '356'),
('21', '383', 412, 'DHENKANAL', '352'),
('21', '384', 404, 'ANUGUL', '344'),
('21', '385', 428, 'NAYAGARH', '367'),
('21', '386', 418, 'KHORDHA', '362'),
('21', '387', 429, 'PURI', '369'),
('21', '388', 413, 'GANJAM', '354'),
('21', '389', 414, 'GAJAPATI', '353'),
('21', '390', 421, 'KANDHAMAL', '359'),
('21', '391', 405, 'BOUDH', '349'),
('21', '392', 0, 'SONEPUR', '372'),
('21', '393', 407, 'BALANGIR', '345'),
('21', '394', 427, 'NUAPADA', '368'),
('21', '395', 420, 'KALAHANDI', '358'),
('21', '396', 430, 'RAYAGADA', '370'),
('21', '397', 426, 'NABARANGPUR', '366'),
('21', '398', 422, 'KORAPUT', '363'),
('21', '399', 424, 'MALKANGIRI', '364'),
('22', '400', 108, 'KOREA', '384'),
('22', '401', 692, 'SURGUJA', '389'),
('22', '402', 105, 'JASHPUR', '380'),
('22', '403', 113, 'RAIGARH', '386'),
('22', '404', 107, 'KORBA', '383'),
('22', '405', 106, 'JANJGIR-CHAMPA', '379'),
('22', '406', 101, 'BILASPUR', '375'),
('22', '407', 110, 'KABIRDHAM', '382'),
('22', '408', 114, 'RAJNANDGAON', '388'),
('22', '409', 104, 'DURG', '378'),
('22', '410', 115, 'RAIPUR', '387'),
('22', '411', 111, 'MAHASAMUND', '385'),
('22', '412', 103, 'DHAMTARI', '377'),
('22', '413', 109, 'KANKER', '381'),
('22', '414', 99, 'BASTAR', '374'),
('22', '415', 112, 'NARAYANPUR', '637'),
('22', '416', 102, 'DANTEWADA', '376'),
('22', '417', 100, 'BIJAPUR', '636'),
('23', '418', 326, 'SHEOPUR', '431'),
('23', '419', 312, 'MORENA', '417'),
('23', '420', 290, 'BHIND', '395'),
('23', '421', 301, 'GWALIOR', '407'),
('23', '422', 296, 'DATIA', '401'),
('23', '423', 327, 'SHIVPURI', '432'),
('23', '424', 330, 'TIKAMGARH', '434'),
('23', '425', 293, 'CHHATARPUR', '398'),
('23', '426', 315, 'PANNA', '420'),
('23', '427', 320, 'SAGAR', '425'),
('23', '428', 295, 'DAMOH', '400'),
('23', '429', 321, 'SATNA', '426'),
('23', '430', 319, 'REWA', '424'),
('23', '431', 332, 'UMARIA', '436'),
('23', '432', 314, 'NEEMUCH', '419'),
('23', '433', 311, 'MANDSAUR', '416'),
('23', '434', 318, 'RATLAM', '423'),
('23', '435', 331, 'UJJAIN', '435'),
('23', '436', 325, 'SHAJAPUR', '430'),
('23', '437', 297, 'DEWAS', '402'),
('23', '438', 298, 'DHAR', '403'),
('23', '439', 304, 'INDORE', '410'),
('23', '440', 309, 'KHARGONE', '414'),
('23', '441', 288, 'BARWANI', '393'),
('23', '442', 317, 'RAJGARH', '422'),
('23', '443', 333, 'VIDISHA', '437'),
('23', '444', 291, 'BHOPAL', '396'),
('23', '445', 322, 'SEHORE', '427'),
('23', '446', 316, 'RAISEN', '421'),
('23', '447', 289, 'BETUL', '394'),
('23', '448', 302, 'HARDA', '408'),
('23', '449', 303, 'HOSHANGABAD', '409'),
('23', '450', 307, 'KATNI', '413'),
('23', '451', 305, 'JABALPUR', '411'),
('23', '452', 313, 'NARSINGHPUR', '418'),
('23', '453', 299, 'DINDORI', '404'),
('23', '454', 310, 'MANDLA', '415'),
('23', '455', 294, 'CHHINDWARA', '399'),
('23', '456', 323, 'SEONI', '428'),
('23', '457', 287, 'BALAGHAT', '392'),
('23', '458', 300, 'GUNA', '406'),
('23', '459', 286, 'ASHOKNAGAR', '391'),
('23', '460', 324, 'SHAHDOL', '429'),
('23', '461', 285, 'ANUPPUR', '390'),
('23', '462', 328, 'SIDHI', '433'),
('23', '463', 329, 'SINGRAULI', '638'),
('23', '464', 306, 'JHABUA', '412'),
('23', '465', 284, 'ALIRAJPUR', '639'),
('23', '466', 0, 'EAST NIMAR', '405'),
('23', '467', 292, 'BURHANPUR', '397'),
('24', '468', 0, 'KACHCHH', '449'),
('24', '469', 135, 'BANAS KANTHA', '441'),
('24', '470', 148, 'PATAN', '455'),
('24', '471', 0, 'MAHESANA', '451'),
('24', '472', 152, 'SABAR KANTHA', '458'),
('24', '473', 140, 'GANDHINAGAR', '446'),
('24', '474', 131, 'AHMADABAD', '438'),
('24', '475', 153, 'SURENDRANAGAR', '460'),
('24', '476', 151, 'RAJKOT', '457'),
('24', '477', 141, 'JAMNAGAR', '447'),
('24', '478', 150, 'PORBANDAR', '456'),
('24', '479', 142, 'JUNAGADH', '448'),
('24', '480', 132, 'AMRELI', '439'),
('24', '481', 137, 'BHAVNAGAR', '443'),
('24', '482', 133, 'ANAND', '440'),
('24', '483', 144, 'KHEDA', '450'),
('24', '484', 149, 'PANCH MAHALS', '454'),
('24', '485', 0, 'DOHAD', '445'),
('24', '486', 156, 'VADODARA', '461'),
('24', '487', 146, 'NARMADA', '452'),
('24', '488', 136, 'BHARUCH', '442'),
('24', '489', 139, 'DANG', '444'),
('24', '490', 147, 'NAVSARI', '453'),
('24', '491', 157, 'VALSAD', '462'),
('24', '492', 154, 'SURAT', '459'),
('24', '493', 155, 'TAPI', '641'),
('25', '494', 119, 'DIU', '464'),
('25', '495', 118, 'DAMAN', '463'),
('26', '496', 117, 'DADRA AND NAGAR HAVELI', '465'),
('27', '497', 353, 'NANDURBAR', '486'),
('27', '498', 342, 'DHULE', '474'),
('27', '499', 346, 'JALGAON', '478'),
('27', '500', 340, 'BULDHANA', '472'),
('27', '501', 335, 'AKOLA', '467'),
('27', '502', 367, 'WASHIM', '499'),
('27', '503', 336, 'AMRAVATI', '468'),
('27', '504', 366, 'WARDHA', '498'),
('27', '505', 354, 'NAGPUR', '484'),
('27', '506', 339, 'BHANDARA', '471'),
('27', '507', 344, 'GONDIA', '476'),
('27', '508', 343, 'GADCHIROLI', '475'),
('27', '509', 341, 'CHANDRAPUR', '473'),
('27', '510', 368, 'YAVATMAL', '500'),
('27', '511', 352, 'NANDED', '485'),
('27', '512', 345, 'HINGOLI', '477'),
('27', '513', 357, 'PARBHANI', '489'),
('27', '514', 347, 'JALNA', '479'),
('27', '515', 337, 'AURANGABAD', '469'),
('27', '516', 355, 'NASHIK', '487'),
('27', '517', 365, 'THANE', '497'),
('27', '518', 351, 'MUMBAI SUBURBAN', '483'),
('27', '519', 350, 'MUMBAI', '482'),
('27', '520', 359, 'RAIGAD', '491'),
('27', '521', 358, 'PUNE', '490'),
('27', '522', 334, 'AHMEDNAGAR', '466'),
('27', '523', 338, 'BEED', '470'),
('27', '524', 349, 'LATUR', '481'),
('27', '525', 356, 'OSMANABAD', '488'),
('27', '526', 364, 'SOLAPUR', '496'),
('27', '527', 362, 'SATARA', '494'),
('27', '528', 318, 'RATNAGIRI', '492'),
('27', '529', 363, 'SINDHUDURG', '495'),
('27', '530', 348, 'KOLHAPUR', '480'),
('27', '531', 361, 'SANGLI', '493'),
('36', '532', 529, 'ADILABAD', '501'),
('36', '533', 536, 'NIZAMABAD', '516'),
('36', '534', 531, 'KARIMNAGAR', '508'),
('36', '535', 534, 'MEDAK', '513'),
('36', '536', 530, 'HYDERABAD', '507'),
('36', '537', 537, 'RANGA REDDY', '518'),
('36', '538', 533, 'MAHABUBNAGAR', '512'),
('36', '539', 535, 'NALGONDA', '514'),
('36', '540', 672, 'WARANGAL RURAL', '522'),
('36', '541', 532, 'KHAMMAM', '509'),
('28', '542', 11, 'SRIKAKULAM', '519'),
('28', '543', 14, 'VIZIANAGARAM', '521'),
('28', '544', 13, 'VISAKHAPATANAM', '520'),
('28', '545', 6, 'EAST GODAVARI', '505'),
('28', '546', 15, 'WEST GODAVARI', '523'),
('28', '547', 8, 'KRISHNA', '510'),
('28', '548', 7, 'GUNTUR', '506'),
('28', '549', 10, 'PRAKASAM', '517'),
('28', '550', 0, 'SPSR NELLORE', '515'),
('28', '551', 0, 'Y.S.R.', '504'),
('28', '552', 9, 'KURNOOL', '511'),
('28', '553', 4, 'ANANTAPUR', '502'),
('28', '554', 5, 'CHITTOOR', '503'),
('29', '555', 0, 'BELAGAVI', '527'),
('29', '556', 238, 'BAGALKOT', '524'),
('29', '557', 0, 'VIJAYAPURA', '530'),
('29', '558', 243, 'BIDAR', '529'),
('29', '559', 261, 'RAICHUR', '546'),
('29', '560', 258, 'KOPPAL', '543'),
('29', '561', 252, 'GADAG', '537'),
('29', '562', 250, 'DHARWAD', '536'),
('29', '563', 265, 'UTTAR KANNAD', '550'),
('29', '564', 255, 'HAVERI', '540'),
('29', '565', 0, 'BALLARI', '528'),
('29', '566', 248, 'CHITRADURGA', '533'),
('29', '567', 249, 'DAVANGERE', '535'),
('29', '568', 262, 'SHIVAMOGGA', '547'),
('29', '569', 264, 'UDUPI', '549'),
('29', '570', 246, 'CHIKKAMAGALURU', '532'),
('29', '571', 263, 'TUMAKURU', '548'),
('29', '572', 0, 'BENGALURU URBAN', '525'),
('29', '573', 259, 'MANDYA', '544'),
('29', '574', 254, 'HASSAN', '539'),
('29', '575', 251, 'DAKSHIN KANNAD', '534'),
('29', '576', 256, 'KODAGU', '541'),
('29', '577', 260, 'MYSURU', '545'),
('29', '578', 245, 'CHAMARAJANAGAR', '531'),
('29', '579', 0, 'KALABURAGI', '538'),
('29', '580', 267, 'YADGIR', '635'),
('29', '581', 257, 'KOLAR', '542'),
('29', '582', 247, 'CHIKBALLAPUR', '630'),
('29', '583', 0, 'BENGALURU RURAL', '526'),
('29', '584', 266, 'RAMANAGARA', '631'),
('30', '585', 129, 'NORTH GOA', '551'),
('30', '586', 130, 'SOUTH GOA', '552'),
('31', '587', 282, 'LAKSHADWEEP DISTRICT', '553'),
('32', '588', 272, 'KASARAGOD', '558'),
('32', '589', 271, 'KANNUR', '557'),
('32', '590', 281, 'WAYANAD', '567'),
('32', '591', 275, 'KOZHIKODE', '561'),
('32', '592', 276, 'MALAPPURAM', '562'),
('32', '593', 277, 'PALAKKAD', '563'),
('32', '594', 279, 'THRISSUR', '566'),
('32', '595', 269, 'ERNAKULAM', '555'),
('32', '596', 270, 'IDUKKI', '556'),
('32', '597', 274, 'KOTTAYAM', '560'),
('32', '598', 268, 'ALAPPUZHA', '554'),
('32', '599', 278, 'PATHANAMTHITTA', '564'),
('32', '600', 273, 'KOLLAM', '559'),
('32', '601', 280, 'THIRUVANANTHAPURAM', '565'),
('33', '602', 523, 'THIRUVALLUR', '589'),
('33', '603', 498, 'CHENNAI', '568'),
('33', '604', 504, 'KANCHIPURAM', '574'),
('33', '605', 526, 'VELLORE', '595'),
('33', '606', 525, 'TIRUVANNAMALAI', '593'),
('33', '607', 527, 'VILLUPURAM', '596'),
('33', '608', 515, 'SALEM', '584'),
('33', '609', 511, 'NAMAKKAL', '580'),
('33', '610', 503, 'ERODE', '573'),
('33', '611', 0, 'THE NILGIRIS', '587'),
('33', '612', 502, 'DINDIGUL', '572'),
('33', '613', 506, 'KARUR', '576'),
('33', '614', 518, 'TIRUCHIRAPPALLI', '591'),
('33', '615', 512, 'PERAMBALUR', '581'),
('33', '616', 497, 'Ariyalur', '610'),
('33', '617', 500, 'CUDDALORE', '570'),
('33', '618', 509, 'NAGAPATTINAM', '579'),
('33', '619', 0, 'THIRUVARUR', '590'),
('33', '620', 521, 'THANJAVUR', '586'),
('33', '621', 513, 'PUDUKKOTTAI', '582'),
('33', '622', 516, 'SIVAGANGA', '585'),
('33', '623', 508, 'MADURAI', '578'),
('33', '624', 519, 'THENI', '588'),
('33', '625', 528, 'VIRUDHUNAGAR', '597'),
('33', '626', 514, 'RAMANATHAPURAM', '583'),
('33', '627', 0, 'TUTICORIN', '594'),
('33', '628', 520, 'TIRUNELVELI', '592'),
('33', '629', 0, 'KANNIYAKUMARI', '575'),
('33', '630', 501, 'DHARMAPURI', '571'),
('33', '631', 507, 'KRISHNAGIRI', '577'),
('33', '632', 499, 'COIMBATORE', '569'),
('33', '633', 517, 'TIRUPPUR', '634'),
('34', '634', 437, 'YANAM', '601'),
('34', '635', 436, 'PONDICHERRY', '600'),
('34', '636', 435, 'MAHE', '599'),
('34', '637', 434, 'KARAIKAL', '598'),
('35', '638', 3, 'NICOBARS', '603'),
('35', '639', 1, 'NORTH AND MIDDLE ANDAMAN', '632'),
('35', '640', 2, 'SOUTH ANDAMANS', '602'),
('16', '641', 542, 'Khowai', '652'),
('16', '642', 676, 'Sepahijala', '653'),
('16', '643', 674, 'Gomati', '654'),
('16', '644', 675, 'Unakoti', '655'),
('19', '645', 284, 'Alipurduar', '664'),
('19', '646', 0, 'KALIMPONG', '702'),
('19', '647', 0, 'Jhargram', '703'),
('19', '648', 646, 'PASCHIM BARDHAMAN', '704'),
('23', '649', 283, 'AGAR MALWA', '667'),
('22', '650', 684, 'BALOD', '646'),
('22', '651', 685, 'BALODA BAZAR', '644'),
('22', '652', 553, 'BALRAMPUR', '649'),
('22', '653', 687, 'BEMETARA', '650'),
('22', '654', 688, 'GARIYABAND', '645'),
('22', '655', 689, 'KONDAGAON', '643'),
('22', '656', 690, 'MUNGELI', '647'),
('22', '657', 691, 'SUKMA', '642'),
('22', '658', 116, 'SURAJPUR', '648'),
('09', '659', 562, 'Amethi', '640'),
('09', '660', 0, 'HAPUR', '661'),
('09', '661', 607, 'SAMBHAL', '659'),
('09', '662', 611, 'SHAMLI', '660'),
('18', '663', 693, 'Biswanath', '705'),
('18', '664', 696, 'MAJULI', '706'),
('18', '665', 697, 'SOUTH SALMARA MANCACHAR', '707'),
('18', '666', 694, 'CHARAIDEO', '708'),
('18', '667', 695, 'HOJAI', '709'),
('18', '668', 698, 'WEST KARBI ANGLONG', '710'),
('17', '669', 0, 'EAST JAINTIA HILLS', '657'),
('17', '670', 129, 'NORTH GARO HILLS', '656'),
('17', '671', 0, 'SOUTH WEST GARO HILLS', '663'),
('17', '672', 0, 'SOUTH WEST KHASI HILLS', '658'),
('07', '673', 651, 'South East', '670'),
('07', '674', 652, 'SHAHDARA', '671'),
('12', '675', 0, 'LONGDING', '666'),
('12', '676', 0, 'NAMSAI', '678'),
('12', '677', 0, 'Kra Daadi', '677'),
('12', '678', 0, 'SIANG', '679'),
('06', '679', 0, 'CHARKI DADRI', '701'),
('24', '680', 681, 'BOTAD', '676'),
('24', '681', 678, 'DEVBHUMI DWARKA', '674'),
('24', '682', 679, 'GIR SOMNATH', '675'),
('24', '683', 680, 'Mahisagar', '669'),
('24', '684', 677, 'MORBI', '673'),
('24', '685', 134, 'ARVALLI', '672'),
('24', '686', 682, 'CHHOTAUDEPUR', '668'),
('27', '687', 683, 'PALGHAR', '665'),
('36', '688', 653, 'BHADRADRI KOTHAGUDEM', '690'),
('36', '689', 654, 'Jagitial', '681'),
('36', '690', 655, 'JANGOAN', '689'),
('36', '691', 656, 'JAYASHANKAR BHUPALAPALLY', '687'),
('36', '692', 657, 'JOGULAMBA GADWAL', '695'),
('36', '693', 658, 'KAMAREDDY', '685'),
('36', '694', 659, 'KUMURAM BHEEM ASIFABAD', '699'),
('36', '695', 660, 'MAHABUBABAD', '688'),
('36', '696', 661, 'MANCHERIAL', '684'),
('36', '697', 662, 'MEDCHAL MALKAJGIRI', '700'),
('36', '698', 663, 'NAGARKURNOOL', '694'),
('36', '699', 664, 'Nirmal', '680'),
('36', '700', 665, 'PEDDAPALLI', '682'),
('36', '701', 666, 'RAJANNA SIRCILLA', '683'),
('36', '702', 667, 'SANGAREDDY', '691'),
('36', '703', 668, 'SIDDIPET', '692'),
('36', '704', 669, 'SURYAPET', '696'),
('36', '705', 670, 'VIKARABAD', '698'),
('36', '706', 671, 'WANAPARTHY', '693'),
('36', '707', 538, 'WARANGAL URBAN', '686'),
('36', '708', 673, 'YADADRI BHUVANAGIRI', '697'),
('03', 'FAZ', 444, 'FAZILKA', '651'),
('03', 'PAT', 453, 'PATHANKOT', '662');

-- --------------------------------------------------------

--
-- Table structure for table `education_solution`
--

CREATE TABLE `education_solution` (
  `id` int(11) NOT NULL,
  `education_name` varchar(100) NOT NULL,
  `service_url` varchar(100) NOT NULL,
  `education_description` longtext NOT NULL,
  `created_by` datetime NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education_solution`
--

INSERT INTO `education_solution` (`id`, `education_name`, `service_url`, `education_description`, `created_by`, `image`, `status`, `updated_by`) VALUES
(1, 'Learner\'s Program', 'web/modules', 'Learner\'s Program', '2020-11-25 00:00:00', 'http://scsy.in/school/my-assets/image/education/4820a794a910242a56a531c866924840.png', 0, '2021-01-29 00:00:00'),
(2, 'Scholarship Zone', 'web/scholarshipzonelist', 'Scholarship Zone', '2020-11-25 00:00:00', 'http://scsy.in/school/my-assets/image/education/d068b0fe8f065154926e1cfc73c87133.png', 0, '2021-01-29 00:00:00'),
(3, 'Book\'s Town', 'web/bookstown', 'Book\'s Town', '2020-11-25 00:00:00', 'http://scsy.in/school/my-assets/image/education/7d4d79a2e7885aca96fbd1cbafde19aa.png', 0, '2021-01-29 00:00:00'),
(4, 'Online Competition', 'web/getcompetitonlist', 'Online Competition', '2020-11-25 00:00:00', 'http://scsy.in/school/my-assets/image/education/24280fa77f42d96c52de20a40396d513.png', 0, '2021-01-29 00:00:00'),
(5, 'Counsellors Program', 'web/appointment_info', 'Counsellors Program', '2020-11-25 00:00:00', 'http://skywart.com/my-assets/image/education/05e081ee3e5808bcfe2562f7a3ea92bb.png', 0, '2021-01-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  `isinvoice` tinyint(4) NOT NULL,
  `isservice` tinyint(4) NOT NULL,
  `isquotation` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `isinvoice`, `isservice`, `isquotation`) VALUES
(1, 'ssmtp', 'ssl://ssmtp.gmail.com', '25', 'demo@gmail.com', 'demo123456', 'html', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_month` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `id` int(11) NOT NULL,
  `enroll_id` varchar(100) NOT NULL,
  `login_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`id`, `enroll_id`, `login_id`, `name`, `email`, `phone`, `description`) VALUES
(1, '39', 0, 'test abhishek', 'school@gmail.com', '0000000000', 'djkgsjdgfdg'),
(2, '39', 0, 'test abhishek', 'school@gmail.com', '0000000000', 'jzdfbjdsfbjksdf'),
(3, '39', 0, 'test abhishek', 'school@gmail.com', '0000000000', 'jzdfbjdsfbjksdf'),
(4, '39', 36, 'test abhishek', 'school@gmail.com', '0000000000', 'djkbfjksdfsd'),
(5, '6', 5, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', 'jkfdgfdjgfd'),
(6, '2', 5, 'Rohan kumar', 'testschool@gmail.com', '08826279802', 'dvxcv'),
(7, '2', 5, 'Rohan kumar', 'testschool@gmail.com', '08826279802', 'dvxcv'),
(8, '7', 49, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', 'fjkghdfkjgfd'),
(9, '8', 49, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', ''),
(10, '2', 49, 'sanny', 'school@gmail.com', '0000000000', 'dsjkfsdkfds'),
(11, '9', 49, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', 'vvvvv'),
(12, '10', 54, 'qwerty', 'qwerty@qwerty.com', '741852963', 'dsefs'),
(13, '11', 54, 'qwert', 'qwerty@qwerty.com', '7418529632', 'ewrqwerqew'),
(14, '11', 54, 'testing', 'testing@testing.com', '7485214598', 'testing'),
(15, '12', 54, 'qwerty1', 'qwerty1@qwerty1.com', '7418529632', 'qwerty1'),
(16, '11', 60, 'Deepak', 'rdpk@gmail.com', '938493284', 'testing'),
(17, '12', 54, 'Adam Bell', 'workwithfattyfingers@gmail.com', '9782569856', 'qwerty'),
(18, '12', 54, 'Adam Bell', 'workwithfattyfingers@gmail.com', '9782569856', '123ewq'),
(19, '12', 54, 'Adam Bell', 'workwithfattyfingers@gmail.com', '9782569856', 'qwerty'),
(20, '2', 29, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', 'vvvvvvvvvvvvv'),
(21, '2', 29, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', 'vvvvvvvvvv'),
(22, '2', 29, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', 'vvvvvvvvvvvv'),
(23, '2', 29, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', 'vvvvvvvvvvv'),
(24, '5', 29, 'Rohan kumar', 'rdpk864@gmail.com', '08826279802', 'ki'),
(25, '6', 29, 'Rohan kumar', 'rdpk864@gmail.com', '08826279802', 'jj'),
(26, '11', 29, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', 'xcjvbxcmvcx'),
(27, '6', 29, 'Abhishek Tiwari', 'tiwarisanny93@gmail.com', '08267826795', 'zxc'),
(28, '12', 54, 'Adam Bell', 'workwithfattyfingers@gmail.com', '9782569856', 'qazxs'),
(29, '13', 54, 'Waqar Ahmad', 'waq.ahmad99@gmail.com', '07042419595', 'qazwsx'),
(30, '12', 54, 'test user', 'waq.ahmad99@gmail.com', '07894561237', 'qwerty'),
(31, '12', 54, 'qazwsx', 'qazwsx@qazwsx.com', '7418529632', 'qwedsa'),
(32, '17', 54, 'Adam Bell', 'workwithfattyfingers@gmail.com', '7042419595', 'hgfhg'),
(33, '18', 54, 'Rohan kumar', 'rdpk864@gmail.com', '08826279802', 'kk'),
(34, '21', 54, 'Waqar Ahmad', 'waq.ahmad99@gmail.com', '07042419595', 'test'),
(35, '2', 72, 'Farhan', 'crewmanning.dreamsconsultancy@gmail.com', '9936930509', '');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_date_time` varchar(100) NOT NULL,
  `event_description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `updated_by` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event_name`, `event_date_time`, `event_description`, `status`, `created_by`, `image`, `updated_by`) VALUES
(34, 'Cloud Books Store ', '', 'Cloud Books Store ', 0, '21-02-15', 'http://skywart.com/./my-assets/image/event/71143b6feaf86f9932638daae1a46178.png', '0000-00-00'),
(35, 'Scholarships for Students', '', 'Scholarships for Students', 0, '21-02-15', 'http://skywart.com/./my-assets/image/event/e4a4afebeb595abe01df6c20cce29bd6.png', '0000-00-00'),
(36, 'Cloud Classes', '', 'Cloud Classes', 0, '21-02-15', 'http://skywart.com/./my-assets/image/event/25e27e9f0fd0e65baf1d67d7c0bd2fe0.png', '0000-00-00'),
(38, 'Regional Partnership', '', 'Regional Partnership', 0, '21-02-17', 'http://scsy.in/school/./my-assets/image/event/5d1f5f2d6364c3c170e5e769a7d434f5.png', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL,
  `expense_item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(30) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `prevous_due` decimal(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `invoice` bigint(20) NOT NULL,
  `invoice_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
  `total_tax` decimal(10,2) DEFAULT 0.00,
  `sales_by` varchar(50) NOT NULL,
  `invoice_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `sales_by`, `invoice_details`, `status`, `bank_id`, `payment_type`) VALUES
(1, 8622677292, 2, '2020-10-03', 720.00, 720.00, 0.00, 0.00, 0.00, 1000, 0.00, 80.00, 0.00, '1', 'Thank you for shopping with us', 1, NULL, 1),
(2, 4178378441, 4, '2020-10-04', 895.00, 0.00, 895.00, 0.00, 0.00, 1001, 5.00, 5.00, 0.00, '1', 'Thank you for shopping with us', 1, NULL, 1),
(3, 5483569592, 1, '2020-10-10', 800.00, 800.00, 0.00, 0.00, 0.00, 1002, 0.00, 0.00, 0.00, '1', 'Thank you for shopping with us', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES
(1, '432552138423333', '8622677292', '98849194', '11', NULL, 1.00, 800.00, 600, 720.00, 0.01, '10', NULL, 720, 0.00, 1),
(2, '762837665325739', '8622677292', '98849194', NULL, NULL, -1.00, 800.00, 600, -800.00, 0.00, NULL, 0.00, -800, NULL, 1),
(3, '129127474248412', '4178378441', '98849194', '11', 'tesr', 1.00, 800.00, 600, 800.00, 0.00, '', NULL, 0, 895.00, 1),
(4, '153729357732454', '4178378441', '77953292', '10', 'f', 2.00, 50.00, 650, 100.00, 0.00, '', NULL, 0, 895.00, 1),
(5, '564254353953882', '5483569592', '98849194', '11', '', 1.00, 800.00, 600, 800.00, 0.00, '', NULL, 800, 0.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `bangla` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES
(1, 'user_profile', 'User Profile', NULL),
(2, 'setting', 'Setting', NULL),
(3, 'language', 'Language', NULL),
(4, 'manage_users', 'Manage Users', NULL),
(5, 'add_user', 'Add User', NULL),
(6, 'manage_company', 'Manage Company', NULL),
(7, 'web_settings', 'Software Settings', NULL),
(8, 'manage_accounts', 'Manage Accounts', NULL),
(9, 'create_accounts', 'Create Account', NULL),
(10, 'manage_bank', 'Manage Bank', NULL),
(11, 'add_new_bank', 'Add New Bank', NULL),
(12, 'settings', 'Settings', NULL),
(13, 'closing_report', 'Closing Report', NULL),
(14, 'closing', 'Closing', NULL),
(15, 'cheque_manager', 'Cheque Manager', NULL),
(16, 'accounts_summary', 'Accounts Summary', NULL),
(17, 'expense', 'Expense', NULL),
(18, 'income', 'Income', NULL),
(19, 'accounts', 'Accounts', NULL),
(20, 'stock_report', 'Stock Report', NULL),
(21, 'stock', 'Stock', NULL),
(22, 'pos_invoice', 'POS Sale', NULL),
(23, 'manage_invoice', 'Manage Sale', NULL),
(24, 'new_invoice', 'New Sale', NULL),
(25, 'invoice', 'Sale', NULL),
(26, 'manage_purchase', 'Manage Purchase', NULL),
(27, 'add_purchase', 'Add Purchase', NULL),
(28, 'purchase', 'Purchase', NULL),
(29, 'paid_customer', 'Paid Customer', NULL),
(30, 'manage_customer', 'Manage Customer', NULL),
(31, 'add_customer', 'Add Customer', NULL),
(32, 'customer', 'Customer', NULL),
(33, 'supplier_payment_actual', 'Supplier Payment Ledger', NULL),
(34, 'supplier_sales_summary', 'Supplier Sales Summary', NULL),
(35, 'supplier_sales_details', 'Supplier Sales Details', NULL),
(36, 'supplier_ledger', 'Supplier Ledger', NULL),
(37, 'manage_supplier', 'Manage Supplier', NULL),
(38, 'add_supplier', 'Add Supplier', NULL),
(39, 'supplier', 'Supplier', NULL),
(40, 'product_statement', 'Product Statement', NULL),
(41, 'manage_product', 'Manage Product', NULL),
(42, 'add_product', 'Add Product', NULL),
(43, 'product', 'Product', NULL),
(44, 'manage_category', 'Manage Category', NULL),
(45, 'add_category', 'Add Category', NULL),
(46, 'category', 'Category', NULL),
(47, 'sales_report_product_wise', 'Sales Report (Product Wise)', NULL),
(48, 'purchase_report', 'Purchase Report', NULL),
(49, 'sales_report', 'Sales Report', NULL),
(50, 'todays_report', 'Todays Report', NULL),
(51, 'report', 'Report', NULL),
(52, 'dashboard', 'Dashboard', NULL),
(53, 'online', 'Online', NULL),
(54, 'logout', 'Logout', NULL),
(55, 'change_password', 'Change Password', NULL),
(56, 'total_purchase', 'Total Purchase', NULL),
(57, 'total_amount', 'Total Amount', NULL),
(58, 'supplier_name', 'Supplier Name', NULL),
(59, 'invoice_no', 'Invoice No', NULL),
(60, 'purchase_date', 'Purchase Date', NULL),
(61, 'todays_purchase_report', 'Todays Purchase Report', NULL),
(62, 'total_sales', 'Total Sales', NULL),
(63, 'customer_name', 'Customer Name', NULL),
(64, 'sales_date', 'Sales Date', NULL),
(65, 'todays_sales_report', 'Todays Sales Report', NULL),
(66, 'home', 'Home', NULL),
(67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report', NULL),
(68, 'total_ammount', 'Total Amount', NULL),
(69, 'rate', 'Rate', NULL),
(70, 'product_model', 'Product Model', NULL),
(71, 'product_name', 'Product Name', NULL),
(72, 'search', 'Search', NULL),
(73, 'end_date', 'End Date', NULL),
(74, 'start_date', 'Start Date', NULL),
(75, 'total_purchase_report', 'Total Purchase Report', NULL),
(76, 'total_sales_report', 'Total Sales Report', NULL),
(77, 'total_seles', 'Total Sales', NULL),
(78, 'all_stock_report', 'All Stock Report', NULL),
(79, 'search_by_product', 'Search By Product', NULL),
(80, 'date', 'Date', NULL),
(81, 'print', 'Print', NULL),
(82, 'stock_date', 'Stock Date', NULL),
(83, 'print_date', 'Print Date', NULL),
(84, 'sales', 'Sales', NULL),
(85, 'price', 'Price', NULL),
(86, 'sl', 'SL.', NULL),
(87, 'add_new_category', 'Add new category', NULL),
(88, 'category_name', 'Category Name', NULL),
(89, 'save', 'Save', NULL),
(90, 'delete', 'Delete', NULL),
(91, 'update', 'Update', NULL),
(92, 'action', 'Action', NULL),
(93, 'manage_your_category', 'Manage your category ', NULL),
(94, 'category_edit', 'Category Edit', NULL),
(95, 'status', 'Status', NULL),
(96, 'active', 'Active', NULL),
(97, 'inactive', 'Inactive', NULL),
(98, 'save_changes', 'Save Changes', NULL),
(99, 'save_and_add_another', 'Save And Add Another', NULL),
(100, 'model', 'Model', NULL),
(101, 'supplier_price', 'Supplier Price', NULL),
(102, 'sell_price', 'Sale Price', NULL),
(103, 'image', 'Image', NULL),
(104, 'select_one', 'Select One', NULL),
(105, 'details', 'Details', NULL),
(106, 'new_product', 'New Product', NULL),
(107, 'add_new_product', 'Add new product', NULL),
(108, 'barcode', 'Barcode', NULL),
(109, 'qr_code', 'Qr-Code', NULL),
(110, 'product_details', 'Product Details', NULL),
(111, 'manage_your_product', 'Manage your product', NULL),
(112, 'product_edit', 'Product Edit', NULL),
(113, 'edit_your_product', 'Edit your product', NULL),
(114, 'cancel', 'Cancel', NULL),
(115, 'incl_vat', 'Incl. Vat', NULL),
(116, 'money', 'TK', NULL),
(117, 'grand_total', 'Grand Total', NULL),
(118, 'quantity', 'Qnty', NULL),
(119, 'product_report', 'Product Report', NULL),
(120, 'product_sales_and_purchase_report', 'Product sales and purchase report', NULL),
(121, 'previous_stock', 'Previous Stock', NULL),
(122, 'out', 'Out', NULL),
(123, 'in', 'In', NULL),
(124, 'to', 'To', NULL),
(125, 'previous_balance', 'Previous Credit Balance', NULL),
(126, 'customer_address', 'Customer Address', NULL),
(127, 'customer_mobile', 'Customer Mobile', NULL),
(128, 'customer_email', 'Customer Email', NULL),
(129, 'add_new_customer', 'Add new customer', NULL),
(130, 'balance', 'Balance', NULL),
(131, 'mobile', 'Mobile', NULL),
(132, 'address', 'Address', NULL),
(133, 'manage_your_customer', 'Manage your customer', NULL),
(134, 'customer_edit', 'Customer Edit', NULL),
(135, 'paid_customer_list', 'Paid Customer List', NULL),
(136, 'ammount', 'Amount', NULL),
(137, 'customer_ledger', 'Customer Ledger', NULL),
(138, 'manage_customer_ledger', 'Manage Customer Ledger', NULL),
(139, 'customer_information', 'Customer Information', NULL),
(140, 'debit_ammount', 'Debit Amount', NULL),
(141, 'credit_ammount', 'Credit Amount', NULL),
(142, 'balance_ammount', 'Balance Amount', NULL),
(143, 'receipt_no', 'Receipt NO', NULL),
(144, 'description', 'Description', NULL),
(145, 'debit', 'Debit', NULL),
(146, 'credit', 'Credit', NULL),
(147, 'item_information', 'Item Information', NULL),
(148, 'total', 'Total', NULL),
(149, 'please_select_supplier', 'Please Select Supplier', NULL),
(150, 'submit', 'Submit', NULL),
(151, 'submit_and_add_another', 'Submit And Add Another One', NULL),
(152, 'add_new_item', 'Add New Item', NULL),
(153, 'manage_your_purchase', 'Manage your purchase', NULL),
(154, 'purchase_edit', 'Purchase Edit', NULL),
(155, 'purchase_ledger', 'Purchase Ledger', NULL),
(156, 'invoice_information', 'Sale Information', NULL),
(157, 'paid_ammount', 'Paid Amount', NULL),
(158, 'discount', 'Dis./Pcs.', NULL),
(159, 'save_and_paid', 'Save And Paid', NULL),
(160, 'payee_name', 'Payee Name', NULL),
(161, 'manage_your_invoice', 'Manage your Sale', NULL),
(162, 'invoice_edit', 'Sale Edit', NULL),
(163, 'new_pos_invoice', 'New POS Sale', NULL),
(164, 'add_new_pos_invoice', 'Add new pos Sale', NULL),
(165, 'product_id', 'Product ID', NULL),
(166, 'paid_amount', 'Paid Amount', NULL),
(167, 'authorised_by', 'Authorised By', NULL),
(168, 'checked_by', 'Checked By', NULL),
(169, 'received_by', 'Received By', NULL),
(170, 'prepared_by', 'Prepared By', NULL),
(171, 'memo_no', 'Memo No', NULL),
(172, 'website', 'Website', NULL),
(173, 'email', 'Email', NULL),
(174, 'invoice_details', 'Sale Details', NULL),
(175, 'reset', 'Reset', NULL),
(176, 'payment_account', 'Payment Account', NULL),
(177, 'bank_name', 'Bank Name', NULL),
(178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No', NULL),
(179, 'payment_type', 'Payment Type', NULL),
(180, 'payment_from', 'Payment From', NULL),
(181, 'payment_date', 'Payment Date', NULL),
(182, 'add_income', 'Add Income', NULL),
(183, 'cash', 'Cash', NULL),
(184, 'cheque', 'Cheque', NULL),
(185, 'pay_order', 'Pay Order', NULL),
(186, 'payment_to', 'Payment To', NULL),
(187, 'total_outflow_ammount', 'Total Expense Amount', NULL),
(188, 'transections', 'Transections', NULL),
(189, 'accounts_name', 'Accounts Name', NULL),
(190, 'outflow_report', 'Expense Report', NULL),
(191, 'inflow_report', 'Income Report', NULL),
(192, 'all', 'All', NULL),
(193, 'account', 'Account', NULL),
(194, 'from', 'From', NULL),
(195, 'account_summary_report', 'Account Summary Report', NULL),
(196, 'search_by_date', 'Search By Date', NULL),
(197, 'cheque_no', 'Cheque No', NULL),
(198, 'name', 'Name', NULL),
(199, 'closing_account', 'Closing Account', NULL),
(200, 'close_your_account', 'Close your account', NULL),
(201, 'last_day_closing', 'Last Day Closing', NULL),
(202, 'cash_in', 'Cash In', NULL),
(203, 'cash_out', 'Cash Out', NULL),
(204, 'cash_in_hand', 'Cash In Hand', NULL),
(205, 'add_new_bank', 'Add New Bank', NULL),
(206, 'day_closing', 'Day Closing', NULL),
(207, 'account_closing_report', 'Account Closing Report', NULL),
(208, 'last_day_ammount', 'Last Day Amount', NULL),
(209, 'adjustment', 'Adjustment', NULL),
(210, 'pay_type', 'Pay Type', NULL),
(211, 'customer_or_supplier', 'Customer,Supplier Or Others', NULL),
(212, 'transection_id', 'Transections ID', NULL),
(213, 'accounts_summary_report', 'Accounts Summary Report', NULL),
(214, 'bank_list', 'Bank List', NULL),
(215, 'bank_edit', 'Bank Edit', NULL),
(216, 'debit_plus', 'Debit (+)', NULL),
(217, 'credit_minus', 'Credit (-)', NULL),
(218, 'account_name', 'Account Name', NULL),
(219, 'account_type', 'Account Type', NULL),
(220, 'account_real_name', 'Account Real Name', NULL),
(221, 'manage_account', 'Manage Account', NULL),
(222, 'company_name', 'Niha International', NULL),
(223, 'edit_your_company_information', 'Edit your company information', NULL),
(224, 'company_edit', 'Company Edit', NULL),
(225, 'admin', 'Admin', NULL),
(226, 'user', 'User', NULL),
(227, 'password', 'Password', NULL),
(228, 'last_name', 'Last Name', NULL),
(229, 'first_name', 'First Name', NULL),
(230, 'add_new_user_information', 'Add new user information', NULL),
(231, 'user_type', 'User Type', NULL),
(232, 'user_edit', 'User Edit', NULL),
(233, 'rtr', 'RTR', NULL),
(234, 'ltr', 'LTR', NULL),
(235, 'ltr_or_rtr', 'LTR/RTR', NULL),
(236, 'footer_text', 'Footer Text', NULL),
(237, 'favicon', 'Favicon', NULL),
(238, 'logo', 'Logo', NULL),
(239, 'update_setting', 'Update Setting', NULL),
(240, 'update_your_web_setting', 'Update your web setting', NULL),
(241, 'login', 'Login', NULL),
(242, 'your_strong_password', 'Your strong password', NULL),
(243, 'your_unique_email', 'Your unique email', NULL),
(244, 'please_enter_your_login_information', 'Please enter your login information.', NULL),
(245, 'update_profile', 'Update Profile', NULL),
(246, 'your_profile', 'Your Profile', NULL),
(247, 're_type_password', 'Re-Type Password', NULL),
(248, 'new_password', 'New Password', NULL),
(249, 'old_password', 'Old Password', NULL),
(250, 'new_information', 'New Information', NULL),
(251, 'old_information', 'Old Information', NULL),
(252, 'change_your_information', 'Change your information', NULL),
(253, 'change_your_profile', 'Change your profile', NULL),
(254, 'profile', 'Profile', NULL),
(255, 'wrong_username_or_password', 'Wrong User Name Or Password !', NULL),
(256, 'successfully_updated', 'Successfully Updated.', NULL),
(257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', NULL),
(258, 'successfully_changed_password', 'Successfully changed password.', NULL),
(259, 'you_are_not_authorised_person', 'You are not authorised person !', NULL),
(260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', NULL),
(261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.', NULL),
(262, 'you_put_wrong_email_address', 'You put wrong email address !', NULL),
(263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.', NULL),
(264, 'successfully_payment_paid', 'Successfully Payment Paid.', NULL),
(265, 'successfully_added', 'Successfully Added.', NULL),
(266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', NULL),
(267, 'successfully_payment_received', 'Successfully Payment Received.', NULL),
(268, 'already_inserted', 'Already Inserted !', NULL),
(269, 'successfully_delete', 'Successfully Delete.', NULL),
(270, 'successfully_created', 'Successfully Created.', NULL),
(271, 'logo_not_uploaded', 'Logo not uploaded !', NULL),
(272, 'favicon_not_uploaded', 'Favicon not uploaded !', NULL),
(273, 'supplier_mobile', 'Supplier Mobile', NULL),
(274, 'supplier_address', 'Supplier Address', NULL),
(275, 'supplier_details', 'Supplier Details', NULL),
(276, 'add_new_supplier', 'Add New Supplier', NULL),
(277, 'manage_suppiler', 'Manage Supplier', NULL),
(278, 'manage_your_supplier', 'Manage your supplier', NULL),
(279, 'manage_supplier_ledger', 'Manage supplier ledger', NULL),
(280, 'invoice_id', 'Invoice ID', NULL),
(281, 'deposite_id', 'Deposite ID', NULL),
(282, 'supplier_actual_ledger', 'Supplier Payment Ledger', NULL),
(283, 'supplier_information', 'Supplier Information', NULL),
(284, 'event', 'Event', NULL),
(285, 'add_new_income', 'Add New Income', NULL),
(286, 'add_expese', 'Add Expense', NULL),
(287, 'add_new_expense', 'Add New Expense', NULL),
(288, 'total_inflow_ammount', 'Total Income Amount', NULL),
(289, 'create_new_invoice', 'Create New Sale', NULL),
(290, 'create_pos_invoice', 'Create POS Sale', NULL),
(291, 'total_profit', 'Total Profit', NULL),
(292, 'monthly_progress_report', 'Monthly Progress Report', NULL),
(293, 'total_invoice', 'Total Sale', NULL),
(294, 'account_summary', 'Account Summary', NULL),
(295, 'total_supplier', 'Total Supplier', NULL),
(296, 'total_product', 'Total Product', NULL),
(297, 'total_customer', 'Total Customer', NULL),
(298, 'supplier_edit', 'Supplier Edit', NULL),
(299, 'add_new_invoice', 'Add New Sale', NULL),
(300, 'add_new_purchase', 'Add new purchase', NULL),
(301, 'currency', 'Currency', NULL),
(302, 'currency_position', 'Currency Position', NULL),
(303, 'left', 'Left', NULL),
(304, 'right', 'Right', NULL),
(305, 'add_tax', 'Add Tax', NULL),
(306, 'manage_tax', 'Manage Tax', NULL),
(307, 'add_new_tax', 'Add new tax', NULL),
(308, 'enter_tax', 'Enter Tax', NULL),
(309, 'already_exists', 'Already Exists !', NULL),
(310, 'successfully_inserted', 'Successfully Inserted.', NULL),
(311, 'tax', 'Tax', NULL),
(312, 'tax_edit', 'Tax Edit', NULL),
(313, 'product_not_added', 'Product not added !', NULL),
(314, 'total_tax', 'Total Tax', NULL),
(315, 'manage_your_supplier_details', 'Manage your supplier details.', NULL),
(316, 'invoice_description', 'Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', NULL),
(317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', NULL),
(318, 'billing_date', 'Billing Date', NULL),
(319, 'billing_to', 'Billing To', NULL),
(320, 'billing_from', 'Billing From', NULL),
(321, 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this product.This product already used in calculation system!', NULL),
(322, 'old_customer', 'Old Customer', NULL),
(323, 'new_customer', 'New Customer', NULL),
(324, 'new_supplier', 'New Supplier', NULL),
(325, 'old_supplier', 'Old Supplier', NULL),
(326, 'credit_customer', 'Credit Customer', NULL),
(327, 'account_already_exists', 'This Account Already Exists !', NULL),
(328, 'edit_income', 'Edit Income', NULL),
(329, 'you_are_not_access_this_part', 'You are not authorised person !', NULL),
(330, 'account_edit', 'Account Edit', NULL),
(331, 'due', 'Due', NULL),
(332, 'expense_edit', 'Expense Edit', NULL),
(333, 'please_select_customer', 'Please select customer !', NULL),
(334, 'profit_report', 'Profit Report (Sale Wise)', NULL),
(335, 'total_profit_report', 'Total profit report', NULL),
(336, 'please_enter_valid_captcha', 'Please enter valid captcha.', NULL),
(337, 'category_not_selected', 'Category not selected.', NULL),
(338, 'supplier_not_selected', 'Supplier not selected.', NULL),
(339, 'please_select_product', 'Please select product.', NULL),
(340, 'product_model_already_exist', 'Product model already exist !', NULL),
(341, 'invoice_logo', 'Sale Logo', NULL),
(342, 'available_qnty', 'Av. Qnty.', NULL),
(343, 'you_can_not_buy_greater_than_available_cartoon', 'You can not select grater than available cartoon !', NULL),
(344, 'customer_details', 'Customer details', NULL),
(345, 'manage_customer_details', 'Manage customer details.', NULL),
(346, 'site_key', 'Captcha Site Key', NULL),
(347, 'secret_key', 'Captcha Secret Key', NULL),
(348, 'captcha', 'Captcha', NULL),
(349, 'cartoon_quantity', 'Cartoon Quantity', NULL),
(350, 'total_cartoon', 'Total Cartoon', NULL),
(351, 'cartoon', 'Cartoon', NULL),
(352, 'item_cartoon', 'Item/Cartoon', NULL),
(353, 'product_and_supplier_did_not_match', 'Product and supplier did not match !', NULL),
(354, 'if_you_update_purchase_first_select_supplier_then_product_and_then_quantity', 'If you update purchase,first select supplier then product and then update qnty.', NULL),
(355, 'item', 'Item', NULL),
(356, 'manage_your_credit_customer', 'Manage your credit customer', NULL),
(357, 'total_quantity', 'Total Quantity', NULL),
(358, 'quantity_per_cartoon', 'Quantity per cartoon', NULL),
(359, 'barcode_qrcode_scan_here', 'Barcode or QR-code scan here', NULL),
(360, 'synchronizer_setting', 'Synchronizer Setting', NULL),
(361, 'data_synchronizer', 'Data Synchronizer', NULL),
(362, 'hostname', 'Host name', NULL),
(363, 'username', 'User Name', NULL),
(364, 'ftp_port', 'FTP Port', NULL),
(365, 'ftp_debug', 'FTP Debug', NULL),
(366, 'project_root', 'Project Root', NULL),
(367, 'please_try_again', 'Please try again', NULL),
(368, 'save_successfully', 'Save successfully', NULL),
(369, 'synchronize', 'Synchronize', NULL),
(370, 'internet_connection', 'Internet Connection', NULL),
(371, 'outgoing_file', 'Outgoing File', NULL),
(372, 'incoming_file', 'Incoming File', NULL),
(373, 'ok', 'Ok', NULL),
(374, 'not_available', 'Not Available', NULL),
(375, 'available', 'Available', NULL),
(376, 'download_data_from_server', 'Download data from server', NULL),
(377, 'data_import_to_database', 'Data import to database', NULL),
(378, 'data_upload_to_server', 'Data uplod to server', NULL),
(379, 'please_wait', 'Please Wait', NULL),
(380, 'ooops_something_went_wrong', 'Oooops Something went wrong !', NULL),
(381, 'upload_successfully', 'Upload successfully', NULL),
(382, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file please check configuration', NULL),
(383, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', NULL),
(384, 'download_successfully', 'Download successfully', NULL),
(385, 'unable_to_download_file_please_check_configuration', 'Unable to download file please check configuration', NULL),
(386, 'data_import_first', 'Data import past', NULL),
(387, 'data_import_successfully', 'Data import successfully', NULL),
(388, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file', NULL),
(389, 'total_sale_ctn', 'Total Sale Ctn', NULL),
(390, 'in_qnty', 'In Qnty.', NULL),
(391, 'out_qnty', 'Out Qnty.', NULL),
(392, 'stock_report_supplier_wise', 'Stock Report (Supplier Wise)', NULL),
(393, 'all_stock_report_supplier_wise', 'Stock Report (Suppler Wise)', NULL),
(394, 'select_supplier', 'Select Supplier', NULL),
(395, 'stock_report_product_wise', 'Stock Report (Product Wise)', NULL),
(396, 'phone', 'Phone', NULL),
(397, 'select_product', 'Select Product', NULL),
(398, 'in_quantity', 'In Qnty.', NULL),
(399, 'out_quantity', 'Out Qnty.', NULL),
(400, 'in_taka', 'In TK.', NULL),
(401, 'out_taka', 'Out TK.', NULL),
(402, 'commission', 'Commission', NULL),
(403, 'generate_commission', 'Generate Commssion', NULL),
(404, 'commission_rate', 'Commission Rate', NULL),
(405, 'total_ctn', 'Total Ctn.', NULL),
(406, 'per_pcs_commission', 'Per PCS Commission', NULL),
(407, 'total_commission', 'Total Commission', NULL),
(408, 'enter', 'Enter', NULL),
(409, 'please_add_walking_customer_for_default_customer', 'Please add \'Walking Customer\' for default customer.', NULL),
(410, 'supplier_ammount', 'Supplier Amount', NULL),
(411, 'my_sale_ammount', 'My Sale Amount', NULL),
(412, 'signature_pic', 'Signature Picture', NULL),
(413, 'branch', 'Branch', NULL),
(414, 'ac_no', 'A/C Number', NULL),
(415, 'ac_name', 'A/C Name', NULL),
(416, 'bank_transaction', 'Bank Transaction', NULL),
(417, 'bank', 'Bank', NULL),
(418, 'withdraw_deposite_id', 'Withdraw / Deposite ID', NULL),
(419, 'bank_ledger', 'Bank Ledger', NULL),
(420, 'note_name', 'Note Name', NULL),
(421, 'pcs', 'Pcs.', NULL),
(422, '1', '1', NULL),
(423, '2', '2', NULL),
(424, '5', '5', NULL),
(425, '10', '10', NULL),
(426, '20', '20', NULL),
(427, '50', '50', NULL),
(428, '100', '100', NULL),
(429, '500', '500', NULL),
(430, '1000', '1000', NULL),
(431, 'total_discount', 'Total Discount', NULL),
(432, 'product_not_found', 'Product not found !', NULL),
(433, 'this_is_not_credit_customer', 'This is not credit customer !', NULL),
(434, 'personal_loan', 'Personal Loan', NULL),
(435, 'add_person', 'Add Person', NULL),
(436, 'add_loan', 'Add Loan', NULL),
(437, 'add_payment', 'Add Payment', NULL),
(438, 'manage_person', 'Manage Person', NULL),
(439, 'personal_edit', 'Person Edit', NULL),
(440, 'person_ledger', 'Person Ledger', NULL),
(441, 'backup_restore', 'Backup ', NULL),
(442, 'database_backup', 'Database backup', NULL),
(443, 'file_information', 'File information', NULL),
(444, 'filename', 'Filename', NULL),
(445, 'size', 'Size', NULL),
(446, 'backup_date', 'Backup date', NULL),
(447, 'backup_now', 'Backup now', NULL),
(448, 'restore_now', 'Restore now', NULL),
(449, 'are_you_sure', 'Are you sure ?', NULL),
(450, 'download', 'Download', NULL),
(451, 'backup_and_restore', 'Backup', NULL),
(452, 'backup_successfully', 'Backup successfully', NULL),
(453, 'delete_successfully', 'Delete successfully', NULL),
(454, 'stock_ctn', 'Stock/Qnt', NULL),
(455, 'unit', 'Unit', NULL),
(456, 'meter_m', 'Meter (M)', NULL),
(457, 'piece_pc', 'Piece (Pc)', NULL),
(458, 'kilogram_kg', 'Kilogram (Kg)', NULL),
(459, 'stock_cartoon', 'Stock Cartoon', NULL),
(460, 'add_product_csv', 'Add Product (CSV)', NULL),
(461, 'import_product_csv', 'Import product (CSV)', NULL),
(462, 'close', 'Close', NULL),
(463, 'download_example_file', 'Download example file.', NULL),
(464, 'upload_csv_file', 'Upload CSV File', NULL),
(465, 'csv_file_informaion', 'CSV File Information', NULL),
(466, 'out_of_stock', 'Out Of Stock', NULL),
(467, 'others', 'Others', NULL),
(468, 'full_paid', 'Full Paid', NULL),
(469, 'successfully_saved', 'Your Data Successfully Saved', NULL),
(470, 'manage_loan', 'Manage Loan', NULL),
(471, 'receipt', 'Receipt', NULL),
(472, 'payment', 'Payment', NULL),
(473, 'cashflow', 'Daily Cash Flow', NULL),
(474, 'signature', 'Signature', NULL),
(475, 'supplier_reports', 'Supplier Reports', NULL),
(476, 'generate', 'Generate', NULL),
(477, 'todays_overview', 'Todays Overview', NULL),
(478, 'last_sales', 'Last Sales', NULL),
(479, 'manage_transaction', 'Manage Transaction', NULL),
(480, 'daily_summary', 'Daily Summary', NULL),
(481, 'daily_cash_flow', 'Daily Cash Flow', NULL),
(482, 'custom_report', 'Custom Report', NULL),
(483, 'transaction', 'Transaction', NULL),
(484, 'receipt_amount', 'Receipt Amount', NULL),
(485, 'transaction_details_datewise', 'Transaction Details Datewise', NULL),
(486, 'cash_closing', 'Cash Closing', NULL),
(487, 'you_can_not_buy_greater_than_available_qnty', 'You can not buy greater than available qnty.', NULL),
(488, 'supplier_id', 'Supplier ID', NULL),
(489, 'category_id', 'Category ID', NULL),
(490, 'select_report', 'Select Report', NULL),
(491, 'supplier_summary', 'Supplier summary', NULL),
(492, 'sales_payment_actual', 'Sales payment actual', NULL),
(493, 'today_already_closed', 'Today already closed.', NULL),
(494, 'root_account', 'Root Account', NULL),
(495, 'office', 'Office', NULL),
(496, 'loan', 'Loan', NULL),
(497, 'transaction_mood', 'Transaction Mood', NULL),
(498, 'select_account', 'Select Account', NULL),
(499, 'add_receipt', 'Add Receipt', NULL),
(500, 'update_transaction', 'Update Transaction', NULL),
(501, 'no_stock_found', 'No Stock Found !', NULL),
(502, 'admin_login_area', 'Admin Login Area', NULL),
(503, 'print_qr_code', 'Print QR Code', NULL),
(504, 'discount_type', 'Discount Type', NULL),
(505, 'discount_percentage', 'Discount', NULL),
(506, 'fixed_dis', 'Fixed Dis.', NULL),
(507, 'return', 'Return', NULL),
(508, 'stock_return_list', 'Stock Return List', NULL),
(509, 'wastage_return_list', 'Wastage Return List', NULL),
(510, 'return_invoice', 'Sale Return', NULL),
(511, 'sold_qty', 'Sold Qty', NULL),
(512, 'ret_quantity', 'Return Qty', NULL),
(513, 'deduction', 'Deduction', NULL),
(514, 'check_return', 'Check Return', NULL),
(515, 'reason', 'Reason', NULL),
(516, 'usablilties', 'Usability', NULL),
(517, 'adjs_with_stck', 'Adjust With Stock', NULL),
(518, 'return_to_supplier', 'Return To Supplier', NULL),
(519, 'wastage', 'Wastage', NULL),
(520, 'to_deduction', 'Total Deduction ', NULL),
(521, 'nt_return', 'Net Return Amount', NULL),
(522, 'return_list', 'Return List', NULL),
(523, 'add_return', 'Add Return', NULL),
(524, 'per_qty', 'Purchase Qty', NULL),
(525, 'return_supplier', 'Supplier Return', NULL),
(526, 'stock_purchase', 'Stock Purchase Price', NULL),
(527, 'stock_sale', 'Stock Sale Price', NULL),
(528, 'supplier_return', 'Supplier Return', NULL),
(529, 'purchase_id', 'Purchase ID', NULL),
(530, 'return_id', 'Return ID', NULL),
(531, 'supplier_return_list', 'Supplier Return List', NULL),
(532, 'c_r_slist', 'Stock Return Stock', NULL),
(533, 'wastage_list', 'Wastage List', NULL),
(534, 'please_input_correct_invoice_id', 'Please Input a Correct Sale ID', NULL),
(535, 'please_input_correct_purchase_id', 'Please Input Your Correct  Purchase ID', NULL),
(536, 'add_more', 'Add More', NULL),
(537, 'prouct_details', 'Product Details', NULL),
(538, 'prouct_detail', 'Product Details', NULL),
(539, 'stock_return', 'Stock Return', NULL),
(540, 'choose_transaction', 'Select Transaction', NULL),
(541, 'transection_category', 'Select  Category', NULL),
(542, 'transaction_categry', 'Select Category', NULL),
(543, 'search_supplier', 'Search Supplier', NULL),
(544, 'customer_id', 'Customer ID', NULL),
(545, 'search_customer', 'Search Customer Invoice', NULL),
(546, 'serial_no', 'SN', NULL),
(547, 'item_discount', 'Item Discount', NULL),
(548, 'invoice_discount', 'Sale Discount', NULL),
(549, 'add_unit', 'Add Unit', NULL),
(550, 'manage_unit', 'Manage Unit', NULL),
(551, 'add_new_unit', 'Add New Unit', NULL),
(552, 'unit_name', 'Unit Name', NULL),
(553, 'payment_amount', 'Payment Amount', NULL),
(554, 'manage_your_unit', 'Manage Your Unit', NULL),
(555, 'unit_id', 'Unit ID', NULL),
(556, 'unit_edit', 'Unit Edit', NULL),
(557, 'vat', 'Vat', NULL),
(558, 'sales_report_category_wise', 'Sales Report (Category wise)', NULL),
(559, 'purchase_report_category_wise', 'Purchase Report (Category wise)', NULL),
(560, 'category_wise_purchase_report', 'Category wise purchase report', NULL),
(561, 'category_wise_sales_report', 'Category wise sales report', NULL),
(562, 'best_sale_product', 'Best Sale Product', NULL),
(563, 'all_best_sales_product', 'All Best Sales Products', NULL),
(564, 'todays_customer_receipt', 'Todays Customer Receipt', NULL),
(565, 'not_found', 'Record not found', NULL),
(566, 'collection', 'Collection', NULL),
(567, 'increment', 'Increment', NULL),
(568, 'accounts_tree_view', 'Accounts Tree View', NULL),
(569, 'debit_voucher', 'Debit Voucher', NULL),
(570, 'voucher_no', 'Voucher No', NULL),
(571, 'credit_account_head', 'Credit Account Head', NULL),
(572, 'remark', 'Remark', NULL),
(573, 'code', 'Code', NULL),
(574, 'amount', 'Amount', NULL),
(575, 'approved', 'Approved', NULL),
(576, 'debit_account_head', 'Debit Account Head', NULL),
(577, 'credit_voucher', 'Credit Voucher', NULL),
(578, 'find', 'Find', NULL),
(579, 'transaction_date', 'Transaction Date', NULL),
(580, 'voucher_type', 'Voucher Type', NULL),
(581, 'particulars', 'Particulars', NULL),
(582, 'with_details', 'With Details', NULL),
(583, 'general_ledger', 'General Ledger', NULL),
(584, 'general_ledger_of', 'General ledger of', NULL),
(585, 'pre_balance', 'Pre Balance', NULL),
(586, 'current_balance', 'Current Balance', NULL),
(587, 'to_date', 'To Date', NULL),
(588, 'from_date', 'From Date', NULL),
(589, 'trial_balance', 'Trial Balance', NULL),
(590, 'authorized_signature', 'Authorized Signature', NULL),
(591, 'chairman', 'Chairman', NULL),
(592, 'total_income', 'Total Income', NULL),
(593, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income', NULL),
(594, 'profit_loss', 'Profit Loss', NULL),
(595, 'cash_flow_report', 'Cash Flow Report', NULL),
(596, 'cash_flow_statement', 'Cash Flow Statement', NULL),
(597, 'amount_in_dollar', 'Amount In Dollar', NULL),
(598, 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', NULL),
(599, 'coa_print', 'Coa Print', NULL),
(600, 'cash_flow', 'Cash Flow', NULL),
(601, 'cash_book', 'Cash Book', NULL),
(602, 'bank_book', 'Bank Book', NULL),
(603, 'c_o_a', 'Chart of Account', NULL),
(604, 'journal_voucher', 'Journal Voucher', NULL),
(605, 'contra_voucher', 'Contra Voucher', NULL),
(606, 'voucher_approval', 'Vouchar Approval', NULL),
(607, 'supplier_payment', 'Supplier Payment', NULL),
(608, 'customer_receive', 'Customer Receive', NULL),
(609, 'gl_head', 'General Head', NULL),
(610, 'account_code', 'Account Head', NULL),
(611, 'opening_balance', 'Opening Balance', NULL),
(612, 'head_of_account', 'Head of Account', NULL),
(613, 'inventory_ledger', 'Inventory Ledger', NULL),
(614, 'newpassword', 'New Password', NULL),
(615, 'password_recovery', 'Password Recovery', NULL),
(616, 'forgot_password', 'Forgot Password ??', NULL),
(617, 'send', 'Send', NULL),
(618, 'due_report', 'Due Report', NULL),
(619, 'due_amount', 'Due Amount', NULL),
(620, 'download_sample_file', 'Download Sample File', NULL),
(621, 'customer_csv_upload', 'Customer Csv Upload', NULL),
(622, 'csv_supplier', 'Csv Upload Supplier', NULL),
(623, 'csv_upload_supplier', 'Csv Upload Supplier', NULL),
(624, 'previous', 'Previous', NULL),
(625, 'net_total', 'Net Total', NULL),
(626, 'currency_list', 'Currency List', NULL),
(627, 'currency_name', 'Currency Name', NULL),
(628, 'currency_icon', 'Currency Symbol', NULL),
(629, 'add_currency', 'Add Currency', NULL),
(630, 'role_permission', 'Role Permission', NULL),
(631, 'role_list', 'Role List', NULL),
(632, 'user_assign_role', 'User Assign Role', NULL),
(633, 'permission', 'Permission', NULL),
(634, 'add_role', 'Add Role', NULL),
(635, 'add_module', 'Add Module', NULL),
(636, 'module_name', 'Module Name', NULL),
(637, 'office_loan', 'Office Loan', NULL),
(638, 'add_menu', 'Add Menu', NULL),
(639, 'menu_name', 'Menu Name', NULL),
(640, 'sl_no', 'Sl No', NULL),
(641, 'create', 'Create', NULL),
(642, 'read', 'Read', NULL),
(643, 'role_name', 'Role Name', NULL),
(644, 'qty', 'Quantity', NULL),
(645, 'max_rate', 'Max Rate', NULL),
(646, 'min_rate', 'Min Rate', NULL),
(647, 'avg_rate', 'Average Rate', NULL),
(648, 'role_permission_added_successfully', 'Role Permission Successfully Added', NULL),
(649, 'update_successfully', 'Successfully Updated', NULL),
(650, 'role_permission_updated_successfully', 'Role Permission Successfully Updated ', NULL),
(651, 'shipping_cost', 'Shipping Cost', NULL),
(652, 'in_word', 'In Word ', NULL),
(653, 'shipping_cost_report', 'Shipping Cost Report', NULL),
(654, 'cash_book_report', 'Cash Book Report', NULL),
(655, 'inventory_ledger_report', 'Inventory Ledger Report', NULL),
(656, 'trial_balance_with_opening_as_on', 'Trial Balance With Opening As On', NULL),
(657, 'type', 'Type', NULL),
(658, 'taka_only', 'Taka Only', NULL),
(659, 'item_description', 'Desc', NULL),
(660, 'sold_by', 'Sold By', NULL),
(661, 'user_wise_sales_report', 'User Wise Sales Report', NULL),
(662, 'user_name', 'User Name', NULL),
(663, 'total_sold', 'Total Sold', NULL),
(664, 'user_wise_sale_report', 'User Wise Sales Report', NULL),
(665, 'barcode_or_qrcode', 'Barcode/QR-code', NULL),
(666, 'category_csv_upload', 'Category Csv  Upload', NULL),
(667, 'unit_csv_upload', 'Unit Csv Upload', NULL),
(668, 'invoice_return_list', 'Sales Return list', NULL),
(669, 'invoice_return', 'Sales Return', NULL),
(670, 'tax_report', 'Tax Report', NULL),
(671, 'select_tax', 'Select Tax', NULL),
(672, 'hrm', 'HRM', NULL),
(673, 'employee', 'Employee', NULL),
(674, 'add_employee', 'Add Employee', NULL),
(675, 'manage_employee', 'Manage Employee', NULL),
(676, 'attendance', 'Attendance', NULL),
(677, 'add_attendance', 'Attendance', NULL),
(678, 'manage_attendance', 'Manage Attendance', NULL),
(679, 'payroll', 'Payroll', NULL),
(680, 'add_payroll', 'Payroll', NULL),
(681, 'manage_payroll', 'Manage Payroll', NULL),
(682, 'employee_type', 'Employee Type', NULL),
(683, 'employee_designation', 'Employee Designation', NULL),
(684, 'designation', 'Designation', NULL),
(685, 'add_designation', 'Add Designation', NULL),
(686, 'manage_designation', 'Manage Designation', NULL),
(687, 'designation_update_form', 'Designation Update form', NULL),
(688, 'picture', 'Picture', NULL),
(689, 'country', 'Country', NULL),
(690, 'blood_group', 'Blood Group', NULL),
(691, 'address_line_1', 'Address Line 1', NULL),
(692, 'address_line_2', 'Address Line 2', NULL),
(693, 'zip', 'Zip code', NULL),
(694, 'city', 'City', NULL),
(695, 'hour_rate_or_salary', 'Houre Rate/Salary', NULL),
(696, 'rate_type', 'Rate Type', NULL),
(697, 'hourly', 'Hourly', NULL),
(698, 'salary', 'Salary', NULL),
(699, 'employee_update', 'Employee Update', NULL),
(700, 'checkin', 'Check In', NULL),
(701, 'employee_name', 'Employee Name', NULL),
(702, 'checkout', 'Check Out', NULL),
(703, 'confirm_clock', 'Confirm Clock', NULL),
(704, 'stay', 'Stay Time', NULL),
(705, 'sign_in', 'Sign In', NULL),
(706, 'check_in', 'Check In', NULL),
(707, 'single_checkin', 'Single Check In', NULL),
(708, 'bulk_checkin', 'Bulk Check In', NULL),
(709, 'successfully_checkout', 'Successfully Checkout', NULL),
(710, 'attendance_report', 'Attendance Report', NULL),
(711, 'datewise_report', 'Date Wise Report', NULL),
(712, 'employee_wise_report', 'Employee Wise Report', NULL),
(713, 'date_in_time_report', 'Date In Time Report', NULL),
(714, 'request', 'Request', NULL),
(715, 'sign_out', 'Sign Out', NULL),
(716, 'work_hour', 'Work Hours', NULL),
(717, 's_time', 'Start Time', NULL),
(718, 'e_time', 'In Time', NULL),
(719, 'salary_benefits_type', 'Benefits Type', NULL),
(720, 'salary_benefits', 'Salary Benefits', NULL),
(721, 'beneficial_list', 'Benefit List', NULL),
(722, 'add_beneficial', 'Add Benefits', NULL),
(723, 'add_benefits', 'Add Benefits', NULL),
(724, 'benefits_list', 'Benefit List', NULL),
(725, 'benefit_type', 'Benefit Type', NULL),
(726, 'benefits', 'Benefit', NULL),
(727, 'manage_benefits', 'Manage Benefits', NULL),
(728, 'deduct', 'Deduct', NULL),
(729, 'add', 'Add', NULL),
(730, 'add_salary_setup', 'Add Salary Setup', NULL),
(731, 'manage_salary_setup', 'Manage Salary Setup', NULL),
(732, 'basic', 'Basic', NULL),
(733, 'salary_type', 'Salary Type', NULL),
(734, 'addition', 'Addition', NULL),
(735, 'gross_salary', 'Gross Salary', NULL),
(736, 'set', 'Set', NULL),
(737, 'salary_generate', 'Salary Generate', NULL),
(738, 'manage_salary_generate', 'Manage Salary Generate', NULL),
(739, 'sal_name', 'Salary Name', NULL),
(740, 'gdate', 'Generated Date', NULL),
(741, 'generate_by', 'Generated By', NULL),
(742, 'the_salary_of', 'The Salary of ', NULL),
(743, 'already_generated', ' Already Generated', NULL),
(744, 'salary_month', 'Salary Month', NULL),
(745, 'successfully_generated', 'Successfully Generated', NULL),
(746, 'salary_payment', 'Salary Payment', NULL),
(747, 'employee_salary_payment', 'Employee Salary Payment', NULL),
(748, 'total_salary', 'Total Salary', NULL),
(749, 'total_working_minutes', 'Total Working Hours', NULL),
(750, 'working_period', 'Working Period', NULL),
(751, 'paid_by', 'Paid By', NULL),
(752, 'pay_now', 'Pay Now ', NULL),
(753, 'confirm', 'Confirm', NULL),
(754, 'successfully_paid', 'Successfully Paid', NULL),
(755, 'add_incometax', 'Add Income Tax', NULL),
(756, 'setup_tax', 'Setup Tax', NULL),
(757, 'start_amount', 'Start Amount', NULL),
(758, 'end_amount', 'End Amount', NULL),
(759, 'tax_rate', 'Tax Rate', NULL),
(760, 'setup', 'Setup', NULL),
(761, 'manage_income_tax', 'Manage Income Tax', NULL),
(762, 'income_tax_updateform', 'Income tax Update form', NULL),
(763, 'positional_information', 'Positional Information', NULL),
(764, 'personal_information', 'Personal Information', NULL),
(765, 'timezone', 'Time Zone', NULL),
(766, 'sms', 'SMS', NULL),
(767, 'sms_configure', 'SMS Configure', NULL),
(768, 'url', 'URL', NULL),
(769, 'sender_id', 'Sender ID', NULL),
(770, 'api_key', 'Api Key', NULL),
(771, 'gui_pos', 'GUI POS', NULL),
(772, 'manage_service', 'Manage Service', NULL),
(773, 'service', 'Service', NULL),
(774, 'add_service', 'Add Service', NULL),
(775, 'service_edit', 'Service Edit', NULL),
(776, 'service_csv_upload', 'Service CSV Upload', NULL),
(777, 'service_name', 'Service Name', NULL),
(778, 'charge', 'Charge', NULL),
(779, 'service_invoice', 'Service Invoice', NULL),
(780, 'service_discount', 'Service Discount', NULL),
(781, 'hanging_over', 'ETD', NULL),
(782, 'service_details', 'Service Details', NULL),
(783, 'tax_settings', 'Tax Settings', NULL),
(784, 'default_value', 'Default Value', NULL),
(785, 'number_of_tax', 'Number of Tax', NULL),
(786, 'please_select_employee', 'Please Select Employee', NULL),
(787, 'manage_service_invoice', 'Manage Service Invoice', NULL),
(788, 'update_service_invoice', 'Update Service Invoice', NULL),
(789, 'customer_wise_tax_report', 'Customer Wise  Tax Report', NULL),
(790, 'service_id', 'Service Id', NULL),
(791, 'invoice_wise_tax_report', 'Invoice Wise Tax Report', NULL),
(792, 'reg_no', 'Reg No', NULL),
(793, 'update_now', 'Update Now', NULL),
(794, 'import', 'Import', NULL),
(795, 'add_expense_item', 'Add Expense Item', NULL),
(796, 'manage_expense_item', 'Manage Expense Item', NULL),
(797, 'add_expense', 'Add Expense', NULL),
(798, 'manage_expense', 'Manage Expense', NULL),
(799, 'expense_statement', 'Expense Statement', NULL),
(800, 'expense_type', 'Expense Type', NULL),
(801, 'expense_item_name', 'Expense Item Name', NULL),
(802, 'stock_purchase_price', 'Stock Purchase Price', NULL),
(803, 'purchase_price', 'Purchase Price', NULL),
(804, 'customer_advance', 'Customer Advance', NULL),
(805, 'advance_type', 'Advance Type', NULL),
(806, 'restore', 'Restore', NULL),
(807, 'supplier_advance', 'Supplier Advance', NULL),
(808, 'please_input_correct_invoice_no', 'Please Input Correct Invoice NO', NULL),
(809, 'backup', 'Back Up', NULL),
(810, 'app_setting', 'App Settings', NULL),
(811, 'local_server_url', 'Local Server Url', NULL),
(812, 'online_server_url', 'Online Server Url', NULL),
(813, 'connet_url', 'Connected Hotspot Ip/url', NULL),
(814, 'update_your_app_setting', 'Update Your App Setting', NULL),
(815, 'select_category', 'Select Category', NULL),
(816, 'mini_invoice', 'Mini Invoice', NULL),
(817, 'purchase_details', 'Purchase Details', NULL),
(818, 'disc', 'Dis %', NULL),
(819, 'serial', 'Serial', NULL),
(820, 'transaction_head', 'Transaction Head', NULL),
(821, 'transaction_type', 'Transaction Type', NULL),
(822, 'return_details', 'Return Details', NULL),
(823, 'return_to_customer', 'Return To Customer', NULL),
(824, 'sales_and_purchase_report_summary', 'Sales And Purchase Report Summary', NULL),
(825, 'add_person_officeloan', 'Add Person (Office Loan)', NULL),
(826, 'add_loan_officeloan', 'Add Loan (Office Loan)', NULL),
(827, 'add_payment_officeloan', 'Add Payment (Office Loan)', NULL),
(828, 'manage_loan_officeloan', 'Manage Loan (Office Loan)', NULL),
(829, 'add_person_personalloan', 'Add Person (Personal Loan)', NULL),
(830, 'add_loan_personalloan', 'Add Loan (Personal Loan)', NULL),
(831, 'add_payment_personalloan', 'Add Payment (Personal Loan)', NULL),
(832, 'manage_loan_personalloan', 'Manage Loan (Personal)', NULL),
(833, 'hrm_management', 'Human Resource', NULL),
(834, 'cash_adjustment', 'Cash Adjustment', NULL),
(835, 'adjustment_type', 'Adjustment Type', NULL),
(836, 'change', 'Change', NULL),
(837, 'sale_by', 'Sale By', NULL),
(838, 'salary_date', 'Salary Date', NULL),
(839, 'earnings', 'Earnings', NULL),
(840, 'total_addition', 'Total Addition', NULL),
(841, 'total_deduction', 'Total Deduction', NULL),
(842, 'net_salary', 'Net Salary', NULL),
(843, 'ref_number', 'Reference Number', NULL),
(844, 'name_of_bank', 'Name Of Bank', NULL),
(845, 'salary_slip', 'Salary Slip', NULL),
(846, 'basic_salary', 'Basic Salary', NULL),
(847, 'return_from_customer', 'Return From Customer', NULL),
(848, 'quotation', 'Quotation', NULL),
(849, 'add_quotation', 'Add Quotation', NULL),
(850, 'manage_quotation', 'Manage Quotation', NULL),
(851, 'terms', 'Terms', NULL),
(852, 'send_to_customer', 'Sent To Customer', NULL),
(853, 'quotation_no', 'Quotation No', NULL),
(854, 'quotation_date', 'Quotation Date', NULL),
(855, 'total_service_tax', 'Total Service Tax', NULL),
(856, 'totalservicedicount', 'Total Service Discount', NULL),
(857, 'item_total', 'Item Total', NULL),
(858, 'service_total', 'Service Total', NULL),
(859, 'quot_description', 'Quotation Description', NULL),
(860, 'sub_total', 'Sub Total', NULL),
(861, 'mail_setting', 'Mail Setting', NULL),
(862, 'mail_configuration', 'Mail Configuration', NULL),
(863, 'mail', 'Mail', NULL),
(864, 'protocol', 'Protocol', NULL),
(865, 'smtp_host', 'SMTP Host', NULL),
(866, 'smtp_port', 'SMTP Port', NULL),
(867, 'sender_mail', 'Sender Mail', NULL),
(868, 'mail_type', 'Mail Type', NULL),
(869, 'html', 'HTML', NULL),
(870, 'text', 'TEXT', NULL),
(871, 'expiry_date', 'Expiry Date', NULL),
(872, 'api_secret', 'Api Secret', NULL),
(873, 'please_config_your_mail_setting', NULL, NULL),
(874, 'quotation_successfully_added', 'Quotation Successfully Added', NULL),
(875, 'add_to_invoice', 'Add To Invoice', NULL),
(876, 'added_to_invoice', 'Added To Invoice', NULL),
(877, 'closing_balance', 'Closing Balance', NULL),
(878, 'contact', 'Contact', NULL),
(879, 'fax', 'Fax', NULL),
(880, 'state', 'State', NULL),
(881, 'discounts', 'Discount', NULL),
(882, 'address1', 'Address1', NULL),
(883, 'address2', 'Address2', NULL),
(884, 'receive', 'Receive', NULL),
(885, 'purchase_history', 'Purchase History', NULL),
(886, 'cash_payment', 'Cash Payment', NULL),
(887, 'bank_payment', 'Bank Payment', NULL),
(888, 'do_you_want_to_print', 'Do You Want to Print', NULL),
(889, 'yes', 'Yes', NULL),
(890, 'no', 'No', NULL),
(891, 'todays_sale', 'Today\'s Sales', NULL),
(892, 'or', 'OR', NULL),
(893, 'no_result_found', 'No Result Found', NULL),
(894, 'add_service_quotation', 'Add Service Quotation', NULL),
(895, 'add_to_invoice', 'Add To Invoice', NULL),
(896, 'item_quotation', 'Item Quotation', NULL),
(897, 'service_quotation', 'Service Quotation', NULL),
(898, 'return_from', 'Return Form', NULL),
(899, 'customer_return_list', 'Customer Return List', NULL),
(900, 'pdf', 'Pdf', NULL),
(901, 'note', 'Note', NULL),
(902, 'update_debit_voucher', 'Update Debit Voucher', NULL),
(903, 'update_credit_voucher', 'Update Credit voucher', NULL),
(904, 'on', 'On', NULL),
(905, '', '', NULL),
(906, 'total_expenses', 'Total Expense', NULL),
(907, 'already_exist', 'Already Exist', NULL),
(908, 'checked_out', 'Checked Out', NULL),
(909, 'update_salary_setup', 'Update Salary Setup', NULL),
(910, 'employee_signature', 'Employee Signature', NULL),
(911, 'payslip', 'Payslip', NULL),
(912, 'exsisting_role', 'Existing Role', NULL),
(913, 'filter', 'Filter', NULL),
(914, 'testinput', NULL, NULL),
(915, 'update_quotation', 'Update Quotation', NULL),
(916, 'quotation_successfully_updated', 'Quotation Successfully Updated', NULL),
(917, 'successfully_approved', 'Successfully Approved', NULL),
(918, 'expiry', 'Expiry', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mobile_number` bigint(15) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `role_id`, `username`, `user_id`, `mobile_number`, `password`, `status`, `created_by`, `updated_by`) VALUES
(1, 'Teacher', 4, 'admin1234', 1, 0, '123456', 0, '2020-10-27 00:00:00', '2021-04-16 00:00:00'),
(3, 'dfdsf', 5, 'admin@example.com', 6, 0, '1234', 0, '2020-10-27 00:00:00', '0000-00-00 00:00:00'),
(4, 'Test', 5, 'bookswale@bookswale.com', 9, 0, '123456', 0, '2020-10-27 00:00:00', '2021-04-27 00:00:00'),
(6, 'Tushar', 8, 'ipsa', 8, 0, '123', 0, '2020-11-01 00:00:00', '2021-04-23 00:00:00'),
(7, 'Dr. Sarvepalli Radhakrishnan', 8, 'ips', 7, 0, 'instructor1@instructor1.com', 0, '2020-11-01 00:00:00', '2021-02-20 00:00:00'),
(8, 'Teacher Demo', 8, 'admin1q234@example.com', 10, 0, '123456', 0, '2020-11-02 00:00:00', '2021-04-12 00:00:00'),
(9, 'Mr. Hitesh Aggarwal', 8, 'Skywart ', 11, 0, '123456', 0, '2020-11-09 00:00:00', '2021-04-12 00:00:00'),
(10, 'Tushar', 3, 'farhan', 8, 0, '123', 0, '2020-11-09 00:00:00', '2021-04-23 00:00:00'),
(11, 'Test', 3, 'bookswale@gmail.com', 9, 0, '123456', 0, '2020-11-19 00:00:00', '2021-04-27 00:00:00'),
(12, 'Teacher today', 9, 'tiwariabhi', 3, 0, '123456', 0, '2020-11-23 00:00:00', '2021-05-25 00:00:00'),
(14, 'god boy', 2, 'deepak', 4, 0, '121212', 0, '2020-11-30 00:00:00', '2021-04-12 00:00:00'),
(26, 'Indian Public School', 8, 'ips@ips.com', 23, 0, '123123', 0, '2020-12-19 00:00:00', '0000-00-00 00:00:00'),
(27, 'Jai Kishan', 8, 'ips@gmail.com', 24, 0, '12345', 0, '2020-12-19 00:00:00', '2021-05-23 00:00:00'),
(29, 'Deepak', 2, 'deepakk', 5, 0, '123123', 0, '2020-12-20 00:00:00', '0000-00-00 00:00:00'),
(30, 'god boy', 9, 'newvendor', 4, 0, '121212', 0, '2020-12-20 00:00:00', '2021-04-12 00:00:00'),
(31, 'Counceler', 8, 'testschool', 26, 0, '123456', 0, '2020-12-20 00:00:00', '2021-04-12 00:00:00'),
(32, 'Test1', 8, 'quiz12', 27, 0, '123456', 0, '2020-12-22 00:00:00', '2021-04-20 00:00:00'),
(33, 'Test School', 8, 'deepakk12121212', 28, 0, '123123', 0, '2020-12-22 00:00:00', '0000-00-00 00:00:00'),
(34, 'Test School', 8, '1234deepakk', 29, 0, '123123', 0, '2020-12-22 00:00:00', '0000-00-00 00:00:00'),
(35, 'Test 17-05-2021', 8, '1213456', 30, 0, '123', 0, '2020-12-22 00:00:00', '2021-05-17 00:00:00'),
(36, 'Test', 8, '1213456236', 31, 0, '123456', 0, '2020-12-22 00:00:00', '2021-05-11 00:00:00'),
(37, 'Yashraj Singh', 8, 'quiz1212', 32, 0, 'Mrt@0121', 0, '2020-12-22 00:00:00', '2021-05-20 00:00:00'),
(38, 'Test', 8, 'deepakk12356', 33, 0, '123456', 0, '2020-12-22 00:00:00', '2021-07-07 00:00:00'),
(39, 'Test School', 8, 'vvvvvvvv', 34, 0, '123123', 0, '2020-12-22 00:00:00', '0000-00-00 00:00:00'),
(40, 'Test', 8, 'quiz05', 35, 0, '123123', 0, '2020-12-22 00:00:00', '2021-07-06 00:00:00'),
(41, 'Deepanshu Verma', 8, 'aaaaa', 36, 0, '123123', 0, '2020-12-22 00:00:00', '2021-07-07 00:00:00'),
(42, 'Karan Joshi', 8, 'bbbbb', 37, 0, '123123', 0, '2020-12-22 00:00:00', '2021-07-08 00:00:00'),
(43, 'Sundar Singh', 8, 'ccccc', 38, 0, '123123', 0, '2020-12-22 00:00:00', '2021-07-06 00:00:00'),
(44, 'Tarun', 8, '11111', 39, 0, '11111', 0, '2020-12-23 00:00:00', '2021-07-07 00:00:00'),
(45, 'testtttvendor', 9, 'ksjfksj', 5, 0, '123123', 0, '2020-12-24 00:00:00', '0000-00-00 00:00:00'),
(46, 'testvendor1', 9, 'testvendor1', 6, 0, '123123', 0, '2020-12-24 00:00:00', '0000-00-00 00:00:00'),
(47, 'instructor1@instructor1.com', 9, 'vendor2', 7, 0, 'instructor1@instructor1.com', 0, '2020-12-24 00:00:00', '2021-02-20 00:00:00'),
(48, 'Teacher Demo', 3, 'stuabhi', 10, 0, '123456', 0, '2020-12-26 00:00:00', '2021-04-12 00:00:00'),
(49, 'Mr. Hitesh Aggarwal', 3, 'deepakuser', 11, 0, '123456', 0, '2020-12-26 00:00:00', '2021-04-12 00:00:00'),
(50, 'Abhishek Tiwari', 10, 'testuser1', 12, 0, '123123', 0, '2020-12-27 00:00:00', '0000-00-00 00:00:00'),
(51, 'neuser4', 10, 'newuser4', 13, 0, '123123', 0, '2020-12-27 00:00:00', '0000-00-00 00:00:00'),
(52, 'Rahul Jagwani', 10, 'test@test123.com', 14, 0, '123456', 0, '2020-12-27 00:00:00', '2021-04-06 00:00:00'),
(53, 'Tushar', 9, 'Testvendor', 8, 0, '123', 0, '2020-12-29 00:00:00', '2021-04-23 00:00:00'),
(54, 'qwerty', 10, 'qwerty@qwerty.com', 15, 0, 'qwerty@qwerty.com', 0, '2020-12-29 00:00:00', '0000-00-00 00:00:00'),
(55, 'instructor', 2, 'instructor@instructor.com', 6, 0, '123123', 0, '2020-12-29 00:00:00', '0000-00-00 00:00:00'),
(56, 'Test', 9, 'bookswale@bookswlale.com', 9, 0, '123456', 0, '2020-12-29 00:00:00', '2021-04-27 00:00:00'),
(57, 'Councellor Name', 10, 'rentpurchase@rentpurchase.com', 16, 0, 'MTIzNDU2', 0, '2020-12-29 00:00:00', '2021-04-10 00:00:00'),
(58, 'instructor1@instructor1.com', 2, 'instructor1@instructor1.com', 7, 0, 'instructor1@instructor1.com', 0, '2020-12-29 00:00:00', '2021-02-20 00:00:00'),
(59, 'Harsh', 10, 'test', 17, 0, 'test@123', 0, '2020-12-31 00:00:00', '0000-00-00 00:00:00'),
(60, 'testuser12', 10, 'testuser12', 18, 0, '123123', 0, '2021-01-01 00:00:00', '0000-00-00 00:00:00'),
(61, 'Teacher', 11, 'competiton', 1, 0, '123456', 0, '2021-01-07 00:00:00', '2021-04-16 00:00:00'),
(63, 'Abhishek Tiwari', 9, 'quiz@gmail.com', 15, 0, 'nbnvbn', 0, '2021-01-12 00:00:00', '0000-00-00 00:00:00'),
(64, 'Councellor Name', 9, 'school@gmail.com', 16, 0, 'MTIzNDU2', 0, '2021-01-12 00:00:00', '2021-04-10 00:00:00'),
(65, 'Test', 2, 'bookswale@bookswale.co', 9, 0, '123456', 0, '2021-01-12 00:00:00', '2021-04-27 00:00:00'),
(66, 'Teacher Demo', 2, 'rdpk864@gmail.com', 10, 0, '123456', 0, '2021-01-12 00:00:00', '2021-04-12 00:00:00'),
(67, 'Mr. Hitesh Aggarwal', 2, 'sony@gmail.com', 11, 0, '123456', 0, '2021-01-12 00:00:00', '2021-04-12 00:00:00'),
(68, 'Rohan kumar', 2, 'rohan@gmail.com', 12, 0, '123123', 0, '2021-01-13 00:00:00', '0000-00-00 00:00:00'),
(69, 'Rohan kumar', 2, 'werwerwer@qwerty.com', 13, 0, '123123', 0, '2021-01-13 00:00:00', '0000-00-00 00:00:00'),
(70, 'sbell', 2, 'sbell@sbell.com', 15, 0, 'sbell@sbell.com', 0, '2021-01-15 00:00:00', '0000-00-00 00:00:00'),
(71, 'Teacher today', 11, 'competition@competition.com', 3, 0, '', 0, '2021-01-16 00:00:00', '2021-05-25 00:00:00'),
(72, 'Councellor Name', 2, 'skywartgroup@sky.com', 16, 0, 'MTIzNDU2', 0, '2021-01-17 00:00:00', '2021-04-10 00:00:00'),
(74, 'tarak', 2, 'tarak@yopmail.com', 18, 0, 'password', 0, '2021-01-22 00:00:00', '0000-00-00 00:00:00'),
(75, 'Shreevats Joshi', 2, 'mehtay@yopmail.com', 19, 0, '123456', 0, '2021-01-22 00:00:00', '2021-04-06 00:00:00'),
(76, 'Dheeraj User', 10, 'dheerajkg893@gmail.com', 22, 0, '4715640897f768b291650fdcfe3dc676', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Teacher', 9, 'vender@gmail.com', 1, 0, 'Skywart#925', 0, '2021-02-09 00:00:00', '2021-04-16 00:00:00'),
(91, 'Mani', 2, 'akk10@gmail.com4', 22, 0, '123123', 0, '2021-02-09 00:00:00', '0000-00-00 00:00:00'),
(111, 'SUFIA SIDDIQUI', 10, 'skywartgroup@gmail.com', 0, 0, '11111', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'vivek kushwaha', 2, 'vkushwaha558@gmail.com', 12, 0, '123456', 0, '2021-03-24 00:00:00', '0000-00-00 00:00:00'),
(117, 'Tushar ', 2, 'tusharbishttussi@gmail.com', 13, 0, 'skywart@123', 0, '2021-03-26 00:00:00', '0000-00-00 00:00:00'),
(119, 'Varun Dhawan', 10, 'varundhawan@gmail.com', 0, 0, '123456', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Divyam', 10, 'divyam@gmail.com', 0, 0, 'skywart123', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Rahul Jagwani', 2, 'rahuljagwani@gmail.com', 14, 0, '123456', 0, '2021-03-31 00:00:00', '2021-04-06 00:00:00'),
(150, 'Rahul Khanna', 21, 'rahulkhanna@gmail.com', 25, 123456789, '123456', 0, '2021-04-05 00:00:00', '0000-00-00 00:00:00'),
(151, 'Shreevats Joshi', 2, 'shreevatsjoshi@gmail.com', 19, 123456780, '123456', 0, '2021-04-06 00:00:00', '2021-04-06 00:00:00'),
(152, 'Deepanshu Verma', 10, 'deepankarm10@gmail.com', 36, 6391263608, '123456', 0, '2021-04-06 00:00:00', '2021-07-07 00:00:00'),
(155, 'Karan Joshi', 10, 'shweta200995@gmail.com', 37, 9839677737, 'shweta1984', 0, '2021-04-13 00:00:00', '2021-07-08 00:00:00'),
(157, 'Teacher', 2, 'dheerajkg8931@gmail.com', 1, 8931833660, 'Skywart#863', 0, '2021-04-16 00:00:00', '2021-04-16 00:00:00'),
(158, 'Tarun', 10, 'user16042021@gmail.com', 39, 7896785675, '123456', 0, '2021-04-16 00:00:00', '2021-07-07 00:00:00'),
(159, 'Deepanshu Singh', 10, '1904@gmail.com', 40, 7896785675, 'Skywart#680', 0, '2021-04-19 00:00:00', '2021-07-07 00:00:00'),
(160, 'Test1', 21, '123987@gmail.com', 27, 7896785675, '123456', 0, '2021-04-20 00:00:00', '2021-04-20 00:00:00'),
(161, 'Vineet Bhaskar ', 2, 'tusharbisht199816@gmail.com', 2, 7985570425, 'Skywart#380', 0, '2021-04-21 00:00:00', '2021-05-04 00:00:00'),
(162, 'Sunny Singh', 10, 'user22@gmail.com', 41, 7896785675, '123456', 0, '2021-04-22 00:00:00', '2021-07-08 00:00:00'),
(163, 'Teacher today', 2, 'teacher@gmail.com', 3, 7896785675, 'a123', 0, '2021-04-22 00:00:00', '2021-05-25 00:00:00'),
(164, 'Gagan  Singh', 10, 'info.skywart@gmail.com', 42, 7985570425, '12345', 0, '2021-04-22 00:00:00', '2021-07-08 00:00:00'),
(165, 'Shekhar Pandey', 10, 'user2204@gmail.com', 43, 7896785675, '123456', 0, '2021-04-22 00:00:00', '2021-07-08 00:00:00'),
(166, 'yes', 10, 'u87@gmail.com', 44, 7896785675, '123', 0, '2021-04-22 00:00:00', '2021-04-22 00:00:00'),
(167, 'Tushar', 9, 'skywart.group@gmail.com', 8, 7985570425, '123', 0, '2021-04-23 00:00:00', '2021-04-23 00:00:00'),
(168, 'Sanjay Rawat ', 2, 'creative.skywart@gmail.com', 4, 7985570425, '1234', 0, '2021-04-25 00:00:00', '0000-00-00 00:00:00'),
(169, 'Dheeraj', 2, 'teacher123@gmail.com', 5, 7896785675, '12345', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(170, 'Shiv', 2, 'interns.skywart@gmail.com', 6, 7985570425, '1234', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(171, 'Test', 2, 'teacher2@gmail.com', 7, 7896785675, '123456', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(172, 'Dheeraj', 2, 'teacher3@gmail.com', 8, 7896785675, '123456', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(173, 'Test', 2, 'teacher4@gmail.com', 9, 7896785675, '123456', 0, '2021-04-27 00:00:00', '2021-04-27 00:00:00'),
(174, 'Vijay Khatri', 21, 'vijay@gmail.com', 28, 7985570425, '12345', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(175, 'Sanskar', 2, 'sanskar@gmail.com', 10, 688585858, '1234', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(176, 'Dheeraj', 21, 'teststudent@gmail.com', 29, 789678344, '123456', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(177, 'Test', 9, 'vendorRegister@gmail.com', 9, 7896111785675, '123456', 0, '2021-04-27 00:00:00', '2021-04-27 00:00:00'),
(178, 'Dheeraj', 2, 'teacher7@gmail.com', 11, 446785675, '123456', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(179, 'Dheeraj', 2, 'teacher6@gmail.com', 12, 789677777, '123456', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(180, 'Dheeraj', 2, 'teacher8@gmail.com', 13, 7896785567, '123456', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(181, 'Test', 2, 'teacher10@gmail.com', 14, 8931833662, '123456', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(182, 'Dheeraj', 2, 'teacher11@gmail.com', 15, 89318336603, '123456', 0, '2021-04-27 00:00:00', '0000-00-00 00:00:00'),
(183, 'Test', 2, 'teacher13@gmail.com', 16, 7896711122, '123456', 0, '2021-04-28 00:00:00', '0000-00-00 00:00:00'),
(184, 'Test', 2, 'teacher14@gmail.com', 17, 7896785222, '123', 0, '2021-04-28 00:00:00', '0000-00-00 00:00:00'),
(185, 'Test 17-05-2021', 21, 'counsellorRegister@gmail.com', 30, 789671111, '123', 0, '2021-04-28 00:00:00', '2021-05-17 00:00:00'),
(186, 'Divyam', 2, 'divyam123@gmail.com', 18, 9335530329, '12345', 0, '2021-04-29 00:00:00', '0000-00-00 00:00:00'),
(187, 'Yashraj ', 10, 'yash_raj17@yahoo.com', 45, 8630945594, 'Skywart#434', 0, '2021-04-30 00:00:00', '0000-00-00 00:00:00'),
(188, 'Shreevats Joshi', 9, 'shreevats@gmail.com', 10, 6555515121, '12345', 0, '2021-05-07 00:00:00', '0000-00-00 00:00:00'),
(189, 'Dheeraj', 9, '1vendor7042021@gmail.com', 11, 7896711112, '123456', 0, '2021-05-08 00:00:00', '0000-00-00 00:00:00'),
(190, 'Test', 21, 'Councellor11@gmail.com', 31, 111111111111, '123456', 0, '2021-05-11 00:00:00', '2021-05-11 00:00:00'),
(191, 'Dheeraj', 2, 'teacher11452021@gmail.com', 19, 789678567000, '123456', 0, '2021-05-13 00:00:00', '0000-00-00 00:00:00'),
(192, 'Naman Joshi', 2, 'naman@gmail.com', 20, 7985570428, '12345', 0, '2021-05-13 00:00:00', '2021-05-13 00:00:00'),
(193, 'Vishwas Roy', 2, 'Vishwas@gmail.com', 21, 933657894, '12345', 0, '2021-05-20 00:00:00', '2021-05-20 00:00:00'),
(194, 'Yashraj Singh', 21, 'ysingh1715@gmail.com', 32, 8630945597, 'Mrt@0121', 0, '2021-05-20 00:00:00', '2021-05-20 00:00:00'),
(195, 'ayush', 2, 'ayush0808@gmail.com', 22, 8081609705, '123456', 0, '2021-05-21 00:00:00', '0000-00-00 00:00:00'),
(196, 'Test', 21, 'counsellorRegister21052021@gmail.com', 33, 56789876546, '123456', 0, '2021-05-21 00:00:00', '2021-07-07 00:00:00'),
(197, 'Jai Tolani', 2, 'jaitolani@gmail.com', 23, 9336301731, 'skywart123', 0, '2021-05-23 00:00:00', '0000-00-00 00:00:00'),
(198, 'Nadeem', 10, 'test@gmail.com', 46, 9999999999, '12345678', 0, '2021-05-23 00:00:00', '2021-05-23 00:00:00'),
(199, 'deepanshu', 10, 'asdf@gmail.com', 47, 7845621235, '123456', 0, '2021-05-23 00:00:00', '0000-00-00 00:00:00'),
(201, 'Ahem Tolani', 21, 'ahemtolani@gmail.com', 34, 9336301732, 'skywart123', 0, '2021-05-23 00:00:00', '0000-00-00 00:00:00'),
(202, 'Farhan Qazi', 10, 'farhan9936@gmail.com', 48, 9936930509, '123123', 0, '2021-05-23 00:00:00', '0000-00-00 00:00:00'),
(203, 'Test', 2, 'teacher1@gmail.com', 33, 3456789, '123456', 0, '2021-06-25 00:00:00', '2021-07-07 00:00:00'),
(20000019, 'Jai Kishan', 2, 'jai@gmail.cor', 24, 54545451800, '123456', 0, '2021-05-23 00:00:00', '2021-05-23 00:00:00'),
(20000020, 'Test', 2, 'live@gmail.com', 34, 345678990, '123456', 0, '2021-07-01 00:00:00', '0000-00-00 00:00:00'),
(20000021, 'Test', 2, 'herodheeraj8931@gmail.com', 35, 17896785675, '123456', 0, '2021-07-03 00:00:00', '2021-07-06 00:00:00'),
(20000022, 'Raj User', 10, 'usertest@gmail.com', 56, 34567894353, '123456', 0, '2021-07-03 00:00:00', '2021-07-05 00:00:00'),
(20000023, 'Raj User', 10, 'test2@gmail.com', 57, 1113456789, '123456', 0, '2021-07-03 00:00:00', '0000-00-00 00:00:00'),
(20000024, 'Raj User', 10, 'test123@manager.com', 58, 345678911, '12', 0, '2021-07-03 00:00:00', '2021-07-06 00:00:00'),
(20000025, 'Deepanshu Verma', 2, 'deepanshu@gmail.com', 36, 99595656232, '12345', 0, '2021-07-03 00:00:00', '2021-07-07 00:00:00'),
(20000026, 'Karan Joshi', 10, 'xyz@gmail.com', 59, 789456123, 'password', 0, '2021-07-04 00:00:00', '0000-00-00 00:00:00'),
(20000027, 'Raj Sahu ', 10, 'raj@gmail.com', 60, 545451212, '1234', 0, '2021-07-04 00:00:00', '0000-00-00 00:00:00'),
(20000028, 'Karan Joshi', 2, 'abc@gmail.com', 37, 9335656987, '123456789', 0, '2021-07-05 00:00:00', '2021-07-08 00:00:00'),
(20000029, 'Sundar Singh', 2, 'sundar@gmail.com', 38, 9335530378, '123', 0, '2021-07-05 00:00:00', '2021-07-06 00:00:00'),
(20000030, 'Tushar Bisht ', 10, 'tush@gmail.com', 61, 5555555555, '1234', 0, '2021-07-06 00:00:00', '0000-00-00 00:00:00'),
(20000031, 'Tarun', 2, 'tarun@gmail.com', 39, 9335530327, '1234', 0, '2021-07-07 00:00:00', '2021-07-07 00:00:00'),
(20000032, 'Deepanshu Singh', 2, 'deepanshu5@gmail.com', 40, 9889746545, '12345', 0, '2021-07-07 00:00:00', '2021-07-07 00:00:00'),
(20000033, 'Sunny Singh', 2, 'sunny@gmail.com', 41, 5455515151515, '12345', 0, '2021-07-08 00:00:00', '2021-07-08 00:00:00'),
(20000034, 'Gagan  Singh', 2, 'gagan@gmail.com', 42, 9335530381, '12345', 0, '2021-07-08 00:00:00', '2021-07-08 00:00:00'),
(20000035, 'Shekhar Pandey', 2, 'shekhar@gmail.com', 43, 7955801425, '12345', 0, '2021-07-08 00:00:00', '2021-07-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id` int(11) NOT NULL,
  `management_name` varchar(100) NOT NULL,
  `management_description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`id`, `management_name`, `management_description`, `image`, `status`, `created_by`, `updated_by`) VALUES
(1, 'Administration Dashboard', 'Administration Dashboard', 'http://scsy.in/school/my-assets/image/management/5b38aa97078684862b86267a139342e9.png', 0, '2020-11-25 00:00:00', '2021-02-01 00:00:00'),
(2, 'Teacher\'s Dashboard', 'Teacher\'s Dashboard', 'http://scsy.in/school/my-assets/image/management/2b375007198091aefca9eccf2cb137b1.png', 0, '2020-11-25 00:00:00', '2021-02-01 00:00:00'),
(3, 'Student\'s Dashboard', 'Student\'s Dashboard', 'http://scsy.in/school/my-assets/image/management/e2765a738fd45e472b1e4f17143144f7.png', 0, '2020-11-25 00:00:00', '2021-02-01 00:00:00'),
(4, 'Librarian Dashboard', 'Librarian Dashboard', 'http://scsy.in/school/./my-assets/image/management/3837dcc79d2cfb6b1e81006e72c054f8.png', 0, '2021-02-01 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'invoice', NULL, NULL, NULL, 1),
(2, 'customer', NULL, NULL, NULL, 1),
(3, 'product', NULL, NULL, NULL, 1),
(4, 'supplier', NULL, NULL, NULL, 1),
(5, 'purchase', NULL, NULL, NULL, 1),
(6, 'stock', NULL, NULL, NULL, 1),
(7, 'return', NULL, NULL, NULL, 1),
(8, 'report', NULL, NULL, NULL, 1),
(9, 'accounts', NULL, NULL, NULL, 1),
(10, 'bank', NULL, NULL, NULL, 1),
(11, 'tax', NULL, NULL, NULL, 1),
(12, 'hrm_management', NULL, NULL, NULL, 1),
(13, 'service', NULL, NULL, NULL, 1),
(14, 'commission', NULL, NULL, NULL, 1),
(15, 'setting', NULL, NULL, NULL, 1),
(16, 'quotation', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `mode` int(11) NOT NULL,
  `subjecttype` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `modules_title` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `modules_description` longtext NOT NULL,
  `modules_sub_title` varchar(200) NOT NULL,
  `modules_time` varchar(100) NOT NULL,
  `modules_end_time` varchar(100) NOT NULL,
  `modules_start_Date` varchar(100) NOT NULL,
  `modules_end_date` varchar(100) NOT NULL,
  `modules_lession` varchar(100) NOT NULL,
  `year_of_exp` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `requirements` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `gmeetlink` text NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `category_id`, `mode`, `subjecttype`, `login_id`, `modules_title`, `duration`, `modules_description`, `modules_sub_title`, `modules_time`, `modules_end_time`, `modules_start_Date`, `modules_end_date`, `modules_lession`, `year_of_exp`, `address`, `requirements`, `image`, `price`, `status`, `gmeetlink`, `created_by`, `updated_by`) VALUES
(16, 3, 0, 3, 15, 'PHP CODING LANGUAGE', '3 to 5 months', 'PHP for Beginners: learn everything you need to become a professional PHP developer with practical exercises & projects.\r\n', 'Basic', '10:00', '', '', '', '5', '10 Yrs. Of Experience', 'Masjid wali gali, New Ashok Nagar', 'You will learn to create a (CMS) Content Management System like WordPress, Drupal or Joomla\r\nYou will learn how to use Databases\r\nYou will learn MySQL', 'http://skywart.com/./my-assets/image/modules/0069281431fcc377146cdb72bceb6ded.png', 'Rs.4000/month', 2, '', '2021-01-13 00:00:00', '2021-02-01 00:00:00'),
(20, 4, 1, 1, 16, 'STOCK MARKET', '6 months', 'nil', 'Learn tips and tricks of stock market', '10:57', '10:57', '2021-09-09', '2022-12-12', 'learn the tips and tricks ', '2022', 'jankipuram', 'nil', 'http://skywart.com/./my-assets/image/modules/92a2e1b735a9b2702b9a2f940cb9d02d.jpg', '1000', 1, '', '2021-01-17 00:00:00', '2021-02-01 00:00:00'),
(23, 5, 1, 3, 7, 'CBSE', '9 Months', 'Modules Description', 'SubTitle', '17:00', '18:00', '2021-02-08', '2021-09-30', 'I  NUMBER SYSTEMS  06  II  ALGEBRA  20  III  COORDINATE GEOMETRY  06  IV  GEOMETRY  15  V  TRIGONOME', '0year', 'None', 'CBSE revised the syllabus of Class 10 Maths subject for the current academic year (2020-2021). The Board reduced the Class 10 Maths Syllabus to compensate for the loss of studies under the effect of COVID-19 lockdown. Students must check this updated syllabus while studying Mathematics and preparing for their board exam. Like the previous academic session, Board Exam 2021 will again offer two versions of the Mathematics paper to students, one easy and the other of the standard level. However, the syllabus for both types of papers remains common. So, all students are advised to refer to the latest syllabus while they prepare for their school and board examinations.', 'http://skywart.com/./my-assets/image/modules/464720e7a454b4ae934ed0e0545a043b.png', 'Rs.2000/month', 1, '', '2021-01-30 00:00:00', '2021-02-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modules_category`
--

CREATE TABLE `modules_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_by` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_category`
--

INSERT INTO `modules_category` (`id`, `category_name`, `image`, `created_by`, `status`, `updated_by`) VALUES
(3, 'Subjective Courses', 'https://skywart.com/my-assets/image/modules/bb48b402ff466d6f3018053b05c1f431.png', '2020-11-17 00:00:00', 0, '2021-06-17 00:00:00'),
(4, 'Skill Development Courses', 'https://skywart.com/my-assets/image/modules/e015d10e3b51053afc176849deeb1739.png', '2020-11-17 00:00:00', 0, '2021-06-17 00:00:00'),
(5, 'Industry Grooming Courses', 'https://skywart.com/my-assets/image/modules/d90e328d601c5b2473e3fc6b01929767.png', '2021-02-02 00:00:00', 0, '2021-06-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modules_learn`
--

CREATE TABLE `modules_learn` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `modules_learn` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_learn`
--

INSERT INTO `modules_learn` (`id`, `category_id`, `module_id`, `modules_learn`, `status`, `created_by`) VALUES
(1, 2, 42, 'vvvvvvvvv', 0, 2020),
(2, 2, 43, 'qqqqqqqqq', 0, 2020),
(3, 2, 43, 'wwwwwwwwwww', 0, 2020),
(4, 2, 43, 'qwqqewqeeeeeeeeeeeeeeeeesdasds', 0, 2020),
(5, 2, 43, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrr', 0, 2020),
(6, 2, 43, 'ggggggggggg', 0, 2020),
(7, 2, 45, '6666666666666666666', 0, 20),
(8, 2, 8, 'dsfds', 0, 20),
(9, 3, 9, 'fdjgbjkdfgfd', 0, 20),
(10, 2, 10, 'no prerequisite', 0, 20),
(11, 2, 11, 'offlineby-instructor', 0, 20),
(12, 2, 12, 'courseby-instructor1', 0, 20),
(13, 2, 13, 'offline-test-instructor', 0, 21),
(14, 2, 14, 'Module 1', 0, 21),
(15, 2, 15, 'Who this course is for: Beginners Enthusiasts Published 9/2020', 0, 21),
(16, 2, 16, 'PHP for Beginners: learn everything you need to become a professional PHP developer with practical e', 0, 21),
(17, 2, 17, 'During the implementation stage, it’s necessary to put into use activities related to building, test', 0, 21),
(18, 3, 18, 't', 0, 21),
(19, 3, 19, 'nil', 0, 21),
(20, 2, 20, 'nil', 0, 21),
(21, 2, 21, '10', 0, 21),
(22, 2, 22, 'Modules Learn', 0, 21),
(23, 2, 23, 'Modules Learn', 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `grand_total` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive',
  `payment_orderid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `waybill` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delhivery_status` int(11) DEFAULT NULL,
  `order_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txnid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `paymentmode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `txndate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `respcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `respmsg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gatewayname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `banktxnid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bankname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `checksumhash` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `grand_total`, `created`, `modified`, `status`, `payment_orderid`, `waybill`, `delhivery_status`, `order_type`, `txnid`, `paymentmode`, `currency`, `txndate`, `payment_status`, `respcode`, `respmsg`, `gatewayname`, `banktxnid`, `bankname`, `checksumhash`) VALUES
(80, 183, 4222.80, '2021-04-20 11:22:04', '2021-04-20 11:22:04', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(81, 184, 1173.00, '2021-04-20 11:23:30', '2021-04-20 11:23:30', '1', 'Skywart2104201123302', NULL, NULL, NULL, '20210420111212800110', 'NB', 'INR', '2021-04-20 11:23:31.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '11319845311', 'PNB', 'DkHI+UqYjqanli8anCBAOflYMQ4i+0A0d+EkbgP9ve5Xipvn50XDexosf7R3'),
(82, 185, 1389.24, '2021-04-22 15:53:17', '2021-04-22 15:53:17', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(83, 186, 1389.24, '2021-04-23 13:06:15', '2021-04-23 13:06:15', '1', 'Skywart2104230106158', NULL, NULL, NULL, '20210423111212800110', 'NB', 'INR', '2021-04-23 13:06:16.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '19438017674', 'SBI', 'mwdWm0MfNQq7IaWQO5fzbNgHZIu8mvbquZYj5XFJe6SGsS1LZTyK3R6NLApr'),
(84, 187, 204.00, '2021-04-30 18:29:41', '2021-04-30 18:29:41', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(85, 188, 204.00, '2021-04-30 18:29:43', '2021-04-30 18:29:43', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(86, 189, 1377.00, '2021-04-30 18:32:23', '2021-04-30 18:32:23', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(87, 190, 204.00, '2021-04-30 18:40:43', '2021-04-30 18:40:43', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(88, 191, 204.00, '2021-04-30 18:42:49', '2021-04-30 18:42:49', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(89, 192, 204.00, '2021-04-30 19:28:36', '2021-04-30 19:28:36', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(90, 193, 1505.01, '2021-04-30 20:55:56', '2021-04-30 20:55:56', '1', 'Skywart2104300855569', NULL, NULL, NULL, '20210430111212800110', 'NB', 'INR', '2021-04-30 20:55:57.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '17262703339', 'ICICI', 'kO5yLdC1c+N6RZfxwk+VDR8d4SkLD9NBu6eNYWvKHMwz/Zve2/PN3YHOVbi3'),
(91, 194, 1407.60, '2021-04-30 22:47:54', '2021-04-30 22:47:54', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(92, 195, 1407.60, '2021-04-30 22:48:52', '2021-04-30 22:48:52', '1', 'Skywart2104301048529', NULL, NULL, NULL, '20210430111212800110', '', 'INR', '', 'TXN_FAILURE', '141', 'User has not complet', '', '', '', 'IChy7Ay9VWEq2QsXx8efFgv6/OfKAUb8zrMSPHYsj8VWK0Wu49HkvntCjB5a'),
(93, 196, 694.62, '2021-04-30 22:55:19', '2021-04-30 22:55:19', '1', 'Skywart2104301055198', NULL, NULL, NULL, '20210430111212800110', '', 'INR', '', 'TXN_FAILURE', '141', 'User has not complet', '', '', '', '+5DoaQwinyQqecGfbKSZdnrGo7w3jlNQ42pVbMKmXOwqLfWkKoLmVgbYlyJl'),
(94, 197, 1377.00, '2021-05-01 11:15:01', '2021-05-01 11:15:01', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(95, 198, 1377.00, '2021-05-01 11:17:49', '2021-05-01 11:17:49', '1', 'Skywart2105011117494', NULL, NULL, NULL, '20210501111212800110', '', 'INR', '', 'TXN_FAILURE', '141', 'User has not complet', '', '', '', '6VjHRHOvxrSsXZOe5ChjA9+s4dt2VAFTPL8wKQ1khc35cjVWXZoRPs0hdCHu'),
(96, 199, 306.00, '2021-05-01 14:11:22', '2021-05-01 14:11:22', '1', 'Skywart2105010211221', NULL, NULL, NULL, '20210501111212800110', 'NB', 'INR', '2021-05-01 14:11:25.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '15109618414', 'PNB', 'VagNjB8FpzgjeZh6L4Xowu/4ZZj4faIU7Gh5z0GykkxNgByHpbok+5SUEvFD'),
(97, 200, 1389.24, '2021-05-02 14:21:02', '2021-05-02 14:21:02', '1', 'Skywart2105020221028', NULL, NULL, NULL, '20210502111212800110', 'NB', 'INR', '2021-05-02 14:21:04.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12178244177', 'AXIS', 'gquOtMtvH4/zdHQn40mtWJyhtSfnM0616SdNtZAtRtJGlTQY7oCTzYIZ8SsZ'),
(98, 201, 1148.00, '2021-05-03 22:27:13', '2021-05-03 22:27:13', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(99, 202, 1148.00, '2021-05-03 22:28:09', '2021-05-03 22:28:09', '1', 'Skywart2105031028092', NULL, NULL, NULL, '20210503111212800110', 'NB', 'INR', '2021-05-03 22:28:11.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '10076819692', 'AXIS', 'KkrxQ7F3MbTS4nnAuJ2QXOlOxd0zKIk2NuK6ERMJFmDIeEW2b1sVE9HDQa+X'),
(100, 203, 96.90, '2021-05-03 23:12:49', '2021-05-03 23:12:49', '1', 'Skywart2105031112491', NULL, NULL, NULL, '20210503111212800110', 'NB', 'INR', '2021-05-03 23:12:50.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '17743342331', 'AXIS', '6uO385PxDIK5LIcCInBxr4UDxNMuim2G0dd4emHOD874XTEPJ9R1JUbCZZ3W'),
(101, 204, 1173.00, '2021-05-05 09:25:09', '2021-05-05 09:25:09', '1', 'Skywart2105050925091', NULL, NULL, NULL, '20210505111212800110', 'NB', 'INR', '2021-05-05 09:25:11.', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '10443092807', 'BHARAT', 'B1w1t3hg+WXhSgfocAh8x87GmRHhWzrnXTR+LcocvBYcOgSqt6reFXW0fj1x'),
(102, 205, 96.90, '2021-05-06 21:56:18', '2021-05-06 21:56:18', '1', 'Skywart2105060956189', NULL, NULL, NULL, '20210506111212800110', 'NB', 'INR', '2021-05-06 21:56:20.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '14975388169', 'PNB', 'Cssp2PhJsICOOeHepqYT8PEocJ4GzQaPnP4FWjL+1Mt41X8/z3l7M+Mtr7ML'),
(103, 206, 204.00, '2021-05-06 22:00:44', '2021-05-06 22:00:44', '1', 'Skywart2105061000445', NULL, NULL, NULL, '20210506111212800110', 'NB', 'INR', '2021-05-06 22:00:45.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '11486155483', 'AXIS', 'tZGLTFR3626fLn+H5FZXASZntP2b8DQ2SasMoNXf++Cs5NQMY3BQrsu973J4'),
(104, 207, 0.00, '2021-05-07 11:11:24', '2021-05-07 11:11:24', '1', 'Skywart2105071111249', NULL, NULL, NULL, '', '', 'INR', '', 'TXN_FAILURE', '330', 'Invalid checksum', '', '', '', ''),
(105, 208, 1173.00, '2021-05-07 11:16:05', '2021-05-07 11:16:05', '1', 'Skywart2105071116053', NULL, NULL, NULL, '20210507111212800110', 'NB', 'INR', '2021-05-07 11:16:06.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '10050443554', 'PNB', '8wlyW9cvybA6V4MbUqLqFQlSJZT9LuQzgHCFjfR3gFMd7eummkgpU9iRwV6N'),
(106, 209, 397.80, '2021-05-07 15:09:24', '2021-05-07 15:09:24', '1', 'Skywart2105070309256', NULL, NULL, NULL, '20210507111212800110', 'NB', 'INR', '2021-05-07 15:09:26.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '17889428669', 'ICICI', 'fHnk6P7QVOVPWvjBedbu8u4PSvdQWCoUZVAVs3Ks/SQBeIabG0bddEWRmFrv'),
(107, 210, 1377.00, '2021-05-07 15:53:34', '2021-05-07 15:53:34', '1', 'Skywart2105070353348', NULL, NULL, NULL, '20210507111212800110', 'NB', 'INR', '2021-05-07 15:53:35.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '16656087755', 'AXIS', 'OXhyoRluUQoyvzk5cvkH9wcsMD1AeGnzgmrkPWG5gWNb3QiD6x/eP+WrOzpe'),
(108, 211, 204.00, '2021-05-07 17:42:01', '2021-05-07 17:42:01', '1', 'Skywart2105070542013', NULL, NULL, NULL, '20210507111212800110', 'NB', 'INR', '2021-05-07 17:42:06.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '13028034065', 'ICICI', 'l0mPi4dBK3oKPR2G2AkAsjYpJh+Lc7GZwPFVDJZLr/WO+MR3fi8J0poDv38c'),
(109, 212, 2894.25, '2021-05-07 18:28:21', '2021-05-07 18:28:21', '1', 'Skywart2105070628213', NULL, NULL, NULL, '20210507111212800110', 'NB', 'INR', '2021-05-07 18:28:23.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '10621023574', 'AXIS', '25nVPx23OS+3/0oEpI+NlcSzNA3GGeEihBxCw4r/3vWua+PA+Yct2PPFwjZg'),
(110, 213, 861.90, '2021-05-08 07:54:12', '2021-05-08 07:54:12', '1', 'Skywart2105080754121', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 07:54:15.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '12415391127', 'PNB', 'pYYgxFNP9NM4fpG0tpPRB1gyM34Cdu76UWxprCWMHg+XknHaoISaaQUhcrrS'),
(111, 214, 306.00, '2021-05-08 07:56:25', '2021-05-08 07:56:25', '1', 'Skywart2105080756251', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 07:56:26.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '14791756256', 'HDFC', 'ofDJxoUMOMAesQqHRD+d771YO9c4FqIy7vsPY4RowO/fQ028blY3aJ7cuZRE'),
(112, 215, 397.80, '2021-05-08 08:00:44', '2021-05-08 08:00:44', '1', 'Skywart2105080800443', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:00:45.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '10623163092', 'ICICI', 'OcMJx8No3BXLl4Iqz7ZcJzJCCd6ZMZS1D35JUPtZ37ksCeT+8heY6TwDjUfG'),
(113, 216, 861.90, '2021-05-08 08:02:05', '2021-05-08 08:02:05', '1', 'Skywart2105080802051', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:02:06.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '13376991377', 'HDFC', 'f6sGRCrrPBgvTA8CUTsTFl1xU6Rh4jWXb+GmG1fcpemW6uDjDPXuYGgk3Zge'),
(114, 217, 1065.90, '2021-05-08 08:03:24', '2021-05-08 08:03:24', '1', 'Skywart2105080803241', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:03:25.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '14050071202', 'PNB', 'rAEr3OHlt8aXGjrm2YOx1uXTs7poeMO8k+p2r7AV46M2/YFocpL3DyzzjIee'),
(115, 218, 306.00, '2021-05-08 08:05:17', '2021-05-08 08:05:17', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(116, 219, 306.00, '2021-05-08 08:06:09', '2021-05-08 08:06:09', '1', 'Skywart2105080806091', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:06:10.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '18503085364', 'ICICI', 'JZhMuKffmEEe5WReGPm0f10Zt1L9QNYXZiPl8FlU+ZA15TzStBKpJtPRT7j3'),
(117, 220, 397.80, '2021-05-08 08:07:26', '2021-05-08 08:07:26', '1', 'Skywart2105080807263', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:07:26.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '11731744738', 'HDFC', 'iZ1GS7zBl86r2ORxI544i1p11Tpe1RERf1GUhF0AXBJ6EVbLOAPraxAuDTzb'),
(118, 221, 805.80, '2021-05-08 08:08:12', '2021-05-08 08:08:12', '1', 'Skywart2105080808126', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:08:13.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '12887178014', 'PNB', 'Eej6twTeeZ8qPyzWrq+Yccl+SOYBGvMqLc+cVJa0zv8q+vQExKLwe7Mv4OlL'),
(119, 222, 347.31, '2021-05-08 08:15:09', '2021-05-08 08:15:09', '1', 'Skywart2105080815095', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:15:11.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '14773249541', 'PNB', 'IOGWGQ85TQDBsf7dr93KZGjA9Cp8y4IQTioJec50B5PLr+21jweqYbgT5AKV'),
(120, 223, 347.31, '2021-05-08 08:16:02', '2021-05-08 08:16:02', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(121, 224, 347.31, '2021-05-08 08:16:02', '2021-05-08 08:16:02', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(122, 225, 347.31, '2021-05-08 08:17:10', '2021-05-08 08:17:10', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(123, 226, 347.31, '2021-05-08 08:20:30', '2021-05-08 08:20:30', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(124, 227, 347.31, '2021-05-08 08:22:44', '2021-05-08 08:22:44', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(125, 228, 347.31, '2021-05-08 08:23:38', '2021-05-08 08:23:38', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(126, 229, 347.31, '2021-05-08 08:28:39', '2021-05-08 08:28:39', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(127, 230, 347.31, '2021-05-08 08:29:36', '2021-05-08 08:29:36', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(128, 231, 347.31, '2021-05-08 08:31:47', '2021-05-08 08:31:47', '1', 'Skywart2105080831472', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:31:48.', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '10104183552', 'BHARAT', '46ANUhJCB8qrPalcc4a5g0k5ZHAqzWOe439s40Lhystm/n5Taql0HD9j5NZx'),
(129, 232, 347.31, '2021-05-08 08:32:17', '2021-05-08 08:32:17', '1', 'Skywart2105080832171', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:32:18.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '16841339865', 'PNB', 'UsZ2gQm+OSjcS2c/ryEnvl4BzUVGN70rRS7FxcYLmUwyc3IiOxa2Y8UT0ePP'),
(130, 233, 347.31, '2021-05-08 08:33:38', '2021-05-08 08:33:38', '1', 'Skywart2105080833381', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:33:39.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '18413513019', 'HDFC', 'oa4N0nMtTkprTQ+q5kWBBr+L9VDAdBrUNM2aytwzd0+9sQ8ufd92pNEoW/u9'),
(131, 234, 347.31, '2021-05-08 08:37:33', '2021-05-08 08:37:33', '1', 'Skywart2105080837331', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:37:34.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '14119577069', 'PNB', '25+33G8EWSp1/YhpUMFcbp3/o0yjyv1iGzptUSA2nogwmwY5SEoV7+cu5S5K'),
(132, 235, 347.31, '2021-05-08 08:40:21', '2021-05-08 08:40:21', '1', 'Skywart2105080840217', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:40:21.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '10543805659', 'AXIS', 'MrZCz2k3oY7XSVAqS+VeOicQqhjXW7UjjfGrAzxqoXssQ715oculTICGq/+5'),
(133, 236, 347.31, '2021-05-08 08:49:39', '2021-05-08 08:49:39', '1', 'Skywart2105080849391', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:49:41.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '18266806228', 'AXIS', 'TOC0lw0xvZkN9uDTnexymdJnv59jLlusOmx1GcV0WMcRlMsedXl0rnKhtNiJ'),
(134, 237, 347.31, '2021-05-08 08:50:57', '2021-05-08 08:50:57', '1', 'Skywart2105080850578', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:51:00.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '11427154744', 'ICICI', 'EwJw03xgqHWXnQoNB4B11idM2elGqWOgWAlN5XCVNDq1El2dKTOrW69TESh9'),
(135, 238, 347.31, '2021-05-08 08:58:19', '2021-05-08 08:58:19', '1', 'Skywart2105080858198', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:58:21.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '17757847641', 'AXIS', 'VnO/3BrJUWAAOLCfpSnFyqO1g7xHGjg8YgY75QCsexp/5HljnLcXzbhQX4Ha'),
(136, 239, 347.31, '2021-05-08 08:58:47', '2021-05-08 08:58:47', '1', 'Skywart2105080858479', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 08:58:47.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '14369661830', 'PNB', 'aO1+2lNXY7rjcoI5EHki2aSmrjkjDgo7ZgMEmj31sk5rdNIazK59S74e6w1c'),
(137, 240, 347.31, '2021-05-08 09:16:29', '2021-05-08 09:16:29', '1', 'Skywart2105080916299', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:16:30.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '10415882366', 'PNB', 'x9KHCJoP2ISIWBRCeNZ8NNhQRhguvGX09coMCACPqAwPTvpoDuxdbyKjmd4m'),
(138, 241, 347.31, '2021-05-08 09:18:50', '2021-05-08 09:18:50', '1', 'Skywart2105080918503', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:18:50.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '19802562061', 'PNB', 'K876Pv6/8ZJGrmw8RuTT9MHWn8xFtdmKVX+VHsc1w5rBraDySQKXL2LIZwvC'),
(139, 242, 347.31, '2021-05-08 09:20:49', '2021-05-08 09:20:49', '1', 'Skywart2105080920491', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:20:50.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '15660185342', 'PNB', 'TWxMZJSLGrU6elGGMvkOeZyNMqlI9dYX71y2vUtxWcb1obJj/BjdLEfQFOM5'),
(140, 243, 1041.93, '2021-05-08 09:23:06', '2021-05-08 09:23:06', '1', 'Skywart2105080923061', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:23:06.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '11750593404', 'HDFC', 'Q3HAXcGsbnFRP5tSDUgnl7N6EjCXEaQrEKPvQhvb+9qzrZFpJgEbCTsZhjZx'),
(141, 244, 694.62, '2021-05-08 09:24:04', '2021-05-08 09:24:04', '1', 'Skywart2105080924041', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:24:05.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '17083893353', 'PNB', '8nSc7shpJoJyeQIvE3eUsetAilOjD1vI96dLITMKY5zPGqMaKWN+rEfv4KQ5'),
(142, 245, 694.62, '2021-05-08 09:25:36', '2021-05-08 09:25:36', '1', 'Skywart2105080925364', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:25:38.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '11141135298', 'HDFC', 'YH6E1sD7Pu7NUs4UOEe8mnSgRqM1wqVPX2f6nJHebvez3K8YOcDYGF50ALy3'),
(143, 246, 347.31, '2021-05-08 09:28:16', '2021-05-08 09:28:16', '1', 'Skywart2105080928169', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:28:17.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '13348986701', 'ICICI', 'w94cIUDC6xtT1xChDAKaCARuL/q/WWNDkfLjWjYDpxI5o6YEvVG9dp/Pcbbb'),
(144, 247, 347.31, '2021-05-08 09:31:34', '2021-05-08 09:31:34', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(145, 248, 347.31, '2021-05-08 09:34:07', '2021-05-08 09:34:07', '1', 'Skywart2105080934071', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:34:08.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '14077820773', 'PNB', '9rYG8FrgUHxkt+5CjeGFHGmg9hKxrkzjyOHxLpQl/80zOJ10hU/QiMVW8waJ'),
(146, 249, 347.31, '2021-05-08 09:35:56', '2021-05-08 09:35:56', '1', 'Skywart2105080935561', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:35:57.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '19098667157', 'PNB', 'FBAxbwNQWkHHRduCygDEPEW7S3G1BtyLfG0b0hu/w+KLujLBtlvL24qYhFSL'),
(147, 250, 347.31, '2021-05-08 09:51:46', '2021-05-08 09:51:46', '1', 'Skywart2105080951469', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 09:51:47.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '18935394242', 'PNB', 'Uhrmt4fEeA4wHcPkhOL0HHUg+2GTGis+uSLzgLxkrASU2qhxXjEGLl+TG4QM'),
(148, 251, 347.31, '2021-05-08 10:00:53', '2021-05-08 10:00:53', '1', 'Skywart2105081000531', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 10:00:54.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12663015237', 'AXIS', 'hQAEISiqTY6yyvgdpLVD9AogxyjZC5ukewsYC/xvC+t3TDBbJfjV7B6rders'),
(149, 252, 347.31, '2021-05-08 10:02:52', '2021-05-08 10:02:52', '1', 'Skywart2105081002521', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 10:02:52.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12764314824', 'AXIS', 'B09eNyGqMj0/EBuqZESqzc2WitOu68wDpJpTJY23U0s4l0c0oLpFccafA/ii'),
(150, 253, 347.31, '2021-05-08 10:05:06', '2021-05-08 10:05:06', '1', 'Skywart2105081005066', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 10:05:07.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '10385209949', 'HDFC', 'smCvhxWhOCiYCHZt+Ly3apCGiKshAMnRtLH1bzD/qW2OYyAIfa9D3n5i46K+'),
(151, 254, 347.31, '2021-05-08 10:06:08', '2021-05-08 10:06:08', '1', 'Skywart2105081006081', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 10:06:08.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12195691720', 'ICICI', 'hiaLeKhz0zr+yE4qGo5POzJsTeVllMpqS4jFrmmoGP3opzHHbdyETw4KYJ31'),
(152, 255, 347.31, '2021-05-08 10:22:28', '2021-05-08 10:22:28', '1', 'Skywart2105081022288', NULL, NULL, NULL, '20210508111212800110', 'NB', 'INR', '2021-05-08 10:22:29.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '17244766884', 'HDFC', '1tlqD4S+dxWN9Aog/Htwll6kguITsl1Z3ghZefisTs8i1yQLrNWhqpwVvTjK'),
(153, 256, 1750.00, '2021-05-10 09:12:03', '2021-05-10 09:12:03', '1', 'Skywart2105100912039', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:12:04.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12865551476', 'ICICI', 'Yh1GgrrVGUiIL5PwNcFM1+BlayGDwNxPaOnu3cmTFULmBZLoZfflcXt6vgOA'),
(154, 257, 1750.00, '2021-05-10 09:13:20', '2021-05-10 09:13:20', '1', 'Skywart2105100913206', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:13:20.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '12712391179', 'PNB', '7BqDMZr8PDK5cXVx8jhB/mpdctjuGTKdRjUjWfNI1IJdtDOsIe0YdTWvhDFM'),
(155, 258, 347.31, '2021-05-10 09:16:05', '2021-05-10 09:16:05', '1', 'Skywart2105100916057', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:16:05.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '16210013777', 'HDFC', 'gSmWdc+vr6DfwgR3qPEwp/sgqjmxhWGFH5ZjwQ8B+EJsklz97iMt149aAPaw'),
(156, 259, 875.00, '2021-05-10 09:20:59', '2021-05-10 09:20:59', '1', 'Skywart2105100920597', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:21:00.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12457676161', 'AXIS', '7G8EpkuJLXX6Z5wxBQs33KZxlWMX1a26ZWJ4p09N+7afbz2SI8TMOPBjSuhm'),
(157, 260, 1750.00, '2021-05-10 09:22:55', '2021-05-10 09:22:55', '1', 'Skywart2105100922557', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:22:55.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '17111808182', 'AXIS', 'NvWVUOwnr9ZQBZ0R/S1dMq3quTZBnMmQ3pdNqz+9lKI5vZ6vSodlfgdmaAbC'),
(158, 261, 875.00, '2021-05-10 09:25:26', '2021-05-10 09:25:26', '1', 'Skywart2105100925263', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:25:27.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '17345180868', 'AXIS', 'MHHDnzVvXb1efA7utZ+wVTQTNb69VjbjwS+AYYFfCZS+uxCNIssL+rbV+8az'),
(159, 262, 875.00, '2021-05-10 09:27:35', '2021-05-10 09:27:35', '1', 'Skywart2105100927355', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:27:36.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '18718350109', 'PNB', '/0oHP1bxDgt2FIUWYJQAW/pwzWPiyc9S9ga9SiD7rn44UjlW4JC/EWS2vr0a'),
(160, 263, 875.00, '2021-05-10 09:28:45', '2021-05-10 09:28:45', '1', 'Skywart2105100928451', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:28:46.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '16431294213', 'PNB', 'bDIP4ld10DCUNw+tNRMqp1sZ8lVSO7ULWASmkSWiU0/Cqq5BL1igocfhBBdO'),
(161, 264, 875.00, '2021-05-10 09:29:49', '2021-05-10 09:29:49', '1', 'Skywart2105100929498', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:29:49.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '13637602280', 'ICICI', '1gADJvEYrKj2YZmjoDunvIJiIEpc5fQTGgtMUke+WUxyyj31PEoRJb7Hb71H'),
(162, 265, 875.00, '2021-05-10 09:36:09', '2021-05-10 09:36:09', '1', 'Skywart2105100936091', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:36:10.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '11364841505', 'AXIS', 'zxhsPbNz8Dia2stpelL+M6AkSyj6cbustim0xADR3UTXNs7iBPXuVe9onLNv'),
(163, 266, 875.00, '2021-05-10 09:39:11', '2021-05-10 09:39:11', '1', 'Skywart2105100939115', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:39:11.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '11817208135', 'ICICI', 'krXorFzWZvfEGTbryrqI/6Oyyjo/Wrbv3QjNhzxn5jfFscfUmxU5RDePv+CJ'),
(164, 267, 875.00, '2021-05-10 09:43:49', '2021-05-10 09:43:49', '1', 'Skywart2105100943491', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:43:50.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '19200176308', 'ICICI', 'q4py3RO7fazRZUyvWzUzn4p6wXzVZGl5K/uRU8KdaR3Y+Z/R/AFWN55xww8I'),
(165, 268, 875.00, '2021-05-10 09:52:20', '2021-05-10 09:52:20', '1', 'Skywart2105100952206', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:52:20.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '14583005014', 'PNB', '7KATTEKIb7/yiuLQtWlxOLvFNc2WQ3CrX4HzrABL0X4pYmZr4B1T3ZRso2MQ'),
(166, 269, 347.31, '2021-05-10 09:53:11', '2021-05-10 09:53:11', '1', 'Skywart2105100953111', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 09:53:11.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12405864152', 'ICICI', 'nP2nPaRJAqoACs8mrEoAu/RgqCNwQF+xVxodYb19IRtT3bzsZaymEq715qPP'),
(167, 270, 450.00, '2021-05-10 14:28:35', '2021-05-10 14:28:35', '1', 'Skywart2105100228359', NULL, NULL, NULL, '20210510111212800110', 'NB', 'INR', '2021-05-10 14:28:37.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '17087262916', 'AXIS', '5FJAwW8lkG2KsmZMYeHE/n9+ttFFIwNfR++gMfOCycbj4O4ph8vXhyd2cOVX'),
(168, 271, 875.00, '2021-05-19 20:28:20', '2021-05-19 20:28:20', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(169, 272, 875.00, '2021-05-19 20:49:43', '2021-05-19 20:49:43', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(170, 273, 450.00, '2021-05-19 20:52:13', '2021-05-19 20:52:13', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(171, 274, 875.00, '2021-05-19 20:53:48', '2021-05-19 20:53:48', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(172, 275, 875.00, '2021-05-19 20:55:25', '2021-05-19 20:55:25', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(173, 276, 875.00, '2021-05-19 20:56:34', '2021-05-19 20:56:34', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(174, 277, 875.00, '2021-05-20 06:34:55', '2021-05-20 06:34:55', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(175, 278, 875.00, '2021-05-20 06:39:45', '2021-05-20 06:39:45', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(176, 279, 875.00, '2021-05-20 06:40:40', '2021-05-20 06:40:40', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(177, 280, 875.00, '2021-05-20 06:45:36', '2021-05-20 06:45:36', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(178, 281, 875.00, '2021-05-20 06:48:47', '2021-05-20 06:48:47', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(179, 282, 875.00, '2021-05-20 06:52:17', '2021-05-20 06:52:17', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(180, 283, 875.00, '2021-05-20 07:02:43', '2021-05-20 07:02:43', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(181, 284, 875.00, '2021-05-20 07:04:13', '2021-05-20 07:04:13', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(182, 285, 875.00, '2021-05-20 07:07:41', '2021-05-20 07:07:41', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(183, 286, 875.00, '2021-05-20 07:08:52', '2021-05-20 07:08:52', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(184, 287, 875.00, '2021-05-20 11:03:06', '2021-05-20 11:03:06', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(185, 288, 875.00, '2021-05-20 11:05:45', '2021-05-20 11:05:45', '1', 'Skywart2105201105458', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 11:05:47.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '10706366252', 'HDFC', 'K2+tpElxzKHHBYC32GsiQ6TMfDuxDlFCs3qmUxZqfg+W0W4C7dEam0oL4D7g'),
(186, 289, 875.00, '2021-05-20 14:11:31', '2021-05-20 14:11:31', '1', 'Skywart2105200245678', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 14:11:36.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '12051237452', 'HDFC', 'E/FKjXA3U5ARhiV4JmmLnCvTBdvYliUtRzgcaBh891KugUT5I2BeMoMZUvzB'),
(187, 290, 875.00, '2021-05-20 15:21:03', '2021-05-20 15:21:03', '1', 'Skywart2105200321032', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 15:21:07.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '19178598772', 'HDFC', 'REMEezszNp5qLtxnb+ZFZX9eIML5tt1sQFjmJxu/KOtfQ4Vhd9uxJwktoDra'),
(188, 291, 1158.00, '2021-05-20 15:39:19', '2021-05-20 15:39:19', '1', 'Skywart2105200339191', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 15:39:23.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '19034597604', 'AXIS', '00He9iP5GS8UiztjiRDDyBrOcidNcGylGq/q8Na+72bDdqSTZBJThcbVBYd2'),
(189, 292, 875.00, '2021-05-20 16:10:09', '2021-05-20 16:10:09', '1', 'Skywart2105200465475', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 16:10:10.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '10124269830', 'ICICI', '2KJiCnfez/mA/l8WPUdGoxHWWM8iOvj+XyFv4M8ISwONZfYaK5xuol8zahtA'),
(190, 293, 875.00, '2021-05-20 16:22:21', '2021-05-20 16:22:21', '1', 'Skywart2105200422211', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 16:22:23.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '14850245003', 'PNB', '6eHq4hRH7SaExTDpgOr2gjX+UyKT3CayhvC4BQVn9hy7XRr4n/7y0+FA8RZ/'),
(191, 294, 875.00, '2021-05-20 16:26:39', '2021-05-20 16:26:39', '1', 'Skywart2105200426391', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 16:26:40.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '18981859150', 'PNB', 'hyr+hTEfqljrslO5sJX5KaIqRcWiecE1a+kXz93BDHWocJaWFs6RVm4uUfGm'),
(192, 295, 875.00, '2021-05-20 16:31:37', '2021-05-20 16:31:37', '1', 'Skywart2105200431375', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 16:31:39.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '11494492092', 'PNB', 'iGKwxv96jmzJ5chXxv+hxqAjwm6pWE9Dj6cwMMdRQTLQYFffUhrCXVJQjx/Q'),
(193, 296, 875.00, '2021-05-20 16:35:29', '2021-05-20 16:35:29', '1', 'Skywart2105200435291', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 16:35:30.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '11770743323', 'ICICI', 'TiXtVYDUwXcZZ5q8hCknGqS7Zk/lC8kMEXAMSp7mywm59FY+YyEbRZi7yECC'),
(194, 297, 875.00, '2021-05-20 16:36:54', '2021-05-20 16:36:54', '1', 'Skywart2105200436541', NULL, NULL, NULL, '20210520111212800110', 'NB', 'INR', '2021-05-20 16:36:55.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '16273811560', 'PNB', '6OzPbJeri4zU+OYGrB13QgLY3kIN8ShqFFq/dGBefpq3BIranq7MwACVZBhy'),
(195, 298, 2265.50, '2021-05-22 14:28:05', '2021-05-22 14:28:05', '1', 'Skywart2105220228058', NULL, NULL, NULL, '20210522111212800110', 'NB', 'INR', '2021-05-22 14:28:07.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '10220568420', 'ICICI Bank', 'jSbRKdKQNsS3KzmQ6P2Z2qBnTr1LhwGLUjImi/5m4tVacFB3sKZF5Rq4fVCO'),
(196, 299, 875.00, '2021-05-22 14:31:55', '2021-05-22 14:31:55', '1', 'Skywart2105220231552', NULL, NULL, NULL, '20210522111212800110', 'NB', 'INR', '2021-05-22 14:31:56.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '14539481316', 'Axis Bank', 'rJUc3HdJ15cK5oCUX8EJLvT1mcHKY/9rZzMDwOxZLxP0iwnduiNKyVFlGAs2'),
(197, 300, 875.00, '2021-05-22 15:03:20', '2021-05-22 15:03:20', '1', 'Skywart2105220303208', NULL, NULL, NULL, '20210522111212800110', 'NB', 'INR', '2021-05-22 15:03:21.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12395130658', 'ICICI Bank', 'RXw5i9NUPwCe85duxfhMXYVn5GmOgyXC7Iq+Goua2oqLIVnuTqCNHiI+4nj2'),
(198, 301, 875.00, '2021-05-22 15:52:14', '2021-05-22 15:52:14', '1', 'Skywart2105220352141', '2147483647', NULL, NULL, '20210522111212800110', 'NB', 'INR', '2021-05-22 15:52:20.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '18540861770', 'ICICI Bank', 'YfxMKv/nmyDxv2KH+queeQQ9vBXB7WcQsEsuH+kDDSiIcYebunH+nk8ZdNXD'),
(199, 302, 450.00, '2021-05-22 15:59:16', '2021-05-22 15:59:16', '1', 'Skywart2105220359161', '2147483647', NULL, NULL, '20210522111212800110', 'NB', 'INR', '2021-05-22 15:59:20.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '10620222539', 'Punjab National Bank', 'kWBVr5GQXX4iGN1GKWxax6Kt/4Ar22NmbaXIW+Xr4a7l15ZAk4Ex+jVi1+9k'),
(200, 303, 875.00, '2021-05-22 16:03:24', '2021-05-22 16:03:24', '1', 'Skywart2105220403241', '9373210000335', NULL, NULL, '20210522111212800110', 'NB', 'INR', '2021-05-22 16:03:26.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '14231572430', 'HDFC Bank', 'OLB4RGTImCIKZDZM4NozvxLm7hukvGXSzPTWKJPndDGUIq/SMrUfK53aPws/'),
(201, 304, 875.00, '2021-05-22 16:26:42', '2021-05-22 16:26:42', '1', 'Skywart2105220426421', '9373210000346', NULL, NULL, '20210522111212800110', 'NB', 'INR', '2021-05-22 16:26:44.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '18427311848', 'Punjab National Bank', 'yIBVXcCUmBI1PSmw9dOR8cukreIXWEMtNIkdLsnikD6VLmdJGIp6O90qj9GG'),
(202, 305, 875.00, '2021-05-22 16:28:30', '2021-05-22 16:28:30', '1', 'Skywart2105220428301', NULL, NULL, NULL, '20210522111212800110', 'NB', 'INR', '2021-05-22 16:28:31.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '13977397312', 'Punjab National Bank', '1FKNZmbFXvVJZ/uVIG6WLj9TCr18RNAzBSFJXunI+kvwJomog+yXTyg+Qo9Q'),
(203, 306, 875.00, '2021-05-22 16:31:53', '2021-05-22 16:31:53', '1', 'Skywart2105220431534', '9373210000350', NULL, NULL, '20210522111212800110', 'NB', 'INR', '2021-05-22 16:31:54.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '14765434984', 'State Bank of India', 'orzECdZ0bCXV9IZhCAIlC6AoL/DIO4rNiGfpuMXKIhBOBbcEgvS60Birenbz'),
(204, 307, 875.00, '2021-05-22 16:59:35', '2021-05-22 16:59:35', '1', 'Skywart2105220459351', '9373210000361', 1, 'Book', '20210522111212800110', 'NB', 'INR', '2021-05-22 16:59:37.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '18671572468', 'Punjab National Bank', 'ScyQtdHgXVjuDQNft3FEJGgm5MKrKAmayjLhsouSt9QvwDOp565l6cmxLNqO'),
(205, 308, 2868.75, '2021-05-23 15:40:58', '2021-05-23 15:40:58', '1', 'Skywart2105230340581', NULL, NULL, NULL, '20210523111212800110', '', 'INR', '', 'TXN_FAILURE', '141', 'User has not complet', '', '', '', '9UilZhXym4Gy8yG88aZTleLaKlC6Mk9A4hqQGDpc3TAtQBK3s8MJgduJbZ4D'),
(206, 309, 2535.00, '2021-05-23 16:53:26', '2021-05-23 16:53:26', '1', 'Skywart2105230453268', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 16:53:27.', 'TXN_FAILURE', '227', 'Your payment has bee', 'AXIS', '17920425103', 'Axis Bank', 'JLBZdLxnw7xJ4xnUi7vvfO6OMjQKZ70aLgalZeRrUDhbHMC2iNCE94KrOqAs'),
(207, 310, 2868.75, '2021-05-23 19:25:03', '2021-05-23 19:25:03', '1', 'Skywart2105230725031', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 19:25:04.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '16962664189', 'Axis Bank', 'gA8OvUJYmVn6RmUt0+uSZODL9nPKiY5qKGdGJ3JDN7SxIaLVEFRxZ1xWa1Ah'),
(208, 311, 1157.70, '2021-05-23 19:29:58', '2021-05-23 19:29:58', '1', 'Skywart2105230729584', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 19:29:59.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12149039664', 'Axis Bank', 'E4Nl91Q2jARhpAXSUp936F3KNL15szXC9p+k1jcZuvJaDHjDT38uzGP9qZjn'),
(209, 312, 2868.75, '2021-05-23 19:30:24', '2021-05-23 19:30:24', '1', 'Skywart2105230730241', NULL, NULL, NULL, '20210523111212800110', '', 'INR', '', 'TXN_FAILURE', '141', 'User has not complet', '', '', '', 'kOSiADhliDQTd8Ljhdzr71SpHG+CKgAmwPWLKCKx2+8rqsU8aV624JHwnP5n'),
(210, 313, 2868.75, '2021-05-23 19:30:31', '2021-05-23 19:30:31', '1', 'Skywart2105230730311', NULL, NULL, NULL, '20210523111212800110', '', 'INR', '', 'TXN_FAILURE', '141', 'User has not complet', '', '', '', '+h67K/8sK//kOVzdD+ZgOB7qyiN3niL3WvCUDj0EFkd2oCfs8a+IluCM77ss'),
(211, 314, 2546.94, '2021-05-23 19:30:40', '2021-05-23 19:30:40', '1', 'Skywart2105230730401', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 19:30:41.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '13523198824', 'State Bank of India', '7l+/AMxVnP7hI6Xp+6MRztQu6NglSPXAj87jycMZE8ZtQTbXTNDbc50KhVGI'),
(212, 315, 1157.70, '2021-05-23 19:32:34', '2021-05-23 19:32:34', '1', 'Skywart2105230732345', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 19:32:35.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '15022648498', 'State Bank of India', 'gLO9OdxP6CJ/ppdS/QlY6/O4dJschgx66qfbBI2+rwGXgWN+358dCH89m5BB'),
(213, 316, 1157.70, '2021-05-23 19:35:22', '2021-05-23 19:35:22', '1', 'Skywart2105230735229', NULL, NULL, NULL, '20210523111212800110', '', 'INR', '', 'TXN_FAILURE', '141', 'User has not complet', '', '', '', 'BSCADF/rtagJ7wFLLZJ4Wvvfdk+c2/SnBjfhyuTgzrlVgLLkGURb1ZajvFRz'),
(214, 317, 1157.70, '2021-05-23 19:40:36', '2021-05-23 19:40:36', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(215, 318, 1157.70, '2021-05-23 19:40:57', '2021-05-23 19:40:57', '1', 'Skywart2105230740571', NULL, NULL, NULL, '20210523111212800110', '', 'INR', '', 'TXN_FAILURE', '141', 'User has not complet', '', '', '', 'wKgfHm48amyrIJSRaSC68qXjZ6p6NSzWYUe3H+3FuOUSA7U5+uhh+wlzkvNM'),
(216, 319, 1157.70, '2021-05-23 19:45:35', '2021-05-23 19:45:35', '1', 'Skywart2105230745351', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 19:45:36.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '19740340058', 'Axis Bank', 'HTHHC7AGuD49wG2m60T6cJzrCj/orzI3D1sPLiOc+OQQJ6g+3nL2ARPmIrRL'),
(217, 320, 1157.70, '2021-05-23 19:49:35', '2021-05-23 19:49:35', '1', 'Skywart2105230749353', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 19:49:36.', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '18343876450', 'Bharat Bank', 'UdfaALFqhudFtgpX3lYfRMJ7bdCs1cgD6bSHqXWdInzewd6McSKEhKj+zif4'),
(218, 321, 1157.70, '2021-05-23 19:50:51', '2021-05-23 19:50:51', '1', 'Skywart2105230750511', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 19:50:52.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '19957066473', 'Punjab National Bank', '/cQjMMfh7esUKG21wl5jt2lWj95woVvFFFaYG3xBMrDmvEjkfS3xC/bDYHYj'),
(219, 322, 875.00, '2021-05-23 20:06:40', '2021-05-23 20:06:40', '1', 'Skywart2105230806409', '9373210000372', 1, 'Book', '20210523111212800110', 'NB', 'INR', '2021-05-23 20:06:41.', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '12372588618', 'Bharat Bank', 'znC+Uwd+/GzT5DzDK1Q4ykNu2ui9twBsX5HYEWYy1clBFSbLUZYt3Q7Fk4BO'),
(220, 323, 1377.00, '2021-05-23 20:14:21', '2021-05-23 20:14:21', '1', 'Skywart2105230814211', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 20:14:21.', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '14454124146', 'Bharat Bank', 'ZJP6OLKCB6424jsjlLgmRMFvHcOsmBG4/lfnrX8PgRAeapxJJUOhFpSih7cJ'),
(221, 324, 1377.00, '2021-05-23 20:15:02', '2021-05-23 20:15:02', '1', 'Skywart2105230815029', NULL, NULL, NULL, '20210523111212800110', 'NB', 'INR', '2021-05-23 20:15:03.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '15024770246', 'Punjab National Bank', 'TtJ+mx1Q6JHWgxD1iW/n7u0B6+sfv3XOGFmlQjYcPaiqeg5muAjYZCe5+7Sx'),
(222, 325, 1157.70, '2021-05-24 12:08:41', '2021-05-24 12:08:41', '1', 'Skywart2105241208411', NULL, NULL, NULL, '20210524111212800110', 'NB', 'INR', '2021-05-24 12:08:44.', 'TXN_SUCCESS', '01', 'Txn Success', 'ANDB', '18875339242', 'Andhra Bank', 'f/iQUSZdNpPBrcu3+ldXrTjI67HUzaYjofbMxK7VxvRf32JD1zUMGbTrmCPA'),
(223, 326, 1020.00, '2021-05-24 12:49:10', '2021-05-24 12:49:10', '1', 'Skywart2105241249101', NULL, NULL, NULL, '20210524111212800110', 'NB', 'INR', '2021-05-24 12:49:11.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '17248014217', 'Axis Bank', '7isiz05thr9s/vFKpqVJYGKQLeXTdvWUQDYugvYtp30LSLLK+4s6bNOQuzU+'),
(224, 327, 875.00, '2021-05-24 13:08:05', '2021-05-24 13:08:05', '1', 'Skywart2105240108059', NULL, NULL, NULL, '20210524111212800110', 'NB', 'INR', '2021-05-24 13:08:07.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '14556115851', 'HDFC Bank', 'hecZrZ04ejXs7C1XYLQZ+WTGA6YpG2XEoGDNMVMpOFFYkt5ZnHbYauEOd7vI'),
(225, 328, 1147.50, '2021-05-24 13:17:22', '2021-05-24 13:17:22', '1', 'Skywart2105240117221', NULL, NULL, NULL, '20210524111212800110', 'NB', 'INR', '2021-05-24 13:17:24.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '16471075355', 'Punjab National Bank', 'yW4UxZu23zjzOaGF3DeHjymFQG+RxyGfUCqzK5r8xyv0vmE8QdO6gIVnHWjR'),
(226, 329, 875.00, '2021-05-24 16:09:36', '2021-05-24 16:09:36', '1', 'Skywart2105240409361', '9373210000394', 1, 'Book', '20210524111212800110', 'NB', 'INR', '2021-05-24 16:09:37.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '13110651410', 'HDFC Bank', 'QVDtxyXdY4YYFHo9y0Isk4//3HpDJ6m1QDfXC5vr9RaZBEf+jp19+bO5G7Wn'),
(227, 330, 875.00, '2021-05-24 17:09:47', '2021-05-24 17:09:47', '1', 'Skywart2105240509471', '9373210000405', 1, 'Book', '20210524111212800110', 'NB', 'INR', '2021-05-24 17:09:50.', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '16259360466', 'Bharat Bank', 'YsVXr+Rqgj2vuWocGyw0NjQynpYmMv1rWL2Xy0pOw+M/5JnUn60YuHRbqSnG'),
(228, 331, 875.00, '2021-05-26 07:49:30', '2021-05-26 07:49:30', '1', 'Skywart2105260749301', NULL, NULL, NULL, '20210526111212800110', 'NB', 'INR', '2021-05-26 07:49:32.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '15895671586', 'Axis Bank', 'BPx5E4NDoL9uiSzBEGrNPuO7E5EzQezkiCkXMYsuWI/G7QdNSOweytZXl8gk'),
(229, 332, 875.00, '2021-05-26 09:47:02', '2021-05-26 09:47:02', '1', 'Skywart2105260947021', '9373210000420', 1, 'Book', '20210526111212800110', 'NB', 'INR', '2021-05-26 09:47:17.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '13864749935', 'ICICI Bank', 'df1ueoFACb4sOxF1kQXmxiuZkVNXxwRt9Sf7pCVk9l3ULWQuWBeRODEKdZaP'),
(230, 333, 1147.50, '2021-05-27 09:41:44', '2021-05-27 09:41:44', '1', 'Skywart2105270941441', NULL, NULL, NULL, '20210527111212800110', 'NB', 'INR', '2021-05-27 09:41:46.', 'TXN_SUCCESS', '01', 'Txn Success', 'ANDB', '18926617005', 'Andhra Bank', 'SeDPG6OOsNnQKqvgYf6PJRkpKvLQeKkIRWqKj0wzAIjoAs57A8sAYhhk90O6'),
(231, 334, 1157.70, '2021-05-27 09:51:49', '2021-05-27 09:51:49', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(232, 335, 1147.50, '2021-05-27 09:53:14', '2021-05-27 09:53:14', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(233, 336, 1147.50, '2021-05-27 09:54:07', '2021-05-27 09:54:07', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(234, 337, 1147.50, '2021-05-27 09:56:03', '2021-05-27 09:56:03', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(235, 338, 1147.50, '2021-05-27 10:04:43', '2021-05-27 10:04:43', '1', 'Skywart2105271004431', NULL, NULL, NULL, '20210527111212800110', 'NB', 'INR', '2021-05-27 10:04:46.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '13194573570', 'ICICI Bank', 'ZtE9eKU+0oXloWRGJ2jZ4/8VOJ0DXbOjG6lwAVIIlKRHjMSedIwefICK7ALL'),
(236, 339, 1157.70, '2021-05-27 10:06:30', '2021-05-27 10:06:30', '1', 'Skywart2105271006301', NULL, NULL, NULL, '20210527111212800110', 'NB', 'INR', '2021-05-27 10:06:32.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '14281200357', 'ICICI Bank', 'XI/8k/i147ITGoV6HOyc34pPwSVjbMi7l9OGFgRpkRxcsEtz751YsdHFyyP9'),
(237, 340, 875.00, '2021-05-28 20:38:58', '2021-05-28 20:38:58', '1', 'Skywart2105280838582', NULL, NULL, NULL, '20210528111212800110', 'NB', 'INR', '2021-05-28 20:38:59.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '11368956784', 'ICICI Bank', 'C42ZaFS3FSSrtWQbn7a/7QJwwssCWLe9HLCcCtoDROML7rf3PcQwu4OuQzjj'),
(238, 341, 875.00, '2021-05-28 20:43:49', '2021-05-28 20:43:49', '1', 'Skywart2105280843491', '9373210000431', 1, 'Book', '20210528111212800110', 'NB', 'INR', '2021-05-28 20:43:50.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '11003426907', 'Axis Bank', '8ZSl+ZkrnAuO/9oNPFF3R2/DxzVsre5JvrNGx1ZeI9c6uKfWGHZQYz9bGtSZ'),
(239, 342, 875.00, '2021-05-28 20:44:47', '2021-05-28 20:44:47', '1', 'Skywart2105280844477', '9373210000442', 1, 'Book', '20210528111212800110', 'NB', 'INR', '2021-05-28 20:44:47.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '19983111771', 'Punjab National Bank', 'RVeGMsH5RjmiGRx/rDzaMr4q1yPvY2iNgSsqlYblj6l+PXTORO6f/fwX70/4'),
(240, 343, 875.00, '2021-05-28 20:57:49', '2021-05-28 20:57:49', '1', 'Skywart2105280857491', NULL, NULL, NULL, '20210528111212800110', 'NB', 'INR', '2021-05-28 20:57:51.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12575450941', 'Axis Bank', 'l/ATvm93JTru42qarsvVuZLdbUQxvlrJBMReLronYGCZXoR8QBHYNtPuw/s/'),
(241, 344, 450.00, '2021-05-28 20:59:49', '2021-05-28 20:59:49', '1', 'Skywart2105280859498', NULL, NULL, NULL, '20210528111212800110', 'NB', 'INR', '2021-05-28 20:59:49.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '18938564609', 'Punjab National Bank', '1rSSZ/75nnlwN4/cbNttwg650M/MiV0JmqGRMyce/KNPtgqS50Oo7rc3MIOp'),
(242, 345, 450.00, '2021-05-29 11:31:02', '2021-05-29 11:31:02', '1', 'Skywart2105291131021', NULL, NULL, NULL, '20210529111212800110', 'NB', 'INR', '2021-05-29 11:31:04.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '16248780373', 'ICICI Bank', 'RONe5wOFduSC7aByPLLwU3qufKbLFJxNGLBCyaEFGAW3OqdLSopbjCiFtrn3'),
(243, 346, 200.00, '2021-05-29 11:39:28', '2021-05-29 11:39:28', '1', 'Skywart2105291139281', NULL, NULL, NULL, '20210529111212800110', 'NB', 'INR', '2021-05-29 11:39:29.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '16591780016', 'ICICI Bank', 'ZJVJtWzk+33XexmniqKkJNC9uFnGPa5/mwkvTCAmHWkU6d7MiJ+zfUgo9WLB'),
(244, 347, 450.00, '2021-05-29 11:41:18', '2021-05-29 11:41:18', '1', 'Skywart2105291141181', NULL, NULL, NULL, '20210529111212800110', 'NB', 'INR', '2021-05-29 11:41:19.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '16252001110', 'Axis Bank', '34RnZX8xRhID8XomD4AIoi4a+QuKYyXaSeux9syExDyHd7AkZZV1Hx/sIo9t'),
(245, 348, 200.00, '2021-05-29 11:42:55', '2021-05-29 11:42:55', '1', 'Skywart2105291142551', NULL, NULL, NULL, '20210529111212800110', 'NB', 'INR', '2021-05-29 11:42:56.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '11022722420', 'ICICI Bank', 'yN7qmTJ3zhtsEqWfjrgMh6iiy2sVUC4fFoA0FxzJ51rLVFUEWpYO5Ug3YTT7'),
(246, 349, 780.00, '2021-05-29 11:45:37', '2021-05-29 11:45:37', '1', 'Skywart2105291145371', NULL, NULL, NULL, '20210529111212800110', 'NB', 'INR', '2021-05-29 11:45:38.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '10613274626', 'HDFC Bank', 'oH9uOBN+NXKtk6Mze439eh+ugTdI/qQi1L4MPDXXAAyqL/AxKEy5drOl4pK+'),
(247, 350, 450.00, '2021-05-29 11:49:10', '2021-05-29 11:49:10', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(248, 351, 200.00, '2021-05-29 11:54:27', '2021-05-29 11:54:27', '1', 'Skywart2105291154271', NULL, NULL, NULL, '20210529111212800110', 'NB', 'INR', '2021-05-29 11:54:55.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '13329424510', 'ICICI Bank', 'n6+2uKtGeNhoBkW1ICHdWBFKg4u0jLl4eiEUMb2tiMcxQrKUehoWJz2GhywL'),
(249, 352, 200.00, '2021-05-29 11:56:26', '2021-05-29 11:56:26', '1', 'Skywart2105291156269', NULL, NULL, NULL, '20210529111212800110', 'NB', 'INR', '2021-05-29 11:56:27.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '11820282198', 'ICICI Bank', 'jR1zeL91cyqBrjRWELYYR9yXGvE4f9j+7BYWcZRSZlSMm4iyGU1D5dIrwBT7'),
(250, 353, 400.00, '2021-05-29 18:27:33', '2021-05-29 18:27:33', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(251, 354, 1157.70, '2021-05-01 11:03:46', '2021-06-02 08:03:15', '1', 'Skywart2106020803151', NULL, NULL, NULL, '20210602111212800110', 'NB', 'INR', '2021-06-02 08:03:17.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '15580546466', 'ICICI Bank', 'LAj8azXdy1wDW2bFiRcjJlVdAohEyEzkJSmVqv1wORXAkZmqg5YfhBK2HQO7'),
(252, 355, 578.85, '2021-06-02 11:07:37', '2021-06-02 11:07:37', '1', 'Skywart2106021107371', NULL, NULL, NULL, '20210602111212800110', 'NB', 'INR', '2021-06-02 11:07:37.', 'TXN_SUCCESS', '01', 'Txn Success', 'YES', '14392067803', 'Yes Bank', 'MDQOxFiAUQOoW+2rYrzbYAdJfEQ7ozaCdWxz4eaKUC/6VR4ebGpCh7OQKD77'),
(253, 356, 19354.50, '2021-06-02 14:30:18', '2021-06-02 14:30:18', '1', 'Skywart2106020230185', NULL, NULL, NULL, '20210602111212800110', 'NB', 'INR', '2021-06-02 14:30:19.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '14361664251', 'State Bank of India', 'A4pGWng5V8smyRE6KInAuVN3eFB9Nc6pbHFep2yIRP8R5d16L8e7KJFE8rw9'),
(254, 357, 19354.50, '2021-06-03 11:55:10', '2021-06-03 11:55:10', '1', 'Skywart2106031155104', NULL, NULL, NULL, '20210603111212800110', 'NB', 'INR', '2021-06-03 11:55:11.', 'TXN_SUCCESS', '01', 'Txn Success', 'CSB', '10535441054', 'Catholic Syrian Bank', 'MK41G+yqyuSQujzJ3K5SWOmLd51KhXjl7Dl5xLzuwlFwbIjNIz0v/UQMAcxA'),
(255, 358, 5865.00, '2021-06-03 11:58:58', '2021-06-03 11:58:58', '1', 'Skywart2106031158589', NULL, NULL, NULL, '20210603111212800110', 'NB', 'INR', '2021-06-03 11:58:58.', 'TXN_SUCCESS', '01', 'Txn Success', 'CANARA', '16620362387', 'Canara Bank', 'ds+/Ktb7GlGmN9a2VmDum/6rxSTXbfI+22830X5Mev0m3Cu/uWFELpmnE52K'),
(256, 359, 1389.24, '2021-06-03 12:13:33', '2021-06-03 12:13:33', '1', 'Skywart2106031213331', NULL, NULL, NULL, '20210603111212800110', 'NB', 'INR', '2021-06-03 12:13:35.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '10270208266', 'State Bank of India', 'k1HJIrUDWBR12Gj4rGrqAW6aQ5ZvlCKbBLG06uR+pIta9AGK0tQnyYFKuPXV'),
(257, 360, 1147.50, '2021-06-03 16:36:35', '2021-06-03 16:36:35', '1', 'Skywart2106030436351', NULL, NULL, NULL, '20210603111212800110', 'NB', 'INR', '2021-06-03 16:36:36.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '19141466377', 'Axis Bank', 'a9eHo7O+zDRngGaU6HEmeWadpgY1/tSfNZSsDlevWixDb6Ep9ufLYSd+AKf1'),
(258, 361, 1147.50, '2021-06-03 17:25:20', '2021-06-03 17:25:20', '1', 'Skywart2106030525205', NULL, NULL, NULL, '20210603111212800110', 'NB', 'INR', '2021-06-03 17:25:21.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '10684030360', 'Axis Bank', '29YCGdPp+EmDLGROhSDPgNdt6ZLFTT1muyiGtrLy2Z5KaQZ+ZulcFrL11Z0H'),
(259, 362, 1389.24, '2021-06-04 15:11:13', '2021-06-04 15:11:13', '1', 'Skywart2106040311131', NULL, NULL, NULL, '20210604111212800110', 'NB', 'INR', '2021-06-04 15:11:14.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '14352598659', 'State Bank of India', 'T+BvJ1TIv39Z2kY0/KClqElfGg08jNf8DHv33Rngm0S08ohnCT/9+sjMkKg4'),
(260, 363, 5865.00, '2021-06-04 15:20:34', '2021-06-04 15:20:34', '1', 'Skywart2106040320344', NULL, NULL, NULL, '20210604111212800110', 'NB', 'INR', '2021-06-04 15:20:46.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '17749784846', 'Axis Bank', '5pBxkwMlpOlIm+zlfcHuUvJRxkDo3eOGrvA00msnxXxp7lcL8XJH1Ta0Knww'),
(261, 364, 5865.00, '2021-06-04 15:22:42', '2021-06-04 15:22:42', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(262, 365, 5865.00, '2021-06-04 15:26:28', '2021-06-04 15:26:28', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(263, 366, 5865.00, '2021-06-04 15:30:01', '2021-06-04 15:30:01', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(264, 367, 5865.00, '2021-06-04 15:33:45', '2021-06-04 15:33:45', '1', 'Skywart2106040333451', NULL, NULL, NULL, '20210604111212800110', 'NB', 'INR', '2021-06-04 15:33:47.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12783070826', 'Axis Bank', 'XevnuRzkR0EfZv/ydQN3Pz8bUZOHMIFJk8/hVu/TSx/gbB3YYdSuV1IygHqb'),
(265, 368, 5865.00, '2021-06-04 15:34:01', '2021-06-04 15:34:01', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(266, 369, 5865.00, '2021-06-04 15:36:45', '2021-06-04 15:36:45', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(267, 370, 5865.00, '2021-06-04 15:41:45', '2021-06-04 15:41:45', '1', 'Skywart2106040341452', NULL, NULL, NULL, '20210604111212800110', 'NB', 'INR', '2021-06-04 15:41:46.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '14198690639', 'Axis Bank', 'ElxySNvLTPH/Err3CCwl7n6xCXSG1uyPMyJWc0xViSMm8qV2dHGDwZoJS9BQ'),
(268, 371, 5865.00, '2021-06-04 15:45:16', '2021-06-04 15:45:16', '1', 'Skywart2106040345161', NULL, NULL, NULL, '20210604111212800110', 'NB', 'INR', '2021-06-04 15:45:16.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '13096413400', 'Axis Bank', '7GU/8FZjc67iwBbY9iK+hkz6cYGZWTrGEL5lqocW8fg8aC42mpBXKdXr0NTt'),
(269, 372, 5865.00, '2021-06-04 15:46:05', '2021-06-04 15:46:05', '1', 'Skywart2106040346051', NULL, NULL, NULL, '20210604111212800110', 'NB', 'INR', '2021-06-04 15:46:06.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '11114830850', 'State Bank of India', 'dyp6oNXEJqeS6EyP5YEAj447JTuzDnmjPRtg4E732gLxddl2+SATKm/6Y+Xh');
INSERT INTO `orders` (`id`, `customer_id`, `grand_total`, `created`, `modified`, `status`, `payment_orderid`, `waybill`, `delhivery_status`, `order_type`, `txnid`, `paymentmode`, `currency`, `txndate`, `payment_status`, `respcode`, `respmsg`, `gatewayname`, `banktxnid`, `bankname`, `checksumhash`) VALUES
(270, 373, 5865.00, '2021-06-04 15:47:19', '2021-06-04 15:47:19', '1', 'Skywart2106040347191', NULL, NULL, NULL, '20210604111212800110', 'NB', 'INR', '2021-06-04 15:47:19.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '14859778930', 'Punjab National Bank', '2BeIOenuaa7jpI+A09529E/IQjm59bi9wYFUDCt83Xd8WYzRiL4o8chwGv1U'),
(271, 374, 5865.00, '2021-06-04 16:09:31', '2021-06-04 16:09:31', '1', 'Skywart2106040409311', NULL, NULL, NULL, '20210604111212800110', 'NB', 'INR', '2021-06-04 16:09:33.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '17546243811', 'State Bank of India', 'CFJGWvVt8TunJ+JjLtvodAdKHD7FL3zaE0X4YZkRMiS69XOftxlPHvwC5AMG'),
(272, 375, 1147.50, '2021-06-05 13:28:51', '2021-06-05 13:28:51', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(273, 376, 5865.00, '2021-06-05 13:40:38', '2021-06-05 13:40:38', '1', 'Skywart2106050140387', NULL, NULL, NULL, '20210605111212800110', 'NB', 'INR', '2021-06-05 13:40:40.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12256495083', 'ICICI Bank', 'HYLtfG0Bs676Qgb5OH2qG1sPyH1+4ESLLl8EWgdmrUlCm6oFZjxInZ/Xi6vY'),
(274, 377, 875.00, '2021-06-07 11:15:36', '2021-06-07 11:15:36', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(275, 378, 450.00, '2021-06-07 11:18:13', '2021-06-07 11:18:13', '1', 'Skywart2106071118131', NULL, NULL, NULL, '20210607111212800110', 'NB', 'INR', '2021-06-07 11:18:14.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '17730264089', 'ICICI Bank', 'Bwv7jGobQHDjvkh6ZRgszvb1u/1YWWKek+40yxa6RWqlunuDV/Z8mzj1VG0q'),
(276, 379, 875.00, '2021-06-07 11:35:40', '2021-06-07 11:35:40', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(277, 380, 875.00, '2021-06-07 11:36:24', '2021-06-07 11:36:24', '1', 'Skywart2106071136241', '9373210000490', 1, 'Book', '20210607111212800110', 'NB', 'INR', '2021-06-07 11:36:27.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '16430784453', 'Axis Bank', '4MT8cbDPSO7HR0rwb/lSmXQsqGKnf30G3t1jDfjX+H6FAMBrygXOIMg3CF0V'),
(278, 381, 875.00, '2021-06-11 11:49:51', '2021-06-11 11:49:51', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(279, 382, 1157.70, '2021-06-14 20:35:11', '2021-06-14 20:35:11', '1', 'Skywart2106140835112', NULL, NULL, NULL, '20210614111212800110', 'NB', 'INR', '2021-06-14 20:35:13.', 'TXN_FAILURE', '227', 'Your payment has bee', 'ICICI', '14442569404', 'ICICI Bank', '6sDgVKHwa1cExfEExBbChSMAjJCUREKyVQP/cBJDjwrR97/OcVJCkrlFgDpy'),
(280, 383, 1389.24, '2021-06-15 19:15:37', '2021-06-15 19:15:37', '1', 'Skywart2106150715378', NULL, NULL, NULL, '20210615111212800110', 'NB', 'INR', '2021-06-15 19:15:38.', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '12873081281', 'State Bank of India', 'y40TAeeIr16iDauimbL+ZqFKqFkVkXdDk0afVlNoE8BwHMn5ImXLTxk4RIau'),
(281, 384, 1157.70, '2021-06-16 20:31:46', '2021-06-16 20:31:46', '1', 'Skywart2106160831468', NULL, NULL, NULL, '20210616111212800110', 'NB', 'INR', '2021-06-16 20:31:48.', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '17412258479', 'Bharat Bank', '8RfyYzQBswLt9V+V6ri/DhyrcYUtoK0GzjN3lHsY3TD8elLGT/IEATAOKKNL'),
(282, 385, 1389.24, '2021-06-21 12:09:15', '2021-06-21 12:09:15', '1', 'Skywart2106211209155', NULL, NULL, NULL, '20210621111212800110', 'NB', 'INR', '2021-06-21 12:09:16.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '18483042631', 'Axis Bank', 'XfKwFD8e8S1nt+010B+d+SZCy4+B7OAQso81815LfRPo8ER8eBwht5Q8EmvN'),
(283, 386, 1157.70, '2021-06-22 20:52:48', '2021-06-22 20:52:48', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(284, 387, 1147.50, '2021-06-25 15:33:23', '2021-06-25 15:33:23', '1', 'Skywart2106250333238', NULL, NULL, NULL, '20210625111212800110', 'NB', 'INR', '2021-06-25 15:33:24.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '16060899643', 'Axis Bank', 'QoVH/p+JPLYAXKBknkQZU48qUN9ISHQCWELUcMQJsWG/RLpot1QknO1Qa1iV'),
(285, 388, 1147.50, '2021-07-05 10:59:04', '2021-07-05 10:59:04', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(286, 389, 0.00, '2021-07-05 18:44:29', '2021-07-05 18:44:29', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(287, 390, 1147.50, '2021-07-06 09:09:19', '2021-07-06 09:09:19', '1', 'Skywart2107060909194', NULL, NULL, NULL, '20210706111212800110', 'NB', 'INR', '2021-07-06 09:09:20.', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '11504864729', 'Bharat Bank', 'Rh+HNXmaXXOIbxfC2CjS/U90DEIf1RfGNiL8mQaVOlOZ+CZODom6kgIh9G1h'),
(288, 391, 1491.75, '2021-07-06 22:11:05', '2021-07-06 22:11:05', '1', 'Skywart2107061011051', NULL, NULL, NULL, '20210706111212800110', 'NB', 'INR', '2021-07-06 22:11:06.', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '17224109756', 'Punjab National Bank', '8SUmHgKHF7jT232/zE4Qgspj3YUzE1XdNoF8lkaRahCCABdfwn9EC29STSEb'),
(289, 392, 1491.75, '2021-07-06 23:35:12', '2021-07-06 23:35:12', '1', 'Skywart2107061135121', NULL, NULL, NULL, '20210706111212800110', 'NB', 'INR', '2021-07-06 23:35:13.', 'TXN_SUCCESS', '01', 'Txn Success', 'ANDB', '19538316262', 'Andhra Bank', 'RwE4KYz/TMMh0f8Sy83LzLrV6mVZLH2QVd4xdudNTN2UjIGuvmnLtoE/BXIr'),
(290, 393, 1157.70, '2021-07-07 23:14:07', '2021-07-07 23:14:07', '1', 'Skywart2107071114071', NULL, NULL, NULL, '20210707111212800110', 'NB', 'INR', '2021-07-07 23:14:08.', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '15698023207', 'Axis Bank', 'AXi2cjdXpiSSlGjuqu5ENTXzQu99Z2LX3LQjVxXrVs3ynz+lQ+L48xz0ti8E'),
(291, 394, 1157.70, '2021-07-07 23:23:11', '2021-07-07 23:23:11', '1', 'Skywart2107071123111', NULL, NULL, NULL, '20210707111212800110', 'NB', 'INR', '2021-07-07 23:23:12.', 'TXN_SUCCESS', '01', 'Txn Success', 'ANDB', '14513758293', 'Andhra Bank', 'RI6U+v2m1rDZb3CXhTi2c+SKnfesdrYRbuvOhpVjdkNGmkSUjxO+yISSJ9eN'),
(292, 395, 1377.00, '2021-07-07 23:32:02', '2021-07-07 23:32:02', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(293, 396, 1491.75, '2021-07-07 23:33:59', '2021-07-07 23:33:59', '1', 'Skywart2107071133591', NULL, NULL, NULL, '20210707111212800110', 'NB', 'INR', '2021-07-07 23:34:00.', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12239453002', 'ICICI Bank', 'YwfduKcoDeLuEfjvibT2RVuakNQclPwe+hHmtKsrXObBxJNViHONyY0ffsbA'),
(294, 397, 1389.24, '2021-07-07 23:37:59', '2021-07-07 23:37:59', '1', 'Skywart2107071137591', NULL, NULL, NULL, '20210707111212800110', 'NB', 'INR', '2021-07-07 23:38:10.', 'TXN_SUCCESS', '01', 'Txn Success', 'ANDB', '18853697552', 'Andhra Bank', '43pdkHPgzj3oq8OJUIfdpNZueknz1NKbDEWi5f0Z6EKesuVBxzJDtk4hQDLI'),
(295, 398, 1389.24, '2021-07-08 00:16:00', '2021-07-08 00:16:00', '1', 'Skywart2107081216001', NULL, NULL, NULL, '20210708111212800110', 'NB', 'INR', '2021-07-08 00:16:01.', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '17888675342', 'HDFC Bank', '+6ABdkePTBL6jgJS9yAc/FzsmII+NJRH2R/M7IZcar1pk0rIVxmMZ3S9hfhx'),
(296, 399, 1157.70, '2021-07-08 00:17:25', '2021-07-08 00:17:25', '1', 'Skywart2107081217256', NULL, NULL, NULL, '20210708111212800110', 'NB', 'INR', '2021-07-08 00:17:26.', 'TXN_SUCCESS', '01', 'Txn Success', 'ANDB', '12089343967', 'Andhra Bank', 'IYpsICE2cC52tbi0DknPCeNcByOSY6jATznSLN3Cm1aIo0cbPeAEn5shE98B'),
(297, 400, 1491.75, '2021-07-08 00:23:40', '2021-07-08 00:23:40', '1', 'Skywart2107081223408', NULL, NULL, NULL, '20210708111212800110', 'NB', 'INR', '2021-07-08 00:23:51.', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '17332515572', 'Bharat Bank', '3MPQCr+dEheeu9K+x+jVKe/d/zGRIBhSoZN+U7DFMugzsGQYU6ETsfwgc0oV'),
(298, 401, 1389.24, '2021-07-08 11:31:12', '2021-07-08 11:31:12', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(299, 402, 1157.70, '2021-07-08 12:54:33', '2021-07-08 12:54:33', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', ''),
(300, 403, 1744.05, '2021-07-08 16:38:14', '2021-07-08 16:38:14', '1', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  `type` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `sub_total`, `login_id`, `type`, `status`) VALUES
(1, 80, '1', 1, 1173.00, 159, '1', '0'),
(2, 80, '2', 1, 1407.60, 159, '1', '1'),
(3, 80, '3', 1, 1642.20, 159, '1', '1'),
(4, 81, '1', 1, 1173.00, 159, '1', '1'),
(5, 82, '4', 1, 1389.24, 164, '1', '1'),
(6, 83, '4', 1, 1389.24, 164, '1', '1'),
(9, 86, '6', 1, 1377.00, 187, '5', '1'),
(13, 90, '29', 1, 1505.01, 164, '1', '1'),
(14, 91, '2', 1, 1407.60, 187, '1', '1'),
(15, 92, '2', 1, 1407.60, 187, '1', '1'),
(16, 93, '28', 1, 694.62, 187, '1', '1'),
(17, 94, '6', 1, 1377.00, 164, '5', '1'),
(18, 95, '6', 1, 1377.00, 164, '5', '1'),
(19, 96, '1', 1, 306.00, 164, NULL, '1'),
(20, 97, '24', 1, 1389.24, 187, '1', '0'),
(21, 98, '4', 1, 1148.00, 187, '5', '1'),
(22, 99, '5', 1, 1148.00, 187, '5', '1'),
(23, 100, '4', 1, 96.90, 187, NULL, '1'),
(24, 101, '1', 1, 1173.00, 162, '1', '1'),
(25, 102, '4', 1, 96.90, 158, NULL, '1'),
(27, 104, '10', 1, 0.00, 158, '1', '1'),
(28, 105, '1', 1, 1173.00, 158, '1', '1'),
(29, 106, '9', 1, 397.80, 158, NULL, '1'),
(30, 107, '10', 3, 1377.00, 161, NULL, '1'),
(32, 109, '31', 5, 2894.25, 187, '1', '0'),
(33, 110, '18', 1, 861.90, 158, NULL, '1'),
(34, 111, '1', 1, 306.00, 158, NULL, '1'),
(35, 112, '8', 1, 397.80, 158, NULL, '1'),
(36, 113, '18', 1, 861.90, 158, NULL, '1'),
(37, 114, '18', 1, 861.90, 158, NULL, '1'),
(39, 115, '1', 1, 306.00, 158, NULL, '1'),
(40, 116, '1', 1, 306.00, 158, NULL, '1'),
(41, 117, '8', 1, 397.80, 158, NULL, '1'),
(42, 118, '8', 1, 397.80, 158, NULL, '1'),
(43, 118, '17', 2, 408.00, 158, NULL, '1'),
(44, 119, '1', 1, 347.31, 158, NULL, '1'),
(45, 120, '1', 1, 347.31, 158, NULL, '1'),
(46, 121, '1', 1, 347.31, 158, NULL, '1'),
(47, 123, '1', 1, 347.31, 158, '0', '1'),
(48, 124, '1', 1, 347.31, 158, '0', '1'),
(49, 127, '1', 1, 347.31, 158, '0', '1'),
(50, 128, '1', 1, 347.31, 158, '0', '1'),
(51, 129, '1', 1, 347.31, 158, '0', '1'),
(52, 130, '1', 1, 347.31, 158, '0', '1'),
(53, 131, '1', 1, 347.31, 158, '0', '1'),
(54, 132, '1', 1, 347.31, 158, 'Book', '1'),
(55, 133, '1', 1, 347.31, 158, 'Book', '1'),
(56, 134, '1', 1, 347.31, 158, 'Book', '1'),
(57, 135, '1', 1, 347.31, 158, 'Book', '1'),
(58, 136, '1', 1, 347.31, 158, 'Book', '1'),
(59, 137, '1', 1, 347.31, 158, 'Book', '1'),
(60, 138, '1', 1, 347.31, 158, 'Book', '1'),
(61, 139, '1', 1, 347.31, 158, 'Book', '1'),
(62, 140, '1', 3, 1041.93, 158, 'Book', '1'),
(63, 141, '1', 2, 694.62, 158, 'Book', '1'),
(64, 142, '1', 2, 694.62, 158, 'Book', '1'),
(65, 143, '1', 1, 347.31, 158, 'Book', '1'),
(66, 144, '1', 1, 347.31, 158, 'Book', '1'),
(67, 145, '1', 1, 347.31, 158, 'Book', '1'),
(68, 146, '1', 1, 347.31, 158, 'Book', '1'),
(69, 147, '1', 1, 347.31, 158, 'Book', '1'),
(70, 148, '1', 1, 347.31, 158, 'Book', '1'),
(71, 149, '1', 1, 347.31, 158, 'Book', '1'),
(72, 150, '1', 1, 347.31, 158, 'Book', '1'),
(73, 151, '1', 1, 347.31, 158, 'Book', '1'),
(74, 152, '1', 1, 347.31, 158, 'Book', '1'),
(75, 153, '19', 2, 1750.00, 158, 'Book', '1'),
(76, 154, '19', 2, 1750.00, 158, 'Book', '1'),
(77, 155, '1', 1, 347.31, 158, 'Book', '1'),
(78, 156, '19', 1, 875.00, 158, 'Book', '1'),
(79, 157, '19', 2, 1750.00, 158, 'Book', '1'),
(80, 158, '19', 1, 875.00, 158, 'Book', '1'),
(81, 159, '19', 1, 875.00, 158, 'Book', '1'),
(82, 160, '19', 1, 875.00, 158, 'Book', '1'),
(83, 161, '19', 1, 875.00, 158, 'Book', '1'),
(84, 162, '19', 1, 875.00, 158, 'Book', '1'),
(85, 163, '19', 1, 875.00, 158, 'Book', '1'),
(86, 164, '19', 1, 875.00, 158, 'Book', '1'),
(87, 165, '19', 1, 875.00, 158, 'Book', '1'),
(88, 166, '1', 1, 347.31, 158, 'Book', '1'),
(89, 167, '11', 1, 450.00, 161, 'Book', '1'),
(90, 168, '19', 1, 875.00, 158, 'Book', '1'),
(91, 169, '19', 1, 875.00, 158, 'Book', '1'),
(92, 170, '10', 1, 450.00, 158, 'Book', '1'),
(93, 171, '19', 1, 875.00, 158, 'Book', '1'),
(94, 172, '19', 1, 875.00, 158, 'Book', '1'),
(95, 173, '19', 1, 875.00, 158, 'Book', '1'),
(96, 174, '19', 1, 875.00, 158, 'Book', '1'),
(97, 175, '19', 1, 875.00, 158, 'Book', '1'),
(98, 176, '19', 1, 875.00, 158, 'Book', '1'),
(99, 177, '19', 1, 875.00, 158, 'Book', '1'),
(100, 178, '19', 1, 875.00, 158, 'Book', '1'),
(101, 179, '19', 1, 875.00, 158, 'Book', '1'),
(102, 180, '19', 1, 875.00, 158, 'Book', '1'),
(103, 181, '19', 1, 875.00, 158, 'Book', '1'),
(104, 182, '19', 1, 875.00, 158, 'Book', '1'),
(105, 183, '19', 1, 875.00, 158, 'Book', '1'),
(106, 184, '19', 1, 875.00, 158, 'Book', '1'),
(107, 185, '19', 1, 875.00, 158, 'Book', '1'),
(108, 186, '19', 1, 875.00, 158, 'Book', '1'),
(109, 187, '19', 1, 875.00, 158, 'Book', '1'),
(110, 188, '3', 1, 1158.00, 187, '5', '1'),
(111, 189, '19', 1, 875.00, 158, 'Book', '1'),
(112, 190, '19', 1, 875.00, 158, 'Book', '1'),
(113, 191, '19', 1, 875.00, 158, 'Book', '1'),
(114, 192, '19', 1, 875.00, 158, 'Book', '1'),
(115, 193, '19', 1, 875.00, 158, 'Book', '1'),
(116, 194, '19', 1, 875.00, 158, 'Book', '1'),
(117, 195, '33', 2, 2065.50, 158, '1', '1'),
(118, 195, '3', 1, 200.00, 158, 'Book', '1'),
(119, 196, '19', 1, 875.00, 158, 'Book', '1'),
(120, 197, '19', 1, 875.00, 158, 'Book', '1'),
(121, 198, '19', 1, 875.00, 158, 'Book', '1'),
(122, 199, '10', 1, 450.00, 158, 'Book', '1'),
(123, 200, '19', 1, 875.00, 158, 'Book', '1'),
(124, 201, '19', 1, 875.00, 158, 'Book', '1'),
(125, 202, '19', 1, 875.00, 158, 'Book', '1'),
(126, 203, '19', 1, 875.00, 158, 'Book', '1'),
(128, 205, '34', 1, 2868.75, 198, '1', '1'),
(129, 206, '6', 1, 1377.00, 187, '5', '1'),
(130, 206, '3', 1, 1158.00, 187, '5', '1'),
(131, 207, '34', 1, 2868.75, 187, '1', '1'),
(132, 208, '35', 1, 1157.70, 187, '1', '0'),
(133, 209, '34', 1, 2868.75, 198, '1', '1'),
(134, 210, '34', 1, 2868.75, 199, '1', '1'),
(135, 211, '4', 1, 1389.24, 202, '1', '1'),
(136, 211, '35', 1, 1157.70, 202, '1', '1'),
(137, 212, '35', 1, 1157.70, 119, '1', '1'),
(138, 213, '35', 1, 1157.70, 198, '1', '1'),
(139, 214, '35', 1, 1157.70, 199, '1', '1'),
(140, 215, '35', 1, 1157.70, 198, '1', '1'),
(141, 216, '35', 1, 1157.70, 187, '1', '0'),
(142, 217, '35', 1, 1157.70, 198, '1', '1'),
(143, 218, '35', 1, 1157.70, 199, '1', '1'),
(144, 219, '19', 1, 875.00, 198, 'Book', '1'),
(145, 220, '6', 1, 1377.00, 198, '5', '1'),
(146, 221, '6', 1, 1377.00, 199, '5', '1'),
(147, 222, '35', 1, 1157.70, 202, '1', '1'),
(148, 223, '9', 1, 1020.00, 158, '5', '1'),
(149, 224, '19', 1, 875.00, 158, 'Book', '1'),
(150, 225, '11', 1, 1147.50, 158, '1', '1'),
(151, 226, '19', 1, 875.00, 158, 'Book', '1'),
(152, 227, '19', 1, 875.00, 202, 'Book', '1'),
(153, 228, '19', 1, 875.00, 158, 'Book', '1'),
(154, 229, '19', 1, 875.00, 158, 'Book', '1'),
(155, 230, '23', 1, 1147.50, 158, '1', '1'),
(156, 231, '35', 1, 1157.70, 158, '1', '1'),
(157, 232, '11', 1, 1147.50, 158, '1', '1'),
(158, 233, '11', 1, 1147.50, 158, '1', '1'),
(159, 234, '23', 1, 1147.50, 158, '1', '1'),
(160, 235, '23', 1, 1147.50, 158, '1', '1'),
(161, 236, '35', 1, 1157.70, 158, '1', '1'),
(162, 237, '19', 1, 875.00, 158, 'Book', '1'),
(163, 238, '19', 1, 875.00, 158, 'Book', '1'),
(164, 239, '19', 1, 875.00, 158, 'Book', '1'),
(165, 240, '19', 1, 875.00, 158, 'Book', '1'),
(166, 241, '10', 1, 450.00, 158, 'Book', '1'),
(167, 242, '11', 1, 450.00, 158, 'Book', '1'),
(168, 243, '17', 1, 200.00, 158, 'Book', '1'),
(169, 244, '10', 1, 450.00, 158, 'Book', '1'),
(170, 245, '17', 1, 200.00, 158, 'Book', '1'),
(171, 246, '8', 1, 390.00, 158, 'Book', '1'),
(172, 246, '15', 1, 390.00, 158, 'Book', '1'),
(173, 247, '11', 1, 450.00, 158, 'Book', '1'),
(174, 248, '17', 1, 200.00, 158, 'Book', '1'),
(175, 249, '17', 1, 200.00, 158, 'Book', '1'),
(176, 250, '17', 2, 400.00, 164, 'Book', '1'),
(177, 251, '36', 1, 1157.70, 204, '1', '1'),
(178, 252, '31', 1, 578.85, 205, '1', '1'),
(179, 253, '38', 1, 19354.50, 198, '1', '1'),
(180, 254, '38', 1, 19354.50, 207, '1', '1'),
(181, 255, '37', 1, 5865.00, 207, '1', '1'),
(182, 256, '24', 1, 1389.24, 207, '1', '1'),
(184, 258, '12', 1, 1147.50, 203, '1', '0'),
(185, 259, '24', 1, 1389.24, 207, '1', '1'),
(186, 260, '37', 1, 5865.00, 187, '1', '1'),
(187, 261, '37', 1, 5865.00, NULL, '1', '1'),
(188, 262, '37', 1, 5865.00, NULL, '1', '1'),
(189, 263, '37', 1, 5865.00, NULL, '1', '1'),
(190, 264, '37', 1, 5865.00, 204, '1', '1'),
(191, 265, '37', 1, 5865.00, NULL, '1', '1'),
(192, 266, '37', 1, 5865.00, NULL, '1', '1'),
(193, 267, '37', 1, 5865.00, 199, '1', '1'),
(194, 268, '37', 1, 5865.00, 199, '1', '1'),
(195, 269, '37', 1, 5865.00, 198, '1', '1'),
(196, 270, '37', 1, 5865.00, 202, '1', '1'),
(197, 271, '37', 1, 5865.00, 209, '1', '1'),
(198, 272, '10', 1, 1147.50, 203, '1', '1'),
(199, 273, '37', 1, 5865.00, 203, '1', '1'),
(200, 274, '19', 1, 875.00, 187, 'Book', '1'),
(201, 275, '11', 1, 450.00, 187, 'Book', '1'),
(202, 276, '19', 1, 875.00, 187, 'Book', '1'),
(203, 277, '19', 1, 875.00, 187, 'Book', '1'),
(204, 278, '19', 1, 875.00, 211, 'Book', '1'),
(205, 279, '39', 1, 1157.70, 187, '1', '1'),
(206, 280, '40', 1, 1389.24, 214, '1', '1'),
(207, 281, '35', 1, 1157.70, 204, '1', '1'),
(208, 282, '40', 1, 1389.24, 217, '1', '1'),
(209, 283, '35', 1, 1157.70, 212, '1', '1'),
(210, 284, '42', 1, 1147.50, 158, '1', '1'),
(211, 285, '41', 1, 1147.50, 165, '1', '1'),
(212, 286, '54', 1, 0.00, 20000029, '1', '1'),
(213, 287, '16', 1, 1147.50, 20000024, '1', '1'),
(214, 288, '15', 1, 1491.75, 20000030, '1', '1'),
(215, 289, '15', 1, 1491.75, 20000030, '1', '1'),
(216, 290, '20', 1, 1157.70, 20000032, '1', '1'),
(217, 291, '20', 1, 1157.70, 20000031, '1', '0'),
(218, 292, '18', 1, 1377.00, 20000022, '1', '1'),
(219, 293, '19', 1, 1491.75, 20000022, '1', '1'),
(220, 294, '21', 1, 1389.24, 20000031, '1', '0'),
(221, 295, '21', 1, 1389.24, 20000031, '1', '0'),
(222, 296, '20', 1, 1157.70, 20000031, '1', '1'),
(223, 297, '22', 1, 1491.75, 20000031, '1', '1'),
(224, 298, '24', 1, 1389.24, 20000033, '1', '1'),
(225, 299, '25', 1, 1157.70, 20000034, '1', '1'),
(226, 300, '27', 1, 1744.05, 20000035, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_by` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`id`, `title`, `team_name`, `image`, `created_by`, `status`, `updated_by`) VALUES
(6, 'Founder/Chief Executive Officer', 'Farhan Qazi', 'http://skywart.com/my-assets/image/team/f6d672dafb7fb243ef5af7db940f5c21.jpeg', '2021-01-18 00:00:00', 0, '2021-05-03 00:00:00'),
(7, 'Chief Executive Officer', 'Sufia Siddiqui', 'http://skywart.com/my-assets/image/team/c9e2279a219a015dc402e5ae8d9061e4.jpeg', '2021-01-18 00:00:00', 0, '2021-05-03 00:00:00'),
(8, 'Chief Managing Officer', 'Shreevats Joshi', 'http://scsy.in/school/my-assets/image/team/34a05477f2cfcd368e1e0b3da98ddeb8.jpg', '2021-01-18 00:00:00', 0, '2021-02-20 00:00:00'),
(9, 'Chief Managing Officer', 'Tushar Bisht', 'http://scsy.in/school/my-assets/image/team/6e22cdd89ca9b140eac484012ecda1e2.jpg', '2021-01-18 00:00:00', 0, '2021-02-20 00:00:00'),
(10, 'Chief Financial Officer', 'Shahnawaz Qazi', 'http://skywart.com/my-assets/image/team/fa305744bb7f7f2b18b568031470a005.jpeg', '2021-01-18 00:00:00', 0, '2021-05-03 00:00:00'),
(11, 'Chief Marketing Officer', 'K.K Shukla', 'http://skywart.com/my-assets/image/team/6c62bb1bde06d8fca3649b247525d1dc.jpeg', '2021-01-18 00:00:00', 0, '2021-05-03 00:00:00'),
(12, 'Head Social Media Department', 'Mansi Bajpayee', 'http://skywart.com/my-assets/image/team/8771ba051bb694e6b1d527c259f47cff.jpeg', '2021-01-18 00:00:00', 0, '2021-05-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `parent_name` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `parent_name`, `role_id`, `username`, `password`, `mobile_number`, `email`, `state`, `city`, `zip`, `country`, `address`, `status`, `created_by`, `updated_by`) VALUES
(1, 'parentssssssss', 4, 'admin1234', '12341234', '3324323333333', 'test@gmail.vom', 2, 25, '342343', 'sdfsdf', 'dfsdfsdfsd', 0, '2020-10-27 00:00:00', '2020-10-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL,
  `start_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `end_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personal_loan`
--

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` decimal(12,2) DEFAULT 0.00,
  `credit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_information`
--

CREATE TABLE `person_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_ledger`
--

CREATE TABLE `person_ledger` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pesonal_loan_information`
--

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `category_name`, `status`) VALUES
(1, 'T8LV5UIAFON948J', 'Men Sports', 1),
(2, '3MWGRYHNFJB424T', 'Men Canvas', 1),
(3, 'CTLEBDFRBNOLS7R', 'Men Formal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `tax` float DEFAULT NULL COMMENT 'Tax in %',
  `serial_no` varchar(200) DEFAULT NULL,
  `product_model` varchar(100) DEFAULT NULL,
  `product_details` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`) VALUES
(1, '77953292', 'T8LV5UIAFON948J', 'Nike Shoe', 750, '1 Jodi', 0, '10', 'Sports', '', 'http://scsy.in/saleserp/./my-assets/image/product/248f7e62ef68d9f259e40e28c2284cf9.jpeg', 1),
(2, '98849194', 'T8LV5UIAFON948J', 'Adidas Shoes', 800, '1 Jodi', 0, '11', 'Sports', '', 'http://scsy.in/saleserp/./my-assets/image/product/1d67dded0da261c03d66b00b862b7bce.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

CREATE TABLE `product_purchase` (
  `id` int(11) NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `due_amount` decimal(10,2) DEFAULT 0.00,
  `total_discount` decimal(10,2) DEFAULT NULL,
  `purchase_date` varchar(50) DEFAULT NULL,
  `purchase_details` text DEFAULT NULL,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase`
--

INSERT INTO `product_purchase` (`id`, `purchase_id`, `chalan_no`, `supplier_id`, `grand_total_amount`, `paid_amount`, `due_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `bank_id`, `payment_type`) VALUES
(1, 20201003184124, 'INV1', 2, 6000.00, 6000.00, 0.00, 0.00, '2020-10-03', '', 1, '', 1),
(2, 20201003184830, '', 1, 6500.00, 6500.00, 0.00, 0.00, '2020-10-03', '', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `id` int(11) NOT NULL,
  `purchase_detail_id` varchar(100) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase_details`
--

INSERT INTO `product_purchase_details` (`id`, `purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `discount`, `status`) VALUES
(1, 'wkIQKIACL1wIbca', 20201003184124, '98849194', 10.00, 600.00, 6000.00, 0, 1),
(2, 'EXS9qlOnssTL5AE', 20201003184830, '77953292', 10.00, 650.00, 6500.00, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE `product_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_purchase` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `customer_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `deduction` float NOT NULL,
  `total_deduct` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_return`
--

INSERT INTO `product_return` (`return_id`, `product_id`, `invoice_id`, `purchase_id`, `date_purchase`, `date_return`, `byy_qty`, `ret_qty`, `customer_id`, `supplier_id`, `product_rate`, `deduction`, `total_deduct`, `total_tax`, `total_ret_amount`, `net_total_amount`, `reason`, `usablity`) VALUES
('165628394514356', '98849194', '8622677292', NULL, '2020-10-03', '2020-10-03', 1, 1, '2', '', 800.00, 0, 0.00, 0.00, 800.00, 800.00, 'Not fit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_service`
--

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(20) NOT NULL,
  `quotation_id` varchar(30) NOT NULL,
  `quot_description` text NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `quotdate` date NOT NULL,
  `expire_date` date DEFAULT NULL,
  `item_total_amount` decimal(12,2) NOT NULL,
  `item_total_dicount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_total_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quot_dis_item` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quot_dis_service` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quot_no` varchar(50) NOT NULL,
  `create_by` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `cust_show` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_service_used`
--

CREATE TABLE `quotation_service_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(20) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_taxinfo`
--

CREATE TABLE `quotation_taxinfo` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quot_products_used`
--

CREATE TABLE `quot_products_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `used_qty` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `request_module`
--

CREATE TABLE `request_module` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `cat_id` varchar(15) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_module`
--

INSERT INTO `request_module` (`id`, `module_id`, `cat_id`, `name`, `email`, `phone`, `description`) VALUES
(1, 28, NULL, 'Test', 'teststudent@gmail.com', '07896785675', 'a'),
(2, 28, NULL, 'Dheeraj kumar', 'dheerajkg8931@gmail.com', '07896785675', 'h'),
(3, 4, NULL, 'Yash raj', 'yash_raj17@yahoo.com', '8630945594', 'I need to ask, what is the time duration of this course.\nLike 4 weeks or 6 weeks how long.\nAnd please tell me the course Details also. Like, the syllabus and curriculum of the course.\n'),
(4, 32, NULL, 'Sanjay ', 'info.skywart@gmail.com', '4545451512', 'I just want to ask is this the per month fees or whole course fees ? '),
(5, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(6, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(7, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(8, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(9, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(10, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(11, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(12, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(13, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(14, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(15, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'c'),
(16, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'a'),
(17, 5, 'Counsellor', 'Dheeraj', 'admin12121@gmail.com', '07896785675', 'a'),
(18, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'asd'),
(19, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'asd'),
(20, 2, 'Counsellor', 'Test', 'teststudent@gmail.com', '07896785675', 'asd'),
(21, 10, NULL, 'ELearning Enquiry', 'teststudent@gmail.com', '07896785675', '1'),
(22, 8, 'Counsellor', 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', 'hello\n'),
(23, 10, NULL, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', 'Too costly your course fees, Any discounts or refer coupon code.\nOnly for inquiry purpose'),
(24, 10, NULL, 'Farhan Quazi', 'farhan9936@gmail.com', '09936930509', 'PLEASE LET ME KNOW ABOUT YOUR CURRICULUM.'),
(25, 10, NULL, 'Farhan Quazi', 'farhan9936@gmail.com', '09936930509', 'PLEASE LET ME KNOW ABOUT YOUR CURRICULUM.'),
(26, 34, NULL, 'Nadeem Ashraf', 'test@gmail.com', '99999999', 'Enquiry'),
(27, 35, NULL, 'Yashraj Singh', 'yash_raj17@yahoo.com', '08630945594', 'This is regarding the exams, does the question paper contains a MAP question???\n'),
(28, 35, NULL, 'Farhan Quazi', 'farhan9936@gmail.com', '09936930509', 'please let me know about your curriculum.'),
(29, 35, NULL, 'Farhan Quazi', 'farhan9936@gmail.com', '09936930509', 'please let me know about your curriculum.'),
(30, 34, NULL, 'deepanshu', 'asfaesfa@ewfsdf.com', '12546666', 'hey,'),
(31, 9, 'Counsellor', 'Nadeem', 'test@gmail.com', '99999999', 'TEst'),
(32, 9, 'Counsellor', 'deepanshu', 'scasdasd@gmail.com', '1234567895', 'hi'),
(33, 10, NULL, 'Test', 'teststudent@gmail.com', '07896785675', 'gh'),
(34, 36, NULL, 'Dheeraj', 'dheerajkg8931@gmail.com', '07896785675', 'Welcome to Skywart family. Welcome to Skywart family. Welcome to Skywart family. Welcome to Skywart family. Welcome to Skywart family. Welcome to Skywart family. Welcome to Skywart family. Welcome to Skywart family. Welcome to Skywart family. '),
(35, 37, NULL, 'Krishna', 'Krishna@gmail.com', '+91 2233445566', 'I want explore your course'),
(36, 37, NULL, 'Radhe', 'radhe@gmail.com', '+91 8899665522', 'I want to explore your course'),
(37, 37, NULL, 'Shivam', 'shivam@gmail.com', '+91 7788994455', 'I want to explore your course'),
(38, 38, NULL, 'Nadeem ', 'test@gmail.com', '9999999999', 'Want to know something...'),
(39, 38, NULL, 'Ashraf', 'test@gmail.com', '9999999999', 'Kuch jaanna hai hame...'),
(40, 38, NULL, 'Unity', 'unity@gmail.cmo', '787878787878', 'hello ?'),
(41, 10, NULL, 'Test', 'raj@gmail.com', '07896785675', 'n'),
(42, 10, NULL, 'Test', 'raj@gmail.com', '07896785675', 'n'),
(43, 36, NULL, 'Test', 'test@gmail.com', '07896785675', 'nmb'),
(44, 36, NULL, 'product one', 'teststudent@gmail.com', '91 –98409 12125 ', 'nm'),
(45, 37, NULL, 'Nadeem Ashraf', 'test@gmail.com', '9999999999', 'Test Enquiry'),
(46, 37, NULL, 'Yaduvansh Aviral', 'yaduaviral@gmail.com', '08840792775', 'Demo 1'),
(47, 56, NULL, 'Shreevats Joshi', 'pythonandmachinelearning@gmail.com', 'kllknln', 'Testing'),
(48, 57, NULL, 'Shreevats Joshi', 'pythonandmachinelearning@gmail.com', '9966554433', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

CREATE TABLE `salary_type` (
  `salary_type_id` int(11) NOT NULL,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scholarshipzone`
--

CREATE TABLE `scholarshipzone` (
  `id` int(11) NOT NULL,
  `scholarship_name` varchar(100) NOT NULL,
  `login_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarshipzone`
--

INSERT INTO `scholarshipzone` (`id`, `scholarship_name`, `login_id`, `url`, `description`, `image`, `status`, `is_active`, `created_by`, `updated_by`) VALUES
(2, 'Abhishek Tiwari', 0, 'https://permionics.com/', 'Abhishek', '', 1, 1, '2020-12-24 00:00:00', '2020-12-24 00:00:00'),
(3, 'xcbvcnbvcbvcbv', 29, 'https://permionics.com/', 'vbcbvcbvc', '', 1, 0, '2021-01-02 00:00:00', '2021-01-02 00:00:00'),
(4, 'Abhishek Tiwari', 29, 'http://skywart.com/', 'bxfkjghdkfjgfd', 'http://skywart.com/./my-assets/image/scholar/335624d6aa489b5b53f63b6c74dd3a62.png', 1, 0, '2021-01-02 00:00:00', '0000-00-00 00:00:00'),
(5, 'Testing Scholarship', 54, 'xyz.xyz', 'testing testing', 'http://skywart.com/./my-assets/image/scholar/4ecf5aaec43cfa06e5d14064dec57652.jpg', 0, 0, '2021-01-02 00:00:00', '0000-00-00 00:00:00'),
(6, 'Testing Scholarship', 54, 'https://permionics.com/', 'Testing Scholarship', 'http://skywart.com/./my-assets/image/scholar/2a5fb75c0df7075570c88eb8a26b1314.JPG', 0, 0, '2021-01-08 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `school_code` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile_number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `zip` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `address2` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` date NOT NULL,
  `updated_by` date DEFAULT NULL,
  `company_name` varchar(100) NOT NULL,
  `pannumber` varchar(100) NOT NULL,
  `gstnumber` varchar(100) NOT NULL,
  `accountnumber` varchar(100) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `beneficiary` varchar(100) NOT NULL,
  `meetlink` varchar(100) NOT NULL,
  `address_proof` varchar(100) NOT NULL,
  `gstin` varchar(100) NOT NULL,
  `pancopy` varchar(100) NOT NULL,
  `eheque` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `school_code`, `role_id`, `school_name`, `lang_id`, `username`, `is_active`, `password`, `mobile_number`, `email`, `fax`, `state`, `city`, `zip`, `country`, `address`, `address2`, `status`, `created_by`, `updated_by`, `company_name`, `pannumber`, `gstnumber`, `accountnumber`, `ifsc`, `bankname`, `beneficiary`, `meetlink`, `address_proof`, `gstin`, `pancopy`, `eheque`) VALUES
(8, 123, 5, 'Indian Public School', 0, 'ips', 1, '123123', '8826279802', 'rdpk864@gmail.com', 'ew', 10, 218, 841804, 'India', 'siwan', 'siwan', 1, '2020-11-01', NULL, '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 10101, 8, 'Test School', 0, 'admin1q234@example.com', 1, '123123', '0000000000', 'school@gmail.com', '1231231', 5, 65, 0, 'India', 'test', 'twst', 1, '2020-11-02', NULL, '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 9999, 8, 'Skywart Smart School', 0, 'Skywart ', 1, 'skywart', '9936930509', 'skywartgroup@gmail.com', '226921', 9, 157, 226021, 'India', 'aliganj', 'aliganj', 1, '2020-11-09', NULL, '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 11111, 8, 'Skywart Smart School', 0, '11111', 1, '11111', '9936930509', 'skywartgroup@gmail.com', '11111', 9, 157, 226021, 'India', 'aliganj', 'aliganj', 0, '2020-12-23', NULL, '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 98098, 8, 'Abhishek Tiwari', 0, 'tiwarisanny93@gmail.com', 1, '123123', '08267826795', 'tiwarisanny93@gmail.com', '', 14, 274, 110096, '', 'd 113 b\r\nnew ashok nagar', '', 0, '2021-01-16', NULL, 'test company', 'euwrgjweg', 'werewrew', 'sdjfbdsmbfm', 'dsfdsfdsf', 'mvbnvnb', 'ghjfgsdfdsf', 'http://skywart.com/', 'http://skywart.com/./my-assets/image/vendor/bdba9d0a446f8d6b0684a33dcc03d067.png', 'http://skywart.com/./my-assets/image/vendor/7a882916ad4da13e643d9378b50b95a7.png', 'http://skywart.com/./my-assets/image/vendor/ebeb9ac0a6193cb99df6974c01976a53.png', 'http://skywart.com/./my-assets/image/vendor/99f63d899e12b0043ddddb30f151f4a4.png'),
(41, 81722, 8, 'Waqar', 0, 'waqar@waqar.com', 1, 'waqar@waqar.com', '9876543212', 'waqar@waqar.com', '', 7, 93, 110092, '', 'waqar@waqar.com', '', 0, '2021-03-10', NULL, 'waqar@waqar.com', 'waqar@waqar.com', 'waqar@waqar.com', 'waqar@waqar.com', 'waqar@waqar.com', 'waqar@waqar.com', 'waqar@waqar.com', 'waqar@waqar.com', 'http://skywart.com/./my-assets/image/school/3b7ddafcd97127a6bb82621087a7d545.png', 'http://skywart.com/./my-assets/image/school/cc3b1ad8a0df9271f4a5e9a217ed7d3c.png', 'http://skywart.com/./my-assets/image/school/8d941e89186603bc54342334ac539b36.png', 'http://skywart.com/./my-assets/image/school/4dcd4760425e52fa284b4364fca008b4.png');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `class_id`, `section`, `status`, `created_by`, `updated_by`) VALUES
(1, 1, 'V', 0, '2020-10-18 00:00:00', '2020-10-18 00:00:00'),
(2, 2, '2', 0, '2020-10-18 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice`
--

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `previous` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice_details`
--

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `api_secret` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT 0,
  `isservice` int(11) NOT NULL DEFAULT 0,
  `isreceive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `api_key`, `api_secret`, `from`, `isinvoice`, `isservice`, `isreceive`) VALUES
(1, '5d6db102011', '456452dfgdf', '8801645452', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `stcode` varchar(2) NOT NULL,
  `stname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stcode`, `stname`) VALUES
('01', 'Jammu & Kashmir'),
('02', 'Himachal Pradesh'),
('03', 'Punjab'),
('04', 'Chandigarh'),
('05', 'Uttaranchal'),
('06', 'Haryana'),
('07', 'NCT Of Delhi'),
('08', 'Rajasthan'),
('09', 'Uttar Pradesh'),
('10', 'Bihar'),
('11', 'Sikkim'),
('12', 'Arunachal Pradesh'),
('13', 'Nagaland'),
('14', 'Manipur'),
('15', 'Mizoram'),
('16', 'Tripura'),
('17', 'Meghalaya'),
('18', 'Assam'),
('19', 'West Bengal'),
('20', 'Jharkhand'),
('21', 'Orissa'),
('22', 'Chhattisgarh'),
('23', 'Madhya Pradesh'),
('24', 'Gujarat'),
('25', 'Daman & Diu (UT)'),
('26', 'Dadra & Nagar Haveli'),
('27', 'Maharashtra'),
('28', 'Andhra Pradesh'),
('29', 'Karnataka'),
('30', 'Goa'),
('31', 'Lakshadweep'),
('32', 'Kerala'),
('33', 'Tamil Nadu'),
('34', 'Puducherry'),
('35', 'Andaman & Nicobar Islands'),
('36', 'Telangana'),
('37', 'Ladakh');

-- --------------------------------------------------------

--
-- Table structure for table `student_register`
--

CREATE TABLE `student_register` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `student_mobile_number` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` datetime DEFAULT NULL,
  `update_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_register`
--

INSERT INTO `student_register` (`id`, `school_id`, `role_id`, `class_id`, `section`, `student_name`, `student_mobile_number`, `address`, `image`, `state`, `city`, `country`, `pin_code`, `email`, `dob`, `username`, `password`, `status`, `created_by`, `update_at`) VALUES
(8, 11, 3, 2, 2, 'farhan', '9936930509', 'iuhuiuiiuihiuhbi', NULL, 9, 157, 'india', NULL, 'farhan9936@gmail.com', '1995-01-16 00:00:00', 'farhan', 'farhan', 0, '2020-11-09 00:00:00', NULL),
(9, 5, 3, 3, 3, 'farhan1', '09936930509', 'aliganj', NULL, 9, 157, 'India', NULL, 'skywartgroup@gmail.com', '1995-12-01 00:00:00', 'farhan', 'fargab', 0, '2020-11-19 00:00:00', NULL),
(10, 0, 3, 0, 0, 'Abhishekstud', '4534534534', 'd 113 b', NULL, 17, 299, 'India', NULL, 'tiwarisanny93@gmail.com', '2020-12-02 00:00:00', 'stuabhi', '123123', 0, '2020-12-26 00:00:00', NULL),
(11, 0, 3, 0, 0, 'newuser', '8826555255', 'siwan', NULL, 10, 211, 'india', NULL, 'newuser@gmail.com', '2020-12-12 00:00:00', 'deepakuser', '123123', 0, '2020-12-26 00:00:00', NULL),
(12, 0, 10, 0, 0, 'Abhishek Tiwari', '08267826795', 'd 113 b', NULL, 4, 55, 'India', NULL, 'tiwarisanny93@gmail.com', '2020-12-09 00:00:00', 'testuser1', '123123', 0, '2020-12-27 00:00:00', NULL),
(13, 0, 10, 0, 0, 'neuser4', '39492349', 'ksjdfks', NULL, 10, 218, 'india', NULL, 'rdpk@wgmail.com', '2021-01-03 00:00:00', 'newuser4', '123123', 0, '2020-12-27 00:00:00', NULL),
(14, 0, 10, 0, 0, 'testing', '7896541236', '123', NULL, 9, 157, 'india', NULL, 'test@test123.com', '2013-01-28 00:00:00', 'test@test123.com', 'test@test123.com', 0, '2020-12-27 00:00:00', NULL),
(15, 0, 10, 0, 0, 'qwerty', '7418529632', 'Lucknow', NULL, 9, 157, 'India', NULL, 'qwerty@qwerty.com', '2005-05-29 00:00:00', 'qwerty@qwerty.com', 'qwerty@qwerty.com', 0, '2020-12-29 00:00:00', NULL),
(16, 0, 10, 0, 0, 'rentpurchase', '9874563214', 'rentpurchase', NULL, 9, 157, 'india', NULL, 'rentpurchase@rentpurchase.com', '2015-01-29 00:00:00', 'rentpurchase@rentpurchase.com', 'rentpurchase@rentpurchase.com', 0, '2020-12-29 00:00:00', NULL),
(17, 0, 10, 0, 0, 'Harsh', '9811656375', 'asdadasd', NULL, 7, 93, 'india', NULL, 'harshsachdeva.er@gmail.com', '1992-07-30 00:00:00', 'test', 'test@123', 0, '2020-12-31 00:00:00', NULL),
(18, 0, 10, 0, 0, 'testuser12', '8879354124', 'noida', NULL, 5, 57, 'India', NULL, 'testuser12@gmail.com', '1995-10-17 00:00:00', 'testuser12', '123123', 0, '2021-01-01 00:00:00', NULL),
(19, 0, 10, 0, 0, 'Abhishek Tiwari', '08267826795', 'd 113 b\r\nnew ashok nagar', NULL, 4, 55, '', NULL, 'tiwarisanny93@gmail.com', '0000-00-00 00:00:00', 'tiwarisanny93@gmail.com', '123123', 0, '2021-01-16 00:00:00', NULL),
(20, 0, 10, 0, 0, 'Abhishek Tiwari', '08267826795', 'd 113 b\r\nnew ashok nagar', NULL, 4, 55, '', NULL, 'tiwarisanny93@gmail.com', '0000-00-00 00:00:00', 'tiwarisanny93@gmail.com', '123123', 0, '2021-01-16 00:00:00', NULL),
(21, 0, 10, 0, 0, 'tarak', '2222222222', 'lko', NULL, 9, 157, '', NULL, 'tarak@gmail.com', '0000-00-00 00:00:00', 'tarak@gmail.com', 'password', 0, '2021-01-22 00:00:00', NULL),
(35, 0, 10, NULL, NULL, 'good', '7398530808', 'gorakhpur', NULL, 0, 0, NULL, NULL, 'good@gmail.com', NULL, 'good@gmail.com', '654321', 0, '2021-04-03 00:00:00', NULL),
(36, 0, 10, NULL, NULL, 'deepankar mishra', '6391263608', '14/326 vikas nagar lucknow', NULL, 9, 157, NULL, NULL, 'deepankarm10@gmail.com', NULL, 'deepankarm10@gmail.com', '123456', 0, '2021-04-06 00:00:00', NULL),
(37, 0, 10, NULL, NULL, 'Shweta Dwivedi', '9839677737', '2/251 Nawab Ganj Kanpur', NULL, 9, 164, NULL, NULL, 'shweta200995@gmail.com', NULL, 'shweta200995@gmail.com', 'shweta1984', 0, '2021-04-13 00:00:00', NULL),
(39, 0, 10, NULL, NULL, '16042021', '7896785675', 'Lucknow', NULL, 2, 18, '', NULL, 'user16042021@gmail.com', NULL, 'user16042021@gmail.com', '123456', 0, '2021-04-16 00:00:00', '21-05-10'),
(40, 0, 10, NULL, NULL, '1904', '07896785675', 'Lucknow', NULL, 9, 185, NULL, NULL, '1904@gmail.com', NULL, '1904@gmail.com', 'Skywart#680', 0, '2021-04-19 00:00:00', NULL),
(41, 0, 10, NULL, NULL, 'Dheeraj', '7896785675', 'Lucknow', NULL, 9, 1, '', NULL, 'user22@gmail.com', NULL, 'user22@gmail.com', '123456', 0, '2021-04-22 00:00:00', '21-05-05'),
(42, 0, 10, NULL, NULL, 'sanjay ', '7985570425', 'Lucknow , UP', NULL, 5, 64, NULL, NULL, 'info.skywart@gmail.com', NULL, 'info.skywart@gmail.com', '12345', 0, '2021-04-22 00:00:00', NULL),
(43, 0, 10, NULL, NULL, 'User22', '07896785675', 'Lucknow', NULL, 9, 198, NULL, NULL, 'user2204@gmail.com', NULL, 'user2204@gmail.com', '123456', 0, '2021-04-22 00:00:00', NULL),
(44, 0, 10, NULL, NULL, 'yes', '7896785675', 'Lucknow k', NULL, 9, 183, '', NULL, 'u87@gmail.com', NULL, 'u123987@gmail.com', '123', 0, '2021-04-22 00:00:00', '21-04-22'),
(45, 0, 10, NULL, NULL, 'Yashraj ', '8630945594', '243 Subhash Nagar meerut', NULL, 9, 138, NULL, NULL, 'yash_raj17@yahoo.com', NULL, 'yash_raj17@yahoo.com', 'Skywart#434', 0, '2021-04-30 00:00:00', NULL),
(46, 0, 10, NULL, NULL, 'Nadeem', '9999999999', 'Test Address, Test Street,Test Address, Test Street,Test Address, Test Street,Test Address, Test Str', NULL, 9, 157, '', NULL, 'test@gmail.com', NULL, 'test@gmail.com', '12345678', 0, '2021-05-23 00:00:00', '21-05-23'),
(47, 0, 10, NULL, NULL, 'deepanshu', '7845621235', 'aefaefasfcasdcasfef', NULL, 0, 0, NULL, NULL, 'asdf@gmail.com', NULL, 'asdf@gmail.com', '123456', 0, '2021-05-23 00:00:00', NULL),
(48, 0, 10, NULL, NULL, 'Farhan Qazi', '09936930509', 'aliganj', NULL, 9, 157, NULL, NULL, 'farhan9936@gmail.com', NULL, 'farhan9936@gmail.com', '123123', 0, '2021-05-23 00:00:00', NULL),
(49, 0, 10, NULL, NULL, 'Raj User', '3456789', 'Lucknow', NULL, 0, 0, NULL, NULL, 'RajUser@gmail.com', NULL, 'RajUser@gmail.com', '123456', 0, '2021-06-02 00:00:00', NULL),
(50, 0, 10, NULL, NULL, 'Harsh Vardhan', '789456123', 'DS/7 Sector-C', NULL, 9, 157, NULL, NULL, 'harshvardhan@gmail.com', NULL, 'harshvardhan@gmail.com', '123456789', 0, '2021-06-03 00:00:00', NULL),
(51, 0, 10, NULL, NULL, 'N', '22', 'Aa', NULL, 0, 0, NULL, NULL, 'N@a.com', NULL, 'N@a.com', 'test@123', 0, '2021-06-04 00:00:00', NULL),
(52, 0, 10, NULL, NULL, 'Mohd mujeeb', '9648329208', 'Indra Nagar, Sector 16', NULL, 9, 0, NULL, NULL, 'mdmujibraza732@gmail.com', NULL, 'mdmujibraza732@gmail.com', 'Mujeeb@2021', 0, '2021-06-11 00:00:00', NULL),
(53, 0, 10, NULL, NULL, 'Tushar Bisht', '752345645', 'dfddggdgdgddg', NULL, 0, 0, NULL, NULL, 'tushar@gmail.com', NULL, 'tushar@gmail.com', '12345', 0, '2021-06-15 00:00:00', NULL),
(54, 0, 10, NULL, NULL, 'Vaasu Joshi', '9454429422', 'DS/7 Sector-C', NULL, 9, 157, NULL, NULL, 'mnrvjoshi@gmail.com', NULL, 'mnrvjoshi@gmail.com', 'messi10ronaldo7', 0, '2021-06-15 00:00:00', NULL),
(55, 0, 10, NULL, NULL, 'Neha Mishra ', '454555151', 'dgddggdgddggd', NULL, 0, 0, NULL, NULL, 'neha@gmail.com', NULL, 'neha@gmail.com', '1234', 0, '2021-06-21 00:00:00', NULL),
(56, 0, 10, NULL, NULL, 'Raj User', '34567894353', 'Lucknow', 'http://8bittask.com/skydeploy/./my-assets/image/student/6e7ea8e4cdfc0aac00b686b82c738744.png', 0, 1, '', 0, 'usertest@gmail.com', NULL, 'usertest@gmail.com', '123456', 0, '2021-07-03 00:00:00', '21-07-05'),
(57, 0, 10, NULL, NULL, 'Raj User', '1113456789', 'Lucknow', 'http://8bittask.com/skydeploy/./my-assets/image/student/12724f31e4f177f68fa7c9d4df5144f9.png', 22, 414, NULL, NULL, 'test2@gmail.com', NULL, 'test2@gmail.com', '123456', 0, '2021-07-03 00:00:00', NULL),
(58, 0, 10, NULL, NULL, 'Raj User', '345678911', 'Lucknow', 'https://8bittask.com/skydeploy/my-assets/image/teacher/3edd4dd66a1059b66bd1c920a8f682f8.jpeg', 6, 1, 'India', 273413, 'test123@manager.com', NULL, 'test123@manager.com', '12', 0, '2021-07-03 00:00:00', '21-07-06'),
(59, 0, 10, NULL, NULL, 'Karan Joshi', '789456123', 'DS/7 Sector-C', 'http://8bittask.com/skydeploy/./my-assets/image/student/01cb7d89a56b941642487ee66cfd8814.jpeg', 9, 157, 'India', 226021, 'xyz@gmail.com', NULL, 'xyz@gmail.com', 'password', 0, '2021-07-04 00:00:00', NULL),
(60, 0, 10, NULL, NULL, 'Raj Sahu ', '545451212', 'Lucknow ', 'http://8bittask.com/skydeploy/./my-assets/image/student/fff6fc098635b23701c00a72b8971fa0.png', 0, 0, '', 0, 'raj@gmail.com', NULL, 'raj@gmail.com', '1234', 0, '2021-07-04 00:00:00', NULL),
(61, 0, 10, NULL, NULL, 'Tushar Bisht ', '5555555555', 'Ask Lucknow ', NULL, 0, 0, '', 0, 'tush@gmail.com', NULL, 'tush@gmail.com', '1234', 0, '2021-07-06 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(1, 'English'),
(2, 'Hindi'),
(3, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `sub_module`
--

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 1, 'new_invoice', NULL, NULL, 'new_invoice', 1),
(2, 1, 'manage_invoice', NULL, NULL, 'manage_invoice', 1),
(3, 1, 'pos_invoice', NULL, NULL, 'pos_invoice', 1),
(4, 9, 'c_o_a', NULL, NULL, 'show_tree', 1),
(5, 9, 'supplier_payment', NULL, NULL, 'supplier_payment', 1),
(6, 9, 'customer_receive', NULL, NULL, 'customer_receive', 1),
(7, 9, 'debit_voucher', NULL, NULL, 'debit_voucher', 1),
(8, 9, 'credit_voucher', NULL, NULL, 'credit_voucher', 1),
(9, 9, 'voucher_approval', NULL, NULL, 'aprove_v', 1),
(10, 9, 'contra_voucher', NULL, NULL, 'contra_voucher', 1),
(11, 9, 'journal_voucher', NULL, NULL, 'journal_voucher', 1),
(12, 9, 'report', NULL, NULL, 'ac_report', 1),
(13, 9, 'cash_book', NULL, NULL, 'cash_book', 1),
(14, 9, 'Inventory_ledger', NULL, NULL, 'inventory_ledger', 1),
(15, 9, 'bank_book', NULL, NULL, 'bank_book', 1),
(16, 9, 'general_ledger', NULL, NULL, 'general_ledger', 1),
(17, 9, 'trial_balance', NULL, NULL, 'trial_balance', 1),
(18, 9, 'cash_flow', NULL, NULL, 'cash_flow_report', 1),
(19, 9, 'coa_print', NULL, NULL, 'coa_print', 1),
(21, 3, 'category', NULL, NULL, 'manage_category', 1),
(22, 3, 'add_product', NULL, NULL, 'create_product', 1),
(23, 3, 'import_product_csv', NULL, NULL, 'add_product_csv', 1),
(24, 3, 'manage_product', NULL, NULL, 'manage_product', 1),
(25, 2, 'add_customer', NULL, NULL, 'add_customer', 1),
(26, 2, 'manage_customer', NULL, NULL, 'manage_customer', 1),
(27, 2, 'credit_customer', NULL, NULL, 'credit_customer', 1),
(28, 2, 'paid_customer', NULL, NULL, 'paid_customer', 1),
(30, 3, 'unit', NULL, NULL, 'manage_unit', 1),
(31, 4, 'add_supplier', NULL, NULL, 'add_supplier', 1),
(32, 4, 'manage_supplier', NULL, NULL, 'manage_supplier', 1),
(33, 4, 'supplier_ledger', NULL, NULL, 'supplier_ledger_report', 1),
(35, 5, 'add_purchase', NULL, NULL, 'add_purchase', 1),
(36, 5, 'manage_purchase', NULL, NULL, 'manage_purchase', 1),
(37, 7, 'return', NULL, NULL, 'add_return', 1),
(38, 7, 'stock_return_list', NULL, NULL, 'return_list', 1),
(39, 7, 'supplier_return_list', NULL, NULL, 'supplier_return_list', 1),
(40, 7, 'wastage_return_list', NULL, NULL, 'wastage_return_list', 1),
(41, 11, 'tax_settings', NULL, NULL, 'tax_settings', 1),
(43, 6, 'stock_report', NULL, NULL, 'stock_report', 1),
(46, 8, 'closing', NULL, NULL, 'add_closing', 1),
(47, 8, 'closing_report', NULL, NULL, 'closing_report', 1),
(48, 8, 'todays_report', NULL, NULL, 'all_report', 1),
(49, 8, 'todays_customer_receipt', NULL, NULL, 'todays_customer_receipt', 1),
(50, 8, 'sales_report', NULL, NULL, 'todays_sales_report', 1),
(51, 8, 'due_report', NULL, NULL, 'retrieve_dateWise_DueReports', 1),
(52, 8, 'purchase_report', NULL, NULL, 'todays_purchase_report', 1),
(53, 8, 'purchase_report_category_wise', NULL, NULL, 'purchase_report_category_wise', 1),
(54, 8, 'sales_report_product_wise', NULL, NULL, 'product_sales_reports_date_wise', 1),
(55, 8, 'sales_report_category_wise', NULL, NULL, 'sales_report_category_wise', 1),
(56, 10, 'add_new_bank', NULL, NULL, 'add_bank', 1),
(57, 10, 'bank_transaction', NULL, NULL, 'bank_transaction', 1),
(58, 10, 'manage_bank', NULL, NULL, 'bank_list', 1),
(59, 14, 'generate_commission', NULL, NULL, 'commission', 1),
(60, 12, 'add_designation', NULL, NULL, 'add_designation', 1),
(61, 12, 'manage_designation', NULL, NULL, 'manage_designation', 1),
(62, 12, 'add_employee', NULL, NULL, 'add_employee', 1),
(63, 12, 'manage_employee', NULL, NULL, 'manage_employee', 1),
(64, 12, 'add_attendance', NULL, NULL, 'add_attendance', 1),
(65, 12, 'manage_attendance', NULL, NULL, 'manage_attendance', 1),
(66, 12, 'attendance_report', NULL, NULL, 'attendance_report', 1),
(67, 12, 'add_benefits', NULL, NULL, 'add_benefits', 1),
(68, 12, 'manage_benefits', NULL, NULL, 'manage_benefits', 1),
(69, 12, 'add_salary_setup', NULL, NULL, 'add_salary_setup', 1),
(70, 12, 'manage_salary_setup', NULL, NULL, 'manage_salary_setup', 1),
(71, 12, 'salary_generate', NULL, NULL, 'salary_generate', 1),
(72, 12, 'manage_salary_generate', NULL, NULL, 'manage_salary_generate', 1),
(73, 12, 'salary_payment', NULL, NULL, 'salary_payment', 1),
(74, 12, 'add_expense_item', NULL, NULL, 'add_expense_item', 1),
(75, 12, 'manage_expense_item', NULL, NULL, 'manage_expense_item', 1),
(76, 12, 'add_expense', NULL, NULL, 'add_expense', 1),
(77, 12, 'manage_expense', NULL, NULL, 'manage_expense', 1),
(78, 12, 'expense_statement', NULL, NULL, 'expense_statement', 1),
(79, 12, 'add_person_officeloan', NULL, NULL, 'add1_person', 1),
(80, 12, 'add_loan_officeloan', NULL, NULL, 'add_office_loan', 1),
(81, 12, 'add_payment_officeloan', NULL, NULL, 'add_loan_payment', 1),
(82, 12, 'manage_loan_officeloan', NULL, NULL, 'manage1_person', 1),
(83, 12, 'add_person_personalloan', NULL, NULL, 'add_person', 1),
(84, 12, 'add_loan_personalloan', NULL, NULL, 'add_loan', 1),
(85, 12, 'add_payment_personalloan', NULL, NULL, 'add_payment', 1),
(86, 12, 'manage_loan_personalloan', NULL, NULL, 'manage_person', 1),
(87, 15, 'manage_company', NULL, NULL, 'manage_company', 1),
(88, 15, 'add_user', NULL, NULL, 'add_user', 1),
(89, 15, 'manage_users', NULL, NULL, 'manage_user', 1),
(90, 15, 'language', NULL, NULL, 'add_language', 1),
(91, 15, 'currency', NULL, NULL, 'add_currency', 1),
(92, 15, 'setting', NULL, NULL, 'soft_setting', 1),
(93, 15, 'add_role', NULL, NULL, 'add_role', 1),
(94, 15, 'role_list', NULL, NULL, 'role_list', 1),
(95, 15, 'user_assign_role', NULL, NULL, 'user_assign', 1),
(96, 15, 'Permission', NULL, NULL, NULL, 1),
(97, 8, 'shipping_cost_report', NULL, NULL, 'shipping_cost_report', 1),
(98, 8, 'user_wise_sales_report', NULL, NULL, 'user_wise_sales_report', 1),
(99, 8, 'invoice_return', NULL, NULL, 'invoice_return', 1),
(100, 8, 'supplier_return', NULL, NULL, 'supplier_return', 1),
(101, 8, 'tax_report', NULL, NULL, 'tax_report', 1),
(102, 8, 'profit_report', NULL, NULL, 'profit_report', 1),
(103, 11, 'add_incometax', NULL, NULL, 'add_incometax', 1),
(104, 11, 'manage_income_tax', NULL, NULL, 'manage_income_tax', 1),
(105, 13, 'add_service', NULL, NULL, 'create_service', 1),
(106, 13, 'manage_service', NULL, NULL, 'manage_service', 1),
(107, 13, 'service_invoice', NULL, NULL, 'service_invoice', 1),
(108, 13, 'manage_service_invoice', NULL, NULL, 'manage_service_invoice', 1),
(109, 11, 'tax_report', NULL, NULL, 'tax_report', 1),
(110, 11, 'invoice_wise_tax_report', NULL, NULL, 'invoice_wise_tax_report', 1),
(111, 2, 'customer_advance', NULL, NULL, 'customer_advance', 1),
(112, 4, 'supplier_advance', NULL, NULL, 'supplier_advance', 1),
(113, 2, 'customer_ledger', NULL, NULL, 'customer_ledger', 1),
(114, 1, 'gui_pos', NULL, NULL, 'gui_pos', 1),
(115, 15, 'sms_configure', NULL, NULL, 'sms_configure', 1),
(116, 15, 'backup_restore', NULL, NULL, 'back_up', 1),
(117, 15, 'import', NULL, NULL, 'sql_import', 1),
(118, 15, 'restore', NULL, NULL, 'restore', 1),
(119, 16, 'add_quotation', NULL, NULL, 'add_quotation', 1),
(120, 16, 'manage_quotation', NULL, NULL, 'manage_quotation', 1),
(121, 16, 'add_to_invoice', NULL, NULL, 'add_to_invoice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_information`
--

CREATE TABLE `supplier_information` (
  `supplier_id` bigint(20) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_information`
--

INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `address2`, `mobile`, `emailnumber`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `details`, `status`) VALUES
(1, 'Abhishek Warehouse', 'Varansi', 'Varansi', '7418529632', 'test@test.com', 'test@test.com', '', '7418529632', '', '', 'UP', '201301', 'India', 'test@test.com', 1),
(2, 'TAS Lucknow', '', '', '', '', '', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE `supplier_product` (
  `supplier_pr_id` int(11) NOT NULL,
  `product_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `products_model` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `supplier_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier_product`
--

INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES
(1, '77953292', 'Sports', 1, 650),
(2, '98849194', 'Sports', 2, 600),
(3, '98849194', 'Sports', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_collection`
--

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_collection`
--

INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`) VALUES
(1, '2020-10-03', '2', '8622677292'),
(2, '2020-10-04', '4', '4178378441'),
(3, '2020-10-10', '1', '5483569592');

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_councellor`
--

CREATE TABLE `tbl_councellor` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `pannumber` varchar(100) NOT NULL,
  `gstnumber` varchar(100) NOT NULL,
  `accountnumber` varchar(100) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `barch_name` varchar(50) DEFAULT NULL,
  `beneficiary` varchar(100) NOT NULL,
  `meetlink` varchar(100) DEFAULT NULL,
  `address_proof` varchar(100) NOT NULL,
  `gstin` varchar(100) NOT NULL,
  `pancopy` varchar(100) NOT NULL,
  `eheque` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` enum('0','1') NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `updated_by` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_councellor`
--

INSERT INTO `tbl_councellor` (`id`, `username`, `name`, `email`, `mobile_number`, `password`, `logo`, `favicon`, `title`, `state`, `city`, `zip`, `country`, `address`, `company_name`, `pannumber`, `gstnumber`, `accountnumber`, `ifsc`, `bankname`, `barch_name`, `beneficiary`, `meetlink`, `address_proof`, `gstin`, `pancopy`, `eheque`, `image`, `status`, `created_by`, `updated_by`) VALUES
(11, 'akk1@gmail.com', 'Manu Sharma', 'akk1@gmail.com', '9793527071', 'MTIzNDU2', '', '', 'Doctor', '09', '157', '226021', '', 'Pitampura\r\nFirst floor', 'Hashubs Corporations', '123456789', '123456', 'sadafdaf', 'dasdadas', 'dasdaeds', NULL, 'dasdasds', 'sassas', 'http://skywart.com/./my-assets/image/doctor/06ac90316f359d99e9ffea3a6c5d8b99.jpg', 'http://skywart.com/./my-assets/image/doctor/0574245d6240b3c9c2c76fbeb9a24ffb.jpg', 'http://skywart.com/./my-assets/image/doctor/52bcbd6937f9e79d59b3b321c3ac8817.jpg', 'http://skywart.com/./my-assets/image/doctor/9de8abde8e8891763fd1888cf292e976.jpg', NULL, '0', '', '2021-04-10 05:59:58'),
(12, 'akk444@gmail.com', 'Manu', 'akk444@gmail.com', '07905548002', 'MTIz', '', '', 'Doctor', '09', '157', '226021', '', 'Jankipuram', 'Hashubs', '111', '111', 'qqqq', 'dasdadas', 'dasdaeds', NULL, 'dasdasds', 'sassas', 'http://skywart.com/./my-assets/image/doctor/5387fa8282ca84afb211b0f9f9362ff3.jpg', 'http://skywart.com/./my-assets/image/doctor/06f2db977f647c54af79987886de0549.jpg', 'http://skywart.com/./my-assets/image/doctor/c0f34465d6f1a91c23d0e1800a3e7cda.jpg', 'http://skywart.com/./my-assets/image/doctor/208f436661adf7fc797d02b15aa2387b.jpg', NULL, '0', '', '2021-04-10 05:59:58'),
(13, 'c11@gmail.com', 'Coun1', 'c11@gmail.com', '09793527071', 'MTIzNA==', '', '', 'Doctor', '07', '091', '110034', '', 'Pitampura\r\nFirst floor', 'Hashubs', '111', '111', 'qqqq', 'qqqq', 'qqqq', NULL, 'dasdasds', 'sassas', 'http://skywart.com/./my-assets/image/doctor/3f85074165fedb7f3845857a303fcdf1.png', 'http://skywart.com/./my-assets/image/doctor/4c8935923968c63107373594c7c170c6.png', 'http://skywart.com/./my-assets/image/doctor/0b3665bbc93a09183e17b2c3a3b451f9.png', 'http://skywart.com/./my-assets/image/doctor/4843d0cc8e24f35686e6b2a0a0d17850.png', NULL, '0', '', '2021-04-10 05:59:58'),
(25, 'rahulkhanna@gmail.com', 'Rahul Khanna', 'rahulkhanna@gmail.com', '123456789', 'Skywart#879', '', '', '', '10', '88', '', '', 'Gomtinagar Lucknow', '', '', '', '123456789', '123456', 'State Bank Of India', NULL, 'Rahul Khanna', NULL, 'http://www.skywart.com/./my-assets/image/vendor/b892e8b83bc50e228d25217ef093e40a.jpg', '', '', '', NULL, '', '21-04-05', '2021-04-20 10:21:01'),
(28, 'vijay@gmail.com', 'Vijay Khatri', 'vijay@gmail.com', '7985570425', '12345', '', '', '', '', '', '', '', 'Lucknow ', '', '', '', '15455151', '4545454', '515125', NULL, '45515', NULL, 'http://www.skywart.com/./my-assets/image/vendor/f768f3a0b1cb55073495280fe61f4b10.jpg', '', '', '', NULL, '', '21-04-27', '2021-04-27 08:33:31'),
(29, 'teststudent@gmail.com', 'Dheeraj', 'teststudent@gmail.com', '0789678344', '123456', '', '', '', '', '', '123456', '', 'Lucknow', 'Abc Company Name', '', '', '34567', '5678', 'State Bank of India', 'q', 'ABC', NULL, 'http://skywart.com/./my-assets/image/vendor/d60a57e190771c80b77be20ca9369dde.jpeg', '', '', '', NULL, '', '21-04-27', '2021-04-27 13:41:29'),
(30, 'counsellorRegister@gmail.com', 'Test 17-05-2021', 'counsellorRegister@gmail.com', '0789671111', '123', '', '', '', '09', '001', '273413', '', 'Lucknow', '', '', '', '34567', 'ABC1212121', 'State Bank of India', 'Lucknow', 'ABC', NULL, 'http://skywart.com/./my-assets/image/vendor/997eb42dcbebcc8fb193eefb3de21f4c.jpeg', '', '', '', 'https://skywart.com/my-assets/image/teacher/a1c7e48f619675940b427feb3fd53d15.jpeg', '', '21-04-28', '2021-05-17 00:00:00'),
(31, 'Councellor11@gmail.com', 'Test', 'Councellor11@gmail.com', '0111111111111', '123456', '', '', '', '', '001', '273413', '', 'Lucknow', 'Abc Company Name', '', '', '34567', '5678', 'State Bank of India', 'Lucknow', 'ABC bbbbb', NULL, 'https://skywart.com/./my-assets/image/vendor/3ae017b6c3b776ea10999d3868d36b8a.jpeg', '', '', '', 'https://skywart.com/my-assets/image/teacher/5aaa1cb184fa6656dac4e45eb94d70bc.jpeg', '', '21-05-11', '2021-05-11 00:00:00'),
(32, 'ysingh1715@gmail.com', 'Yashraj Singh', 'ysingh1715@gmail.com', '8630945597', 'Mrt@0121', '', '', '', '', '156', '250002', '', '243 Subhash Nagar meerut', '', '', '', '20260110062946', 'UTIB0003331', 'Axis', 'Shivaji road', 'Yashraj Singh', NULL, 'http://skywart.com/./my-assets/image/vendor/8441d3d6b4610ddea67f672b09cdf2b4.JPG', '', '', '', 'http://skywart.com/my-assets/image/teacher/eba2363734650ca5c0280882fcdd3268.JPG', '', '21-05-20', '2021-05-20 00:00:00'),
(33, 'counsellorRegister21052021@gmail.com', 'counsellorRegister', 'counsellorRegister21052021@gmail.com', '56789876546', '123456', '', '', '', '09', '001', '', '', 'Lucknow', '', '', '', '34567', '5678', 'State Bank of India', 'Lucknow', 'ABC bbbbb', NULL, 'https://skywart.com/./my-assets/image/vendor/d197796c39238a9f2cd29691a3c77339.png', '', '', '', 'https://skywart.com/my-assets/image/teacher/973269c2aa691aa466d7d1f176966785.jpeg', '', '21-05-21', '2021-05-21 00:00:00'),
(34, 'ahemtolani@gmail.com', 'Ahem Tolani', 'ahemtolani@gmail.com', '9336301732', 'skywart123', '', '', '', '', '', '', '', 'DS/7 JANKIPURAM', '', '', '', '0123456789', 'STBP0123456', 'STATE BANK OF INDIA', 'ALIGANJ', 'AHEM TOLANI', NULL, 'http://skywart.com/./my-assets/image/vendor/8ab558a32c60f6cada06bd50f9135300.png', '', '', '', NULL, '', '21-05-23', '2021-05-23 13:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_councellor_book_appointment`
--

CREATE TABLE `tbl_councellor_book_appointment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time_slote_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_councellor_general_information`
--

CREATE TABLE `tbl_councellor_general_information` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `councellor_rype` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_councellor_general_information`
--

INSERT INTO `tbl_councellor_general_information` (`id`, `user_id`, `name`, `councellor_rype`, `description`, `amount`) VALUES
(2, 185, 'Test Product', '1', 'PHP can generate dynamic page content\r\nPHP can create, open, read, write, delete, and close files on the server\r\nPHP can collect form data\r\nPHP can send and receive cookies\r\nPHP can add, delete, modify data in your database\r\nPHP can be used to control user-access\r\nPHP can encrypt data', 1000),
(3, 185, 'Test', '1', 'Self Description', 1000),
(4, 174, 'Vijay ', '3', 'this involves a session ', 1200),
(5, 174, 'vijay', '1', 'jhjjjjn', 1300),
(6, 174, 'Vijay Khatri ', '3', 'This will be a complete session based on mental health ', 2100),
(7, 190, 'Test', '1', 'Appointment', 1000),
(9, 201, 'AHEM TOLANI', '1', ' Help clients evaluate their abilities and interests, overcome challenges and obstacles, and develop necessary skills.', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_councellor_model`
--

CREATE TABLE `tbl_councellor_model` (
  `id` int(11) NOT NULL,
  `user_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_councellor_model`
--

INSERT INTO `tbl_councellor_model` (`id`, `user_id`, `model`, `price`, `amount`, `create_at`) VALUES
(1, '157', 'Model 3', '15', 0, '2021-04-16 14:33:06'),
(2, '161', 'Model 2', '13.5', 0, '2021-04-21 13:17:04'),
(3, '163', 'Model 1', '12.5', 0, '2021-04-22 12:03:07'),
(4, '168', 'Model 1', '12.5', 0, '2021-04-25 08:05:24'),
(5, '174', 'Model 1', '12.5', 0, '2021-04-27 08:41:43'),
(6, '185', 'Model 2', '13.5', 0, '2021-04-28 11:17:14'),
(7, 'V76', 'Model 2', '13.5', 0, '2021-04-29 11:34:43'),
(8, '193', 'Model 1', '12.5', 0, '2021-05-20 08:44:13'),
(9, '194', 'Model 3', '15', 0, '2021-05-20 10:40:04'),
(10, '197', 'Model 1', '12.5', 0, '2021-05-23 09:57:25'),
(11, '200', 'Model 2', '13.5', 0, '2021-05-23 13:53:47'),
(12, '201', 'Model 1', '12.5', 0, '2021-05-23 13:59:13'),
(13, '190', 'Model 1', '12.5', 0, '2021-05-26 01:55:42'),
(14, '203', 'Model 1', '12.5%12.5', 0, '2021-06-02 02:23:19'),
(15, '205', 'Model 1', '12.5', 0, '2021-06-02 05:27:11'),
(16, '206', 'Model 3', '15', 0, '2021-06-02 08:54:53'),
(17, '208', 'Model 2', '13.5', 0, '2021-06-04 09:34:43'),
(18, '212', 'Model 2', '13.5', 0, '2021-06-14 17:04:57'),
(19, '215', 'Model 3', '15', 0, '2021-06-16 06:23:09'),
(20, '20000021', 'Model 2', '13.5%13.5', 0, '2021-07-03 06:21:22'),
(21, '20000025', 'Model 1', '12.5%12.5', 0, '2021-07-03 17:48:30'),
(22, '20000028', 'Model 2', '13.5%13.5', 0, '2021-07-05 06:22:09'),
(23, '20000029', 'Model 1', '12.5%12.5', 0, '2021-07-05 13:05:42'),
(24, '20000031', 'Model 1', '12.5%12.5', 0, '2021-07-07 13:38:27'),
(25, '20000032', 'Model 2', '13.5%13.5', 0, '2021-07-07 17:17:44'),
(26, '20000033', 'Model 2', '13.5%13.5', 0, '2021-07-08 05:45:20'),
(27, '20000034', 'Model 2', '13.5%13.5', 0, '2021-07-08 06:58:44'),
(28, '20000035', 'Model 2', '13.99%13.9', 0, '2021-07-08 10:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_councellor_time_slot`
--

CREATE TABLE `tbl_councellor_time_slot` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_councellor_time_slot`
--

INSERT INTO `tbl_councellor_time_slot` (`id`, `user_id`, `date`, `day`, `created_at`) VALUES
(2, 2, '2021-06-07', 'Monday', '2021-04-28 08:53:04'),
(3, 2, '2021-04-30', 'Wednesday', '2021-04-28 08:53:24'),
(4, 4, '2021-04-29', 'Thursday', '2021-04-28 17:44:22'),
(5, 5, '2021-04-29', 'Thursday', '2021-04-28 17:47:20'),
(6, 6, '2021-05-07', 'Friday', '2021-05-07 11:21:42'),
(7, 7, '2021-05-30', 'Thursday', '2021-05-11 02:05:13'),
(9, 9, '2021-05-23', 'Monday', '2021-05-23 13:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_councellor_time_slot_map`
--

CREATE TABLE `tbl_councellor_time_slot_map` (
  `id_map` int(11) NOT NULL,
  `time_slot_id` int(11) DEFAULT NULL,
  `start_time` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_councellor_time_slot_map`
--

INSERT INTO `tbl_councellor_time_slot_map` (`id_map`, `time_slot_id`, `start_time`, `end_time`) VALUES
(2, 2, '02:00 PM', '02:00 PM'),
(3, 2, '02:00 PM', '02:00 PM'),
(4, 2, '08:00 PM', '08:00 PM'),
(5, 3, '09:00 PM', '25:00 PM'),
(6, 4, '12:00 am ', '1:00pm '),
(7, 5, '2:00 pm ', '3:00pm'),
(8, 6, '3:00 PM', '4:00 PM'),
(9, 7, '04:30PM', '06:30PM'),
(11, 9, '07:30PM', '08:30PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_batch`
--

CREATE TABLE `tbl_group_batch` (
  `id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_group_batch`
--

INSERT INTO `tbl_group_batch` (`id`, `batch_id`, `student_id`) VALUES
(1, 2, 158),
(2, 17, 20000029),
(3, 18, 20000022),
(4, 22, 20000031);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_join_course`
--

CREATE TABLE `tbl_join_course` (
  `id` int(11) NOT NULL,
  `enroll_id` int(11) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_learner_course`
--

CREATE TABLE `tbl_learner_course` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `week` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_start_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `video` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fess` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_learner_course`
--

INSERT INTO `tbl_learner_course` (`id`, `user_id`, `category`, `mode`, `subject_name`, `board`, `start_time`, `end_time`, `start_date`, `end_date`, `week`, `class_start_date`, `class`, `cover_image`, `image`, `video`, `description`, `fess`, `amount`, `create_at`) VALUES
(33, 193, '5', '1', 'job Interview Skills ', 'Select Level', '02:15PM', '03:15PM', '6', '0', 'Monday,Tuesday,Friday', NULL, NULL, NULL, 'istockphoto-1143036907-612x612.jpg', 'null', ' This course is tailored to equip students with miraculous confidence to face any interview.The course comprises unique and effective techniques to boost confidence, body language, how to frame the answers to the questions and enhance articulation. This course will inculcate winning attitude, mind and tongue fluency with its magical tricks and innovative mantras.\r\n\r\nHappy Interview', '2', 1200, '2021-05-20 08:49:18'),
(34, 197, '4', '1', 'Microsoft Excel Advance', 'Select Level', '03:45PM', '04:30PM', '1', '0', 'Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', NULL, NULL, NULL, 'advanced-excel-course-in-pitampura-rohini.jpg', 'null', ' Advanced Excel is a comprehensive tutorial that provides a good insight into the latest and advanced features available in Microsoft Excel', '1', 2500, '2021-05-23 10:02:01'),
(35, 200, '3', '1', 'Geography ', '1', '04:30PM', '05:30PM', '6', '0', 'Monday,Tuesday,Wednesday,Friday', NULL, NULL, NULL, 'null', 'null', ' Geography is the study of places and the relationships between people and their environments. Geographers explore both the physical properties of Earth\'s surface and the human societies spread across it.', '2', 1000, '2021-05-23 13:55:22'),
(37, 205, '3', '1', 'English', '2', '11:00AM', '12:00AM', '8', '0', 'Monday,Wednesday,Friday', NULL, NULL, NULL, 'null', 'null', ' ', '2', 5000, '2021-06-02 05:31:42'),
(38, 206, '3', '1', 'Game Dev with Unity', '2', '04:40PM', '06:30PM', '6', '0', 'Monday,Wednesday,Friday', NULL, NULL, NULL, 'null', 'null', ' ', '1', 16500, '2021-06-02 08:56:05'),
(39, 208, '4', '2', 'Financial Modelling ', 'Select Level', '06:30PM', '07:30PM', '6', '0', 'Monday,Tuesday,Wednesday,Friday', NULL, NULL, NULL, 'null', '2106041619961068675.mp4', ' Financial modeling is the process of creating a summary of a company\'s expenses and earnings in the form of a spreadsheet that can be used to calculate the impact of a future event or decision. A financial model has many uses for company executives', '2', 1000, '2021-06-04 10:56:10'),
(40, 212, '3', '1', 'history', '1', '06:30PM', '07:30PM', '0', '1', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', NULL, NULL, NULL, '7.png', 'null', ' History (from Greek ἱστορία, historia, meaning \"inquiry; knowledge acquired by investigation\") is the study of the past. Events occurring before the invention of writing systems are considered prehistory. \"History\" is an umbrella term that relates to past events as well as the memory, discovery, collection, organization, presentation, and interpretation of information about these events. Historians place the past in context using historical sourcessuch as written documents, oral accounts, ecolo', '2', 1200, '2021-06-14 17:36:33'),
(41, 203, '3', '1', 'Geography', '1', '05:25PM', '06:25PM', '2', '1', 'Monday,Tuesday', NULL, NULL, NULL, 'null', 'null', ' Subject Description', '1', 1000, '2021-06-15 08:12:18'),
(44, 203, '3', '1', 'Hindi 21', '1', '10:00AM', '11:00AM', '2', '1', 'Tuesday,Wednesday', '2021-06-26', NULL, '', 'null', 'null', ' ', '1', 1000, '2021-06-21 07:05:58'),
(54, 20000029, '3', '1', 'Hindi ', '2', NULL, NULL, '0', '1', NULL, '2021-07-08', '6th ', NULL, '11.png', 'null', ' Hindi, or more precisely Modern Standard Hindi, is an Indo-Aryan language spoken chiefly in India. Hindi has been described as a standardised and Sanskritised register of the Hindustani language, which itself is based primarily on the Khariboli dialect of Delhi and neighbouring areas of Northern India.', NULL, 0, '2021-07-05 13:06:52'),
(55, 203, '3', '1', 'PHP for Beginners', '1', NULL, NULL, '1', '1', NULL, '2021-07-14', '12', NULL, 'null', 'null', ' Subject Description', NULL, 0, '2021-07-05 14:42:02'),
(56, 20000031, '3', '1', 'Financial Management ', '1', NULL, NULL, '0', '1', NULL, '2021-07-10', '10th and 12th ', NULL, 'WhatsApp_Image_2021-05-07_at_17_16_25.jpeg', 'null', ' Financial management refers to the strategic planning, organising, directing, and controlling of financial undertakings in an organisation or an institute. It also includes applying management principles to the financial assets of an organisation, while also playing an important part in fiscal management.', NULL, 0, '2021-07-07 13:42:03'),
(57, 20000032, '3', '1', 'Accountancy ', '2', NULL, NULL, '0', '1', NULL, '2021-07-10', '11th and 12th ', NULL, 'Picture1-removebg-preview.png', 'null', ' Hi , this course is about accountancy and i\'ll be teaching it to 11th nd 12 th class . ', NULL, 0, '2021-07-07 17:25:44'),
(58, 20000025, '3', '1', 'Business Studies ', '1', NULL, NULL, '0', '1', NULL, '2021-07-20', '10th and 12th ', NULL, 'null', 'null', ' nnnnjnj', NULL, 0, '2021-07-07 18:52:18'),
(59, 20000021, '3', '1', 'Mathematics', '1', NULL, NULL, '3', '1', NULL, '2021-07-28', '6', NULL, 'null', 'null', ' Add to the same old same old same old same', NULL, 0, '2021-07-08 05:21:39'),
(60, 20000033, '3', '1', 'Business Studies ', '2', NULL, NULL, '6', '0', NULL, '2021-07-10', '11th and 12th ', NULL, '6.png', 'null', ' Business studies for class 11th and 12th ', NULL, 0, '2021-07-08 05:48:16'),
(61, 20000034, '3', '1', 'Business Studies ', '2', NULL, NULL, '6', '0', NULL, '2021-07-10', '11th and 12th', NULL, '5.png', 'null', ' Business studies for class 11th and 12th . ', NULL, 0, '2021-07-08 07:05:25'),
(62, 20000035, '3', '1', 'Maths ', '2', NULL, NULL, '6', '0', NULL, '2021-07-10', '11th and 12th ', NULL, '2.png', 'null', ' Maths i\'ll be teaching it to 11th and 12th class ', NULL, 0, '2021-07-08 11:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_learner_course_month_payment`
--

CREATE TABLE `tbl_learner_course_month_payment` (
  `id` int(11) NOT NULL,
  `paytm_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_massage_teacher_user`
--

CREATE TABLE `tbl_massage_teacher_user` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL,
  `massage` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_massage_teacher_user`
--

INSERT INTO `tbl_massage_teacher_user` (`id`, `sender_id`, `receive_id`, `massage`, `created_at`) VALUES
(1, 204, 36, 'hello', '10-06-2021 14:38:25'),
(2, 204, 36, 'hi', '10-06-2021 14:38:30'),
(3, 204, 36, 'good boy', '10-06-2021 14:38:42'),
(4, 204, 36, 'thik h', '10-06-2021 14:38:49'),
(5, 204, 36, 'very good', '10-06-2021 14:38:58'),
(6, 204, 36, 'hi', '10-06-2021 14:39:04'),
(7, 204, 36, '1', '10-06-2021 14:39:13'),
(8, 204, 36, '2', '10-06-2021 14:39:17'),
(9, 204, 36, '3', '10-06-2021 14:39:22'),
(10, 204, 36, '4', '10-06-2021 14:39:25'),
(11, 204, 36, '5', '10-06-2021 14:39:30'),
(12, 203, 204, 'teacher', '10-06-2021 14:55:30'),
(13, 204, 203, 'asd', '10-06-2021 15:30:39'),
(14, 119, 200, 'Hello sir', '14-06-2021 23:15:09'),
(15, 119, 200, 'Goodnight', '14-06-2021 23:29:10'),
(16, 214, 212, 'Hello Sir, \nGood Evening', '15-06-2021 19:17:14'),
(17, 214, 212, '', '15-06-2021 19:19:23'),
(18, 212, 214, 'good evening Vaasu \n', '15-06-2021 19:19:53'),
(19, 214, 212, 'how are you?\n', '15-06-2021 19:20:24'),
(20, 212, 214, 'i am good .... what about you ', '15-06-2021 19:21:38'),
(21, 214, 212, 'I\'m doing great', '15-06-2021 19:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_model_plan`
--

CREATE TABLE `tbl_model_plan` (
  `id` int(11) NOT NULL,
  `model_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `aggregator_fees` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advertesing` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scholarship_zone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online_competition` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updates` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_miration` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `training` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_model_plan`
--

INSERT INTO `tbl_model_plan` (`id`, `model_no`, `aggregator_fees`, `advertesing`, `scholarship_zone`, `online_competition`, `service`, `updates`, `data_miration`, `training`) VALUES
(1, 'Model 1', '12.99', 'PAID(ON USAGE) ', 'STUDENTS PRIORITY GIVEN ', 'PAID(ON USAGE)', 'EMAIL BASED SERVICE FOR ANY PROBLEM AND QUERY', 'ALL FREE OF COST LIFETIME*', 'YES* ', '1-TIME OF INSTALLATION<br>\r\n2-THROUGH TUTORIAL VIDEO’S'),
(2, 'Model 2', '13.99', 'PAID(ON USAGE)+2 DAY’S FREE /MONTH*(CAN BE USED 2\r\nTIMES IN A SESSION)\r\n', 'STUDENTS PRIORITY GIVEN ', 'PAID(ON USAGE) ', '1-EMAIL BASED SERVICE FOR ANY PROBLEM AND QUERY.<br>\r\n2-SPECIAL WHATSAPP GROUP FOR DEPARTMENT OF QUERY', 'ALL FREE OF COST LIFETIME*', 'YES*', '1-AT THE TIME OF INSTALLATION.<br>\r\n2-TUTOTIAL VIDEO’S<br>\r\n3-THROUGH LIVE SCREEN SHARING ON DEMAND*'),
(3, 'Model 3', '14.99', 'PAID(ON USAGE)+ 4 DAY’S FREE /MONTH*(CAN BE USED 3\r\nTIMES IN A SESSION)', 'STUDENTS PRIORITY GIVEN\r\n', 'PAID(ON USAGE)', '1-EMAIL BASED SERVICE FOR ANY PROBLEM AND QUERY.<br>\r\n2-SPECIAL WHATSAPP GROUP FOR DEPARTMENT OF QUERY.<br>\r\n3-WHITE GLOVE SERVICE\r\n<br>\r\n->PROBLEM WILL BE RESOLVED WITHIN AN HOUR**<br>\r\n->PROBLEM SOLVING THROUGH WIRELESS CONNECTIONS<br>\r\n4-BY DEDICATED PERSON ASSIGNED.', 'ALL FREE OF COST LIFETIME*', 'YES*', '1-AT THE TIME OF INSTALLATION.<br>\r\n2-TUTORIAL VIDEO’S<br>\r\n3-THROUGH LIVE SCREEN SHARING ON DEMAND*<br>\r\n4-BY DEDICATED PERSON ASSIGNED');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_model_plan_map`
--

CREATE TABLE `tbl_model_plan_map` (
  `plan_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `plan_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `participants` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recording` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_model_plan_map`
--

INSERT INTO `tbl_model_plan_map` (`plan_id`, `model_id`, `plan_name`, `price`, `participants`, `recording`) VALUES
(1, 1, 'Plan A', 500, '50', 'No'),
(2, 1, 'Plan B', 600, '80', 'No'),
(3, 2, 'Plan A', 500, '50', 'No'),
(4, 3, 'Model 3', 15, '15%', 'q');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paytm_patment`
--

CREATE TABLE `tbl_paytm_patment` (
  `id` int(11) NOT NULL,
  `payment_orderid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txnid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentmode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txndate` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `respcode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `respmsg` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatewayname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banktxnid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bankname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checksumhash` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_paytm_patment`
--

INSERT INTO `tbl_paytm_patment` (`id`, `payment_orderid`, `txnid`, `paymentmode`, `currency`, `txndate`, `payment_status`, `respcode`, `respmsg`, `gatewayname`, `banktxnid`, `bankname`, `checksumhash`, `created`) VALUES
(1, '210607556035', '20210607111212800110168367002675730', 'NB', 'INR', '2021-06-07 10:26:20.0', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '17956406186', 'Punjab National Bank', '+s4uc3cSeM3FNPrLc6y6TuoirbsFdb7pgfmS11IbztMP60vowq', '2021-06-07 04:56:32'),
(2, '210608575612', '20210607111212800110168271902670297', 'NB', 'INR', '2021-06-07 10:34:29.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12736219101', 'Axis Bank', 'D4cDxz8Bo1HYVqEOhdTEVrhMnnfx1pQmQ7z3OfyBsBrdeixQ3M', '2021-06-07 05:04:41'),
(3, '210608400983', '20210607111212800110168797502686707', 'NB', 'INR', '2021-06-07 10:38:19.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '16246744069', 'ICICI Bank', 'Xn5d+42ASnh7vBEzXdS7PWBxRR3K1W2wieBLCjSVBCNvq94yoY', '2021-06-07 05:08:29'),
(4, '210607674277', '20210607111212800110168953402688076', 'NB', 'INR', '2021-06-07 11:49:22.0', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '12125350651', 'Punjab National Bank', 'iLtJRzOdorR0sfpKqas40J9O7gmU+tiy8hLm1TDYsBl0e5j3v3', '2021-06-07 06:19:34'),
(5, '210623317330', '20210622111212800110168655702745138', 'NB', 'INR', '2021-06-22 11:25:50.0', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '16593377023', 'HDFC Bank', 'wQox/0+/KX2v0zulqof+70rm6DpOO41HJRP7jVdBlI3yza35pe', '2021-06-22 05:56:05'),
(6, '210622512231', '20210622111212800110168713002722149', 'NB', 'INR', '2021-06-22 11:33:04.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12470004754', 'Axis Bank', 'bhgbwJtza5FoVfT7IwLenfIgcrWNshS206LiKq7MWMb6D6jmGv', '2021-06-22 06:03:28'),
(7, '210623190539', '20210622111212800110168255702741640', 'NB', 'INR', '2021-06-22 11:35:54.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12025507372', 'ICICI Bank', 'tFOiXXhOJjYYg32YvTP3vvtKHWGY8iuLHojx1AmL9aYzZviUPO', '2021-06-22 06:06:08'),
(8, '210623774925', '20210622111212800110168626604137565', 'NB', 'INR', '2021-06-22 11:51:53.0', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '14331518269', 'HDFC Bank', '/6H54HKqYU3fyeLgR11p01IuSRvWWfDBrTAOaS9VfYVjxmv6gY', '2021-06-22 06:22:07'),
(9, '210622515764', '20210622111212800110168450402751178', 'NB', 'INR', '2021-06-22 12:04:13.0', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '10594136436', 'Punjab National Bank', 'Rf0PChTnfkfWAEyfrqcirsTO9YaVe3u+UHBsBSso8XftWIlNwg', '2021-06-22 06:34:31'),
(10, '210623618870', '20210622111212800110168381702717499', 'NB', 'INR', '2021-06-22 12:10:57.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '14902029761', 'Axis Bank', 'xVUQPZVBFyDVsX6If+jK6zPfCwy6b1jrfxliuqcJrCxIh4KE9W', '2021-06-22 06:41:09'),
(11, '210622814550', '20210622111212800110168508202736401', 'NB', 'INR', '2021-06-22 12:17:36.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '18577432519', 'Axis Bank', 'bzD+aTawCnjUDIG9jqm5EVNMueIaFj5+RW48Bgu5EG7FcXQflT', '2021-06-22 06:47:49'),
(12, '210624356824', '20210623111212800110168170102724381', 'NB', 'INR', '2021-06-23 15:51:25.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '10042120896', 'ICICI Bank', 'NejTBntKeju9VSVtPSeJy2Ez1yokYHJTCu2KTC4PAJuWuIQken', '2021-06-23 10:21:34'),
(13, '210623109626', '20210623111212800110168820002744356', 'NB', 'INR', '2021-06-23 16:31:02.0', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '10672815810', 'Bharat Bank', 'usMNrdXoYbCXJT/QHGVelaaCwRLw/duFPR1F/I3nvqo9WxSWWF', '2021-06-23 11:01:26'),
(14, '210623105204', '20210623111212800110168106902722524', 'NB', 'INR', '2021-06-23 16:33:56.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '10861755930', 'Axis Bank', 'R7vyVPO3kZ2+G4xDjOYln3JgaW1lYNu769fZOQzZS2nUB5MJvR', '2021-06-23 11:04:07'),
(15, '210623451290', '20210623111212800110168792302735057', 'NB', 'INR', '2021-06-23 16:34:50.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '19457033430', 'Axis Bank', '601qJQzyugKZczNdvy4HbRYGsQnNGTwmxK40MMLdngAIpauwr1', '2021-06-23 11:05:01'),
(16, '210624289949', '20210623111212800110168307702867659', 'NB', 'INR', '2021-06-23 16:59:26.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12997224856', 'ICICI Bank', 'C++PsWiFBtkwqms8sAAtnso6o6TraLlSYP5kMaOY04M/QK8oEn', '2021-06-23 11:29:50'),
(17, '210624289949', '20210623111212800110168307702867659', 'NB', 'INR', '2021-06-23 16:59:26.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12997224856', 'ICICI Bank', 'C++PsWiFBtkwqms8sAAtnso6o6TraLlSYP5kMaOY04M/QK8oEn', '2021-06-23 11:56:05'),
(18, '210624916847', '20210623111212800110168922202722252', 'NB', 'INR', '2021-06-23 18:01:37.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '13618995322', 'Axis Bank', 'Yvz3pWKp0nAlXWNWFD9jcAwOELXuZQHzDrPTIH8MZZopU9UnUY', '2021-06-23 12:31:53'),
(19, '210624424033', '20210623111212800110168316702755934', 'NB', 'INR', '2021-06-23 18:06:41.0', 'TXN_SUCCESS', '01', 'Txn Success', 'PNB', '18618190826', 'Punjab National Bank', 'W7TXSZAfJlFGhXTdhsbmbuAy9hRlgsIAV8xFou7xVZe2+WkchQ', '2021-06-23 12:36:55'),
(20, '210624423691', '20210623111212800110168722602761411', 'NB', 'INR', '2021-06-23 18:08:37.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '19194248130', 'Axis Bank', 'zxrXc2UhyJKhvn54uanj4cPMevivVZsvg6Cmk7pXWyaKpJKNnZ', '2021-06-23 12:38:49'),
(21, '210623710693', '20210623111212800110168043602882331', 'NB', 'INR', '2021-06-23 18:11:30.0', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '13054050704', 'Bharat Bank', '49dM8h4cdcHHLxEvdLmwmkOHMk55l4nOQw3lCKfOvgK5Uef9Hi', '2021-06-23 12:41:41'),
(22, '210625043126', '20210623111212800110168709002733586', 'NB', 'INR', '2021-06-23 18:13:25.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '10749186465', 'Axis Bank', 'agmlOLzHKgpiQpTI+MGrM2f8OUHKOT3emM1kmksLSM1PkpHwZb', '2021-06-23 12:43:37'),
(23, '210624530030', '20210623111212800110168266102729710', 'NB', 'INR', '2021-06-23 18:37:14.0', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '12036317946', 'HDFC Bank', 'XTiwHPOJPMu8ci88CUemrcnHGiSO5WUtzuUOANoEnXrj9WDXXN', '2021-06-23 13:10:28'),
(24, '210624238899', '20210623111212800110168286202738940', 'NB', 'INR', '2021-06-23 18:54:47.0', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '11676232101', 'HDFC Bank', '3sJ5er9Yo5QLTOJOPDUyg9NkeK4skOVS7OAuRMirSpLlmXro26', '2021-06-23 13:24:58'),
(25, '210624323395', '20210623111212800110168946002730799', 'NB', 'INR', '2021-06-23 18:57:15.0', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '18067605564', 'HDFC Bank', 'Ohyzgyv1HZUM8ZF5A/KpfYkx3CA/MdKmqcrC5TWQW7YlmZ4lFX', '2021-06-23 13:27:26'),
(26, '210626736612', '20210625111212800110168105302728427', 'NB', 'INR', '2021-06-25 09:30:01.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ANDB', '19357016673', 'Andhra Bank', 'vlehewhfhCdd1FfZKgemi/pej7bmBuIh7X0hEqmF2HcHYqdF/b', '2021-06-25 04:00:12'),
(27, '210625379878', '20210625111212800110168247602741403', 'NB', 'INR', '2021-06-25 09:33:55.0', 'TXN_SUCCESS', '01', 'Txn Success', 'NKMB', '14754382731', 'Kotak Bank', 'JWqK9jRU3ByKfa2fKzKECET1AYAT4Dpt7Y532PmKTirEZc/V4q', '2021-06-25 04:04:05'),
(28, '210625433262', '20210625111212800110168064302736017', 'NB', 'INR', '2021-06-25 09:39:31.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '11320808754', 'ICICI Bank', '7rR9roe4E2BXBWxzYHR1ViOiP15WFBkmNdyUzNMtpvA3jH4OTx', '2021-06-25 04:09:41'),
(29, '210625318538', '20210625111212800110168486402737706', 'NB', 'INR', '2021-06-25 09:41:35.0', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '17183532539', 'Bharat Bank', '4NdZ/M+A1NK/+wiZYuOwAjEVcyDnS/zeaSVpVxjkGnYJDvyxbB', '2021-06-25 04:11:45'),
(30, '210625611881', '20210625111212800110168014402737416', 'NB', 'INR', '2021-06-25 09:43:40.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '12794102573', 'ICICI Bank', 'v6Z+ABWIJtEAaQxayY0Ujl9xkW+VxqqUwCS2a3BBQKobZPPx8O', '2021-06-25 04:13:53'),
(31, '210626331758', '20210625111212800110168788202755632', 'NB', 'INR', '2021-06-25 09:47:13.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '10701421908', 'ICICI Bank', 'srtyFv1Jl9ujabxKSAbMfigXbDhEElXJlBQ96ue0wqg3wwuXqi', '2021-06-25 04:17:24'),
(32, '210625838815', '20210625111212800110168339802740397', 'NB', 'INR', '2021-06-25 09:48:56.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '16304087647', 'ICICI Bank', 'BT42CHpGAVKzBHZFqIUBvWOHzIJcIYOIt2J3C8AlmZjh65H5V9', '2021-06-25 04:19:09'),
(33, '210626124253', '20210625111212800110168382502727359', 'NB', 'INR', '2021-06-25 09:51:59.0', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '18494595736', 'HDFC Bank', 'gviGUjhf1xBKID34RmqLLkNRPPhKDkBXuhyqA8cqJKi0a1CQ/b', '2021-06-25 04:22:10'),
(34, '210625484763', '20210625111212800110168043102887223', 'NB', 'INR', '2021-06-25 10:00:02.0', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '19622154557', 'Bharat Bank', '39YJhVhCcWaTrFm6SBK2fPQ6xAS5JdJhh9qomD9Figd4DB3hjI', '2021-06-25 04:30:11'),
(35, '210626088754', '20210625111212800110168937302736362', 'NB', 'INR', '2021-06-25 10:03:15.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '14177048919', 'ICICI Bank', 'mSKNsqUwhW4nLkCSK0klqSxtNbRE8Ad5993WB9+l1nhdubnSEb', '2021-06-25 04:33:24'),
(36, '210625810351', '20210625111212800110168882302743626', 'NB', 'INR', '2021-06-25 10:05:17.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '16973500613', 'Axis Bank', '1hKmOnlWtaNt5N2fnWsX0hpohDW2XmN4zPwUUXlTq8nrDW6HRd', '2021-06-25 04:35:27'),
(37, '210626287615', '20210625111212800110168666202750883', 'NB', 'INR', '2021-06-25 10:07:40.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '18199067140', 'Axis Bank', 'jBXl18GrpwJ4s5tTLP4ANWrkIDl/1YsjRdMX3buyLjwxc6+ycB', '2021-06-25 04:37:51'),
(38, '210627073091', '20210625111212800110168068802737985', 'NB', 'INR', '2021-06-25 10:10:15.0', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '18520779359', 'Bharat Bank', 'KrKj8Vax9IuagjlO0ne3Qs1kQCYHuaH8Ho6EQsA54uzkR0v0cz', '2021-06-25 04:40:26'),
(39, '210625439719', '20210625111212800110168036102760441', 'NB', 'INR', '2021-06-25 10:31:33.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '15238215451', 'Axis Bank', 'cPeZiMNHyZrrRd9jdEktMCgl2+0bpJWrAUVnJeCNPGsaKrSgan', '2021-06-25 05:01:45'),
(40, '210626407153', '20210625111212800110168157902749616', 'NB', 'INR', '2021-06-25 10:32:20.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '10046086918', 'Axis Bank', 'vGiqsFdNpVxgB9ACh7Qzg0x2ojbjP8aNBuz268c7jN3QLqZkST', '2021-06-25 05:02:32'),
(41, '210626843394', '20210625111212800110168442902719237', 'NB', 'INR', '2021-06-25 10:37:37.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '14899233056', 'Axis Bank', 'U+d7dF4hUUr2lJTObnMG5z8l88pFy4+t+Og0GISsyG5lmh3WUj', '2021-06-25 05:07:48'),
(42, '210626425401', '20210625111212800110168298902768715', 'NB', 'INR', '2021-06-25 10:41:16.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '11958053377', 'ICICI Bank', 'U8TUJ3J1S2lDZPVHrQRkd8Tj6w+raVSJZrEzSFW12y2NWnXqky', '2021-06-25 05:11:34'),
(43, '210626860031', '20210625111212800110168478202730284', 'NB', 'INR', '2021-06-25 11:08:26.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ANDB', '14608119274', 'Andhra Bank', 'bBNLmW4cs+/kX58LwJ3N0qjdHxna9u312Env2dEM1rZym1mxn/', '2021-06-25 05:38:36'),
(44, '210626671520', '20210625111212800110168640102751813', 'NB', 'INR', '2021-06-25 11:13:17.0', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '13969963711', 'Bharat Bank', 'HtMkjoft1wrcdOXcMqd6G+AOIP7tRS0ARqvvEsCgTpctxHEgdN', '2021-06-25 05:43:33'),
(45, '210626237939', '20210625111212800110168227702770538', 'NB', 'INR', '2021-06-25 11:40:14.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ANDB', '14247772510', 'Andhra Bank', 'j5CUP49iIYGkjnvvk4RAN291zo58/eSSfZP2txHz7O9OT0eLvL', '2021-06-25 06:10:25'),
(46, '210625685583', '20210625111212800110168716602730896', 'NB', 'INR', '2021-06-25 11:41:22.0', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '17046698331', 'Bharat Bank', 'JOn0Xce3indBSVP572T0oeCtGwCa+iZkdDbCyi98SWjczAht7h', '2021-06-25 06:11:32'),
(47, '210626838107', '20210625111212800110168081003810014', 'NB', 'INR', '2021-06-25 11:42:24.0', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '13837768639', 'Bharat Bank', '6VpDO9UXas5xMEn3Pv3qxPMd0DueYBOf4m1OQJD0qOhjJKkpbU', '2021-06-25 06:12:33'),
(48, '210626021183', '20210625111212800110168303602870602', 'NB', 'INR', '2021-06-25 15:26:46.0', 'TXN_SUCCESS', '01', 'Txn Success', 'BHARAT', '11303105088', 'Bharat Bank', 'PxJvNyhlGtnf2GiMHWaCcU7XtcFncJG3GbBJny01P8eTspH2Td', '2021-06-25 09:56:58'),
(49, '210626385530', '20210625111212800110168018902739002', 'NB', 'INR', '2021-06-25 15:29:57.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '16280485947', 'ICICI Bank', '6zBsvfGqjkB87kxSTcn+MOTC2Ak6FPsGicZsKTIxrhAWawjReV', '2021-06-25 10:00:08'),
(50, '210703335429', '20210703111212800110168273502749629', 'NB', 'INR', '2021-07-03 23:18:37.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '17951413064', 'ICICI Bank', 'dp4hJ4PqD31RhvWCLRZEQdu3/1zb1RBaH5k23pTYP7VhEqGf7c', '2021-07-03 17:49:01'),
(51, '210705517531', '20210705111212800110168157202781936', 'NB', 'INR', '2021-07-05 18:35:50.0', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '17386631476', 'HDFC Bank', 'EMmZ8CyVimZfRvfAIGEJWRidoWf+q4EINXrxtZp4N0QsRyKZVG', '2021-07-05 13:06:08'),
(52, '210705894906', '20210705111212800110168779002764048', 'NB', 'INR', '2021-07-05 18:57:36.0', 'TXN_SUCCESS', '01', 'Txn Success', 'SBI', '18780772736', 'State Bank of India', '1SNIakiZHotsalveBff+PsyTP0ZKVxnTfDjAKlyEj1tIZBTCFx', '2021-07-05 13:28:27'),
(53, '210708651199', '20210707111212800110168016002771625', 'NB', 'INR', '2021-07-07 19:08:48.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '16385891102', 'Axis Bank', 'HyktyJReEnibx6JQ3+QKeqnsxO3lxO3aCRmftuk97Tj971WAGk', '2021-07-07 13:39:06'),
(54, '210708708703', '20210707111212800110168650302793570', 'NB', 'INR', '2021-07-07 23:08:35.0', 'TXN_SUCCESS', '01', 'Txn Success', 'HDFC', '19468097450', 'HDFC Bank', '3K+giE42TPdPNKg1lmZ2viW/H+ZMB7MixMZjPMN9S7nKqYDame', '2021-07-07 17:38:52'),
(55, '210709250054', '20210708111212800110168975102805037', 'NB', 'INR', '2021-07-08 11:23:17.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '15154556723', 'Axis Bank', 'zj0Rw+H6SQFKBy9zJc2eT32rz6Ks44Q6HxxG35Fp3RxULwxAYe', '2021-07-08 05:53:48'),
(56, '210708254168', '20210708111212800110168760502781052', 'NB', 'INR', '2021-07-08 12:43:58.0', 'TXN_SUCCESS', '01', 'Txn Success', 'ICICI', '10078585884', 'ICICI Bank', 'q3egSWPOJvbnmEUUQPR6znx1gLPpQsXCDFbd8qeBHhzfIn4IzD', '2021-07-08 07:14:55'),
(57, '210709597802', '20210708111212800110168027404204712', 'NB', 'INR', '2021-07-08 16:26:57.0', 'TXN_SUCCESS', '01', 'Txn Success', 'AXIS', '12910791537', 'Axis Bank', 'H+qEegnFSyZ2zTLP4WJbPFaWLNa3DS9aGzeFhBk+iQz8EAAl1r', '2021-07-08 10:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan`
--

CREATE TABLE `tbl_plan` (
  `id` int(11) NOT NULL,
  `userid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paytm_id` int(11) DEFAULT NULL,
  `vedio_co_insert_id` int(11) DEFAULT NULL,
  `meeting_url` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participants` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recording` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_plan`
--

INSERT INTO `tbl_plan` (`id`, `userid`, `paytm_id`, `vedio_co_insert_id`, `meeting_url`, `plan`, `month`, `price`, `participants`, `recording`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, '203', NULL, NULL, NULL, 'Basic', 1, '549', 'Max 20', 'N/A', NULL, '0', '23-06-2021 18:01:36', NULL),
(2, '200', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '23-06-2021 18:06:40', NULL),
(3, '200', NULL, NULL, NULL, 'Basic', 1, '549', 'Max 20', 'N/A', NULL, '0', '23-06-2021 18:08:36', NULL),
(4, '200', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '23-06-2021 18:11:29', NULL),
(5, '200', 22, 3, 'https://caratesting.weconference.in/conf/call/200', 'Standard', 6, '3894', 'Max 50', 'A+V', 'TXN_SUCCESS', '1', '23-06-2021 18:13:39', NULL),
(6, '20000000', 23, 4, 'https://caratesting.weconference.in/conf/call/20000000', 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '1', '23-06-2021 18:40:30', NULL),
(7, '20000001', 24, 5, 'https://caratesting.weconference.in/conf/call/20000001', 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '1', '23-06-2021 18:55:00', NULL),
(8, '20000002', NULL, NULL, NULL, 'Premium', 1, '889', 'Max 100', 'A+V', NULL, '0', '23-06-2021 18:57:14', NULL),
(9, '20000003', NULL, NULL, NULL, 'Standard', 3, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 09:28:58', NULL),
(10, '20000003', NULL, NULL, NULL, 'Standard', 3, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 09:30:00', NULL),
(11, '20000004', NULL, NULL, NULL, 'Premium', 1, '889', 'Max 100', 'A+V', NULL, '0', '25-06-2021 09:33:54', NULL),
(12, '20000004', NULL, NULL, NULL, 'Basic', 1, '549', 'Max 20', 'N/A', NULL, '0', '25-06-2021 09:39:30', NULL),
(13, '20000005', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 09:41:34', NULL),
(14, '20000008', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 09:43:40', NULL),
(15, '20000009', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 09:47:13', NULL),
(16, '20000009', 32, 6, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '0', '25-06-2021 09:49:09', NULL),
(17, '20000009', 33, 7, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '1', '25-06-2021 09:52:10', NULL),
(18, '20000010', NULL, NULL, NULL, 'Basic', 1, '549', 'Max 20', 'N/A', NULL, '0', '25-06-2021 10:00:01', NULL),
(19, '20000011', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 10:03:14', NULL),
(20, '20000012', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 10:05:16', NULL),
(21, '20000013', 37, 8, 'https://caratesting.weconference.in/conf/call/20000013', 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '1', '25-06-2021 10:07:53', NULL),
(22, '20000014', 38, 9, 'https://caratesting.weconference.in/conf/call/20000014', 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '1', '25-06-2021 10:10:28', NULL),
(23, '20000015', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 10:31:32', NULL),
(24, '20000015', 40, 10, 'https://caratesting.weconference.in/conf/call/20000015', 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '1', '25-06-2021 10:32:33', NULL),
(25, '20000016', 41, 11, 'https://caratesting.weconference.in/conf/call/20000016', 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '0', '25-06-2021 10:37:50', NULL),
(26, '20000017', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 10:41:14', NULL),
(27, '20000018', 43, 12, 'https://caratesting.weconference.in/conf/call/20000018', 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '1', '25-06-2021 11:08:38', NULL),
(28, '20000019', 44, 13, 'https://caratesting.weconference.in/conf/call/20000019', 'Standard', 1, '549', 'Max 50', 'A+V', 'TXN_SUCCESS', '0', '25-06-2021 11:13:34', NULL),
(29, '20000019', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 11:40:12', NULL),
(30, '20000019', NULL, NULL, NULL, 'Standard', 1, '549', 'Max 50', 'A+V', NULL, '0', '25-06-2021 11:41:21', NULL),
(31, '20000019', 47, NULL, NULL, 'Premium', 12, '10320', 'Max 100', 'A+V', 'TXN_SUCCESS', '1', '25-06-2021 11:42:34', NULL),
(32, '203', 48, 14, 'https://caratesting.weconference.in/conf/call/203', 'Basic', 1, '549', 'Max 20', 'N/A', 'TXN_SUCCESS', '0', '25-06-2021 15:27:00', NULL),
(33, '203', 49, NULL, NULL, 'Basic', 1, '549', 'Max 20', 'N/A', 'TXN_SUCCESS', '1', '25-06-2021 15:30:09', NULL),
(34, '20000021', NULL, NULL, NULL, 'Basic', 1, '549', 'Max 20', 'N/A', NULL, '0', '03-07-2021 14:47:53', NULL),
(35, '20000025', 50, 15, 'https://caratesting.weconference.in/conf/call/20000025', 'Basic', 1, '549', 'Max 20', 'N/A', 'TXN_SUCCESS', '1', '03-07-2021 23:19:03', NULL),
(36, '20000029', 51, 16, 'https://caratesting.weconference.in/conf/call/20000029', 'Basic', 1, '549', 'Max 20', 'N/A', 'TXN_SUCCESS', '1', '05-07-2021 18:36:12', NULL),
(37, '20000028', 52, 17, 'https://caratesting.weconference.in/conf/call/20000028', 'Standard', 1, '669', 'Max 50', 'A+V', 'TXN_SUCCESS', '1', '05-07-2021 18:58:30', NULL),
(38, '20000031', 53, 18, 'https://caratesting.weconference.in/conf/call/20000031', 'Basic', 1, '549', 'Max 20', 'N/A', 'TXN_SUCCESS', '1', '07-07-2021 19:09:09', NULL),
(39, '20000032', 54, 19, 'https://caratesting.weconference.in/conf/call/20000032', 'Basic', 6, '3174', 'Max 20', 'N/A', 'TXN_SUCCESS', '1', '07-07-2021 23:08:54', NULL),
(40, '20000033', 55, 20, 'https://caratesting.weconference.in/conf/call/20000033', 'Basic', 6, '3174', 'Max 20', 'N/A', 'TXN_SUCCESS', '1', '08-07-2021 11:23:51', NULL),
(41, '20000034', 56, 21, 'https://caratesting.weconference.in/conf/call/20000034', 'Basic', 6, '3174', 'Max 20', 'N/A', 'TXN_SUCCESS', '1', '08-07-2021 12:44:57', NULL),
(42, '20000035', 57, 22, 'https://caratesting.weconference.in/conf/call/20000035', 'Basic', 6, '3174', 'Max 20', 'N/A', 'TXN_SUCCESS', '1', '08-07-2021 16:27:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan_price`
--

CREATE TABLE `tbl_plan_price` (
  `id` int(11) NOT NULL,
  `plan_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(5) NOT NULL,
  `duration` int(5) NOT NULL,
  `participants` int(5) NOT NULL,
  `recording` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_plan_price`
--

INSERT INTO `tbl_plan_price` (`id`, `plan_type`, `price`, `duration`, `participants`, `recording`) VALUES
(1, 'Basic', 549, 1, 20, 'N/A'),
(2, 'Basic', 539, 3, 20, 'N/A'),
(3, 'Basic', 529, 6, 20, 'N/A'),
(4, 'Basic', 520, 12, 20, 'N/A'),
(5, 'Standard', 669, 1, 50, 'A+V'),
(6, 'Standard', 659, 3, 50, 'A+V'),
(7, 'Standard', 649, 6, 50, 'A+V'),
(8, 'Standard', 625, 12, 50, 'A+V'),
(9, 'Premium', 889, 1, 100, 'A+V'),
(10, 'Premium', 879, 3, 100, 'A+V'),
(11, 'Premium', 869, 6, 100, 'A+V'),
(12, 'Premium', 860, 12, 100, 'A+V');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `star` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  `created_at` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`id`, `course_id`, `star`, `login_id`, `created_at`) VALUES
(1, 53, '3', 204, '21st of June 2021 04:35:47 PM'),
(2, 53, '4', 20000030, '6th of July 2021 10:18:47 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `cover_image` varchar(200) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` datetime DEFAULT NULL,
  `updated_by` datetime DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `pannumber` varchar(100) DEFAULT NULL,
  `gstnumber` varchar(100) DEFAULT NULL,
  `accountnumber` varchar(100) DEFAULT NULL,
  `ifsc` varchar(100) DEFAULT NULL,
  `bankname` varchar(100) DEFAULT NULL,
  `barch_name` varchar(40) DEFAULT NULL,
  `beneficiary` varchar(100) DEFAULT NULL,
  `meetlink` varchar(100) DEFAULT NULL,
  `address_proof` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `pancopy` varchar(100) DEFAULT NULL,
  `eheque` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`id`, `name`, `role_id`, `username`, `password`, `mobile_number`, `email`, `state`, `image`, `cover_image`, `city`, `zip`, `country`, `address`, `status`, `created_by`, `updated_by`, `company_name`, `pannumber`, `gstnumber`, `accountnumber`, `ifsc`, `bankname`, `barch_name`, `beneficiary`, `meetlink`, `address_proof`, `gstin`, `pancopy`, `eheque`) VALUES
(2, 'Vineet Bhaskar ', 2, 'tusharbisht199816@gmail.com', 'Skywart#380', '7985570425', 'tusharbisht199816@gmail.com', 9, 'http://skywart.com/my-assets/image/teacher/47a5be63d789cfc7dca4e908a8a1d208.jpg', NULL, 157, '206023', '', 'lucknow', 0, '2021-04-21 00:00:00', '2021-05-04 00:00:00', 'Vineet Coaching', '8445451212112', '', '546565555', '51515', 'ICICI', NULL, 'Divyam ', NULL, NULL, '', '', ''),
(3, 'Teacher today', 2, 'teacher@gmail.com', 'a123', '07896785675', 'teacher@gmail.com', 9, 'http://skywart.com/my-assets/image/teacher/60dce9aeae489aaf11d8b772e2df90bd.jpeg', NULL, 1, '273413', '', 'Lucknow', 0, '2021-04-22 00:00:00', '2021-05-25 00:00:00', '', '', '', '34567111111', 'ABC1212121', 'State Bank of India', 'asd', 'ABC', NULL, 'http://skywart.com/./my-assets/image/vendor/4e5aa8d89669730bfe5b5729ad4ac103.pdf', '', '', ''),
(4, 'Sanjay Rawat ', 2, 'creative.skywart@gmail.com', '1234', '7985570425', 'creative.skywart@gmail.com', 9, NULL, NULL, 157, '226032', NULL, 'Lucknow UP', 0, '2021-04-25 00:00:00', NULL, 'Sanjay coaching', '', '', '565151512511', '54584151', 'Union Bank ', 'Lucknow -21', 'Raj sinha ', NULL, 'http://skywart.com/./my-assets/image/vendor/a99b36ce25c0cb93f85bff03fdd53933.jpg', '', '', ''),
(6, 'Shiv', 2, 'interns.skywart@gmail.com', '1234', '7985570425', 'interns.skywart@gmail.com', 10, NULL, NULL, 231, '58855', NULL, 'Lucknow', 0, '2021-04-27 00:00:00', NULL, 'Hjcjvvu', '', '', '868668', '9669969y', 'Vjjvjv', 'Uufvu', 'Cjchcc', NULL, NULL, '', '', ''),
(10, 'Sanskar', 2, 'sanskar@gmail.com', '1234', '688585858', 'sanskar@gmail.com', 0, NULL, NULL, 0, '', NULL, 'Vuuvuvu', 0, '2021-04-27 00:00:00', NULL, '', '', '', '6868688', 'Fguguvuv', 'Yccycyc', 'Vuvuv', 'Uffgu', NULL, NULL, '', '', ''),
(18, 'Divyam', 2, 'divyam123@gmail.com', '12345', '9335530329', 'divyam123@gmail.com', 29, NULL, NULL, NULL, '', NULL, 'Lucknow UP', 0, '2021-04-29 00:00:00', NULL, '', '', '', '5151515515', '5151', 'SBI', 'Lucknow', 'Jay', NULL, 'http://skywart.com/./my-assets/image/vendor/238c512d2f0ffd872490cbf34a5d6a90.jpeg', '', '', ''),
(20, 'Naman Joshi', 2, 'naman@gmail.com', '12345', '7985570428', 'naman@gmail.com', 0, 'http://skywart.com/my-assets/image/teacher/bb600b53457492bfa68e4bdcc3c11052.jpg', NULL, 1, '', '', 'Mumbai, India', 0, '2021-05-13 00:00:00', '2021-05-13 00:00:00', '', '', '', '1234567', '12345', 'SBI', 'Mumbai', 'Yash', NULL, 'http://skywart.com/./my-assets/image/vendor/0162366376022506b28cd6d464449fef.png', '', '', ''),
(21, 'Vishwas Roy', 2, 'Vishwas@gmail.com', '12345', '933657894', 'Vishwas@gmail.com', 27, 'http://www.skywart.com/my-assets/image/teacher/a237780db2b386842380da09cc358ccf.jpg', NULL, 7, '', '', 'Mumbai,India', 0, '2021-05-20 00:00:00', '2021-05-20 00:00:00', '', '', '', '5145515215212121', '54544', 'Union Bank of India', '201, Bandra street', 'None', NULL, 'http://www.skywart.com/./my-assets/image/vendor/8f34a31ff50560a506a205a1b1784538.jpg', '', '', ''),
(23, 'Jai Tolani', 2, 'jaitolani@gmail.com', 'skywart123', '9336301731', 'jaitolani@gmail.com', 0, NULL, NULL, 0, '', NULL, 'DS Sector-C Kursi Road Jankipuram', 0, '2021-05-23 00:00:00', NULL, '', '', '', '0123456789', 'STBP0123456', 'STATE BANK OF INDIA', 'ALIGANJ', 'JAI TOLANI', NULL, 'http://skywart.com/./my-assets/image/vendor/a870242f095e772fd7e4bd6955bdab18.png', '', '', ''),
(24, 'Jai Kishan', 2, 'jai@gmail.com', '12345', '54545451521', 'jai@gmail.com', 0, 'http://www.skywart.com/my-assets/image/teacher/89e6fb56ef45a183e2d4086b8eb387a6.jpg', NULL, 1, '', '', 'Lucknow,India', 0, '2021-05-23 00:00:00', '2021-05-23 00:00:00', '', '', '', '45454424242', '42424224', 'gssgfgs', '54722442', 'hdhdhf', NULL, 'http://www.skywart.com/./my-assets/image/vendor/918ea4dc16dc43a61f7165969eee31f2.jpg', '', '', ''),
(25, 'Raj', 2, 'teacher1@gmail.com', '123456', '1196785675', 'teacher1@gmail.com', 0, 'https://skywart.com/my-assets/image/teacher/aca551cd21318a7229c1ace9ac8207f5.jpeg', NULL, 1, '', '', 'Lucknow', 0, '2021-06-02 00:00:00', '2021-06-02 00:00:00', '', '', '', '34567', 'ABC1212121', 'State Bank of India', 'Lucknow', 'ABC bbbbb', NULL, 'https://skywart.com/./my-assets/image/vendor/b55ad46aba960386de91934342bc8f19.jpeg', '', '', ''),
(26, 'Akhil Dubey', 2, 'akhildubey@gmail.com', '123456789', '8853481007', 'akhildubey@gmail.com', 0, NULL, NULL, 0, '', NULL, 'DS/7 Sector-C Kursi Road Jankipuram', 0, '2021-06-02 00:00:00', NULL, '', '', '', '123456789', 'STBP123456789', 'State Bank of India', 'Aliganj', 'Akhil', NULL, 'http://www.skywart.com/./my-assets/image/vendor/6986cb0b2a070418b3b1025e9c60e111.png', '', '', ''),
(27, 'Nadeem Ashraf', 2, 'testEmail@gmail.com', 'test123', '9999999998', 'testEmail@gmail.com', 0, NULL, NULL, 0, '', NULL, 'Address, Street, City', 0, '2021-06-02 00:00:00', NULL, '', '', '', '1', '2', 'a', 'b', 'c', NULL, 'http://skywart.com/./my-assets/image/vendor/6e16f46bb6a097a66699e89f29fd2f6e.jpg', '', '', ''),
(28, 'Mukesh Sinha', 2, 'mukesh@gmail.com', '12345', '9616955529', 'mukesh@gmail.com', 9, 'http://skywart.com/my-assets/image/teacher/0dffd28f1d60e81a6bb6a35c939f2788.jpg', NULL, 157, '226038', '', '9616955529', 0, '2021-06-04 00:00:00', '2021-06-04 00:00:00', 'Mukesh Coaching', '', '', '123456789', '12345697', 'Bank of Barodra', 'Lucknow', 'akash', NULL, 'http://skywart.com/./my-assets/image/vendor/aab5011d761e0c761d4fa0a21f56885b.jpeg', '', '', ''),
(29, 'Nadeem', 2, 'nadeem@test.com', 'test123', '7', 'nadeem@test.com', 0, NULL, NULL, 0, '', NULL, 'Address', 0, '2021-06-04 00:00:00', NULL, '', '', '', '1', '2', 'a', 'b', 'c', NULL, 'http://www.skywart.com/./my-assets/image/vendor/30c1834cc96c2cecd63b284fcc2aafd1.jpg', '', '', ''),
(30, 'Rajat Patel', 2, 'rajat@gmail.com', '1234', '933551234', 'rajat@gmail.com', 9, 'http://skywart.com/my-assets/image/teacher/5076f4b35076658fe1f910a26a92abfe.jpg', NULL, 1, '', '', 'Luccknow , UP', 0, '2021-06-14 00:00:00', '2021-06-14 00:00:00', '', '', '', '123123123123', '25151', 'SBI', 'lucknow', 'tushar', NULL, 'http://skywart.com/./my-assets/image/vendor/a21adf2f1322b4d8297068098420cd9e.pdf', '', '', ''),
(31, 'Farhan Quazi', 2, 'qwerty@gmail.com', '123123', '7894561237', 'qwerty@gmail.com', 0, NULL, NULL, 0, '226021', NULL, 'aliganj', 0, '2021-06-16 00:00:00', NULL, '', '', '', '12345678901', 'HDFC1000020', 'HDFC', 'aliganj', 'FATHER', NULL, 'http://skywart.com/./my-assets/image/vendor/345240b603e56913748d108f221a5e21.png', '', '', ''),
(32, 'Sujoy Gosh', 2, 'sujoy@gmail.com', '1234', '56465454', 'sujoy@gmail.com', 0, NULL, NULL, 0, '', NULL, 'nnknsdknks', 0, '2021-06-18 00:00:00', NULL, '', '', '', '615151515151', '51515', 'safsfsa', 'asfffsasfsfasf', 'sas', NULL, 'http://skywart.com/./my-assets/image/vendor/9831a77362a57534b9bedcef54b1e0b0.jpg', '', '', ''),
(33, 'Test', 2, 'teacher1@gmail.com', '123456', '3456789', 'teacher1@gmail.com', 0, 'https://8bittask.com/skydeploy/my-assets/image/teacher/3e3cd28185619ffeee49917eb454f468.jpeg', 'https://8bittask.com/skydeploy/my-assets/image/teacher/45a364ec6ccd8ebeb47c3e3849991af2.png', 1, '', '', 'Lucknow', 0, '2021-06-25 00:00:00', '2021-07-07 00:00:00', '', '', '', '34567', 'ABC1212121', 'State Bank of India', 'Lucknow', 'ABC bbbbb', NULL, 'https://8bittask.com/skydeploy/my-assets/image/teacher/42fec298edb2357c85c5a3ecd9d53a0c.jpeg', 'https://8bittask.com/skydeploy/my-assets/image/teacher/7fb2b93a2523a03a2d63a484173fe62c.jpeg', 'https://8bittask.com/skydeploy/my-assets/image/teacher/dd684266bf94afa829c04b919905e976.jpeg', 'https://8bittask.com/skydeploy/my-assets/image/teacher/3e3cd28185619ffeee49917eb454f468.jpeg'),
(34, 'Test', 2, 'live@gmail.com', '123456', '345678990', 'live@gmail.com', 0, NULL, NULL, 0, '', NULL, 'Lucknow', 0, '2021-07-01 00:00:00', NULL, '', '', '', '34567', 'ABC1212121', 'State Bank of India', 'Lucknow', 'ABC bbbbb', NULL, 'http://8bittask.com/skydeploy/./my-assets/image/vendor/f724cb97db284d76c8c26c3efd1d3d77.png', '', '', ''),
(35, 'Test', 2, 'herodheeraj8931@gmail.com', '123456', '17896785675', 'herodheeraj8931@gmail.com', 0, 'https://8bittask.com/skydeploy/my-assets/image/teacher/31c8bbb6a601864a51857c672f3176ff.jpeg', NULL, 1, '', '', 'Lucknow', 0, '2021-07-03 00:00:00', '2021-07-06 00:00:00', '', '', '', '34567', 'ABC1212121', 'State Bank of India', 'Lucknow', 'ABC bbbbb', NULL, 'http://8bittask.com/skydeploy/./my-assets/image/vendor/32d16437bbf2baefe8d99374384a70be.jpg', '', '', ''),
(36, 'Deepanshu Verma', 2, 'deepanshu@gmail.com', '12345', '99595656232', 'deepanshu@gmail.com', 0, 'http://8bittask.com/skydeploy/my-assets/image/teacher/78362a660167a1b2b38f4f1f4c6c0a1d.jpeg', NULL, 1, '', '', 'jsdnjnsdjns', 0, '2021-07-03 00:00:00', '2021-07-07 00:00:00', '', '', '', '66151515152', '112121', 'UBI', 'Lucknow', 'Rajat', NULL, 'http://8bittask.com/skydeploy/./my-assets/image/vendor/84ee08c5841c4e335738137cb63f4403.png', '', '', ''),
(37, 'Karan Joshi', 2, 'abc@gmail.com', '123456789', '9335656987', 'abc@gmail.com', 9, 'http://8bittask.com/skydeploy/my-assets/image/teacher/32ed6923cc29dc44db77c37a26ba901c.jpeg', '', 157, '226021', '', 'DS/7 Sector-C', 0, '2021-07-05 00:00:00', '2021-07-08 00:00:00', '', '', '', '123456789', 'SBIN00123456789', 'State Bank Of India', 'Lucknow-Aliganj', 'Vaasu Joshi', NULL, '', '', '', ''),
(38, 'Sundar Singh', 2, 'sundar@gmail.com', '123', '9335530378', 'sundar@gmail.com', 0, '', NULL, 1, '', '', 'lucknow', 0, '2021-07-05 00:00:00', '2021-07-06 00:00:00', '', '', '', '454545454545', '845454', 'SBI', '545', 'scssd', NULL, 'http://8bittask.com/skydeploy/./my-assets/image/vendor/2d207e14a1663d0f2d9f2acb51af6464.png', '', '', ''),
(39, 'Tarun', 2, 'tarun@gmail.com', '1234', '9335530327', 'tarun@gmail.com', 9, 'http://8bittask.com/skydeploy/my-assets/image/teacher/0ee1e25a675bd13e070c41516b996d71.jpg', NULL, 157, '84545', '', 'd4dddd', 0, '2021-07-07 00:00:00', '2021-07-07 00:00:00', 'ABC', '84454', '', '844545515', '5454', 'WDDDD', 'DDDDCD', 'SDSSCS', NULL, 'http://8bittask.com/skydeploy/./my-assets/image/vendor/ff3e402cba55e18252482e223133c316.jpeg', '', '', ''),
(40, 'Deepanshu Singh', 2, 'deepanshu5@gmail.com', '12345', '9889746545', 'deepanshu5@gmail.com', 9, 'http://8bittask.com/skydeploy/my-assets/image/teacher/be1009d51dfd32f72ef167739f8cac72.jpg', 'http://8bittask.com/skydeploy/my-assets/image/teacher/a6c60ca9662bd5f86cca6cafaee52b45.jpg', 18, '226022', '', 'Vikas Nagar Lucknow', 0, '2021-07-07 00:00:00', '2021-07-07 00:00:00', 'Deepanshu Coaching Institute', '3121212122121', '1212212', '21212212121212', '2121212', 'SBI', 'Lucknow', 'Rahul', NULL, 'http://8bittask.com/skydeploy/./my-assets/image/vendor/d7972ab945d637804601fdf551d91f25.png', '', '', ''),
(41, 'Sunny Singh', 2, 'sunny@gmail.com', '12345', '5455515151515', 'sunny@gmail.com', 9, 'http://8bittask.com/skydeploy/my-assets/image/teacher/087310e6078739aa3cd005455673b486.jpg', 'http://8bittask.com/skydeploy/my-assets/image/teacher/52788996bfe5bcef754a95be6f91acce.jpg', 661, '226031', '', 'Vikas Nagar Lucknow', 0, '2021-07-08 00:00:00', '2021-07-08 00:00:00', 'Insitute Lucknow', '65662123', '5656515', '123123123123', '25151', 'UBI', 'Lucknow', 'raj', NULL, 'http://8bittask.com/skydeploy/./my-assets/image/vendor/de85fe521875116cf9d3337adf8d52e2.png', 'http://8bittask.com/skydeploy/./my-assets/image/vendor/b32699174486f3bbf54446f638312132.png', 'http://8bittask.com/skydeploy/./my-assets/image/vendor/a09db4de86b262dbd45c7c94777c161d.png', 'http://8bittask.com/skydeploy/./my-assets/image/vendor/62e94d3ce53c8cb5f33a89982e319a5e.png'),
(42, 'Gagan  Singh', 2, 'gagan@gmail.com', '12345', '9335530381', 'gagan@gmail.com', 9, 'http://8bittask.com/skydeploy/my-assets/image/teacher/7c1e47b7e6685fed35b22367e99b68f3.jpg', 'http://8bittask.com/skydeploy/my-assets/image/teacher/12042d37bb14bff2a76bc738f199400b.jpg', 171, '226032', '', 'vikas Nagar Lucknow', 0, '2021-07-08 00:00:00', '2021-07-08 00:00:00', 'Gagan Institute', '4567899446662', '456666', '123123123123', '25151', 'SBI', 'Lucknow', 'tushar', NULL, 'http://8bittask.com/skydeploy/./my-assets/image/vendor/65fcc140c21b0ac52fe584900d122ea3.png', '', 'http://8bittask.com/skydeploy/./my-assets/image/vendor/0debc66895ef98fb44a8ed66ecc0157c.png', 'http://8bittask.com/skydeploy/./my-assets/image/vendor/50bb808ce35023b60a663f466755a43d.png'),
(43, 'Shekhar Pandey', 2, 'shekhar@gmail.com', '12345', '7955801425', 'shekhar@gmail.com', 9, 'http://8bittask.com/skydeploy/my-assets/image/teacher/9c4765643c8238cf7742df2fa0c6ea9a.jpeg', 'http://8bittask.com/skydeploy/my-assets/image/teacher/9611f41a2246c4fee2f06d56cd70b195.jpg', 162, '226032', '', 'Vikas Nagar Lucknow', 0, '2021-07-08 00:00:00', '2021-07-08 00:00:00', 'Shekar Institute', '226022', '4545454', '123123123123', '25151', 'SBI', 'Lucknow', 'Rahul', NULL, 'http://8bittask.com/skydeploy/./my-assets/image/vendor/8b637a39c7dc69eda8bc92509728b46e.png', '', 'http://8bittask.com/skydeploy/./my-assets/image/vendor/b06e37341a0f5c71f9e492ff15f994fd.png', 'http://8bittask.com/skydeploy/./my-assets/image/vendor/560daf5539f69658e45e59d5b4774f2d.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher_batch_course`
--

CREATE TABLE `tbl_teacher_batch_course` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `end_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `week` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fess` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_teacher_batch_course`
--

INSERT INTO `tbl_teacher_batch_course` (`id`, `course_id`, `class`, `batch_name`, `start_time`, `end_time`, `week`, `fess`, `amount`) VALUES
(1, 10, NULL, 'morning', '12:00 PM', '01:00 PM', NULL, NULL, NULL),
(2, 10, NULL, 'AVC', '12:00 PM', '01:00 PM', NULL, NULL, NULL),
(3, 0, NULL, 'AVC', '12:00 PM', '01:00 PM', NULL, NULL, NULL),
(4, 10, NULL, 'ABC', '10:00AM', '11:00Am', NULL, NULL, NULL),
(5, 24, NULL, 't2', '14:38', '14:50', NULL, NULL, NULL),
(6, 34, NULL, 'Batch 01', '03:45PM', '04:30PM', NULL, NULL, NULL),
(7, 35, NULL, 'Batch 1', '02:15PM', '03:15PM', NULL, NULL, NULL),
(8, 35, NULL, 'Batch 1', '02:15PM', '03:15PM', NULL, NULL, NULL),
(9, 40, NULL, '1B', '01:30PM', '02:30PM', NULL, NULL, NULL),
(10, 40, NULL, '2B', '06:30PM', '07:30PM', NULL, NULL, NULL),
(11, 43, 'Class 6', 'Batch 1', '05:25PM', '07:05PM', 'Tuesday,Wednesday', 1, 1000),
(12, 43, 'Class 7', 'Batch 2', '05:25PM', '04:15PM', 'Tuesday', 1, 1200),
(13, 51, '11', '11 A ', '06:30PM', '07:30PM', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday', 1, 1200),
(14, 51, '12', '12 A', '02:30PM', '03:30PM', 'Monday,Tuesday,Wednesday,Saturday', 1, 2000),
(15, 54, '6th ', '6A', '06:30PM', '07:30PM', 'Monday,Tuesday,Wednesday,Thursday,Friday', 2, 1300),
(16, 55, '12', 'AVC', '05:25PM', '03:15PM', 'Tuesday', 1, 1000),
(17, 54, '7th', '7A', '02:30PM', '03:30PM', 'Monday,Tuesday,Wednesday,Friday', 1, 1000),
(18, 56, '10', '10 A ', '02:30PM', '03:30PM', 'Monday,Tuesday,Wednesday,Thursday', 2, 1200),
(19, 56, '12TH', '12A ', '07:25PM', '08:25PM', 'Monday,Tuesday,Wednesday,Friday,Saturday', 2, 1300),
(20, 57, '11th ', '11A', '10:30AM', '11:30AM', 'Monday,Tuesday,Thursday,Friday,Saturday', 2, 1000),
(21, 57, '12TH', '12A ', '03:30PM', '04:00PM', 'Monday,Tuesday,Wednesday,Friday', 1, 1200),
(22, 58, '12', '12A ', '07:25PM', '07:30PM', 'Monday,Tuesday,Wednesday,Friday', 1, 1300),
(23, 59, '6', 'Super batch', '06:30PM', '07:30PM', 'Tuesday,Wednesday,Friday', 1, 10000),
(24, 60, '11th ', '11A', '03:00PM', '04:00PM', 'Monday,Tuesday,Wednesday,Friday,Saturday', 1, 1200),
(25, 61, '11th', '11A', '02:30PM', '03:30PM', 'Monday,Tuesday,Thursday,Friday,Saturday', 2, 1000),
(26, 61, '12th', '12A ', '04:25PM', '05:05PM', 'Wednesday,Thursday,Friday,Saturday', 2, 1200),
(27, 62, '11th', '11A', '06:30PM', '07:30PM', 'Monday,Tuesday,Wednesday,Thursday,Friday', 2, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mob_no` int(11) DEFAULT NULL,
  `profile_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `country` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_education`
--

CREATE TABLE `tbl_user_education` (
  `id` int(11) NOT NULL,
  `login_id` int(11) DEFAULT NULL,
  `column_1` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_2` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_6` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_7` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user_education`
--

INSERT INTO `tbl_user_education` (`id`, `login_id`, `column_1`, `column_2`, `column_3`, `column_4`, `column_5`, `column_6`, `column_7`) VALUES
(1, 163, '[\"B.teach\"]', '[\" 2 Collage Name\"]', 'Degree Post Graduation', 'Collage Name Post Graduation', 'Home Tutor', '', '[\"\"]'),
(2, 185, '[\"B.Teach\"]', '[\"S.k Collage\"]', '', '', 'None', '1 Year', '[\"\"]'),
(3, 161, '[\"B.com\"]', '[\"National PG College \"]', 'MBA ', 'Lucknow University ', 'Home Tutor', '2 Years ', '[\"O Level , NIELIT\",\"CCC , NIELIT \"]'),
(4, 193, '[\"B.com \"]', '[\"Trinty College \"]', 'MBA', 'Shri Ramswraoop College ', 'School / collage Teacher', '5 Years ', '[\"\"]'),
(5, 194, '[\"\"]', '[\"\"]', '', '', 'Home Tutor', '', '[\"HEllo WOrld, \"]'),
(6, 200, '[\"B.com \"]', '[\"Trinty College \"]', 'MBA', '', 'School / collage Teacher', '5 Years ', '[\"O Level ,NIELIT\"]'),
(7, 203, '[\"B.Teach\"]', '[\"S.k Collage\"]', '', '', 'School / collage Teacher', '1', '[\"B.teach Certification\"]'),
(8, 212, '[\"B.com\"]', '[\"National PG College \"]', 'MBA ', 'Lucknow University ', 'School / collage Teacher', '5 ', '[\"O Level , NIELIT\",\"CCC ,NIELIT\"]'),
(9, 20000029, '[\"B.com\"]', '[\"National PG College \"]', 'MBA ', 'Lucknow University ', 'Home Tutor', '2 Years ', '[\"O Level , NIELIT\"]'),
(10, 20000032, '[\"B.com\"]', '[\"National PG College \"]', 'MBA ', 'Lucknow University ', 'Home Tutor', '2 Years ', '[\"O Level , NIELIT\"]'),
(11, 20000033, '[\"B.com\"]', '[\"National PG College \"]', 'MBA ', 'Lucknow University ', 'Home Tutor', '2 Years ', '[\"O Level , NIELIT\"]'),
(12, 20000034, '[\"B.com\"]', '[\"National PG College \"]', 'MBA ', 'Lucknow University ', 'Home Tutor', '2 Years ', '[\"O Level , NIELIT\"]'),
(13, 20000035, '[\"B.com\"]', '[\"National PG College \"]', 'MBA ', 'Lucknow University ', 'Home Tutor', '2 Years ', '[\"O Level , NIELIT\"]');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vedio_conference`
--

CREATE TABLE `tbl_vedio_conference` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `host_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meeting_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_token_public_key` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `openid_sub` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_slug` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_on_slugs` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription_ids` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_vedio_conference`
--

INSERT INTO `tbl_vedio_conference` (`id`, `login_id`, `host_id`, `meeting_url`, `role`, `login_token_public_key`, `openid_sub`, `plan_slug`, `add_on_slugs`, `subscription_ids`) VALUES
(1, 0, '3773690', 'https://caratesting.weconference.in/conf/call/21343338', 'HOST', '48c78584d40bc25d027f2259b37763e661b21479753c76b3fe64d9c68f4ca4f2', NULL, 'ectlvc_meet20', NULL, NULL),
(2, 0, '3773698', 'https://caratesting.weconference.in/conf/call/21343339', 'HOST', 'c1d0d29548ba43fbbdc40500a079c4c7996307ae4555441a0f98a77ef2abf25a', NULL, 'ectlvc_meet20', NULL, NULL),
(3, 0, '3773734', 'https://caratesting.weconference.in/conf/call/200', 'HOST', 'f45779b5bfc6bcf8d6a2f20cb5a8fb9a438abb599aceac0bdb5db47298ee523b', NULL, 'ectlvc_meet50', NULL, NULL),
(4, 0, '3773749', 'https://caratesting.weconference.in/conf/call/20000000', 'HOST', 'd3e9e85b87ba8537e6ce4c6e97da2c78e2305359a908918fafdd41970522486b', NULL, 'ectlvc_meet50', NULL, NULL),
(5, 0, '3773759', 'https://caratesting.weconference.in/conf/call/20000001', 'HOST', '92bcd7a238502216a72594cbe16629b7df7b2fc6a43bc6562a241d296add0174', NULL, 'ectlvc_meet50', NULL, NULL),
(6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, '3774792', 'https://caratesting.weconference.in/conf/call/20000013', 'HOST', 'e03870ec0b350ade91aad580d734e7984d3abfdc40f8172622f7fd89663c5d0c', NULL, 'ectlvc_meet50', NULL, NULL),
(9, 0, '3774793', 'https://caratesting.weconference.in/conf/call/20000014', 'HOST', 'e6eb522c3a844254ba10b738c56432b4da30d1c68f80ee0ee26b7658de15d8a0', NULL, 'ectlvc_meet50', NULL, NULL),
(10, 0, '3774807', 'https://caratesting.weconference.in/conf/call/20000015', 'HOST', '9c27c6d5a2c5763ee3ea64bdff641207f12edf1a202fb6c65b6492a143ed11ee', NULL, 'ectlvc_meet50', NULL, NULL),
(11, 0, '3774810', 'https://caratesting.weconference.in/conf/call/20000016', 'HOST', '0ece5bd7f3f4d0cf6651ec40b5e24e6016430e5f1b0a08a7771584e0c644b9de', NULL, 'ectlvc_meet50', NULL, NULL),
(12, 20000018, '3774821', 'https://caratesting.weconference.in/conf/call/20000018', 'HOST', '69bf9d711c9777e3cb25cde6a51690fbeb2941a21c12add2d9b73a6a5ea4ac3e', NULL, 'ectlvc_meet50', NULL, '9063147'),
(13, 20000019, '3774823', 'https://caratesting.weconference.in/conf/call/20000019', 'HOST', 'd18658e41f6347a0943416a62cbecc5316dfd34a84e3f2b5b6f67b9f4499464d', NULL, 'ectlvc_meet250', NULL, '9063148'),
(14, 203, '3774948', 'https://caratesting.weconference.in/conf/call/203', 'HOST', '87b7fcee17be7b99975b75b9d5d9325661f5049a823668c3a97536e444fedbf5', NULL, 'ectlvc_meet20', NULL, '9063146'),
(15, 20000025, '3780102', 'https://caratesting.weconference.in/conf/call/20000025', 'HOST', '73320b5d73d7154d4691689511463efa2f89520bfced7ad52f86f75831719769', NULL, 'ectlvc_meet20', NULL, '9063146'),
(16, 20000029, '3780662', 'https://caratesting.weconference.in/conf/call/20000029', 'HOST', '1016a3a859394e19ed63c9d4d225b4a81fb62950f3c81a234a4e9cbb8ee9a2c3', NULL, 'ectlvc_meet20', NULL, '9063146'),
(17, 20000028, '3780667', 'https://caratesting.weconference.in/conf/call/20000028', 'HOST', '3d455b02fc593be603faca82228c34b9436d250a20eae87c6e6163b74d2aa5a8', NULL, 'ectlvc_meet50', NULL, '9063147'),
(18, 20000031, '3781390', 'https://caratesting.weconference.in/conf/call/20000031', 'HOST', 'feb6e40c366f04c48d6b31bb57f079d4a675f791cf548312f46f287e5af749ab', NULL, 'ectlvc_meet20', NULL, '9063146'),
(19, 20000032, '3781477', 'https://caratesting.weconference.in/conf/call/20000032', 'HOST', 'ef76ba990ac513c2a4daa7d1dcd57e746954a69204322d6595693a9e150c3f84', NULL, 'ectlvc_meet20', NULL, '9063146'),
(20, 20000033, '3781665', 'https://caratesting.weconference.in/conf/call/20000033', 'HOST', 'fa62610c005b93b4594e5adfb4b56d64e30002bff81010cf73fab5dbbf54f69d', NULL, 'ectlvc_meet20', NULL, '9063146'),
(21, 20000034, '3781683', 'https://caratesting.weconference.in/conf/call/20000034', 'HOST', 'acc281afa8015ab0f3323b6c7f69bbcddca8dc6cd2ac509b66c91d3d86c8e421', NULL, 'ectlvc_meet20', NULL, '9063146'),
(22, 20000035, '3781739', 'https://caratesting.weconference.in/conf/call/20000035', 'HOST', '401e07b76b6a8bbbd133ac21def52197d2f289daa14e4bacb8e146983c88f1a3', NULL, 'ectlvc_meet20', NULL, '9063146');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `testimonials` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `testimonials`, `status`, `created_by`, `updated_by`) VALUES
(1, 'Millions of tree\'s are cut down every year reduce it by joining our  \"Books Town Module\" Initiative', 0, '2020-10-17 00:00:00', '2021-01-22 00:00:00'),
(2, 'E-Learning doesn\'t just \"happen\"! It requires careful planning and implementation', 0, '2020-10-17 00:00:00', '2021-01-22 00:00:00'),
(3, 'People expect to be bored by eLearning—let’s show them it doesn’t have to be like that', 0, '2021-01-22 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `unit_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_id`, `unit_name`, `status`) VALUES
(1, 'VCGY63HHQ4SLXLP', '1 Jodi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_feature`
--

CREATE TABLE `upcoming_feature` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcoming_feature`
--

INSERT INTO `upcoming_feature` (`id`, `image`, `status`, `created_by`, `updated_by`) VALUES
(1, 'http://scsy.in/school/my-assets/image/feature/7fbf731070f9a8332c5b93a97f74ca91.png', 0, '2020-10-17 00:00:00', '2021-02-01 00:00:00'),
(2, 'http://scsy.in/school/my-assets/image/feature/ed90722274dec83740a78806931a1146.png', 0, '2020-10-17 00:00:00', '2021-02-01 00:00:00'),
(3, 'http://scsy.in/school/my-assets/image/feature/79bd83c2824b5c6b626760cd3593eeb9.png', 0, '2020-10-17 00:00:00', '2021-02-01 00:00:00'),
(4, 'http://scsy.in/school/my-assets/image/feature/e70e8af4eaab8a4ab1920bb5e030055c.png', 0, '2020-10-17 00:00:00', '2021-02-01 00:00:00'),
(5, 'http://scsy.in/school/./my-assets/image/feature/187f8f2ed94f03428fa0039c453c2acb.png', 0, '2021-02-01 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES
(1, '2', 'Qazi', 'Farhan', NULL, NULL, NULL, NULL, NULL, 'http://localhost/saleserp_v9.8/assets/dist/img/profile_picture/profile.jpg', 1),
(2, '1', 'Qazi', 'Farhan', NULL, NULL, NULL, NULL, NULL, 'http://scsy.in/school/assets/dist/img/profile_picture/1cb44b85d9035fb0a9652601be2b490f.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE `userss` (
  `id` int(11) NOT NULL,
  `oauth_provider` enum('facebook','google','twitter','') COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `oauth_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_enquary`
--

CREATE TABLE `user_enquary` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `query` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, '2', 'skywartgroup@gmail.com', '1e3f22b029a5941fc962f4fdc4526359', 1, NULL, 1),
(2, '1', 'amit@gmail.com', '1e3f22b029a5941fc962f4fdc4526359', 1, NULL, 1),
(3, '1', 'amit@gmail.com', '1e3f22b029a5941fc962f4fdc4526359', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `address_proof` varchar(100) DEFAULT NULL,
  `pannumber` varchar(100) NOT NULL,
  `gstnumber` varchar(100) NOT NULL,
  `accountnumber` varchar(100) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `beneficiary` varchar(100) NOT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `pancopy` varchar(100) DEFAULT NULL,
  `gstcopy` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) NOT NULL,
  `meetlink` varchar(100) NOT NULL,
  `terms_condition` int(11) NOT NULL,
  `eheque` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `role_id`, `username`, `image`, `password`, `mobile_number`, `email`, `state`, `city`, `zip`, `country`, `address`, `company_name`, `address_proof`, `pannumber`, `gstnumber`, `accountnumber`, `ifsc`, `bankname`, `beneficiary`, `image1`, `pancopy`, `gstcopy`, `gstin`, `meetlink`, `terms_condition`, `eheque`, `status`, `created_by`, `updated_by`) VALUES
(1, 'PUBLISHER', 9, 'vender@gmail.com', 'https://skywart.com/my-assets/image/teacher/b71c6b2f6a8e771990835ba801410056.jpeg', 'Skywart#925', '123456', 'vender@gmail.com', '11', '244', '123456', '', 'Lucknow', 'Abc Company Name', 'http://skywart.com/./my-assets/image/vendor/423d3de5a8504d8ffddd3dd40906b6b6.jpeg', '23456', '4567i', '34567', '5678', '4567', '567', NULL, 'http://skywart.com/./my-assets/image/vendor/1f8c445ff1bc2b9673fdce51e1c36890.jpeg', NULL, 'http://skywart.com/./my-assets/image/vendor/090a4f5687df98b9f0924a3f255162a4.jpeg', '', 0, 'http://skywart.com/./my-assets/image/vendor/31f6b3873616d709f4d8be2761037c41.jpeg', 0, '2021-02-09 00:00:00', '2021-04-12 00:00:00'),
(2, 'Dheeraj', 0, '0705@gmail.com', NULL, '123456', '123456', '0705@gmail.com', '', '', '123456', NULL, 'Lucknow', 'Abc Company Name', 'http://skywart.com/./my-assets/image/vendor/134e9fc840aea32c6abfecf5e138dbdc.png', '', '', '34567', '5678', '4567', '567', NULL, '', NULL, '', '', 0, '', 0, '2021-04-02 00:00:00', '0000-00-00 00:00:00'),
(3, 'Dheeraj', 0, '0709@gmail.com', NULL, '123', '123', '0709@gmail.com', '', '', '123456', NULL, 'Lucknow', 'Abc Company Name', 'http://skywart.com/./my-assets/image/vendor/1d304dce94413e9d83311e16661fb47f.png', '', '', '34567', '5678', '4567', '567', NULL, '', NULL, '', '', 0, '', 0, '2021-04-02 00:00:00', '0000-00-00 00:00:00'),
(4, 'god boy', 0, 'god@gmail.com', '', '121212', '9898989898', 'god@gmail.com', '', '001', '', '', 'bihar', '', 'http://skywart.com/./my-assets/image/vendor/a2bb6861985f414e8baddc696c7bf27b.jpg', '', '', '987654321', '123456789', 'guptaji', '', NULL, '', NULL, '', '', 0, '', 0, '2021-04-03 00:00:00', '2021-04-12 00:00:00'),
(5, 'Test', 0, 'vendora@gmail.com', NULL, '123456', '9876543219', 'vendora@gmail.com', '09', '198', '273413', NULL, 'Lucknow', '', 'http://skywart.com/./my-assets/image/vendor/89505602bacbf45a07350ddca704d304.jpg', '', '', '34567', '5678', '4567', '567', NULL, '', NULL, '', '', 0, '', 0, '2021-04-03 00:00:00', '0000-00-00 00:00:00'),
(6, 'ayush', 0, 'ayush@gmail.com', NULL, '121212', '12345678902', 'ayush@gmail.com', '', '', '', NULL, 'gorakhpur', '', 'http://skywart.com/./my-assets/image/vendor/1588c9daabc36d6097cc84dca4c01fbf.jpg', '', '', '34567', '5678', '4567', '', NULL, '', NULL, 'http://skywart.com/./my-assets/image/vendor/03849b0cc519f9369e8915102af9eb4e.jpg', '', 0, '', 0, '2021-04-03 00:00:00', '0000-00-00 00:00:00'),
(7, 'ayush1', 0, 'ayush1@gmail.com', NULL, '123123', '234567891', 'ayush1@gmail.com', '', '', '', NULL, 'kauriram', '', 'http://skywart.com/./my-assets/image/vendor/3e3f342bb6d43648f248120c8e77d45f.jpg', '', '', '34567', '5678', '4567', '', NULL, '', NULL, '', '', 0, '', 0, '2021-04-03 00:00:00', '0000-00-00 00:00:00'),
(8, 'Tushar', 0, 'skywart.group@gmail.com', 'http://skywart.com/my-assets/image/teacher/7026c260a41aa4e62f92d967fed8f89f.jpg', '123', '7985570425', 'skywart.group@gmail.com', '', '001', '206023', '', 'lucknow', 'Agrawal and sons', NULL, '', '', '54655555515', '151515', '6565', '554545', NULL, '', NULL, '', '', 0, '', 0, '2021-04-23 00:00:00', '2021-04-23 00:00:00'),
(9, 'Test', 0, 'vendorRegister@gmail.com', 'http://skywart.com/my-assets/image/teacher/4a5047e7b9024c619a6bdc5b124f8015.jpeg', '123456', '07896111785675', 'vendorRegister@gmail.com', '', '001', '273413', '', 'Lucknow', '', 'http://skywart.com/./my-assets/image/vendor/f4e5b676c8735235cf5f5c424c5cd2ce.png', '', '', '34567', '5678', 'State Bank of India', 'ABC bbbbb', NULL, '', NULL, '', '', 0, '', 0, '2021-04-27 00:00:00', '2021-04-27 00:00:00'),
(10, 'Shreevats Joshi', 0, 'shreevats@gmail.com', NULL, '12345', '6555515121', 'shreevats@gmail.com', '', '', '226021', NULL, 'Lucknow', 'Joshi Stores', NULL, '', '', '51515151551', '5151252', 'ICICI', 'tushar', NULL, '', NULL, '', '', 0, '', 0, '2021-05-07 00:00:00', '0000-00-00 00:00:00'),
(11, 'Dheeraj', 0, '1vendor7042021@gmail.com', NULL, '123456', '07896711112', '1vendor7042021@gmail.com', '', '', '123456', NULL, 'Lucknow', 'Abc Company Name', 'https://www.skywart.com/./my-assets/image/vendor/8be91a6591cf4af6d143bc47286869f8.pdf', '', '', '34567', '5678', 'State Bank of India', 'ABC bbbbb', NULL, '', NULL, '', '', 0, '', 0, '2021-05-08 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_category`
--

CREATE TABLE `vendor_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_category`
--

INSERT INTO `vendor_category` (`id`, `category_name`, `status`, `created_by`, `updated_by`) VALUES
(4, 'Vendor Category', 0, '2020-11-26 00:00:00', '0000-00-00 00:00:00'),
(5, 'test category', 0, '2020-11-26 00:00:00', '0000-00-00 00:00:00'),
(6, 'Earning & skill Based course', 0, '2020-11-26 00:00:00', '2020-11-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_subcategory`
--

CREATE TABLE `vendor_subcategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_subcategory`
--

INSERT INTO `vendor_subcategory` (`id`, `category_id`, `subcategory_name`, `status`, `created_by`, `updated_by`) VALUES
(2, 2, 'Ab', 0, '2020-11-26 00:00:00', '2020-11-26 00:00:00'),
(3, 6, 'subaCategory', 0, '2020-11-26 00:00:00', '0000-00-00 00:00:00'),
(4, 5, 'Elearning', 0, '2020-11-26 00:00:00', '0000-00-00 00:00:00'),
(5, 4, 'Vendor SubCategory', 0, '2020-11-26 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_subscription`
--

CREATE TABLE `vendor_subscription` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `current_symbol` varchar(100) NOT NULL,
  `currency_code` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `days` varchar(100) NOT NULL,
  `limit` varchar(100) NOT NULL,
  `details` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` datetime NOT NULL,
  `updated_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_subscription`
--

INSERT INTO `vendor_subscription` (`id`, `title`, `current_symbol`, `currency_code`, `cost`, `days`, `limit`, `details`, `status`, `created_by`, `updated_by`) VALUES
(4, 'Team', 'Team', 'Team', '44444', '333', '1', 'Team', 0, '2020-11-26 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `web_setting`
--

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT 1 COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES
(1, 'http://localhost/saleserp_v9.5/./my-assets/image/logo/1206e551e00e501b3defafdb1416cdad.png', 'http://localhost/saleserp_v9.5/./my-assets/image/logo/b98567c5bfbbd1a6709a9b6ae5ff279a.png', 'https://softest8.bdtask.com/saleserp_sas_v-2/my-assets/image/logo/0bb2ee8377d8672d55b553ef11f07d69.png', 'Rs.', 'Asia/Dhaka', '0', 'CopyrightÂ© 2019-2020 The All Safe. All rights reserved.', 'english', '0', 1, '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`),
  ADD KEY `HeadCode` (`HeadCode`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `COAID` (`COAID`);

--
-- Indexes for table `appointment_category`
--
ALTER TABLE `appointment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_setting`
--
ALTER TABLE `app_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `bank_add`
--
ALTER TABLE `bank_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_ads`
--
ALTER TABLE `campaign_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cityservice`
--
ALTER TABLE `cityservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competiton`
--
ALTER TABLE `competiton`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competiton_order`
--
ALTER TABLE `competiton_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competiton_register`
--
ALTER TABLE `competiton_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_solution`
--
ALTER TABLE `education_solution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `generate_id` (`generate_id`);

--
-- Indexes for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`e_s_s_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_item`
--
ALTER TABLE `expense_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules_category`
--
ALTER TABLE `modules_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules_learn`
--
ALTER TABLE `modules_learn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`tax_setup_id`);

--
-- Indexes for table `personal_loan`
--
ALTER TABLE `personal_loan`
  ADD PRIMARY KEY (`per_loan_id`);

--
-- Indexes for table `person_information`
--
ALTER TABLE `person_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_ledger`
--
ALTER TABLE `person_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_return`
--
ALTER TABLE `product_return`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_service`
--
ALTER TABLE `product_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quot_no` (`quot_no`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quot_id` (`quot_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `quot_id` (`quot_id`);

--
-- Indexes for table `request_module`
--
ALTER TABLE `request_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Indexes for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Indexes for table `salary_type`
--
ALTER TABLE `salary_type`
  ADD PRIMARY KEY (`salary_type_id`);

--
-- Indexes for table `scholarshipzone`
--
ALTER TABLE `scholarshipzone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_role`
--
ALTER TABLE `sec_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `service_invoice`
--
ALTER TABLE `service_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_register`
--
ALTER TABLE `student_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_module`
--
ALTER TABLE `sub_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_information`
--
ALTER TABLE `supplier_information`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD PRIMARY KEY (`supplier_pr_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `tax_collection`
--
ALTER TABLE `tax_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_councellor`
--
ALTER TABLE `tbl_councellor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_councellor_book_appointment`
--
ALTER TABLE `tbl_councellor_book_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_councellor_general_information`
--
ALTER TABLE `tbl_councellor_general_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_councellor_model`
--
ALTER TABLE `tbl_councellor_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_councellor_time_slot`
--
ALTER TABLE `tbl_councellor_time_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_councellor_time_slot_map`
--
ALTER TABLE `tbl_councellor_time_slot_map`
  ADD PRIMARY KEY (`id_map`);

--
-- Indexes for table `tbl_group_batch`
--
ALTER TABLE `tbl_group_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_join_course`
--
ALTER TABLE `tbl_join_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_learner_course`
--
ALTER TABLE `tbl_learner_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_learner_course_month_payment`
--
ALTER TABLE `tbl_learner_course_month_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_massage_teacher_user`
--
ALTER TABLE `tbl_massage_teacher_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_model_plan`
--
ALTER TABLE `tbl_model_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_model_plan_map`
--
ALTER TABLE `tbl_model_plan_map`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `tbl_paytm_patment`
--
ALTER TABLE `tbl_paytm_patment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plan_price`
--
ALTER TABLE `tbl_plan_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teacher_batch_course`
--
ALTER TABLE `tbl_teacher_batch_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`username`);

--
-- Indexes for table `tbl_user_education`
--
ALTER TABLE `tbl_user_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vedio_conference`
--
ALTER TABLE `tbl_vedio_conference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_feature`
--
ALTER TABLE `upcoming_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_enquary`
--
ALTER TABLE `user_enquary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_category`
--
ALTER TABLE `vendor_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_subcategory`
--
ALTER TABLE `vendor_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_subscription`
--
ALTER TABLE `vendor_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_setting`
--
ALTER TABLE `web_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `appointment_category`
--
ALTER TABLE `appointment_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_setting`
--
ALTER TABLE `app_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_add`
--
ALTER TABLE `bank_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `campaign_ads`
--
ALTER TABLE `campaign_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cityservice`
--
ALTER TABLE `cityservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `competiton`
--
ALTER TABLE `competiton`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `competiton_order`
--
ALTER TABLE `competiton_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `competiton_register`
--
ALTER TABLE `competiton_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `education_solution`
--
ALTER TABLE `education_solution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrolled`
--
ALTER TABLE `enrolled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_item`
--
ALTER TABLE `expense_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20000036;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `modules_category`
--
ALTER TABLE `modules_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modules_learn`
--
ALTER TABLE `modules_learn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_loan`
--
ALTER TABLE `personal_loan`
  MODIFY `per_loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_information`
--
ALTER TABLE `person_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_ledger`
--
ALTER TABLE `person_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_service`
--
ALTER TABLE `product_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_module`
--
ALTER TABLE `request_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `salary_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarshipzone`
--
ALTER TABLE `scholarshipzone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sec_role`
--
ALTER TABLE `sec_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_invoice`
--
ALTER TABLE `service_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_register`
--
ALTER TABLE `student_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `supplier_information`
--
ALTER TABLE `supplier_information`
  MODIFY `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_collection`
--
ALTER TABLE `tax_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_councellor`
--
ALTER TABLE `tbl_councellor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_councellor_book_appointment`
--
ALTER TABLE `tbl_councellor_book_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_councellor_general_information`
--
ALTER TABLE `tbl_councellor_general_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_councellor_model`
--
ALTER TABLE `tbl_councellor_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_councellor_time_slot`
--
ALTER TABLE `tbl_councellor_time_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_councellor_time_slot_map`
--
ALTER TABLE `tbl_councellor_time_slot_map`
  MODIFY `id_map` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_group_batch`
--
ALTER TABLE `tbl_group_batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_join_course`
--
ALTER TABLE `tbl_join_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_learner_course`
--
ALTER TABLE `tbl_learner_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_learner_course_month_payment`
--
ALTER TABLE `tbl_learner_course_month_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_massage_teacher_user`
--
ALTER TABLE `tbl_massage_teacher_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_model_plan`
--
ALTER TABLE `tbl_model_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_model_plan_map`
--
ALTER TABLE `tbl_model_plan_map`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_paytm_patment`
--
ALTER TABLE `tbl_paytm_patment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_plan_price`
--
ALTER TABLE `tbl_plan_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_teacher_batch_course`
--
ALTER TABLE `tbl_teacher_batch_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_education`
--
ALTER TABLE `tbl_user_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_vedio_conference`
--
ALTER TABLE `tbl_vedio_conference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upcoming_feature`
--
ALTER TABLE `upcoming_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userss`
--
ALTER TABLE `userss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_enquary`
--
ALTER TABLE `user_enquary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendor_category`
--
ALTER TABLE `vendor_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor_subcategory`
--
ALTER TABLE `vendor_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor_subscription`
--
ALTER TABLE `vendor_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web_setting`
--
ALTER TABLE `web_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
