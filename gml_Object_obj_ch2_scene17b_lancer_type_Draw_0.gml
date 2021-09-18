if monitor_on
{
    var x1 = 145
    var y1 = 34
    var x2 = (x1 + (sprite_get_width(spr_queenmonitor_bg) * 2))
    var y2 = (y1 + (sprite_get_height(spr_queenmonitor_bg) * 2))
    var color = (overload ? c_red : make_color_rgb(60, 120, 190))
    color
    draw_rectangle(x1, y1, x2, y2, false)
    16777215
    draw_sprite_ext(spr_dw_mansion_monitor_frame, 0, 142, 24, 2, 2, 0, c_white, 1)
    if (!overload)
    {
        for (var i = 0; i < l_amount; i++)
        {
            var x_pos = (x_start_pos + (i * (sprite_get_width(spr_cutscene_17b_lancer_letter) * 2)))
            draw_sprite_ext(spr_cutscene_17b_lancer_letter, 0, (x + x_pos), y_pos, 2, 2, 0, c_white, 1)
        }
        x1 = (x_start_pos + (l_amount * (sprite_get_width(spr_cutscene_17b_lancer_letter) * 2)))
        y1 = (y_pos - 1)
        x2 = (x1 + (sprite_get_width(spr_cutscene_17b_lancer_letter) * 2))
        y2 = ((y_pos - 1) + (sprite_get_height(spr_cutscene_17b_lancer_letter) * 2))
        typer_alpha++
        fade += 0.1
        (((((2 * fade) + 3) * pi) / 2) + 1)
        draw_rectangle(x1, y1, x2, y2, false)
        1
    }
    else
    {
        "mainbig"
        1
        typer_alpha++
        fade += 0.1
        (((((2 * fade) + 3) * pi) / 2) + 1)
        ((gml_Script_stringsetloc("QUANTITY OVERLOAD", "obj_ch2_scene17b_lancer_type_slash_Draw_0_gml_44_0") + 70) + (view_wport[0] / 2))
        1
        0
    }
}
