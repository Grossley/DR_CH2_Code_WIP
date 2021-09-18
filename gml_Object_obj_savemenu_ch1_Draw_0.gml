xx = gml_Script___view_get(0, 0)
yy = gml_Script___view_get(1, 0)
"main"
if (d == 2)
    "mainbig"
if (global.lang == "ja")
{
    if (d == 1)
    {
        16777215
        draw_rectangle((54 + xx), (49 + yy), (265 + xx), (157 + yy), false)
        0
        draw_rectangle(((57 * d) + xx), ((52 * d) + yy), ((262 * d) + xx), ((154 * d) + yy), false)
    }
    else
    {
        gml_Script_scr_darkbox_ch1(((54 * d) + xx), ((49 * d) + yy), ((265 * d) + xx), ((157 * d) + yy))
        0
        draw_rectangle(((64 * d) + xx), ((59 * d) + yy), ((255 * d) + xx), ((147 * d) + yy), false)
    }
    16777215
    if (coord == 2)
        65535
    1
    draw_text(((160 * d) + xx), ((60 * d) + yy), name)
    0
    if (d == 1)
        draw_text((76 + xx), (80 + yy), ("obj_savemenu_slash_Draw_0_gml_29_0" + string(love)))
    if (d == 2)
        draw_text(((78 * d) + xx), ((80 * d) + yy), ("obj_savemenu_slash_Draw_0_gml_33_0" + string(level)))
    draw_text(((210 * d) + xx), ((80 * d) + yy), ((minutes + ":") + string(seconds)))
    1
    draw_text(((160 * d) + xx), ((100 * d) + yy), roomname)
    0
    if (coord == 0)
        draw_sprite(heartsprite, 0, (xx + (83 * d)), (yy + (135 * d)))
    if (coord == 1)
        draw_sprite(heartsprite, 0, (xx + (173 * d)), (yy + (135 * d)))
    if (coord < 2)
    {
        draw_text((xx + (95 * d)), (yy + (130 * d)), "obj_savemenu_slash_Draw_0_gml_47_0")
        draw_text((xx + (185 * d)), (yy + (130 * d)), "obj_savemenu_slash_Draw_0_gml_48_0")
    }
    else
    {
        1
        draw_text((xx + (160 * d)), (yy + (130 * d)), "obj_savemenu_slash_Draw_0_gml_52_0")
        0
    }
}
else
{
    if (d == 1)
    {
        16777215
        draw_rectangle((54 + xx), (49 + yy), (265 + xx), (135 + yy), false)
        0
        draw_rectangle(((57 * d) + xx), ((52 * d) + yy), ((262 * d) + xx), ((132 * d) + yy), false)
    }
    else
    {
        gml_Script_scr_darkbox_ch1(((54 * d) + xx), ((49 * d) + yy), ((265 * d) + xx), ((135 * d) + yy))
        0
        draw_rectangle(((64 * d) + xx), ((59 * d) + yy), ((255 * d) + xx), ((125 * d) + yy), false)
    }
    16777215
    if (coord == 2)
        65535
    if (global.flag[912] == 0)
        draw_text(((70 * d) + xx), ((60 * d) + yy), name)
    else
    {
        10
        if (d == 2)
            8
        draw_text(((70 * d) + xx), ((60 * d) + yy), name)
        "main"
        if (d == 2)
            "mainbig"
    }
    if (d == 1)
        draw_text((140 + xx), (60 + yy), ("obj_savemenu_slash_Draw_0_gml_29_0" + string(love)))
    if (d == 2)
        draw_text(((175 * d) + xx), ((60 * d) + yy), ("obj_savemenu_slash_Draw_0_gml_33_0" + string(level)))
    draw_text(((210 * d) + xx), ((60 * d) + yy), ((minutes + ":") + string(seconds)))
    draw_text(((70 * d) + xx), ((80 * d) + yy), roomname)
    if (coord == 0)
        draw_sprite(heartsprite, 0, (xx + (71 * d)), (yy + (113 * d)))
    if (coord == 1)
        draw_sprite(heartsprite, 0, (xx + (161 * d)), (yy + (113 * d)))
    if (coord < 2)
    {
        draw_text((xx + (85 * d)), (yy + (110 * d)), "obj_savemenu_slash_Draw_0_gml_47_0")
        draw_text((xx + (175 * d)), (yy + (110 * d)), "obj_savemenu_slash_Draw_0_gml_48_0")
    }
    else
        draw_text((xx + (85 * d)), (yy + (110 * d)), "obj_savemenu_slash_Draw_0_gml_52_0")
}
