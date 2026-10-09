SELECT
  room_type,
  COUNT(*) AS total_overnight_stays
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"
GROUP BY
  room_type
ORDER BY
  room_type