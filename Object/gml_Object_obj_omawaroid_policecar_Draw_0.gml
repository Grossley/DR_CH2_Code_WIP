var oob = 0
if (y < (boxTop + 18) || y > (boxBottom - 18))
{
    oob = 1
    gml_Script_scr_draw_in_box_begin()
}
draw_self()
if oob
    gml_Script_scr_draw_in_box_end()
