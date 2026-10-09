SELECT
  EXTRACT(YEAR FROM check_in) AS arrival_year,
  EXTRACT(MONTH FROM check_in) AS arrival_month,
  ROUND(SUM(booking_value_eur),2) AS total_booking_value_eur
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"
GROUP BY
  arrival_year, arrival_month
ORDER BY
  arrival_year, arrival_month