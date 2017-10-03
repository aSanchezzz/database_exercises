-- CREATE TABLE restaurant (
-- 	id SERIAL NOT NULL PRIMARY KEY,
-- 	name VARCHAR,
-- 	distance_frm_hq INTEGER,
-- 	stars INTEGER,
-- 	category VARCHAR,
-- 	favorite_dish VARCHAR,
-- 	takeout BOOLEAN,
-- 	last_visit DATE
--  );

-- -- Insert data into 'restaurant' table

-- INSERT INTO restaurant VALUES(DEFAULT, 'Mama Olgas', '10', '5', 'Russian', 'Borscht', TRUE, '2017-04-20');
-- INSERT INTO restaurant VALUES(DEFAULT, 'PhoSho', '17', '3', 'Vietnamese', 'Pho', FALSE, '2016-08-25');
-- INSERT INTO restaurant VALUES(DEFAULT, 'Uncle Toms', '3', '4', 'Southern', 'Brisket', FALSE, '2013-10-26');
-- INSERT INTO restaurant VALUES(DEFAULT, 'DiCocos', '22', '5', 'Italian', 'Spaghetti', TRUE, '2017-11-05');
-- INSERT INTO restaurant VALUES(DEFAULT, 'Pizza Planet', '122', '3', 'Pizza', 'Da Greasy One', TRUE, '2016-05-27');
-- INSERT INTO restaurant VALUES(DEFAULT, 'Le Chat', '45', '2', 'French', 'Escargot', FALSE, '2013-06-16');
-- INSERT INTO restaurant VALUES(DEFAULT, 'Samba Janeiro', '32', '1', 'Brasilian', 'Plantain Salad', FALSE, '2016-12-01');
-- INSERT INTO restaurant VALUES(DEFAULT, 'El Microbio', '2', '4', 'Spanish', 'Tapas', FALSE, '2017-03-23');
-- INSERT INTO restaurant VALUES(DEFAULT, 'Los Bayuncos', '19', '5', 'Honduran', 'Balliadas', TRUE, '2017-10-03');
-- INSERT INTO restaurant VALUES(DEFAULT, 'Gatos Perdidos', '56', '4', 'Mexican', 'Caldo de Mariscos', TRUE, '2015-09-11');

-- Postgresql Exercises
-- 1.

SELECT name FROM restaurant WHERE stars=5;

-- 2.

SELECT favorite_dish FROM restaurant WHERE stars=5;

-- 3.

SELECT id FROM restaurant WHERE name LIKE '%Gatos Perdidos%';

-- 4.

SELECT name FROM restaurant WHERE category LIKE '%Southern%';

-- 5.

SELECT name FROM restaurant WHERE takeout=TRUE;

-- 6.

SELECT name FROM restaurant WHERE category LIKE '%Southern%' AND takeout=TRUE;

-- 7.

SELECT name FROM restaurant WHERE distance_frm_hq<=2;

-- 8.

SELECT name FROM restaurant WHERE last_visit < '2017-09-27';

-- 9.

SELECT name FROM restaurant WHERE last_visit < '2017-09-27' AND stars=5;

-- Aggregation Exercises

-- 1.

SELECT name, distance_frm_hq FROM restaurant ORDER BY distance_frm_hq;

-- 2.

SELECT name, distance_frm_hq, stars FROM restaurant ORDER BY distance_frm_hq LIMIT 2;

-- 3.

SELECT name, distance_frm_hq, stars FROM restaurant ORDER BY stars DESC LIMIT 2;

-- 4. No restaurants less than 2 miles away, but this works for the closest ones

SELECT name, distance_frm_hq, stars FROM restaurant ORDER BY distance_frm_hq LIMIT 2;

-- 5.

SELECT COUNT(*) FROM restaurant;

-- 6.

SELECT COUNT(category) FROM restaurant;

-- 7.

SELECT category, AVG(stars) AS average_stars FROM restaurant GROUP BY category;

-- 8.

SELECT category, MAX(stars) AS max_stars FROM restaurant GROUP BY category;