var _true_xanchor = (x - abs(sprite_xoffset))
var _true_yanchor = (y - abs(sprite_yoffset))
if (_true_xanchor > argument0 && (_true_xanchor + sprite_width) < argument2 && _true_yanchor > argument1 && (_true_yanchor + sprite_height) < argument3)
{
    // WARNING: Popz'd an empty stack.
    return;
}
var _leftcrop = clamp((argument0 - _true_xanchor), 0, sprite_width)
var _topcrop = clamp((argument1 - _true_yanchor), 0, sprite_height)
var _rightcrop = clamp((argument2 - _true_xanchor), 0, sprite_width)
var _bottomcrop = clamp((argument3 - _true_yanchor), 0, sprite_height)
draw_sprite_part_ext(sprite_index, image_index, _leftcrop, _topcrop, _rightcrop, _bottomcrop, ((x - sprite_xoffset) + _leftcrop), ((y - sprite_yoffset) + _topcrop), image_xscale, image_yscale, image_blend, image_alpha)
return;
