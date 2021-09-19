var _temp_local_var_1, _temp_local_var_2, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_11, _temp_local_var_13, _temp_local_var_15, _temp_local_var_17;
if (con == 0)
{
    if (obj_mainchara.y > obj_musical_path_bullet2 && obj_mainchara.x > 1900 && global.flag[408] == 0)
    {
        global.flag[408] = 1
        con++
    }
}
if (con == 1)
{
    sweet = obj_sneo_friedpipis
    nisekk = 0
    djtable = obj_sneo_friedpipis
    nisehatguy = 0
    nisekk = gml_Script_instance_create(3074, (((((gml_Script_cameray() - 64) - 128) - 32) - 4) + 82), obj_marker)
    nisehatguy = gml_Script_instance_create(3072, (((gml_Script_cameray() - 64) - 256) + 106), obj_marker)
    sweet = gml_Script_instance_create(3100, ((gml_Script_cameray() - 64) - 32), obj_marker)
    djtable = gml_Script_instance_create((sweet.x - 40), (sweet.y + 64), obj_marker)
    var _temp_local_var_2 = sweet
    gml_Script_scr_depth()
    vspeed = 18
    sprite_index = spr_sweet_dance
    image_speed = 0.25
    image_xscale = 2
    image_yscale = 2
}
if (con == 2)
{
    if (gml_Script_charaX() < 2680)
    {
        global.flag[7] = 1
        block = gml_Script_instance_create(2720, 2600, obj_solidblocksized)
        blocklock = 0
        con = 3
    }
}
if (con == 3)
{
    if gml_Script_i_ex(realsus)
        susx = realsus.x
    if gml_Script_i_ex(80)
        plx = ((obj_mainchara.x + obj_mainchara.sprite_width) + 2)
    if (block.x > plx)
        block.x = plx
    if (block.x > susx)
    {
        _temp_local_var_5.x = (block.x - 2)
        var _temp_local_var_6 = 
        var _temp_local_var_7 = 
        var _temp_local_var_8 = -9
        var _temp_local_var_9 = block
    }
    if (block.x < 560)
        block.x = 560
    if (gml_Script_charaX() <= 480)
    {
        global.flag[7] = 0
        con++
    }
}
if (con == 4)
    block.x = 560
if instance_exists(obj_marker)
{
    with (obj_marker)
    {
        if (_temp_local_var_6 > y.room_height)
            instance_destroy()
    }
}
if (con >= 3)
{
    if instance_exists(obj_caterpillarchara)
    {
        with (obj_caterpillarchara)
        {
            if (name == "susie")
                other.realsus = id
            if (name == "ralsei")
                other.realral = id
        }
    }
    if (realsus.x < 2440 && watch == 0)
    {
        var _temp_local_var_11 = realsus
        fun = true
        sprite_index = spr_susie_walk_up_dw
        image_index = 0
        image_speed = 0
        hspeed = -4
        follow = 0
    }
    if (watch == 1)
    {
    }
    if (realral.x < 2480 && ralwatch == 0)
    {
        var _temp_local_var_13 = realral
        fun = true
        sprite_index = spr_ralsei_walk_up
        image_index = 0
        image_speed = 0
        hspeed = -4
        follow = 0
    }
    if (realsus.x < 540 && watch == 1)
    {
        watch = 2
        var _temp_local_var_15 = realsus
        fun = false
        hspeed = 0
        follow = 1
        gml_Script_scr_caterpillar_interpolate()
    }
    if (realral.x < 540 && ralwatch == 1)
    {
        ralwatch = 2
        var _temp_local_var_17 = realral
        fun = false
        hspeed = 0
        follow = 1
        gml_Script_scr_caterpillar_interpolate()
    }
}
