if (walkcon == 1)
{
    visible = false
    wings = gml_Script_scr_dark_marker_ch1((x + 92), (y + 74), 3983)
    wings.image_index = image_index
    var _temp_local_var_1 = wings
    image_speed = 0.2
    depth = 1010
    hspeed = 5
    vspeed = -1
    gravity_direction = 90
    gravity = 0.2
}
if (walkcon == 2)
{
    var _temp_local_var_3 = body
    gml_Script_scr_depth_ch1()
}
