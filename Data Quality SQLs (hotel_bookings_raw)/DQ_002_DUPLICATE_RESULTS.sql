SELECT
  booking_id, COUNT(booking_id) AS booking_id_duplicates
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
GROUP BY
  booking_id
HAVING
  booking_id_duplicates > 1