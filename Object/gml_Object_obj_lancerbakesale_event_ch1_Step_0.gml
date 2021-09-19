if (con == 10 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_2 = s
    sprite_index = spr_susier_dark_ch1
    image_speed = 0.334
    hspeed = 12
}
if (con == 11)
    global.interact = 1
if (con == 12)
{
    var _temp_local_var_4 = s
    x = (gml_Script___view_get(0, 0) - 140)
    hspeed = 12
    vspeed = 0
    y += 90
    sprite_index = spr_susier_dark_ch1
    gml_Script_scr_depth_ch1()
}
if (con == 16)
{
    var _temp_local_var_6 = s
    gml_Script_scr_halt_ch1()
    sprite_index = spr_susieu_dark_ch1
}
if (con == 18)
{
    var _temp_local_var_9 = s
    sprite_index = spr_susier_dark_ch1
}
if (con == 19 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_12 = l
    sprite_index = spr_lancer_ut_ch1
}
if (con == 21)
{
    var _temp_local_var_14 = l
    sprite_index = spr_lancer_lt_ch1
}
if (con == 25 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_17 = s
    hspeed = 13
    image_speed = 0.25
    sprite_index = spr_susier_dark_ch1
}
if (con == 27)
{
    var _temp_local_var_19 = s
    gml_Script_scr_halt_ch1()
    sprite_index = spr_susieu_dark_ch1
    vspeed = -10
}
if (con == 29)
{
    var _temp_local_var_21 = s
    gml_Script_scr_halt_ch1()
}
if (con == 31)
{
    var _temp_local_var_23 = s
    sprite_index = spr_susied_dark_ch1
    image_speed = 0.25
    vspeed = 12
}
if (con == 34)
{
    var _temp_local_var_25 = s
    gml_Script_scr_halt_ch1()
}
if (con == 35 && (!gml_Script_d_ex_ch1()))
{
    lnpc = gml_Script_instance_create_ch1(l.x, (l.y + 108), 1407)
    var _temp_local_var_28 = lnpc
    dfacing = 0
    sprite_index = spr_lancer_dt_ch1
    dtsprite = sprite_index
    rtsprite = sprite_index
    ltsprite = sprite_index
    utsprite = sprite_index
}
if (con == 4000)
{
    if ( >= (obj_mainchara_ch1.x.room_width - 80) && global.interact == 0)
    {
        obj_mainchara_ch1.x -= 10
        global.facing = 3
        global.typer = 32
        global.fc = 5
        global.fe = 7
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_237_0")
        gml_Script_scr_susface_ch1(1, 2)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_239_0")
        gml_Script_scr_ralface_ch1(3, 6)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbakesale_event_slash_Step_0_gml_241_0")
        global.interact = 1
        con = 2
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
}
if (con == 4002 && (!gml_Script_d_ex_ch1()))
{
    con = 4000
    global.interact = 0
}
