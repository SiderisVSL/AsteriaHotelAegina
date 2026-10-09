SELECT
  booking_id, LOWER(TRIM(booking_status)), payment_method
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  (
    payment_method = "Bank Transfer" 
    OR payment_method = "Card"
    OR payment_method = "Cash"
    )
  AND
   (
   LOWER(TRIM(booking_status)) = "cancelled"
   OR LOWER(TRIM(booking_status)) = "no-show"
   ) 