SELECT
  booking_id, discount_pct, commission_pct
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  discount_pct IS NULL OR commission_pct IS NULL
