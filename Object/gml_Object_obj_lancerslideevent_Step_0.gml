var _temp_local_var_1, _temp_local_var_2, _temp_local_var_5, _temp_local_var_7, _temp_local_var_8, _temp_local_var_10, _temp_local_var_12;
if (con == 1)
{
    with (obj_mainchara)
        visible = false
    k = gml_Script_scr_dark_marker(0, obj_mainchara.y, 652)
    var _temp_local_var_1 = k
    hspeed = 12
    image_speed = 0.334
}
if (con == 3)
{
    global.interact = 1
    var _temp_local_var_2 = k
    gml_Script_scr_halt()
}
if (con == 4 && gml_Script_d_ex() == 0)
{
    gml_Script_snd_play(64)
    var _temp_local_var_5 = s
    sprite_index = spr_susied_dark_unhappy
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
    gml_Script_snd_play(64)
    obj_mainchara.x = k.x
    obj_mainchara.y = k.y
    alarm[1] = 1
    slidesfx = gml_Script_snd_loop(236)
    with (obj_mainchara)
    {
        cutscene = true
        visible = true
        vspeed = 20
        fun = true
        sprite_index = spr_krisd_slide
        autorun = 2
    }
    if (seiz == 1)
    {
        with (obj_mainchara)
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
        with (obj_mainchara)
            vspeed = 0
        global.interact = 0
        gml_Script_instance_create(0, 0, obj_overworld_spademaker)
        block1 = gml_Script_instance_create(0, (gml_Script___view_get(1, 0) + 40), obj_soliddark)
        var _temp_local_var_12 = block1
        image_xscale = 40
    }
}
if (cameracon == 2)
{
    slidetimer += 1
    if (seiz == 0)
    {
        gml_Script_tile_layer_shift(1000000, 0, -20)
        shifted -= 20
    }
    else
    {
        gml_Script_tile_layer_shift(1000000, 0, -10)
        shifted -= 10
    }
    if (shifted <= -480)
    {
        gml_Script_tile_layer_shift(1000000, 0, 480)
        shifted += 480
    }
    if (global.inv == 1 && slidetimer <= 390)
        slidetimer -= 10
    if (slidetimer == 390)
    {
        gml_Script_snd_volume(global.currentsong[1], 0, 120)
        gml_Script_snd_volume(slidesfx, 0, 120)
        with (obj_overworld_spademaker)
            alarm[0] = -40
        with (obj_overworld_spade)
        {
            gravity = -0.4
            active = false
        }
        fo = gml_Script_instance_create(0, 0, obj_fadeout)
        var _temp_local_var_10 = fo
        image_blend = c_white
        fadespeed = 0.01
    }
    if (slidetimer == 540)
    {
        gml_Script_snd_stop(slidesfx)
        gml_Script_snd_free(global.currentsong[0])
        global.interact = 1
        room_goto_next()
    }
}
