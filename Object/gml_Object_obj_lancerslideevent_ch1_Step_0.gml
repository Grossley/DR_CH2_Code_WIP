var _temp_local_var_1, _temp_local_var_2, _temp_local_var_5, _temp_local_var_7, _temp_local_var_8, _temp_local_var_10, _temp_local_var_12;
if (con == 1)
{
    with (obj_mainchara_ch1)
        visible = false
    k = gml_Script_scr_dark_marker_ch1(0, obj_mainchara_ch1.y, 4197)
    var _temp_local_var_1 = k
    hspeed = 12
    image_speed = 0.334
}
if (con == 3)
{
    global.interact = 1
    var _temp_local_var_2 = k
    gml_Script_scr_halt_ch1()
}
if (con == 4 && gml_Script_d_ex_ch1() == 0)
{
    gml_Script_snd_play_ch1(381)
    var _temp_local_var_5 = s
    sprite_index = spr_susied_dark_unhappy_ch1
    image_speed = 0.334
    vspeed = 20
}
if (con == 6)
{
    var _temp_local_var_7 = k
    vspeed = 4
    image_speed = 0.2
}
if (con == 8)
{
    gml_Script_snd_play_ch1(381)
    obj_mainchara_ch1.x = k.x
    obj_mainchara_ch1.y = k.y
    alarm[1] = 1
    slidesfx = gml_Script_snd_loop_ch1(484)
    with (obj_mainchara_ch1)
    {
        cutscene = true
        visible = true
        vspeed = 20
        fun = true
        sprite_index = spr_krisd_slide_ch1
        autorun = 2
    }
    if (seiz == 1)
    {
        with (obj_mainchara_ch1)
            vspeed = 10
    }
    var _temp_local_var_8 = k
    instance_destroy()
}
if (cameracon == 1)
{
    if (gml_Script___view_get(1, 0) < 880)
    {
        if (seiz == 0)
            gml_Script___view_set(1, 0, (gml_Script___view_get(1, 0) + 20))
        else
            gml_Script___view_set(1, 0, (gml_Script___view_get(1, 0) + 10))
    }
    else
    {
        with (obj_mainchara_ch1)
            vspeed = 0
        global.interact = 0
        gml_Script_instance_create_ch1(0, 0, 1508)
        block1 = gml_Script_instance_create_ch1(0, (gml_Script___view_get(1, 0) + 40), 1656)
        var _temp_local_var_12 = block1
        image_xscale = 40
    }
}
if (cameracon == 2)
{
    slidetimer += 1
    if (seiz == 0)
    {
        gml_Script_tile_layer_shift_ch1(1000000, 0, -20)
        shifted -= 20
    }
    else
    {
        gml_Script_tile_layer_shift_ch1(1000000, 0, -10)
        shifted -= 10
    }
    if (shifted <= -480)
    {
        gml_Script_tile_layer_shift_ch1(1000000, 0, 480)
        shifted += 480
    }
    if (global.inv == 1 && slidetimer <= 390)
        slidetimer -= 10
    if (slidetimer == 390)
    {
        gml_Script_snd_volume_ch1(global.currentsong[1], 0, 120)
        gml_Script_snd_volume_ch1(slidesfx, 0, 120)
        with (obj_overworld_spademaker_ch1)
            alarm[0] = -40
        with (obj_overworld_spade_ch1)
        {
            gravity = -0.4
            active = false
        }
        fo = gml_Script_instance_create_ch1(0, 0, 1460)
        var _temp_local_var_10 = fo
        image_blend = c_white
        fadespeed = 0.01
    }
    if (slidetimer == 540)
    {
        gml_Script_snd_stop_ch1(slidesfx)
        gml_Script_snd_free_ch1(global.currentsong[0])
        global.interact = 1
        room_goto_next()
    }
}
