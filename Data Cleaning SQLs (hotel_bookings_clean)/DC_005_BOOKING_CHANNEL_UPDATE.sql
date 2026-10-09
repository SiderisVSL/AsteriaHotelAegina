UPDATE
  `Asteria_Boutique_Hotel.hotel_bookings_clean`
SET
  booking_channel = CASE LOWER(TRIM(booking_channel))
    WHEN "booking.com" THEN "Booking.com"
    WHEN "direct" THEN "Direct"
    WHEN "expedia" THEN "Expedia"
    WHEN  "travel agency" THEN "Travel Agency"
    ELSE booking_channel
  END
WHERE TRUE