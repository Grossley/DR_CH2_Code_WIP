if (con == 1 && obj_mainchara_ch1.x >= 1060 && global.interact == 0)
{
    global.flag[7] = 1
    with (obj_mainchara_ch1)
        cutscene = true
    global.interact = 1
    gml_Script_scr_pan_ch1(4, 0, 20)
    con = 2
    alarm[4] = 30
}
if (con == 3)
{
    global.facing = 1
    with (susie)
        sprite_index = spr_susiel_dark_ch1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerchaseevent_slash_Step_0_gml_16_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerchaseevent_slash_Step_0_gml_17_0")
    global.typer = 30
    global.fe = 0
    global.fc = 1
    con = 4
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    with (d)
        side = 0
}
if (con == 4 && instance_exists(obj_dialoguer_ch1) == 0)
{
    lancer = gml_Script_scr_dark_marker_ch1(1150, 370, 4078)
    global.facing = 2
    with (susie)
        sprite_index = spr_susieu_dark_ch1
    gml_Script_scr_pan_ch1(0, -8, 40)
    con = 5
    alarm[4] = 40
}
if (con == 6)
{
    con = 7
    alarm[4] = 30
}
if (con == 8)
{
    with (lancer)
        image_index = 1
    gml_Script_snd_play_ch1(432)
    b[0] = gml_Script_scr_marker_ch1((lancer.x + 120), (lancer.y - 20), 4046)
    b[1] = gml_Script_scr_marker_ch1((lancer.x - 160), (lancer.y - 20), 4046)
    for (i = 0; i < 2; i += 1)
    {
        b[i].image_alpha = 0
        bdir[i] = point_direction(b[i].x, b[0].y, (susie.x + 20), (susie.y + 30))
        b[i].direction = bdir[i]
        b[i].image_angle = bdir[i]
        b[i].speed = -4
        b[i].friction = 0.12
    }
    con = 9
    alarm[4] = 40
}
if (con == 9)
{
    with (b[0])
        image_alpha += 0.04
    with (b[1])
        image_alpha += 0.04
}
if (con == 10)
{
    with (lancer)
        image_index = 0
    gml_Script_snd_play_ch1(428)
    aftercon = true
    with (b[0])
        speed = 22
    with (b[1])
        speed = 22
    with (b[0])
        friction = -1
    with (b[1])
        friction = -1
    gml_Script_scr_pan_ch1(0, 31, 10)
    con = 11
    alarm[4] = 10
}
if (aftercon == true)
{
    with (b[0])
    {
        a = gml_Script_scr_afterimage_ch1()
        a.image_alpha = 0.6
    }
    with (b[1])
    {
        a = gml_Script_scr_afterimage_ch1()
        a.image_alpha = 0.6
    }
}
if (con == 11)
{
    if (gml_Script___view_get(1, 0) >= (room_height - 480))
        gml_Script___view_set(1, 0, (room_height - 480))
}
if (con == 12)
{
    with (susie)
    {
        hspeed = 16
        sprite_index = spr_susie_shock_ch1
    }
    con = 13
    alarm[4] = 5
}
if (con == 14)
{
    with (susie)
        hspeed = 0
    con = 14.1
    alarm[4] = 30
}
if (con == 15.1)
{
    with (susie)
        sprite_index = spr_susiel_dark_unhappy_ch1
    gml_Script_scr_pan_to_obj_ch1(1347, 5)
    con = 14.2
    alarm[4] = 4
}
if (con == 15.2)
{
    with (obj_panner_ch1)
        instance_destroy()
    with (obj_mainchara_ch1)
        cutscene = false
    con = 15
    alarm[4] = 10
}
if (con == 16)
{
    aftercon = false
    global.fe = 9
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerchaseevent_slash_Step_0_gml_137_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 17
}
if (con == 17 && instance_exists(obj_dialoguer_ch1) == 0)
{
    with (susie)
    {
        sprite_index = spr_susier_dark_unhappy_ch1
        image_speed = 0.334
        hspeed = 14
    }
    global.interact = 0
    con = 18
    with (obj_mainchara_ch1)
    {
        cutscene = false
        autorun = 1
    }
    global.currentsong[0] = gml_Script_snd_init_ch1("creepychase.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
    gml_Script_instance_create_ch1(0, 0, 1508)
}
if (con == 19)
    con = 20
