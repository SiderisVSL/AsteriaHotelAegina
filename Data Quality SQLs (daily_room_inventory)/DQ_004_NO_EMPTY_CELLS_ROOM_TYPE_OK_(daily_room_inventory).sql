SELECT
  inventory_date, 
  room_type, 
FROM
  `Asteria_Boutique_Hotel.daily_room_inventory`
WHERE
  TRIM(room_type) = ""