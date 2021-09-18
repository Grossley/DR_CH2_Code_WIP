image_index_fake += image_speed_fake
if (mode == 1)
    fsiner += 1
else
{
    fsiner = 0
    _sprite = remsprite
}
recruitspriteheight = _sprite
recruitspritewidth = _sprite
rx = (((_sprite * 2) - recruitspritewidth) + (_spritex * 2))
ry = (((_sprite * 2) - (recruitspriteheight * 2)) + (_spritey * 2))
if (seat == 1 || seat == 3)
{
    draw_sprite_ext(_sprite, image_index_fake, ((x + rx) + 35), ((y + ry) + 80), 2, 2, 0, c_white, 1)
    if (mode == 1)
        gml_Script_draw_sprite_ext_flash(_sprite, image_index_fake, ((x + rx) + 35), ((y + ry) + 80), 2, 2, 0, 16777215, (fsiner / 8))
}
else
{
    rx = ((((-_sprite) * 2) + recruitspritewidth) - (_spritex * 2))
    draw_sprite_ext(_sprite, image_index_fake, ((x + rx) + 35), ((y + ry) + 80), -2, 2, 0, c_white, 1)
    if (mode == 1)
        gml_Script_draw_sprite_ext_flash(_sprite, image_index_fake, ((x + rx) + 35), ((y + ry) + 80), -2, 2, 0, 16777215, (fsiner / 8))
}
