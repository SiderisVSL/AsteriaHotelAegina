SELECT
  SUM(room_total_eur) AS total_room_income,
  SUM(extras_total_eur) AS total_extras_income,
  (SUM(room_total_eur) + SUM(extras_total_eur)) AS total_income
FROM
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
WHERE
  booking_status = "Completed"