start_x = 43
start_y = 360
bottom_start_y = (start_y + sprite_get_height(spr_cutscene_26_coaster_tile_top))
x_offset = (room == room_dw_mansion_top_post ? 43 : 0)
if 2
    x_offset = 90
looping_coaster_top = gml_Script_instance_create((start_x - x_offset), start_y, obj_looping_tiled_area)
looping_coaster_top.sprite_index = spr_cutscene_26_coaster_tile_top
looping_coaster_top.width = ((309 * 2) * 3)
looping_coaster_top.height = (309 - 1)
looping_coaster_top.room_wide = 1
looping_coaster_top.depth = 1000088
looping_coaster_top.x_scale = 1
looping_coaster_top.y_scale = 1
looping_coaster = gml_Script_instance_create((start_x - x_offset), bottom_start_y, obj_looping_tiled_area)
looping_coaster.sprite_index = spr_cutscene_26_coaster_tile
looping_coaster.width = ((308 * 2) * 3)
looping_coaster.height = ((308 * 2) * 8)
looping_coaster.room_wide = 1
looping_coaster.depth = 1000088
looping_coaster.x_scale = 1
looping_coaster.y_scale = 1
wall_con = 0
v_speed = -10
