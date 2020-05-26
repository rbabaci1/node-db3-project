SELECT
  ProductName,
  Quantity
FROM [OrderDetail] as OD
JOIN Product as P ON OD.ProductId = P.Id
WHERE
  OrderId = 10251
ORDER BY
  ProductName;