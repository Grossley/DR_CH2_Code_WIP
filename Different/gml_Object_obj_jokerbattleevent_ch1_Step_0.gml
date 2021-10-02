if (con == 1)
{
    scr_encountersetup_ch1(25)
    x = global.monstermakex[0]
    y = (global.monstermakey[0] + 100)
    with (obj_mainchara_ch1)
        visible = false
    with (obj_caterpillarchara_ch1)
        visible = false
    for (i = 0; i < 3; i += 1)
    {
        c[i] = scr_dark_marker_ch1((global.heromakex[i] - 100), global.heromakey[i], spr_krisr_dark_ch1)
        with (c[i])
        {
            scr_depth_ch1()
            hspeed = 2
            image_speed = 0.2
        }
        if (quick == 1)
        {
            with (c[i])
            {
                x += 1
                scr_depth_ch1()
                hspeed = 5
                image_speed = 0.334
            }
        }
    }
    k = c[0]
    s = c[1]
    with (s)
        sprite_index = spr_susier_dark_ch1
    r = c[2]
    with (r)
        sprite_index = spr_ralseir_ch1
    con = 2
    alarm[4] = 83
    if (quick == 1)
        alarm[4] = 33
}
if (con == 2)
    global.interact = 1
if (con == 3)
{
    for (i = 0; i < 3; i += 1)
    {
        with (c[i])
            scr_halt_ch1()
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
    snd_play_ch1(snd_joker_laugh1_ch1)
    global.typer = 35
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_59_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_60_0")
    scr_ralface_ch1(2, 0)
    global.msg[3] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_62_0")
    scr_noface_ch1(4)
    global.msg[5] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_64_0")
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
    con = 6
}
if (con == 6 && (!d_ex_ch1()))
{
    image_speed = 0.5
    snd_play_ch1(snd_joker_laugh0_ch1)
    con = 9
    alarm[4] = 10
}
if (con == 10)
{
    snd_play_ch1(snd_rudebuster_swing_ch1)
    bulcon = 1
    smax = 2
    con = 11
    alarm[4] = 10
}
if (bulcon == 1)
{
    for (i = 0; i < smax; i += 1)
    {
        sbul[i] = scr_dark_marker_ch1((s.x + 70), (((-i) * 100) - 40), spr_joker_scythebody_ch1)
        with (sbul[i])
            vspeed = 24
        with (sbul[i])
            image_angle = random(360)
    }
    bulcon = 2
}
if (bulcon == 2)
{
    below = 0
    for (i = 0; i < smax; i += 1)
    {
        with (sbul[i])
        {
            image_angle += 24
            aft = scr_afterimage_ch1()
            with (aft)
                image_alpha = 0.5
        }
        if (sbul[i].y >= (__view_get((1 << 0), 0) + 580))
            below += 1
    }
    if (below >= smax)
        bulcon = 3
}
if (con == 12)
{
    with (s)
        sprite_index = spr_susie_shock_r_ch1
    with (r)
        sprite_index = spr_ralsei_shock_overworld_ch1
    for (i = 0; i < 3; i += 1)
    {
        with (c[i])
        {
            hspeed = -10
            friction = 1
        }
    }
    con = 13
    alarm[4] = 45
    if (quick == 1)
    {
        con = 22
        alarm[4] = 40
        snd_free_all_ch1()
    }
}
if (con == 14)
{
    image_speed = 0
    with (s)
        sprite_index = spr_susier_dark_unhappy_ch1
    with (r)
        sprite_index = spr_ralseir_ch1
    global.typer = 30
    global.fe = 0
    global.typer = 35
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_140_0")
    scr_susface_ch1(1, 0)
    global.msg[2] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_142_0")
    global.msg[3] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_143_0")
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
    con = 15.1
}
if (con == 15.1 && (!d_ex_ch1()))
{
    with (s)
        sprite_index = spr_susieb_attack_ch1
    with (r)
        sprite_index = spr_ralseib_attack_ch1
    with (k)
        sprite_index = spr_krisb_attack_ch1
    for (i = 0; i < 3; i += 1)
    {
        c[i].image_index = 0
        c[i].image_speed = 0.25
    }
    con = 16
    alarm[4] = 60
    snd_play_ch1(snd_laz_c_ch1)
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
    global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_175_0")
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
    con = 18
}
if (con == 18 && (!d_ex_ch1()))
{
    jlaugh = snd_loop_ch1(snd_joker_laugh0_ch1)
    image_speed = 0.25
    con = 19
    alarm[4] = 15
}
if (con == 20)
{
    global.typer = 35
    global.fc = 0
    global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_192_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_193_0")
    con = 21
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
}
if (con == 21 && (!d_ex_ch1()))
{
    snd_free_all_ch1()
    snd_stop_ch1(jlaugh)
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
    with (global.cinstance[0])
        scr_caterpillar_interpolate_ch1()
    with (global.cinstance[1])
        scr_caterpillar_interpolate_ch1()
    scr_caterpillar_facing_ch1(1)
    with (obj_mainchara_ch1)
        visible = true
    with (global.cinstance[0])
        visible = true
    with (global.cinstance[1])
        visible = true
    with (k)
        visible = false
    with (r)
        visible = false
    with (s)
        visible = false
    global.flag[9] = 1
    global.batmusic[0] = snd_init_ch1("joker.ogg")
    global.encounterno = 25
    global.specialbattle = 3
    instance_create_ch1(0, 0, obj_encounterbasic_ch1)
    con = 25
    bultimer = 0
    bulcon = 10
}
if (bulcon == 10)
{
    image_speed = 0.5
    bultimer += 1
    aft = scr_afterimage_ch1()
    with (aft)
        image_alpha = 0.5
    y -= 16
    x += 5
    bultimer += 1
    if (bultimer >= 10)
        bulcon = 11
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
    global.currentsong[0] = snd_init_ch1("prejoker.ogg")
    global.currentsong[1] = mus_loop_ext_ch1(global.currentsong[0], 0.7, 0.75)
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
        global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_294_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_295_0")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_296_0")
        global.msg[3] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_297_0")
        global.msg[4] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_298_0")
        global.msg[5] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_299_0")
        global.msg[6] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_300_0")
        global.msg[7] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_301_0")
        global.msg[8] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_302_0")
        global.msg[9] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_303_0")
        if (global.flag[241] == 7)
        {
            global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_307_0")
            global.msg[1] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_308_0")
            global.msg[2] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_309_0")
            global.msg[3] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_310_0")
            global.msg[4] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_311_0")
            global.msg[5] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_312_0")
            global.msg[6] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_313_0")
            global.msg[7] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_314_0")
            global.msg[8] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_315_0")
            global.msg[9] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_316_0")
        }
        con = 31
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
    }
}
if (con == 31 && (!d_ex_ch1()))
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
    con = 34
    snd_play_ch1(snd_joker_laugh0_ch1)
    global.typer = 35
    global.fc = 0
    scr_keyitemget_ch1(13)
    global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_362_0")
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
}
if (con == 34 && (!d_ex_ch1()))
{
    if (global.flag[241] == 6)
    {
        scr_weaponget_ch1(7)
        if (noroom == false)
            global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_344_0")
        else
        {
            global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_348_0")
            global.flag[242] = 1
        }
    }
    else
    {
        scr_armorget_ch1(7)
        if (noroom == false)
            global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_357_0")
        else
        {
            global.msg[0] = scr_84_get_lang_string_ch1("obj_jokerbattleevent_slash_Step_0_gml_361_0")
            global.flag[242] = 2
        }
    }
    con = 35
    instance_create_ch1(0, 0, obj_dialoguer_ch1)
}
if (con == 35 && (!d_ex_ch1()))
{
    fade = instance_create_ch1(0, 0, obj_fadeout_ch1)
    fade.fadespeed = 0.02
    con = 36
    alarm[4] = 60
}
if (con == 37)
{
    global.entrance = 2
    global.interact = 3
    global.facing = 3
    instance_create_ch1(0, 0, obj_persistentfadein_ch1)
    room_goto(room_cc_prison_prejoker_ch1)
    con = 38
}
