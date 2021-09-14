-- Copied from Vaughn's Terminal --
-- removed "products_db=#" from command line to clean up syntax --

-- 1. INSERT INTO products(name, price, can_be_returned) VALUES ('chair',44.00, false);

-- INSERT 0 1

-- SELECT name,price,can_be_returned FROM products;

-- name  | price | can_be_returned 
---------+-------+-----------------
-- chair |    44 | f

--(1 row)

-- 2. INSERT INTO products(name, price, can_be_returned) VALUES ('stool',25.99,true);

-- INSERT 0 1


-- 3. INSERT INTO products(name, price, can_be_returned) VALUES ('table',124.00,false);

-- INSERT 0 1

-- 4. SELECT name,price,can_be_returned FROM products;

-- name  | price | can_be_returned 
---------+-------+-----------------
-- chair |    44 | f
-- stool | 25.99 | t
-- table |   124 | f

--(3 rows)

-- 5. SELECT name FROM products;

---name  
--------
-- chair
-- stool
-- table

--(3 rows)

-- 6. SELECT name,price FROM products;

-- name  | price 
---------+-------
-- chair |    44
-- stool | 25.99
-- table |   124

--(3 rows)

-- 7. INSERT INTO products(name,price,id,can_be_returned) VALUES ('golden banana',345873.00,4,true);

-- INSERT 0 1

-- 8. SELECT can_be_returned FROM products;

-- can_be_returned 
-----------------
-- f
-- t
-- f
-- t
--(4 rows)

-- 9. SELECT * FROM products WHERE price < 44.00;

-- id | name  | price | can_be_returned 
------+-------+-------+-----------------
--  2 | stool | 25.99 | t

--(1 row)

-- 10. SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- id | name  | price | can_be_returned 
------+-------+-------+-----------------
--  1 | chair |    44 | f
--  2 | stool | 25.99 | t

--(2 rows)

-- 11.  UPDATE products SET price = price - 20;
-- UPDATE 4

-- SELECT price FROM products;
--       price       
-------------------
--                24
-- 5.989999999999998
--               104
--            345853
--(4 rows)

-- 12. DELETE FROM products WHERE price < 25;
-- DELETE 2

-- 13. UPDATE products SET price = price + 20;
-- UPDATE 2

-- 14. UPDATE products SET can_be_returned = True;

-- can_be_returned 
-----------------
-- t
-- t

--(2 rows)








