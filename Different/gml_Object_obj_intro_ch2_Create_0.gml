con = 0
timer = 0
snd_free_all()
var CH = string(global.chapter)
files_exist = (ossafe_file_exists((("filech" + CH) + "_0")) || ossafe_file_exists((("filech" + CH) + "_1")) || ossafe_file_exists((("filech" + CH) + "_2")) || ossafe_file_exists((("filech" + CH) + "_3")))
show_queen = false
queen_sprite = spr_queen_wireframe_rotate
queen_sprite_index = 0
queen_siner = 0
queen_animate = true
queen_y_pos = -100
queen_alpha = 0
init = false
type = 0
