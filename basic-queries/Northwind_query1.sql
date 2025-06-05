-- 1.
-- use northwind;
-- 2. 
SELECT 
ProductID,
ProductName,
UnitPrice 
FROM Products;
-- 3. 
SELECT 
    ProductID,
    ProductName,
    UnitPrice
FROM products
ORDER BY UnitPrice ASC;
-- 4. 
SELECT 
    ProductID,
    ProductName,
    UnitPrice
FROM products
ORDER BY UnitPrice ASC;
-- 5. 
SELECT 
    ProductID,
    ProductName,
    UnitPrice,
    UnitsInStock
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;
-- 6. 
SELECT 
    ProductID,
    ProductName,
    UnitPrice,
    UnitsInStock
FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;
-- 7. 
SELECT 
    ProductID,
    ProductName,
    UnitsInStock,
    UnitsOnOrder
FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1
ORDER BY ProductName ASC;

-- 8. 
-- The table Name is Categories

-- 9.
SELECT * FROM categories;

-- 10.
SELECT 
ProductID,
ProductName,
CategoryID,
UnitPrice
FROM Products
WHERE CategoryID = 8;

-- 11.
SELECT
FirstName,
LastName
FROM employees;

-- 12. 
SELECT
EmployeeID,
FirstName,
LastName,
Title
FROM employees
WHERE Title LIKE '%Manager%';

-- 13. 
SELECT DISTINCT Title
FROM employees
ORDER BY Title;

-- 14. 
SELECT
EmployeeID,
FirstName,
LastName,
Title,
Salary
FROM employees
WHERE Salary BETWEEN 2000 AND 2500;

-- 15. 
SELECT * FROM suppliers;

-- 16. 
SELECT 
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    s.CompanyName
FROM products p
JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE s.CompanyName = 'Tokyo Traders';