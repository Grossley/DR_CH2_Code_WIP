if (destroyoffscreen == 1)
{
    if (!gml_Script_scr_onscreen_tolerance(id, tolerance))
        instance_destroy()
}
