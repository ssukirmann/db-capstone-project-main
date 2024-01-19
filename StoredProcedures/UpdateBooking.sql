CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`(IN booking_id INT, IN b_date DATE)
BEGIN
	UPDATE Bookings
    SET BookingDate = b_date
    WHERE BookingID = booking_id;
    
    SELECT "Booking updated successfully." AS Status;
END