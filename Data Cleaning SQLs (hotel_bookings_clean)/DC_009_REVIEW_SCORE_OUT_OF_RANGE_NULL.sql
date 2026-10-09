UPDATE
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
SET
  review_score = NULL
WHERE
  review_score < 1 OR review_score > 10