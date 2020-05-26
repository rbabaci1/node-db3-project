SELECT
  O.Id as "Order Id",
  CompanyName as "Customer's Company Name",
  LastName as "Employee's Last Name"
FROM [Order] as O
JOIN Customer as C ON O.CustomerId = C.Id
JOIN Employee as E ON O.EmployeeId = E.Id;