afterimage = gml_Script_instance_create(argument3, argument4, argument0)
afterimage.sprite_index = argument1
afterimage.image_index = argument2
afterimage.image_blend = image_blend
afterimage.image_speed = 0
afterimage.depth = (depth + 1)
afterimage.image_angle = image_angle
afterimage.image_xscale = argument5
afterimage.image_yscale = argument6
return afterimage;
