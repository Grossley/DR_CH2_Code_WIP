if (color == 0x000001)
{
    z_charge_nolimit = (z_hold - 35)
    if (z_charge_nolimit >= 0)
    {
        var scale = (z_charge_nolimit / 10)
        draw_sprite_ext(sprite_index, 0, (x - (scale * 10)), (y - (scale * 10)), (1 + scale), (1 + scale), image_angle, image_blend, 0.3)
        scale = (z_charge_nolimit / 14)
        draw_sprite_ext(sprite_index, 0, ((x - 2) - (scale * 10)), ((y - 2) - (scale * 10)), (1.2 + scale), (1.2 + scale), image_angle, image_blend, 0.3)
    }
    if (z_hold >= 15)
    {
        z_charge = (z_hold - 15)
        if (z_charge >= 35)
            z_charge = 35
        for (i = 0; i < 4; i += 1)
        {
            rotx = ((i * 90) + (z_charge * 5))
            xx = (rotx * (35 - z_charge))
            yy = (rotx * (35 - z_charge))
            draw_sprite_ext(spr_yheart_charge, 0, ((x + 9) - xx), ((y + 10) - yy), (4 - ((z_charge * 2) / 35)), (4 - ((z_charge * 2) / 35)), 0, c_white, (z_charge / 5))
        }
    }
    if (global.chapter == 2 && 694 && obj_spamton_neo_enemy.bigshotcount > 0)
    {
        superchargetimer++
        scale = (superchargetimer / 10)
        draw_sprite_ext(sprite_index, 0, (x - (scale * 10)), (y - (scale * 10)), (1 + scale), (1 + scale), image_angle, c_orange, 0.5)
        scale = (z_charge_nolimit / 14)
        draw_sprite_ext(sprite_index, 0, ((x - 2) - (scale * 10)), ((y - 2) - (scale * 10)), (1.2 + scale), (1.2 + scale), image_angle, c_orange, 0.5)
    }
}
// WARNING: Popz'd an empty stack.
