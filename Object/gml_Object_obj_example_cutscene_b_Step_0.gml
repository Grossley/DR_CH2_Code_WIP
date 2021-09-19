if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
    con = 1
    global.interact = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    gml_Script_c_sel(su)
    gml_Script_c_walk("r", 2, 60)
    gml_Script_c_sel(ra)
    gml_Script_c_walk("r", 2, 30)
    gml_Script_c_sel(kr)
    gml_Script_c_walk("l", 2, 20)
    gml_Script_c_wait(60)
    gml_Script_c_actormoveparty(60)
    gml_Script_c_wait(60)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        con = 3
        global.interact = 0
    }
}
