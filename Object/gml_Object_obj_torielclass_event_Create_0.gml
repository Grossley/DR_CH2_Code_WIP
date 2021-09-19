global.facing = 0
var fruit = 2970
if (global.chapter == 2)
    fruit = 2972
var desk_fruit = gml_Script_scr_marker(200, 75, fruit)
obj[0] = gml_Script_scr_marker(126, 63, 913)
obj[1] = gml_Script_scr_marker(107, 116, 912)
obj[2] = gml_Script_scr_marker(158, 116, 912)
obj[3] = gml_Script_scr_marker(208, 116, 912)
obj[4] = gml_Script_scr_marker(107, 145, 912)
obj[5] = gml_Script_scr_marker(158, 145, 912)
obj[6] = gml_Script_scr_marker(208, 145, 912)
if (global.chapter == 1)
    obj[8] = gml_Script_scr_marker(261, 183, 909)
if (global.chapter == 2)
    obj[8] = gml_Script_scr_marker(261, 173, 2971)
i = 0
while (i < 9)
{
    var _temp_local_var_1 = obj[i]
    gml_Script_scr_depth()
}
desk_fruit.depth = (obj[0].depth - 10)
if (global.plot >= 100)
{
    sunset = gml_Script_scr_marker(0, 0, 901)
    var _temp_local_var_2 = sunset
    image_alpha = 0.4
    depth = 2000
}
