-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 03:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lalmonirhutappdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `benefecials`
--

CREATE TABLE `benefecials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beneficial_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `husband_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holding_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_office_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_holds`
--

CREATE TABLE `business_holds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `road_moholla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `husband_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_current_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_permanent_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_license_issue_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_fee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singnboard_tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activate_by` int(11) DEFAULT NULL,
  `deactive_by` int(11) DEFAULT NULL,
  `active_at` timestamp NULL DEFAULT NULL,
  `deactive_at` timestamp NULL DEFAULT NULL,
  `hdtype` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_holds`
--

INSERT INTO `business_holds` (`id`, `user_id`, `ward_id`, `road_moholla`, `institute_name`, `business_type`, `owner_name`, `father_name`, `husband_name`, `mother_name`, `institute_address`, `owner_current_address`, `owner_permanent_address`, `nid`, `birth_certificate`, `mobile`, `image`, `last_license_issue_year`, `trade_fee`, `vat`, `singnboard_tax`, `business_tax`, `other`, `trade_total`, `service_charge_id`, `payment_type`, `status`, `created_at`, `updated_at`, `added_by`, `activate_by`, `deactive_by`, `active_at`, `deactive_at`, `hdtype`) VALUES
(299, '222022001', '22', 'TTERDR', 'MHQ Trade Shop', 'DERT', 'milton chowdhury', 'Milon Chowdhury', NULL, 'Asia Begum', 'skdjh faskhf kaSH Kahr', '31/34, DERt Colony', '31/34, DERt Colony', '12345678', NULL, '01737539213', 'public/upload/Bhold/0610031022a3462f.jpg', '2020', '100', NULL, '40', '20', '30', '205', '150', '1', '0', '2021-10-06 07:03:09', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(300, '222021002', '21', 'ghdg sdfgs df', 'yjugyutyusertwrt', 'saerluhiuo', 'weasefvsere ers', 'ert serwe', NULL, '5tert', 'drfg ser sjolio ae fssrt', '3sdfg s drfg sdrfgs', 'drydtry aer ste', '34545', NULL, '45345345345', 'public/upload/Bhold/061001aedb533d55.jpg', '2020', '100', NULL, '50', '60', '0', '225', '150', '1', '0', '2021-10-06 09:01:31', NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `business_hold_rates`
--

CREATE TABLE `business_hold_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `house_type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_capital_range` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_capital_range` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chairmen`
--

CREATE TABLE `chairmen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chairmen_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chairmen_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speech` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chaimen_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chaimen_image_singnature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `charater_certificates`
--

CREATE TABLE `charater_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `husband_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commercial_holds`
--

CREATE TABLE `commercial_holds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hold_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `husband_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holding_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_house` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length_number` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width_number` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_room` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_year_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearly_vat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_tax_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_charge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activate_by` int(11) DEFAULT NULL,
  `deactive_by` int(11) DEFAULT NULL,
  `active_at` timestamp NULL DEFAULT NULL,
  `deactive_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commercial_holds`
--

INSERT INTO `commercial_holds` (`id`, `user_id`, `hold_type`, `owner_name`, `father_name`, `husband_name`, `dob`, `nid`, `birth_certificate`, `mobile`, `ward_id`, `holding_no`, `type_house`, `length_number`, `width_number`, `number_room`, `house_year_value`, `yearly_vat`, `last_tax_year`, `service_charge`, `payment_type`, `status`, `created_at`, `updated_at`, `added_by`, `activate_by`, `deactive_by`, `active_at`, `deactive_at`) VALUES
(1, '222022001', '????????????????????? ?????????????????????????????????', 'Milton Chowdhury', 'Milon Chowdhury', NULL, '19/6/1994', '33456789', NULL, '01737539213', '22', '56', '7', '2234', '3455', '5', '120', '128.4', '2020', '150', 'Nagad', '1', '2021-10-09 01:54:25', NULL, NULL, 1, 1, '2021-10-12 00:18:08', '2021-10-12 00:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `councilors`
--

CREATE TABLE `councilors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `councilors`
--

INSERT INTO `councilors` (`id`, `name`, `ward_no`, `image`, `created_at`, `updated_at`) VALUES
(12, 'Counsilor Name', '1', 'upload/Councilor/1632963735.jpg', NULL, NULL),
(13, 'Counsilor Name', '2', 'upload/Councilor/1632963756.jpg', NULL, NULL),
(14, 'Counsilor Name', '3', 'upload/Councilor/1632963778.jpg', NULL, NULL),
(15, 'Counsilor Name', '4', 'upload/Councilor/1632963784.jpg', NULL, NULL),
(16, 'Counsilor Name', '5', 'upload/Councilor/1632963791.jpg', NULL, NULL),
(17, 'Counsilor Name', '6', 'upload/Councilor/1632963797.jpg', NULL, NULL),
(18, 'Counsilor Name', '7', 'upload/Councilor/1632963804.jpg', NULL, NULL),
(19, 'Counsilor Name', '8', 'upload/Councilor/1632963810.jpg', NULL, NULL),
(20, 'Counsilor Name', '9', 'upload/Councilor/1632963817.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `death_certficated`
--

CREATE TABLE `death_certficated` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `death_reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `husband_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wife_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `death_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `death_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `death_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `due_trade_licenses`
--

CREATE TABLE `due_trade_licenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_years` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_sum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remain_due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_members`
--

CREATE TABLE `general_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `husband_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `martial_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holding_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_office_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_house` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length_number` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width_number` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_room` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_year_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearly_vat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_tax_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_charge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activate_by` int(11) DEFAULT NULL,
  `deactive_by` int(11) DEFAULT NULL,
  `active_at` timestamp NULL DEFAULT NULL,
  `deactive_at` timestamp NULL DEFAULT NULL,
  `hdtype` int(11) NOT NULL DEFAULT 0,
  `member_male` int(11) DEFAULT NULL,
  `member_female` int(11) DEFAULT NULL,
  `biddut` int(11) DEFAULT NULL,
  `sanitation` int(11) DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img/usericon.jpg',
  `height` float DEFAULT NULL,
  `wide` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_members`
--

INSERT INTO `general_members` (`id`, `user_id`, `name`, `father_name`, `husband_name`, `mother_name`, `gender`, `martial_status`, `day`, `month`, `year`, `nid`, `birth_certificate`, `mobile`, `religion_id`, `family_class`, `ward_id`, `village_id`, `holding_no`, `post_code_id`, `post_office_id`, `type_house`, `length_number`, `width_number`, `number_room`, `monthly_income`, `house_year_value`, `yearly_vat`, `occupation_id`, `last_tax_year`, `service_charge`, `payment_type`, `status`, `created_at`, `updated_at`, `added_by`, `activate_by`, `deactive_by`, `active_at`, `deactive_at`, `hdtype`, `member_male`, `member_female`, `biddut`, `sanitation`, `photo`, `height`, `wide`) VALUES
(7555, '222011001', '????????? ????????????????????? ???????????????', '????????? ??????????????? ???????????????', NULL, '?????????????????? ????????????', '1', '1', '5', '12', '1985', '7791226397', NULL, '01714692986', '1', '3', '16', '80', '3/52', '11', '16', '3', '', '', '3', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 06:28:50', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 3, 4, 1, 2, 'img/usericon.jpg', NULL, NULL),
(7556, '222011002', '??????????????? ?????????????????? ?????????', '??????????????????????????? ?????????????????? ?????????', NULL, '?????????????????????????????? ?????????', '1', '1', '2', '1', '1967', '8222881404', '7791226397', '01712808314', '2', '1', '16', '80', '3/53', '11', '16', '1', '', '', '13', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 06:34:26', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7557, '222011003', '??????????????? ???????????? ?????????', '??????????????? ?????????????????? ?????????', NULL, '???????????????????????? ????????? ???????????????', '2', '1', '21', '4', '1974', '7772705823', NULL, '01633131514', '2', '2', '16', '77', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 06:39:51', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 1, 3, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7558, '222011004', '????????? ???????????? ???????????????', '????????? ?????????????????? ?????????????????? ???????????????', NULL, '????????? ?????????????????? ???????????????', '1', '1', '13', '4', '1968', '5225503115590', NULL, '01731171472', '2', '2', '16', '80', '3/56', '11', '16', '2', '', '', '2', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 06:40:16', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7559, '222011005', '??????????????? ?????????????????? ???????????????', '????????? ????????? ?????????????????? ???????????????', NULL, '????????? ???????????? ???????????????', '1', '1', '28', '8', '1977', '1492592686', NULL, '01703606218', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 06:52:14', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 3, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7560, '222011006', '???????????????????????????', '????????? ???????????????????????? ??????????????? ????????? ???????????????', NULL, '???????????????????????? ????????? ???????????????', '1', '1', '2', '10', '1970', NULL, NULL, '01764857356', '2', '2', '16', '80', '???/??????', '11', '16', '1', '', '', '???', NULL, '0', '0', '6', '2010', '150.00', '1', '0', '2021-09-28 07:03:31', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7561, '222011007', '???????????????????????? ???????????????', '????????? ??????????????? ?????????????????? ???????????????', NULL, '????????? ??????????????? ???????????????', '1', '1', '1', '1', '1996', '5225502111179', NULL, '01731240332', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 07:13:13', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 1, 3, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7562, '222011008', '???????????? ??????????????? ???????????????', '????????? ????????? ???????????? ???????????????', NULL, '?????????????????? ???????????????', '1', '1', '20', '12', '1954', '5522456911', NULL, '01712117581', '2', '1', '16', '80', '???/??????', '11', '16', '1', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 07:27:36', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 3, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7563, '222011009', '???????????? ????????? ?????????', '????????? ???????????? ??????????????? ????????? ?????????', NULL, '????????? ????????? ???????????? ?????????', '1', '1', '21', '10', '1955', '7322480323', NULL, '01735104765', '2', '2', '16', '80', '???/??????', '11', '16', '3', '', '', '???', NULL, '0', '0', '2', '2010', '150.00', '1', '0', '2021-09-28 07:42:47', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 3, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7564, '222011010', '???????????? ????????? ?????????', '????????? ???????????? ??????????????? ????????? ?????????', NULL, '????????? ????????? ???????????? ?????????', '1', '1', '27', '4', '1958', NULL, NULL, '01730599272', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '40', '2010', '150.00', '1', '0', '2021-09-28 07:48:19', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7565, '222011011', '???.???.???.  ????????? ????????????', '????????? ?????? ?????????????????? ?????????', NULL, '???????????? ?????? ?????????????????? ????????????', '1', '1', '4', '11', '1985', '7758599729', NULL, '01997678305', '1', '1', '14', '79', '319', '11', '16', '1', '', '', '8', NULL, '0', '0', '6', '2010', '150.00', '1', '0', '2021-09-28 07:52:31', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 4, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7566, '222011012', '????????? ?????????????????? ???????????????', '????????? ?????????????????? ??????', NULL, '????????? ?????????????????? ???????????????', '1', '1', '5', '7', '1967', '5225501104889', NULL, '01727215253', '1', '2', '14', '79', '321', '11', '16', '2', '', '', '3', NULL, '0', '0', '6', '2010', '150.00', '1', '0', '2021-09-28 07:57:29', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 2, 1, 2, 'img/usericon.jpg', NULL, NULL),
(7567, '222011013', '????????? ?????????????????? ????????????', '????????? ??????????????????????????? ?????????', NULL, '????????? ??????????????? ????????????', '1', '1', '14', '6', '1964', '5225501104524', NULL, '01885624301', '1', '2', '14', '79', '322', '11', '16', '3', '', '', '4', NULL, '0', '0', '5', '2010', '150.00', '1', '0', '2021-09-28 08:01:13', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 1, 1, 2, 'img/usericon.jpg', NULL, NULL),
(7568, '222011014', '????????? ?????? ????????????', '???????????? ???????????????  ?????????', NULL, '?????????????????? ???????????????', '1', '1', '22', '5', '1977', '1473519976', NULL, '01718052873', '1', '2', '14', '79', '324', '11', '16', '2', '', '', '3', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:05:49', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7569, '222011015', '???????????? ??????????????? ???????????????????????????', '??????????????? ??????????????? ???????????????????????????', NULL, '???????????? ???????????????????????????', '1', '1', '1', '2', '1966', '1472454881', NULL, '01738385478', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:08:45', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 5, 3, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7570, '222011016', '??????????????? ????????????????????? ????????????', '??????????????? ??????????????????', NULL, '????????? ???????????????????????????', '2', '1', '11', '7', '1947', '7322454666', NULL, '01766486730', '1', '3', '14', '79', '327', '11', '16', '3', '', '', '1', NULL, '0', '0', '26', '2010', '150.00', '1', '0', '2021-09-28 08:10:51', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 1, 1, 3, 'img/usericon.jpg', NULL, NULL),
(7571, '222011017', '????????????????????????????????? ???????????????', '????????? ??????????????? ??????????????? ???????????????', NULL, '?????????????????? ????????????', '1', '1', '1', '8', '1966', '5225503113247', NULL, '01737793144', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:13:47', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7572, '222011018', '????????? ??????????????? ?????????', '????????? ??????????????? ??????????????????', NULL, '??????????????? ?????????????????? ????????????', '1', '1', '10', '4', '1956', '19655225501105016', NULL, '01765060742', '1', '2', '14', '79', '332', '11', '16', '2', '', '', '4', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:15:54', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7573, '222011019', '????????????????????? ???????????????', '???????????????????????? ?????????????????? ???????????????', NULL, '?????????????????? ???????????????', '1', '1', '12', '1', '1987', '8672901579', NULL, '01751429941', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:17:52', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 1, 3, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7574, '222011020', '????????? ???????????????????????? ???????????????', '????????? ???????????? ??????????????????', NULL, '?????????????????? ????????????', '1', '1', '14', '6', '1964', '7322513693', NULL, '01712479904', '1', '2', '14', '79', '334', '11', '16', '2', '', '', '4', NULL, '0', '0', '6', '2010', '150.00', '1', '0', '2021-09-28 08:19:53', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7575, '222011021', '???????????? ???????????? ??????????????? ???????????????', '????????? ????????????????????????????????? ???????????????', NULL, '????????? ????????????????????? ???????????? ????????????', '1', '1', '8', '2', '1974', '9122700371', NULL, '01736587035', '2', '2', '16', '80', '???/??????', '11', '16', '3', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:21:26', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7576, '222011022', '??????????????????????????? ????????? ???????????????', '????????? ???????????????????????? ????????? ???????????????', NULL, '????????????????????? ???????????? ????????????', '1', '1', '10', '1', '1974', '6451413014', NULL, '01740101703', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:25:08', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7577, '222011023', '????????? ??????????????? ???????????????', '????????? ??????????????? ???????????????', NULL, '?????????????????? ???????????????', '1', '1', '15', '11', '1981', '3217471165', NULL, '01720044441', '1', '2', '14', '79', '339', '11', '16', '2', '', '', '4', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:26:24', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 3, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7578, '222011024', '???????????? ?????????????????? ???????????????', '????????? ?????????????????????????????? ????????? ???????????????', NULL, '????????????????????????', '1', '1', '16', '10', '1984', '8672725457', NULL, '01723581266', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:29:39', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7579, '222011025', '????????? ?????????????????? ???????????????', '????????????????????? ???????????????', NULL, '????????????????????? ????????????', '1', '1', '10', '1', '1981', '5972456288', NULL, '01', '1', '2', '14', '79', '340', '11', '16', '2', '', '', '3', NULL, '0', '0', '6', '2010', '150.00', '1', '0', '2021-09-28 08:30:05', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 3, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7580, '222011026', '????????????????????????????????? ?????????', '??????????????????????????? ????????? ?????????', NULL, '?????????????????? ????????????', '1', '1', '8', '9', '1966', '4622547109', NULL, '01725193435', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '6', '2010', '150.00', '1', '0', '2021-09-28 08:33:02', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 2, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7581, '222011027', '????????? ??????????????? ???????????????', '?????????????????? ???????????????', NULL, '????????????????????? ???????????????', '1', '1', '30', '3', '1974', '7322900270', NULL, '01933173521', '1', '2', '14', '79', '341', '11', '16', '2', '', '', '4', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:33:20', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 3, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7582, '222011028', '?????????????????? ?????????', '????????? ???????????????????????? ????????? ?????????', NULL, '??????????????????????????? ?????????', '1', '1', '1', '8', '1961', '9561340929', NULL, '01711414929', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '6', '2010', '150.00', '1', '0', '2021-09-28 08:36:18', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 5, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7583, '222011029', '???????????? ???????????????', '????????? ???????????????????????? ???????????????', NULL, '????????? ?????????????????? ???????????????', '1', '1', '23', '9', '1961', '3722481904', NULL, '01710871863', '2', '1', '16', '80', '???/??????', '11', '16', '1', '', '', '??????????????????', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:39:26', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 1, 1, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7584, '222011030', '??????????????? ??????????????? ?????????????????????', '????????? ?????????????????? ???????????? ?????????????????????', NULL, '????????? ????????????????????? ?????????????????????', '1', '1', '30', '6', '1963', '5072403982', NULL, '01715039697', '2', '2', '16', '80', '???/??????', '11', '16', '2', '', '', '???', NULL, '0', '0', '1', '2010', '150.00', '1', '0', '2021-09-28 08:42:54', NULL, 'superadmin', NULL, NULL, NULL, NULL, 0, 3, 2, 1, 1, 'img/usericon.jpg', NULL, NULL),
(7585, '222011031', 'Milton Chowdhury', 'Milon Chowdhury', NULL, 'Asia Begum', '1', '2', '9', '9', '1988', '24234', NULL, '01737539213', '1', '1', '16', '77', '67', '11', '16', '7', '1250', '1160', '6', NULL, '120', '128.4', '1', '2020', '150', '2', '1', '2021-10-04 10:32:03', NULL, NULL, 1, NULL, '2021-10-06 08:35:41', NULL, 0, 4, 4, 1, 1, 'img/usericon.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `house_rates`
--

CREATE TABLE `house_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `house_type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `house_rates`
--

INSERT INTO `house_rates` (`id`, `house_type_id`, `tax_rate`, `status`, `created_at`, `updated_at`) VALUES
(6, '8', '7', '1', NULL, NULL),
(7, '9', '7', '1', NULL, NULL),
(8, '10', '7', '1', NULL, NULL),
(9, '11', '7', '1', NULL, NULL),
(10, '7', '7', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `house_types`
--

CREATE TABLE `house_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `house_types`
--

INSERT INTO `house_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(7, '????????????', '1', NULL, NULL),
(8, '????????? ????????????', '1', NULL, NULL),
(9, '????????????', '1', NULL, NULL),
(10, '???????????? ?????????', '1', NULL, NULL),
(11, '????????? ??????????????????', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `important_links`
--

CREATE TABLE `important_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left_sidebar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right_sidebar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `important_links`
--

INSERT INTO `important_links` (`id`, `title`, `url`, `description`, `left_sidebar`, `right_sidebar`, `image`, `created_at`, `updated_at`) VALUES
(1, '????????????????????????????????? ????????????????????????', 'https://bangabhaban.gov.bd/', NULL, NULL, '1', NULL, NULL, NULL),
(2, '?????????????????????????????????????????? ????????????????????????', 'https://pmo.gov.bd/', NULL, NULL, '1', NULL, NULL, NULL),
(3, '???????????????????????? ?????????????????? ???????????? ?????????????????????', 'https://bangladesh.gov.bd/index.php', NULL, NULL, '1', NULL, NULL, NULL),
(4, '??????????????????????????? ??????????????????????????????', 'https://mopa.gov.bd/', NULL, NULL, '1', NULL, NULL, NULL),
(5, '???????????? ????????????????????? ???????????????', 'http://bris.lgd.gov.bd/pub/?pg=verify_br', NULL, NULL, '1', NULL, NULL, NULL),
(6, '???????????? ????????????????????? ?????????', '#', NULL, '1', NULL, NULL, NULL, NULL),
(7, '?????????????????? ????????????????????? ?????????', '#', NULL, '1', NULL, NULL, NULL, NULL),
(8, '?????????????????? ????????? ?????????', '#', NULL, '1', NULL, NULL, NULL, NULL),
(9, '????????????/?????????????????? ????????? ???????????????/???????????????????????? ???????????????????????????', '#', NULL, '1', NULL, NULL, NULL, NULL),
(10, '????????????????????? ????????????????????? ?????????', '#', NULL, '1', NULL, NULL, NULL, NULL),
(11, '????????????????????????????????? ????????? ?????????', '#', NULL, '1', NULL, NULL, NULL, NULL),
(12, '??????????????? ???????????????????????? ??????????????????????????????????????? ?????????', '#', NULL, '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meyors`
--

CREATE TABLE `meyors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meyor_place` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meyors`
--

INSERT INTO `meyors` (`id`, `name`, `meyor_place`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mayor Name', 'Lalmonirhat Paurosova', 'upload/Meyor/1632963485.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mohila_councilors`
--

CREATE TABLE `mohila_councilors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mohila_councilors`
--

INSERT INTO `mohila_councilors` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Counsilor Name', 'upload/Councilor/1632963834.jpg', NULL, NULL),
(6, 'Counsilor Name', 'upload/Councilor/1632963844.jpg', NULL, NULL),
(7, 'Counsilor Name', 'upload/Councilor/1632963851.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, '??????????????????????????????', '1', NULL, NULL),
(2, '???????????????', '1', NULL, NULL),
(3, '?????????????????????', '1', NULL, NULL),
(4, '?????????????????? / ???????????????', '1', NULL, NULL),
(5, '???????????? / ????????????????????????', '1', NULL, NULL),
(6, '???????????????????????????', '1', NULL, NULL),
(7, '????????????????????????', '1', NULL, NULL),
(8, '?????????????????????', '1', NULL, NULL),
(9, '??????????????????????????????', '1', NULL, NULL),
(10, '???????????? / ?????????????????????', '1', NULL, NULL),
(11, '??????????????????', '1', NULL, NULL),
(12, '??????????????? ???????????????', '1', NULL, NULL),
(13, '????????????????????????', '1', NULL, NULL),
(14, '??????????????????', '1', NULL, NULL),
(15, '??????????????????', '1', NULL, NULL),
(16, '??????????????????????????????', '1', NULL, NULL),
(17, '???????????????', '1', NULL, NULL),
(18, '??????????????????', '1', NULL, NULL),
(19, '?????????????????????', '1', NULL, NULL),
(20, '????????????', '1', NULL, NULL),
(21, '????????????????????????', '1', NULL, NULL),
(22, '?????????????????????', '1', NULL, NULL),
(23, '???????????????????????????', '1', NULL, NULL),
(24, '???????????????????????????', '1', NULL, NULL),
(25, '???????????????', '1', NULL, NULL),
(26, '??????????????????', '1', NULL, NULL),
(27, '????????????????????????', '1', NULL, NULL),
(28, '????????????', '1', NULL, NULL),
(29, '????????????', '1', NULL, NULL),
(30, '?????????????????????', '1', NULL, NULL),
(31, '????????????', '1', NULL, NULL),
(32, '???????????????', '1', NULL, NULL),
(33, '????????????????????????', '1', NULL, NULL),
(34, '??????????????????', '1', NULL, NULL),
(35, '???????????????????????????', '1', NULL, NULL),
(36, '?????????????????????', '1', NULL, NULL),
(37, '????????????', '1', NULL, NULL),
(38, '??????????????? ???????????????', '1', NULL, NULL),
(39, '??????????????????????????????', '1', NULL, NULL),
(40, '?????????????????????????????????', '1', NULL, NULL),
(41, '????????????????????? ???????????????????????????', '1', NULL, NULL),
(42, '????????????????????????????????????', '1', NULL, NULL),
(43, '????????? ????????????????????????', '1', NULL, NULL),
(44, '????????? ????????????????????????', '1', NULL, NULL),
(45, '?????????????????? ???????????????????????????', '1', NULL, NULL),
(46, '???????????????????????? ?????????????????? ????????????', '1', NULL, NULL),
(47, '????????????????????????', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orphan_certficates`
--

CREATE TABLE `orphan_certficates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certficate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_bosot_dues`
--

CREATE TABLE `pay_bosot_dues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_years` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_due` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_sum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remain_due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_bosot_taxes`
--

CREATE TABLE `pay_bosot_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_due` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_sum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_years` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remain_due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_codes`
--

CREATE TABLE `post_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_codes`
--

INSERT INTO `post_codes` (`id`, `post_code`, `created_at`, `updated_at`) VALUES
(11, '5500', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_offices`
--

CREATE TABLE `post_offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_code_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_office` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_offices`
--

INSERT INTO `post_offices` (`id`, `post_code_id`, `post_office`, `created_at`, `updated_at`) VALUES
(16, '11', '?????????????????????????????????', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `presetdatas`
--

CREATE TABLE `presetdatas` (
  `id` bigint(20) NOT NULL,
  `dataname` varchar(100) NOT NULL,
  `datatype` varchar(22) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presetdatas`
--

INSERT INTO `presetdatas` (`id`, `dataname`, `datatype`, `create_at`, `updated_at`) VALUES
(1, '?????????????????????????????? ??????????????????', 'title', '2021-10-03 10:04:24', NULL),
(2, 'http://localhost/lalmonirhutapp/', 'domain', '2021-10-04 13:36:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `relation_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `relation_name`, `created_at`, `updated_at`) VALUES
(1, '????????????', NULL, NULL),
(2, '????????????', NULL, NULL),
(3, '??????????????????', NULL, NULL),
(4, '??????????????????', NULL, NULL),
(5, '?????????', NULL, NULL),
(6, '?????????', NULL, NULL),
(7, '???????????????', NULL, NULL),
(8, '???????????????', NULL, NULL),
(9, '????????????', NULL, NULL),
(10, '????????????', NULL, NULL),
(11, '????????????', NULL, NULL),
(12, '????????????', NULL, NULL),
(13, '????????????', NULL, NULL),
(14, '???????????????', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `renew_licenses`
--

CREATE TABLE `renew_licenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_years` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanad_applies`
--

CREATE TABLE `sanad_applies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `husband_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_charges`
--

CREATE TABLE `service_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `general_fee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commercial_fee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_fee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_charges`
--

INSERT INTO `service_charges` (`id`, `general_fee`, `commercial_fee`, `business_fee`, `created_at`, `updated_at`) VALUES
(1, '150', '150', '0', '2021-10-04 14:46:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_radoms`
--

CREATE TABLE `sms_radoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trade_licenses`
--

CREATE TABLE `trade_licenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signboard_tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_charge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img/usericon.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `role`, `name`, `email`, `email_verified_at`, `password`, `show_password`, `remember_token`, `created_at`, `updated_at`, `contact`, `photo`) VALUES
(1, 'superadmin', 'Super Admin', 'Superadmin', 'superadmin@gmail.com', NULL, '$2y$10$ZwYWWvT6fK4w5XJQ0TLOFeY.3n5/Ygs4vHISMBsvN516vXA4R6nja', '123', NULL, NULL, NULL, NULL, 'img/usericon.jpg'),
(4905, 'meyor', 'Super Admin', 'Honorable Mayor', 'meyor@gmail.com', NULL, '$2y$10$kvLr3.4UkLANDtghSsqLFu3JrmpgKjXS7J5sn7ZRJEwdZnRj14h9S', 'user#123', NULL, NULL, NULL, NULL, 'img/usericon.jpg'),
(9344, '222011001', 'Bosot Bari Member', 'wer', NULL, NULL, '$2y$10$QOy.UA70YPiimaRb.8P5dOyjGazm5XH2bzhLilkAlukj78jtU.fcW', '12345678', NULL, '2021-09-28 06:25:15', NULL, NULL, 'img/usericon.jpg'),
(9345, '222011001', 'Bosot Bari Member', '????????? ????????????????????? ???????????????', NULL, NULL, '$2y$10$KVikDNIajXMv0T8g2GDk4.Jv0WvhxKjt90TRCSfQiYp3YMsmd9OGG', '12345678', NULL, '2021-09-28 06:28:50', NULL, NULL, 'img/usericon.jpg'),
(9346, '222011002', 'Bosot Bari Member', '??????????????? ?????????????????? ?????????', NULL, NULL, '$2y$10$2RMV8TOUSR15wXC4KjcN1.XnsBLgtvYSpbRoAeZu0FiQZwXQf6kbW', '12345678', NULL, '2021-09-28 06:34:26', NULL, NULL, 'img/usericon.jpg'),
(9347, '222011003', 'Bosot Bari Member', '??????????????? ???????????? ?????????', NULL, NULL, '$2y$10$8g2mBZ3sM.qtev7oOKvCJOfUt2NHHRR9F2SLfl0EVV7y7g2U3WYRy', '12345678', NULL, '2021-09-28 06:39:51', NULL, NULL, 'img/usericon.jpg'),
(9348, '222011004', 'Bosot Bari Member', '????????? ???????????? ???????????????', NULL, NULL, '$2y$10$MwHks.Auqd26WMZq0Z1LPemWKNx5hOH95pBnfmPxE3BZUI0uD2I/6', '12345678', NULL, '2021-09-28 06:40:16', NULL, NULL, 'img/usericon.jpg'),
(9349, '222011005', 'Bosot Bari Member', '??????????????? ?????????????????? ???????????????', NULL, NULL, '$2y$10$kLNBHvlCplHmRPCEa1JEyei/RI0KrMY3PR7cocGyx6diq1rxmucyK', '12345678', NULL, '2021-09-28 06:52:14', NULL, NULL, 'img/usericon.jpg'),
(9350, '222011006', 'Bosot Bari Member', '???????????????????????????', NULL, NULL, '$2y$10$28/5ld7ttOZzvLhXzMotTep9F2OGuKzo8WZtGi9NiTi7i91q/yLS.', '12345678', NULL, '2021-09-28 07:03:31', NULL, NULL, 'img/usericon.jpg'),
(9351, '222011007', 'Bosot Bari Member', '???????????????????????? ???????????????', NULL, NULL, '$2y$10$aFuR/onv4jJmY01ks5.iV.OqLV42NsYHY.6kKSM6l1ITeeCPqlzrq', '12345678', NULL, '2021-09-28 07:13:13', NULL, NULL, 'img/usericon.jpg'),
(9352, '222011008', 'Bosot Bari Member', '???????????? ??????????????? ???????????????', NULL, NULL, '$2y$10$AJsTec5rpM0FVvHg26Za1u7FaQAShke2Hqy2i318w7iK2EWaBYxsC', '12345678', NULL, '2021-09-28 07:27:36', NULL, NULL, 'img/usericon.jpg'),
(9353, '222011009', 'Bosot Bari Member', '???????????? ????????? ?????????', NULL, NULL, '$2y$10$dmzveK5Mqu/c2IaC/ETOD.5SlOgFDpazhzjRgxxhMzzohTV0cmC.6', '12345678', NULL, '2021-09-28 07:42:47', NULL, NULL, 'img/usericon.jpg'),
(9354, '222011010', 'Bosot Bari Member', '???????????? ????????? ?????????', NULL, NULL, '$2y$10$IaDQ.a1sFsNahsJ/pg9i1uDgO8B4bwdrkU5XNvcE6YzVsaDiIPdPu', '12345678', NULL, '2021-09-28 07:48:19', NULL, NULL, 'img/usericon.jpg'),
(9355, '222011011', 'Bosot Bari Member', '???.???.???.  ????????? ????????????', NULL, NULL, '$2y$10$YQA5VQcY4l7d8.xF5w.O0ua//qpYkfcRgotgJSVQ8v1N8ERRgMeNm', '12345678', NULL, '2021-09-28 07:52:32', NULL, NULL, 'img/usericon.jpg'),
(9356, '222011012', 'Bosot Bari Member', '????????? ?????????????????? ???????????????', NULL, NULL, '$2y$10$ven4acK9RQWfVXP11DobeeZr1yZeMFhzdOIPok4D1YcFOQ8e5qDsC', '12345678', NULL, '2021-09-28 07:57:29', NULL, NULL, 'img/usericon.jpg'),
(9357, '222011013', 'Bosot Bari Member', '????????? ?????????????????? ????????????', NULL, NULL, '$2y$10$EhGFuJj2ZmMKsh2t7McRYODel3y6jCyOHXGdt4vRneiyQNkB2yGEy', '12345678', NULL, '2021-09-28 08:01:13', NULL, NULL, 'img/usericon.jpg'),
(9358, '222011014', 'Bosot Bari Member', '????????? ?????? ????????????', NULL, NULL, '$2y$10$hUWMmYmGkSiphDEU.06Y1unoJiazr3YKCws.BvdyoXd1i/kmZy9HS', '12345678', NULL, '2021-09-28 08:05:49', NULL, NULL, 'img/usericon.jpg'),
(9359, '222011015', 'Bosot Bari Member', '???????????? ??????????????? ???????????????????????????', NULL, NULL, '$2y$10$sHkTx4DcPSawcz0MP.bmB.wDqAjekbDD9/DUTJLmoUt6c3wwv97tK', '12345678', NULL, '2021-09-28 08:08:45', NULL, NULL, 'img/usericon.jpg'),
(9360, '222011016', 'Bosot Bari Member', '??????????????? ????????????????????? ????????????', NULL, NULL, '$2y$10$rWBhklAPAQZk96LtbCF3Re9Z3E4hftfEYzroQcbS.JxqoC6e0UJ5y', '12345678', NULL, '2021-09-28 08:10:51', NULL, NULL, 'img/usericon.jpg'),
(9361, '222011017', 'Bosot Bari Member', '????????????????????????????????? ???????????????', NULL, NULL, '$2y$10$9Cg9XteOtPIFOhjrRc7im.C/KlwgiWO6m5Q.863rCzOUkmFe9LXSe', '12345678', NULL, '2021-09-28 08:13:47', NULL, NULL, 'img/usericon.jpg'),
(9362, '222011018', 'Bosot Bari Member', '????????? ??????????????? ?????????', NULL, NULL, '$2y$10$ywXIBzcPfY0xRyboP.qs2OgiGK3kdHQ2EQV87VvPyPEf.AB/OcdGG', '12345678', NULL, '2021-09-28 08:15:54', NULL, NULL, 'img/usericon.jpg'),
(9363, '222011019', 'Bosot Bari Member', '????????????????????? ???????????????', NULL, NULL, '$2y$10$8.gJR2dcWEIFo.fx7wVBfuW/a5LsdNIEqAQPSBGaq58eNwUSYj33m', '12345678', NULL, '2021-09-28 08:17:52', NULL, NULL, 'img/usericon.jpg'),
(9364, '222011020', 'Bosot Bari Member', '????????? ???????????????????????? ???????????????', NULL, NULL, '$2y$10$LH2Ztweo/XjsJhXgewJaNOwECFnS458ZLi6Jic.J71e8DK2lhk1tW', '12345678', NULL, '2021-09-28 08:19:53', NULL, NULL, 'img/usericon.jpg'),
(9365, '222011021', 'Bosot Bari Member', '???????????? ???????????? ??????????????? ???????????????', NULL, NULL, '$2y$10$ZUrEcu93ZDdJCYS8dM9zEu9xyz51184.uUsQ5exQmEDmqin5I.REm', '12345678', NULL, '2021-09-28 08:21:26', NULL, NULL, 'img/usericon.jpg'),
(9366, '222011022', 'Bosot Bari Member', '??????????????????????????? ????????? ???????????????', NULL, NULL, '$2y$10$3p30XR63kt3UgzTMHO9oxOIJj0FvUdaPAkX9XcKTdOGy5jO0fhwzW', '12345678', NULL, '2021-09-28 08:25:08', NULL, NULL, 'img/usericon.jpg'),
(9367, '222011023', 'Bosot Bari Member', '????????? ??????????????? ???????????????', NULL, NULL, '$2y$10$M0RIujOVj4JwecBmE2ki4OsXnVF1w7KQTDB7ZIdEafrMEMe/Ri0s.', '12345678', NULL, '2021-09-28 08:26:24', NULL, NULL, 'img/usericon.jpg'),
(9368, '222011024', 'Bosot Bari Member', '???????????? ?????????????????? ???????????????', NULL, NULL, '$2y$10$TUnlNttSmBEv2MGIO4gVpu.jwJQp2tSOwlOM/8.f4v.kGTtDfeumK', '12345678', NULL, '2021-09-28 08:29:39', NULL, NULL, 'img/usericon.jpg'),
(9369, '222011025', 'Bosot Bari Member', '????????? ?????????????????? ???????????????', NULL, NULL, '$2y$10$q91jQvVcJi8mBVHtm5GLdurtd4nqBj3sVBqae5jhjAq3SKLWRFZya', '12345678', NULL, '2021-09-28 08:30:06', NULL, NULL, 'img/usericon.jpg'),
(9370, '222011026', 'Bosot Bari Member', '????????????????????????????????? ?????????', NULL, NULL, '$2y$10$98CS2./zOY3kj/vb4QhkbeIZn46Sxz10.gVkDKHGUiknXanLALJ6m', '12345678', NULL, '2021-09-28 08:33:02', NULL, NULL, 'img/usericon.jpg'),
(9371, '222011027', 'Bosot Bari Member', '????????? ??????????????? ???????????????', NULL, NULL, '$2y$10$S.ZjFnuKjsraIU0YHwJe6e4wa3TLm7rnFExN4D3tDJiY1BaXda7qi', '12345678', NULL, '2021-09-28 08:33:20', NULL, NULL, 'img/usericon.jpg'),
(9372, '222011028', 'Bosot Bari Member', '?????????????????? ?????????', NULL, NULL, '$2y$10$G3eN0APQoOfz8Z5aF1U4LOZBpn4H.bUEdCpFOvlSjwBqB1NKqjePe', '12345678', NULL, '2021-09-28 08:36:18', NULL, NULL, 'img/usericon.jpg'),
(9373, '222011029', 'Bosot Bari Member', '???????????? ???????????????', NULL, NULL, '$2y$10$dGUrrYXHw0mSKsH8vXOgmeeT9qYW.Zbz.Q1t584xMGWvrIXvx7gDG', '12345678', NULL, '2021-09-28 08:39:26', NULL, NULL, 'img/usericon.jpg'),
(9374, '222011030', 'Bosot Bari Member', '??????????????? ??????????????? ?????????????????????', NULL, NULL, '$2y$10$DX6ZNYx79F56GY5TtfRiOu.pXPFluwaG8KJ6YHmuQvC8bXkWjx./S', '12345678', NULL, '2021-09-28 08:42:54', NULL, NULL, 'img/usericon.jpg'),
(9375, '222011031', 'Bosot Bari Member', 'Milton Chowdhury', NULL, NULL, '$2y$10$rU5FzXuJMHvIw3f5xEYvSeTKxeTKlQ1cnUBVxKgddSwUuWWm.P7Ay', '12345678', NULL, '2021-10-04 10:32:03', NULL, NULL, 'img/usericon.jpg'),
(9377, '222021002', 'Business Hold Reg', 'weasefvsere ers', NULL, NULL, '$2y$10$/en5jFchg1bWnRGQrZj/Auhp7qYLQysHphpfDIfOQaL3zBL7wuRHK', '12345678', NULL, '2021-10-06 09:01:31', NULL, NULL, 'img/usericon.jpg'),
(9378, '222022001', 'Commercial Hold Reg', 'Milton Chowdhury', NULL, NULL, '$2y$10$x8tg7oBx0gGnnSYYJzk9qONx2hwFMq3emma9e2ghDVTWd7CXIpmqW', '12345678', NULL, '2021-10-09 01:54:25', NULL, NULL, 'img/usericon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ward_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `ward_id`, `village_name`, `created_at`, `updated_at`) VALUES
(77, '16', '????????????????????????????????? ????????????', NULL, NULL),
(78, '21', '??????????????? ???????????? ???????????????', NULL, NULL),
(79, '14', '?????????????????? ??????????????? ????????????????????????', NULL, NULL),
(80, '16', '?????? ??????????????? ?????????????????????', NULL, NULL),
(81, '14', '????????????????????????', NULL, NULL),
(82, '14', '?????????????????? ??????????????? ???????????? ????????????', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ward_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `ward_no`, `created_at`, `updated_at`) VALUES
(14, '1', NULL, NULL),
(15, '2', NULL, NULL),
(16, '3', NULL, NULL),
(17, '4', NULL, NULL),
(18, '???', NULL, NULL),
(19, '???', NULL, NULL),
(20, '???', NULL, NULL),
(21, '???', NULL, NULL),
(22, '???', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warish_certificates`
--

CREATE TABLE `warish_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `husband_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warish_members`
--

CREATE TABLE `warish_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warish_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warish_member_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_nid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `website_sliders`
--

CREATE TABLE `website_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_sliders`
--

INSERT INTO `website_sliders` (`id`, `slider_title`, `slider_image`, `created_at`, `updated_at`) VALUES
(12, 'Slider 1', 'upload/Slider/1632963555.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `welcome_descriptions`
--

CREATE TABLE `welcome_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `welcome_descriptions`
--

INSERT INTO `welcome_descriptions` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'saf', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benefecials`
--
ALTER TABLE `benefecials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_holds`
--
ALTER TABLE `business_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_hold_rates`
--
ALTER TABLE `business_hold_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chairmen`
--
ALTER TABLE `chairmen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charater_certificates`
--
ALTER TABLE `charater_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial_holds`
--
ALTER TABLE `commercial_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `councilors`
--
ALTER TABLE `councilors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `death_certficated`
--
ALTER TABLE `death_certficated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `due_trade_licenses`
--
ALTER TABLE `due_trade_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_members`
--
ALTER TABLE `general_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house_rates`
--
ALTER TABLE `house_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house_types`
--
ALTER TABLE `house_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `important_links`
--
ALTER TABLE `important_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meyors`
--
ALTER TABLE `meyors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mohila_councilors`
--
ALTER TABLE `mohila_councilors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orphan_certficates`
--
ALTER TABLE `orphan_certficates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_bosot_dues`
--
ALTER TABLE `pay_bosot_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_bosot_taxes`
--
ALTER TABLE `pay_bosot_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_codes`
--
ALTER TABLE `post_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_offices`
--
ALTER TABLE `post_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presetdatas`
--
ALTER TABLE `presetdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renew_licenses`
--
ALTER TABLE `renew_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanad_applies`
--
ALTER TABLE `sanad_applies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_charges`
--
ALTER TABLE `service_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_radoms`
--
ALTER TABLE `sms_radoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade_licenses`
--
ALTER TABLE `trade_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warish_certificates`
--
ALTER TABLE `warish_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warish_members`
--
ALTER TABLE `warish_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_sliders`
--
ALTER TABLE `website_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcome_descriptions`
--
ALTER TABLE `welcome_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benefecials`
--
ALTER TABLE `benefecials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `business_holds`
--
ALTER TABLE `business_holds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `business_hold_rates`
--
ALTER TABLE `business_hold_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chairmen`
--
ALTER TABLE `chairmen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `charater_certificates`
--
ALTER TABLE `charater_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `commercial_holds`
--
ALTER TABLE `commercial_holds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `councilors`
--
ALTER TABLE `councilors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `death_certficated`
--
ALTER TABLE `death_certficated`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `due_trade_licenses`
--
ALTER TABLE `due_trade_licenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_members`
--
ALTER TABLE `general_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7586;

--
-- AUTO_INCREMENT for table `house_rates`
--
ALTER TABLE `house_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `house_types`
--
ALTER TABLE `house_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `important_links`
--
ALTER TABLE `important_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `meyors`
--
ALTER TABLE `meyors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mohila_councilors`
--
ALTER TABLE `mohila_councilors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orphan_certficates`
--
ALTER TABLE `orphan_certficates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_bosot_dues`
--
ALTER TABLE `pay_bosot_dues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_bosot_taxes`
--
ALTER TABLE `pay_bosot_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_codes`
--
ALTER TABLE `post_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post_offices`
--
ALTER TABLE `post_offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `presetdatas`
--
ALTER TABLE `presetdatas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `renew_licenses`
--
ALTER TABLE `renew_licenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sanad_applies`
--
ALTER TABLE `sanad_applies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `service_charges`
--
ALTER TABLE `service_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_radoms`
--
ALTER TABLE `sms_radoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `trade_licenses`
--
ALTER TABLE `trade_licenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9379;

--
-- AUTO_INCREMENT for table `villages`
--
ALTER TABLE `villages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `warish_certificates`
--
ALTER TABLE `warish_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `warish_members`
--
ALTER TABLE `warish_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `website_sliders`
--
ALTER TABLE `website_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `welcome_descriptions`
--
ALTER TABLE `welcome_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
