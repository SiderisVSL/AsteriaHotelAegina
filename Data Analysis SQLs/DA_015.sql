SELECT
  room_type,
  EXTRACT(YEAR FROM inventory_date) AS year,
  EXTRACT(MONTH FROM inventory_date) AS month,
  SUM(available_rooms) AS available_room_nights
FROM
  `Asteria_Boutique_Hotel.daily_room_inventory`
GROUP BY
  year, month, room_type