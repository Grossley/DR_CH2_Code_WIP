if (toggled == 0)
{
    gml_Script_snd_play(57)
    toggled = 1
    if instance_exists(obj_controller_dw_mansion_bridges_funny)
        obj_controller_dw_mansion_bridges_funny.spawnVaseTrig = 1
}
