scr_bullet_init()
timer = 0
con = 0
headalpha = 0
path = path_add()
path_set_kind(path, 1)
path_set_closed(path, 0)
path_add_point(path, x, y, 100)
path_add_point(path, (x + 48), (y - 48), 100)
path_add_point(path, (x + 112), (y - 48), 100)
path_add_point(path, (x + 160), y, 100)
trajectory = instance_create(x, y, obj_musical_path_trajectory)
trajectory.parent = id
with (trajectory)
    path_start(parent.path, 10, path_action_stop, 0)
circle1alpha = 0
circle1radius = 31
circle1width = 2
circle1color = 65280
circle2alpha = 0
circle2radius = 75
circle2width = 4
depth = (obj_heart.depth + 1)
