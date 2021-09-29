USE coffee_store;

SELECT * FROM orders;
SELECT * FROM products;

INSERT INTO products (name, price, coffee_origin)
VALUES('Espresso', 2.50, 'Brazil'), ('Macchiato', 3, 'Brazil'),('Cappuccino', 3.50, 'Costa Rica'), ('Latte', 3.50, 'Indoneisa'), ('Americano', 3.00, 'Brazil'), ('Flat White', 3.50, 'Indonesia'), ('Filter', 3.00, 'India');

DELETE FROM products;