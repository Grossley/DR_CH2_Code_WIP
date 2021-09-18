var _temp_local_var_1, _temp_local_var_2;
"Cutscene Saved"
masterArray = id
for (var i = 0; i < array_length_1d(masterArray); i++)
    myVar[i] = variable_instance_get(id, masterArray[i])
remCameraX = 
remCameraY = 
for (i = 0; i < 20; i++)
{
    actorSaved[i] = 0
    if actor_id[i]
    {
        actorSaved[i] = 1
        var _temp_local_var_1 = actor_id[i]
    }
}
for (i = 0; i < 10; i++)
{
    objectSaved[i] = 0
    if save_object[i]
    {
        objectSaved[i] = 1
        var _temp_local_var_2 = save_object[i]
    }
}
return;
