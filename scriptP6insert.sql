INSERT INTO `P6`.`Order_delivery` (`delivery_id`, `delivery_name`) VALUES (1, 'Livraison');
INSERT INTO `P6`.`Order_delivery` (`delivery_id`, `delivery_name`) VALUES (2, 'Récupération au restaurant');

INSERT INTO `P6`.`Order_payment` (`payment_id`, `payment_name`) VALUES (1, 'Paiement en ligne');
INSERT INTO `P6`.`Order_payment` (`payment_id`, `payment_name`) VALUES (2, 'Paiement à la livraison');
INSERT INTO `P6`.`Order_payment` (`payment_id`, `payment_name`) VALUES (3, 'Paiement sur place');

INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (1, 'Prise en compte');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (2, 'En préparation');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (3, 'En attente de récupération');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (4, 'En attente de livraison');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (5, 'Livraison en cours');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (6, 'Récupérée');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (7, 'Livrée');
INSERT INTO `P6`.`Order_Status` (`status_id`, `status_name`) VALUES (8, 'Terminée');

INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `stock_ingredient_name`) VALUES (1, 'jambon');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `stock_ingredient_name`) VALUES (2, 'tomate');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `stock_ingredient_name`) VALUES (3, 'lardon');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `stock_ingredient_name`) VALUES (4, 'creme');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `stock_ingredient_name`) VALUES (5, 'mozzarella');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `stock_ingredient_name`) VALUES (6, 'pâte');
INSERT INTO `P6`.`Ingredient` (`ingredient_id`, `stock_ingredient_name`) VALUES (7, 'coca-cola');

INSERT INTO `P6`.`OCPizza_role` (`ocpizza_role_id`, `ocpizza_role_name`) VALUES (1, 'Employé');
INSERT INTO `P6`.`OCPizza_role` (`ocpizza_role_id`, `ocpizza_role_name`) VALUES (2, 'Livreur');

INSERT INTO `P6`.`Product_size` (`product_size_id`, `product_size_name`) VALUES (1, 'none');
INSERT INTO `P6`.`Product_size` (`product_size_id`, `product_size_name`) VALUES (2, 'petit');
INSERT INTO `P6`.`Product_size` (`product_size_id`, `product_size_name`) VALUES (3, 'moyen');
INSERT INTO `P6`.`Product_size` (`product_size_id`, `product_size_name`) VALUES (4, 'grand');

INSERT INTO `P6`.`Product_type` (`product_type_id`, `product_type_name`, `product_type_is_sizeable`) VALUES (1, 'none', 0);
INSERT INTO `P6`.`Product_type` (`product_type_id`, `product_type_name`, `product_type_is_sizeable`) VALUES (2, 'Pizza base tomate', 1);
INSERT INTO `P6`.`Product_type` (`product_type_id`, `product_type_name`, `product_type_is_sizeable`) VALUES (3, 'Pizza base crême', 1);
INSERT INTO `P6`.`Product_type` (`product_type_id`, `product_type_name`, `product_type_is_sizeable`) VALUES (4, 'Boisson', 0);

INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (1, 'jean', 'python', 'jeanpizza', 'jeanpythonparis');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (2, 'sarah', 'java', 'sarahlivreuse', 'sarajavaparis');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (3, 'pierre', 'céplus', 'pierrepizza', 'pierrecépluslyon');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (4, 'ronald', 'péhachpé', 'ronaldlivreur', 'ronaldpéhachpélyon');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (5, 'amaury', 'bois', 'abois', 'projet6');
INSERT INTO `P6`.`User` (`user_id`, `user_first_name`, `user_last_name`, `user_login`, `user_password`) VALUES (6, 'john', 'doe', 'jdoe69', 'pizzalyon');

INSERT INTO `P6`.`Contact` (`contact_id`, `contact_city`, `contact_adress`, `contact_level`, `contact_phone`, `contact_comment`, `contact_nearest_restaurant`) VALUES (1, 'Paris', '1 rue champs elysée', NULL, '0140999999', NULL, NULL);
INSERT INTO `P6`.`Contact` (`contact_id`, `contact_city`, `contact_adress`, `contact_level`, `contact_phone`, `contact_comment`, `contact_nearest_restaurant`) VALUES (2, 'Lyon', '2 quai jules courmont', NULL, '0560999999', NULL, NULL);

INSERT INTO `P6`.`Restaurant` (`restaurant_id`, `restaurant_name`, `restaurant_contact_id`) VALUES (1, 'OCPizza Paris', 1);
INSERT INTO `P6`.`Restaurant` (`restaurant_id`, `restaurant_name`, `restaurant_contact_id`) VALUES (2, 'OCPizza Lyon', 2);

INSERT INTO `P6`.`Contact` (`contact_id`, `contact_city`, `contact_adress`, `contact_level`, `contact_phone`, `contact_comment`, `contact_nearest_restaurant`) VALUES (3, 'Paris', '1 rue faubourg st honorée', 'rdc', '0679090909', NULL, 1);
INSERT INTO `P6`.`Contact` (`contact_id`, `contact_city`, `contact_adress`, `contact_level`, `contact_phone`, `contact_comment`, `contact_nearest_restaurant`) VALUES (4, 'Lyon', '35 quai jules courmont', '3', '0769090944', 'Sonnez à Doe', 2);

