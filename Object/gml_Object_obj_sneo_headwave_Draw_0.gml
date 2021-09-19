if (image_alpha < 1)
    image_alpha += 0.1
if flash
    gml_Script_d3d_set_fog(true, c_white, 0, 1)
draw_self()
if flash
{
    gml_Script_d3d_set_fog(false, c_black, 0, 0)
    flash = false
}
