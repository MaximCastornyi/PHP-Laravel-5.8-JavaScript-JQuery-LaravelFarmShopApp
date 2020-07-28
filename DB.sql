-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for laravelfarmapp
CREATE DATABASE IF NOT EXISTS `laravelfarmapp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laravelfarmapp`;

-- Dumping structure for table laravelfarmapp.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelfarmapp.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravelfarmapp.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelfarmapp.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravelfarmapp.tbl_category
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table laravelfarmapp.tbl_category: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` (`id`, `category_name`) VALUES
	(9, 'fruits'),
	(10, 'juice'),
	(11, 'vegetable'),
	(12, 'dried');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;

-- Dumping structure for table laravelfarmapp.tbl_orders
CREATE TABLE IF NOT EXISTS `tbl_orders` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `cart` longtext NOT NULL,
  `payment_id` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table laravelfarmapp.tbl_orders: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_orders` DISABLE KEYS */;
INSERT INTO `tbl_orders` (`id`, `name`, `address`, `cart`, `payment_id`, `date`) VALUES
	(4, 'N\'kele N\'kele Héritier', 'av. Malula num 12  Lemba/Righini Kinshasa', 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:7;a:6:{s:3:"qty";s:1:"2";s:10:"product_id";s:1:"7";s:12:"product_name";s:5:"apple";s:13:"product_price";i:80;s:13:"product_image";s:25:"product-10_1582411514.jpg";s:4:"item";O:8:"stdClass":6:{s:2:"id";i:7;s:12:"product_name";s:5:"apple";s:13:"product_price";i:80;s:16:"product_category";s:6:"fruits";s:13:"product_image";s:25:"product-10_1582411514.jpg";s:6:"status";i:1;}}i:6;a:6:{s:3:"qty";i:1;s:10:"product_id";s:1:"6";s:12:"product_name";s:5:"onion";s:13:"product_price";i:80;s:13:"product_image";s:24:"product-9_1582411487.jpg";s:4:"item";O:8:"stdClass":6:{s:2:"id";i:6;s:12:"product_name";s:5:"onion";s:13:"product_price";i:80;s:16:"product_category";s:9:"vegetable";s:13:"product_image";s:24:"product-9_1582411487.jpg";s:6:"status";i:1;}}}s:8:"totalQty";i:3;s:10:"totalPrice";i:240;}', 'ch_1GN3G4Ar22Jh2IPIeJHXGjUC', '2020-03-15 20:40:54'),
	(5, 'N\'kele N\'kele', 'Av. Malula Num. 12 Kinshasa  Lemba/Righini', 'O:8:"App\\Cart":3:{s:5:"items";a:4:{i:9;a:6:{s:3:"qty";i:1;s:10:"product_id";s:1:"9";s:12:"product_name";s:7:"Tomatoe";s:13:"product_price";i:80;s:13:"product_image";s:24:"product-5_1582411615.jpg";s:4:"item";O:8:"stdClass":6:{s:2:"id";i:9;s:12:"product_name";s:7:"Tomatoe";s:13:"product_price";i:80;s:16:"product_category";s:9:"vegetable";s:13:"product_image";s:24:"product-5_1582411615.jpg";s:6:"status";i:1;}}i:5;a:6:{s:3:"qty";i:2;s:10:"product_id";s:1:"5";s:12:"product_name";s:11:"green beans";s:13:"product_price";i:120;s:13:"product_image";s:24:"product-3_1582411459.jpg";s:4:"item";O:8:"stdClass":6:{s:2:"id";i:5;s:12:"product_name";s:11:"green beans";s:13:"product_price";i:120;s:16:"product_category";s:9:"vegetable";s:13:"product_image";s:24:"product-3_1582411459.jpg";s:6:"status";i:1;}}i:3;a:6:{s:3:"qty";i:1;s:10:"product_id";s:1:"3";s:12:"product_name";s:8:"brocolli";s:13:"product_price";i:120;s:13:"product_image";s:24:"product-6_1582411363.jpg";s:4:"item";O:8:"stdClass":6:{s:2:"id";i:3;s:12:"product_name";s:8:"brocolli";s:13:"product_price";i:120;s:16:"product_category";s:9:"vegetable";s:13:"product_image";s:24:"product-6_1582411363.jpg";s:6:"status";i:1;}}i:8;a:6:{s:3:"qty";i:1;s:10:"product_id";s:1:"8";s:12:"product_name";s:13:"purle cabbage";s:13:"product_price";i:120;s:13:"product_image";s:24:"product-4_1582411583.jpg";s:4:"item";O:8:"stdClass":6:{s:2:"id";i:8;s:12:"product_name";s:13:"purle cabbage";s:13:"product_price";i:120;s:16:"product_category";s:9:"vegetable";s:13:"product_image";s:24:"product-4_1582411583.jpg";s:6:"status";i:1;}}}s:8:"totalQty";i:5;s:10:"totalPrice";i:560;}', 'ch_1GO0POAr22Jh2IPIIVU11HuK', '2020-10-10 11:50:30');
/*!40000 ALTER TABLE `tbl_orders` ENABLE KEYS */;

-- Dumping structure for table laravelfarmapp.tbl_products
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table laravelfarmapp.tbl_products: ~8 rows (approximately)
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` (`id`, `product_name`, `product_price`, `product_category`, `product_image`, `status`) VALUES
	(1, 'strawberry', 120, 'fruits', 'product-2.jpg', 0),
	(3, 'brocolli', 120, 'vegetable', 'product-6_1582411363.jpg', 1),
	(4, 'bel pepper', 80, 'vegetable', 'product-1_1582411432.jpg', 1),
	(5, 'green beans', 120, 'vegetable', 'product-3_1582411459.jpg', 1),
	(6, 'onion', 80, 'vegetable', 'product-9_1582411487.jpg', 1),
	(7, 'apple', 80, 'fruits', 'product-10_1582411514.jpg', 1),
	(8, 'purle cabbage', 120, 'vegetable', 'product-4_1582411583.jpg', 1),
	(9, 'Tomatoe', 80, 'vegetable', 'product-5.jpg', 1);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;

-- Dumping structure for table laravelfarmapp.tbl_sliders
CREATE TABLE IF NOT EXISTS `tbl_sliders` (
  `id` int(11) NOT NULL,
  `description1` varchar(200) NOT NULL,
  `description2` varchar(200) NOT NULL,
  `slider_image` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table laravelfarmapp.tbl_sliders: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_sliders` DISABLE KEYS */;
INSERT INTO `tbl_sliders` (`id`, `description1`, `description2`, `slider_image`, `status`) VALUES
	(6, 'We serve Fresh Vegestables  Fruits', 'We deliver organic vegetables  fruits', 'bg_2.jpg', 1),
	(7, 'We serve Fresh Vegestables  Fruits', 'We deliver organic vegetables  fruits', 'bg_1.jpg', 1),
	(8, 'We serve Fresh Vegestables  Fruits', 'We deliver organic vegetables  fruits', 'bg_3.jpg', 1);
/*!40000 ALTER TABLE `tbl_sliders` ENABLE KEYS */;

-- Dumping structure for table laravelfarmapp.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelfarmapp.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
