var _temp_local_var_4;
if (80 && obj_mainchara.x <= 1920 && global.flag[373] == 0 && con == 0)
{
    forcefield = gml_Script_instance_create(2280, 400, obj_forcefield)
    forcefield.image_xscale = 2
    forcefield.image_yscale = 4
    forcefield.black_override = 1
    forcefield.canttalk = 1
    layer_set_visible("TILES_Edge_Hidden", 1)
    con = 1
}
if (con == 1)
{
    if (80 && obj_mainchara.x >= 2080)
    {
        face = gml_Script_instance_create(1340, 320, DEVICE_FRIEND)
        con = 2
    }
}
if (forcefield && global.flag[373] == 1)
{
    layer_set_visible("TILES_Edge_Hidden", 0)
    var _temp_local_var_4 = forcefield
}
