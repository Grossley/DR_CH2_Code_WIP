var _sprite_xoffset = argument0
var _sprite_yoffset = argument0
var _sprite_width = argument0
var _sprite_height = argument0
var _true_xanchor = (x - abs(sprite_xoffset))
var _true_yanchor = (y - abs(sprite_yoffset))
if (_true_xanchor > argument2 && (_true_xanchor + _sprite_width) < argument4 && _true_yanchor > argument3 && (_true_yanchor + _sprite_height) < argument5)
{
    // WARNING: Popz'd an empty stack.
    return;
}
var _leftcrop = clamp((argument2 - _true_xanchor), 0, _sprite_width)
var _topcrop = clamp((argument3 - _true_yanchor), 0, _sprite_height)
var _rightcrop = clamp((argument4 - _true_xanchor), 0, _sprite_width)
var _bottomcrop = clamp((argument5 - _true_yanchor), 0, _sprite_height)
draw_sprite_part(argument0, argument1, _leftcrop, _topcrop, _rightcrop, _bottomcrop, ((argument6 - _sprite_xoffset) + _leftcrop), ((argument7 - _sprite_yoffset) + _topcrop))
return;
