xxx = gml_Script___view_get(0, 0)
yyy = gml_Script___view_get(1, 0)
if (global.darkzone == false)
{
    if (side == 0)
    {
        16777215
        draw_rectangle((xxx + 16), (yyy + 5), (xxx + 304), (yyy + 80), false)
        0
        draw_rectangle((xxx + 19), (yyy + 8), (xxx + 301), (yyy + 77), false)
    }
    else
    {
        16777215
        draw_rectangle((xxx + 16), (yyy + 160), (xxx + 304), (yyy + 235), false)
        0
        draw_rectangle((xxx + 19), (yyy + 163), (xxx + 301), (yyy + 232), false)
    }
}
if (global.darkzone == true)
{
    if (side == 0)
    {
        0
        draw_rectangle((xxx + 38), (yyy + 16), (xxx + 602), (yyy + 154), false)
        gml_Script_scr_darkbox_ch1(((xxx + 32) - 8), ((yyy + 10) - 8), ((xxx + 608) + 8), ((yyy + 160) + 8))
    }
    else
    {
        0
        draw_rectangle((xxx + 38), (yyy + 326), (xxx + 602), (yyy + 464), false)
        gml_Script_scr_darkbox_ch1(((xxx + 32) - 8), ((yyy + 320) - 8), ((xxx + 608) + 8), ((yyy + 470) + 8))
    }
}
return;
