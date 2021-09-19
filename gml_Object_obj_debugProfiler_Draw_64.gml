if (writedisplay == 1)
{
    (1 + string("instance_count=".instance_count))
    if (instance_count > 150)
        gml_Script_debug_printline("THAT'S A LOT OF INSTANCES", 2)
}
lastval[0] = 0
if (interactshower == 1)
{
    draw_set_color(c_yellow)
    draw_set_font(fnt_mainbig)
    gml_Script_draw_text_outline(20, 20, ("global.interact=" + string(global.interact)), 0)
    draw_set_color(c_white)
}
