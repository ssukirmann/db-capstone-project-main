CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(IN booking_date DATE, IN table_no INT)
BEGIN
	DECLARE check_res BOOLEAN;
    
	SELECT COUNT(*) INTO check_res 
    FROM Bookings 
    WHERE BookingDate = booking_date AND TableNumber = table_no;
    
    IF check_res THEN
		SELECT CONCAT('Table ', table_no, ' is already booked on ', booking_date) AS "Booking Status";
	ELSE
		SELECT CONCAT('Table ', table_no, ' is available on ', booking_date) AS "Booking Status";
	END IF;
END