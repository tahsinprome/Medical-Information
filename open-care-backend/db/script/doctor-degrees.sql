-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2019 at 09:44 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_geo_code`
--

-----------------------------------------------------------

--
-- Table structure for table `doctor-degrees`
--

create table `doctor-degrees` (
	`id` int (11) NOT NULL,
	`doctor_id` int (11) NOT NULL,
	`degree_id` int (11) NOT NULL,
	`speciality_id` int (6) NOT NULL,
	`institution_id` int (11) NOT NULL,
    `start_datetime` DATETIME,
    `end_datetime` DATETIME,
    `grade` varchar (50),
    `description` varchar (200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor-degrees`
--

-- insert into `doctor-degrees` (`id`, `doctor_id`, `position`, `speciality_id`, `hospital_id`, `institution_id`) values(1,1,'Consultant',1,1,1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor-degrees`
--

ALTER TABLE `doctor-degrees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `degree_id` (`degree_id`),
  ADD KEY `speciality_id` (`speciality_id`),
  ADD KEY `institution_id` (`institution_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor-degrees`
--
ALTER TABLE `doctor-degrees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor-degrees`
--
ALTER TABLE `doctor-degrees` ADD CONSTRAINT `doctor-degrees_fk_doctors` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `doctor-degrees` ADD CONSTRAINT `doctor-degrees_fk_degrees` FOREIGN KEY (`degree_id`) REFERENCES `degrees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `doctor-degrees` ADD CONSTRAINT `doctor-degrees_fk_specialties` FOREIGN KEY (`speciality_id`) REFERENCES `specialties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `doctor-degrees` ADD CONSTRAINT `doctor-degrees_fk_institutions` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
