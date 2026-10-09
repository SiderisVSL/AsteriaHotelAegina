UPDATE
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
SET trip_purpose = CASE LOWER(TRIM(trip_purpose))
  WHEN "business" THEN "Business"
  WHEN "leisure" THEN "Leisure"
  ELSE trip_purpose
END
WHERE TRUE