var _temp_local_var_1, _temp_local_var_16;
if (papeshake == 1)
{
    with (obj_fallpaper_ch1)
    {
        if (vspeed == 0)
        {
            x = (xstart + random(1))
            y = ((ystart + 10) + random(1))
        }
    }
}
if (papefall == 1)
{
    papetimer += 1
    if (papetimer >= 3)
    {
        if (papei < papeno)
        {
            486
            486
            var _temp_local_var_1 = pape[papei]
            sprite_index = spr_paperfly_ch1
            vspeed = 1
            image_speed = 0.5
            gravity = 0.5
        }
    }
}
if (global.interact == 0 && obj_mainchara_ch1.x <= 70)
{
    obj_mainchara_ch1.x = 71
    global.fe = 7
    global.fc = 1
    global.typer = 10
    dex = 1
    global.interact = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_insideclosetcutscene_slash_Step_0_gml_45_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (dex == 1 && instance_exists(obj_dialoguer_ch1) == 0)
{
    global.facing = 1
    global.interact = 0
    dex = 0
}
if (con == 1.5)
{
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_insideclosetcutscene_slash_Step_0_gml_62_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_insideclosetcutscene_slash_Step_0_gml_63_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_insideclosetcutscene_slash_Step_0_gml_64_0")
    con = 2
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 2 && instance_exists(obj_dialoguer_ch1) == 0)
{
    image_speed = 0.2
    global.interact = 0
    hspeed = 3
    con = 3
}
if (con == 3)
{
    if (obj_mainchara_ch1.px >= 3)
        hspeed = obj_mainchara_ch1.px
    else
        hspeed = 3
    if (x >= 310)
    {
        sprite_index = spr_susieu_ch1
        con = 4
    }
}
if (con == 4 && obj_mainchara_ch1.x >= 270 && global.interact == 0)
{
    sprite_index = spr_susiel_ch1
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = "obj_insideclosetcutscene_slash_Step_0_gml_97_0"
    global.msg[1] = "obj_insideclosetcutscene_slash_Step_0_gml_98_0"
    con = 5
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 5 && 1326 == 0)
{
    sprite_index = spr_susier_ch1
    image_speed = 0.2
    global.interact = 0
    hspeed = 3
    con = 6
}
if (con == 6)
{
    if (obj_mainchara_ch1.px >= 3)
        hspeed = obj_mainchara_ch1.px
    else
        hspeed = 3
    if (x >= 490)
    {
        // WARNING: Popz'd an empty stack.
        sprite_index = spr_susier_ch1
        con = 7
    }
}
if (con == 7 && obj_mainchara_ch1.x >= 450 && global.interact == 0)
{
    sprite_index = spr_susiel_ch1
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = "obj_insideclosetcutscene_slash_Step_0_gml_134_0"
    global.msg[1] = "obj_insideclosetcutscene_slash_Step_0_gml_135_0"
    global.msg[2] = "obj_insideclosetcutscene_slash_Step_0_gml_136_0"
    con = 8
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 8 && 1326 == 0)
{
    sprite_index = spr_susier_ch1
    image_speed = 0.2
    global.interact = 0
    hspeed = 3
    con = 9
}
if (con == 9)
{
    if (obj_mainchara_ch1.px >= 3)
        hspeed = obj_mainchara_ch1.px
    else
        hspeed = 3
    if (x >= 670)
    {
        // WARNING: Popz'd an empty stack.
        sprite_index = spr_susier_ch1
        con = 10
    }
}
if (con == 10 && obj_mainchara_ch1.x >= 630 && global.interact == 0)
{
    sprite_index = spr_susiel_ch1
    global.interact = 1
    global.fe = 0
    global.fc = 1
    global.typer = 10
    global.msg[0] = "obj_insideclosetcutscene_slash_Step_0_gml_180_0"
    global.msg[1] = "obj_insideclosetcutscene_slash_Step_0_gml_181_0"
    global.msg[2] = "obj_insideclosetcutscene_slash_Step_0_gml_182_0"
    global.msg[3] = "obj_insideclosetcutscene_slash_Step_0_gml_183_0"
    global.msg[4] = "obj_insideclosetcutscene_slash_Step_0_gml_184_0"
    global.msg[5] = "obj_insideclosetcutscene_slash_Step_0_gml_185_0"
    global.msg[6] = "obj_insideclosetcutscene_slash_Step_0_gml_186_0"
    global.msg[7] = "obj_insideclosetcutscene_slash_Step_0_gml_187_0"
    con = 15
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 15 && 1326 == 0)
{
    with (obj_mainchara_ch1)
    {
        x -= 140
        fun = true
        sprite_index = spr_krisl_ch1
        image_speed = 0.2
        hspeed = -3
    }
    x -= 140
    hspeed = -3
    sprite_index = spr_susiel_ch1
    image_speed = 0.2
    con = 16
    alarm[4] = 120
}
if (con == 17)
{
    " "
    sprite_index = spr_susiel_plain_ch1
    // WARNING: Popz'd an empty stack.
    with (obj_mainchara_ch1)
        // WARNING: Popz'd an empty stack.
    1000000
    // WARNING: Popz'd an empty stack.
    with (obj_fallpaper_ch1)
        image_blend = c_gray
    376
    con = 18
    alarm[4] = 60
}
if (con == 19)
{
    global.fe = 0
    global.msg[0] = "obj_insideclosetcutscene_slash_Step_0_gml_237_0"
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 51
}
if (con == 51 ? 0 : 0)
{
    remxx = x
    hspeed = -5
    image_speed = 0.5
    con = 52
    alarm[4] = 20
}
if (con == 53)
{
    // WARNING: Popz'd an empty stack.
    remsx = x
    remsy = y
    with (obj_mainchara_ch1)
    {
        remsx = x
        remsy = y
    }
    global.fe = 9
    global.msg[0] = "obj_insideclosetcutscene_slash_Step_0_gml_266_0"
    global.msg[1] = "obj_insideclosetcutscene_slash_Step_0_gml_267_0"
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 54
}
if (con == 54 ? 0 : 0)
{
    pape_sfx = 485
    papeshake = 1
    con = 55
    alarm[4] = 30
}
if (con == 56)
{
    global.fe = 0
    global.msg[0] = "obj_insideclosetcutscene_slash_Step_0_gml_284_0"
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 57
}
if (con == 57 ? 0 : 0)
{
    image_speed = 0.2
    alarm[4] = 30
    con = 58
}
if (con == 58)
    x += 1
if (con == 59)
{
    // WARNING: Popz'd an empty stack.
    con = 60
    alarm[4] = 30
}
if (con == 61)
{
    global.msg[0] = "obj_insideclosetcutscene_slash_Step_0_gml_312_0"
    global.msg[0] = "obj_insideclosetcutscene_slash_Step_0_gml_313_0"
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 62
}
if (con == 62 ? 0 : 0)
{
    pape_sfx
    papefall = 1
    con = 69
    with (obj_mainchara_ch1)
    {
        hspeed = 0.8
        image_speed = 0.1
        cutscene = true
    }
    hspeed = 0.8
    image_speed = 0.1
    alarm[4] = 80
}
if (1326 == 0 && con == 70)
{
    hspeed = 0
    gml_Script___view_set(9, 0, -4)
    with (obj_mainchara_ch1)
        visible = false
    k = gml_Script_scr_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4205)
    var _temp_local_var_16 = k
    vspeed = 1
    gravity = 0.5
}
if (con == 22)
{
    gml_Script_snd_play_ch1(482)
    rate = 5
    rate_alpha = 1.8
    bgdraw = 1
    con = 23
    alarm[4] = 150
}
if (con == 24)
{
    gml_Script_snd_play_ch1(483)
    con = 25
    alarm[4] = 80
}
if (con == 26)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("ocean.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 0.9)
    gml_Script_snd_volume_ch1(global.currentsong[1], 0.2, 0)
    gml_Script_snd_volume_ch1(global.currentsong[1], 1, 200)
    con = 29
    alarm[4] = 260
}
if (con == 31)
{
    global.plot = 10
    314
}
if (con == 30)
{
    global.currentsong[0]
    con = 31
}
