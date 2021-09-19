var _temp_local_var_1;
_selected_string = "No object!#MouseL:Choose&Drag#MouseR:Drag From Anchor"
if gml_Script_i_ex(selected_object)
{
    so = selected_object
    sox = selected_object.x
    soy = selected_object.y
    if (xy_camera_relative == 1)
        sox -= gml_Script___view_get(0, 0)
    if (xy_camera_relative == 1)
        soy -= gml_Script___view_get(1, 0)
    if (xy_camera_relative == 2)
        sox -= so.xstart
    if (xy_camera_relative == 2)
        soy -= so.ystart
    _selected_string = object_get_name(selected_object.object_index)
    _selected_string += (((" X: " + string(sox)) + " Y: ") + string(soy))
    _selected_string += ("#Depth: " + string(selected_object.depth))
    _selected_string += "#Arrows: Move Precisely"
}
draw_set_font(fnt_mainbig)
draw_set_color(c_black)
draw_rectangle(0, 40, 120, 0, false)
draw_set_color(c_white)
gml_Script_scr_84_draw_text_outline(0, 0, string_hash_to_newline(_selected_string))
draw_set_font(fnt_main)
draw_text(330, 0, string_hash_to_newline(gml_Script_stringsetloc("PgDown: Show All Info", "obj_debug_xy_slash_Draw_74_gml_26_0")))
draw_text(330, 20, string_hash_to_newline(gml_Script_stringsetsubloc("CameraX: ~1 CameraY: ~2", string(gml_Script___view_get(0, 0)), string(gml_Script___view_get(1, 0)), "obj_debug_xy_slash_Draw_74_gml_27_0")))
if (show_invisible == 1)
    draw_text(330, 40, string_hash_to_newline(gml_Script_stringsetloc("Show Invisible", "obj_debug_xy_slash_Draw_74_gml_28_0")))
draw_text(330, 60, string_hash_to_newline("instance_count: ~1"))
draw_text(480, 0, string_hash_to_newline(gml_Script_stringsetloc("PgUp: XY Camera-Relative", "obj_debug_xy_slash_Draw_74_gml_29_0")))
var _temp_local_var_1 = string(("obj_debug_xy_slash_Draw_74_gml_29_0_b").instance_count)
if (xy_camera_relative >= 1)
{
    draw_set_color(c_yellow)
    if (xy_camera_relative == 1)
        draw_text(480, 20, string_hash_to_newline(gml_Script_stringsetloc("XY is camera-relative!", "obj_debug_xy_slash_Draw_74_gml_33_0")))
    if (xy_camera_relative == 2)
        draw_text(480, 20, string_hash_to_newline(gml_Script_stringsetloc("XY is StartXY relative!", "obj_debug_xy_slash_Draw_74_gml_34_0")))
}