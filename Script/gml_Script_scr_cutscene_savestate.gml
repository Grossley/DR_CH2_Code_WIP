gml_Script_scr_debug_print("Cutscene Saved")
masterArray = variable_instance_get_names(id)
for (var i = 0; i < array_length_1d(masterArray); i++)
    myVar[i] = variable_instance_get(id, masterArray[i])
remCameraX = gml_Script_camerax()
remCameraY = gml_Script_cameray()
for (i = 0; i < 20; i++)
{
    actorSaved[i] = 0
    if gml_Script_i_ex(actor_id[i])
    {
        actorSaved[i] = 1
        with (actor_id[i])
			gml_Script_scr_instance_save_local_vars()
    }
}
for (i = 0; i < 10; i++)
{
    objectSaved[i] = 0
    if gml_Script_i_ex(save_object[i])
    {
        objectSaved[i] = 1
        with (save_object[i])
			gml_Script_scr_instance_save_local_vars()
    }
}
return;
