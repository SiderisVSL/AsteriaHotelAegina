SELECT
  booking_id, 
  guest_id,
  booking_status,
  booking_channel,
  room_type,
  trip_purpose,
  payment_method
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  booking_id IS NULL OR 
  guest_id IS NULL OR
  booking_status IS NULL OR
  booking_channel IS NULL OR
  room_type IS NULL OR
  trip_purpose IS NULL OR
  payment_method IS NULL