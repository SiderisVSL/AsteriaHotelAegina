UPDATE
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
SET
  guest_country = UPPER(TRIM(guest_country))
WHERE
  TRUE