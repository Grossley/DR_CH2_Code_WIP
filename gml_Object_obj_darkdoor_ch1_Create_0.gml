var _temp_local_var_1, _temp_local_var_3;
image_speed = 0
open = 0
siner = 0
xsin = 0
con = 0
if (global.plot < 5)
{
    con = 1
    with (obj_mainchara_ch1)
        visible = false
    k = gml_Script_scr_marker_ch1(290, 198, 4207)
    s = gml_Script_scr_marker_ch1(310, 190, 3537)
    global.interact = 1
    var _temp_local_var_1 = s
    vspeed = -1
    image_speed = 0.2
}
else
{
    block = gml_Script_instance_create_ch1(280, 100, 1334)
    block.image_xscale = 4
    sunset = gml_Script_scr_marker_ch1(0, 0, 3468)
    var _temp_local_var_3 = sunset
    image_alpha = 0.4
    depth = 2000
}
if (global.plot == 250)
{
    with (obj_mainchara_ch1)
    {
        x = obj_markerD_ch1.x
        y = obj_markerD_ch1.y
    }
    global.interact = 1
    con = 40
}
