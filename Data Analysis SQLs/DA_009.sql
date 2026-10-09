SELECT
  guest_country,
  COUNT(*) AS country_bookings
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"
GROUP BY
  guest_country
ORDER BY
  country_bookings DESC