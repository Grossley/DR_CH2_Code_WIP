con = 0
timer = 0
gml_Script_snd_free_all()
var CH = string(global.chapter)
files_exist = (gml_Script_ossafe_file_exists((("filech" + CH) + "_0")) || gml_Script_ossafe_file_exists((("filech" + CH) + "_1")) || gml_Script_ossafe_file_exists((("filech" + CH) + "_2")) || gml_Script_ossafe_file_exists((("filech" + CH) + "_3")))
show_queen = 0
queen_sprite = 3350
queen_sprite_index = 0
queen_siner = 0
queen_animate = 1
queen_y_pos = -100
queen_alpha = 0
init = 0
type = 0
