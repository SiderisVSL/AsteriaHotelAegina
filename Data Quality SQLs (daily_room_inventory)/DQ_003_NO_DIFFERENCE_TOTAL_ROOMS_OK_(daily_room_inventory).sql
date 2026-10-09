SELECT
  inventory_date, room_type, total_rooms, available_rooms, out_of_service_rooms
FROM
  `Asteria_Boutique_Hotel.daily_room_inventory`
WHERE
  total_rooms <> (available_rooms + out_of_service_rooms)