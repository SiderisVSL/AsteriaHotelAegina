SELECT
  inventory_date, room_type, count(*) AS times_found
FROM
  `Asteria_Boutique_Hotel.daily_room_inventory`
GROUP BY
  inventory_date, room_type
HAVING times_found > 1