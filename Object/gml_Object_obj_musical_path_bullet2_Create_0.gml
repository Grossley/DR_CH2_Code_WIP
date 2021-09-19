gml_Script_scr_bullet_init()
timer = 0
con = 0
headalpha = 0
path = path_add()
path_set_kind(path, 1)
path_set_closed(path, 0)
path_add_point(path, x, y, 100)
path_add_point(path, (x - 32), (y - 32), 100)
path_add_point(path, x, (y - 64), 100)
path_add_point(path, (x + 32), (y - 96), 100)
path_add_point(path, x, (y - 128), 100)
trajectory = gml_Script_instance_create(x, y, obj_musical_path_trajectory)
trajectory.parent = id
var _temp_local_var_1 = trajectory
path_start(parent.path, 10, path_action_stop, 0)
