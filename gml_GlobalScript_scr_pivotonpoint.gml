var __theta = point_direction(sprite_xoffset, sprite_yoffset, argument0, argument1)
var __radius = point_distance(sprite_xoffset, sprite_yoffset, argument0, argument1)
__theta += direction
var __xx = (x + lengthdir_x(__radius, __theta))
var __yy = (y + lengthdir_y(__radius, __theta))
gml_Script_scr_rotatearoundpoint(__xx, __yy, argument2)
return;
