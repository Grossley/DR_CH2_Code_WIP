0
draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_bottom, c_black, c_black, c_black, c_black, 0)
1
if (bust == 0)
{
    draw_sprite_ext(spr_dustpile_parts_ch1, 3, x, y, 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_dustpile_parts_ch1, 2, (x - sin((siner / 5))), (y + sin((siner / 5))), 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_dustpile_parts_ch1, 1, (x + cos((siner / 5))), ((y + sin((siner / 5))) + 1), 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_dustpile_parts_ch1, 0, (x + sin((siner / 5))), (y + sin((siner / 5))), 2, 2, 0, c_white, image_alpha)
}
else
    draw_sprite_ext(spr_dustpile_parts_ch1, 4, x, y, 2, 2, 0, c_white, image_alpha)
