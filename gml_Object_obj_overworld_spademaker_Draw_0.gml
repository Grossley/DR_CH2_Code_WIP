cur_alpha = darkamt
if (darkamt < 0.6)
    darkamt += 0.04
if (tile_fade == true)
{
    if (cur_alpha != darkamt)
    {
        for (var i = 0; i < array_length_1d(tilearray); i++)
            gml_Script_tile_set_alpha(tilearray[i], (darkamt * 2))
    }
}
darkamt
0
draw_rectangle((gml_Script___view_get(0, 0) - 10), (gml_Script___view_get(1, 0) - 10), (gml_Script___view_get(0, 0) + 650), (gml_Script___view_get(1, 0) + 650), false)
1
