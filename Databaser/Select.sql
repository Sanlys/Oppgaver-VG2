USE coffee_shop;

SELECT first_name, phone_number FROM customers
WHERE gender='f' && last_name='Bluth';

SELECT name, price, coffee_origin FROM products
WHERE price>3.00 OR coffee_origin='Sri Lanka';

SELECT * FROM customers
WHERE gender = 'M'
AND phone_number IS NULL;