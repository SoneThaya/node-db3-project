-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT  "ProductName", "CategoryName" 
FROM Product AS p
JOIN Category as c
ON p.CategoryId = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, CompanyName
FROM "Order" AS o
JOIN "Shipper" AS s
ON o.ShipVia = s.Id
WHERE "OrderDate" < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity
FROM "Product" AS P
JOIN "OrderDetail" AS o
ON p.id = o.ProductId
WHERE o.OrderId = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Id Orderid, CompanyName, LastName
FROM "Order" AS o
JOIN "Customer" AS c ON o.CustomerId = c.Id
JOIN "Employee" AS e ON o.EmployeeId = e.Id