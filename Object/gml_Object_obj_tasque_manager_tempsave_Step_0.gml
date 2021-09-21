if ((!gml_Script_i_ex(obj_encounterbasic)) && (!gml_Script_i_ex(obj_battlecontroller)))
{
    if (global.flag[371] != 1)
    {
        global.flag[9] = 0
        global.flag[371] = 1
        gml_Script_scr_tempsave()
    }
    instance_destroy()
}
