-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 16, 2021 at 07:26 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Yasser Dalouzi', 'admin@ave.com', '123', 'admin.jpg', '077885221', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical '),
(3, 'dil', 'user3@gmail.com', '1234', 'Passport Size.jpg', '123456789', 'india', 'null', ' killer'),
(4, 'Frank', 'frank@admin.com', '12345', 'black-forest-cake-500x500.jpg', '1234567890', 'India', 'Jobless', ''),
(5, 'STC', 'stc@stc.com', '12345', 'istockphoto-485677649-612x612.jpg', '1234567890', 'India', 'Clg', 'St. Thomas College (Autonomous), Thrissur'),
(6, 'Sample', 'sample@stc.com', '12345', '', '1234567890', 'India', 'Nil', ' Sample Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL,
  `pref_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(6, 'Cake', 'no', 'c1f94980fa354a048008897a2b901039.jpg'),
(7, 'Pastries', 'no', 'best-chocolate-cupcakes-recipe-SQUARE.jpg'),
(9, 'Other', 'no', '270px-Pink_Lady_Apple_(4107712628).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'k.rameela@gmail.com', 'Contact Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, 9, 'Remind T-shirt', '40', '333444', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'user', 'user@ave.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.jpg', '::1', ''),
(5, 'Frank', 'frank123@gmail.com', '12345', 'India', 'Thrissur', '1234567890', 'Thrissur', '', '::1', ''),
(6, 'Dil', 'dil@123.com', '12345', 'india', 'tsr', '1234567890', 'asasdasd', '', '::1', ''),
(7, 'user3', 'user3@123.com', '12345', 'india', 'tsr', '1234567890', 'Kottayam', '', '::1', ''),
(8, 'Anusha', 'anusha@korandi.com', '12345', 'india', 'tsr', '9999999999', 'Feminichi', '', '::1', ''),
(9, 'DV', 'dv@tech.com', '12345', 'DV123', 'Kozhikode', '99999999', 'Kerala', '', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL,
  `pro_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`, `pro_dt`) VALUES
(16, 2, 207, 1715523401, 3, 'Small', '2021-09-05 16:09:03', 'Complete', NULL),
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending', NULL),
(18, 2, 300, 1715523401, 1, 'Medium', '2017-02-20 08:21:42', 'pending', NULL),
(19, 2, 150, 1068059025, 1, 'Medium', '2017-02-20 08:26:47', 'pending', NULL),
(20, 2, 288, 909940689, 3, 'Large', '2017-02-27 11:06:32', 'complete', NULL),
(21, 2, 400, 909940689, 2, 'Meduim', '2017-02-27 11:06:37', 'complete', NULL),
(22, 2, 0, 217894971, 0, 'Select a Size', '2021-08-25 06:09:14', 'pending', NULL),
(23, 2, 0, 1734348083, 0, 'Select a Size', '2021-08-25 06:53:41', 'Complete', NULL),
(24, 2, 2000, 582435743, 10, 'Select a Size', '2021-08-25 07:03:40', 'Complete', NULL),
(25, 3, 1000, 25380430, 5, 'Medium', '2021-08-25 07:16:49', 'pending', NULL),
(26, 3, 0, 25380430, 0, 'Select a Size', '2021-08-25 07:16:49', 'pending', NULL),
(27, 4, 0, 2010804318, 0, 'Select a Size', '2021-08-25 07:21:20', 'Complete', NULL),
(28, 5, 200, 1826542881, 2, 'Medium', '2021-08-31 06:27:23', 'pending', NULL),
(29, 6, 1000, 1364922767, 5, 'Medium', '2021-08-31 06:42:32', 'pending', NULL),
(30, 6, 500, 1984208510, 1, 'Select a Size', '2021-08-31 06:58:00', 'pending', NULL),
(31, 0, 500, 424326115, 1, 'Select a Size', '2021-08-31 07:08:37', 'pending', NULL),
(32, 7, 500, 717345687, 1, 'Select a Size', '2021-08-31 07:17:19', 'pending', NULL),
(33, 8, 500, 1785829651, 1, 'Select a Size', '2021-08-31 07:40:03', 'pending', NULL),
(34, 5, 1500, 828836196, 3, 'Small', '2021-08-31 08:02:38', 'pending', NULL),
(35, 5, 250, 820512487, 5, '1 KG', '2021-09-04 06:53:47', 'pending', NULL),
(36, 5, 15000, 820512487, 1, 'Size', '2021-09-04 06:53:47', 'pending', NULL),
(37, 5, 500, 2122254262, 2, '', '2021-09-04 10:08:48', 'pending', NULL),
(38, 5, 1250, 1767130239, 5, '', '2021-09-04 10:12:50', 'pending', NULL),
(39, 2, 0, 1224248168, 0, '', '2021-09-04 10:34:56', 'pending', NULL),
(40, 2, 1250, 1112902909, 5, '1 KG', '2021-09-04 10:49:31', 'pending', NULL),
(41, 2, 0, 867948972, 0, '2 KG', '2021-09-04 10:53:18', 'pending', NULL),
(42, 2, 10000, 867948972, 20, 'Size', '2021-09-04 10:53:18', 'pending', NULL),
(43, 2, 1000, 700242409, 2, '1 KG', '2021-09-07 08:59:21', 'pending', NULL),
(44, 2, 500, 2014944798, 1, 'Size', '2021-09-07 09:00:33', 'pending', NULL),
(45, 2, 500, 937929046, 1, '', '2021-09-11 06:42:04', 'pending', NULL),
(46, 2, 1500, 137496243, 3, 'Select a Category', '2021-09-11 07:13:08', 'pending', '2021-10-08 12:23:00'),
(47, 2, 500, 1808498420, 1, '1', '2021-09-11 07:20:00', 'pending', '2021-09-12 14:49:00'),
(48, 2, 2000, 579789754, 4, '1', '2021-09-11 09:11:00', 'pending', '2021-09-18 14:40:00'),
(49, 2, 250, 1954283935, 1, '', '2021-09-11 09:13:57', 'pending', '2021-09-15 14:43:00'),
(50, 2, 1000, 725559507, 2, '1', '2021-09-11 09:15:14', 'pending', '2021-09-22 14:45:00'),
(51, 2, 1000, 524889809, 2, '1', '2021-09-11 09:16:53', 'pending', '2021-09-25 14:46:00'),
(52, 2, 500, 166497435, 1, '1', '2021-09-11 09:17:47', 'pending', '2021-09-22 14:47:00'),
(53, 2, 500, 1498619299, 2, 'Select a Category', '2021-09-11 09:38:30', 'pending', '2021-09-16 15:08:00'),
(54, 2, 1250, 1453738570, 5, '1', '2021-09-11 11:21:42', 'pending', '2021-09-11 15:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_num` varchar(15) NOT NULL,
  `manufacturer_email` varchar(50) NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_num`, `manufacturer_email`, `manufacturer_image`) VALUES
(2, 'Adidas', 'no', '', '', 'image2.jpg'),
(3, 'Nike', 'no', '', '', 'image3.jpg'),
(4, 'Philip Plein', 'no', '', '', 'manufacturer.jpg'),
(5, 'Lacost', 'no', '', '', 'image6.jpg'),
(6, 'Gucci', 'yes', '', '', 'akshay-kumar.jpg'),
(7, 'STC Thrissur', 'no', '', '', ''),
(9, 'Anusha', 'no', '123456', 'anusha@1234.com', ''),
(10, 'Dil', 'no', '12345678', 'dil@admin.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016'),
(4, 12233, 12233, 'Bank Code', 0, 0, '20/02/2021'),
(5, 34635635, 45435, 'Select Payment Mode', 5345, 5345, '345345'),
(6, 0, 0, 'Bank Code', 0, 0, 'safda'),
(7, 12123123, 500, 'Bank Code', 123123123, 123123123, '1223');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL,
  `pro_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`, `pro_dt`) VALUES
(53, 2, 1498619299, '24', 2, 'Select a Category', 'pending', '2021-09-16 15:08:00'),
(54, 2, 1453738570, '31', 5, '1', 'pending', '2021-09-11 15:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `Seller_id` varchar(20) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_weight` text NOT NULL,
  `product_psp_price` int(100) DEFAULT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `Seller_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_weight`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(18, '123456', 6, 4, '2021-09-07 07:47:22', 'Red Velvet', 'red-velvet', 'red-velvet-cake.jpg', 'red-velvet-cake-500x500.png', 'eggless-red-velvet-cake-cake-100-fresh-cake-free-delivery-573384_360x.jpg', 250, '', 0, 'Red Velvet Cake\r\n', 'Good, Nice', '\r\n\r\n\r\n\r\n', 'red', '10 LEFT', 'product'),
(20, '123456', 7, 7, '2021-09-07 07:47:33', 'Cup Cakes', 'cup-cake', 'chocolate-cupcakes10.jpg', 'best-chocolate-cupcakes-recipe-SQUARE.jpg', 'valentines-cakes-group-3.jpg', 500, 'Select a Category', 0, 'Good cup cake\r\n', 'Delicious\r\n', '\r\n\r\n\r\n\r\n', 'cup', '10 LEFT', 'product'),
(23, '123456', 6, 0, '2021-09-07 08:47:27', 'Black Forest', 'black-forest', 'eggless-red-velvet-cake-cake-100-fresh-cake-free-delivery-573384_360x.jpg', 'red-velvet-cake-500x500.png', 'extravagant-blackforest-past0159blac-A_0.jpg', 500, '1', NULL, '\r\n\r\ngood', '\r\n\r\n', '\r\n\r\n', 'black', '1 LEFT', 'product'),
(27, '123456', 6, 0, '2021-09-11 09:33:36', 'white forest', 'white-forest', 'Do_Apples_Affect_Diabetes_and_Blood_Sugar_Levels-732x549-thumbnail-1-732x549.jpg', 'Re-Shoot-Cake-11-C.jpg', 'valentines-cakes-group-3.jpg', 250, '1', NULL, '\r\nhvk,hv\r\n', '\r\n\r\n', '\r\n\r\n', 'white', '1 LEFT', 'product'),
(30, '1234567', 6, 0, '2021-09-11 09:42:38', 'white forest', 'whiteforest2', 'CD9811C0-7271-4EF8-BDD6-D4BCD0C9488B.jpeg', 'c1f94980fa354a048008897a2b901039.jpg', '270px-Pink_Lady_Apple_(4107712628).jpg', 500, '1', NULL, '\r\nryhgfj\r\n', '\r\n\r\n', '\r\n\r\n', 'white', '2 LEFT', 'product'),
(31, '123456', 6, 0, '2021-09-11 10:18:10', 'Black Forest', 'black-forest-123456', '270px-Pink_Lady_Apple_(4107712628).jpg', 'CD9811C0-7271-4EF8-BDD6-D4BCD0C9488B.jpeg', 'eggless-red-velvet-cake-cake-100-fresh-cake-free-delivery-573384_360x.jpg', 250, '1', 0, '\r\n\r\n\r\ngood\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'black', '1 LEFT', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `Seller_name` varchar(20) NOT NULL,
  `Seller_email` varchar(50) NOT NULL,
  `Seller_pass` varchar(50) NOT NULL,
  `Seller_id` varchar(15) NOT NULL,
  `Seller_city` varchar(15) NOT NULL,
  `Seller_contact` varchar(20) NOT NULL,
  `Seller_address` varchar(100) NOT NULL,
  `confirm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`Seller_name`, `Seller_email`, `Seller_pass`, `Seller_id`, `Seller_city`, `Seller_contact`, `Seller_address`, `confirm`) VALUES
('dil', 'dil@gmail.com', '123456', '123456', 'tsr', '1234567890', 'Kerala', 1),
('FRank', 'frank@abc.com', '123', '1234567', 'tsr', '1234567890', 'Kerala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'London Store', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'New York Store', 'store (1).png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Paris Store', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`Seller_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
