if gml_Script_scr_queen_buffercheck()
{
    buffering = 1
    image_blend = c_gray
    draw_self()
    return;
}
else if (buffering && (!gml_Script_scr_queen_buffercheck()))
{
    buffering = 0
    image_blend = c_white
}
if (scale < 1)
{
    scale += 0.1
    image_xscale = scale
    image_yscale = scale
    image_angle = (scale * 360)
    af = gml_Script_scr_custom_afterimage(spr_kris_jump_ball)
    af.image_alpha = 0.5
}
if (timer > 0)
    draw_self()
