if (con == 1)
{
    with (obj_mainchara)
        visible = false
    k = gml_Script_scr_dark_marker(0, obj_mainchara.y, spr_krisr_dark)
    with (k)
    {
        hspeed = 12
        image_speed = 0.334
    }
    s = gml_Script_scr_dark_marker(340, (obj_mainchara.y - 10), spr_susied_dark_unhappy)
    con = 2
    alarm[4] = 22
}
if (con == 3)
{
    global.interact = 1
    with (k)
        gml_Script_scr_halt()
    with (s)
        sprite_index = spr_susiel_dark_unhappy
    global.typer = 30
    global.fc = 1
    global.fe = 9
    global.msg[0] = gml_Script_stringsetloc("* Kris^1, down here!/%", "obj_lancerslideevent_slash_Step_0_gml_34_0")
    gml_Script_instance_create(0, 0, obj_dialoguer)
    con = 4
}
if (con == 4 && gml_Script_d_ex() == 0)
{
    gml_Script_snd_play(snd_noise)
    with (s)
    {
        sprite_index = spr_susied_dark_unhappy
        image_speed = 0.334
        vspeed = 20
    }
    with (k)
        sprite_index = spr_krisd_dark
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
    gml_Script_snd_play(snd_noise)
    obj_mainchara.x = k.x
    obj_mainchara.y = k.y
    alarm[1] = 1
    slidesfx = gml_Script_snd_loop(snd_paper_surf)
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
        with (obj_mainchara)
            vspeed = 0
        global.interact = 0
        gml_Script_instance_create(0, 0, obj_overworld_spademaker)
        block1 = gml_Script_instance_create(0, (gml_Script___view_get(1, 0) + 40), obj_soliddark)
        with (block1)
            image_xscale = 40
        block2 = gml_Script_instance_create(0, (gml_Script___view_get(1, 0) + 440), obj_soliddark)
        with (block2)
            image_xscale = 40
        w[0] = gml_Script_instance_create(70, 2280, obj_wobblything_slide)
        w[1] = gml_Script_instance_create(550, 1560, obj_wobblything_slide)
        w[2] = gml_Script_instance_create(70, 1800, obj_wobblything_slide)
        w[3] = gml_Script_instance_create(550, 2040, obj_wobblything_slide)
        if seiz
        {
            with (obj_wobblything_slide)
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
    if (global.inv == true && slidetimer <= 390)
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
        with (fo)
        {
            image_blend = c_white
            fadespeed = 0.01
        }
    }
    if (slidetimer == 540)
    {
        gml_Script_snd_stop(slidesfx)
        gml_Script_snd_free(global.currentsong[0])
        global.interact = 1
        room_goto_next()
    }
}
