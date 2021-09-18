var _temp_local_var_2, _temp_local_var_3, _temp_local_var_34, _temp_local_var_35;
if (con == 1)
{
    if (obj_mainchara_ch1.x >= (x - 200) && global.interact == 0)
    {
        // WARNING: Popz'd an empty stack.
        global.facing = 1
        with (obj_caterpillarchara_ch1)
        {
            fun = true
            if (rsprite == spr_ralseir_ch1)
                sprite_index = spr_ralseir_ch1
        }
        with (obj_mainchara_ch1)
            cutscene = true
        global.interact = 1
        sprite_index = spr_lancer_lt_ch1
        var _temp_local_var_2 = s
        sprite_index = spr_susiel_dark_ch1
    }
}
if (con == 3)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("lancer.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 1)
    global.typer = 31
    global.fc = 2
    global.fe = 10
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_30_0")
    gml_Script_scr_susface_ch1(1, 2)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_32_0")
    gml_Script_scr_lanface_ch1(3, 1)
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_34_0")
    gml_Script_scr_susface_ch1(5, 2)
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_36_0")
    gml_Script_scr_lanface_ch1(7, 2)
    global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_38_0")
    gml_Script_scr_susface_ch1(9, 4)
    global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_40_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 4
}
if (con == 4)
    _temp_local_var_2 = (!s)
else
    var _temp_local_var_35 = 0
if (!s)
{
    sprite_index = spr_lancer_dt_ch1
    378
    gml_Script_instance_create_ch1(0, 0, 1464)
    con = 5
    alarm[4] = 5
}
if (con == 6)
{
    global.typer = 32
    global.fc = 5
    global.fe = 2
    global.msg[0] = "obj_susiebadguy_event_slash_Step_0_gml_60_0"
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 7
}
if (con == 7)
{
}
else
    var _temp_local_var_34 = 0
var _temp_local_var_3 = s
sprite_index = spr_susied_dark_ch1
