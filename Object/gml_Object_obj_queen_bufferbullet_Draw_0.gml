draw_self()
if afterimage
    gml_Script_scr_custom_afterimage(545)
if (instance_exists(obj_queen_buffercontroller) && gml_Script_scr_queen_buffercheck())
    draw_sprite(spr_queen_buffering, (obj_queen_buffercontroller.bufferbar % 8), x, y)