fountain_index += 0.1
draw_sprite_ext(spr_cc_fountainbg_ch1, fountain_index, 745, 0, 2, 2, 0, c_white, image_alpha)
draw_background_ext_ch1(bg_cc_arena_ch1, 600, 0, 2, 2, 0, c_white, image_alpha)
if scr_debug_ch1()
{
    draw_set_color(c_yellow)
    if (con > 9998)
    {
        if instance_exists(king)
        {
            draw_text(__view_get((0 << 0), 0), __view_get((1 << 0), 0), string_hash_to_newline((scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Draw_0_gml_15_0") + string(king.x))))
            draw_text(__view_get((0 << 0), 0), (__view_get((1 << 0), 0) + 30), string_hash_to_newline((scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Draw_0_gml_16_0") + string(king.y))))
        }
        draw_text(__view_get((0 << 0), 0), (__view_get((1 << 0), 0) + 70), string_hash_to_newline((scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Draw_0_gml_18_0") + string(__view_get((0 << 0), 0)))))
        draw_text(__view_get((0 << 0), 0), (__view_get((1 << 0), 0) + 100), string_hash_to_newline((scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Draw_0_gml_19_0") + string(__view_get((1 << 0), 0)))))
        draw_text(__view_get((0 << 0), 0), (__view_get((1 << 0), 0) + 130), string_hash_to_newline((scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Draw_0_gml_21_0") + string(con))))
        if instance_exists(k)
        {
            draw_text((__view_get((0 << 0), 0) + 160), __view_get((1 << 0), 0), string_hash_to_newline((scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Draw_0_gml_25_0") + string(k.x))))
            draw_text((__view_get((0 << 0), 0) + 160), (__view_get((1 << 0), 0) + 30), string_hash_to_newline((scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Draw_0_gml_26_0") + string(k.y))))
        }
        if instance_exists(s)
        {
            draw_text((__view_get((0 << 0), 0) + 320), __view_get((1 << 0), 0), string_hash_to_newline((scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Draw_0_gml_31_0") + string(s.x))))
            draw_text((__view_get((0 << 0), 0) + 320), (__view_get((1 << 0), 0) + 30), string_hash_to_newline((scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Draw_0_gml_32_0") + string(s.y))))
        }
    }
}
