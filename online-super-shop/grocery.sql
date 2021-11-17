-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 04:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(8, 'Vishal Raghav', 'vishal@gmail.com', '$2y$10$F0Qo8.OgUamVEbARXHkDe.liYDaJBZcYOTYMal0MLYNsuvsdKIaaO', '0'),
(9, 'megha raghav', 'megha.raghav14@gmail.com', '$2y$10$U7tOMCgG95O4MYcu0bf8ge9XjPGDjP.ZdmVf8mWVUtqA5n5qfHbKK', '0'),
(10, 'megha raghav', 'megh@gmail.com', '$2y$10$jN/O3oQ54EuXOSl2Dn1QM.RtgQWXRwf0xESFy.SfDQEuyO28DuHH6', '0');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'PREETI', 'PRADHAN', 0, 'preetipradhan097@gmail.com', '12345678910', 1),
(10, 'Shivangi', 'Pandey', 1, 'shivangi050mca20@igdtuw.ac.in', '123456789', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'NESTLE'),
(2, 'BRITANIA'),
(3, 'CHINGS'),
(4, 'MDH'),
(5, 'PARLE');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'FOOD GRAINS'),
(3, 'SNACKS'),
(4, 'BEVARAGES'),
(5, 'OIL AND MASALA'),
(6, 'DRINKS'),
(12, 'FRUITS');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'PREETI', 'preeti030mca20@igdtuw.ac.in', '123456789', ' I would love if you reached out to me. Even if it is just to say \"Hey!\". Don\'t hesitate! Drop me a message and I\'ll get back to you AS SOON AS POSSIBLE!', '2020-12-16 21:53:39'),
(2, 'HIMANSHI', 'himanshi010mca20@igdtuw.ac.in', '987654321', 'Drop me a message and I\'ll get back to you AS SOON AS POSSIBLE!', '2020-12-02 21:55:35'),
(3, 'ADITI MOHANTY', 'aditi078mca20@igdtuw.ac.in', '123456789', 'DM ME YOUR QUERY !!', '2020-11-11 21:57:15'),
(4, 'SHIVANGI PANDEY', 'shivangi050mca20@igdtuw.ac.in', '987654321', 'I WOULD LOVE TO HELP YOU OUT !!', '2020-12-09 21:58:47'),
(5, 'MEGHA RAGHAV', 'megha023mca20@igdtuw.ac.in', '123456789', 'ANY QUERY DM ME !!', '2020-11-11 22:01:40'),
(6, 'PRIYA GUPTA ', 'priya034mca20@igdtuw.ac.in', '987654321', 'Don\'t hesitate! Drop me a message !!', '2020-12-02 22:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(7, 'FOODGRAINS , OILS AND GHEE', 60, 'Percentage', 567, 0),
(8, 'FLOUR and GRAINS', 25, 'Percentage', 125, 1),
(9, 'PACKAGED FOODS', 30, 'Rupee', 500, 1),
(10, 'FIRST 50', 20, 'Rupee', 1000, 0),
(11, 'SPECIAL OFFER', 50, 'Percentage', 2000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `brand` varchar(20) DEFAULT NULL,
  `product name` varchar(86) DEFAULT NULL,
  `quantity` varchar(72) DEFAULT NULL,
  `price` varchar(9) DEFAULT NULL,
  `expected delivery` varchar(44) DEFAULT NULL,
  `image` varchar(148) DEFAULT NULL,
  `category` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`brand`, `product name`, `quantity`, `price`, `expected delivery`, `image`, `category`) VALUES
('  Fresho', 'Palak', '100 g - Rs 16.00', 'Rs 16', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000389_11-fresho-palak.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Lemon', '250 g', 'Rs 12.38', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000127_17-fresho-lemon.jpg', 'Fruits & Vegetables'),
('Fresho', 'Potato Onion Tomato 1 kg Each', 'Combo 3 Items', 'Rs 115', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1200045_1-fresho-potato-onion-tomato-1-kg-each.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Tomato - Hybrid', '500 g - Rs 11.00', 'Rs 11', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000201_15-fresho-tomato-hybrid.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Coriander Leaves', '100 g - Rs16.00', 'Rs 16', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000097_19-fresho-coriander-leaves.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Cauliflower', '1 pc (approx. 400 to 600 g) - Rs14.85', 'Rs 14.85', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000074_19-fresho-cauliflower.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Mushrooms - Button', '1 pack (Approx .180g - 200 g)', 'Rs 49', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000273_16-fresho-mushrooms-button.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Capsicum - Green', '500 g - Rs17.82', 'Rs 17.82', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000069_20-fresho-capsicum-green.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Tomato - Local, Organically Grown', '500 g', 'Rs 13', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40022638_3-fresho-tomato-local-organically-grown.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Coconut - Medium', '1 pc', 'Rs 34', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000093_16-fresho-coconut-medium.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Tender Coconut - Medium', '1 pc', 'Rs 39', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40057966_2-fresho-tender-coconut-medium.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Pomegranate', '6 pcs (approx. 1.08 - 1.2 kg)', 'Rs 299', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000268_27-fresho-pomegranate.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Pomegranate', '4 pcs (approx. 800 - 880 g) - Rs229.00', 'Rs 229', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000269_28-fresho-pomegranate.jpg', 'Fruits & Vegetables'),
('  Fresho', 'Tomato - Local', '500 g - Rs 9.00', 'Rs 9', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000204_16-fresho-tomato-local.jpg', 'Fruits & Vegetables'),
('  bb Popular', 'Peanuts/Mungaphali - Raw', '200 g Pouch - Rs 29.00', 'Rs 29', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/30010384_10-bb-popular-peanutsmungaphali-raw.jpg', 'Foodgrains, Oil & Masala'),
('  Nandini', 'Pure Ghee', '4.1', 'Rs 452', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/213273_7-nandini-pure-ghee.jpg', 'Foodgrains, Oil & Masala'),
('  bb Royal', 'Maida', '4', 'Rs 72', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40044729_4-bb-royal-maida.jpg', 'Foodgrains, Oil & Masala'),
('  bb Royal', 'Sooji Ordinary/Bombay Rava', '1 kg Pouch - Rs 42.00', 'Rs 42', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000423_11-bb-royal-sooji-ordinarybombay-rava.jpg', 'Foodgrains, Oil & Masala'),
('  bb Popular', 'Almond/Badam - Californian, Giri', '3.9', 'Rs 314', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000549_12-bb-popular-almondbadam-californian-giri.jpg', 'Foodgrains, Oil & Masala'),
('  bb Popular', 'Moong Dal', '4', 'Rs 119', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/30005420_10-bb-popular-moong-dal.jpg', 'Foodgrains, Oil & Masala'),
('  bb Popular', 'Toor/Arhar Dal', '3.9', 'Rs 121', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000428_16-bb-popular-toorarhar-dal.jpg', 'Foodgrains, Oil & Masala'),
('  bb Popular', 'Cashew/Kaju - Whole', '3.9', 'Rs 429', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000551_9-bb-popular-cashewkaju-whole.jpg', 'Foodgrains, Oil & Masala'),
('  Tata Salt', 'Iodized', '4.2', 'Rs 20.79', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/241600_5-tata-salt-iodized.jpg', 'Foodgrains, Oil & Masala'),
('  bb Royal', 'Toor Dal/Arhar Dal - Desi', '4', 'Rs 650', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40042841_6-bb-royal-toor-dalarhar-dal-desi.jpg', 'Foodgrains, Oil & Masala'),
('  bb Royal', 'Organic - Almond/Badam', '500 g - Rs 499.00', 'Rs 499', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40101871_9-bb-royal-organic-almondbadam.jpg', 'Foodgrains, Oil & Masala'),
('bb Royal', 'Poha/Avalakki/Aval/Chivda - Thick', '1 kg Pouch - Rs 47.00', 'Rs 47', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000431_17-bb-royal-pohaavalakkiavalchivda-thick.jpg', 'Foodgrains, Oil & Masala'),
('  bb Popular', 'Rice - Raw, Sona Masoori', '25 kg (6 - 11 Months Old) - Rs 1049.00', 'Rs 1049', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/20001215_10-bb-popular-rice-raw-sona-masoori.jpg', 'Foodgrains, Oil & Masala'),
('bb Royal', 'Superior Chakki Wheat Atta - Fortified', '4', 'Rs 82', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1203711_1-bb-royal-superior-chakki-wheat-atta-fortified.jpg', 'Foodgrains, Oil & Masala'),
('  Nandini GoodLife', 'Toned Milk', '4.1', 'Rs 48.51', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/100285703_15-nandini-goodlife-toned-milk.jpg', 'Bakery, Cakes & Dairy'),
('  Amul', 'Malai Paneer', '3.9', 'Rs 74.25', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/279588_6-amul-malai-paneer.jpg', 'Bakery, Cakes & Dairy'),
('Amul Taaza', 'Toned Milk', '4.1', 'Rs 760.32', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1200166_2-amul-taaza-toned-milk.jpg', 'Bakery, Cakes & Dairy'),
('  Fresho', 'Whole Wheat Bread - Safe, Preservative Free', '400 g - Rs38.61', 'Rs 38.61', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40025355_6-fresho-whole-wheat-bread-safe-preservative-free.jpg', 'Bakery, Cakes & Dairy'),
('Nandini GoodLife', 'Toned Milk', '3.8', 'Rs 499', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/244999_1-nandini-goodlife-toned-milk.jpg', 'Bakery, Cakes & Dairy'),
('  Amul', 'Masti Buttermilk - Spice', '4.2', 'Rs 11.88', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/161899_8-amul-masti-buttermilk-spice.jpg', 'Bakery, Cakes & Dairy'),
('  Amul', 'Cheese Slices', '4.1', 'Rs 117', 'Standard Delivery: Tomorrow 4:30PM-7:30PM', 'https://www.bigbasket.com/media/uploads/p/s/104808_7-amul-cheese-slices.jpg', 'Bakery, Cakes & Dairy'),
('  Fresho', 'Bread - Whole Wheat, Chemical Free 400G + Eggs - Regular 6pcs', 'Combo 2 Items', 'Rs 83.61', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1204354_1-fresho-bread-whole-wheat-chemical-free-400g-eggs-regular-6pcs.jpg', 'Bakery, Cakes & Dairy'),
('  Fresho', 'Sandwich Bread - Safe, Preservative Free', '200 g - Rs 28.71', 'Rs 28.71', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40087525_2-fresho-sandwich-bread-safe-preservative-free.jpg', 'Bakery, Cakes & Dairy'),
('  Fresho', 'Sandwich Bread - White, Chemical Free 400G + Eggs - Regular 6pcs', 'Combo 2 Items', 'Rs 83.61', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1204352_1-fresho-sandwich-bread-white-chemical-free-400g-eggs-regular-6pcs.jpg', 'Bakery, Cakes & Dairy'),
('  Fresho', 'Bread - Brown, Chemical Free 400G + Eggs - Regular 6pcs', 'Combo 2 Items', 'Rs 83.61', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1204353_1-fresho-bread-brown-chemical-free-400g-eggs-regular-6pcs.jpg', 'Bakery, Cakes & Dairy'),
('Milky Mist', 'Natural Set Curd', '4', 'Rs 196.02', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1209134_2-milky-mist-natural-set-curd.jpg', 'Bakery, Cakes & Dairy'),
('Milky Mist', 'Cheese - Mozzarella Pizza', '3.9', 'Rs 105', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40003157_1-milky-mist-cheese-mozzarella-pizza.jpg', 'Bakery, Cakes & Dairy'),
('Nandini GoodLife', 'Skimmed Milk', '3.7', 'Rs 23.76', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/242673_1-nandini-goodlife-skimmed-milk.jpg', 'Bakery, Cakes & Dairy'),
('Coca-Cola', 'Soft Drink', '4.2', 'Rs 210', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1208181_1-coca-cola-soft-drink.jpg', 'Beverages'),
('Cothas Coffee', '4.2', '1952 Ratings', 'Rs 217.50', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/186070_8-cothas-coffee-.jpg', 'Beverages'),
('Frooti', 'Drink - Fresh \'N\' Juicy Mango', '150 ml Tetra - Rs 9.40', 'Rs 9.40', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/274035_6-frooti-drink-fresh-n-juicy-mango.jpg', 'Beverages'),
('  Thums Up', 'Soft Drink', '4.1', 'Rs 1596', 'Standard Delivery: Tomorrow 4:30PM-7:30PM', 'https://www.bigbasket.com/media/uploads/p/s/1212285_1-thums-up-soft-drink.jpg', 'Beverages'),
('  Amul', 'Masti Buttermilk - Spice', '4.2', 'Rs 11.88', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/161899_8-amul-masti-buttermilk-spice.jpg', 'Beverages'),
('Schweppes', 'Soda - Original Ginger Ale', '4.2', 'Rs 297', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1208190_1-schweppes-soda-original-ginger-ale.jpg', 'Beverages'),
('Bournvita', 'Pro-Health Drink - Chocolate', '4.2', 'Rs 514', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1204514_2-bournvita-pro-health-drink-chocolate.jpg', 'Beverages'),
('  Tata Tea Gold', 'Leaf Tea 1 kg + Leaf Tea 250 g', 'Combo 2 Items', 'Rs 676', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1209750_2-tata-tea-gold-leaf-tea-1-kg-leaf-tea-250-g.jpg', 'Beverages'),
('Yakult', 'Probiotic Health Drink', '4.1', 'Rs 277.20', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1209279_3-yakult-probiotic-health-drink.jpg', 'Beverages'),
('Tropicana', 'Fruit Juice - Mixed Fruit Delight', '2x1 L Multipack - Rs 129.89', 'Rs 129.89', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1206500_2-tropicana-fruit-juice-mixed-fruit-delight.jpg', 'Beverages'),
('  Sprite', 'Soft Drink', '4.1', 'Rs 399', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1212277_1-sprite-soft-drink.jpg', 'Beverages'),
('  Bru', 'Instant Coffee', '4.2', 'Rs 306', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/266579_20-bru-instant-coffee.jpg', 'Beverages'),
('Paper Boat', 'Coconut Water - Refreshing Flavour, Vital Electrolytes', '6x200 ml Multipack - Rs 246.51', 'Rs 246.51', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1206628_5-paper-boat-coconut-water-refreshing-flavour-vital-electrolytes.jpg', 'Beverages'),
('  Horlicks', 'Health & Nutrition Drink - Classic Malt', '4.3', 'Rs 408', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/119385_11-horlicks-health-nutrition-drink-classic-malt.jpg', 'Beverages'),
('  Parle', 'Gluco Biscuits - Parle-G', '4.2', 'Rs 62.37', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/102102_4-parle-gluco-biscuits-parle-g.jpg', 'Snacks & Branded Foods'),
('Britannia', 'Bourbon Cream Biscuit - Chocolate Flavor', '4.1', 'Rs 44.56', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1201309_2-britannia-bourbon-cream-biscuit-chocolate-flavor.jpg', 'Snacks & Branded Foods'),
('  Quaker', 'Oats', '4.2', 'Rs 208', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/284405_11-quaker-oats.jpg', 'Snacks & Branded Foods'),
('  MAGGI', 'Noodles - Masala 280 gm + Ketchup Tomato 1 kg', 'Combo 2 Items', 'Rs 192.54', 'MRP:', 'https://www.bigbasket.com/media/uploads/p/s/1200218_1-maggi-noodles-masala-280-gm-ketchup-tomato-1-kg.jpg', 'Snacks & Branded Foods'),
('  Kissan', 'Fresh Tomato Ketchup', '4.2', 'Rs 105', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40029538_31-kissan-fresh-tomato-ketchup.jpg', 'Snacks & Branded Foods'),
('  Britannia', 'Good Day Cashew Cookies', '4.1', 'Rs 87', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40083744_4-britannia-good-day-cashew-cookies.jpg', 'Snacks & Branded Foods'),
('  Lays', 'Potato Chips - Calm Cream & Onion Flavour', '4.1', 'Rs 9.90', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/294297_12-lays-potato-chips-calm-cream-onion-flavour.jpg', 'Snacks & Branded Foods'),
('  Lays', 'Potato Chips - American Style Cream & Onion Flavour', '4.2', 'Rs 18.81', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/102745_9-lays-potato-chips-american-style-cream-onion-flavour.jpg', 'Snacks & Branded Foods'),
('Britannia', 'Biscuits - Marie Gold', '4.1', 'Rs 51', 'Standard Delivery: Tomorrow 4:30PM-7:30PM', 'https://www.bigbasket.com/media/uploads/p/s/1201303_2-britannia-biscuits-marie-gold.jpg', 'Snacks & Branded Foods'),
('  MAGGI', 'Nutri-licious Masala Veg Atta Noodles - Pouch', '4.1', 'Rs 80', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/266096_22-maggi-nutri-licious-masala-veg-atta-noodles-pouch.jpg', 'Snacks & Branded Foods'),
('  Cadbury Dairy Milk', 'Chocolate', '4.2', 'Rs 100.86', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1200590_3-cadbury-dairy-milk-chocolate.jpg', 'Snacks & Branded Foods'),
('  Desi', 'Hakka Noodles - Veg', '4', 'Rs 64.35', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40141483_1-desi-hakka-noodles-veg.jpg', 'Snacks & Branded Foods'),
('  Parle', 'Hide & Seek Chocolate', '4.2', 'Rs 28.22', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/302121_14-parle-hide-seek-chocolate.jpg', 'Snacks & Branded Foods'),
('  Kelloggs', 'Chocos', '4.2', 'Rs 132', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/122650_7-kelloggs-chocos.jpg', 'Snacks & Branded Foods'),
('  Farm Made', 'Eggs - Free Range', '12 pcs', 'Rs 208', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40117922_2-farm-made-eggs-free-range.jpg', 'Eggs, Meat & Fish'),
('  Fresho', 'Chicken Curry Cut - With Skin, Antibiotic Residue-Free, Growth Hormone-Free, 12-14 pcs', '500 g', 'Rs 108', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000926_9-fresho-chicken-curry-cut-with-skin-antibiotic-residue-free-growth-hormone-free-12-14-pcs.jpg', 'Eggs, Meat & Fish'),
('  Fresho', 'Rohu Fish - Large, Curry Cut/Bengali Cut, Preservative Free, 12-15 pcs', '1 kg (Gross Fish Weight 1.4-1.5 kg, Net Weight After Cleaning 1 kg) - Rs', 'Rs 449', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000756_34-fresho-rohu-fish-large-curry-cutbengali-cut-preservative-free-12-15-pcs.jpg', 'Eggs, Meat & Fish'),
('  Farm Made', 'Eggs - Free Range', '6 pcs', 'Rs 119', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40092369_6-farm-made-eggs-free-range.jpg', 'Eggs, Meat & Fish'),
('  Fresho', 'Mixed Chicken Pieces - Boneless, Antibiotic Residue-Free, Growth Hormone-Free, 4-6 pcs', '500 g', 'Rs 298', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000924_11-fresho-mixed-chicken-pieces-boneless-antibiotic-residue-free-growth-hormone-free-4-6-pcs.jpg', 'Eggs, Meat & Fish'),
('  Fresho', 'Catla Fish - Large, Curry Cut/Bengali Cut, Preservative Free, 12-15 pcs', '1 kg (Gross Fish Weight 1.4-1.5 kg, Net Weight After Cleaning 1 kg) - Rs', 'Rs 599', 'Standard Delivery: Tomorrow 4:30PM-7:30PM', 'https://www.bigbasket.com/media/uploads/p/s/10000755_27-fresho-catla-fish-large-curry-cutbengali-cut-preservative-free-12-15-pcs.jpg', 'Eggs, Meat & Fish'),
('  Fresho', 'Farm Eggs - Brown, Medium, Antibiotic Residue-Free, Growth Hormone-Free', '6 pcs', 'Rs 75', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40038379_6-fresho-farm-eggs-brown-medium-antibiotic-residue-free-growth-hormone-free.jpg', 'Eggs, Meat & Fish'),
('  Fresho', 'Basa Fish Fillet - Preservative Free', '1 kg (Gross Fish Weight 2.1-2.2 kg, Net Weight After Cleaning 1 kg) - Rs', 'Rs 699', 'Standard Delivery: Tomorrow 4:30PM-7:30PM', 'https://www.bigbasket.com/media/uploads/p/s/40048878_2-fresho-basa-fish-fillet-preservative-free.jpg', 'Eggs, Meat & Fish'),
('  Fresho', 'Chicken Mince - Antibiotic Residue Free, Growth Hormone-Free', '500 g - Rs199.00', 'Rs 199', 'Standard Delivery: Tomorrow 4:30PM-7:30PM', 'https://www.bigbasket.com/media/uploads/p/s/10000906_9-fresho-chicken-mince-antibiotic-residue-free-growth-hormone-free.jpg', 'Eggs, Meat & Fish'),
('  Fresho', 'White Prawns - Medium, Unpeeled, 30-40 pcs', '500 g (Gross Weight 600-650 g, Net Weight After Cleaning 500 g)', 'Rs 499', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000971_13-fresho-white-prawns-medium-unpeeled-30-40-pcs.jpg', 'Eggs, Meat & Fish'),
('  Fresho', 'Chicken Liver - Antibiotic Residue-Free, Growth Hormone-Free', '500 g', 'Rs 84', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/10000916_11-fresho-chicken-liver-antibiotic-residue-free-growth-hormone-free.jpg', 'Eggs, Meat & Fish'),
('  Ayur Plus', 'Eggs', '6 pcs', 'Rs 74.25', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40106728_5-ayur-plus-eggs.jpg', 'Eggs, Meat & Fish'),
('  UPF', 'Healthy Brown Eggs', '6 pcs', 'Rs 74', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40161158_2-upf-healthy-brown-eggs.jpg', 'Eggs, Meat & Fish'),
('  UPF', 'Healthy Daily Eggs', '6 pcs', 'Rs 64.35', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40161157_2-upf-healthy-daily-eggs.jpg', 'Eggs, Meat & Fish'),
('GoodDiet', 'Ragi Sticks - Achari Masala', '5x30 g (Multipack) - Rs 70.00', 'Rs 70', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1208395_5-gooddiet-ragi-sticks-achari-masala.jpg', 'Gourmet & World Food'),
('  Disano', 'Olive Oil - Extra Virgin', '4.4', 'Rs 664.05', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40016670_7-disano-olive-oil-extra-virgin.jpg', 'Gourmet & World Food'),
('  Raw Pressery', '100% Natural Cold Pressed Juice - Valencia Orange', '4.2', 'Rs 912', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1212124_1-raw-pressery-100-natural-cold-pressed-juice-valencia-orange.jpg', 'Gourmet & World Food'),
('  Epigamia', 'Greek Yogurt - Natural', '4.1', 'Rs 178.20', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1200551_3-epigamia-greek-yogurt-natural.jpg', 'Gourmet & World Food'),
('  BORGES', 'Durum Wheat Pasta - Fusilli', '4.3', 'Rs 125', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/303129_1-borges-durum-wheat-pasta-fusilli.jpg', 'Gourmet & World Food'),
('  Epigamia', 'Greek Yogurt - Alphonso Mango', '3.9', 'Rs 178.20', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1200550_3-epigamia-greek-yogurt-alphonso-mango.jpg', 'Gourmet & World Food'),
('GoodDiet', 'Multigrain Puffs - Butter Makhana', '5x30 g (Multipack) - Rs 70.00', 'Rs 70', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1208398_5-gooddiet-multigrain-puffs-butter-makhana.jpg', 'Gourmet & World Food'),
('Kara', 'Coconut Milk - UHT Natural', '4.4', 'Rs 266', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1200391_2-kara-coconut-milk-uht-natural.jpg', 'Gourmet & World Food'),
('  Cornitos', 'Nacho Crisps - Peri Peri', '4.1', 'Rs 33', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40071518_4-cornitos-nacho-crisps-peri-peri.jpg', 'Gourmet & World Food'),
('GoodDiet', 'Multigrain Puffs - Tangy Tomato', '5x30 g (Multipack) - Rs 70.00', 'Rs 70', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1208402_4-gooddiet-multigrain-puffs-tangy-tomato.jpg', 'Gourmet & World Food'),
('  BORGES', 'Durum Wheat Pasta - Spaghetti', '4.4', 'Rs 105', 'Standard Delivery: Tomorrow 4:30PM-7:30PM', 'https://www.bigbasket.com/media/uploads/p/s/303124_4-borges-durum-wheat-pasta-spaghetti.jpg', 'Gourmet & World Food'),
('  Epigamia', 'Greek Yogurt - Blueberry', '4', 'Rs 356.40', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1212334_1-epigamia-greek-yogurt-blueberry.jpg', 'Gourmet & World Food'),
('Nescafe', 'Gold Blend Instant Coffee Powder - Rich & Smooth', '4.5', 'Rs 855', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/40154924_2-nescafe-gold-blend-instant-coffee-powder-rich-smooth.jpg', 'Gourmet & World Food'),
('GoodDiet', 'Multigrain Bread Chips - Chilli Orange', '5x30 g (Multipack) - Rs 70.00', 'Rs 70', 'Standard Delivery: Tomorrow 8:00AM - 10:00AM', 'https://www.bigbasket.com/media/uploads/p/s/1208403_4-gooddiet-multigrain-bread-chips-chilli-orange.jpg', 'Gourmet & World Food');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `quality_score` tinyint(4) DEFAULT NULL,
  `feedback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `quality_score`, `feedback`) VALUES
(2, 1, 'it was good.');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(8, 12, 1, 'dhaniya', 321, -1, 'dcdsc', '1607870994_eaters.jpg', 'ss');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text CHARACTER SET latin1 NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Palak', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '16.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000389_11-fresho-palak.jpg', '0000-00-00 00:00:00'),
(2, 'Lemon', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '12.38', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000127_17-fresho-lemon.jpg', '0000-00-00 00:00:00'),
(3, 'Potato Onion Tomato 1 kg Each', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '115.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1200045_1-fresho-potato-onion-tomato-1-kg-each.jpg', '0000-00-00 00:00:00'),
(4, 'Tomato - Hybrid', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '11.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000201_15-fresho-tomato-hybrid.jpg', '0000-00-00 00:00:00'),
(5, 'Coriander Leaves', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '16.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000097_19-fresho-coriander-leaves.jpg', '0000-00-00 00:00:00'),
(6, 'Cauliflower', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '14.85', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000074_19-fresho-cauliflower.jpg', '0000-00-00 00:00:00'),
(7, 'Mushrooms - Button', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '49.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000273_16-fresho-mushrooms-button.jpg', '0000-00-00 00:00:00'),
(8, 'Capsicum - Green', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '17.82', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000069_20-fresho-capsicum-green.jpg', '0000-00-00 00:00:00'),
(9, 'Tomato - Local, Organically Grown', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '13.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40022638_3-fresho-tomato-local-organically-grown.jpg', '0000-00-00 00:00:00'),
(10, 'Coconut - Medium', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '34.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000093_16-fresho-coconut-medium.jpg', '0000-00-00 00:00:00'),
(11, 'Tender Coconut - Medium', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '39.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40057966_2-fresho-tender-coconut-medium.jpg', '0000-00-00 00:00:00'),
(12, 'Pomegranate', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '299.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000268_27-fresho-pomegranate.jpg', '0000-00-00 00:00:00'),
(13, 'Pomegranate', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '229.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000269_28-fresho-pomegranate.jpg', '0000-00-00 00:00:00'),
(14, 'Tomato - Local', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '9.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000204_16-fresho-tomato-local.jpg', '0000-00-00 00:00:00'),
(15, 'Peanuts/Mungaphali - Raw', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '29.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/30010384_10-bb-popular-peanutsmungaphali-raw.jpg', '0000-00-00 00:00:00'),
(16, 'Pure Ghee', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '452.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/213273_7-nandini-pure-ghee.jpg', '0000-00-00 00:00:00'),
(17, 'Maida', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '72.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40044729_4-bb-royal-maida.jpg', '0000-00-00 00:00:00'),
(18, 'Sooji Ordinary/Bombay Rava', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '42.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000423_11-bb-royal-sooji-ordinarybombay-rava.jpg', '0000-00-00 00:00:00'),
(19, 'Almond/Badam - Californian, Giri', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '314.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000549_12-bb-popular-almondbadam-californian-giri.jpg', '0000-00-00 00:00:00'),
(20, 'Moong Dal', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '119.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/30005420_10-bb-popular-moong-dal.jpg', '0000-00-00 00:00:00'),
(21, 'Toor/Arhar Dal', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '121.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000428_16-bb-popular-toorarhar-dal.jpg', '0000-00-00 00:00:00'),
(22, 'Cashew/Kaju - Whole', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '429.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000551_9-bb-popular-cashewkaju-whole.jpg', '0000-00-00 00:00:00'),
(23, 'Iodized', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '20.79', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/241600_5-tata-salt-iodized.jpg', '0000-00-00 00:00:00'),
(24, 'Toor Dal/Arhar Dal - Desi', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '650.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40042841_6-bb-royal-toor-dalarhar-dal-desi.jpg', '0000-00-00 00:00:00'),
(25, 'Organic - Almond/Badam', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '499.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40101871_9-bb-royal-organic-almondbadam.jpg', '0000-00-00 00:00:00'),
(26, 'Poha/Avalakki/Aval/Chivda - Thick', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '47.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000431_17-bb-royal-pohaavalakkiavalchivda-thick.jpg', '0000-00-00 00:00:00'),
(27, 'Rice - Raw, Sona Masoori', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '1049.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/20001215_10-bb-popular-rice-raw-sona-masoori.jpg', '0000-00-00 00:00:00'),
(28, 'Superior Chakki Wheat Atta - Fortified', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '82.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1203711_1-bb-royal-superior-chakki-wheat-atta-fortified.jpg', '0000-00-00 00:00:00'),
(29, 'Toned Milk', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '48.51', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/100285703_15-nandini-goodlife-toned-milk.jpg', '0000-00-00 00:00:00'),
(30, 'Malai Paneer', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '74.25', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/279588_6-amul-malai-paneer.jpg', '0000-00-00 00:00:00'),
(31, 'Toned Milk', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '760.32', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1200166_2-amul-taaza-toned-milk.jpg', '0000-00-00 00:00:00'),
(32, 'Whole Wheat Bread - Safe, Preservative Free', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '38.61', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40025355_6-fresho-whole-wheat-bread-safe-preservative-free.jpg', '0000-00-00 00:00:00'),
(33, 'Toned Milk', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '499.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/244999_1-nandini-goodlife-toned-milk.jpg', '0000-00-00 00:00:00'),
(34, 'Masti Buttermilk - Spice', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '11.88', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/161899_8-amul-masti-buttermilk-spice.jpg', '0000-00-00 00:00:00'),
(35, 'Cheese Slices', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '117.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/104808_7-amul-cheese-slices.jpg', '0000-00-00 00:00:00'),
(36, 'Bread - Whole Wheat, Chemical Free 400G + Eggs - Regular 6pcs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '83.61', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1204354_1-fresho-bread-whole-wheat-chemical-free-400g-eggs-regular-6pcs.jpg', '0000-00-00 00:00:00'),
(37, 'Sandwich Bread - Safe, Preservative Free', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '28.71', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40087525_2-fresho-sandwich-bread-safe-preservative-free.jpg', '0000-00-00 00:00:00'),
(38, 'Sandwich Bread - White, Chemical Free 400G + Eggs - Regular 6pcs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '83.61', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1204352_1-fresho-sandwich-bread-white-chemical-free-400g-eggs-regular-6pcs.jpg', '0000-00-00 00:00:00'),
(39, 'Bread - Brown, Chemical Free 400G + Eggs - Regular 6pcs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '83.61', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1204353_1-fresho-bread-brown-chemical-free-400g-eggs-regular-6pcs.jpg', '0000-00-00 00:00:00'),
(40, 'Natural Set Curd', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '196.02', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1209134_2-milky-mist-natural-set-curd.jpg', '0000-00-00 00:00:00'),
(41, 'Cheese - Mozzarella Pizza', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '105.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40003157_1-milky-mist-cheese-mozzarella-pizza.jpg', '0000-00-00 00:00:00'),
(42, 'Skimmed Milk', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '23.76', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/242673_1-nandini-goodlife-skimmed-milk.jpg', '0000-00-00 00:00:00'),
(43, 'Soft Drink', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '210.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1208181_1-coca-cola-soft-drink.jpg', '0000-00-00 00:00:00'),
(44, 'Cothas Cold Coffee', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '217.50', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/186070_8-cothas-coffee-.jpg', '0000-00-00 00:00:00'),
(45, 'Drink - Fresh \'N\' Juicy Mango', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '9.40', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/274035_6-frooti-drink-fresh-n-juicy-mango.jpg', '0000-00-00 00:00:00'),
(46, 'Soft Drink', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '1596.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1212285_1-thums-up-soft-drink.jpg', '0000-00-00 00:00:00'),
(47, 'Masti Buttermilk - Spice', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '11.88', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/161899_8-amul-masti-buttermilk-spice.jpg', '0000-00-00 00:00:00'),
(48, 'Soda - Original Ginger Ale', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '297.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1208190_1-schweppes-soda-original-ginger-ale.jpg', '0000-00-00 00:00:00'),
(49, 'Pro-Health Drink - Chocolate', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '514.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1204514_2-bournvita-pro-health-drink-chocolate.jpg', '0000-00-00 00:00:00'),
(50, 'Leaf Tea 1 kg + Leaf Tea 250 g', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '676.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1209750_2-tata-tea-gold-leaf-tea-1-kg-leaf-tea-250-g.jpg', '0000-00-00 00:00:00'),
(51, 'Probiotic Health Drink', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '277.99', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1209279_3-yakult-probiotic-health-drink.jpg', '0000-00-00 00:00:00'),
(52, 'Fruit Juice - Mixed Fruit Delight', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '129.89', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1206500_2-tropicana-fruit-juice-mixed-fruit-delight.jpg', '0000-00-00 00:00:00'),
(53, 'Soft Drink', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '399.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1212277_1-sprite-soft-drink.jpg', '0000-00-00 00:00:00'),
(54, 'Instant Coffee', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '306.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/266579_20-bru-instant-coffee.jpg', '0000-00-00 00:00:00'),
(55, 'Coconut Water - Refreshing Flavour, Vital Electrolytes', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '246.51', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1206628_5-paper-boat-coconut-water-refreshing-flavour-vital-electrolytes.jpg', '0000-00-00 00:00:00'),
(56, 'Health & Nutrition Drink - Classic Malt', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '408.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/119385_11-horlicks-health-nutrition-drink-classic-malt.jpg', '0000-00-00 00:00:00'),
(57, 'Gluco Biscuits - Parle-G', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '62.37', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/102102_4-parle-gluco-biscuits-parle-g.jpg', '0000-00-00 00:00:00'),
(58, 'Bourbon Cream Biscuit - Chocolate Flavor', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '44.56', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1201309_2-britannia-bourbon-cream-biscuit-chocolate-flavor.jpg', '0000-00-00 00:00:00'),
(59, 'Oats', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '208.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/284405_11-quaker-oats.jpg', '0000-00-00 00:00:00'),
(60, 'Noodles - Masala 280 gm + Ketchup Tomato 1 kg', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '192.54', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1200218_1-maggi-noodles-masala-280-gm-ketchup-tomato-1-kg.jpg', '0000-00-00 00:00:00'),
(61, 'Fresh Tomato Ketchup', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '105.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40029538_31-kissan-fresh-tomato-ketchup.jpg', '0000-00-00 00:00:00'),
(62, 'Good Day Cashew Cookies', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '87.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40083744_4-britannia-good-day-cashew-cookies.jpg', '0000-00-00 00:00:00'),
(63, 'Potato Chips - Calm Cream & Onion Flavour', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '9.90', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/294297_12-lays-potato-chips-calm-cream-onion-flavour.jpg', '0000-00-00 00:00:00'),
(64, 'Potato Chips - American Style Cream & Onion Flavour', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '18.81', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/102745_9-lays-potato-chips-american-style-cream-onion-flavour.jpg', '0000-00-00 00:00:00'),
(65, 'Biscuits - Marie Gold', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '51.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1201303_2-britannia-biscuits-marie-gold.jpg', '0000-00-00 00:00:00'),
(66, 'Nutri-licious Masala Veg Atta Noodles - Pouch', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '80.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/266096_22-maggi-nutri-licious-masala-veg-atta-noodles-pouch.jpg', '0000-00-00 00:00:00'),
(67, 'Chocolate', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '100.86', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1200590_3-cadbury-dairy-milk-chocolate.jpg', '0000-00-00 00:00:00'),
(68, 'Hakka Noodles - Veg', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '64.35', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40141483_1-desi-hakka-noodles-veg.jpg', '0000-00-00 00:00:00'),
(69, 'Hide & Seek Chocolate', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '28.22', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/302121_14-parle-hide-seek-chocolate.jpg', '0000-00-00 00:00:00'),
(70, 'Chocos', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '132.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/122650_7-kelloggs-chocos.jpg', '0000-00-00 00:00:00'),
(71, 'Eggs - Free Range', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '208.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40117922_2-farm-made-eggs-free-range.jpg', '0000-00-00 00:00:00'),
(72, 'Chicken Curry Cut - With Skin, Antibiotic Residue-Free, Growth Hormone-Free, 12-14 pcs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '108.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000926_9-fresho-chicken-curry-cut-with-skin-antibiotic-residue-free-growth-hormone-free-12-14-pcs.jpg', '0000-00-00 00:00:00'),
(73, 'Rohu Fish - Large, Curry Cut/Bengali Cut, Preservative Free, 12-15 pcs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '449.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000756_34-fresho-rohu-fish-large-curry-cutbengali-cut-preservative-free-12-15-pcs.jpg', '0000-00-00 00:00:00'),
(74, 'Eggs - Free Range', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '119.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40092369_6-farm-made-eggs-free-range.jpg', '0000-00-00 00:00:00'),
(75, 'Mixed Chicken Pieces - Boneless, Antibiotic Residue-Free, Growth Hormone-Free, 4-6 pcs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '298.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000924_11-fresho-mixed-chicken-pieces-boneless-antibiotic-residue-free-growth-hormone-free-4-6-pcs.jpg', '0000-00-00 00:00:00'),
(76, 'Catla Fish - Large, Curry Cut/Bengali Cut, Preservative Free, 12-15 pcs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '599.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000755_27-fresho-catla-fish-large-curry-cutbengali-cut-preservative-free-12-15-pcs.jpg', '0000-00-00 00:00:00');
INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(77, 'Farm Eggs - Brown, Medium, Antibiotic Residue-Free, Growth Hormone-Free', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '75.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40038379_6-fresho-farm-eggs-brown-medium-antibiotic-residue-free-growth-hormone-free.jpg', '0000-00-00 00:00:00'),
(78, 'Basa Fish Fillet - Preservative Free', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '699.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40048878_2-fresho-basa-fish-fillet-preservative-free.jpg', '0000-00-00 00:00:00'),
(79, 'Chicken Mince - Antibiotic Residue Free, Growth Hormone-Free', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '199.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000906_9-fresho-chicken-mince-antibiotic-residue-free-growth-hormone-free.jpg', '0000-00-00 00:00:00'),
(80, 'White Prawns - Medium, Unpeeled, 30-40 pcs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '499.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000971_13-fresho-white-prawns-medium-unpeeled-30-40-pcs.jpg', '0000-00-00 00:00:00'),
(81, 'Chicken Liver - Antibiotic Residue-Free, Growth Hormone-Free', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '84.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/10000916_11-fresho-chicken-liver-antibiotic-residue-free-growth-hormone-free.jpg', '0000-00-00 00:00:00'),
(82, 'Eggs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '74.25', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40106728_5-ayur-plus-eggs.jpg', '0000-00-00 00:00:00'),
(83, 'Healthy Brown Eggs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '74.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40161158_2-upf-healthy-brown-eggs.jpg', '0000-00-00 00:00:00'),
(84, 'Healthy Daily Eggs', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '64.35', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40161157_2-upf-healthy-daily-eggs.jpg', '0000-00-00 00:00:00'),
(85, 'Ragi Sticks - Achari Masala', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '70.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1208395_5-gooddiet-ragi-sticks-achari-masala.jpg', '0000-00-00 00:00:00'),
(86, 'Olive Oil - Extra Virgin', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '664.05', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40016670_7-disano-olive-oil-extra-virgin.jpg', '0000-00-00 00:00:00'),
(87, '100% Natural Cold Pressed Juice - Valencia Orange', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '912.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1212124_1-raw-pressery-100-natural-cold-pressed-juice-valencia-orange.jpg', '0000-00-00 00:00:00'),
(88, 'Greek Yogurt - Natural', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '178.20', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1200551_3-epigamia-greek-yogurt-natural.jpg', '0000-00-00 00:00:00'),
(89, 'Durum Wheat Pasta - Fusilli', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '125.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/303129_1-borges-durum-wheat-pasta-fusilli.jpg', '0000-00-00 00:00:00'),
(90, 'Greek Yogurt - Alphonso Mango', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '178.20', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1200550_3-epigamia-greek-yogurt-alphonso-mango.jpg', '0000-00-00 00:00:00'),
(91, 'Multigrain Puffs - Butter Makhana', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '70.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1208398_5-gooddiet-multigrain-puffs-butter-makhana.jpg', '0000-00-00 00:00:00'),
(92, 'Coconut Milk - UHT Natural', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '266.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1200391_2-kara-coconut-milk-uht-natural.jpg', '0000-00-00 00:00:00'),
(93, 'Nacho Crisps - Peri Peri', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '33.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40071518_4-cornitos-nacho-crisps-peri-peri.jpg', '0000-00-00 00:00:00'),
(94, 'Multigrain Puffs - Tangy Tomato', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '70.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1208402_4-gooddiet-multigrain-puffs-tangy-tomato.jpg', '0000-00-00 00:00:00'),
(95, 'Durum Wheat Pasta - Spaghetti', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '105.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/303124_4-borges-durum-wheat-pasta-spaghetti.jpg', '0000-00-00 00:00:00'),
(96, 'Greek Yogurt - Blueberry', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '356.40', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1212334_1-epigamia-greek-yogurt-blueberry.jpg', '0000-00-00 00:00:00'),
(97, 'Gold Blend Instant Coffee Powder - Rich & Smooth', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '855.00', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/40154924_2-nescafe-gold-blend-instant-coffee-powder-rich-smooth.jpg', '0000-00-00 00:00:00'),
(98, 'Multigrain Bread Chips - Chilli Orange', '<p>At Cure Grocery Store, we guarantee you the perfect maintenance of hygiene ensured throughout the delivery of your products. Each product is assured to be of best of the quality and true to the quantity. (Please note: the delivery of the products might take 2-3 business days. </p> <h3>Points</h3><ul><li>Product may slightly differ from the displayed picture</li><li>Made in India </li><li>Questions about the product? Contact us and we?ll get back to you!</li></ul>', '70.99', '0.00', 15, 'https://www.bigbasket.com/media/uploads/p/s/1208403_4-gooddiet-multigrain-bread-chips-chilli-orange.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `categories`, `status`) VALUES
(11, 'FRUITS & VEGETABLES', 1),
(12, 'FOODGRAINS, OIL & MASALA', 1),
(13, 'BAKERY, CAKES & DAIRY', 1),
(14, 'BEVERAGES', 1),
(15, 'SNACKS & BRANDED FOODS', 1),
(16, 'EGGS , MEAT & FISH', 0),
(17, 'GOURMET & WORLD FOOD', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `password`, `email`, `create_at`) VALUES
(1, 'megharaghav', '$2y$10$Jdgm5EZgWbz5wqD9nMl/G.rUaTO1SnnkRr.4yFhLpseMeWAgsO61e', 'megha.raghav14@gmail.com', '2020-12-12 16:16:11'),
(2, 'shivangi', '$2y$10$gJKHEcwd/itVkiNszko8aOyw0lCfHRM4MUvYGORiQZtJBijqtDV9O', 'shivangi@gmail.com', '2020-12-13 07:13:23'),
(3, 'aditi', '$2y$10$UzB/qo95DgSvP1mQTwmvgelHVjLlrNOcjjqaA.wC7UTacpOsXQZe.', 'aditi@gamail.com', '2020-12-13 08:14:50'),
(4, 'PREETI', '$2y$10$vuC4/wZA9HpD1DOD9B1ccu6ZIiBFOESK8NqarMH/VuDPzv1ABmqLu', 'preetipradhan097@gmail.com', '2020-12-17 11:05:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
