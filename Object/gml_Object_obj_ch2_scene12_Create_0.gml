var _temp_local_var_1, _temp_local_var_4;
con = 0
customcon = 0
if (global.chapter != 2)
    instance_destroy()
else
{
    if (global.plot < 66)
    {
        con = -1
        dogcone1 = gml_Script_scr_dark_marker(408, 350, 84)
        var _temp_local_var_1 = dogcone1
        depth = 1000150
    }
    if (global.plot >= 66)
    {
        dogcone1 = gml_Script_scr_dark_marker(368, 350, 84)
        var _temp_local_var_4 = dogcone1
        gml_Script_scr_depth()
    }
}
