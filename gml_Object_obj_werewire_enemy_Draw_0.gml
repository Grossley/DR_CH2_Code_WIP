if (state == 3)
{
    0.5
    // WARNING: Popz'd an empty stack.
}
if (stop_anim == 0)
{
    siner_timer += image_speed
    if (siner_timer >= 1)
    {
        siner_timer -= 1
        siner += 8
    }
    anim_timer_2 += (sin((siner / (34 / m))) / (4 / m))
}
if (state == 0)
{
    fsiner += 1
    if (sprite_index != spr_werewire_hang)
    {
        if (stop_anim == 0)
            gml_Script_draw_monster_body_part(idlesprite, anim_timer_2, x, y)
        else
            // WARNING: Popz'd an empty stack.
        draw_sprite_ext(spr_werewire_wire_curve, 0, (x - 16), (y - 12), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
        if (flash == true)
            gml_Script_draw_sprite_ext_flash(1732, 0, (x - 16), (y - 12), image_xscale, image_yscale, image_angle, image_blend, (((-(fsiner / 5)) * 0.4) + 0.6))
        for (i = 0; i < 32; i += 1)
        {
            draw_sprite_ext(spr_werewire_wire_vertical, 0, (((x - 16) + ((sin(((i / 4) + (siner / 16))) * i) / 4)) + (i * 2)), ((y - 20) - (i * 8)), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
            if (flash == true)
                gml_Script_draw_sprite_ext_flash(1731, 0, (((x - 16) + ((sin(((i / 4) + (siner / 16))) * i) / 4)) + (i * 2)), ((y - 20) - (i * 8)), image_xscale, image_yscale, image_angle, image_blend, (((-(fsiner / 5)) * 0.4) + 0.6))
        }
    }
    else
    {
        draw_sprite_ext(spr_werewire_hang, (siner / 16), (x + hangx), (y + hangy), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
        for (i = 0; i < 32; i += 1)
            draw_sprite_ext(spr_werewire_wire_vertical, 0, ((x + ((sin(((i / 4) + (siner / 16))) * i) / 8)) + hangx), (((y + 14) - (i * 8)) + hangy), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
255
