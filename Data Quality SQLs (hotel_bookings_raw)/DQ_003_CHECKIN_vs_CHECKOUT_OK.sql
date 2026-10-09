SELECT
  booking_id, booking_date, check_in, check_out
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE 
  check_in >= check_out