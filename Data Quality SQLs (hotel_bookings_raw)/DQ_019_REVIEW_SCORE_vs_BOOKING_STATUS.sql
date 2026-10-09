SELECT
  booking_id, review_score, booking_status
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE
  review_score IS NOT NULL AND booking_status <> "Completed"
