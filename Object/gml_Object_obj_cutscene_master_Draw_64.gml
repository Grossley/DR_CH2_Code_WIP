if (global.debug == true)
{
    if gml_Script_i_ex(obj_debugProfiler)
    {
        if (obj_debugProfiler.cutsceneshow == 1)
            gml_Script_debug_printline(((("Cutscene command #" + string(current_command)) + " of ") + string(maximum_command)), 3)
    }
}
