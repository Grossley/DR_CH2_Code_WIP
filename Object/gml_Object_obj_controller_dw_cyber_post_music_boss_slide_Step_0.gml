if (con == 0)
{
    if (obj_mainchara.y > 700 && obj_mainchara.x > 1900 && global.flag[408] == 0)
    {
        global.flag[408] = 1
        con++
    }
}
if (con == 1)
{
    sweet = obj_sneo_friedpipis
    nisekk = obj_sneo_friedpipis
    djtable = obj_sneo_friedpipis
    nisehatguy = obj_sneo_friedpipis
    nisekk = gml_Script_instance_create(3074, (((((gml_Script_cameray() - 64) - 128) - 32) - 4) + 82), obj_marker)
    nisehatguy = gml_Script_instance_create(3072, (((gml_Script_cameray() - 64) - 256) + 106), obj_marker)
    sweet = gml_Script_instance_create(3100, ((gml_Script_cameray() - 64) - 32), obj_marker)
    djtable = gml_Script_instance_create((sweet.x - 40), (sweet.y + 64), obj_marker)
    with (sweet)
    {
        gml_Script_scr_depth()
        vspeed = 18
        sprite_index = spr_sweet_dance
        image_speed = 0.25
        image_xscale = 2
        image_yscale = 2
    }
    with (nisehatguy)
    {
        gml_Script_scr_depth()
        vspeed = 18
        sprite_index = spr_hatguy_idle
        image_speed = 0.25
        image_xscale = 2
        image_yscale = 2
    }
    with (nisekk)
    {
        gml_Script_scr_depth()
        vspeed = 18
        sprite_index = spr_kk_button_press
        image_speed = 0.25
        image_xscale = 2
        image_yscale = 2
    }
    with (djtable)
    {
        gml_Script_scr_depth()
        vspeed = 18
        sprite_index = spr_cutscene_cyber01_dj_table_side
        image_speed = 0.25
        image_xscale = 2
        image_yscale = 2
    }
    con++
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
    if gml_Script_i_ex(obj_mainchara)
        plx = ((obj_mainchara.x + obj_mainchara.sprite_width) + 2)
    if (block.x > plx)
        block.x = plx
    if (block.x > susx)
        block.x -= 2
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
        if (y > room_height)
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
        with (realsus)
        {
            fun = true
            sprite_index = spr_susie_walk_up_dw
            image_index = 0
            image_speed = 0
            hspeed = -4
            follow = 0
        }
        watch = 1
    }
    if (watch == 1)
    {
    }
    if (realral.x < 2480 && ralwatch == 0)
    {
        with (realral)
        {
            fun = true
            sprite_index = spr_ralsei_walk_up
            image_index = 0
            image_speed = 0
            hspeed = -4
            follow = 0
        }
        ralwatch = 1
    }
    if (realsus.x < 540 && watch == 1)
    {
        watch = 2
        with (realsus)
        {
            fun = false
            hspeed = 0
            follow = 1
            gml_Script_scr_caterpillar_interpolate()
        }
    }
    if (realral.x < 540 && ralwatch == 1)
    {
        ralwatch = 2
        with (realral)
        {
            fun = false
            hspeed = 0
            follow = 1
            gml_Script_scr_caterpillar_interpolate()
        }
    }
}
