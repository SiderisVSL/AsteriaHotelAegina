SELECT
  room_type,
  ROUND(SUM(room_total_eur),2) AS sum_room_total_eur,
  SUM(DATE_DIFF(check_out, check_in, DAY)) AS total_nights,
  ROUND(SUM(room_total_eur) / SUM(DATE_DIFF(check_out, check_in, DAY)),2) AS ADR
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"
GROUP BY
  room_type

