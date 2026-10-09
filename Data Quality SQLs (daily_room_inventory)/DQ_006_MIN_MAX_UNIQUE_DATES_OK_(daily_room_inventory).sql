SELECT
  room_type,
  MIN(inventory_date) AS min_date,
  MAX(inventory_date) AS max_date,
  COUNT(DISTINCT(inventory_date)) AS unique_dates
FROM
  `Asteria_Boutique_Hotel.daily_room_inventory`
GROUP BY
  room_type