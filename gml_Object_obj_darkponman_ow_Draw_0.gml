if (boss == true)
{
    cur_alpha = battlealpha
    if (obj_mainchara.battlemode == 1)
    {
        if (battlealpha < 0.5)
            battlealpha += 0.04
    }
    else if (battlealpha > 0)
        battlealpha -= 0.04
    if (tile_fade == true)
    {
        if (cur_alpha != battlealpha)
        {
            for (var i = 0; i < array_length_1d(tilearray); i++)
                gml_Script_tile_set_alpha(tilearray[i], ((battlealpha * 2) * max_battlealpha))
        }
    }
    (battlealpha * max_battlealpha)
    0
    draw_rectangle((gml_Script___view_get(0, 0) - 100), (gml_Script___view_get(1, 0) - 100), (gml_Script___view_get(0, 0) + 740), (gml_Script___view_get(1, 0) + 540), false)
    1
    if 274
    {
        obj_caterpillarchara.image_blend = merge_color(c_white, c_black, (battlealpha * max_battlealpha))
        if (battlealpha <= 0)
            obj_caterpillarchara.image_blend = c_white
    }
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(spr_ponman_eye_white, image_index, (x + xx), (y + yy), image_xscale, image_yscale, image_angle, c_red, image_alpha)
