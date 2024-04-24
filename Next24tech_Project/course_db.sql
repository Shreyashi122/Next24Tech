-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 09:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`user_id`, `playlist_id`) VALUES
('xCz8gCRHG3rGkwx6m7jt', 'jUmnztmdH5R60g99y5Ty'),
('ffsHIgkxsZ197wlr4FTR', 'jUmnztmdH5R60g99y5Ty');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('91RXCaM1Bufds95GSR94', 'vJRXF7UA8BekGEVwJp0M', 'xCz8gCRHG3rGkwx6m7jt', 'RWwfvG0K1IM1HNfuZPZK', 'Thank You for this nice video..', '2024-04-25'),
('RAXQ9yQb8j85Ai4JsWQE', 'vJRXF7UA8BekGEVwJp0M', 'ffsHIgkxsZ197wlr4FTR', 'RWwfvG0K1IM1HNfuZPZK', 'Nice Video.', '2024-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `number`, `message`) VALUES
('Shreyashi Roy', 'shreyashi@gmail.com', 2147483647, 'I am very Interested.');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('vJRXF7UA8BekGEVwJp0M', 'RWwfvG0K1IM1HNfuZPZK', 'jUmnztmdH5R60g99y5Ty', 'A girl control a robot', 'It is just an demo video.. ', '5vWPH6YXstzGtrHHynm1.mp4', 'lofU00MkkSmvNmrmnYxT.jpg', '2024-04-22', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('xCz8gCRHG3rGkwx6m7jt', 'RWwfvG0K1IM1HNfuZPZK', 'vJRXF7UA8BekGEVwJp0M'),
('ffsHIgkxsZ197wlr4FTR', 'RWwfvG0K1IM1HNfuZPZK', 'vJRXF7UA8BekGEVwJp0M');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('jUmnztmdH5R60g99y5Ty', 'RWwfvG0K1IM1HNfuZPZK', 'Education Playlist', 'it is an education purpose video. ', 'QZ8gNeTDs9XAfeQcgTnr.jpg', '2024-04-22', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('6esbpVN3Ibeagm65G3Sb', 'Darshana Kumari', 'developer', 'darshana12@gmail.com', '6cfd0a90a2aef938ccbd64f4a3ce5cfcc22b2572', 'WNFj6GwEZ1NT1t7CUDxG.webp'),
('a6b8izLBvTewYrkDtsBO', 'Kajal Singh', 'desginer', 'kajal123@gmail.com', 'ff3e0d707ce1ac642d58668648eea1a8fc092309', 'TLsNavPDTWq9ZL8BkzJ7.webp'),
('vdeEeqy4R5XtXuB7p0vG', 'John Doe', 'engineer', 'john123@gmail.com', '31f51faebeaafcb546721a7bd012db57b5434992', 'Q07RrbiIAXpSdmNrJcrV.webp'),
('RWwfvG0K1IM1HNfuZPZK', 'Srijita Basu', 'teacher', 'srijita123@gmail.com', 'a9307890487a8387e0d076fd5d04d7d84307ed13', 'rbUBDTIeC1fH8Msd3fNq.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('xCz8gCRHG3rGkwx6m7jt', 'Shreyashi Roy', 'shreyashi@gmail.com', 'dfbff7384c9149354dc9043dfe1de12fe2d34386', 'jRiwDIfXgyOUcnypEWkF.jpg'),
('ffsHIgkxsZ197wlr4FTR', 'Riya Talukdar', 'riya@gmail.com', 'dfbff7384c9149354dc9043dfe1de12fe2d34386', 'fMsAQzrjyQm7XqLdtBix.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
