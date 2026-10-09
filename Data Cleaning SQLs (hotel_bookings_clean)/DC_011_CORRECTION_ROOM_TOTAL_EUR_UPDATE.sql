UPDATE
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
SET
  room_total_eur = ROUND(booking_value_eur - extras_total_eur, 2)
WHERE
  ROUND(room_total_eur + extras_total_eur - booking_value_eur, 2) = 25