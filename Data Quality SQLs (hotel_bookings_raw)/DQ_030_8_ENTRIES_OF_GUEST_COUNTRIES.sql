SELECT
  booking_id, guest_country
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  guest_country IS NULL
