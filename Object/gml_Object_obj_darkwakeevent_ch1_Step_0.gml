var _temp_local_var_1, _temp_local_var_4, _temp_local_var_5, _temp_local_var_7, _temp_local_var_9, _temp_local_var_10;
if (con == 1)
{
    waketimer += 1
    canclick = false
    if (waketimer < 50)
        canclick = true
    if (waketimer < 110 && waketimer > 65)
        canclick = true
    if (waketimer > 125 && waketimer < 170)
        canclick = true
    if (canclick == true)
    {
        if gml_Script_left_p_ch1()
            waketimer += 2
        if gml_Script_right_p_ch1()
            waketimer += 2
        if gml_Script_down_p_ch1()
            waketimer += 2
        if gml_Script_up_p_ch1()
            waketimer += 2
    }
    if (waketimer == 60 || waketimer == 62)
    {
        var _temp_local_var_4 = k
        sprite_index = spr_kris_fallen_dark_ch1
        x = (xstart + choose(-2, 2))
        y = (ystart + choose(-2, 2))
    }
    if (waketimer == 63)
    {
        var _temp_local_var_5 = k
        x = xstart
        y = ystart
    }
    if (waketimer == 120 || waketimer == 121 || waketimer == 122 || waketimer == 123)
    {
        var _temp_local_var_7 = k
        x = (xstart + choose(-2, 2, 0))
        y = (ystart + choose(-2, 2, 0))
    }
    if (waketimer >= 180 && waketimer <= 184)
    {
        var _temp_local_var_9 = k
        x = (xstart + choose(-2, 2, 0))
        y = (ystart + choose(-2, 2, 0))
    }
    if (waketimer == 185)
    {
        var _temp_local_var_10 = k
        instance_destroy()
    }
}
