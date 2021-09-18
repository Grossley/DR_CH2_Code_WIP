rcon = 0
block = noone
if (global.plot >= 38)
{
    doormarker = gml_Script_scr_dark_marker_ch1(400, 40, 3598)
    doormarker.depth = 600000
    doormarker.image_index = 1
    gml_Script_instance_create_ch1(380, 120, 1656)
    gml_Script_instance_create_ch1(500, 120, 1656)
    door = gml_Script_instance_create_ch1(440, 120, 1414)
    door.image_xscale = 2
    door.image_yscale = 2
    gml_Script_instance_create_ch1(520, 260, 1411)
    visible = false
    if (global.plot == 38)
        rcon = 1
    if (global.plot < 40)
    {
        hathy = gml_Script_instance_create_ch1(250, 240, 1485)
        hathy.radius = 30
    }
}
else
{
    doormarker = gml_Script_scr_dark_marker_ch1(400, 40, 3598)
    doormarker.depth = 600000
    block = gml_Script_instance_create_ch1(400, 120, 1656)
    block.image_xscale = 3
}
con = 1
if (global.plot >= 37)
{
    visible = false
    con = -1
}
walkcon = 0
image_speed = 0
