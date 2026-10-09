SELECT
  nightly_rate_eur, room_total_eur, extras_total_eur, commission_eur, booking_value_eur
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE 
  nightly_rate_eur < 0 OR
  room_total_eur < 0 OR
  extras_total_eur < 0 OR
  commission_eur < 0 OR
  booking_value_eur < 0