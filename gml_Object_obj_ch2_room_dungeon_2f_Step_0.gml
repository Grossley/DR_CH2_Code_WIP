if (obj_mainchara.x < x && global.flag[301] == 1)
{
    global.flag[301] = 2
    global.interact = 1
    global.facing = 1
    con = 1
}
if (con == 1)
{
    con = 3
    global.facing = 1
    with (obj_caterpillarchara)
    {
        fun = true
        _remsprite = sprite_index
        sprite_index = rsprite
        image_index = 0
    }
    gml_Script_scr_smallface(0, "ralsei", 1, "mid", "bottom", gml_Script_stringsetloc("Aww, cute!", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_24_0"))
    gml_Script_scr_smallface(1, "susie", 17, "right", "bottom", gml_Script_stringsetloc("WE'RE DONE#TALKING TO YOU!", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_25_0"))
    global.fe = 5
    "king"
    gml_Script_msgsetloc(0, "\\E5* .../", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_28_0")
    gml_Script_msgnextloc("\\M1* By the way.../", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_29_0")
    gml_Script_msgnextloc("\\E6\\E3* Is my son..^1. happy...?/", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_30_0")
    gml_Script_scr_anyface_next("susie", 0)
    gml_Script_msgnextloc("\\ER* Like you CARE!/", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_32_0")
    gml_Script_msgnextloc("\\ER* You were gonna throw him off a CLIFF!/", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_33_0")
    gml_Script_scr_anyface_next("king", 5)
    gml_Script_msgnextloc("\\E5* Ah. Your prejudice made my bluff too effective^1, I see./", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_35_0")
    gml_Script_msgnextloc("\\E5* ..^1. besides^1, even IF I threw him^1, he would just.../", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_36_0")
    gml_Script_msgnextloc("\\E0* Bounce./", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_37_0")
    gml_Script_msgnextloc("* My son..^1. is.../", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_38_0")
    gml_Script_msgnextloc("\\E8\\M0* A bouncy little pumpkin.\\f0\\f1 /%", "obj_ch2_room_dungeon_2f_slash_Step_0_gml_39_0")
    // WARNING: Popz'd an empty stack.
}
if (con == 3)
{
    with (obj_caterpillarchara)
        fun = false
    global.interact = 0
    con = -1
    // WARNING: Popz'd an empty stack.
}
