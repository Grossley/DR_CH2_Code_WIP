con = -1
customcon = 0
cantrigger = 1
torieldoor = gml_Script_scr_marker(153, 141, 2979)
with (torieldoor)
    gml_Script_scr_depth()
if (global.chapter != 2 || global.plot >= 210 || global.plot < 205)
    instance_destroy()
else
{
    instance_destroy(obj_doorX_musfade)
    housetop = gml_Script_scr_marker(40, 20, 403)
    with (housetop)
        gml_Script_scr_depth()
}
