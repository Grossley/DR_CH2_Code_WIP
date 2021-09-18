"main"
1
creditalpha
for (i = 0; i < 8; i += 1)
{
    linecolor[i]
    draw_text((gml_Script___view_get(0, 0) + (gml_Script___view_get(2, 0) / 2)), (((gml_Script___view_get(1, 0) + (20 * i)) + 50) - 8), line[i])
}
if (drawtesters == 1)
{
    fangamertesting = gml_Script_stringsetloc("-Fangamer Testing-", "obj_credits_2_slash_Draw_0_gml_17_0")
    trailers = gml_Script_stringsetloc("-Trailers & All Video Editing-", "obj_credits_2_slash_Draw_0_gml_18_0")
    var spacing = 20
    menugray
    draw_text(160, (42 + (spacing * 0)), fangamertesting)
    16777215
    2
    draw_text(152, (42 + (spacing * 1)), "Chris Warriner")
    draw_text(152, (42 + (spacing * 2)), "Ryan Alyea")
    draw_text(152, (42 + (spacing * 3)), "Alexandro Arvizu")
    draw_text(152, (42 + (spacing * 4)), "Dan Moore")
    0
    draw_text(168, (42 + (spacing * 1)), "Jack Murphy")
    draw_text(168, (42 + (spacing * 2)), "heavenchai")
    draw_text(168, (42 + (spacing * 3)), "Charlie Verdin")
    draw_text(168, (42 + (spacing * 4)), "Steven Thompson")
    1
    menugray
    draw_text(160, (42 + (spacing * 6)), trailers)
    16777215
    draw_text(160, (42 + (spacing * 7)), "Everdraed")
}
16777215
1
