var _temp_local_var_1, _temp_local_var_3, _temp_local_var_4;
image_speed = 0
open = 0
siner = 0
xsin = 0
con = 0
if (global.chapter == 1)
{
    if (global.plot < 5)
    {
        con = 1
        with (obj_mainchara)
            visible = false
        k = gml_Script_scr_marker(290, 198, 662)
        s = gml_Script_scr_marker(310, 190, 979)
        global.interact = 1
        var _temp_local_var_1 = s
        vspeed = -1
        image_speed = 0.2
    }
    else
    {
        block = gml_Script_instance_create(280, 100, obj_solidblock)
        block.image_xscale = 4
        sunset = gml_Script_scr_marker(0, 0, 903)
        var _temp_local_var_4 = sunset
        image_alpha = 0.4
        depth = 2000
    }
    if (global.plot == 250)
    {
        with (obj_mainchara)
        {
            x = obj_markerD.x
            y = obj_markerD.y
        }
        global.interact = 1
        con = 40
    }
}
if (global.chapter >= 2)
{
    if (global.plot >= 100)
    {
        sunset = gml_Script_scr_marker(0, 0, 903)
        var _temp_local_var_3 = sunset
        image_alpha = 0.4
        depth = 2000
    }
}
