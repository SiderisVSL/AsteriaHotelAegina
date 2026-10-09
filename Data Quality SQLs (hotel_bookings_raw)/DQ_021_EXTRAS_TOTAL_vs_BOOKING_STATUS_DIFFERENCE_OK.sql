SELECT
  booking_id, booking_status, extras_total_eur
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  extras_total_eur <> 0 AND (booking_status = "Cancelled" OR booking_status = "No-show")