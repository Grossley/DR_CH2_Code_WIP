if (songplay == 2)
{
    global.currentsong[0] = snd_init_ch1("THE_HOLY.ogg")
    global.currentsong[1] = mus_loop_ext_ch1(global.currentsong[0], 0.8, 0.9)
    songplay = 3
}
if (songplay == 1)
{
    snd_free_all_ch1()
    songplay = 2
}
if (songplay == 0)
{
    with (obj_mainchara_ch1)
        visible = false
    songplay = 1
}
if (con == 0)
{
    JA_XOFF = 0
    con = 1
    alarm[4] = 220
}
if (con == 1)
{
    y -= 1
    image_index = susindex
    susindex += 0.1
    susy -= 1
    global.interact = 1
}
if (con == 2)
{
    image_speed = 0
    image_index = 0
    susindex = 0
    con = 2.1
    alarm[4] = 60
}
if (con == 3.1)
{
    JA_XOFF = 0
    if (global.lang == "ja")
        JA_XOFF = 50
    global.typer = 37
    global.msg[0] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_47_0")
    instance_create_ch1((100 + JA_XOFF), 80, obj_writer_ch1)
    con = 4
}
if (con == 4 && (!instance_exists(obj_writer_ch1)))
{
    sussprite = spr_susier_bright_ch1
    con = 3.2
    alarm[4] = 30
}
if (con == 4.2)
{
    global.msg[0] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_64_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_65_0")
    global.msg[2] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_66_0")
    global.msg[3] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_67_0")
    instance_create_ch1((100 + JA_XOFF), 80, obj_writer_ch1)
    con = 6
}
if (con == 6 && (!instance_exists(obj_writer_ch1)))
{
    sussprite = spr_susieu_bright_ch1
    con = 7
    alarm[4] = 40
}
if (con == 8)
{
    global.msg[0] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_81_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_82_0")
    global.msg[2] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_83_0")
    global.msg[3] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_84_0")
    instance_create_ch1((100 + JA_XOFF), 80, obj_writer_ch1)
    con = 8.1
}
if (con == 8.1 && (!instance_exists(obj_writer_ch1)))
{
    con = 9
    alarm[4] = 40
}
if (con == 9 && (!instance_exists(obj_writer_ch1)))
{
    y -= 1
    image_index += 0.1
}
if (con == 10)
{
    image_index = 0
    con = 9.1
    alarm[4] = 30
}
if (con == 10.1)
{
    global.typer = 42
    global.msg[0] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_112_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_113_0")
    global.msg[2] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_114_0")
    global.msg[3] = scr_84_get_lang_string_ch1("obj_fountainkris_slash_Step_0_gml_115_0")
    instance_create_ch1((80 + JA_XOFF), 80, obj_writer_ch1)
    con = 12
}
if (con == 12 && (!instance_exists(obj_writer_ch1)))
{
    snd_free_all_ch1()
    made = 1
    instance_create_ch1((x + (sprite_width / 2)), ((y + (sprite_width / 2)) + 20), obj_darkfountain_event_ch1)
    con = 13
}
