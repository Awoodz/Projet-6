USE `P6`;

-- -----------------------------------------------------
-- Data for table `P6`.`Order_delivery`
-- -----------------------------------------------------
INSERT INTO `P6`.`Order_delivery` (`delivery_id`, `delivery_name`) VALUES (1, 'Livraison');
INSERT INTO `P6`.`Order_delivery` (`delivery_id`, `delivery_name`) VALUES (2, 'Récupération au restaurant');

-- -----------------------------------------------------
-- Data for table `P6`.`Order_payment_type`
-- -----------------------------------------------------
INSERT INTO `P6`.`Order_payment_type` (`payment_type_id`, `payment_type_name`) VALUES (1, 'Paiement en ligne');
INSERT INTO `P6`.`Order_payment_type` (`payment_type_id`, `payment_type_name`) VALUES (2, 'Paiement sur place');
INSERT INTO `P6`.`Order_payment_type` (`payment_type_id`, `payment_type_name`) VALUES (3, 'Paiement à la livraison');

-- -----------------------------------------------------
-- Data for table `P6`.`Order_Status`
-- -----------------------------------------------------
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (1, 'Prise en compte');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (2, 'En préparation');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (3, 'En attente de récupération');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (4, 'En attente de livraison');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (5, 'Livraison en cours');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (6, 'Récupérée');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (7, 'Livrée');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (8, 'Terminée');

-- -----------------------------------------------------
-- Data for table `P6`.`Ingredient`
-- -----------------------------------------------------
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `ingredient_name`) VALUES (1, 'jambon');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `ingredient_name`) VALUES (2, 'tomate');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `ingredient_name`) VALUES (3, 'lardon');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `ingredient_name`) VALUES (4, 'creme');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `ingredient_name`) VALUES (5, 'mozzarella');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `ingredient_name`) VALUES (6, 'pâte');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `ingredient_name`) VALUES (7, 'coca-cola');

-- -----------------------------------------------------
-- Data for table `P6`.`Staff_role`
-- -----------------------------------------------------
INSERT INTO `P6`.`Staff_role` (`role_id`, `role_name`) VALUES (1, 'Employé');
INSERT INTO `P6`.`Staff_role` (`role_id`, `role_name`) VALUES (2, 'Livreur');

-- -----------------------------------------------------
-- Data for table `P6`.`Product_size`
-- -----------------------------------------------------
INSERT INTO `P6`.`Product_size` (`product_size_id`, `product_size_name`) VALUES (1, 'none');
INSERT INTO `P6`.`Product_size` (`product_size_id`, `product_size_name`) VALUES (2, 'petit');
INSERT INTO `P6`.`Product_size` (`product_size_id`, `product_size_name`) VALUES (3, 'moyen');
INSERT INTO `P6`.`Product_size` (`product_size_id`, `product_size_name`) VALUES (4, 'grand');

-- -----------------------------------------------------
-- Data for table `P6`.`Product_type`
-- -----------------------------------------------------
INSERT INTO `P6`.`Product_type` (`product_type_id`, `product_type_name`, `product_type_is_sizeable`) VALUES (1, 'none', 0);
INSERT INTO `P6`.`Product_type` (`product_type_id`, `product_type_name`, `product_type_is_sizeable`) VALUES (2, 'Pizza base tomate', 1);
INSERT INTO `P6`.`Product_type` (`product_type_id`, `product_type_name`, `product_type_is_sizeable`) VALUES (3, 'Pizza base crême', 1);
INSERT INTO `P6`.`Product_type` (`product_type_id`, `product_type_name`, `product_type_is_sizeable`) VALUES (4, 'Boisson', 0);

-- -----------------------------------------------------
-- Data for table `P6`.`User`
-- -----------------------------------------------------
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (1, 'jean', 'python', 'jeanpizza', '$2y$10$3rDEgfxJ/ks0Uwq8RfW5muYBE0OQzjEMBwsSynIho0kIGopyhEA3S');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (2, 'sarah', 'java', 'sarahlivreuse', '$2y$10$z8VGfSU6QgLoW9e0OuXXgeqzT2ukNMq7mWGqpH3KMcWclPrSattIq');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (3, 'pierre', 'céplus', 'pierrepizza', '$2y$10$3UoMY4OY7kRyXJVSj9P39uRWY5g7HJ27zlim0zDaZF1z6OM05Ai5e');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (4, 'ronald', 'péhachpé', 'ronaldlivreur', '$2y$10$bqo1kRgTerp9NfL5rHIK5u2rjy0qh7JTHg1YoYN9ApxN/OjcZdm5m');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (5, 'amaury', 'bois', 'abois', '$2y$10$r9ob.iL0bnGKrn.7hh/jeOmGLoUL8sHwXEoojfXl9nSqvvDT16Y2a');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (6, 'john', 'doe', 'jdoe69', '$2y$10$/R2cgjCnsFFO/6XqTDzPouR9zXfSS6Jvku53UtgtlsO4Bzf.3KjBm');

