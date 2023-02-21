/*Задание 1*/
CREATE TABLE `mobile`.`phone` (
  `id_phone` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `product_count` INT NULL,
  `price` DECIMAL NULL,
  PRIMARY KEY (`id_phone`));

INSERT INTO `mobile`.`phone` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy S23 Ultra', 'Sumsung', '5', '40000');
INSERT INTO `mobile`.`phone` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy Tab S8 Ultra', 'Sumsung', '2', '10000');
INSERT INTO `mobile`.`phone` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy Z Flip4', 'Sumsung', '25', '70000');
INSERT INTO `mobile`.`phone` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Redmi Note 11', 'xiaomi', '8', '15000');
INSERT INTO `mobile`.`phone` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Xiaomi 12X', 'xiaomi', '10', '20000');
INSERT INTO `mobile`.`phone` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('X5 Pro', 'Poco', '7', '25000');

/*Задание 2*/
SELECT phone.product_name, phone.manufacturer, phone.price from phone
where phone.product_count>2;

/*Задание 3*/
SELECT * FROM phone
where manufacturer = 'Samsung';