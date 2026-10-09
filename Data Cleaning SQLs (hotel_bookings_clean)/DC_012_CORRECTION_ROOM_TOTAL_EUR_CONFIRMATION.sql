SELECT
  booking_id,
  room_total_eur,
  extras_total_eur,
  booking_value_eur
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  ROUND(room_total_eur + extras_total_eur - booking_value_eur, 2) <> 0