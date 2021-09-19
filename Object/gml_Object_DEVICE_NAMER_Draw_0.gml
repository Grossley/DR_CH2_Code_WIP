var _temp_local_var_2, _temp_local_var_6, _temp_local_var_7;
depth = -10000
if (EVENT == 0)
{
    DRAWNAME = 0
    EVENT = 70
}
var CANCELMENU = 0
if (EVENT == 70 && instance_exists(obj_writer) == 0)
{
    JA_XOFF = -12
    JA_YOFF = 0
    if (global.lang == "ja")
    {
        JA_XOFF = -50
        JA_YOFF = 10
    }
    with (obj_writer)
        instance_destroy()
    gml_Script_msgsetloc(0, "ENTER YOUR OWN NAME.", "DEVICE_NAMER_slash_Draw_0_gml_18_0")
    W = gml_Script_instance_create((80 + JA_XOFF), (20 + JA_YOFF), obj_writer)
    var _temp_local_var_2 = W
    hspace *= 0.8
    skipme = true
}
if (EVENT == 71)
{
    if gml_Script_i_ex(CHOICE)
    {
        global.truename = CHOICE.NAMESTRING
        FN_3 = global.truename
        if (FN_3 == "GASTER" || FN_3 == "がすたー" || FN_3 == "ガスター")
        {
            gml_Script_snd_free_all()
            game_restart()
        }
        if (CHOICE.backout == 1)
        {
            CANCELMENU = 1
            var _temp_local_var_6 = CHOICE
            instance_destroy()
        }
    }
    else
        EVENT = 73
}
if (EVENT == 73)
{
    with (obj_writer)
        instance_destroy()
    FOUND = 0
    FN = global.truename
    event_user(0)
    gml_Script_msgsetloc(0, "THIS IS YOUR NAME.", "DEVICE_NAMER_slash_Draw_0_gml_84_0")
    if (global.lang == "ja")
        JA_XOFF = -30
    W = gml_Script_instance_create((78 + JA_XOFF), (20 + JA_YOFF), obj_writer)
    var _temp_local_var_7 = W
    hspace *= 0.8
    skipme = true
}
if (EVENT == 74)
{
    if (FIXY < 100)
        FIXY += 2
    if (global.choice == 0)
        CANCELMENU = 1
    if (global.choice == 1)
    {
        gml_Script_snd_free_all()
        gml_Script_snd_play(245)
        fade = gml_Script_scr_fadeout(80)
        fade.depth = -1
        fade.image_blend = c_white
        EVENT = 75
        TIMER = 0
    }
}
if (CANCELMENU == 1)
{
    if (EVENT == 74)
    {
        DRAWNAME = 0
        EVENT = 70
        with (DEVICE_MENU)
        {
            ONEBUFFER = 3
            TWOBUFFER = 3
        }
        gml_Script_safe_delete(62)
        gml_Script_safe_delete(878)
    }
    else
    {
        DRAWNAME = 0
        with (DEVICE_MENU)
        {
            MENU_NO = 0
            ONEBUFFER = 3
            TWOBUFFER = 3
        }
        with (obj_writer)
            instance_destroy()
        instance_destroy()
        return;
    }
}
if (EVENT == 75)
{
    TIMER++
    if (TIMER >= 130)
        EVENT = 76
}
if (EVENT == 76)
{
    global.flag[20] = 0
    global.plot = 0
    gml_Script_scr_initialize_charnames()
    room_goto(room_krisroom)
}
if DRAWNAME
{
    gml_Script_scr_84_set_draw_font("main")
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text_transformed((gml_Script_camerax() + 160), ((gml_Script_cameray() + 40) + (FIXY / 2)), global.truename, (1 + (FIXY / 100)), (1 + (FIXY / 100)), (1 + random(4)))
    draw_set_halign(fa_left)
}
if (gml_Script_scr_debug() && keyboard_check_pressed(ord("R")))
    room_restart()
