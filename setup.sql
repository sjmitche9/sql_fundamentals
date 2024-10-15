DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS product_category;

CREATE TABLE product_category (
	category_id SERIAL PRIMARY KEY,
	name VARCHAR(100)
);

CREATE TABLE product (
	product_id SERIAL PRIMARY KEY,
	category_id INT,
	name VARCHAR(100),
	description TEXT,
	price DECIMAL(10, 2),
	FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

INSERT INTO product_category VALUES (1, 'Food');
INSERT INTO product_category VALUES (2, 'Gadget');
INSERT INTO product_category VALUES (3, 'Clothing');
INSERT INTO product_category VALUES (4, 'Electronics');
INSERT INTO product_category VALUES (5, 'Toys');

INSERT INTO product VALUES (1, 1, 'Milk', 'Whole milk, 1 gallon', 3.99);
INSERT INTO product VALUES (2, 1, 'Pineapples', 'Fresh pineapples, 2 pack', 5.99);
INSERT INTO product VALUES (3, 2, 'Apple iPhone 15', 'Latest model iPhone', 999.99);
INSERT INTO product VALUES (4, 3, 'Blue Jeans', 'Classic denim jeans', 79.99);
INSERT INTO product VALUES (5, 3, 'T-Shirt', 'Cotton t-shirt, black', 19.99);
INSERT INTO product VALUES (6, 2, 'Samsung Galaxy S24', 'Latest model Samsung Galaxy', 899.99);
INSERT INTO product VALUES (7, 4, 'Sony PlayStation 5', 'Gaming console', 499.99);
INSERT INTO product VALUES (8, 5, 'Lego Harry Potter Hogwarts Castle', 'Building set', 399.99);
INSERT INTO product VALUES (9, 5, 'Barbie Doll', 'Fashion doll', 29.99);
INSERT INTO product VALUES (10, 1, 'Bread', 'Wheat bread, loaf', 2.99);