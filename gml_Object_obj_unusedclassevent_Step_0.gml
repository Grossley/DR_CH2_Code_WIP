var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_6, _temp_local_var_8, _temp_local_var_9, _temp_local_var_20, _temp_local_var_21, _temp_local_var_22;
if (con == 0)
{
    " "
    global.facing = 0
    con = 1
    alarm[4] = 90
}
if (con == 2)
{
    global.darkzone = false
    global.flag[29] = 1
    global.typer = 10
    global.fe = 0
    global.fc = 0
    global.msg[0] = gml_Script_stringsetloc("* Wh..^1. what happened!^2?&* I can't see anything!!/%", "obj_unusedclassevent_slash_Step_0_gml_16_0")
    gml_Script_instance_create(0, 0, obj_dialoguer)
    con = 3
}
if (con == 3)
{
}
else
    var _temp_local_var_22 = 0
61
con = 4
alarm[4] = 15
if (con == 5)
{
    185
    con = 6
    alarm[4] = 15
}
if (con == 7)
{
    59
    con = 8
    alarm[4] = 15
}
if (con == 9)
{
    56
    con = 10
    alarm[4] = 15
}
if (con == 11)
{
    66
    global.msg[0] = gml_Script_stringsetloc("* Hey^1, WATCH IT!/%", "obj_unusedclassevent_slash_Step_0_gml_52_0")
    gml_Script_instance_create(0, 0, obj_dialoguer)
    con = 12
    alarm[4] = 15
}
if (con == 13)
{
}
else
    var _temp_local_var_21 = 0
51
con = 14
alarm[4] = 15
if (con == 15)
{
    177
    con = 16
    alarm[4] = 15
}
if (con == 17)
{
    61
    con = 18
    alarm[4] = 15
}
if (con == 19)
{
    "The Return"
    64
    lightsoff = 0
    s = gml_Script_scr_marker(146, 70, 980)
    var _temp_local_var_1 = s
    depth = 100000
}
if (con == 25)
{
    global.fc = 1
    global.fe = 0
    global.msg[0] = gml_Script_stringsetloc("* H..^1. Huh...?/", "obj_unusedclassevent_slash_Step_0_gml_94_0")
    global.msg[1] = gml_Script_stringsetloc("* The unused classroom...?/", "obj_unusedclassevent_slash_Step_0_gml_95_0")
    global.msg[2] = gml_Script_stringsetloc("\\E3* How'd we get here...?/%", "obj_unusedclassevent_slash_Step_0_gml_96_0")
    con = 26
    gml_Script_instance_create(0, 0, obj_dialoguer)
}
if (con == 26)
    _temp_local_var_1 = (!s)
else
    var _temp_local_var_20 = 0
if (!s)
{
    var _temp_local_var_2 = s
    image_speed = 0.1
    vspeed = 0.5
}
if (con == 28)
{
    var _temp_local_var_3 = s
    gml_Script_scr_halt()
}
if (con == 30)
{
    var _temp_local_var_4 = s
    sprite_index = spr_susier_plain
}
if (con == 31 && (!gml_Script_d_ex()))
{
    con = 32
    alarm[4] = 60
}
if (con == 33)
{
    var _temp_local_var_6 = s
    sprite_index = spr_susied_plain
}
if (con == 34 && (!gml_Script_d_ex()))
{
    var _temp_local_var_8 = s
    vspeed = 2
    image_speed = 0.2
}
if (con == 35)
{
    if (s.y >= 140)
    {
        gml_Script_snd_play(62)
        var _temp_local_var_9 = s
        visible = false
    }
}
if (con == 37)
{
    global.interact = 0
    if (global.plot < 250)
        global.plot = 250
    con = 38
}
if (con == 50)
{
    if (obj_mainchara.y <= (obj_markerC.y - 15) && global.interact == 0)
    {
        global.interact = 1
        gml_Script_scr_speaker("none")
        gml_Script_msgsetloc(0, "* You gathered all the junk off the floor.../%", "obj_unusedclassevent_slash_Step_0_gml_186_0")
        gml_Script_d_make()
        fd = gml_Script_instance_create(0, 0, obj_fadeout)
        fd.depth = 3
        con = 51
        alarm[4] = 30
    }
}
if (con == 52 && (!gml_Script_d_ex()))
{
    gml_Script_snd_play(149)
    con = 53
    alarm[4] = 5
    global.facing = 0
    global.flag[302] = 1
    trashball = gml_Script_instance_create(0, 0, obj_kris_headobj)
    trashball.sprite_index = spr_cutscene_04_trashball
    lightsoff = 2
    with (obj_solidblock)
    {
        if (x == 108)
            instance_destroy()
    }
    with (obj_readable_room1)
    {
        if (x >= 80 && x <= 210)
            instance_destroy()
    }
}
if (con == 54)
{
    with (obj_fadeout)
        instance_destroy()
    gml_Script_instance_create(0, 0, obj_fadein)
    con = 55
    alarm[4] = 20
}
if (con == 56)
{
    gml_Script_msgsetloc(0, "* ... and turned it into a giant dusty ball./%", "obj_unusedclassevent_slash_Step_0_gml_225_0")
    gml_Script_d_make()
    con = 57
}
if (con == 57 && (!gml_Script_d_ex()))
{
    con = 58
    if (global.plot < 9)
        global.plot = 9
    global.interact = 0
}
