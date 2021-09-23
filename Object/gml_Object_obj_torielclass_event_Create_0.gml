global.facing = 0
var fruit = spr_lw_classroom_apple
if (global.chapter == 2)
    fruit = spr_lw_classroom_orange
var desk_fruit = gml_Script_scr_marker(200, 75, fruit)
obj[0] = gml_Script_scr_marker(126, 63, spr_torieldesk)
obj[1] = gml_Script_scr_marker(107, 116, spr_smalldesk)
obj[2] = gml_Script_scr_marker(158, 116, spr_smalldesk)
obj[3] = gml_Script_scr_marker(208, 116, spr_smalldesk)
obj[4] = gml_Script_scr_marker(107, 145, spr_smalldesk)
obj[5] = gml_Script_scr_marker(158, 145, spr_smalldesk)
obj[6] = gml_Script_scr_marker(208, 145, spr_smalldesk)
if (global.chapter == 1)
    obj[8] = gml_Script_scr_marker(261, 183, spr_godthrone)
if (global.chapter == 2)
    obj[8] = gml_Script_scr_marker(261, 173, spr_lw_classroom_godthrone)
for (i = 0; i < 9; i += 1)
{
    with (obj[i])
        gml_Script_scr_depth()
}
desk_fruit.depth = (obj[0].depth - 10)
if (global.plot >= 100)
{
    sunset = gml_Script_scr_marker(0, 0, spr_torielclass_sunsetoverlay)
    with (sunset)
    {
        image_alpha = 0.4
        depth = 2000
    }
}
