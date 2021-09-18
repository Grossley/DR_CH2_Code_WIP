if (unlocked == 0)
{
    "no_name"
    if (12 == 0)
        gml_Script_msgsetloc(0, "* It has a lock that seems impossible to open./%", "obj_mansion_keygen_lock_slash_Other_10_gml_5_0")
    if (12 == 1)
    {
        unlocked = 1
        12
        gml_Script_msgsetloc(0, "* (Kris used the KEYGEN.)/%", "obj_mansion_keygen_lock_slash_Other_10_gml_9_0")
        global.flag[309] = 4
        con = 1
    }
    myinteract = 3
    global.interact = 1
    mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
}
