var x_pos = argument[0]
var y_pos = argument[1]
var sprite = argument[2]
var anim_speed = (argument_count > 3 ? argument[3] : 0.2)
thismarker = gml_Script_instance_create(x_pos, y_pos, obj_marker)
with (thismarker)
{
    sprite_index = sprite
    image_speed = anim_speed
    image_xscale = 2
    image_yscale = 2
    gml_Script_scr_depth()
}