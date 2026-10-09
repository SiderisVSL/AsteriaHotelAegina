SELECT
  booking_id, room_type, adults, children
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  room_type = "Single" AND (adults <> 1 OR children <> 0)