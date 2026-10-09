SELECT
  booking_id, booking_date, check_in
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE 
  booking_date >= check_in