image_blend = c_lime
image_alpha = 1.2
image_xscale = 0.16
image_yscale = 0.16
sprite_index = spr_sneo_bigcircle
depth = (obj_queen_enemy.depth - 1)
timer = 0
offset = 0
path = path_add()
path_set_kind(path, 1)
path_set_closed(path, 0)
path_add_point(path, x, y, 100)
path_add_point(path, (x + lengthdir_x(63, 70)), (y + lengthdir_y(63, 70)), 100)
path_add_point(path, (obj_queen_enemy.x + 72), (obj_queen_enemy.y + 75), 100)
path_start(path, 4, path_action_stop, 1)
