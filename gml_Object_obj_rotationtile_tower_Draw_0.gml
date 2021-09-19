draw_self()
if (init == 1)
{
    if gml_Script_i_ex(1178)
    {
        if (obj_mouseTowerTrigger.controlled == id && obj_mouseTowerTrigger.rotate == 1)
            mymoving = 1
        else
            mymoving = 0
    }
    if (pattern == 1)
        draw_sprite_ext(spr_mice3Tracks, (0 + mymoving), x, y, 2, 2, 0, image_blend, 1)
    else
        draw_sprite_ext(spr_mice3Tracks, (2 + mymoving), x, y, 2, 2, 0, image_blend, 1)
}
