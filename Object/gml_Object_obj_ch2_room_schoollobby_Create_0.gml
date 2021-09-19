var _temp_local_var_1;
if (global.chapter >= 2)
{
    if (global.plot >= 100)
    {
        sunset = gml_Script_scr_marker(0, 0, 902)
        var _temp_local_var_1 = sunset
        image_alpha = 0.4
        depth = 2000
    }
}
con = -1
if (global.plot < 8 || global.plot >= 9)
    instance_destroy()
else
    con = 1