-- -----------------------------------------------------
-- Data for table `P6`.`Contact`
-- -----------------------------------------------------
INSERT INTO `P6`.`Contact` (`contact_id`, `contact_city`, `contact_adress`, `contact_level`, `contact_phone`, `contact_comment`, `contact_nearest_restaurant`) VALUES (1, 'Paris', '1 rue champs elysée', NULL, '0140999999', NULL, NULL);
INSERT INTO `P6`.`Contact` (`contact_id`, `contact_city`, `contact_adress`, `contact_level`, `contact_phone`, `contact_comment`, `contact_nearest_restaurant`) VALUES (2, 'Lyon', '2 quai jules courmont', NULL, '0560999999', NULL, NULL);

-- -----------------------------------------------------
-- Data for table `P6`.`Restaurant`
-- -----------------------------------------------------
INSERT INTO `P6`.`Restaurant` (`restaurant_id`, `restaurant_name`, `restaurant_contact_id`) VALUES (1, 'OCPizza Paris', 1);
INSERT INTO `P6`.`Restaurant` (`restaurant_id`, `restaurant_name`, `restaurant_contact_id`) VALUES (2, 'OCPizza Lyon', 2);

-- -----------------------------------------------------
-- Data for table `P6`.`Contact`
-- -----------------------------------------------------
INSERT INTO `P6`.`Contact` (`contact_id`, `contact_city`, `contact_adress`, `contact_level`, `contact_phone`, `contact_comment`, `contact_nearest_restaurant`) VALUES (3, 'Paris', '1 rue faubourg st honorée', 'rdc', '0679090909', NULL, 1);
INSERT INTO `P6`.`Contact` (`contact_id`, `contact_city`, `contact_adress`, `contact_level`, `contact_phone`, `contact_comment`, `contact_nearest_restaurant`) VALUES (4, 'Lyon', '35 quai jules courmont', '3', '0769090944', 'Sonnez à Doe', 2);

-- -----------------------------------------------------
-- Data for table `P6`.`Client`
-- -----------------------------------------------------
INSERT INTO `P6`.`Client` (`client_user_id`, `client_contact_id`, `client_mail`) VALUES (5, 3, 'a.bois@gmail.com');
INSERT INTO `P6`.`Client` (`client_user_id`, `client_contact_id`, `client_mail`) VALUES (6, 4, 'j.doe@gmail.com');

-- -----------------------------------------------------
-- Data for table `P6`.`Staff`
-- -----------------------------------------------------
INSERT INTO `P6`.`Staff` (`staff_user_id`, `staff_restaurant_id`, `staff_role_id`) VALUES (1, 1, 1);
INSERT INTO `P6`.`Staff` (`staff_user_id`, `staff_restaurant_id`, `staff_role_id`) VALUES (2, 1, 2);
INSERT INTO `P6`.`Staff` (`staff_user_id`, `staff_restaurant_id`, `staff_role_id`) VALUES (3, 2, 1);
INSERT INTO `P6`.`Staff` (`staff_user_id`, `staff_restaurant_id`, `staff_role_id`) VALUES (4, 2, 2);

-- -----------------------------------------------------
-- Data for table `P6`.`Ingredient_stock`
-- -----------------------------------------------------
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (1, 1, 10);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (1, 2, 10);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (1, 3, 10);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (1, 4, 10);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (2, 1, 20);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (2, 2, 20);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (2, 3, 20);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (2, 4, 20);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (1, 5, 10);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (1, 6, 10);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (2, 5, 20);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (2, 6, 20);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (1, 7, 10);
INSERT INTO `P6`.`Ingredient_stock` (`stock_restaurant_id`, `stock_ingredient_id`, `stock_ingredient_qtt`) VALUES (2, 7, 20);

