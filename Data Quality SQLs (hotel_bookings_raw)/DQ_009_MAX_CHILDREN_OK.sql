SELECT
  booking_id, MAX(children) as max_children
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
GROUP BY 
  booking_id
ORDER BY
  max_children DESC
LIMIT
  5