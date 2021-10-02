scr_depth_ch1()
siner += 1
if (con == 1 && __view_get((0 << 0), 0) >= 280 && obj_mainchara_ch1.y > 535)
{
    darksus = scr_dark_marker_ch1(873, 602, spr_susier_shadow_ch1)
    darksus.image_speed = 0.2
    with (darksus)
        scr_depth_ch1()
    suspeed = (point_distance(873, 602, 1116, 720) / 15)
    darksus.speed = suspeed
    darksus.direction = point_direction(darksus.x, darksus.y, 1116, 720)
    con = 2
    alarm[4] = 15
}
if (con == 3)
{
    with (darksus)
        instance_destroy()
    con = 4
}
if (con == 4 && __view_get((0 << 0), 0) >= 540 && obj_mainchara_ch1.y > 535)
{
    darksus2 = scr_dark_marker_ch1(1116, 720, spr_susier_shadow_ch1)
    darksus2.image_speed = 0.2
    with (darksus2)
        scr_depth_ch1()
    suspeed = (point_distance(1116, 720, 1348, 643) / 15)
    darksus2.speed = suspeed
    darksus2.direction = point_direction(darksus2.x, darksus2.y, 1348, 643)
    con = 5
    alarm[4] = 15
}
if (con == 5)
{
    with (darksus)
        instance_destroy()
    con = 6
}
if (con == 11)
{
    with (s)
        hspeed = 0
    con = 12
    alarm[4] = 20
}
if (con == 13)
{
    global.fc = 1
    global.fe = 7
    global.typer = 30
    global.msg[0] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_57_0")
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
    con = 14
}
if (con == 14 && instance_exists(obj_dialoguer_ch1) == 0)
{
    con = 15
    alarm[4] = 30
}
if (con == 15)
    image_alpha -= 0.04
if (con == 16)
{
    with (s)
        sprite_index = spr_susiel_dark_ch1
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_78_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_79_0")
    global.msg[2] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_80_0")
    global.msg[3] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_81_0")
    global.msg[4] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_82_0")
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
    con = 17
}
if (con == 17 && instance_exists(obj_dialoguer_ch1) == 0)
{
    with (s)
        sprite_index = spr_susier_dark_ch1
    con = 18
    alarm[4] = 30
}
if (con == 19)
{
    with (s)
        sprite_index = spr_susieu_dark_ch1
    con = 20
    alarm[4] = 30
}
if (con == 21)
{
    global.fe = 6
    global.msg[0] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_104_0")
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
    con = 22
}
if (con == 22 && instance_exists(obj_dialoguer_ch1) == 0)
{
    con = 23
    alarm[4] = 30
}
if (con == 24)
{
    with (s)
        sprite_index = spr_susiel_dark_ch1
    global.fe = 7
    global.msg[0] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_119_0")
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
    con = 25
}
if (con == 25 && instance_exists(obj_dialoguer_ch1) == 0)
{
    with (s)
    {
        hspeed = -4
        image_speed = 0.2
    }
    con = 26
    alarm[4] = 15
}
if (con == 27)
{
    thisremx = s.x
    thisremy = s.y
    s.speed = (point_distance(s.x, s.y, partysus.x, partysus.y) / 10)
    s.direction = point_direction(s.x, s.y, partysus.x, partysus.y)
    con = 28
    alarm[4] = 10
}
if (con == 29)
{
    with (s)
        instance_destroy()
    with (partysus)
        visible = true
    con = 30
    alarm[4] = 30
}
if (con == 31)
{
    global.fe = 1
    global.msg[0] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_156_0")
    scr_getchar_ch1(2)
    con = 32
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
}
if (con == 32 && instance_exists(obj_dialoguer_ch1) == 0)
{
    y -= 200
    con = 33
    global.interact = 0
    speedtimer = 0
}
if (con == 33 && global.interact == 0)
{
    speedtimer += 1
    if (obj_mainchara_ch1.x < 560)
    {
        global.flag[202] = 2
        global.interact = 1
        con = 34
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_182_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
    }
    if (obj_mainchara_ch1.x > 1760)
    {
        global.interact = 1
        con = 35
        global.fc = 1
        global.typer = 30
        global.fe = 0
        if (speedtimer < 80)
        {
            global.flag[202] = 1
            global.msg[0] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_197_0")
        }
        else
            global.msg[0] = scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_201_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
    }
}
if (con == 34 && instance_exists(obj_dialoguer_ch1) == 0)
{
    with (partysus)
        visible = false
    news = scr_dark_marker_ch1(partysus.x, partysus.y, spr_susier_dark_ch1)
    with (news)
    {
        move_towards_point(940, 660, 14)
        image_speed = 0.334
    }
    con = 39
    alarm[4] = 40
}
if (con == 35 && instance_exists(obj_dialoguer_ch1) == 0)
{
    with (partysus)
        visible = false
    news = scr_dark_marker_ch1(partysus.x, partysus.y, spr_susier_dark_ch1)
    with (news)
    {
        hspeed = 14
        image_speed = 0.334
    }
    con = 39
    alarm[4] = 40
}
if (con == 40)
{
    scr_losechar_ch1()
    global.facing = 0
    if (global.plot < 14)
        global.plot = 14
    global.interact = 0
    with (news)
        instance_destroy()
    con = 41
    instance_destroy()
}
