if (con < 400)
{
    if (con == 1 && gml_Script___view_get(0, 0) >= (xx - 13) && gml_Script___view_get(0, 0) <= (xx + 20) && global.interact == 0)
    {
        gml_Script___view_set(0, 0, (xx - 10))
        global.interact = 1
        con = 40
        global.msc = 135
        gml_Script_scr_text_ch1(global.msc)
        global.fe = 3
        global.typer = 31
        global.fc = 2
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 20 && gml_Script_d_ex_ch1() == 0)
    {
        global.encounterno = 3
        global.specialbattle = 3
        global.flag[9] = 1
        global.batmusic[0] = gml_Script_snd_init_ch1("battle.ogg")
        gml_Script_instance_create_ch1(0, 0, 1488)
        con = 21
        alarm[4] = 10
    }
    if (con == 22)
    {
        if instance_exists(obj_battlecontroller_ch1)
        {
            with (dummy)
                visible = false
            con = 23
        }
    }
    if (con == 23)
    {
        if instance_exists(obj_endbattle_ch1)
        {
            con = 23.5
            alarm[4] = 20
        }
    }
    if (con >= 24 && con <= 28)
        global.interact = 1
    if (con == 24.5)
    {
        con = 24
        alarm[4] = 4
    }
    if (con == 25)
    {
        con = 26
        alarm[4] = 4
    }
    if (con == 27)
    {
        global.fc = 2
        global.fe = 0
        global.typer = 31
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_tutorialbattleevent_slash_Step_0_gml_87_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_tutorialbattleevent_slash_Step_0_gml_88_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_tutorialbattleevent_slash_Step_0_gml_89_0")
        global.msg[3] = ((gml_Script_scr_84_get_lang_string_ch1("obj_tutorialbattleevent_slash_Step_0_gml_90_0") + gml_Script_scr_get_input_name_ch1(6)) + gml_Script_scr_84_get_lang_string_ch1("obj_tutorialbattleevent_slash_Step_0_gml_90_1"))
        gml_Script_scr_noface_ch1(4)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_tutorialbattleevent_slash_Step_0_gml_92_0")
        if (global.flag[205] >= 4)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_tutorialbattleevent_slash_Step_0_gml_95_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_tutorialbattleevent_slash_Step_0_gml_96_0")
        }
        gml_Script_instance_create_ch1(0, 0, 1326)
        gml_Script_scr_itemget_ch1(4)
        con = 28
    }
    if (con == 28 && gml_Script_d_ex_ch1() == 0)
    {
        global.interact = 0
        if (global.plot < 31)
            global.plot = 31
        con = 29
        instance_destroy()
    }
    if (con == 40 && gml_Script_d_ex_ch1() == 0)
    {
        gml_Script_scr_itemget_ch1(4)
        con = 41
        if (global.plot < 31)
            global.plot = 31
        global.interact = 0
        instance_destroy()
    }
}
