var _temp_local_var_1, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6;
oo = 0
if (spec == 1)
{
    if 1502
    {
        oo = (-0.8 + ((obj_darkponman_ow_ch1.battlealpha * obj_darkponman_ow_ch1.max_battlealpha) * 1.5))
        if (oo < 0)
            oo = 0
        if (oo > 1)
            oo = 1
        image_blend = merge_color(c_white, c_black, oo)
    }
}
if (spec == 2)
{
    if 1502
    {
        oo = (4 - ((obj_darkponman_ow_ch1.battlealpha * obj_darkponman_ow_ch1.max_battlealpha) * 4))
        if (oo > 1)
            oo = 1
        if (oo < 0)
            oo = 0
        image_blend = merge_color(c_white, c_black, oo)
    }
}
if (spec < 2)
    blocktimer += 1
if (blocktimer == 20)
{
    xv = ((x + (sprite_width / 4)) + random((sprite_width / 2)))
    yv = ((y + (sprite_height / 4)) + random((sprite_height / 4)))
    block = gml_Script_scr_dark_marker_ch1(xv, yv, 4062)
    var _temp_local_var_1 = block
    hspeed = (0.4 + random(1))
    vspeed = (0.7 + random(1.5))
    gravity_direction = 0
    gravity = 0.1
    image_alpha = 0
    friction = -0.1
}
if (blocktimer >= 20 && blocktimer <= 30)
{
    var _temp_local_var_4 = block
    if (image_alpha < 1)
        image_alpha += 0.2
}
if (blocktimer >= 38)
{
    var _temp_local_var_5 = block
    image_alpha -= 0.1
}
if (blocktimer >= 48)
{
    blocktimer = 0
    var _temp_local_var_6 = block
    instance_destroy()
}
