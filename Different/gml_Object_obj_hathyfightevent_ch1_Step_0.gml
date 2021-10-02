if (con == 1 && obj_mainchara_ch1.x >= 1300 && obj_mainchara_ch1.y > 900 && global.interact == 0)
{
    global.interact = 1
    con = 2
    sprite_index = spr_lancer_lt_ch1
    instance_create_ch1((x + (sprite_width / 2)), (y - 10), obj_excblcon_ch1)
    alarm[4] = 30
}
if (con > 2)
{
    if (con == 3)
    {
        global.fc = 5
        global.typer = 32
        global.fe = 0
        global.msg[0] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_19_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_20_0")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_21_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 4
    }
    if (con == 4 && d_ex_ch1() == 0)
    {
        hspeed = 16
        con = 5
        alarm[4] = 10
    }
    if (con == 6)
    {
        instance_create_ch1(0, 0, obj_battleback_ch1)
        global.encounterno = 9
        scr_encountersetup_ch1(global.encounterno)
        global.specialbattle = 0
        global.flag[9] = 1
        global.batmusic[0] = snd_init_ch1("battle.ogg")
        instance_create_ch1(0, 0, obj_encounterbasic_ch1)
        for (i = 0; i < 3; i += 1)
        {
            h[i] = scr_dark_marker_ch1((global.monstermakex[i] + 250), global.monstermakey[i], spr_heartenemy_idle_ch1)
            with (h[i])
                hspeed = -10
        }
        con = 7
        if (global.plot < 36)
            global.plot = 36
        alarm[4] = 25
    }
    if (con == 8)
    {
        for (i = 0; i < 3; i += 1)
        {
            with (h[i])
                instance_destroy()
        }
        con = 9
        alarm[4] = 15
    }
    if (con == 15)
    {
        depth = 0
        x = (__view_get((0 << 0), 0) + 640)
        hspeed = -20
        con = 16
        alarm[4] = 15
    }
    if (con == 17)
    {
        hspeed = 0
        global.fc = 5
        global.fe = 0
        global.typer = 46
        global.msg[0] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_79_0")
        scr_ralface_ch1(1, "B")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_81_0")
        global.msg[3] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_82_0")
        global.msg[4] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_83_0")
        scr_lanface_ch1(5, 0)
        global.msg[6] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_85_0")
        global.msg[7] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_86_0")
        scr_ralface_ch1(8, 8)
        global.msg[9] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_88_0")
        scr_battletext_ch1()
        con = 18
    }
    if (con == 18 && instance_exists(obj_writer_ch1) == 0)
    {
        global.fc = 0
        hspeed = 20
        con = 19
        with (obj_battlecontroller_ch1)
            alarm[2] = 21
        alarm[4] = 20
    }
    if (con == 20)
    {
        with (obj_battlecontroller_ch1)
            noreturn = false
        con = 21
    }
    if (con == 30)
    {
        global.fc = 2
        global.fe = 8
        global.typer = 45
        global.msg[0] = scr_84_get_subst_string_ch1(scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_116_0"), string(global.monsterexp[3]), string(global.monstergold[3]))
        scr_battletext_ch1()
        con = 31
    }
    if (con == 31 && instance_exists(obj_writer_ch1) == 0)
    {
        depth = 0
        x = (__view_get((0 << 0), 0) + 640)
        hspeed = -20
        con = 32
        alarm[4] = 15
    }
    if (con == 33)
    {
        hspeed = 0
        global.fc = 5
        global.fe = 2
        global.typer = 46
        global.msg[0] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_136_0")
        scr_ralface_ch1(1, "B")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_138_0")
        scr_lanface_ch1(3, 4)
        global.msg[4] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_140_0")
        global.msg[5] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_141_0")
        scr_ralface_ch1(6, "A")
        global.msg[7] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_143_0")
        scr_lanface_ch1(8, 1)
        global.msg[9] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_145_0")
        scr_battletext_ch1()
        con = 34
    }
    if (con == 34 && instance_exists(obj_writer_ch1) == 0)
    {
        npc = instance_create_ch1(1740, 1080, obj_npc_room_ch1)
        global.fc = 0
        hspeed = 20
        con = 35
        alarm[4] = 20
    }
    if (con == 36)
    {
        with (obj_battlecontroller_ch1)
            victoried = 1
        con = 37
    }
}
if (equipcon >= 1)
{
    if (global.chararmor1[3] == 4 || global.chararmor2[3] == 4)
    {
        if (global.interact == 0 && scr_havechar_ch1(3))
        {
            global.fc = 2
            global.fe = 1
            global.typer = 31
            global.msg[0] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_181_0")
            global.msg[1] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_182_0")
            global.msg[2] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_183_0")
            if scr_havechar_ch1(2)
            {
                global.msg[2] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_186_0")
                scr_susface_ch1(3, 0)
                global.msg[4] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_188_0")
                scr_ralface_ch1(5, 8)
                global.msg[6] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_190_0")
                scr_susface_ch1(7, 7)
                global.msg[8] = scr_84_get_lang_string_ch1("obj_hathyfightevent_slash_Step_0_gml_192_0")
            }
            instance_create_ch1(0, 0, obj_dialoguer_ch1)
            equipcon = 2
            global.interact = 1
        }
    }
    if (equipcon == 2 && d_ex_ch1() == 0)
    {
        global.interact = 0
        equipcon = -1
    }
}
