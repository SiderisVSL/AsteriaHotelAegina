SELECT
  booking_channel,
  booking_status,
  COUNT(*) AS specific_number
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
GROUP BY
  booking_channel,
  booking_status
ORDER BY
  booking_channel DESC
  