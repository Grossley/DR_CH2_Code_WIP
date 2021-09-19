if (con == 1 && (!gml_Script_d_ex()))
{
    global.interact = 1
    timer++
    if (timer >= 15)
        con = 2
}
if (con == 2)
{
    con = 3
    gml_Script_snd_play(63)
    floppy_door.sprite_index = spr_bg_city_floppydoor_open
    othernpc = gml_Script_scr_dark_marker(214, 102, 1159)
    othernpc.depth = 899900
    gml_Script_scr_speaker("no_name")
    gml_Script_msgsetloc(0, "* They're talking about me!!!/%", "obj_ch2_room_city_susie_ralsei_fun_2_slash_Step_0_gml_25_0")
    gml_Script_d_make()
}
if (con == 3 && (!gml_Script_d_ex()))
{
    con = 4
    timer = 0
    gml_Script_snd_play(62)
    floppy_door.sprite_index = spr_bg_city_floppydoor_closed
    instance_destroy(othernpc)
    global.interact = 0
}
