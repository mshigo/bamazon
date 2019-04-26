CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
	id INT NOT NULL AUTO_INCREMENT,
	product_name VARCHAR(45) NULL,
	department_name VARCHAR(45) NULL,
	price DECIMAL(10,2) NULL,
	stock_quantity INT NULL,
    primary key (id)
    
);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Headphones", "music", 99.99, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Blue Suede Shoes", "fashion", 499.99, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Meat Stick", "nutrition", 2.00, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Cashmere Sweater", "fashion", 200.00, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Case of Water", "nutrition", 5.00, 200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Honda Accord", "vehicle", 19999.99, 3);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Hairdryer", "cosmetics", 68.99, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Fedora", "fashion", 20.99, 8);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("NVIDIA GeForce 2080TI", "Electronics", 999.99, 250);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("phone charger", "Electronics", 10.00, 100);

SELECT * FROM products; 

DESCRIBE products;

show tables;


