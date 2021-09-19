var _temp_local_var_2, _temp_local_var_3;
con = -1
customcon = 0
shortened = 0
if (global.chapter != 2 || global.plot >= 85)
{
    dumpster = gml_Script_instance_create(560, 106, obj_npc_sign)
    dumpster.sprite_index = spr_cutscene_14_dumpster_open
    var _temp_local_var_2 = dumpster
    gml_Script_scr_depth()
}
else
{
    if (global.flag[417] == 0)
    {
        global.flag[417] = 1
        gml_Script_scr_tempsave()
    }
    if (global.tempflag[29] == 1)
        shortened = 1
    gml_Script_snd_volume(global.currentsong[1], 0, 50)
    dumpster = gml_Script_scr_dark_marker(560, 106, 136)
    dumpster.depth = 900000
    var _temp_local_var_3 = dumpster
    gml_Script_scr_depth_alt()
}
