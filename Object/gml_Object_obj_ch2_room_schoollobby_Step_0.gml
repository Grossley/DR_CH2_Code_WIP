if (con == 1)
{
    if (obj_mainchara.y >= 345 || obj_mainchara.x < 360 || obj_mainchara.x > 600)
    {
        con = 2
        global.interact = 1
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* (That doesn't seem like the way to the old classroom.)/%", "obj_ch2_room_schoollobby_slash_Step_0_gml_9_0")
        gml_Script_d_make()
    }
}
if (con == 2 && (!gml_Script_d_ex()))
{
    con = 1
    if (obj_mainchara.y >= 345)
        obj_mainchara.y -= 6
    if (obj_mainchara.x < 360)
        obj_mainchara.x += 6
    if (obj_mainchara.x > 600)
        obj_mainchara.x -= 6
    global.facing = 2
    global.interact = 0
}
