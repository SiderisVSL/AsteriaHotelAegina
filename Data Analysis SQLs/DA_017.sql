SELECT
  ROUND(AVG(review_score),2) AS avg_review_score,
  COUNT(review_score) AS number_of_reviews
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"
