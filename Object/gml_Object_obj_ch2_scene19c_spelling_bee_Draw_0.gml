if (sb_con == 1)
{
    draw_set_color(c_white)
    gml_Script_scr_84_set_draw_font("mainbig")
    draw_set_halign(fa_center)
    draw_set_alpha(text_alpha)
    draw_text((gml_Script_camerax() + (view_wport[0] / 2)), (gml_Script_cameray() + 80), sb_word_current)
    draw_set_color(0x00BFF3)
    gml_Script_scr_84_set_draw_font("main")
    draw_set_halign(fa_center)
    draw_text((gml_Script_camerax() + 235), (gml_Script_cameray() + 140), sb_noelle)
    draw_set_color(0xFFCE32)
    gml_Script_scr_84_set_draw_font("main")
    draw_set_halign(fa_center)
    draw_text((gml_Script_camerax() + 400), (gml_Script_cameray() + 140), sb_berdly)
    draw_set_color(c_white)
    draw_set_halign(fa_left)
    draw_set_alpha(1)
}
if berdly_smart
{
    berdly_iq_siner++
    draw_set_alpha(0.75)
    draw_set_color(c_white)
    gml_Script_scr_84_set_draw_font("mainbig")
    for (i = 0; i < 4; i++)
        draw_text(((gml_Script_camerax() + 295) + (sin(((berdly_iq_siner / 8) + i)) * 10)), ((gml_Script_cameray() + 150) + (cos(((berdly_iq_siner / 8) + i)) * 3)), gml_Script_stringsetloc("IQ", "obj_ch2_scene19c_spelling_bee_slash_Draw_0_gml_37_0"))
    draw_set_halign(fa_left)
    draw_set_alpha(1)
}
