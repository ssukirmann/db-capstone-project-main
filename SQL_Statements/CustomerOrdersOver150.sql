SELECT c.CustomerID, CONCAT(c.FirstName, " ", c.LastName) AS FullName, o.OrdersID, o.Cost, m.Cuisine, mi.CourseName, mi.StarterName FROM Orders AS o
LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID
LEFT JOIN Menu AS m ON o.MenuID = m.MenuID
JOIN MenuItems AS mi ON m.MenuItemID = mi.MenuItemID
WHERE o.Cost >= 150
ORDER BY o.Cost ASC;