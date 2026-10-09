SELECT
  booking_id, 
  guest_id,
  booking_status,
  booking_channel,
  room_type,
  trip_purpose,
  payment_method,
  guest_country
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  TRIM(booking_id) = "" OR
  TRIM(guest_id) = "" OR 
  TRIM(booking_status) = "" OR 
  TRIM(booking_channel) = "" OR 
  TRIM(room_type) = "" OR 
  TRIM(trip_purpose) = "" OR 
  TRIM(payment_method) = "" OR
  TRIM(guest_country) = "" 