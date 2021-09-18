if (shadow == obj_sneo_friedpipis)
{
    shadow = gml_Script_instance_create(x, y, obj_marker)
    shadow.image_alpha = 0
    shadow.sprite_index = spr_noelleShadow
    if (room == room_dw_city_mice2 || room == room_dw_city_mice)
        shadow.depth = 800000
}
if shadow
{
    shadow.image_alpha = 0
    shadow.x = (bbox_left + 3)
    shadow.y = (bbox_bottom + 2)
}
if (jumping == 1)
{
    if (room == room_dw_city_mice2 || room == room_dw_city_mice)
        shadow.image_alpha = (((-jumpy) / 50) + 0.5)
    else
    {
        (((-jumpy) / 50) + 0.5)
        0
        draw_ellipse(bbox_left, bbox_top, bbox_right, bbox_bottom, 0)
        1
    }
}
draw_sprite_ext(sprite_index, image_index, x, (y + jumpy), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
