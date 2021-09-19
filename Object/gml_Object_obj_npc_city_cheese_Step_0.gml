if (con == 1)
{
    con = 2
    alarm[0] = 30
    gml_Script_scr_speaker("noelle")
    gml_Script_msgsetloc(0, "\\EE* KRIS!!!!!!!!!!!!!&!!!!!!!!!!!!/%", "obj_npc_city_cheese_slash_Step_0_gml_9_0")
    gml_Script_d_make()
}
if (con == 3 && (!gml_Script_d_ex()))
{
    con = -1
    global.interact = 0
}
