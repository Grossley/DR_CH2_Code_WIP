if ((!gml_Script_i_ex(273)) && (!gml_Script_i_ex(355)))
{
    if (global.flag[371] != 1)
    {
        global.flag[9] = 0
        global.flag[371] = 1
        gml_Script_scr_tempsave()
    }
    instance_destroy()
}
