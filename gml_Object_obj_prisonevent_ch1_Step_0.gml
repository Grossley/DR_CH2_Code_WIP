var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_10, _temp_local_var_13, _temp_local_var_14, _temp_local_var_17, _temp_local_var_22, _temp_local_var_24, _temp_local_var_27, _temp_local_var_30, _temp_local_var_31, _temp_local_var_33, _temp_local_var_34, _temp_local_var_36, _temp_local_var_45, _temp_local_var_46, _temp_local_var_47, _temp_local_var_49, _temp_local_var_50, _temp_local_var_55, _temp_local_var_58, _temp_local_var_60, _temp_local_var_62, _temp_local_var_64, _temp_local_var_78;
if (con == 1)
{
    doorblock = gml_Script_instance_create_ch1(640, 360, 1656)
    var _temp_local_var_1 = doorblock
    image_xscale = 2
}
if (con == 2)
    global.interact = 1
if (con == 3)
{
    global.typer = 6
    global.fc = 0
    var _temp_local_var_5 = diamond
    image_speed = 0.25
}
if (con == 4 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_7 = diamond
    image_speed = 0.5
    vspeed = 5
}
if (con == 6)
{
    moveamt += 0.1
    k.x = (kx + random(moveamt))
    k.y = (ky + random(moveamt))
    r.x = (rx + random(moveamt))
    r.y = (ry + random(moveamt))
    if (moveamt >= 3)
    {
        r.x = rx
        r.y = ry
        k.x = kx
        k.y = ky
        var _temp_local_var_8 = k
        sprite_index = spr_krisd_dark_ch1
    }
}
if (con == 8)
{
    var _temp_local_var_10 = r
    sprite_index = spr_ralseir_ch1
}
if (con == 8.1 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_13 = r
    sprite_index = spr_ralseid_ch1
}
if (con == 8.2)
{
    var _temp_local_var_14 = exc
    instance_destroy()
}
if (con == 9 && (!gml_Script_d_ex_ch1()))
{
    rnpc = gml_Script_instance_create_ch1(r.x, r.y, 1407)
    var _temp_local_var_17 = rnpc
    y += sprite_height
    sprite_index = spr_ralseid_ch1
    dtsprite = spr_ralseid_ch1
    utsprite = spr_ralseiu_ch1
    rtsprite = spr_ralseir_ch1
    ltsprite = spr_ralseil_ch1
    gml_Script_scr_depth_ch1()
}
if (con == 15 && (!gml_Script_d_ex_ch1()))
{
    remfacing = global.facing
    global.interact = 1
    global.fe = 1
    global.fc = 2
    global.typer = 31
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_140_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_141_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_142_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_143_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_144_0")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_145_0")
    gml_Script_scr_susface_ch1(6, 7)
    global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_147_0")
    global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_148_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 16
}
if (con == 16)
{
    global.facing = remfacing
    global.interact = 1
}
if (con == 16 && (!gml_Script_d_ex_ch1()))
{
    r = gml_Script_scr_dark_marker_ch1(rnpc.x, rnpc.y, 3860)
    var _temp_local_var_22 = r
    gml_Script_scr_depth_ch1()
}
if (con == 18)
{
    var _temp_local_var_24 = exc
    instance_destroy()
}
if (con == 19 && (!gml_Script_d_ex_ch1()))
{
    irondoor2 = gml_Script_scr_dark_marker_ch1(200, 520, 3592)
    var _temp_local_var_27 = irondoor2
    gml_Script_scr_depth_ch1()
}
if (con == 21)
{
    global.fc = 1
    global.fe = 2
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_207_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_208_0")
    gml_Script_scr_ralface_ch1(2, 3)
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_210_0")
    con = 22
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 22 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_30 = s
    sprite_index = spr_susiel_dark_unhappy_ch1
}
if (con == 24)
{
    var _temp_local_var_31 = s
    sprite_index = spr_susier_dark_ch1
}
if (con == 25 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_33 = s
    sprite_index = spr_susieu_dark_ch1
}
if (con == 27)
{
    var _temp_local_var_34 = s
    sprite_index = spr_susier_dark_ch1
}
if (con == 200 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_36 = s
    sprite_index = spr_susieu_dark_ch1
}
if (con == 201 && (!gml_Script_d_ex_ch1()))
{
    if (obj_suitspuzz_ch1.won == 0)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 6
        con = 200
        if (obj_suitspuzz_ch1.suit[0] == 3 && obj_suitspuzz_ch1.suit[1] == 4 && obj_suitspuzz_ch1.suit[2] == 3)
        {
            if (wcon == 1)
            {
                global.fe = 2
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_299_0")
                global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_300_0")
                global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_301_0")
                gml_Script_instance_create_ch1(0, 0, 1326)
                wcon = 2
            }
            if (wcon == 0)
            {
                global.fe = 2
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_309_0")
                global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_310_0")
                global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_311_0")
                gml_Script_instance_create_ch1(0, 0, 1326)
                wcon = 1
            }
        }
        if (obj_suitspuzz_ch1.reset == true && pcon == 0)
        {
            pcon = 1
            global.fe = 0
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_322_0")
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
        if (obj_suitspuzz_ch1.reset == 2 && pcon == 1)
        {
            pcon = 2
            global.fe = 0
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_329_0")
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
        if (obj_suitspuzz_ch1.reset == 3 && pcon == 2)
        {
            pcon = 3
            global.fe = 6
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_336_0")
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
        if (obj_suitspuzz_ch1.reset == 4 && pcon == 3)
        {
            pcon = 4
            global.fe = 9
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_343_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_344_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_345_0")
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
        if (obj_suitspuzz_ch1.swap == 1 && obj_suitspuzz_ch1.suit[0] == 0 && scon == 0 && pcon == 0)
        {
            scon = 1
            global.fe = 0
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_354_0")
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
    }
    else
    {
        var _temp_local_var_78 = irondoor2
        instance_destroy()
    }
}
if (con == 203)
{
    global.typer = 30
    global.fe = 2
    global.fc = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_376_0")
    gml_Script_scr_ralface_ch1(1, 8)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_378_0")
    gml_Script_scr_susface_ch1(3, 1)
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_380_0")
    con = 204
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 204 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_45 = s
    sprite_index = spr_susiel_dark_ch1
    image_speed = 0.25
    hspeed = -6
}
if (con == 206)
{
    var _temp_local_var_46 = s
    gml_Script_scr_halt_ch1()
    sprite_index = spr_susied_dark_ch1
    image_speed = 0.25
    vspeed = 6
}
if (con == 208)
{
    gml_Script_scr_pan_ch1(6, -2, 60)
    con = 209
    alarm[4] = 90
}
if (con == 210)
{
    var _temp_local_var_47 = r
    sprite_index = spr_ralseid_ch1
}
if (con == 228 && (!gml_Script_d_ex_ch1()))
{
    fade = gml_Script_instance_create_ch1(0, 0, 1460)
    var _temp_local_var_49 = fade
    fadespeed = 0.02
}
if (con == 230)
{
    gml_Script_scr_losechar_ch1()
    global.char[0] = 2
    global.entrance = 0
    global.interact = 3
    global.plot = 152
    pers = gml_Script_instance_create_ch1(0, 0, 1462)
    room_goto(room_cc_prisonlancer_ch1)
    con = 231
}
if (con == 300)
{
    gml_Script___view_set(0, 0, 440)
    with (obj_mainchara_ch1)
    {
        cutscene = true
        visible = false
    }
    obj_mainchara_ch1.x = 680
    obj_mainchara_ch1.y = 160
    k = gml_Script_scr_dark_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4194)
    r = gml_Script_scr_dark_marker_ch1(640, 150, 3569)
    s = gml_Script_scr_dark_marker_ch1(660, 500, 3550)
    var _temp_local_var_50 = r
    image_index = 2
}
if (con == 301)
    global.interact = 1
if (con == 302)
{
    global.fc = 2
    global.typer = 31
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_481_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 303
}
if (con == 303 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_55 = irondoor
    instance_destroy()
}
if (con == 305)
{
    var _temp_local_var_58 = exc
    instance_destroy()
}
if (con == 307)
{
    var _temp_local_var_60 = s
    gml_Script_scr_halt_ch1()
}
if (con == 309)
{
    global.fc = 1
    global.fe = 0
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_521_0")
    gml_Script_scr_ralface_ch1(1, 0)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_523_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_524_0")
    gml_Script_scr_susface_ch1(4, 0)
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_526_0")
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    con = 310
}
if (con == 310 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_62 = s
    sprite_index = spr_susied_dark_unhappy_ch1
}
if (con == 312)
{
    global.fc = 0
    global.typer = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_prisonevent_slash_Step_0_gml_543_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 313
}
if (con == 313 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_64 = s
    image_speed = 0.25
    vspeed = 6
}
if (con == 315)
{
    gml_Script_instance_create_ch1(0, 0, 1460)
    con = 316
    alarm[4] = 30
}
if (con == 317)
{
    global.plot = 156
    gml_Script_scr_losechar_ch1()
    global.char[0] = 1
    gml_Script_scr_getchar_ch1(2)
    gml_Script_scr_getchar_ch1(3)
    global.charauto[0] = 0
    global.charauto[1] = 0
    global.charauto[2] = 0
    global.charauto[3] = 0
    con = 318
    global.facing = 0
    global.entrance = 1
    global.interact = 3
    gml_Script_instance_create_ch1(0, 0, 1462)
    room_goto(room_cc_prisonlancer_ch1)
}
