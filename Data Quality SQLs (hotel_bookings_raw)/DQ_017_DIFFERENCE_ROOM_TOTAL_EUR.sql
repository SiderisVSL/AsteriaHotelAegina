SELECT
  booking_id, 
  room_total_eur, 
  ROUND(DATE_DIFF(check_out, check_in, DAY) * nightly_rate_eur * (1 - discount_pct/100), 2) as expected_room_total_eur,
  ROUND(DATE_DIFF(check_out, check_in, DAY) * nightly_rate_eur * (1 - discount_pct/100), 2) - room_total_eur AS difference_total_eur
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE  
  ROUND(DATE_DIFF(check_out, check_in, DAY) * nightly_rate_eur * (1 - discount_pct/100), 2) <> ROUND(room_total_eur, 2)
ORDER BY
  difference_total_eur ASC

