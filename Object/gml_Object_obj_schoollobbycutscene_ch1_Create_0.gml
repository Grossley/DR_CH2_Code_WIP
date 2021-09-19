var _temp_local_var_1, _temp_local_var_2, _temp_local_var_4;
ran = 0
dex = 0
tsouth = 0
teast = 0
con = 0
type = 0
if (global.entrance == 2)
    global.facing = 0
if (global.plot < 2)
{
    global.interact = 1
    alarm[5] = 2
    with (obj_mainchara_ch1)
        visible = false
    t = gml_Script_scr_marker_ch1(460, 360, 3456)
    var _temp_local_var_1 = t
    vspeed = -2
    image_speed = 0.2
    depth = 10000
}
if (global.plot == 3)
{
    type = 2
    with (obj_mainchara_ch1)
    {
        visible = false
        x = obj_markerB_ch1.x
        y = obj_markerB_ch1.y
    }
    k = gml_Script_scr_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4205)
    var _temp_local_var_2 = k
    gml_Script_scr_depth_ch1()
}
if (global.plot >= 250)
{
    sunset = gml_Script_scr_marker_ch1(0, 0, 3467)
    var _temp_local_var_4 = sunset
    image_alpha = 0.4
    depth = 2000
}
if (global.plot >= 251)
    type = 4
