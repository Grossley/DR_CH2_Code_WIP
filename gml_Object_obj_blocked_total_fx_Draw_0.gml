if (state == 1)
{
    // WARNING: Popz'd an empty stack.
    "main"
    0
    1
    if (global.lang == "ja")
    {
        draw_text(x, (y - 6), count)
        draw_text(x, (y + 8), (gml_Script_stringsetloc("Blocked", "obj_blocked_total_fx_slash_Draw_0_gml_9_0") + gml_Script_stringsetloc(" ads!", "obj_blocked_total_fx_slash_Draw_0_gml_10_0")))
    }
    else
    {
        draw_text(x, (y - 6), gml_Script_stringsetloc("Blocked", "obj_blocked_total_fx_slash_Draw_0_gml_9_0"))
        draw_text(x, (y + 8), (count + gml_Script_stringsetloc(" ads!", "obj_blocked_total_fx_slash_Draw_0_gml_10_0")))
    }
    0
    16777215
    con = 1
}
else if (state < 3)
{
    if (state == -1)
    {
        scale += 0.25
        if (scale > 1)
        {
            scale = 1.2
            state = 0
        }
    }
    else if (state == 0)
    {
        scale = 1
        state = 1
    }
    else if (state == 2)
    {
        scale -= 0.25
        if (scale <= 0)
            // WARNING: Popz'd an empty stack.
    }
    0.5
    0
    draw_rectangle(((x - (sprite_width / 2)) + 6), ((y - (sprite_height / 2)) + 6), ((x + (sprite_width / 2)) + 6), ((y + (sprite_height / 2)) + 6), false)
    1
    16777215
    draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, c_white, 1)
}
if (con == 1)
    image_alpha -= 0.4
if (image_alpha < 0)
    // WARNING: Popz'd an empty stack.
