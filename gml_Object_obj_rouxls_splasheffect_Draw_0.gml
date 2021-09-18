siner++
var _duration = (2.5 * yscale)
if ((siner / _duration) < 0)
    // WARNING: Popz'd an empty stack.
draw_sprite_ext(sprite_index, image_index, x, y, (((siner / _duration) + 0.75) * xscale), (sin((siner / _duration)) * yscale), 0, c_white, 1)
