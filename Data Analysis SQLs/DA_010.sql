SELECT
  trip_purpose,
  COUNT(*) AS total_bookings,
  ROUND(AVG(DATE_DIFF(check_out, check_in, DAY)),2) AS avg_duration,
  ROUND(AVG(booking_value_eur),2) AS avg_booking_value_eur
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"
GROUP BY
  trip_purpose