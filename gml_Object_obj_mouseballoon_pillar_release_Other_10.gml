if (abs(fakeballoony) == 0)
{
    var dialogue = 0
    krismade = 1
    if gml_Script_i_ex(myballoon)
        dialogue = 1
    if (obj_kris_headobj.miceheld != 0)
        dialogue = 1
    gml_Script_scr_speaker("no_name")
    if (dialogue == 0)
    {
        gml_Script_msgsetloc(0, "* (Suddenly a maus came out of the hole!)/%", "obj_mouseballoon_pillar_release_slash_Other_10_gml_15_0")
        ballooncon = 1
    }
    if (dialogue == 1)
        gml_Script_msgsetloc(0, "* (The hole is silent.)/%", "obj_mouseballoon_pillar_release_slash_Other_10_gml_19_0")
    if (dialogue == 1)
    {
        myinteract = 3
        global.interact = 1
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
    }
}
