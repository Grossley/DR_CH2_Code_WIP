init = 0
layer_y_pos = 0
layer_x_pos = 0
siner = 0
cityscape_height = 3133
lights_height = 3134
ground_height = 3136
shadow = 0
dark_blend = merge_color(make_color_hsv(0, 0, 100), c_black, shadow)
depth = 1000100
is_active = 1
if (room == room_dw_cyber_maze_fireworks)
    is_active = global.flag[357] == 1
