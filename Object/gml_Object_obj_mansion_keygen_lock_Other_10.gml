if (unlocked == 0)
{
    gml_Script_scr_speaker("no_name")
    if (gml_Script_scr_keyitemcheck(12) == 0)
        gml_Script_msgsetloc(0, "* It has a lock that seems impossible to open./%", "obj_mansion_keygen_lock_slash_Other_10_gml_5_0")
    if (gml_Script_scr_keyitemcheck(12) == 1)
    {
        unlocked = 1
        gml_Script_scr_keyitemremove(12)
        gml_Script_msgsetloc(0, "* (Kris used the KEYGEN.)/%", "obj_mansion_keygen_lock_slash_Other_10_gml_9_0")
        global.flag[309] = 4
        con = 1
    }
    myinteract = 3
    global.interact = 1
    mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
}
