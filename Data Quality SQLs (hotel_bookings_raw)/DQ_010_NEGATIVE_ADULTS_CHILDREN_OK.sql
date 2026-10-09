SELECT
  booking_id, adults, children
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  adults < 0 OR children < 0