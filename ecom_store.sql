-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2021 at 05:25 AM
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
(1, 'About Us - Our Story', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');

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
(7, 'STC E-Cart', 'stc.ecart@123.com', '123', '', '1234567890', 'India', 'E-Cart Admin', 'St. Thomas College E-Cart Administrator');

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
  `wish_text` varchar(30) NOT NULL,
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
(12, 'Cake', 'no', ''),
(14, 'Pastries', 'no', ''),
(15, 'Star', 'no', ''),
(16, 'Tree', 'no', ''),
(17, 'Decorations', 'no', '');

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
(1, 'franktrl2000@gmail.com', 'Contact Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

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
(5, 'Frank', 'frank@123.com', '12345', 'India', 'Thrissur', '1234567890', 'Thrissur', '', '::1', ''),
(6, 'Dil', 'dil@123.com', '12345', 'india', 'tsr', '1234567890', 'asasdasd', '', '::1', ''),
(10, 'Customer 1', 'c1@123.com', '123', '', 'Thrissur', '1234567890', 'Thrissur', '', '::1', ''),
(11, 'Customer 2', 'c2@123.com', '123', '', 'Thrissur', '1234567890', 'Thrissur', '', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `pro_id` int(10) NOT NULL,
  `wish_text` varchar(30) NOT NULL,
  `s_id` varchar(20) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` text NOT NULL,
  `pro_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `pro_id`, `wish_text`, `s_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`, `pro_dt`) VALUES
(83, 11, 50, 'HBD Dear', 'sid3', 800, 761246668, 1, '1', '2021-10-11 04:36:40', 'Completed', '2021-10-17 15:00:00'),
(84, 10, 52, '', 'sid3', 800, 866912366, 2, '1', '2021-10-11 04:41:57', 'Completed', '2021-10-15 11:00:00'),
(85, 10, 48, '', 'sid2', 1400, 954274360, 2, '', '2021-10-11 04:45:50', 'Completed', '2021-10-17 14:00:00'),
(86, 10, 43, '', 'sid1', 500, 1327354904, 5, '', '2021-10-11 04:56:33', 'Cancelled', '2021-10-17 14:00:00'),
(87, 11, 45, 'Happy Anniversary', 'sid2', 600, 266455921, 1, '1', '2021-10-12 07:03:12', 'Completed', '2021-10-12 12:32:00'),
(89, 10, 40, 'HBD Dear', 'sid1', 500, 766226969, 1, '1', '2021-10-07 07:41:28', 'Completed', '2021-10-18 13:05:00'),
(90, 10, 44, '', 'sid1', 1200, 766226969, 2, '', '2021-10-09 07:43:28', 'Completed', '2021-10-17 13:11:00'),
(91, 10, 41, '', 'sid1', 250, 1222223871, 5, '', '2021-10-10 07:45:09', 'Pending', '2021-10-12 13:15:00'),
(92, 10, 40, '', 'sid1', 500, 1732176515, 1, '1', '2021-10-10 07:46:05', 'Pending', '2021-10-18 13:15:00'),
(93, 10, 45, 'Happy Anniversary', 'sid2', 600, 2007845257, 1, '1', '2021-10-12 14:13:49', 'Pending', '2021-10-18 07:42:00'),
(94, 10, 52, 'Happy Anniversary', 'sid3', 400, 339940075, 1, '1', '2021-10-12 14:46:04', 'Pending', '2021-10-17 10:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_review`
--

CREATE TABLE `customer_review` (
  `order_id` int(10) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `star` varchar(5) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_review`
--

INSERT INTO `customer_review` (`order_id`, `customer_id`, `product_id`, `star`, `review`) VALUES
(83, '11', '50', '5', 'Delicious. Will order again...'),
(84, '10', '52', '4', 'I liked the cake very much. Thank you...'),
(87, '11', '45', '4', 'The cake was very soft and delicious. Thank you...'),
(89, '10', '40', '5', 'Delicious...');

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
(40, 'sid1', 12, 0, '2021-10-10 15:02:53', 'Black Forest', 'black-forest-1-sid1', 'blackforest-cake.jpeg', 'black-forest-cake-half-kg_2.jpg', 'p-classic-black-forest-cake-half-kg--108742-m.jpg', 500, '1', NULL, 'Black Forest 1 KG', 'Tasty Cake\r\n\r\n', '\r\n\r\n', 'black', 'NEW', 'product'),
(41, 'sid1', 14, 0, '2021-10-10 15:03:03', 'Coconut Cupcake', 'coconut-cupcake-sid1', 'Coconut+Cupcakes-9.jpg', 'Coconut-Cupcakes-25.jpg', 'Italian-Cream-Coconut-Cupcakes-3.jpg', 50, '', NULL, 'Coconut Cupcake\r\n\r\n', 'Delicious\r\n\r\n', '\r\n\r\n', 'coconut', 'SALE', 'product'),
(42, 'sid1', 15, 0, '2021-10-10 15:03:17', 'Paper Star', 'paper-star-sid1', '51KbUwnIiVL._SY355_.jpg', '1-1.jpg', '61JDfj4TRhL._AC_UL320_.jpg', 100, '', NULL, 'Paper Star\r\n\r\n', 'Eco-friendly\r\n\r\n', '\r\n\r\n', 'star', '10 LEFT', 'product'),
(43, 'sid1', 17, 0, '2021-10-10 14:58:51', 'Decoration Balls', 'decoration-balls-kg-sid1', '51k4+fG0ZqL._AC_SS450_.jpg', '71PZvRPgArL.jpg', '398646-1.jpg', 100, '', NULL, 'Decoration Balls', 'Red\r\n', '\r\n\r\n', 'decoration', 'SALE', 'product'),
(44, 'sid1', 16, 0, '2021-10-10 15:17:43', 'Xmas Tree - Green', 'tree-green--sid1', '15111.jpg', 'ChristmasTree-5ba295ecc9e77c00503fc3a4.jpg', 'xmassss.jpg', 600, '', NULL, 'Christmas Tree\r\n\r\n', 'Green 6 ft tall\r\n\r\n', '\r\n\r\n', 'tree', '2 LEFT', 'product'),
(45, 'sid2', 12, 0, '2021-10-12 07:01:53', 'White Forest', 'white-forest-1-sid2', 'white-forest-cake-B.jpg', 'Re-Shoot-Cake-11-A.jpg', 'White Forest.jpg', 600, '1', 0, 'White Forest\r\n\r\n1 Kg', 'Delicious\r\n\r\nSugar-free\r\n\r\nSoft', '\r\n\r\n\r\n\r\n', 'white', '5 LEFT', 'product'),
(46, 'sid2', 14, 0, '2021-10-10 15:24:13', 'Chocolate Cup Cake', 'choco-cup-cake--sid2', 'best-chocolate-cupcakes-recipe-SQUARE.jpg', 'maxresdefault.jpg', 'Chocolate-Cupcakes-Recipe-1.jpg', 70, '', NULL, 'Chocolate Cup Cake\r\n\r\n', 'Chocolate\r\n\r\n', '\r\n\r\n', 'chocolate-cup-cake', 'SALE', 'product'),
(47, 'sid2', 15, 0, '2021-10-10 15:29:00', 'LED Star - Warm', 'led-star-warm--sid2', '61uGJNIZouL._SL1001_.jpg', 'Hemito-12-Star-8-Modes-SDL007800385-1-8c362.jpeg', 'led-star-lights-500x500.jpg', 150, '', NULL, 'LED Star\r\n', 'Warm colour\r\n\r\n', '\r\n\r\n', 'star', 'NEW', 'product'),
(48, 'sid2', 16, 0, '2021-10-10 15:37:15', 'Xmas Tree- Brown', 'tree-brown--sid2', 'f8f59f75-5b37-4b38-a2d8-0e7083571307_1.5dbad6f7f1bf2f2da28035695dfdd689.jpeg', 'brown-christmas-tree-3.jpg', 'tuxedo-black-tree-4-1544560144.jpg', 700, '', NULL, 'Xmas Tree- Brown\r\n\r\n', 'Brown 6ft tall\r\n\r\n', '\r\n\r\n', 'tree-brown', '1 LEFT', 'product'),
(49, 'sid2', 17, 0, '2021-10-10 15:45:26', 'Dream Catcher', 'dream-catcher--sid2', '71brAT3N3sL._AC_SL1500_.jpg', 'wa-dc-darkblue-l-printoctopus-original-imafdjer57uzsynm.jpeg', 's-l400.jpg', 40, '', NULL, 'Dream Catcher\r\n\r\n', 'Beautiful\r\n\r\n', '\r\n\r\n', 'dream', 'CUSTOM MADE', 'product'),
(50, 'sid3', 12, 0, '2021-10-10 15:50:33', 'Red Velvet', 'red-velvet-1-sid3', 'red-valvet.jpg', 'doctored_red_velvet_featured.jpg', 'zfa2543ehwd41.jpg', 800, '1', NULL, 'Red Velvet\r\n\r\n', 'Delicious\r\n\r\n', '\r\n\r\n', 'red', 'NEW', 'product'),
(51, 'sid3', 14, 0, '2021-10-10 15:53:10', 'Vanilla Cup Cake', 'vanilla-cup-cake--sid3', 'Best-Vanilla-Cupcakes-01.jpg', 'Vanilla-Cupcakes-Recipe-1.jpg', 'Classic-Vanilla-Cupcakes-CMS.jpg', 25, '', NULL, 'Vanilla Cup Cake\r\n\r\n', 'Tasty\r\n\r\n', '\r\n\r\n', 'vanilla-cup', 'Sugar Free', 'product'),
(52, 'sid3', 12, 0, '2021-10-10 16:02:58', 'Vanilla Cake', 'vanilla-cake-1-sid3', 'exotic-vanilla-cake.jpg', 'Vanilla-Cake-Recipe-new-copy.jpg', 'vegan-vanilla-cake-4square.jpg', 400, '1', NULL, 'Vanilla Cake\r\n\r\n', 'Sugar free\r\n\r\n', '\r\n\r\n', 'vanilla', 'NEW', 'product'),
(53, 'sid3', 17, 0, '2021-10-10 16:06:05', 'Decoration Star', 'decoration-star--sid3', 'e50396317006c5c144c8587922e6a90d.jpg', 'small_white_iridescent_glitter_star_ornaments.jpg', '515BElvd3eL._SY450_.jpg', 10, '', NULL, 'Decoration Star\r\n\r\n', 'Small\r\n\r\n', '\r\n\r\n', 'star-small', 'Pack of 10', 'product');

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
('Dil', 'dil@gmail.com', '123456', '123456', 'tsr', '1234567890', 'Kerala', 1),
('Frank', 'frank@abc.com', '123', '1234567', 'tsr', '1234567890', 'Kerala', 1),
('Seller 1', 's1@123.com', '123', 'sid1', 'Thrissur', '1234567890', 'Kerala', 1),
('Seller 2', 's2@123.com', '123', 'sid2', 'Thrissur', '1234567890', 'Kerala', 1),
('Seller 3', 's3@123.com', '123', 'sid3', 'Thrissur', '1234567890', 'Kerala', 1),
('Seller 4', 's4@123.com', '123', 'sid4', 'Thrissur', '124567890', 'Thrissur', 0);

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
-- Indexes for table `customer_review`
--
ALTER TABLE `customer_review`
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
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

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
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
