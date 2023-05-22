--1
select top 10 P_Name from Product
where UnitsInStock > (select AVG(UnitsInStock) from Product)

select *
from Product
where UnitPrice > (
  select AVG(UnitPrice)
  from Product
);

--2
SELECT F_Name,L_Name FROM Employees
WHERE ReportsTo IN (
  SELECT Emp_ID FROM Employees
  WHERE Title = (
    SELECT Title FROM Employees
    WHERE Emp_ID = reportsTo
  )
);

SELECT C_Name
FROM Customer
WHERE NOT EXISTS (
  SELECT *
  FROM Order
  WHERE Order.C_ID = Customer.C_ID
);

--3

SELECT P_Name FROM Product
WHERE P_ID IN (
  SELECT P_ID FROM [Order Details]
  WHERE O_ID IN (
    SELECT O_ID FROM Order
    WHERE C_ID IN (
      SELECT C_ID FROM Customer
      WHERE Country = 'UK'
    )
  )
);


--4
SELECT *
FROM Product P
WHERE UnitPrice > (
  SELECT AVG(UnitPrice)
  FROM Product
  WHERE Cat_ID = P.Cat_ID
);
--5

CREATE INDEX idx_EmpID ON Employees(Emp_ID);

ALTER INDEX idx_Dpt ON Employees ADD Department;

DROP INDEX idx_Emp ON Employees;

--6

SELECT * FROM Employees WITH(INDEX(idx_EmpID) WHERE Emp_ID = 10;


--7 
CREATE VIEW view AS
SELECT P_ID, P_Name, C_Name, Supp_Name
FROM Product
JOIN Categories ON Product.C_ID = Categories.C_ID
JOIN Suppliers ON Product.Supp_ID = Suppliers.Supp_ID;


--8
ALTER VIEW view
AS
SELECT P_ID, P_Name, C_Name, Supp_Name, UnitsInStock
FROM Product
JOIN Categories ON Product.C_ID = Categories.CategoryID
JOIN Suppliers ON Product.Supp_ID = Suppliers.Supp_ID;


--9
DROP VIEW view;












