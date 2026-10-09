SELECT
  review_score
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  review_score < 1 OR review_score > 10