#Delete data from indicated table, sets auto increment to 1
#There was a few scenarios where I had to completely wipe the dataset due to an error and reset the auto-increment count to 1. 
#Replace the table name after "DELETE FROM" and "ALTER TABLE."

DELETE FROM Delivery;

ALTER TABLE Delivery AUTO_INCREMENT = 1;
