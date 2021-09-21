if draw_kris
{
    if gml_Script_i_ex(obj_darkfountain)
    {
        image_blend = obj_darkfountain.colcol
        siner = obj_darkfountain.siner
    }
    else
    {
        draw_set_color(c_black)
        draw_rectangle(gml_Script_camerax(), gml_Script_cameray(), (gml_Script_camerax() + view_wport[0]), (gml_Script_cameray() + view_hport[0]), false)
        draw_set_color(c_white)
    }
    draw_sprite_ext(sprite_index, image_index, x, (y - 4), 2, 2, 0, image_blend, 1)
    image_blend = c_black
    draw_sprite_ext(sprite_index, image_index, x, ((y + (sprite_height * 4)) - 8), 2, -6, 0, image_blend, 1)
    draw_self()
}
