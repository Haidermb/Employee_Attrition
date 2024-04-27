-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 07:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attrition`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpID` varchar(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `name`, `email`, `phone`) VALUES
('RM018', 'Priya Sharma', 'priya.sharma2@example.com', '1234567890'),
('RM021', 'Rakesh Kumar', 'rakesh.kumar@example.com', '9786543210'),
('RM024', 'Rajeshwari Devi', 'rajeshwari.devi2@example.com', '5432109876'),
('RM035', 'Amit Patel', 'amit.patel@example.com', '8765432109'),
('RM087', 'Sangeeta Singh', 'sangeeta.singh3@example.com', '3456789012'),
('RM097', 'Suresh Sharma', 'suresh.sharma@example.com', '7654321098'),
('RM1026', 'Anita Gupta', 'anita.gupta@example.com', '6543210987'),
('RM103', 'Sunita Singh', 'sunita.singh@example.com', '7890123456'),
('RM1061', 'Rahul Singh', 'rahul.singh@example.com', '5432109876'),
('RM1062', 'Priya Mishra', 'priya.mishra@example.com', '4321098765'),
('RM108', 'Deepak Verma', 'deepak.verma@example.com', '3210987654'),
('RM1083', 'Neha Joshi', 'neha.joshi@example.com', '2109876543'),
('RM109', 'Rakesh Shah', 'rakesh.shah@example.com', '9012345678'),
('RM1098', 'Pooja Patel', 'pooja.patel@example.com', '8901234567'),
('RM110', 'Sanjay Singh', 'sanjay.singh@example.com', '9876543210'),
('RM1128', 'Aarti Gupta', 'aarti.gupta@example.com', '7890123456'),
('RM1138', 'Neha Devi', 'neha.devi2@example.com', '7890123456'),
('RM114', 'Vijay Kumar', 'vijay.kumar@example.com', '6789012345'),
('RM1153', 'Ankit Singh', 'ankit.singh@example.com', '4567890123'),
('RM1154', 'Deepak Verma', 'deepak.verma@example.com', '3210987654'),
('RM1169', 'Naveen Sharma', 'naveen.sharma@example.com', '5678901234'),
('RM1179', 'Manoj Kumar', 'manoj.kumar@example.com', '7654321098'),
('RM1198', 'Sneha Singh', 'sneha.singh@example.com', '6543210987'),
('RM1202', 'Rajni Singh', 'rajni.singh@example.com', '4567890123'),
('RM1214', 'Vivek Kumar', 'vivek.kumar@example.com', '3456789012'),
('RM1218', 'Anjali Gupta', 'anjali.gupta@example.com', '2345678901'),
('RM1223', 'Sanjay Yadav', 'sanjay.yadav@example.com', '1234567890'),
('RM1231', 'Sunita Singh', 'sunita.singh@example.com', '7890123456'),
('RM1239', 'Rajeshwari Devi', 'rajeshwari.devi@example.com', '6789012345'),
('RM1246', 'Vikas Singh', 'vikas.singh@example.com', '5678901234'),
('RM1272', 'Sunita Kumari', 'sunita.kumari@example.com', '3456789012'),
('RM1274', 'Amit Kumar', 'amit.kumar3@example.com', '6789012345'),
('RM128', 'Rakesh Shah', 'rakesh.shah@example.com', '9012345678'),
('RM129', 'Anita Kumari', 'anita.kumari@example.com', '8765432109'),
('RM1312', 'Neha Joshi', 'neha.joshi@example.com', '2109876543'),
('RM1340', 'Preeti Sharma', 'preeti.sharma2@example.com', '5678901234'),
('RM139', 'Preeti Sharma', 'preeti.sharma@example.com', '4567890123'),
('RM1408', 'Avinash Kumar', 'avinash.kumar@example.com', '3456789012'),
('RM1409', 'Geeta Devi', 'geeta.devi@example.com', '2345678901'),
('RM1424', 'Suresh Kumar', 'suresh.kumar@example.com', '4567890123'),
('RM1437', 'Rajesh Yadav', 'rajesh.yadav@example.com', '2345678901'),
('RM1439', 'Kamal Gupta', 'kamal.gupta@example.com', '1234567890'),
('RM150', 'Pooja Patel', 'pooja.patel@example.com', '8901234567'),
('RM161', 'Raj Kumar', 'raj.kumar@example.com', '7654321098'),
('RM172', 'Aarti Gupta', 'aarti.gupta@example.com', '7890123456'),
('RM178', 'Vijay Kumar', 'vijay.kumar@example.com', '6789012345'),
('RM207', 'Neha Singh', 'neha.singh2@example.com', '6543210987'),
('RM275', 'Neha Kumari', 'neha.kumari@example.com', '4321098765'),
('RM297', 'Rajesh Kumar', 'rajesh.kumar@example.com', '9876543210'),
('RM302', 'Amit Patel', 'amit.patel@example.com', '8765432109'),
('RM346', 'Anjali Kumari', 'anjali.kumari@example.com', '2345678901'),
('RM358', 'Rajesh Kumar', 'rajesh.kumar2@example.com', '3210987654'),
('RM363', 'Sangeeta Devi', 'sangeeta.devi@example.com', '2109876543'),
('RM371', 'Amit Kumar', 'amit.kumar@example.com', '1098765432'),
('RM381', 'Neeraj Singh', 'neeraj.singh@example.com', '9876543210'),
('RM384', 'Amit Kumar', 'amit.kumar2@example.com', '5432109876'),
('RM415', 'Rita Sharma', 'rita.sharma@example.com', '8765432109'),
('RM423', 'Naveen Sharma', 'naveen.sharma@example.com', '5678901234'),
('RM444', 'Rajesh Yadav', 'rajesh.yadav2@example.com', '4321098765'),
('RM458', 'Suresh Sharma', 'suresh.sharma@example.com', '7654321098'),
('RM471', 'Manoj Kumar', 'manoj.kumar@example.com', '7654321098'),
('RM475', 'Sneha Singh', 'sneha.singh@example.com', '6543210987'),
('RM477', 'Rajeshwari Devi', 'rajeshwari.devi2@example.com', '5432109876'),
('RM480', 'Neha Kumari', 'neha.kumari@example.com', '4321098765'),
('RM488', 'Rajeshwari Devi', 'rajeshwari.devi@example.com', '6789012345'),
('RM497', 'Suman Kumari', 'suman.kumari@example.com', '9012345678'),
('RM499', 'Priya Sharma', 'priya.sharma3@example.com', '3210987654'),
('RM514', 'Vikas Singh', 'vikas.singh@example.com', '5678901234'),
('RM517', 'Raj Kumar', 'raj.kumar2@example.com', '1234567890'),
('RM526', 'Rajesh Kumar', 'rajesh.kumar2@example.com', '3210987654'),
('RM551', 'Sangeeta Devi', 'sangeeta.devi@example.com', '2109876543'),
('RM566', 'Amit Kumar', 'amit.kumar@example.com', '1098765432'),
('RM586', 'Suman Kumari', 'suman.kumari@example.com', '9012345678'),
('RM587', 'Ajay Singh', 'ajay.singh@example.com', '8901234567'),
('RM631', 'Manoj Kumar', 'manoj.kumar2@example.com', '2109876543'),
('RM641', 'Pooja Sharma', 'pooja.sharma@example.com', '7890123456'),
('RM663', 'Preeti Sharma', 'preeti.sharma@example.com', '4567890123'),
('RM664', 'Ajay Singh', 'ajay.singh@example.com', '8901234567'),
('RM667', 'Sangeeta Kumari', 'sangeeta.kumari@example.com', '1098765432'),
('RM689', 'Rajni Singh', 'rajni.singh@example.com', '4567890123'),
('RM690', 'Avinash Kumar', 'avinash.kumar@example.com', '3456789012'),
('RM725', 'Rakesh Kumar', 'rakesh.kumar3@example.com', '6789012345'),
('RM728', 'Anita Gupta', 'anita.gupta@example.com', '6543210987'),
('RM732', 'Geeta Devi', 'geeta.devi@example.com', '2345678901'),
('RM735', 'Suman Singh', 'suman.singh@example.com', '9012345678'),
('RM777', 'Kamal Gupta', 'kamal.gupta@example.com', '1234567890'),
('RM778', 'Pooja Sharma', 'pooja.sharma@example.com', '7890123456'),
('RM816', 'Rakesh Kumar', 'rakesh.kumar3@example.com', '6789012345'),
('RM829', 'Rahul Singh', 'rahul.singh@example.com', '5432109876'),
('RM842', 'Nisha Devi', 'nisha.devi@example.com', '5678901234'),
('RM854', 'Vivek Kumar', 'vivek.kumar@example.com', '3456789012'),
('RM857', 'Neeraj Singh', 'neeraj.singh@example.com', '9876543210'),
('RM861', 'Rakesh Singh', 'rakesh.singh@example.com', '8901234567'),
('RM872', 'Ankit Singh', 'ankit.singh@example.com', '4567890123'),
('RM877', 'Rita Sharma', 'rita.sharma@example.com', '8765432109'),
('RM893', 'Anjali Gupta', 'anjali.gupta@example.com', '2345678901'),
('RM910', 'Sanjay Yadav', 'sanjay.yadav@example.com', '1234567890'),
('RM911', 'Sunita Kumari', 'sunita.kumari@example.com', '3456789012'),
('RM916', 'Nisha Devi', 'nisha.devi@example.com', '5678901234'),
('RM973', 'Priya Mishra', 'priya.mishra@example.com', '4321098765');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
