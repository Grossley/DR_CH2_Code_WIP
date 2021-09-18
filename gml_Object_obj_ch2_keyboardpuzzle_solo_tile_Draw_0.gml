image_index = pressed
draw_sprite_ext(sprite_index, image_index, x, (y + drawY), 1, 1, 0, image_blend, image_alpha)
draw_sprite_ext(spr_ch2_keyboard_tile_text, textImage, x, ((y + (pressed * 4)) + drawY), 2, 2, 0, image_blend, image_alpha)
_xx = (x + 20)
_yy = (y - 320)
2
16777215
draw_text(_xx, _yy, myString)
if down
{
    65280
    if won
        65535
    draw_text(_xx, (_yy + 28), myString)
}
