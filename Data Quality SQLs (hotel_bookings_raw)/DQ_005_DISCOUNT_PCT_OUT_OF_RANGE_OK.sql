SELECT
  discount_pct
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  discount_pct < 0 OR discount_pct > 100