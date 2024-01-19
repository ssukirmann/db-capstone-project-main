CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(IN booking_id INT)
BEGIN
	DELETE FROM Bookings
    WHERE BookingID = booking_id;
    SELECT "Booking ", booking_id, " is cancelled" AS Confirmation;
END