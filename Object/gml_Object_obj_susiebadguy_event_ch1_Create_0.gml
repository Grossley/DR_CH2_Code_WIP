con = 1
image_speed = 0
image_index = 0
image_xscale = 2
image_yscale = 2
treestump = gml_Script_scr_dark_marker_ch1(1120, 752, 4057)
with (treestump)
    depth = 950000
if (global.plot >= 70)
{
    con = 999
    instance_destroy()
}
else
    s = gml_Script_scr_dark_marker_ch1((x + 80), (y - 16), 3544)
