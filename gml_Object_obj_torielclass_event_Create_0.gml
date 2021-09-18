var _temp_local_var_1, _temp_local_var_2;
global.facing = 0
var fruit = 2969
if (global.chapter == 2)
    fruit = 2971
var desk_fruit = gml_Script_scr_marker(200, 75, fruit)
obj[0] = gml_Script_scr_marker(126, 63, 912)
obj[1] = gml_Script_scr_marker(107, 116, 911)
obj[2] = gml_Script_scr_marker(158, 116, 911)
obj[3] = gml_Script_scr_marker(208, 116, 911)
obj[4] = gml_Script_scr_marker(107, 145, 911)
obj[5] = gml_Script_scr_marker(158, 145, 911)
obj[6] = gml_Script_scr_marker(208, 145, 911)
if (global.chapter == 1)
    obj[8] = gml_Script_scr_marker(261, 183, 908)
if (global.chapter == 2)
    obj[8] = gml_Script_scr_marker(261, 173, 2970)
i = 0
while (i < 9)
    var _temp_local_var_1 = obj[i]
desk_fruit.depth = (obj[0].depth - 10)
if (global.plot >= 100)
{
    sunset = gml_Script_scr_marker(0, 0, 900)
    var _temp_local_var_2 = sunset
    image_alpha = 0.4
    depth = 2000
}
