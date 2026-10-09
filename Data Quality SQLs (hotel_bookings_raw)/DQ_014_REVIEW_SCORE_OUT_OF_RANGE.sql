SELECT
  booking_id, review_score
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_raw`
WHERE review_score < 1 OR review_score > 10