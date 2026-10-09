SELECT
  booking_id, MAX(adults) as max_adults
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
GROUP BY 
  booking_id
ORDER BY
  max_adults DESC
LIMIT
  5