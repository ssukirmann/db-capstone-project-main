CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(IN booking_id INT, IN customer INT, IN b_date DATE, IN table_no INT)
BEGIN
	INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNumber)
    VALUES (booking_id, customer, b_date, table_no);
    SELECT "New booking added" AS "Confirmation";
END