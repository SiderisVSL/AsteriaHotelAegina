SELECT
  booking_channel,
  COUNT(*) AS total_bookings_per_channel,
  ROUND((COUNTIF(booking_status = "Cancelled") / COUNT(*) * 100),2) AS cancelled_pct,
  ROUND((COUNTIF(booking_status = "No-show")  / COUNT(*) * 100),2) AS no_show_pct
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
GROUP BY
  booking_channel
