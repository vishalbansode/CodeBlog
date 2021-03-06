-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2021 at 02:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 1, 'Technology', '2021-03-05 13:03:18'),
(2, 1, 'Business', '2021-03-05 13:14:40'),
(4, 1, 'Banking N finance', '2021-03-05 07:59:06'),
(6, 1, 'Travelling In India', '2021-03-05 11:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 2, 'John Doe', 'jdoe@gmail.com', 'Great Post!', '2017-03-17 13:57:29'),
(2, 2, 'Jan Doe', 'jane@yahoo.com', 'Thank you for this awesome post', '2017-03-17 14:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(4, 2, 1, 'NIfty50', 'NIfty50', '<p>The NIFTY 50 is a benchmark Indian stock market index that represents the weighted average of 50 of the largest Indian companies listed on the National Stock Exchange. It is one of the two main stock indices used in India, the other being the BSE</p>\r\n', 'nifty50.png', '2021-03-05 05:49:22'),
(5, 2, 1, 'website development', 'website-development', '<p>Business plans have long been a critical document for new businesses. Are they still relevant? If so, what best practices and data can help you create a winning document that will help your business get the funding you need and ensure your venture lasts?</p>\r\n', 'website.jpg', '2021-03-05 06:24:09'),
(7, 1, 1, 'Electric vechile in India', 'Electric-vechile-in-India', '<p>Essentially, an&nbsp;<strong>electric vehicle</strong>&nbsp;(<strong>EV</strong>) has a battery instead of a petrol tank, and an&nbsp;<strong>electric</strong>&nbsp;motor instead of an internal combustion engine. The&nbsp;<strong>electricity</strong>&nbsp;stored in its battery powers the&nbsp;<strong>electric</strong>&nbsp;motor. ... Although they have a smaller capacity, these models are able to run in&nbsp;<strong>electric</strong>-only mode for 20-30 miles.</p>\r\n', 'ev2.png', '2021-03-05 02:24:10'),
(8, 4, 1, 'Home loan', 'Home-loan', '<p>Home loan interest rate is the percentage of the principal amount charged by the lender to the borrower for using the principal amount. The interest rate charged by banks and non-financial institutions determine the cost of your home loan. So, when you are paying your home loan EMI (equated monthly instalment), the interest rate charged determines how much you have to pay your lender against your loan every month. Interest rates are usually linked to&nbsp;<a href=\"https://www.bankbazaar.com/home-loan/repo-rate.html\">repo rate</a>&nbsp;and can vary from lender to lender.</p>\r\n', 'home.png', '2021-03-05 03:31:44'),
(9, 4, 1, 'Gross domestic product', 'Gross-domestic-product', '<p>Gross domestic product is a monetary measure of the market value of all the final goods and services produced in a specific time period</p>\r\n', 'gdp.jpg', '2021-03-05 05:55:13'),
(10, 1, 1, 'Ethanol alternative of petrol', 'Ethanol-alternative-of-petrol', '<p>Why is the world still using so much petrol?&nbsp;There are more than a dozen&nbsp;<a href=\"http://www.afdc.energy.gov/glossary.html#AlternativeFuels\" target=\"_blank\">alternative fuels</a>&nbsp;currently under development or in production to power the vehicles of the future, and some are available today.</p>\r\n', 'altern.jpg', '2021-03-05 05:58:49'),
(11, 6, 1, 'Konkan', 'Konkan', '<p>Konkan division is one of the six administrative divisions of Maharashtra state in India. It comprises the Konkan region, which occupies the entire west coast of Maharashtra. The two districts in the state capital Mumbai also fall in Konkan division</p>\r\n', 'kokan.jpeg', '2021-03-05 06:38:02'),
(12, 6, 1, 'pink city of india', 'pink-city-of-india', '<p>Jaipur is the capital of India&rsquo;s Rajasthan state. It evokes the royal family that once ruled the region and that, in 1727, founded what is now called the Old City, or &ldquo;Pink City&rdquo; for its trademark building color. At the center of its stately street grid (notable in India) stands the opulent, colonnaded City Palace complex. With gardens, courtyards and museums, part of it is still a royal residence.</p>\r\n', 'jai.jpg', '2021-03-05 06:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'vishal bansode', '400 708', 'vishal@gmail.com', 'vishal', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-10 13:14:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
