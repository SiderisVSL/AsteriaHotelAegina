SELECT
  booking_channel,
  booking_status,
  ROUND(AVG(DATE_DIFF(check_in, booking_date, DAY)),2) AS avg_lead_time_days
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
GROUP BY
  booking_channel,
  booking_status