-- -----------------------------------------------------
-- Data for table `P6`.`Product`
-- -----------------------------------------------------
INSERT INTO `P6`.`Product` (`product_id`, `product_name`, `product_product_type_id`, `product_img_path`) VALUES (1, 'Coca-cola', 4, 'http://hebergeur.com/coca.png');
INSERT INTO `P6`.`Product` (`product_id`, `product_name`, `product_product_type_id`, `product_img_path`) VALUES (2, 'Pizza jambon', 2, 'http://hebergeur.com/pizza-jambon.png');
INSERT INTO `P6`.`Product` (`product_id`, `product_name`, `product_product_type_id`, `product_img_path`) VALUES (3, 'Pizza lardon', 3, 'http://hebergeur.com/pizza_lardon.png');

-- -----------------------------------------------------
-- Data for table `P6`.`Product_recipe`
-- -----------------------------------------------------
INSERT INTO `P6`.`Product_recipe` (`recipe_product_id`, `recipe_ingredient_id`) VALUES (1, 7);
INSERT INTO `P6`.`Product_recipe` (`recipe_product_id`, `recipe_ingredient_id`) VALUES (2, 1);
INSERT INTO `P6`.`Product_recipe` (`recipe_product_id`, `recipe_ingredient_id`) VALUES (2, 2);
INSERT INTO `P6`.`Product_recipe` (`recipe_product_id`, `recipe_ingredient_id`) VALUES (2, 5);
INSERT INTO `P6`.`Product_recipe` (`recipe_product_id`, `recipe_ingredient_id`) VALUES (2, 6);
INSERT INTO `P6`.`Product_recipe` (`recipe_product_id`, `recipe_ingredient_id`) VALUES (3, 3);
INSERT INTO `P6`.`Product_recipe` (`recipe_product_id`, `recipe_ingredient_id`) VALUES (3, 4);
INSERT INTO `P6`.`Product_recipe` (`recipe_product_id`, `recipe_ingredient_id`) VALUES (3, 5);
INSERT INTO `P6`.`Product_recipe` (`recipe_product_id`, `recipe_ingredient_id`) VALUES (3, 6);

-- -----------------------------------------------------
-- Data for table `P6`.`Product_price`
-- -----------------------------------------------------
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (4, 1, 2.5);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (2, 2, 8);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (3, 2, 9);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (2, 3, 10);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (3, 3, 12);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (2, 4, 13);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (3, 4, 15);

-- -----------------------------------------------------
-- Data for table `P6`.`Order_payment`
-- -----------------------------------------------------
INSERT INTO `P6`.`Order_payment` (`payment_id`, `payment_payment_type_id`, `payment_token`, `payment_time`, `payment_error`) VALUES (1, 1, '94a08da1fecbb6e8', '04/05/20 15:30:00', NULL);
INSERT INTO `P6`.`Order_payment` (`payment_id`, `payment_payment_type_id`, `payment_token`, `payment_time`, `payment_error`) VALUES (2, 2, NULL, NULL, NULL);

-- -----------------------------------------------------
-- Data for table `P6`.`Order`
-- -----------------------------------------------------
INSERT INTO `P6`.`Order` (`order_id`, `order_user_id`, `order_status_id`, `order_delivery_id`, `order_payment_id`, `order_restaurant_id`, `order_delivery_adress`, `order_cost`) VALUES (1, 5, 2, 1, 1, 1, 3, 12.5);
INSERT INTO `P6`.`Order` (`order_id`, `order_user_id`, `order_status_id`, `order_delivery_id`, `order_payment_id`, `order_restaurant_id`, `order_delivery_adress`, `order_cost`) VALUES (2, 6, 3, 2, 2, 2, NULL, 27);

-- -----------------------------------------------------
-- Data for table `P6`.`Order_basket`
-- -----------------------------------------------------
INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (1, 1, 1, 1);
INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (1, 2, 3, 1);
INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (2, 3, 2, 1);
INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (2, 2, 4, 1);
INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (2, 1, 1, 2);

-- -----------------------------------------------------
-- Data for table `P6`.`Order_StatusUpdate`
-- -----------------------------------------------------
INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `statusupdate_user_id`) VALUES (1, 1, '04/05/20 15:30:43', 1);
INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `statusupdate_user_id`) VALUES (1, 2, '04/05/20 15:32:45', 1);
INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `statusupdate_user_id`) VALUES (2, 1, '04/05/20 15:45:01', 3);
INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `statusupdate_user_id`) VALUES (2, 2, '04/05/20 15:47:15', 3);
INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `statusupdate_user_id`) VALUES (2, 3, '04/05/20 15:55:00', 3);
