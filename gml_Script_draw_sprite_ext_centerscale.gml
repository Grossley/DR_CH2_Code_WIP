var _xoff = (argument0 * image_xscale)
var _yoff = (argument0 * image_yscale)
var _sprite_width = (argument0 * image_xscale)
var _sprite_height = (argument0 * image_yscale)
draw_sprite_ext(argument0, argument1, (argument2 - (((_sprite_width - _xoff) * (argument4 - image_xscale)) / 2)), (argument3 - (((_sprite_height - _yoff) * (argument5 - image_yscale)) / 2)), argument4, argument5, argument6, argument7, argument8)
return;
