SELECT
  inventory_date, 
  room_type, 
  total_rooms, 
  out_of_service_rooms, 
  available_rooms
FROM
  `Asteria_Boutique_Hotel.daily_room_inventory`
WHERE
  inventory_date IS NULL OR
  room_type IS NULL OR
  total_rooms IS NULL OR 
  out_of_service_rooms IS NULL OR 
  available_rooms IS NULL