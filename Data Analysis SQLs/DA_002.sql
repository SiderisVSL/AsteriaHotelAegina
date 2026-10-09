SELECT
  booking_channel,
  COUNT(*) AS sum_booking_channel,
  ROUND((COUNT(*) / 3000 * 100),2) AS booking_channel_pct
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
GROUP BY
  booking_channel