-- Copied from Vaughn's Terminal --
-- removed "products_db=#" from command line to clean up syntax --

-- 1. SELECT * FROM analytics WHERE id = 1880;
-- this returned a lot of duplicates ^
-- So i ran SELECT analytics FROM analytics WHERE id = 1880:
-- to return 1 row ^

-- 2. SELECT id,app_name FROM analytics WHERE last_updated = 'August 01, 2018';

-- 3. SELECT category, COUNT(app_name) FROM analytics GROUP BY category;

-- 4. SELECT app_name,reviews FROM analytics ORDER BY reviews desc LIMIT 5;

--                 app_name                 | reviews  
--------------------------------------------+----------
-- Facebook                                 | 78158306
-- WhatsApp Messenger                       | 78128208
-- Instagram                                | 69119316
-- Messenger – Text and Video Chat for Free | 69119316
-- Clash of Clans                           | 69109672

--(5 rows)

-- 5. SELECT app_name,rating,reviews FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;

--  app_name  | rating | reviews 
--------------+--------+---------
-- Chess Free |    4.8 | 4559407


-- 6. SELECT category,AVG(rating) FROM analytics GROUP BY category,rating ORDER BY AVG(rating) desc;



-- 7. SELECT app_name,price,rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;

--      app_name      | price  | rating 
----------------------+--------+--------
-- Naruto & Boruto FR | 379.99 |    2.9

--(1 row)

-- 8. SELECT app_name,min_installs,rating FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating desc;

-- 9. SELECT app_name,rating,reviews FROM analytics WHERE rating < 3 and reviews > 10000;

--                    app_name                     | rating | reviews 
---------------------------------------------------+--------+---------
-- The Wall Street Journal: Business & Market News |    2.8 |  107441
-- Vikings: an Archer’s Journey                    |    2.9 |   31596
---Shoot Em Down Free                              |    2.4 |   11773

--(3 rows)

-- 10. SELECT app_name,price,reviews FROM analytics WHERE price BETWEEN .10 AND 1.00 ORDER BY reviews desc LIMIT 10;

--                  app_name                   | price | reviews 
-----------------------------------------------+-------+---------
-- Free Slideshow Maker & Video Editor         |  0.99 |  408292
-- Couple - Relationship App                   |  0.99 |   85468
-- Anime X Wallpaper                           |  0.99 |   84114
-- Dance On Mobile                             |  0.99 |   61264
-- Marvel Unlimited                            |  0.99 |   58617
-- FastMeet: Chat, Dating, Love                |  0.99 |   58614
-- IHG®: Hotel Deals & Rewards                 |  0.99 |   48754
-- Live Weather & Daily Local Weather Forecast |  0.99 |   38419
-- DreamMapper                                 |  0.99 |   32496
-- Můj T-Mobile Business                       |  0.99 |   32344

--(10 rows)

-- 11. SELECT app_name,last_updated FROM analytics ORDER BY last_updated asc LIMIT 1;

--  app_name  | last_updated 
--------------+--------------
-- CP Clicker | 2010-05-21

--(1 row)

-- 12. SELECT app_name,price FROM analytics ORDER BY price desc LIMIT 1;

--      app_name      | price 
----------------------+-------
-- Cardi B Piano Game |   400

-- 13. SELECT SUM(reviews) FROM analytics;

--    sum     
--------------
-- 4814575866

--(1 row)

-- 14. SELECT category,COUNT(id) FROM analytics GROUP BY category HAVING COUNT(id) > 300 ORDER BY COUNT(id) desc;

--    category     | count 
-------------------+-------
-- FAMILY          |  1789
-- GAME            |  1110
-- TOOLS           |   753
-- PRODUCTIVITY    |   360
-- MEDICAL         |   350
-- COMMUNICATION   |   342
-- SPORTS          |   338
-- FINANCE         |   331
-- PERSONALIZATION |   329
-- LIFESTYLE       |   319
-- BUSINESS        |   313
-- PHOTOGRAPHY     |   313

--(12 rows)

-- 15. SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 5;

--            app_name            | reviews | min_installs | proportion 
----------------------------------+---------+--------------+------------
-- Kim Bu Youtuber?               |      66 |     10000000 |     151515
-- EY Catalyst Reader             |       9 |       100000 |      11111
-- J Touch                        |    9602 |    100000000 |      10414
-- H letter images                |     100 |      1000000 |      10000
-- Portal AR - Step Into Scotland |     142 |      1000000 |       7042

--(5 rows)

