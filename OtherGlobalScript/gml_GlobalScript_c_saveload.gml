if gml_Script_scr_debug()
{
    gml_Script_c_cmd("saveload", argument0, 0, 0, 0)
    if (argument0 == "save")
    {
        with (obj_cutscene_master)
        {
            if (loadedState == 1)
            {
                loadedState = 0
                gml_Script_scr_cutscene_master_commands_initialize()
            }
        }
    }
}
return;
