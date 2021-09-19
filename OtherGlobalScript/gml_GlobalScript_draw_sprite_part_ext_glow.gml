var color = (argument_count > 12 ? argument[12] : c_white)
var blend = (color != c_white ? merge_color(argument[10], color, glow) : argument[10])
if (glow < 1)
    draw_sprite_part_ext(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], blend, argument[11])
if (glow > 0)
{
    if (color == c_white)
        gml_Script_draw_set_blend_mode(1)
    gml_Script_d3d_set_fog(true, color, 0, 1)
    draw_sprite_part_ext(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], glow)
    gml_Script_d3d_set_fog(false, c_black, 0, 0)
    if (color == c_white)
        gml_Script_draw_set_blend_mode(0)
}
return;
