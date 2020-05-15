-- MySQL Script generated by MySQL Workbench
-- Fri May 15 13:01:17 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema P6
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema P6
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `P6` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `P6` ;

-- -----------------------------------------------------
-- Table `P6`.`Product_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Product_type` (
  `product_type_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_type_name` VARCHAR(40) NOT NULL,
  `product_type_is_sizeable` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`product_type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Product` (
  `product_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(40) NOT NULL,
  `product_product_type_id` INT UNSIGNED NOT NULL,
  `product_img_path` VARCHAR(100) NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE INDEX `Pizza_name_UNIQUE` (`product_name` ASC) VISIBLE,
  UNIQUE INDEX `Pizza_id_UNIQUE` (`product_id` ASC) VISIBLE,
  UNIQUE INDEX `pizza_img_path_UNIQUE` (`product_img_path` ASC) VISIBLE,
  INDEX `fk_product_class_idx` (`product_product_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_type`
    FOREIGN KEY (`product_product_type_id`)
    REFERENCES `P6`.`Product_type` (`product_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Ingredient` (
  `ingredient_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ingredient_name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`ingredient_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Product_recipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Product_recipe` (
  `recipe_product_id` INT UNSIGNED NOT NULL,
  `recipe_ingredient_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`recipe_product_id`, `recipe_ingredient_id`),
  INDEX `fk_ingredient_id_idx` (`recipe_ingredient_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_id`
    FOREIGN KEY (`recipe_product_id`)
    REFERENCES `P6`.`Product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_ingredient_id`
    FOREIGN KEY (`recipe_ingredient_id`)
    REFERENCES `P6`.`Ingredient` (`ingredient_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`User` (
  `user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_first_name` VARCHAR(40) NOT NULL,
  `user_last_name` VARCHAR(40) NOT NULL,
  `user_login` VARCHAR(40) NOT NULL,
  `user_password` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE,
  UNIQUE INDEX `user_login_UNIQUE` (`user_login` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Staff_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Staff_role` (
  `role_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE INDEX `role_id_UNIQUE` (`role_id` ASC) VISIBLE,
  UNIQUE INDEX `role_name_UNIQUE` (`role_name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Restaurant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Restaurant` (
  `restaurant_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `restaurant_name` VARCHAR(40) NOT NULL,
  `restaurant_contact_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE INDEX `restaurant_id_UNIQUE` (`restaurant_id` ASC) VISIBLE,
  UNIQUE INDEX `restaurant_contact_id_UNIQUE` (`restaurant_contact_id` ASC) VISIBLE,
  CONSTRAINT `fk_restaurant_contact`
    FOREIGN KEY (`restaurant_contact_id`)
    REFERENCES `P6`.`Contact` (`contact_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Contact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Contact` (
  `contact_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `contact_city` VARCHAR(40) NOT NULL,
  `contact_adress` VARCHAR(60) NOT NULL,
  `contact_level` VARCHAR(5) NULL,
  `contact_phone` VARCHAR(10) NOT NULL,
  `contact_comment` VARCHAR(150) NULL,
  `contact_nearest_restaurant` INT UNSIGNED NULL,
  PRIMARY KEY (`contact_id`),
  INDEX `fk_contact_restaurant_idx` (`contact_nearest_restaurant` ASC) VISIBLE,
  CONSTRAINT `fk_contact_restaurant`
    FOREIGN KEY (`contact_nearest_restaurant`)
    REFERENCES `P6`.`Restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Product_size`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Product_size` (
  `product_size_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_size_name` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`product_size_id`),
  UNIQUE INDEX `size_id_UNIQUE` (`product_size_id` ASC) VISIBLE,
  UNIQUE INDEX `size_name_UNIQUE` (`product_size_name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Product_price`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Product_price` (
  `Product_price_type` INT UNSIGNED NOT NULL,
  `Product_price_size_id` INT UNSIGNED NOT NULL,
  `Product_price_real` DECIMAL UNSIGNED NOT NULL,
  INDEX `fk_price_size_id_idx` (`Product_price_size_id` ASC) VISIBLE,
  INDEX `fk_product_price_product_idx` (`Product_price_type` ASC) VISIBLE,
  PRIMARY KEY (`Product_price_type`, `Product_price_size_id`),
  CONSTRAINT `fk_product_price_size_id`
    FOREIGN KEY (`Product_price_size_id`)
    REFERENCES `P6`.`Product_size` (`product_size_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_price_product`
    FOREIGN KEY (`Product_price_type`)
    REFERENCES `P6`.`Product_type` (`product_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Order_Status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Order_Status` (
  `status_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `status_name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE INDEX `status_id_UNIQUE` (`status_id` ASC) VISIBLE,
  UNIQUE INDEX `status_name_UNIQUE` (`status_name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Order_delivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Order_delivery` (
  `delivery_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `delivery_name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`delivery_id`),
  UNIQUE INDEX `delivery_id_UNIQUE` (`delivery_id` ASC) VISIBLE,
  UNIQUE INDEX `delivery_name_UNIQUE` (`delivery_name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Order_payment_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Order_payment_type` (
  `payment_type_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_type_name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`payment_type_id`),
  UNIQUE INDEX `payment_type_id_UNIQUE` (`payment_type_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Order_payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Order_payment` (
  `payment_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_payment_type_id` INT UNSIGNED NOT NULL,
  `payment_token` VARCHAR(16) NULL,
  `payment_time` DATETIME NULL,
  `payment_error` VARCHAR(200) NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE INDEX `paiment_id_UNIQUE` (`payment_id` ASC) VISIBLE,
  INDEX `fk_order_payment_type_idx` (`payment_payment_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_payment_type`
    FOREIGN KEY (`payment_payment_type_id`)
    REFERENCES `P6`.`Order_payment_type` (`payment_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Order` (
  `order_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_user_id` INT UNSIGNED NOT NULL,
  `order_status_id` INT UNSIGNED NOT NULL,
  `order_delivery_id` INT UNSIGNED NOT NULL,
  `order_payment_id` INT UNSIGNED NOT NULL,
  `order_restaurant_id` INT UNSIGNED NOT NULL,
  `order_delivery_adress` INT UNSIGNED NULL,
  `order_cost` DECIMAL UNSIGNED NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE INDEX `command_id_UNIQUE` (`order_id` ASC) VISIBLE,
  INDEX `fk_command_user_id_idx` (`order_user_id` ASC) VISIBLE,
  INDEX `fk_command_status_id_idx` (`order_status_id` ASC) VISIBLE,
  INDEX `fk_command_delivery_id_idx` (`order_delivery_id` ASC) VISIBLE,
  INDEX `fk_command_paiment_id_idx` (`order_payment_id` ASC) VISIBLE,
  INDEX `fk_order_restaurant_id_idx` (`order_restaurant_id` ASC) VISIBLE,
  INDEX `fk_order_delivery_contact_idx` (`order_delivery_adress` ASC) VISIBLE,
  CONSTRAINT `fk_order_user_id`
    FOREIGN KEY (`order_user_id`)
    REFERENCES `P6`.`User` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_status_id`
    FOREIGN KEY (`order_status_id`)
    REFERENCES `P6`.`Order_Status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_delivery_id`
    FOREIGN KEY (`order_delivery_id`)
    REFERENCES `P6`.`Order_delivery` (`delivery_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_paiment_id`
    FOREIGN KEY (`order_payment_id`)
    REFERENCES `P6`.`Order_payment` (`payment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_restaurant_id`
    FOREIGN KEY (`order_restaurant_id`)
    REFERENCES `P6`.`Restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_delivery_contact`
    FOREIGN KEY (`order_delivery_adress`)
    REFERENCES `P6`.`Contact` (`contact_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Order_basket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Order_basket` (
  `basket_order_id` INT UNSIGNED NOT NULL,
  `basket_product_id` INT UNSIGNED NOT NULL,
  `basket_size_id` INT UNSIGNED NOT NULL,
  `basket_product_qtt` INT UNSIGNED NOT NULL,
  INDEX `fk_basket_pizza_id_idx` (`basket_product_id` ASC) VISIBLE,
  INDEX `fk_basket_size_id_idx` (`basket_size_id` ASC) VISIBLE,
  CONSTRAINT `fk_basket_order_id`
    FOREIGN KEY (`basket_order_id`)
    REFERENCES `P6`.`Order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_basket_product_id`
    FOREIGN KEY (`basket_product_id`)
    REFERENCES `P6`.`Product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_basket_size_id`
    FOREIGN KEY (`basket_size_id`)
    REFERENCES `P6`.`Product_size` (`product_size_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Order_StatusUpdate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Order_StatusUpdate` (
  `statusupdate_order_id` INT UNSIGNED NOT NULL,
  `statusupdate_status_id` INT UNSIGNED NOT NULL,
  `statusupdate_time` DATETIME NOT NULL,
  `statusupdate_user_id` INT UNSIGNED NOT NULL,
  INDEX `fk_statusupdate_status_id_idx` (`statusupdate_status_id` ASC) VISIBLE,
  INDEX `fk_statusupdate_command_id_idx` (`statusupdate_order_id` ASC) VISIBLE,
  INDEX `fk_statusupdate_user_id_idx` (`statusupdate_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_statusupdate_order_id`
    FOREIGN KEY (`statusupdate_order_id`)
    REFERENCES `P6`.`Order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_statusupdate_status_id`
    FOREIGN KEY (`statusupdate_status_id`)
    REFERENCES `P6`.`Order_Status` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_statusupdate_user_id`
    FOREIGN KEY (`statusupdate_user_id`)
    REFERENCES `P6`.`User` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Ingredient_stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Ingredient_stock` (
  `stock_restaurant_id` INT UNSIGNED NOT NULL,
  `stock_ingredient_id` INT UNSIGNED NOT NULL,
  `stock_ingredient_qtt` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`stock_restaurant_id`, `stock_ingredient_id`),
  INDEX `fk_stock_restaurant_id_idx` (`stock_restaurant_id` ASC) VISIBLE,
  CONSTRAINT `fk_stock_restaurant_id`
    FOREIGN KEY (`stock_restaurant_id`)
    REFERENCES `P6`.`Restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ingredient_id`
    FOREIGN KEY (`stock_ingredient_id`)
    REFERENCES `P6`.`Ingredient` (`ingredient_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Client` (
  `client_user_id` INT UNSIGNED NOT NULL,
  `client_contact_id` INT UNSIGNED NOT NULL,
  `client_mail` VARCHAR(100) NULL,
  PRIMARY KEY (`client_user_id`, `client_contact_id`),
  INDEX `fk_client_contact_idx` (`client_contact_id` ASC) VISIBLE,
  CONSTRAINT `fk_client_user`
    FOREIGN KEY (`client_user_id`)
    REFERENCES `P6`.`User` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_client_contact`
    FOREIGN KEY (`client_contact_id`)
    REFERENCES `P6`.`Contact` (`contact_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `P6`.`Staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P6`.`Staff` (
  `staff_user_id` INT UNSIGNED NOT NULL,
  `staff_restaurant_id` INT UNSIGNED NOT NULL,
  `staff_role_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`staff_user_id`),
  INDEX `fk_ocpizza_role_idx` (`staff_role_id` ASC) VISIBLE,
  INDEX `fk_ocpizza_restaurant_idx` (`staff_restaurant_id` ASC) VISIBLE,
  CONSTRAINT `fk_staff_role`
    FOREIGN KEY (`staff_role_id`)
    REFERENCES `P6`.`Staff_role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_staff_user`
    FOREIGN KEY (`staff_user_id`)
    REFERENCES `P6`.`User` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_staff_restaurant`
    FOREIGN KEY (`staff_restaurant_id`)
    REFERENCES `P6`.`Restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
