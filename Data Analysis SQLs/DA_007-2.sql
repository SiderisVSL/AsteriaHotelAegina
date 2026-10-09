SELECT
  room_type,
  trip_purpose,
  ROUND(AVG(DATE_DIFF(check_out, check_in, DAY)),2) AS avg_overnights
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"
GROUP BY
room_type, trip_purpose