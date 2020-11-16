CREATE DATABASE  IF NOT EXISTS `chopshop`;
USE `chopshop`;

SET FOREIGN_KEY_CHECKS = 0; #since we are deleting a foreign key constrained table
DROP TABLE IF EXISTS `product`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) DEFAULT NULL,
  `product_price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `product` WRITE;

INSERT INTO `product` VALUES
	(1,'Rolleiflex MF Camera', 1000),
    (2,'Guitar Looper Pedal', 200),
    (3,'Tandem Skydiving Coupon', 200),
    (4,'DJI Drone', 700),
    (5,'Electric Guitar', 1000),
    (6,'Bass Guitar', 1000),
    (7,'Acoustic Guitar', 1000),
    (8,'Travel Coupon', 10000);
UNLOCK TABLES;

DROP TABLE IF EXISTS `user_cart`;

CREATE TABLE `user_cart` (
    `username` varchar(45) DEFAULT 'Ashmin',
    `product_id` int,
    foreign key (product_id) references product(id)
    on delete cascade
) ENGINE=InnoDB

