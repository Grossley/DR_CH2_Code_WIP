noleave = 0
if (global.chapter != 2 || global.plot >= 64)
    layer_set_visible(layer_get_id("SLIDE_TILES"), 1)
else
    layer_set_visible(layer_get_id("SLIDE_TILES"), 0)
if (global.flag[427] == 1)
{
    plat = gml_Script_scr_dark_marker(758, 1150, 2626)
    plat.depth = 998000
    leftlight = gml_Script_instance_create(760, 1200, obj_cyber_wall_lights_left)
    leftlight.image_xscale = 1
    leftlight.depth = (plat.depth - 10)
    midlight = gml_Script_instance_create(802, 1200, obj_cyber_wall_lights)
    midlight.depth = (plat.depth - 10)
    midlight2 = gml_Script_instance_create(842, 1200, obj_cyber_wall_lights)
    midlight2.depth = (plat.depth - 10)
    rightlight = gml_Script_instance_create(864, 1200, obj_cyber_wall_lights_right)
    rightlight.depth = (plat.depth - 12)
    chest = gml_Script_instance_create(844, 1144, obj_treasure_room)
    with (obj_ow_viroring)
    {
        if (trigNum == 3)
            con = 99
    }
    if 266
        obj_overworld_bulletarea.image_yscale = 22
}
if (global.flag[352] == 1)
    // WARNING: Popz'd an empty stack.
