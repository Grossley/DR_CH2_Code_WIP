if (con == 1)
{
    gml_Script_snd_free_all_ch1()
    y = 200
    global.interact = 1
    ral = gml_Script_scr_dark_marker_ch1(-50, global.cinstance[0].y, 3570)
    k = gml_Script_scr_dark_marker_ch1(0, obj_mainchara_ch1.y, 4197)
    c[0] = k
    c[1] = ral
    with (obj_caterpillarchara_ch1)
        visible = false
    with (obj_mainchara_ch1)
        visible = false
    with (ral)
    {
        hspeed = 4
        image_speed = 0.2
    }
    with (k)
    {
        hspeed = 4
        image_speed = 0.2
    }
    con = 2
    alarm[4] = 30
}
if (con == 2)
    global.interact = 1
if (con == 3)
{
    with (obj_marker_ch1)
        gml_Script_scr_halt_ch1()
    con = 4
    alarm[4] = 20
}
if (con == 5)
{
    global.fc = 0
    global.fe = 0
    global.typer = 32
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_57_0")
    gml_Script_scr_ralface_ch1(1, 3)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_59_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 5.1
}
if (con == 5.1 && (!gml_Script_d_ex_ch1()))
{
    global.currentsong[0] = gml_Script_snd_init_ch1("lancer.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.6, 1)
    sprite_index = spr_lancer_lt_mustache_ch1
    global.fc = 5
    global.fe = 13
    global.typer = 32
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_74_0")
    gml_Script_scr_ralface_ch1(1, 1)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_76_0")
    gml_Script_scr_lanface_ch1(3, "E")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_78_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 6
}
if (con == 6 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_play_ch1(454)
    sprite_index = spr_lancer_lt_laugh_mustache_ch1
    image_speed = 0.25
    con = 7
    alarm[4] = 50
}
if (con == 8)
{
    sprite_index = spr_lancer_lt_mustache_ch1
    image_index = 0
    image_speed = 0
    global.fc = 2
    global.typer = 31
    global.fe = 11
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_103_0")
    gml_Script_scr_lanface_ch1(1, "D")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_105_0")
    gml_Script_scr_ralface_ch1(3, "C")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_107_0")
    gml_Script_scr_lanface_ch1(5, "E")
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_109_0")
    gml_Script_scr_ralface_ch1(7, 1)
    global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_111_0")
    global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_112_0")
    global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_113_0")
    gml_Script_scr_lanface_ch1(11, "E")
    global.msg[12] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_115_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 8.1
}
if (con == 8.1 && (!gml_Script_d_ex_ch1()))
{
    easel = gml_Script_scr_dark_marker_ch1(280, -80, 3694)
    with (easel)
    {
        vspeed = 3
        gravity = 0.5
        depth = 700000
    }
    gml_Script_snd_play_ch1(362)
    con = 8.2
}
if (con == 8.2)
{
    if (easel.y >= 155)
    {
        with (easel)
        {
            speed = 0
            gravity = 0
            y = 160
        }
        gml_Script_snd_play_ch1(378)
        gml_Script_instance_create_ch1(0, 0, 1464)
        con = 8.3
        alarm[4] = 30
    }
}
if (con == 9.3 && (!gml_Script_d_ex_ch1()))
{
    with (k)
    {
        hspeed = 8
        sprite_index = spr_krisr_dark_ch1
        image_speed = 0.25
    }
    with (ral)
    {
        hspeed = 8
        sprite_index = spr_ralseir_ch1
        image_speed = 0.25
    }
    hspeed = -1
    con = 10
    alarm[4] = 26
}
if (con == 11)
{
    with (k)
        gml_Script_scr_halt_ch1()
    with (ral)
        gml_Script_scr_halt_ch1()
    with (k)
        sprite_index = spr_krisu_dark_ch1
    with (ral)
        sprite_index = spr_ralseiu_ch1
    gml_Script_scr_halt_ch1()
    con = 12
    alarm[4] = 30
}
if (con == 13)
{
    global.typer = 32
    global.fc = 5
    global.fe = 14
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_187_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_188_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 23
}
if (con == 23 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_free_all_ch1()
    with (ral)
        gml_Script_scr_halt_ch1()
    with (k)
        gml_Script_scr_halt_ch1()
    con = 24
    alarm[4] = 5
}
if (con == 25)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("thrashmachine.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.6, 1)
    gml_Script_instance_create_ch1(0, 0, 1363)
    con = 30
}
if (con == 30 && (!instance_exists(obj_thrashcontroller_ch1)))
{
    gml_Script_snd_free_all_ch1()
    with (ral)
        sprite_index = spr_ralseir_ch1
    with (k)
        sprite_index = spr_krisr_dark_ch1
    global.typer = 32
    global.fc = 5
    global.fe = 14
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_223_0")
    gml_Script_scr_ralface_ch1(1, 8)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_225_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 31
}
if (con == 31 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_play_ch1(381)
    with (bush)
        image_index = 1
    s = gml_Script_scr_dark_marker_ch1((bush.x + 88), (bush.y + 44), 3548)
    with (s)
    {
        vspeed = 8
        image_speed = 0.25
        gml_Script_scr_depth_ch1()
    }
    bush_debris_obj = gml_Script_scr_dark_marker_ch1(s.x, s.y, 4092)
    bush_debris_obj.depth = (s.depth - 20)
    bush_debris = 1
    hspeed = 8
    con = 32
}
if (bush_debris == 1)
{
    if (instance_exists(s) && instance_exists(bush_debris_obj))
    {
        bush_debris_obj.x = s.x
        bush_debris_obj.y = s.y
        bush_debris_obj.depth = (s.depth - 20)
    }
}
if (con == 32)
{
    move_finished = 0
    if (s.y >= 185)
    {
        with (s)
        {
            gml_Script_scr_halt_ch1()
            y = 185
            sprite_index = spr_susiel_dark_ch1
        }
        move_finished += 1
    }
    if (x >= 460)
    {
        x = 460
        speed = 0
        move_finished += 1
    }
    if (move_finished == 2)
        con = 35
}
if (con == 33)
{
    with (s)
        gml_Script_scr_halt_ch1()
    con = 34
    alarm[4] = 10
}
if (con == 35)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("lancer.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.6, 1)
    global.fc = 1
    global.fe = 2
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_299_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_300_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 39
}
if (con == 39 && (!gml_Script_d_ex_ch1()))
{
    with (s)
    {
        gml_Script_scr_depth_ch1()
        hspeed = -8
        image_speed = 0.334
    }
    with (k)
        hspeed = -8
    with (ral)
        hspeed = -8
    con = 40
    alarm[4] = 12
}
if (con == 41)
{
    with (s)
        gml_Script_scr_halt_ch1()
    with (k)
        gml_Script_scr_halt_ch1()
    with (ral)
        gml_Script_scr_halt_ch1()
    gml_Script_scr_halt_ch1()
    s.sprite_index = spr_susieu_dark_ch1
    con = 123
    alarm[4] = 60
}
if (con == 124)
{
    type = -1
    topstat = -1
    topstatlevel = 0
    for (i = 0; i < 6; i += 1)
    {
        if (stat[i] == topstatlevel && topstatlevel >= 2)
            type = 7
        if (stat[i] > topstatlevel)
        {
            topstat = i
            topstatlevel = stat[i]
        }
    }
    type = topstat
    if (type == 7)
        type = -1
    if (topstatlevel == 0)
        type = 6
    con = 128
    global.typer = 30
    global.fc = 1
    global.fe = 4
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_359_0")
    if (type == -1)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_363_0")
    if (type == 0)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_367_0")
    if (type == 1)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_371_0")
    if (type == 2)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_375_0")
    if (type == 3)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_379_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_380_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_381_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_382_0")
        gml_Script_scr_ralface_ch1(4, 6)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_384_0")
    }
    if (type == 4)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_388_0")
    if (type == 5)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_392_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_393_0")
    }
    if (type == 6)
    {
        with (s)
            image_speed = 0
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_401_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_402_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_403_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_404_0")
        con = 126
    }
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 126 && (!gml_Script_d_ex_ch1()))
{
    with (s)
        gml_Script_scr_halt_ch1()
    with (s)
        sprite_index = spr_susieu_dark_ch1
    con = 127
    alarm[4] = 60
}
if (con == 128 && (!gml_Script_d_ex_ch1()))
{
    with (s)
        sprite_index = spr_susier_dark_ch1
    global.typer = 30
    global.fc = 1
    global.fe = 2
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_427_0")
    gml_Script_scr_lanface_ch1(1, "D")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_429_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_430_0")
    if (type == 6)
    {
        with (s)
            sprite_index = spr_susiel_dark_unhappy_ch1
        global.fe = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_435_0")
        gml_Script_scr_lanface_ch1(1, "D")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_437_0")
        gml_Script_scr_susface_ch1(3, 2)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_439_0")
        gml_Script_scr_lanface_ch1(5, "E")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_441_0")
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_442_0")
    }
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 49
}
if (con == 49 && (!gml_Script_d_ex_ch1()))
{
    with (s)
    {
        sprite_index = spr_susier_dark_ch1
        hspeed = 12
        image_speed = 0.334
    }
    with (easel)
        hspeed = 12
    hspeed = 12
    con = 50
    gml_Script_snd_volume_ch1(global.currentsong[1], 0, 30)
    alarm[4] = 60
}
if (con == 51)
{
    gml_Script_snd_free_all_ch1()
    global.typer = 31
    global.fe = 0
    global.fc = 2
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashmaker_event_slash_Step_0_gml_465_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 52
}
if (con == 52 && (!gml_Script_d_ex_ch1()))
{
    with (ral)
        sprite_index = spr_ralseir_ch1
    with (k)
        sprite_index = spr_krisr_dark_ch1
    con = 54
    alarm[4] = 5
}
if (con == 55)
{
    r = ral
    obj_mainchara_ch1.x = k.x
    obj_mainchara_ch1.y = k.y
    with (obj_mainchara_ch1)
        visible = true
    gml_Script_scr_unmarkify_caterpillar_ch1()
    gml_Script_scr_caterpillar_facing_ch1(1)
    global.facing = 0
    with (ral)
        instance_destroy()
    with (k)
        instance_destroy()
    with (s)
        instance_destroy()
    event_user(1)
    con = 56
    global.flag[226] = 1
    global.interact = 0
    gml_Script_scr_tempsave_ch1()
    instance_destroy()
}
