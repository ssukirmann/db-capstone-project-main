## Remove /* before and after code block to utilize
USE LittleLemon;

LOAD DATA LOCAL INFILE '/Users/zhen/Documents/MetaDB/db-capstone-project/Data/LittleLemon_Data - Address.csv' 
INTO TABLE Address
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(City, Country, PostalCode, CountryCode);  -- If your CSV file has a header row, use IGNORE 1 ROWS to skip it

LOAD DATA LOCAL INFILE '/Users/zhen/Documents/MetaDB/db-capstone-project/Data/LittleLemon_Data - Customers.csv' 
INTO TABLE Customers
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(FirstName, LastName, AddressID);  -- If your CSV file has a header row, use IGNORE 1 ROWS to skip it

LOAD DATA LOCAL INFILE '/Users/zhen/Documents/MetaDB/db-capstone-project/Data/LittleLemon_Data - MenuItems.csv' 
INTO TABLE MenuItems
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(CourseName, StarterName, DessertName, DrinkName, SideName);  -- If your CSV file has a header row, use IGNORE 1 ROWS to skip it

LOAD DATA LOCAL INFILE '/Users/zhen/Documents/MetaDB/db-capstone-project/Data/LittleLemon_Data - Menu.csv' 
INTO TABLE Menu
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(Cuisine, MenuItemID);  -- If your CSV file has a header row, use IGNORE 1 ROWS to skip it

LOAD DATA LOCAL INFILE '/Users/zhen/Documents/MetaDB/db-capstone-project/Data/LittleLemon_Data - Delivery.csv' 
INTO TABLE Delivery
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(DeliveryDate, DeliveryCost);  -- If your CSV file has a header row, use IGNORE 1 ROWS to skip it

LOAD DATA LOCAL INFILE '/Users/zhen/Documents/MetaDB/db-capstone-project/Data/LittleLemon_Data - Orders.csv' 
INTO TABLE Orders
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(Quantity, Sales, Cost, Discount, OrderDate, CustomerID, MenuID, DeliveryID);  -- If your CSV file has a header row, use IGNORE 1 ROWS to skip it


