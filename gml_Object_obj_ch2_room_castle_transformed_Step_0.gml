var _temp_local_var_1;
if (con == 0)
{
    if (obj_mainchara.y < 1220)
    {
        con = 1
        global.interact = 1
    }
}
if (con == 1)
{
    con = 2
    "ralsei"
    gml_Script_msgsetloc(0, "* (Kris... I bet you have a lot of people to talk to.)/", "obj_ch2_room_castle_transformed_slash_Step_0_gml_17_0")
    gml_Script_msgnextloc("* (But, you don't have to do \\cYeverything at once\\c0.)/", "obj_ch2_room_castle_transformed_slash_Step_0_gml_18_0")
    gml_Script_msgnextloc("* (\\cYSAVE\\c0 and take a break anytime you want, OK?)/%", "obj_ch2_room_castle_transformed_slash_Step_0_gml_19_0")
    var d = 
    d.side = 1
}
if (con == 2)
{
}
else
    var _temp_local_var_1 = 0
con = 99
global.interact = 0
global.flag[443] = 1
