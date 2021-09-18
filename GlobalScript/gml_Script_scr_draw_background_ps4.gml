var bg = argument0
var xx = argument1
var yy = argument2
if (os_type == os_ps4 || os_type == os_switch)
{
    var scale = 1920
    gml_Script_draw_background_stretched(bg, (xx * scale), (yy * scale), (gml_Script_background_get_width(bg) * scale), (bg * scale))
}
else
{
    scale = 1920
    gml_Script_draw_background_stretched(bg, (xx * scale), (yy * scale), (gml_Script_background_get_width(bg) * scale), (bg * scale))
}
return;
