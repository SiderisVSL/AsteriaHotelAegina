SELECT
  COUNT(*) AS missing_countries_rows
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  guest_country IS NULL
