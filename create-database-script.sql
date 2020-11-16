CREATE DATABASE  IF NOT EXISTS `chopshop`;
USE `chopshop`;

SET FOREIGN_KEY_CHECKS = 0; #since we are deleting a foreign key constrained table
DROP TABLE IF EXISTS `products`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) DEFAULT NULL,
  `product_price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;

INSERT INTO `products` VALUES
	(1,'Rolleiflex MF Camera', 1000),
    (2,'Guitar Looper Pedal', 200),
    (3,'Tandem Skydiving Coupon', 200),
    (4,'DJI Drone', 700),
    (5,'Electric Guitar', 1000),
    (6,'Bass Guitar', 1000),
    (7,'Acoustic Guitar', 1000),
    (8,'Travel Coupon', 10000);
UNLOCK TABLES;

DROP TABLE IF EXISTS `users_cart`;

CREATE TABLE `users_cart` (
    `username` varchar(45) DEFAULT 'Ashmin',
    `product_id` int,
    foreign key (product_id) references products(id)
    on delete cascade
) ENGINE=InnoDB

