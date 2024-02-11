/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT Products.name, Categories.name
FROM Products
Join Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.name = 'computers';

 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT products.name, products.price, reviews.rating
 FROM Products
 JOIN reviews on products.productID = reviews.ProductID
 WHERE reviews.rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT Employees.FirstName, Employees.LastName, SUM(sales.quantity) AS "Total Sales"
From Employees JOIN Sales ON employees.EmployeeID = sales.EmployeeID
GROUP BY Employees.employeeID;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT  categories.name AS "Category", departments.name AS "Department"
From Departments Join Categories on departments.departmentID = categories.departmentID
Where categories.name like "%game%" OR categories.name like "%applia%";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT products.name, SUM(sales.quantity) AS "Total Sold", SUM(products.price * sales.quantity) AS total 
 FROM Products JOIN Sales on products.productID = sales.productID
 Where products.name LIKE "%Eagles: Hotel%" GROUP BY products.name;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT products.name, reviews.reviewer, reviews.rating, reviews.comment
FROM Products JOIN Reviews on products.productID = reviews.productID
WHERE products.name LIKE "Visio%" 
AND reviews.rating = (SELECT MIN(rating) from reviews);


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */