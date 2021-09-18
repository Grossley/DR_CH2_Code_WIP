if (!mysurface)
    mysurface = surface_create(640, 480)
mysurface
0.5
16776960
with (obj_collidebullet)
{
    if (mask_index > IMAGE_LOGO_CENTER)
        draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_aqua, 0.5)
    else
        draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
}
1
// WARNING: Popz'd an empty stack.
mysurface
global.hp[1] = 999
