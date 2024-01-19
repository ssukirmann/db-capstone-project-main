CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(IN date DATE, IN table_no INT)
BEGIN
	DECLARE res BOOLEAN;
    
    SELECT COUNT(*) INTO res
    FROM Bookings
    WHERE BookingDate = date AND TableNumber = table_no;
    
    IF res THEN
		ROLLBACK;
        SELECT CONCAT("Booking declined. The table", table_no, " is already booked on this date ", date) AS "Booking Message";
	ELSE
		COMMIT;
        SELECT "Booking successfully added" AS "Booking Message";
    END IF;
END