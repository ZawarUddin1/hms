-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 30, 2025 at 08:51 AM
-- Server version: 10.6.22-MariaDB-cll-lve-log
-- PHP Version: 8.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eschfqea_hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `right_id` int(11) NOT NULL,
  `joining_date` date NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user_id`, `name`, `email`, `username`, `designation_id`, `status`, `right_id`, `joining_date`, `created_date`) VALUES
(1, 1, 'Raghave', 'email@email.com', 'admin', 1, 1, 1, '2025-07-20', '2025-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `bed_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `bed_number` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`bed_id`, `ward_id`, `bed_number`, `status`, `created_date`) VALUES
(1, 2, '001-M', 1, '2025-07-23'),
(2, 3, '001-M', 1, '2025-07-26'),
(3, 2, '002-M', 1, '2025-07-26'),
(4, 1, '001-F', 1, '2025-07-29'),
(5, 1, '002-F', 1, '2025-07-29'),
(6, 4, '001-F', 1, '2025-07-29'),
(7, 4, '002-F', 1, '2025-07-29'),
(8, 5, '001', 1, '2025-07-29'),
(9, 5, '002', 1, '2025-07-29'),
(10, 6, '001', 1, '2025-07-29'),
(11, 6, '002', 1, '2025-07-29'),
(12, 3, '002-M', 1, '2025-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dep_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_code` varchar(100) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dep_id`, `name`, `short_code`, `doctor_id`, `status`, `created_date`) VALUES
(2, 'Orthopedic', 'ORTH-01-M', 1, 1, '2025-07-23'),
(3, 'Surgical', 'SUR-01-M', 4, 1, '2025-07-23'),
(4, 'Surgical', 'SUR-01-F', 2, 1, '2025-07-23'),
(5, 'Orthopedic', 'ORTH-01-F', 1, 1, '2025-07-23'),
(6, 'Medical', '112', 3, 1, '2025-07-27'),
(7, 'cardiology', '1122', 2, 1, '2025-07-29'),
(8, 'Orthopedic ', '112', 2, 1, '2025-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `right_id` int(11) NOT NULL,
  `joining_date` date NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `user_id`, `name`, `email`, `username`, `gender`, `address`, `country`, `city`, `postal_code`, `phone`, `dep_id`, `status`, `right_id`, `joining_date`, `created_date`) VALUES
(1, 5, 'Doctor1', 'email@email.com', 'doctor', 1, 'UK', 'United Kingdom', 'Bristol', '111', '123123123', 2, 1, 2, '2025-07-23', '2025-07-23'),
(2, 13, 'Doctor2', 'doctor2@email.com', 'doctor2', 2, '', 'USA', '', '', '', 7, 1, 2, '2025-07-26', '2025-07-26'),
(3, 31, 'Sourav Kumar Avi', 'skavi6294@gmail.com', 'Doctor 3', 1, '12 Victoria House\r\n95 Tudor Street', 'United Kingdom', 'Cardiff', 'CF116AA', '07398647258', 6, 1, 2, '2025-07-29', '2025-07-29'),
(4, 33, 'James Bond', '', 'jamesbond', 1, '', 'USA', '', '', '', 3, 1, 2, '2025-07-29', '2025-07-29'),
(5, 34, 'Dr.Dan Williams', '', 'danwil1', 1, 'Bishopsworth Rd', 'United Kingdom', 'Bristol', 'BS13 7LN', '', 6, 1, 2, '2025-07-29', '2025-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `admission_date` date NOT NULL,
  `gender` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `treatment_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `present_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `right_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `user_id`, `name`, `username`, `email`, `age`, `phone_number`, `admission_date`, `gender`, `country`, `city`, `postal_code`, `ward_id`, `bed_id`, `treatment_id`, `status`, `present_address`, `permanent_address`, `right_id`, `created_date`) VALUES
(11, 24, 'Patient 1', 'PP', '', '30', '', '2025-07-29', 1, '0', '', '', 6, 2, 39, 1, '', '', 3, '2025-07-28'),
(14, 27, 'Muhammad Shoaib', 'PP', '', '25', '07412939419', '2025-07-30', 1, '0', 'Bristol', 'BS16 1HP', 3, 2, 41, 1, '22 Begbrook Lane', '22 Begbrook Lane', 3, '2025-07-29'),
(17, 30, 'Sourav Kumar', 'PP', 'skavi6294@gmail.com', '25', '07398647258', '2025-07-16', 1, '0', 'Cardiff', 'CF116AA', 3, 2, 40, 1, '12 Victoria House\r\n95 Tudor Street', '12 Victoria House\r\n95 Tudor Street', 3, '2025-07-29'),
(18, 32, 'Sam Clarke', 'PP', 'Sam12@gmail.com', '21', '07487496014', '2025-07-16', 1, '0', 'Dunkrik road, fishpond', 'BS13 3DJ', 3, 2, 36, 1, '', '', 3, '2025-07-29'),
(19, 35, 'Ben Acker', 'PP', 'ben20@gmail.com', '29', '07690569834', '0000-00-00', 1, '0', 'Bristol', 'BS7 12GH', 0, 0, 42, 1, 'Bedminster', 'Bedminster', 3, '2025-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_record`
--

CREATE TABLE `treatment_record` (
  `treatment_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_record`
--

INSERT INTO `treatment_record` (`treatment_id`, `doctor_id`, `bed_id`, `patient_id`, `created_date`) VALUES
(21, 1, 0, 11, '0000-00-00'),
(30, 2, 0, 14, '0000-00-00'),
(33, 4, 0, 17, '0000-00-00'),
(34, 2, 0, 18, '0000-00-00'),
(35, 2, 2, 18, '2025-07-29'),
(36, 2, 2, 18, '2025-07-29'),
(37, 2, 2, 14, '2025-07-29'),
(38, 4, 2, 17, '2025-07-29'),
(39, 2, 2, 11, '2025-07-29'),
(40, 4, 2, 17, '2025-07-29'),
(41, 2, 2, 14, '2025-07-29'),
(42, 1, 0, 19, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `status`, `created_date`) VALUES
(1, 'admin', 'admin1234', 1, '2025-07-20'),
(5, 'doctor', 'doctor123', 1, '2025-07-23'),
(11, 'patient', 'patient123', 1, '2025-07-23'),
(12, 'patient2', 'patient2123', 1, '2025-07-23'),
(13, 'doctor2', 'doctor21234', 1, '2025-07-26'),
(14, 'patient3', 'patient3123', 1, '2025-07-26'),
(15, 'PP', 'patient1234', 1, '2025-07-28'),
(16, 'PP', 'patient1234', 1, '2025-07-28'),
(17, 'PP', 'patient1234', 1, '2025-07-28'),
(18, 'PP', 'patient1234', 1, '2025-07-28'),
(19, 'PP', 'patient1234', 1, '2025-07-28'),
(20, 'PP', 'patient1234', 1, '2025-07-28'),
(21, 'PP', 'patient1234', 1, '2025-07-28'),
(22, 'PP', 'patient1234', 1, '2025-07-28'),
(23, 'PP', 'patient1234', 1, '2025-07-28'),
(24, 'PP', 'patient1234', 1, '2025-07-28'),
(25, 'PP', 'patient1234', 1, '2025-07-28'),
(26, 'PP', 'patient1234', 1, '2025-07-29'),
(27, 'PP', 'patient1234', 1, '2025-07-29'),
(28, 'PP', 'patient1234', 1, '2025-07-29'),
(29, 'PP', 'patient1234', 1, '2025-07-29'),
(30, 'PP', 'patient1234', 1, '2025-07-29'),
(31, 'Doctor 3', 'doc1234', 1, '2025-07-29'),
(32, 'PP', 'patient1234', 1, '2025-07-29'),
(33, 'jamesbond', 'doc1234', 1, '2025-07-29'),
(34, 'danwil1', 'doc1234', 1, '2025-07-29'),
(35, 'PP', 'patient1234', 1, '2025-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `user_rights`
--

CREATE TABLE `user_rights` (
  `right_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `view` tinyint(4) NOT NULL,
  `addd` tinyint(4) NOT NULL,
  `edit` tinyint(4) NOT NULL,
  `delet` tinyint(4) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `ward_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `num_of_beds` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `dep_id` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`ward_id`, `name`, `num_of_beds`, `type`, `dep_id`, `status`, `created_date`) VALUES
(1, 'Orthopedic Female', '10', 'Orthopedic', '5', 1, '2025-07-27'),
(2, 'Orthopedic Male', '7', 'Orthopedic', '2', 1, '2025-07-27'),
(3, 'Surgical Male', '8', 'Surgical', '3', 1, '2025-07-27'),
(4, 'Surgical Female', '7', 'surgical', '4', 1, '2025-07-27'),
(5, 'Medical', '3', 'Medical', '6', 1, '2025-07-29'),
(6, 'cardiology', '4', 'cardiology', '7', 1, '2025-07-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`bed_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `treatment_record`
--
ALTER TABLE `treatment_record`
  ADD PRIMARY KEY (`treatment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_rights`
--
ALTER TABLE `user_rights`
  ADD PRIMARY KEY (`right_id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`ward_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `bed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `treatment_record`
--
ALTER TABLE `treatment_record`
  MODIFY `treatment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_rights`
--
ALTER TABLE `user_rights`
  MODIFY `right_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `ward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
