SELECT
  booking_id, 
  commission_eur, 
  ROUND(room_total_eur * commission_pct / 100, 2) AS expected_commission,
  (ROUND(room_total_eur * commission_pct / 100, 2) - commission_eur) as difference_commission_eur 
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  commission_eur <> ROUND(room_total_eur * commission_pct / 100, 2)
ORDER BY
  difference_commission_eur DESC