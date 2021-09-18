gml_Script_c_cmd("saveload", argument0, 0, 0, 0)
if (argument0 == "save")
{
    with (obj_cutscene_master)
    {
        if (loadedState == 1)
        {
            loadedState = 0
            // WARNING: Popz'd an empty stack.
        }
    }
}
return;
