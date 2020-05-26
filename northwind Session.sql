SELECT
  ProductName,
  CategoryName
FROM Product as P
JOIN Category as C ON P.CategoryId = C.id;