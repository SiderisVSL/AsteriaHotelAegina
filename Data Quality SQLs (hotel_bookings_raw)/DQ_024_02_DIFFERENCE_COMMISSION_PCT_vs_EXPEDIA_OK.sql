SELECT
  booking_id, commission_eur, commission_pct, LOWER(TRIM(booking_channel))
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  commission_pct <> 18 AND LOWER(TRIM(booking_channel)) = "expedia"