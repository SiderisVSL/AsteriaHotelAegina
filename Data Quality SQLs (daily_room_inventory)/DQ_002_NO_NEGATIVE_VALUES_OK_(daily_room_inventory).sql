SELECT
  inventory_date, total_rooms, available_rooms, out_of_service_rooms
FROM
  `Asteria_Boutique_Hotel.daily_room_inventory`
WHERE
  total_rooms < 0 OR
  available_rooms <0 OR
  out_of_service_rooms < 0
