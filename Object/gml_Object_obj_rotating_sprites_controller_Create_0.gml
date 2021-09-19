x = (o_boxingcontroller.x + 38)
y = (o_boxingcontroller.y - 96)
f = 2
timer = 0
state = 0
rotating_sprite_piece1 = gml_Script_instance_create(x, y, obj_rotating_sprite)
rotating_sprite_piece2 = gml_Script_instance_create(x, y, obj_rotating_sprite)
rotating_sprite_piece3 = gml_Script_instance_create(x, y, obj_rotating_sprite)
rotating_sprite_piece4 = gml_Script_instance_create(x, y, obj_rotating_sprite)
rotating_sprite_piece5 = gml_Script_instance_create(x, y, obj_rotating_sprite)
rotating_sprite_piece6 = gml_Script_instance_create(x, y, obj_rotating_sprite)
var _temp_local_var_1 = rotating_sprite_piece1
path = path_add()
path_set_kind(path, 1)
path_set_closed(path, 1)
path_add_point(path, 368, 160, 100)
path_add_point(path, 304, 184, 100)
path_add_point(path, 272, 184, 100)
path_add_point(path, 208, 160, 100)
path_add_point(path, 272, 136, 100)
path_add_point(path, 304, 136, 100)
path_start(path, 4, path_action_continue, 0)
path_position = 0
