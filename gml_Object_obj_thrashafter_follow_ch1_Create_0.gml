var _temp_local_var_1, _temp_local_var_2;
con = 1
followcon = 1
followtimer = 0
followbuffer = 0
treecon = 0
speclaugh = 0
image_xscale = 2
image_yscale = 2
if (global.flag[229] >= 99)
{
    con = 999
    // WARNING: Popz'd an empty stack.
}
if (room == room_forest_afterthrash3_ch1)
{
    tree = gml_Script_scr_dark_marker_ch1(440, 72, 4069)
    if (global.flag[229] >= 6)
        tree.image_index = 1
    var _temp_local_var_1 = tree
    depth = 400000
}
if (tree.room == room_forest_castleview_ch1)
{
    bg = gml_Script_instance_create_ch1(180, 0, 1458)
    var _temp_local_var_2 = bg
    sprite_index = spr_darkcastle_bg_ch1
    image_speed = 0.1
    ss = 0.5
    image_xscale = 2
    image_yscale = 2
}
