var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_5, _temp_local_var_7, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11, _temp_local_var_14, _temp_local_var_17, _temp_local_var_22, _temp_local_var_29;
if (con == 1)
{
    gml_Script_scr_encountersetup_ch1(25)
    x = global.monstermakex[0]
    y = (global.monstermakey[0] + 100)
    with (obj_mainchara_ch1)
        visible = false
    with (obj_caterpillarchara_ch1)
        visible = false
    i = 0
    while (i < 3)
    {
        c[i] = gml_Script_scr_dark_marker_ch1((global.heromakex[i] - 100), global.heromakey[i], 4197)
        var _temp_local_var_1 = c[i]
        gml_Script_scr_depth_ch1()
        hspeed = 2
        image_speed = 0.2
    }
    k = c[0]
    s = c[1]
    var _temp_local_var_3 = s
    sprite_index = spr_susier_dark_ch1
}
if (con == 2)
    global.interact = 1
if (con == 3)
{
    i = 0
    while (i < 3)
    {
        var _temp_local_var_5 = c[i]
        gml_Script_scr_halt_ch1()
    }
    con = 4
    alarm[4] = 20
    if (quick == 1)
    {
        con = 6
        alarm[4] = -10
    }
}
if (con == 5)
{
    gml_Script_snd_play_ch1(463)
    global.typer = 35
    global.fc = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_59_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_60_0")
    gml_Script_scr_ralface_ch1(2, 0)
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_62_0")
    gml_Script_scr_noface_ch1(4)
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_64_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 6
}
if (con == 6 && (!gml_Script_d_ex_ch1()))
{
    image_speed = 0.5
    gml_Script_snd_play_ch1(462)
    con = 9
    alarm[4] = 10
}
if (con == 10)
{
    gml_Script_snd_play_ch1(397)
    bulcon = 1
    smax = 2
    con = 11
    alarm[4] = 10
}
if (bulcon == 1)
{
    i = 0
    while (i < smax)
    {
        sbul[i] = gml_Script_scr_dark_marker_ch1((s.x + 70), (((-i) * 100) - 40), 3942)
        var _temp_local_var_7 = sbul[i]
        vspeed = 24
    }
    bulcon = 2
}
if (bulcon == 2)
{
    below = 0
    i = 0
    while (i < smax)
    {
        var _temp_local_var_9 = sbul[i]
        image_angle += 24
        aft = gml_Script_scr_afterimage_ch1()
        var _temp_local_var_10 = aft
        image_alpha = 0.5
    }
    if (below >= smax)
        bulcon = 3
}
if (con == 12)
{
    var _temp_local_var_11 = s
    sprite_index = spr_susie_shock_r_ch1
}
if (con == 14)
{
    image_speed = 0
    var _temp_local_var_14 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 15.1 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_17 = s
    sprite_index = spr_susieb_attack_ch1
}
if (con == 16)
{
    if (s.image_index >= 5)
        s.image_speed = 0
    if (k.image_index >= 6)
        k.image_speed = 0
    if (r.image_index >= 5)
        r.image_speed = 0
}
if (con == 17)
{
    global.fe = 3
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_175_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 18
}
if (con == 18 && (!gml_Script_d_ex_ch1()))
{
    jlaugh = gml_Script_snd_loop_ch1(462)
    image_speed = 0.25
    con = 19
    alarm[4] = 15
}
if (con == 20)
{
    global.typer = 35
    global.fc = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_192_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_193_0")
    con = 21
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 21 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_free_all_ch1()
    gml_Script_snd_stop_ch1(jlaugh)
    con = 22
    alarm[4] = 1
}
if (con == 23)
{
    obj_mainchara_ch1.x = k.x
    obj_mainchara_ch1.y = k.y
    global.cinstance[0].x = s.x
    global.cinstance[0].y = s.y
    global.cinstance[1].x = r.x
    global.cinstance[1].y = r.y
    var _temp_local_var_22 = global.cinstance[0]
    gml_Script_scr_caterpillar_interpolate_ch1()
}
if (bulcon == 10)
{
    image_speed = 0.5
    bultimer += 1
    aft = gml_Script_scr_afterimage_ch1()
    var _temp_local_var_29 = aft
    image_alpha = 0.5
}
if (con == 25)
{
    if instance_exists(obj_battlecontroller_ch1)
    {
        visible = false
        with (obj_jokerbg_triangle_real_ch1)
            on = 1
        if (global.flag[8] == 1)
        {
            with (obj_jokerbg_triangle_real_ch1)
                on = 0
        }
        con = 28
    }
}
if (con == 28)
{
    if (!instance_exists(obj_battlecontroller_ch1))
    {
        if (global.flag[241] != 6)
            global.flag[241] = 7
        con = 29
        alarm[4] = 30
    }
}
if (con == 30)
{
    with (obj_caterpillarchara_ch1)
    {
        if (lsprite == spr_susier_dark_ch1)
        {
            lsprite = spr_susier_dark_unhappy_ch1
            sprite_index = spr_susier_dark_unhappy_ch1
        }
    }
    global.currentsong[0] = gml_Script_snd_init_ch1("prejoker.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 0.75)
    with (obj_joker_body_ch1)
    {
        fade = obj_pipis_bullet_cone
        dancelv = 0
        floatsinerspeed = 1
        condition = 0
    }
    if (!instance_exists(obj_battlecontroller_ch1))
    {
        global.typer = 35
        global.fc = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_294_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_295_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_296_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_297_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_298_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_299_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_300_0")
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_301_0")
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_302_0")
        global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_303_0")
        if (global.flag[241] == 7)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_307_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_308_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_309_0")
            global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_310_0")
            global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_311_0")
            global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_312_0")
            global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_313_0")
            global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_314_0")
            global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_315_0")
            global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_316_0")
        }
        con = 31
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
}
if (con == 31 && (!gml_Script_d_ex_ch1()))
{
    with (obj_joker_body_ch1)
    {
        condition = 5
        timer = 0
    }
    con = 32
    alarm[4] = 60
}
if (con == 33)
{
    gml_Script_snd_play_ch1(462)
    global.typer = 35
    global.fc = 0
    if (global.flag[241] == 6)
    {
        gml_Script_scr_weaponget_ch1(7)
        if (noroom == false)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_344_0")
        else
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_348_0")
            global.flag[242] = 1
        }
    }
    else
    {
        gml_Script_scr_armorget_ch1(7)
        if (noroom == false)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_357_0")
        else
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_361_0")
            global.flag[242] = 2
        }
    }
    con = 34
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 34 && (!gml_Script_d_ex_ch1()))
{
    fade = gml_Script_instance_create_ch1(0, 0, 1460)
    fade.fadespeed = 0.02
    con = 35
    alarm[4] = 60
}
if (con == 36)
{
    global.entrance = 2
    global.interact = 3
    global.facing = 3
    gml_Script_instance_create_ch1(0, 0, 1462)
    room_goto(room_cc_prison_prejoker_ch1)
    con = 37
}