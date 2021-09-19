if (con == 10 && (!gml_Script_d_ex_ch1()))
{
    with (s)
    {
        sprite_index = spr_susier_dark_ch1
        image_speed = 0.334
        hspeed = 12
    }
    with (l)
    {
        sprite_index = spr_lancer_rt_ch1
        hspeed = 12
    }
    con = 11
    alarm[4] = 20
}
if (con == 11)
    global.interact = 1
if (con == 12)
{
    with (s)
    {
        x = (gml_Script___view_get(0, 0) - 140)
        hspeed = 12
        vspeed = 0
        y += 90
        sprite_index = spr_susier_dark_ch1
        gml_Script_scr_depth_ch1()
    }
    with (l)
    {
        x = (gml_Script___view_get(0, 0) - 100)
        hspeed = 12
        y += 90
        sprite_index = spr_lancer_rt_ch1
        gml_Script_scr_depth_ch1()
    }
    con = 15
    alarm[4] = 29
}
if (con == 16)
{
    with (s)
    {
        gml_Script_scr_halt_ch1()
        sprite_index = spr_susieu_dark_ch1
    }
    with (l)
    {
        gml_Script_scr_halt_ch1()
        sprite_index = spr_lancer_ut_ch1
    }
    global.facing = 3
    with (global.cinstance[0])
    {
        fun = true
        sprite_index = lsprite
    }
    con = 26
    alarm[4] = 5
}
if (con == 18)
{
    with (s)
        sprite_index = spr_susier_dark_ch1
    with (l)
        sprite_index = spr_lancer_lt_ch1
    global.typer = 30
    global.fc = 1
    global.fe = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_80_0")
    gml_Script_scr_lanface_ch1(1, 2)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_82_0")
    con = 19
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 19 && (!gml_Script_d_ex_ch1()))
{
    with (l)
        sprite_index = spr_lancer_ut_ch1
    with (s)
        sprite_index = spr_susieu_dark_ch1
    con = 20
    alarm[4] = 30
}
if (con == 21)
{
    with (l)
        sprite_index = spr_lancer_lt_ch1
    with (s)
        sprite_index = spr_susier_dark_ch1
    global.typer = 32
    global.fe = 6
    global.fc = 5
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_103_0")
    gml_Script_scr_susface_ch1(1, 0)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_105_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_106_0")
    gml_Script_scr_lanface_ch1(4, 3)
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_108_0")
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_109_0")
    con = 25
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 25 && (!gml_Script_d_ex_ch1()))
{
    with (s)
    {
        hspeed = 13
        image_speed = 0.25
        sprite_index = spr_susier_dark_ch1
    }
    with (l)
    {
        hspeed = 13
        sprite_index = spr_lancer_rt_ch1
    }
    con = 26
    alarm[4] = 6
}
if (con == 27)
{
    with (s)
    {
        gml_Script_scr_halt_ch1()
        sprite_index = spr_susieu_dark_ch1
        vspeed = -10
    }
    with (l)
    {
        gml_Script_scr_halt_ch1()
        sprite_index = spr_lancer_ut_ch1
        vspeed = -10
    }
    con = 28
    alarm[4] = 6
}
if (con == 29)
{
    with (s)
        gml_Script_scr_halt_ch1()
    with (l)
        gml_Script_scr_halt_ch1()
    con = 30
    alarm[4] = 10
}
if (con == 31)
{
    with (s)
    {
        sprite_index = spr_susied_dark_ch1
        image_speed = 0.25
        vspeed = 12
    }
    with (l)
    {
        sprite_index = spr_lancer_dt_ch1
        vspeed = 12
    }
    con = 33
    alarm[4] = 7
}
if (con == 34)
{
    with (s)
        gml_Script_scr_halt_ch1()
    with (l)
        gml_Script_scr_halt_ch1()
    con = 35
}
if (con == 35 && (!gml_Script_d_ex_ch1()))
{
    lnpc = gml_Script_instance_create_ch1(l.x, (l.y + 108), 1407)
    with (lnpc)
    {
        dfacing = 0
        sprite_index = spr_lancer_dt_ch1
        dtsprite = sprite_index
        rtsprite = sprite_index
        ltsprite = sprite_index
        utsprite = sprite_index
    }
    snpc = gml_Script_instance_create_ch1(s.x, (s.y + 108), 1407)
    with (snpc)
    {
        dfacing = 1
        sprite_index = spr_susier_dark_ch1
        dtsprite = sprite_index
        rtsprite = sprite_index
        ltsprite = sprite_index
        utsprite = sprite_index
    }
    con = 36
    if (global.plot < 80)
        global.plot = 80
    global.flag[238] = 1
    global.interact = 0
    global.facing = 0
    with (global.cinstance[0])
        fun = false
    with (s)
        instance_destroy()
    with (l)
        instance_destroy()
}
if (con == 4000)
{
    if (obj_mainchara_ch1.x >= (room_width - 80) && global.interact == 0)
    {
        obj_mainchara_ch1.x -= 10
        global.facing = 3
        global.typer = 32
        global.fc = 5
        global.fe = 7
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_237_0")
        gml_Script_scr_susface_ch1(1, 2)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_239_0")
        gml_Script_scr_ralface_ch1(3, 6)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_241_0")
        global.interact = 1
        con = 2
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
}
if (con == 4002 && (!gml_Script_d_ex_ch1()))
{
    con = 4000
    global.interact = 0
}
