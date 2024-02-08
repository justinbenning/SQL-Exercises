SELECT * FROM Products; -- find all products

SELECT * FROM Products WHERE Price LIKE'1400%'; -- find all products that cost $1400

SELECT * FROM Products WHERE Price = '11.99' or Price ='13.99'; -- find all products that cost $11.99 or $13.99

SELECT * FROM Products WHERE Price != '11.99';-- find all products that do NOT cost 11.99 - using NOT

SELECT * FROM Products ORDER BY Price desc; -- find all products and sort them by price from greatest to least

SELECT * FROM Products WHERE Name = null; -- find all employees who don't have a middle initial

SELECT DISTINCT Price FROM Products; -- find distinct product prices

SELECT * FROM Employees WHERE FirstName LIKE 'j%';-- find all employees whose first name starts with the letter ‘j’

SELECT * FROM Products Where Name LIKE '%macbook%'; -- find all Macbooks

SELECT * FROM Products WHERE OnSale = 1; -- find all products that are on sale

SELECT AVG(Price) from Products; -- find the average price of all products

SELECT * FROM Employees WHERE Title = 'Geek Squad' AND MiddleInitial IS null; -- find all Geek Squad employees who don't have a middle initial

SELECT * FROM Products WHERE StockLevel BETWEEN 499 AND 1201 ORDER BY Price; -- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword