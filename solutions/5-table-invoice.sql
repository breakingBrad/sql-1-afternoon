-- 1: Count how many orders were made from the USA.
SELECT COUNT(*)
FROM Invoice
WHERE "BillingCountry" = 'USA';

-- 2: Find the largest order total amount
SELECT MAX(Total)
FROM Invoice;

-- 3: Find the smallest order total amount.
SELECT MIN(Total)
FROM Invoice;

-- 4: Find all orders bigger than $5.
SELECT *
FROM Invoice
WHERE Total > 5;

-- 5: Count how many orders were smaller than $5.
SELECT COUNT(*)
FROM Invoice
WHERE Total < 5;

-- 6: Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*)
FROM Invoice
WHERE "BillingState" IN ('CA', 'TX', 'AZ');

-- 7: Get the average total of the orders.
SELECT ROUND(AVG(Total),2) as "avgTotal"
FROM Invoice;

-- 8: Get the total sum of the orders.
SELECT ROUND(SUM(Total),2) as "sumTotal"
FROM Invoice;