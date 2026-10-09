SELECT
  COUNT(*) completed_bookings,
  EXTRACT(YEAR FROM check_in) as arrival_year,
  EXTRACT(MONTH FROM check_in) as arrival_month
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"
GROUP BY
  arrival_year, arrival_month
ORDER BY
  arrival_month

