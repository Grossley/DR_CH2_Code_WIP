var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_11, _temp_local_var_15, _temp_local_var_19, _temp_local_var_20, _temp_local_var_21, _temp_local_var_25, _temp_local_var_26, _temp_local_var_27, _temp_local_var_28, _temp_local_var_30, _temp_local_var_32, _temp_local_var_38, _temp_local_var_41, _temp_local_var_42, _temp_local_var_44, _temp_local_var_47, _temp_local_var_49, _temp_local_var_51, _temp_local_var_54, _temp_local_var_55, _temp_local_var_57, _temp_local_var_58, _temp_local_var_60, _temp_local_var_61, _temp_local_var_64, _temp_local_var_66, _temp_local_var_69, _temp_local_var_70, _temp_local_var_71, _temp_local_var_72, _temp_local_var_73, _temp_local_var_74, _temp_local_var_75, _temp_local_var_76, _temp_local_var_77, _temp_local_var_78, _temp_local_var_79, _temp_local_var_80;
if (con == 0 && global.interact == 0)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (obj_mainchara_ch1.x >= x)
    {
        global.interact = 1
        global.facing = 1
        with (obj_caterpillarchara_ch1)
            visible = false
        with (obj_mainchara_ch1)
            visible = false
        r = gml_Script_scr_dark_marker_ch1(obj_caterpillarchara_ch1.x, obj_caterpillarchara_ch1.y, 3569)
        k = gml_Script_scr_dark_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4196)
        if (global.flag[250] == 0)
        {
            with (obj_marker_ch1)
            {
                hspeed = 2
                image_speed = 0.2
            }
            gml_Script_scr_pan_ch1(4, 0, 70)
            gml_Script_mus_volume_ch1(global.currentsong[1], 0, 90)
            with (obj_mainchara_ch1)
                cutscene = true
            con = 1
            alarm[4] = 90
        }
        else
        {
            with (obj_marker_ch1)
            {
                hspeed = 4
                image_speed = 0.2
            }
            gml_Script_scr_pan_ch1(8, 0, 35)
            gml_Script_mus_volume_ch1(global.currentsong[1], 0, 45)
            with (obj_mainchara_ch1)
                cutscene = true
            con = 1
            alarm[4] = 45
        }
        thrashmachine = gml_Script_instance_create_ch1((xx + 740), (yy + 160), 1364)
        var _temp_local_var_2 = thrashmachine
        value = 0
        animate = 0
        bad = 1
    }
}
if (con == 2)
{
    var _temp_local_var_3 = k
    gml_Script_scr_halt_ch1()
}
if (con == 3 && (!gml_Script_d_ex_ch1()))
{
    valuetimer += 1
    if (global.flag[250] >= 1)
        valuetimer += 1
    var _temp_local_var_6 = thrashmachine
    if (value < 1)
        value += 0.04
    else
        value = 1
}
if (con == 4 && (!gml_Script_d_ex_ch1()))
{
    global.typer = 31
    global.fc = 2
    global.fe = 9
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_93_0")
    if (global.flag[250] == 1)
    {
        global.fe = 12
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_97_0")
    }
    if (global.flag[250] >= 2)
    {
        global.fe = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_102_0")
    }
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 17
}
if (con == 17 && (!gml_Script_d_ex_ch1()))
{
    global.encounterno = 31
    gml_Script_scr_encountersetup_ch1(global.encounterno)
    l = gml_Script_scr_dark_marker_ch1((global.monstermakex[1] + 200), (global.monstermakey[1] - 50), 3581)
    s = gml_Script_scr_dark_marker_ch1((global.monstermakex[0] + 200), global.monstermakey[0], 3540)
    var _temp_local_var_9 = l
    gml_Script_scr_depth_ch1()
    hspeed = -5
    image_speed = 0.1
}
if (con == 19)
{
    var _temp_local_var_11 = l
    gml_Script_scr_halt_ch1()
}
if (con == 21 && (!gml_Script_d_ex_ch1()))
{
    global.typer = 32
    global.fc = 5
    global.fe = 2
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_148_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_149_0")
    con = 21.1
    if (global.flag[250] < 1)
        gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 21.1 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_15 = r
    sprite_index = spr_ralsei_shock_overworld_ch1
}
if (con == 21.2)
{
    boomtimer += 1
    if instance_exists(boom)
    {
        if (boom.image_index >= 5)
        {
            var _temp_local_var_19 = thrashmachine
            instance_destroy()
        }
    }
    var _temp_local_var_20 = boom
    if (image_index >= 16)
        instance_destroy()
}
if (con == 21.3)
{
    var _temp_local_var_21 = s
    gml_Script_scr_halt_ch1()
    sprite_index = spr_susiel_dark_ch1
}
if (con == 26 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_25 = s
    sprite_index = spr_susieb_attack_ch1
    image_xscale = -2
    x += 80
}
if (con == 27)
{
    var _temp_local_var_26 = s
    image_index += 0.2
}
if (con == 29)
{
    lcon = 1
    ltimer = 0
    remlx = l.x
    var _temp_local_var_27 = s
    sprite_index = spr_susie_enemy_ch1
    image_xscale = 2
    x -= 80
}
if (lcon == 1)
{
    var _temp_local_var_28 = l
    x += 15
}
if (lcon == 2)
{
    var _temp_local_var_30 = l
    x -= 15
}
if (con == 30)
{
    if instance_exists(obj_choicer_neo_ch1)
    {
        choosetimer += 1
        if (choosetimer >= 30)
        {
            if (obj_choicer_neo_ch1.choiced == false)
            {
                with (obj_choicer_neo_ch1)
                {
                    canchoose = true
                    mychoice = 1
                    event_user(0)
                }
            }
            con = 31
        }
    }
    if (!gml_Script_d_ex_ch1())
        con = 31
}
if (con == 31 && (!gml_Script_d_ex_ch1()) && lcon == 3)
{
    global.flag[250] += 1
    obj_mainchara_ch1.x = k.x
    obj_mainchara_ch1.y = k.y
    global.cinstance[0].x = r.x
    global.cinstance[0].y = r.y
    global.facing = 1
    var _temp_local_var_32 = global.cinstance[0]
    gml_Script_scr_caterpillar_interpolate_ch1()
}
if (con == 35)
{
    if (!instance_exists(obj_battlecontroller_ch1))
    {
        gml_Script_snd_free_all_ch1()
        var _temp_local_var_38 = s
        visible = true
    }
}
if (con == 45 && (!gml_Script_d_ex_ch1()))
{
    global.interact = 1
    if (global.flag[249] == 0)
    {
        var _temp_local_var_41 = s
        sprite_index = spr_susie_enemy_defeat_ch1
    }
    lcon = 4
    con = 46
    alarm[4] = 30
}
if (con == 46)
    global.interact = 1
