SELECT
  booking_id, LOWER(TRIM(booking_channel)), commission_pct
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  commission_pct <> 0 AND LOWER(TRIM(booking_channel)) = "direct"
