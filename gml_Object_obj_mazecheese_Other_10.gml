if (global.interact == 0)
{
    if (con == 0 && type == 1)
    {
        con = 1
        global.fe = 0
        global.msc = 1091
        gml_Script_scr_text(global.msc)
        myinteract = 3
        global.interact = 1
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 0 && type == 2)
    {
        con = 1
        global.interact = 1
        myinteract = 3
        global.flag[384] = 1
    }
    if (type == 3)
    {
        image_index = 1
        gml_Script_snd_stop(40)
        gml_Script_snd_play(40)
        type = 4
    }
    if (type == 4)
    {
        con = 12
        global.fe = 0
        if (global.flag[311] == 0)
        {
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* (The cheese was destroyed in the heat of battle.)/", "obj_mazecheese_slash_Other_10_gml_42_0")
            gml_Script_msgnextloc("* (Feels like you lost sight of what was important.)/%", "obj_mazecheese_slash_Other_10_gml_43_0")
        }
        else
        {
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* (The cheese was destroyed in the heat of battle.)/", "obj_mazecheese_slash_Other_10_gml_47_0")
            gml_Script_msgnextloc("* (This marks a cruel victory for those who hate cheese.)/%", "obj_mazecheese_slash_Other_10_gml_48_0")
        }
        myinteract = 3
        global.interact = 1
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
    }
}
