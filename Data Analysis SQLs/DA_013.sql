SELECT
  booking_channel,
  ROUND(SUM(booking_value_eur),2) AS total_booking_value_eur,
  ROUND(SUM(commission_eur),2) AS total_commission,
  ROUND((ROUND(SUM(booking_value_eur),2) - ROUND(SUM(commission_eur),2)),2) AS difference_without_commission
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"
GROUP BY
  booking_channel
ORDER BY
  total_booking_value_eur DESC