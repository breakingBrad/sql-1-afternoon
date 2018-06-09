-- 1: Add 3 new Artists to the Artist table. ( It's already created )
INSERT INTO Artist ("Name" ) VALUES ('The Flaming Lips');
INSERT INTO Artist ("Name" ) VALUES ('Ben Folds');
INSERT INTO Artist ("Name" ) VALUES ('Peelander Z');

-- 2: Select 10 artists in reverse alphabetical order.
SELECT * FROM Artist
ORDER BY "Name" DESC
LIMIT 10;

-- 3: Select 5 artists in alphabetical order.
SELECT * FROM Artist
ORDER BY "Name" ASC
LIMIT 5;

-- 4: Select all artists that start with the word "Black".
SELECT * FROM Artist
WHERE "Name" LIKE 'Black%';

-- 5: Select all artists that contain the word "Black".
SELECT * FROM Artist
WHERE "Name" LIKE '%Black%';