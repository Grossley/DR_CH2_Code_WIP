if (con == 1)
{
    if (obj_mainchara_ch1.x >= (x - 80) && global.interact == 0)
    {
        global.facing = 2
        with (obj_caterpillarchara_ch1)
        {
            fun = true
            sprite_index = spr_ralseiu_ch1
        }
        global.interact = 1
        global.fc = 1
        global.fe = 9
        global.typer = 30
        global.msg[0] = "obj_getsusieevent_slash_Step_0_gml_16_0"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 2
    }
}
if (con == 2 ? 0 : 0)
{
    sprite_index = spr_susied_dark_ch1
    gml_Script_instance_create_ch1((x + (sprite_width / 2)), (y - 30), 1486)
    con = 3
    alarm[4] = 30
}
if (con == 4)
{
    global.fe = 0
    global.msg[0] = "obj_getsusieevent_slash_Step_0_gml_35_0"
    gml_Script_scr_ralface_ch1(1, 6)
    global.msg[2] = "obj_getsusieevent_slash_Step_0_gml_37_0"
    global.msg[3] = "obj_getsusieevent_slash_Step_0_gml_38_0"
    gml_Script_scr_susface_ch1(4, 1)
    global.msg[5] = "obj_getsusieevent_slash_Step_0_gml_40_0"
    global.msg[6] = "obj_getsusieevent_slash_Step_0_gml_41_0"
    gml_Script_scr_ralface_ch1(7, 8)
    global.msg[8] = "obj_getsusieevent_slash_Step_0_gml_43_0"
    global.msg[9] = "obj_getsusieevent_slash_Step_0_gml_44_0"
    gml_Script_scr_susface_ch1(10, 1)
    global.msg[11] = "obj_getsusieevent_slash_Step_0_gml_46_0"
    gml_Script_scr_ralface_ch1(12, 1)
    global.msg[13] = "obj_getsusieevent_slash_Step_0_gml_48_0"
    global.msg[14] = "obj_getsusieevent_slash_Step_0_gml_49_0"
    global.msg[15] = "obj_getsusieevent_slash_Step_0_gml_50_0"
    global.msg[16] = "obj_getsusieevent_slash_Step_0_gml_51_0"
    gml_Script_scr_susface_ch1(17, 0)
    global.msg[18] = "obj_getsusieevent_slash_Step_0_gml_53_0"
    global.msg[19] = "obj_getsusieevent_slash_Step_0_gml_54_0"
    gml_Script_scr_ralface_ch1(20, 8)
    global.msg[21] = "obj_getsusieevent_slash_Step_0_gml_56_0"
    gml_Script_scr_susface_ch1(22, 0)
    global.msg[23] = "obj_getsusieevent_slash_Step_0_gml_58_0"
    con = 3.1
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 3.1 ? 0 : 0)
{
    walkcon = 1
    vspeed = 5
    image_speed = 0.2
    con = 3.2
}
if (con == 3.2)
{
    if (y >= 200)
    {
        sprite_index = spr_susiel_dark_ch1
        hspeed = -5
        con = 3.3
        vspeed = 0
    }
}
if (con == 3.3)
{
    if 1489
    {
        if (x <= (obj_caterpillarchara_ch1.x - 60))
        {
            sprite_index = spr_susier_dark_ch1
            hspeed = 0
            image_speed = 0
            image_index = 0
            global.facing = 3
            with (obj_caterpillarchara_ch1)
                sprite_index = spr_ralseil_ch1
            con = 3.4
            alarm[4] = 30
        }
    }
}
if (con == 4.4)
{
    global.fe = 0
    global.msg[0] = "obj_getsusieevent_slash_Step_0_gml_105_0"
    gml_Script_scr_ralface_ch1(1, 8)
    global.msg[2] = "obj_getsusieevent_slash_Step_0_gml_107_0"
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 5
}
if (con == 7)
{
    global.currentsong[1] = global.currentsong[0]
    global.fc = 0
    global.typer = 51
    global.msg[0] = "obj_getsusieevent_slash_Step_0_gml_118_0"
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    d.skippable = false
    con = 8
    alarm[4] = 340
}
if (con == 6)
{
    global.currentsong[0] = "fanfare.ogg"
    con = 7
}
if (con == 5 ? 0 : 0)
{
    // WARNING: Popz'd an empty stack.
    con = 6
}
if (con == 9 ? 0 : 0)
{
    global.typer = 30
    global.fc = 1
    global.fe = 8
    global.msg[0] = "obj_getsusieevent_slash_Step_0_gml_144_0"
    con = 10
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 10 ? 0 : 0)
{
    walkcon = 1
    hspeed = -1
    image_speed = 0.1
    sprite_index = spr_susiel_dark_ch1
    global.currentsong[1] = global.currentsong[0]
    gml_Script_snd_pitch_ch1(global.currentsong[1], 0.95)
    global.fc = 0
    global.typer = 52
    global.msg[0] = "obj_getsusieevent_slash_Step_0_gml_160_0"
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    d.skippable = false
    con = 12
    alarm[4] = 320
}
if (walkcon == 1)
    // WARNING: Popz'd an empty stack.
if (con == 13 ? 0 : 0)
{
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    3
    2
    if (global.plot < 37)
        global.plot = 37
    global.facing = 0
    with (obj_caterpillarchara_ch1)
        fun = false
    global.interact = 0
    con = 14
}
if (rcon == 1 && obj_mainchara_ch1.x >= 80 && global.interact == 0)
{
    global.interact = 1
    global.typer = 31
    global.fc = 2
    global.fe = 3
    global.msg[0] = "obj_getsusieevent_slash_Step_0_gml_196_0"
    global.msg[1] = "obj_getsusieevent_slash_Step_0_gml_197_0"
    global.msg[2] = "obj_getsusieevent_slash_Step_0_gml_198_0"
    if (global.flag[205] == 0)
    {
        global.msg[0] = "obj_getsusieevent_slash_Step_0_gml_201_0"
        global.msg[1] = "obj_getsusieevent_slash_Step_0_gml_202_0"
        global.msg[2] = "obj_getsusieevent_slash_Step_0_gml_203_0"
    }
    rcon = 2
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (rcon == 2 ? 0 : 0)
{
    rcon = 3
    global.interact = 0
    if (global.plot < 39)
        global.plot = 39
}
