if (glow_in_out != 0)
{
    glow_lerp = ((lerp(glow_lerp, 1, 0.35) * 100) / 100)
    if (glow_in_out == 1)
        gml_Script_scr_draw_outline(2, recruit_col, glow_lerp)
    else
        gml_Script_scr_draw_outline(2, recruit_col, (1 - glow_lerp))
    if (glow_lerp >= 0.95)
    {
        if (glow_in_out == 1)
            glow_in_out = -1
        else
            glow_in_out = 0
        glow_lerp = 0
    }
}
if fade_in_out
{
    gml_Script_draw_sprite_ext_flash(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, merge_color(start_color, end_color, color_lerp), 1)
    if (glow_in_out == 0 && color_lerp >= 0.35)
    {
        glow_in_out = 1
        glow_lerp = 0
    }
}
else
    // WARNING: Popz'd an empty stack.
if (con == 4)
{
    if big_square
        big_square.image_alpha = (shine_timer / 20)
    else
    {
        16777215
        ((0 + 480) + 640)
    }
    shine_timer++
    if (shine_timer == 30)
        thrash_con = 3
}
if (con >= 5)
{
    16777215
    ((0 + 480) + 640)
    if (shine_timer == (4 / f))
    {
        line = ((((obj_anime_bg_line + 652) + irandom(32)) + 20) + irandom(120))
        line.image_blend = 0xEAAA8E
        line.depth = (depth - 1)
    }
    if (shine_timer == (24 / f))
    {
        line = ((((obj_anime_bg_line + 652) + irandom(32)) + 20) + irandom(120))
        line.image_blend = 0xEAAA8E
        line.depth = (depth - 1)
    }
    if (shine_timer == (44 / f))
    {
        line = ((((obj_anime_bg_line + 652) + irandom(32)) + 20) + irandom(120))
        line.image_blend = 0xEAAA8E
        line.depth = (depth - 1)
    }
    if (shine_timer == (14 / f))
    {
        line = ((((obj_anime_bg_line + 652) + irandom(32)) + 620) - irandom(120))
        line.image_blend = 0xEAAA8E
        line.depth = (depth - 1)
    }
    if (shine_timer == (34 / f))
    {
        line = ((((obj_anime_bg_line + 652) + irandom(32)) + 620) - irandom(120))
        line.image_blend = 0xEAAA8E
        line.depth = (depth - 1)
    }
    if (shine_timer == (44 / f))
    {
        line = ((((obj_anime_bg_line + 652) + irandom(32)) + 620) - irandom(120))
        line.image_blend = 0xEAAA8E
        line.depth = (depth - 1)
    }
    shine_timer++
    if (shine_timer >= (50 / f))
        shine_timer = 0
}
