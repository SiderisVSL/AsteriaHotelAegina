SELECT
  booking_id, 
  booking_date, 
  check_in, 
  check_out,
  adults,
  children,
  nightly_rate_eur,
  room_total_eur,
  extras_total_eur,
  commission_eur,
  booking_value_eur
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE 
  booking_date IS NULL OR
  check_in IS NULL OR
  check_out IS NULL OR
  adults   IS NULL OR
  children  IS NULL OR
  nightly_rate_eur  IS NULL OR
  room_total_eur  IS NULL OR
  extras_total_eur IS NULL OR
  commission_eur  IS NULL OR
  booking_value_eur IS NULL