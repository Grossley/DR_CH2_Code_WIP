if (con == 1)
{
    with (obj_mainchara_ch1)
        visible = false
    k = gml_Script_scr_dark_marker_ch1(0, obj_mainchara_ch1.y, 4197)
    with (k)
    {
        hspeed = 12
        image_speed = 0.334
    }
    s = gml_Script_scr_dark_marker_ch1(340, (obj_mainchara_ch1.y - 10), 3550)
    con = 2
    alarm[4] = 22
}
if (con == 3)
{
    global.interact = 1
    with (k)
        gml_Script_scr_halt_ch1()
    with (s)
        sprite_index = spr_susiel_dark_unhappy_ch1
    global.typer = 30
    global.fc = 1
    global.fe = 9
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerslideevent_slash_Step_0_gml_34_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 4
}
if (con == 4 && gml_Script_d_ex_ch1() == 0)
{
    gml_Script_snd_play_ch1(381)
    with (s)
    {
        sprite_index = spr_susied_dark_unhappy_ch1
        image_speed = 0.334
        vspeed = 20
    }
    with (k)
        sprite_index = spr_krisd_dark_ch1
    con = 5
    alarm[4] = 30
}
if (con == 6)
{
    with (k)
    {
        vspeed = 4
        image_speed = 0.2
    }
    con = 7
    alarm[4] = 10
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
    with (k)
        instance_destroy()
    cameracon = 1
    con = 9
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
        with (block1)
            image_xscale = 40
        block2 = gml_Script_instance_create_ch1(0, (gml_Script___view_get(1, 0) + 440), 1656)
        with (block2)
            image_xscale = 40
        w[0] = gml_Script_instance_create_ch1(70, 2280, 1395)
        w[1] = gml_Script_instance_create_ch1(550, 1560, 1395)
        w[2] = gml_Script_instance_create_ch1(70, 1800, 1395)
        w[3] = gml_Script_instance_create_ch1(550, 2040, 1395)
        if seiz
        {
            with (obj_wobblything_slide_ch1)
                vspeed = -10
        }
        cameracon = 2
        shifted = 0
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
        with (fo)
        {
            image_blend = c_white
            fadespeed = 0.01
        }
    }
    if (slidetimer == 540)
    {
        gml_Script_snd_stop_ch1(slidesfx)
        gml_Script_snd_free_ch1(global.currentsong[0])
        global.interact = 1
        room_goto_next()
    }
}
