-- 1: Create a table called Person that records a person's ID, Name, Age, Height ( in cm ), City, FavoriteColor. 
CREATE TABLE "Person" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" STRING,
  "age" INTEGER,
  "height" INTEGER,
  "city" STRING,
  "favoriteColor" STRING
);

-- 2: ID should be an auto-incrementing id/primary key - Use type: INTEGER PRIMARY KEY AUTOINCREMENT 
-- 3: Add 5 different people into the Person database. 
INSERT INTO Person (name, age, height, city, favoriteColor) VALUES ('Bob', 20, 182, 'Provo', 'Blue');
INSERT INTO Person (name, age, height, city, favoriteColor) VALUES ('Tom', 25, 178, 'Salt Lake City', 'Brown');
INSERT INTO Person (name, age, height, city, favoriteColor) VALUES ('Jorge', 52, 176, 'Pleasant Grove', 'Red');
INSERT INTO Person (name, age, height, city, favoriteColor) VALUES ('Augustus', 19, 150, 'Salem', 'Yellow');
INSERT INTO Person (name, age, height, city, favoriteColor) VALUES ('Arnold', 31, 180, 'Orem', 'Orange');

-- 4: Remember to not include the ID because it should auto-increment. 
-- 5: List all the people in the Person table by Height from tallest to shortest. 
SELECT * FROM Person
ORDER BY height DESC;

-- 6: List all the people in the Person table by Height from shortest to tallest. 
SELECT * FROM Person
ORDER BY height ASC;

-- 7: List all the people in the Person table by Age from oldest to youngest. 
SELECT * FROM Person
ORDER BY age DESC;

-- 8: List all the people in the Person table older than age 20. 
SELECT * FROM Person
WHERE age > 20;

-- 9: List all the people in the Person table that are exactly 18. 
SELECT * FROM Person
WHERE age = 18;

-- 10: List all the people in the Person table that are less than 20 and older than 30. 
SELECT * FROM Person
WHERE age < 20
AND age > 30;

-- 11: List all the people in the Person table that are not 27 (Use not equals). 
SELECT * FROM Person
WHERE age != 27;

-- 12: List all the people in the Person table where their favorite color is not red. 
SELECT * FROM Person
WHERE "favoriteColor" != 'Red';

-- 13: List all the people in the Person table where their favorite color is not red and is not blue. 
SELECT * FROM Person
WHERE "favoriteColor" NOT IN ('Red', 'Blue');

-- 14: List all the people in the Person table where their favorite color is orange or green. 
SELECT * FROM Person
WHERE "favoriteColor" IN ('Orange', 'Green');

-- 15: List all the people in the Person table where their favorite color is orange, green or blue (use IN). 
SELECT * FROM Person
WHERE "favoriteColor" IN ('Orange', 'Green', 'Blue');

-- 16: List all the people in the Person table where their favorite color is yellow or purple (use IN). 
SELECT * FROM Person
WHERE "favoriteColor" IN ('Yellow', 'Purple');