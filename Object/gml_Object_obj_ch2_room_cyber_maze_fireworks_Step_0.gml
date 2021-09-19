var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_12, _temp_local_var_13, _temp_local_var_14, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_21, _temp_local_var_22, _temp_local_var_23, _temp_local_var_24, _temp_local_var_25, _temp_local_var_26, _temp_local_var_27, _temp_local_var_28, _temp_local_var_30;
if (fireworks_con == 1 && (!gml_Script_d_ex()))
{
    global.interact = 1
    fireworks_con = 2
}
if (fireworks_con == 2)
{
    check1 = gml_Script_instance_create(430, 260, obj_marker)
    check1.sprite_index = spr_queenscreen
    check1.image_index = 10
    check1.image_speed = 0
    check1.image_yscale = 0.05
    check1.image_xscale = 0.1
    check1.depth = (hacker.depth + 10)
    check2 = gml_Script_instance_create(430, 260, obj_marker)
    check2.sprite_index = spr_queenscreen
    check2.image_index = 10
    check2.image_speed = 0
    check2.image_yscale = 0.05
    check2.image_xscale = 0.1
    check2.depth = (hacker.depth + 10)
    check3 = gml_Script_instance_create(430, 260, obj_marker)
    check3.sprite_index = spr_queenscreen
    check3.image_index = 10
    check3.image_speed = 0
    check3.image_yscale = 0.05
    check3.image_xscale = 0.1
    check3.depth = (hacker.depth + 10)
    fireworks_con++
    timer = 0
}
if (fireworks_con == 3)
{
    timer++
    var _temp_local_var_2 = check1
    if (image_xscale != 2)
        image_xscale = lerp(image_xscale, 2, 0.125)
}
if (fireworks_con == 4)
{
    timer++
    if gml_Script_i_ex(check1)
    {
        _temp_local_var_13.vspeed = (check1.vspeed * 1.1)
        _temp_local_var_12.hspeed = (check1.hspeed * 1.1)
        var _temp_local_var_14 = check1
        var _temp_local_var_15 = 
        var _temp_local_var_16 = -9
        var _temp_local_var_17 = -9
        var _temp_local_var_18 = check1
        var _temp_local_var_19 = 
        var _temp_local_var_20 = 
        var _temp_local_var_21 = -9
        var _temp_local_var_22 = check1
        gml_Script_scr_afterimagefast()
    }
    if gml_Script_i_ex(check2)
    {
        _temp_local_var_23.vspeed = (check2.vspeed * 1.1)
        var _temp_local_var_24 = check2
        var _temp_local_var_25 = check1
        var _temp_local_var_26 = _temp_local_var_15
        var _temp_local_var_27 = -9
        var _temp_local_var_28 = check2
        gml_Script_scr_afterimagefast()
    }
    if gml_Script_i_ex(check3)
    {
        var _temp_local_var_30 = check3
        gml_Script_scr_afterimagefast()
    }
    if (timer == 25)
    {
        if gml_Script_i_ex(222)
        {
            with (obj_fireworks_manager)
                is_active = 1
        }
        if gml_Script_i_ex(344)
        {
            with (obj_cyber_shadowMaker_fireworks)
                is_active = 1
        }
    }
    if (timer == 90)
    {
        global.interact = 0
        global.facing = 0
        fireworks_con++
    }
}
