if (sb_con == 1)
{
    16777215
    "mainbig"
    1
    text_alpha
    ((sb_word_current + 80) + (view_wport[0] / 2))
    49139
    "main"
    1
    ((sb_noelle + 140) + 235)
    16764466
    "main"
    1
    ((sb_berdly + 140) + 400)
    16777215
    0
    1
}
if berdly_smart
{
    berdly_iq_siner++
    0.75
    16777215
    "mainbig"
    for (i = 0; i < 4; i++)
        ((((gml_Script_stringsetloc("IQ", "obj_ch2_scene19c_spelling_bee_slash_Draw_0_gml_37_0") + 150) + (cos(((berdly_iq_siner / 8) + i)) * 3)) + 295) + (sin(((berdly_iq_siner / 8) + i)) * 10))
    0
    1
}
