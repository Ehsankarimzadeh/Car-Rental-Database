USE carRental;
Go

CREATE FUNCTION GetReservationCount (@pID INT)
RETURNS INT
AS
BEGIN
    DECLARE @reservationCount INT
    
    SELECT @reservationCount = COUNT(*)
    FROM reserve
    WHERE pID = @pID
    
    RETURN @reservationCount
END

