timer++
if (con == 0)
{
    if (image_yscale < 8)
        image_yscale = gml_Script_scr_movetowards(image_yscale, 8, 1)
    if (image_xscale < 8)
        image_xscale = gml_Script_scr_movetowards(image_xscale, 8, 1)
    if (image_yscale == 8)
        con = 1
}
if (con == 1)
{
}