if (lcon == 4)
{
    var _temp_local_var_42 = l
    x += 15
}
if (lcon == 5)
{
    var _temp_local_var_44 = l
    x -= 15
}
if (con == 47 && lcon == 6)
{
    global.typer = 30
    global.fe = 9
    global.fc = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_454_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_455_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_456_0")
    if (global.flag[249] == 1)
    {
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_461_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_462_0")
        gml_Script_scr_lanface_ch1(2, 3)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_464_0")
        gml_Script_scr_susface_ch1(4, 0)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_466_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_467_0")
    }
    con = 48
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 48 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_47 = s
    sprite_index = spr_susiel_dark_unhappy_ch1
}
if (con == 50)
{
    var _temp_local_var_49 = s
    gml_Script_scr_halt_ch1()
}
if (con == 51 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_51 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 53)
{
    global.typer = 32
    global.fc = 5
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_509_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_510_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_511_0")
    con = 54
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 54 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_54 = s
    hspeed = -6
    image_index = 1
}
if (con == 56)
{
    var _temp_local_var_55 = s
    gml_Script_scr_halt_ch1()
}
if (con == 58)
{
    global.typer = 30
    global.fc = 1
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_535_0")
    gml_Script_d_make_ch1()
    con = 59
}
if (con == 59 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_57 = s
    sprite_index = spr_susier_dark_ch1
    image_speed = 0.2
    hspeed = 6
}
if (con == 61)
{
    var _temp_local_var_58 = s
    gml_Script_scr_halt_ch1()
}
if (con == 62 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_60 = s
    sprite_index = spr_susiel_dark_unhappy_ch1
}
if (con == 64)
{
    var _temp_local_var_61 = s
    sprite_index = spr_susier_dark_ch1
}
if (con == 65 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_64 = l
    sprite_index = spr_lancer_rt_unhappy_ch1
}
if (con == 66 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_66 = l
    sprite_index = spr_lancer_lt_ch1
}
if (con == 67 && (!gml_Script_d_ex_ch1()))
{
    global.currentsong[0] = gml_Script_snd_init_ch1("fanfare.ogg")
    global.currentsong[1] = gml_Script_mus_play_ch1(global.currentsong[0])
    global.fc = 0
    global.typer = 52
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_615_0")
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    d.skippable = false
    con = 70
}
if (con == 9999)
{
    gml_Script_snd_free_all_ch1()
    with (obj_dialoguer_ch1)
        instance_destroy()
    with (obj_writer_ch1)
        instance_destroy()
    global.typer = 30
    global.fe = 8
    global.fc = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_629_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 70
}
if (con == 70 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_free_all_ch1()
    obj_mainchara_ch1.x = k.x
    obj_mainchara_ch1.y = k.y
    scon = 1
    lcon = 20
    with (obj_mainchara_ch1)
        visible = true
    var _temp_local_var_69 = k
    visible = false
}
if (scon == 1)
{
    var _temp_local_var_70 = s
    sprite_index = spr_susiel_dark_ch1
    image_index += 0.2
    x -= 10
}
if (lcon == 20)
{
    l.sprite_index = spr_lancer_lt_ch1
    _temp_local_var_70.x = (l.x - 15)
    _temp_local_var_69.y = (l.y + 0.5)
    var _temp_local_var_71 = l
    var _temp_local_var_72 = -9
    var _temp_local_var_73 = -9
    var _temp_local_var_74 = l
    var _temp_local_var_75 = k
    var _temp_local_var_76 = l
    var _temp_local_var_77 = -9
    var _temp_local_var_78 = l
    if (l.x <= (r.x - 120))
        lcon = 21
}
if (lcon == 21)
{
    npc = gml_Script_instance_create_ch1(l.x, l.y, 1408)
    npc.sprite_index = spr_lancer_rt_ch1
    lcon = 22
    global.flag[229] = 1
    var _temp_local_var_79 = l
    visible = false
}
if (con == 72)
{
    savepoint = gml_Script_instance_create_ch1(640, 80, 1400)
    var _temp_local_var_80 = r
    visible = false
}
if (global.plot < 150 && con == 99 && global.interact == 0 && obj_mainchara_ch1.x <= 80)
{
    obj_mainchara_ch1.x = 82
    global.interact = 1
    global.typer = 31
    global.fc = 2
    global.fe = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_712_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_susieandlancer_event_slash_Step_0_gml_713_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 100
}
if (con == 100 && (!gml_Script_d_ex_ch1()))
{
    con = 99
    global.interact = 0
}
