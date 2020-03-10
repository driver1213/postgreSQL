
-- CREATE TABLE restaurant(
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar,
--     distance_in_miles_from_HQ integer, 
--     stars integer,
--     category_type_of_food varchar,
--     favorite_dish varchar,
--     takeout boolean,
--     last_time_visited date
-- );

-- ALTER TABLE restaurant ALTER COLUMN stars TYPE numeric;

-- INSERT INTO restaurant VALUES
-- (DEFAULT, 'Killens Steakhouse', 33, 4.6, 'Steakhouse', 'Filet Mignon', False, '2020-03-09'),
-- (DEFAULT, 'Turkey Leg Hut', 9, 4.4, 'Southern Comfort food', 'Hennessy Turkey Leg', False, '2020-03-10'),
-- (DEFAULT, 'Pho Saigon', 8, 4.3, 'Vietnamese/Pho', 'Seafood Pho', True, '2020-03-11'),
-- (DEFAULT, 'Kolache Factory', 6, 3.7, 'Breakfast', 'Egg ranchero', True, '2020-03-12'),
-- (DEFAULT, 'Panera', 6, 3.8, 'Sandwich Shop', 'Caprese Sandwich', True, '2020-03-13'),
-- (DEFAULT, 'Black Walnut Cafe', 12, 4.3, 'American', 'Chicken Waffles', False, '2020-03-14'),
-- (DEFAULT, 'Cielito Cafe', 14, 4.8, 'Mexican', 'Red Chilaquiles', False, '2020-03-15'),
-- (DEFAULT, 'Empire Cafe', 14, 4.5, 'American Cafe', 'Turkey Panini', False, '2020-03-16'),
-- (DEFAULT, 'Steak n Shake', 7, 2.8, 'Hamburger', 'Royale Cheeseburger', False, '2020-03-17'),
-- (DEFAULT, 'Another Broken Egg Cafe', 8, 4.4, 'Breakfast/Brunch', 'Eggs Benedict', False, '2020-03-18');

-- UPDATE restaurant SET name= 'Los Cocos', distance_in_miles_from_HQ= 1, stars=5, category_type_of_food= 'Mexican', 
--     favorite_dish= 'Fajita Sopes', last_time_visited= '2020-03-01' WHERE id=1;

-- UPDATE restaurant SET stars= 5 WHERE id=8;

-- UPDATE restaurant SET category_type_of_food= 'BBQ' WHERE id= 3;

--PostgreSQL Exercises
-- 1.
-- SELECT name FROM restaurant WHERE stars = 5;
-- 2.
-- SELECT favorite_dish from restaurant WHERE stars = 5;
-- 3.
-- SELECT id from restaurant WHERE name= 'Pho Saigon';
-- 4.
-- Select name from restaurant where category_type_of_food= 'BBQ';
-- 5.
-- Select name from restaurant where takeout= True;
-- 6.
-- Select name from restaurant where takeout= True AND category_type_of_food= 'BBQ';
-- 7.
-- Select name from restaurant where distance_in_miles_from_HQ < 2;
-- 8.
-- Select name from restaurant where last_time_visited < '2020-03-08'
-- 9.
-- Select name from restaurant where last_time_visited < '2020-03-08' AND stars=5;


-- Aggregation and Sorting Exercises
-- 1.
-- SELECT * FROM restaurant ORDER BY distance_in_miles_from_HQ;
-- 2.
-- SELECT * FROM restaurant ORDER BY distance_in_miles_from_HQ LIMIT 2;
-- 3.
-- SELECT * FROM restaurant ORDER BY stars DESC LIMIT 2;
-- 4.
-- SELECT * FROM restaurant WHERE distance_in_miles_from_HQ<=2 ORDER BY stars DESC LIMIT 2;
-- 5.
-- SELECT COUNT(*) FROM restaurant;
-- 6.
-- SELECT COUNT(*) FROM restaurant GROUP BY category_type_of_food;
-- 7.
-- SELECT name (AVG(stars)) AS average_stars FROM restaurant GROUP BY category_type_of_food;
-- 8.
-- SELECT MAX(stars) FROM restaurant GROUP BY category_type_of_food;