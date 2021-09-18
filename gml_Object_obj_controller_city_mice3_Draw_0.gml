if (solve != 2)
{
    draw_sprite_ext(spr_mice3_progressBar, 0, 326, 164, 2, 2, 0, c_white, 1)
    "main"
    if (micescore < 10)
        16777215
    else
        65280
    language = 0
    0
    if (language == 0)
        draw_text_transformed(342, 173, string_copy(gml_Script_stringsetloc("ILOVEMOUSE", "obj_controller_city_mice3_slash_Draw_0_gml_18_0"), 1, micescore), 2, 2, 0)
    if (language == 1)
        draw_text_transformed(342, 173, string_copy(gml_Script_stringsetloc("ILUVNEZUMI", "obj_controller_city_mice3_slash_Draw_0_gml_20_0"), 1, micescore), 2, 2, 0)
    255
    2
    draw_text_transformed(484, 173, string_copy("??????????", (micescore + 1), (10 - micescore)), 2, 2, 0)
}
16777215
0
if (weird == 1)
{
    if (drawshine == 1)
    {
        draw_sprite_ext(spr_mouseHole, 0, 200, 240, 2, 2, 0, c_white, 1)
        shineindex += 0.25
        draw_sprite_ext(spr_shine, shineindex, 215, 270, 2, 2, 0, c_white, 1)
    }
}
