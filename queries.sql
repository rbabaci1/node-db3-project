-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT
  ProductName,
  CategoryName
FROM Product as P
JOIN Category as C ON P.CategoryId = C.id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT
  Id,
  ShipName
FROM [ORDER]
WHERE
  OrderDate < "2012-08-09";
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT
  ProductName,
  Quantity
FROM [OrderDetail] as OD
JOIN Product as P ON OD.ProductId = P.Id
WHERE
  OrderId = 10251
ORDER BY
  ProductName;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT
  O.Id as "Order Id",
  CompanyName as "Customer's Company Name",
  LastName as "Employee's Last Name"
FROM [Order] as O
JOIN Customer as C ON O.CustomerId = C.Id
JOIN Employee as E ON O.EmployeeId = E.Id;
-- ******************  Stretch  ******************
  -- Displays CategoryName and a new column called Count that shows how many products are in each category.Shows 8 records.
SELECT
  CategoryName,
  Count(C.CategoryID) as "Count"
FROM Products as P
JOIN Categories as C ON P.CategoryID = C.CategoryID
GROUP BY
  CategoryName;
--Display OrderID and a column called ItemCount that shows the total number of products placed on the order.Shows 196 records.
SELECT
  OrderID,
  COUNT(P.ProductID) as "ItemCount"
FROM OrderDetails as O
JOIN Products as P ON O.ProductID = P.ProductID
GROUP BY
  OrderID;