INSERT INTO `P6`.`Client` (`client_user_id`, `client_contact_id`, `client_mail`) VALUES (5, 3, 'a.bois@gmail.com');
INSERT INTO `P6`.`Client` (`client_user_id`, `client_contact_id`, `client_mail`) VALUES (6, 4, 'j.doe@gmail.com');

INSERT INTO `P6`.`OCPizza` (`ocpizza_user_id`, `ocpizza_restaurant_id`, `ocpizza_role_id`) VALUES (1, 1, 1);
INSERT INTO `P6`.`OCPizza` (`ocpizza_user_id`, `ocpizza_restaurant_id`, `ocpizza_role_id`) VALUES (2, 1, 2);
INSERT INTO `P6`.`OCPizza` (`ocpizza_user_id`, `ocpizza_restaurant_id`, `ocpizza_role_id`) VALUES (3, 2, 1);
INSERT INTO `P6`.`OCPizza` (`ocpizza_user_id`, `ocpizza_restaurant_id`, `ocpizza_role_id`) VALUES (4, 2, 2);

INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (1, 1, 10);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (1, 2, 10);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (1, 3, 10);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (1, 4, 10);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (2, 1, 20);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (2, 2, 20);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (2, 3, 20);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (2, 4, 20);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (1, 5, 10);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (1, 6, 10);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (2, 5, 20);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (2, 6, 20);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (1, 7, 10);
INSERT INTO `P6`.`Ingredient_stock` (`restaurant_id`, `ingredient_id`, `ingredient_qtt`) VALUES (2, 7, 20);

INSERT INTO `P6`.`Product` (`product_id`, `product_name`, `product_type_id`, `product_img_path`) VALUES (1, 'Coca-cola', 4, 'http://hebergeur.com/coca.png');
INSERT INTO `P6`.`Product` (`product_id`, `product_name`, `product_type_id`, `product_img_path`) VALUES (2, 'Pizza jambon', 2, 'http://hebergeur.com/pizza-jambon.png');
INSERT INTO `P6`.`Product` (`product_id`, `product_name`, `product_type_id`, `product_img_path`) VALUES (3, 'Pizza lardon', 3, 'http://hebergeur.com/pizza_lardon.png');

INSERT INTO `P6`.`Product_recipe` (`product_id`, `stock_ingredient_id`) VALUES (1, 7);
INSERT INTO `P6`.`Product_recipe` (`product_id`, `stock_ingredient_id`) VALUES (2, 1);
INSERT INTO `P6`.`Product_recipe` (`product_id`, `stock_ingredient_id`) VALUES (2, 2);
INSERT INTO `P6`.`Product_recipe` (`product_id`, `stock_ingredient_id`) VALUES (2, 5);
INSERT INTO `P6`.`Product_recipe` (`product_id`, `stock_ingredient_id`) VALUES (2, 6);
INSERT INTO `P6`.`Product_recipe` (`product_id`, `stock_ingredient_id`) VALUES (3, 3);
INSERT INTO `P6`.`Product_recipe` (`product_id`, `stock_ingredient_id`) VALUES (3, 4);
INSERT INTO `P6`.`Product_recipe` (`product_id`, `stock_ingredient_id`) VALUES (3, 5);
INSERT INTO `P6`.`Product_recipe` (`product_id`, `stock_ingredient_id`) VALUES (3, 6);

INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (1, 1, 2.50);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (2, 2, 8);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (3, 2, 8);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (2, 3, 10);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (3, 3, 10);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (2, 4, 13);
INSERT INTO `P6`.`Product_price` (`Product_price_type`, `Product_price_size_id`, `Product_price_real`) VALUES (3, 4, 13);

INSERT INTO `P6`.`Order` (`order_id`, `order_user_id`, `order_status_id`, `order_delivery_id`, `order_payment_id`, `order_restaurant_id`, `order_delivery_adress`) VALUES (1, 5, 2, 1, 1, 1, 3);
INSERT INTO `P6`.`Order` (`order_id`, `order_user_id`, `order_status_id`, `order_delivery_id`, `order_payment_id`, `order_restaurant_id`, `order_delivery_adress`) VALUES (2, 6, 3, 2, 3, 2, NULL);

INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (1, 1, 1, 1);
INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (1, 2, 3, 1);
INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (2, 3, 2, 1);
INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (2, 2, 4, 1);
INSERT INTO `P6`.`Order_basket` (`basket_order_id`, `basket_product_id`, `basket_size_id`, `basket_product_qtt`) VALUES (2, 1, 1, 2);

INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `status_update_user_id`) VALUES (1, 1, '2020-05-04 15:30:43', 1);
INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `status_update_user_id`) VALUES (1, 2, '2020-05-04 15:32:45', 1);
INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `status_update_user_id`) VALUES (2, 1, '2020-05-04 15:45:01', 3);
INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `status_update_user_id`) VALUES (2, 2, '2020-05-04 15:47:15', 3);
INSERT INTO `P6`.`Order_StatusUpdate` (`statusupdate_order_id`, `statusupdate_status_id`, `statusupdate_time`, `status_update_user_id`) VALUES (2, 3, '2020-05-04 15:55:00', 3);










