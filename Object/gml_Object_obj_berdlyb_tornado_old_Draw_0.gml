if (init && image_alpha < 1)
{
    if middespawn
        image_alpha = gml_Script_scr_movetowards(image_alpha, clamp((traveldistance / 110), 0.5, 1), 0.1)
    else
        image_alpha += 0.1
}
if (middespawn && traveldistance <= ((maxdistance / 2) + 10))
    image_blend = merge_color(c_gray, c_white, gml_Script_clamp01(gml_Script_scr_inverselerp(((maxdistance / 2) - 10), ((maxdistance / 2) + 10), traveldistance)))
xflip = 1
if (flipTimer < 0)
    xflip = -1
flipTimer++
if (flipTimer >= flipSpeed)
    flipTimer = (-flipSpeed)
draw_sprite_ext(sprite_index, 0, x, y, xflip, 1, 0, image_blend, image_alpha)
