SELECT
  booking_status,
  COUNT(*) AS sum_booking_status,
  ROUND((COUNT(*) / 3000 * 100), 2) AS booking_status_pct
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
GROUP BY
  booking_status