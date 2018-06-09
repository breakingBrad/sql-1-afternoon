-- 1: List all Employee first and last names only that live in Calgary.
SELECT "FirstName", "LastName"
FROM Employee
WHERE City = 'Calgary';

-- 2: Find the first and last name and birthdate for the youngest employee.
SELECT "FirstName", "LastName", "BirthDate"
FROM Employee
ORDER BY "BirthDate" DESC
LIMIT 1;

-- 3: Find the first and last name and birthdate for the oldest employee.
SELECT "FirstName", "LastName", "BirthDate"
FROM Employee
ORDER BY "BirthDate" ASC
LIMIT 1;

-- 4: Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
SELECT *
FROM Employee
WHERE "ReportsTo" = 2;

-- 5: You will need to query the employee table to find the Id for Nancy Edwards
-- 6: Count how many people live in Lethbridge.
SELECT "FirstName", "LastName"
FROM Employee
WHERE City = 'Lethbridge';