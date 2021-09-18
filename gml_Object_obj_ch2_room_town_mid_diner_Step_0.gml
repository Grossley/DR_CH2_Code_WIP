var _temp_local_var_4;
if (obj_mainchara.x <= 620 && obj_mainchara.x > 590 && obj_mainchara.y < (y + 6) && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 0
}
if (con == 1)
{
    con = 2
    if (global.flag[341] == 0)
    {
        global.flag[341] = 1
        "susie"
        gml_Script_msgsetloc(0, "\\E1* Whoa^1, go in there if you want^1, but...^1 I'm staying here./", "obj_ch2_room_town_mid_diner_slash_Step_0_gml_22_0_b")
        gml_Script_msgnextloc("\\E0* Catti's working there today.&* She hates me./", "obj_ch2_room_town_mid_diner_slash_Step_0_gml_22_0")
        gml_Script_msgnextloc("\\EA* So WHAT if I took Jockboy's hat once?&* I looked cool!/", "obj_ch2_room_town_mid_diner_slash_Step_0_gml_25_0")
        gml_Script_msgnextloc("\\E0* Jockington fans.../", "obj_ch2_room_town_mid_diner_slash_Step_0_gml_27_0")
        gml_Script_msgnextloc("\\E1* They're crazy^1, man./%", "obj_ch2_room_town_mid_diner_slash_Step_0_gml_28_0")
        // WARNING: Popz'd an empty stack.
    }
    else
    {
        "susie"
        gml_Script_msgsetloc(0, "\\E0* Kris^1, go in by yourself./%", "obj_ch2_room_town_mid_diner_slash_Step_0_gml_33_0")
        // WARNING: Popz'd an empty stack.
    }
}
if (con == 2)
{
}
else
    var _temp_local_var_4 = 0
global.interact = 0
con = 3
if (con == 3 && obj_mainchara.y > (y + 8))
    con = -1
