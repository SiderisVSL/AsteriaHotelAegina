SELECT  
    booking_id, LOWER(TRIM(booking_status)), payment_method
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
    LOWER(TRIM(booking_status)) = "completed" 
  AND
    payment_method = "Not charged"