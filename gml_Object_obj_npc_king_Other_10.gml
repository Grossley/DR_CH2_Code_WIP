global.msc = 0
global.typer = 5
if (global.darkzone == true)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
image_speed = 0.2
gml_Script_scr_speaker("king")
gml_Script_msgsetloc(0, "\\E5* We have NOTHING to discuss./%", "obj_npc_king_slash_Other_10_gml_35_0_b")
if (talked == 0)
{
    if (global.plot < 200)
    {
        if (global.flag[301] == 0)
        {
            global.flag[301] = 1
            global.msc = 1012
            gml_Script_scr_text(global.msc)
        }
    }
    else if (global.flag[320] == 0)
    {
        if (gml_Script_scr_get_total_recruits(2) >= 9)
        {
            gml_Script_instance_create(0, 0, obj_ch2_room_dungeon_2f_ee)
            talked += 1
            return;
        }
        else
        {
            gml_Script_scr_speaker("king")
            gml_Script_msgsetloc(0, "\\E0* ..^1. talk to you? Hah./", "obj_npc_king_slash_Other_10_gml_35_0")
            gml_Script_msgnextloc("\\E7* You \\cYleft them behind\\cW^1, didn't you?/", "obj_npc_king_slash_Other_10_gml_36_0")
            gml_Script_msgnextloc("\\E5* Just as you left us.../%", "obj_npc_king_slash_Other_10_gml_37_0")
        }
    }
}
else if (global.plot >= 200 && (!gml_Script_scr_get_total_recruits(2) >= 9))
{
    gml_Script_scr_speaker("king")
    gml_Script_msgsetloc(0, "\\E5* Begone./%", "obj_npc_king_slash_Other_10_gml_44_0")
}
myinteract = 3
mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
talked += 1
