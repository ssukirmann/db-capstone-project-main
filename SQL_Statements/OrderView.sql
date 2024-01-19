CREATE VIEW `OrdersView` AS SELECT o.OrderID, o.Quantity, m.Price, m.ItemName FROM Orders AS o
LEFT JOIN Menus as m ON 
o.MenuID = m.MenuID;
