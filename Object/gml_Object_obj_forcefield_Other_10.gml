if (skip == 0)
{
    if (canttalk == 0 && global.interact == 0)
    {
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        gml_Script_scr_speaker("noone")
        gml_Script_msgsetloc(0, "* (It appears to be some kind of forcefield.)/%", "obj_forcefield_slash_Other_10_gml_8_0")
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
        myinteract = 3
        global.interact = 1
    }
}