fountain_index += 0.1
draw_sprite_ext(spr_cc_fountainbg_ch1, fountain_index, 745, 0, 2, 2, 0, c_white, image_alpha)
gml_Script_draw_background_ext_ch1(4367, 600, 0, 2, 2, 0, 16777215, image_alpha)
65535
if (con > 9998)
{
    if king
    {
        draw_text(gml_Script___view_get(0, 0), gml_Script___view_get(1, 0), ("obj_kingcutscene_slash_Draw_0_gml_15_0" + string(king.x)))
        draw_text(gml_Script___view_get(0, 0), (gml_Script___view_get(1, 0) + 30), ("obj_kingcutscene_slash_Draw_0_gml_16_0" + string(king.y)))
    }
    draw_text(gml_Script___view_get(0, 0), (gml_Script___view_get(1, 0) + 70), ("obj_kingcutscene_slash_Draw_0_gml_18_0" + string(gml_Script___view_get(0, 0))))
    draw_text(gml_Script___view_get(0, 0), (gml_Script___view_get(1, 0) + 100), ("obj_kingcutscene_slash_Draw_0_gml_19_0" + string(gml_Script___view_get(1, 0))))
    draw_text(gml_Script___view_get(0, 0), (gml_Script___view_get(1, 0) + 130), ("obj_kingcutscene_slash_Draw_0_gml_21_0" + string(con)))
    if k
    {
        draw_text((gml_Script___view_get(0, 0) + 160), gml_Script___view_get(1, 0), ("obj_kingcutscene_slash_Draw_0_gml_25_0" + string(k.x)))
        draw_text((gml_Script___view_get(0, 0) + 160), (gml_Script___view_get(1, 0) + 30), ("obj_kingcutscene_slash_Draw_0_gml_26_0" + string(k.y)))
    }
    if s
    {
        draw_text((gml_Script___view_get(0, 0) + 320), gml_Script___view_get(1, 0), ("obj_kingcutscene_slash_Draw_0_gml_31_0" + string(s.x)))
        draw_text((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 30), ("obj_kingcutscene_slash_Draw_0_gml_32_0" + string(s.y)))
    }
}
