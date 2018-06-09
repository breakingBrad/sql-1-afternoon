-- 1: Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity.
CREATE TABLE "Orders" (
  "personId" INTEGER,
  "productName" STRING,
  "productPrice" INTEGER,
  "quantity" INTEGER
);
-- 2: Add 5 Orders to the Orders table.
INSERT INTO Orders ("personId", "productName", "productPrice", quantity ) VALUES (1, 'product number 1', 10, 2);
INSERT INTO Orders ("personId", "productName", "productPrice", quantity ) VALUES (1, 'product number 1', 10, 2);
INSERT INTO Orders ("personId", "productName", "productPrice", quantity ) VALUES (2, 'product number 2', 15, 1);
INSERT INTO Orders ("personId", "productName", "productPrice", quantity ) VALUES (2, 'product number 1', 10, 2);
INSERT INTO Orders ("personId", "productName", "productPrice", quantity ) VALUES (1, 'product number 2', 15, 3);

-- 3: Make orders for at least two different people.
-- 4: PersonID should be different for different people.
-- 5: Select all the records from the Orders table.
SELECT * FROM Orders;
-- 6: Calculate the total number of products ordered.
SELECT SUM(quantity) as "totalProductsOrdered"
FROM Orders;
-- 7: Calculate the total order price.
SELECT SUM(productPrice * quantity) as "totalOrderPrice"
FROM Orders;
-- 8: Calculate the total order price by a single PersonID.
SELECT "personId", SUM(productPrice * quantity) as "totalOrderPrice"
FROM Orders
WHERE "personId" = 1
GROUP BY "personId";