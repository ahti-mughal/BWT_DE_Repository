--1 

select P_Name from Product
where P_ID in
(select P_ID from [Order Details] 
 group by P_ID
 having sum(Quantity) > 50)
 ORDER BY P_Name;


--2 
SELECT P_Name
FROM Product
WHERE P_ID IN (
    SELECT DISTINCT P_ID
    FROM [Order Details]
);


--3

CREATE VIEW revenue AS
SELECT c.C_Name, SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalRevenue
FROM Categories c
JOIN Product p ON c.CategoryID = p.CategoryID
JOIN [Order Details] od ON p.P_ID = od.P_ID
GROUP BY c.C_Name
ORDER BY TotalRevenue DESC;