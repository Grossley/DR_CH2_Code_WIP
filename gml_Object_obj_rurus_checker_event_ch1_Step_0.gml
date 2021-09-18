var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_5, _temp_local_var_7, _temp_local_var_8, _temp_local_var_11, _temp_local_var_15, _temp_local_var_18, _temp_local_var_20, _temp_local_var_21, _temp_local_var_22, _temp_local_var_23, _temp_local_var_27;
if (con == 1)
{
    if (obj_mainchara_ch1.x >= x && global.interact == 0)
    {
        global.interact = 1
        con = 2
        global.facing = 1
        with (obj_caterpillarchara_ch1)
        {
            sprite_index = rsprite
            fun = true
        }
    }
}
if (con == 2)
{
    darkfade = gml_Script_scr_marker_ch1(-10, -10, 4276)
    darkfade.image_xscale = 700
    darkfade.image_yscale = 400
    darkfade.image_alpha = 0
    darkfade.depth = 800000
    darkfade.image_blend = c_black
    fade = 0
    con = 3
}
if (con == 3)
{
    // WARNING: Popz'd an empty stack.
    with (obj_caterpillarchara_ch1)
        image_index = 0
    gml_Script_scr_pan_ch1(4, 0, 40)
    fade += 0.02
    darkfade.image_alpha = fade
    if (fade >= 0.6)
    {
        con = 4
        alarm[4] = 11
    }
}
if (con == 5)
{
    global.msg[0] = "obj_rurus_checker_event_slash_Step_0_gml_45_0"
    global.typer = 42
    gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 120), 50, 1327)
    con = 6
}
if (con == 6 && (!1327))
{
    appear = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 420), (gml_Script___view_get(1, 0) + 160), 1370)
    360
    con = 14
    rurus = gml_Script_scr_dark_marker_ch1(appear.x, appear.y, 3681)
    rurus.visible = false
    alarm[4] = 60
}
if (con == 15)
{
    var _temp_local_var_3 = rurus
    visible = true
}
if (con == 16)
{
    var _temp_local_var_5 = darkfade
    image_alpha -= 0.05
    if (image_alpha <= 0)
        image_alpha = 0
}
if (con == 17)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("ruruskaado.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
    global.fc = 18
    global.fe = 0
    global.typer = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_88_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_89_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_90_0")
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    d.side = 1
    con = 18
}
if (con == 18 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_7 = rurus
    hspeed = 7
}
if (con == 20)
{
    var _temp_local_var_8 = rurus
    gml_Script_scr_halt_ch1()
}
if (con == 22)
{
    var _temp_local_var_11 = checker
    visible = true
}
if (con == 23 && (!gml_Script_d_ex_ch1()))
{
    global.typer = 6
    global.fc = 18
    global.fe = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_161_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_162_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 24
}
if (con == 24 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_play_ch1(378)
    gml_Script_instance_create_ch1(0, 0, 1464)
    var _temp_local_var_15 = checker
    image_index = 4
}
if (con == 26)
{
    global.fc = 2
    global.fe = 3
    global.typer = 31
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_181_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_182_0")
    global.msg[2] = "%%"
    con = 27
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 27 && (!gml_Script_d_ex_ch1()))
{
    global.fc = 18
    global.typer = 6
    global.fe = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_194_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_195_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_196_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 28
}
if (con == 28 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_18 = rurus
    hspeed = 10
}
if (con == 30)
{
    var _temp_local_var_20 = checker
    speed = 0
}
if (con == 32)
{
    var _temp_local_var_21 = checker
    instance_destroy()
}
if (con == 36)
{
    if (!instance_exists(obj_battlecontroller_ch1))
    {
        rurus.x = (gml_Script___view_get(0, 0) + 660)
        var _temp_local_var_22 = rurus
        hspeed = -12
    }
}
if (con == 37)
{
    if (rurus.x <= (gml_Script___view_get(0, 0) + 420))
    {
        var _temp_local_var_23 = rurus
        gml_Script_scr_halt_ch1()
    }
}
if (con == 39)
{
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_260_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_261_0")
    global.fc = 18
    global.typer = 6
    global.fe = 6
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 39.1
}
if (con == 39.1 && (!gml_Script_d_ex_ch1()))
{
    global.currentsong[0] = gml_Script_snd_init_ch1("ruruskaado.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 0.9)
    global.fe = 5
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_274_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_275_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_276_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_277_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_278_0")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_279_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 40
}
if (con == 40 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_free_all_ch1()
    con = 41
    alarm[4] = 30
}
if (con == 42)
{
    global.fc = 2
    global.fe = 6
    global.typer = 31
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_296_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 43
}
if (con == 43 && (!gml_Script_d_ex_ch1()))
{
    global.fc = 18
    global.fe = 3
    global.typer = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_checker_event_slash_Step_0_gml_306_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 44
    var _temp_local_var_27 = rurus
    hspeed = 24
}
if (con == 44 && (!gml_Script_d_ex_ch1()))
{
    with (obj_caterpillarchara_ch1)
        fun = false
    global.facing = 0
    global.plot = 175
    global.interact = 0
    con = 45
    instance_destroy()
}
