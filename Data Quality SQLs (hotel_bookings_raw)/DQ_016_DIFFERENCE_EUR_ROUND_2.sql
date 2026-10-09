SELECT
  booking_id, room_total_eur, extras_total_eur, booking_value_eur, room_total_eur + extras_total_eur - booking_value_eur as difference_eur
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  ROUND (room_total_eur + extras_total_eur - booking_value_eur, 2) <> 0
ORDER BY
  difference_eur DESC