if (darken == true)
{
    with (obj_heroparent_ch1)
        darkify = true
    if (darkamt < 15)
        darkamt += 1
    with (obj_whiteedge_ch1)
        image_alpha = (obj_darkener_ch1.darkamt / 15)
}
if (darken == false)
{
    with (obj_growtangle_ch1)
        growcon = 3
    with (obj_heroparent_ch1)
        darkify = false
    if (darkamt > 0)
        darkamt -= 1
    with (obj_whiteedge_ch1)
        image_alpha = (obj_darkener_ch1.darkamt / 15)
    if (darkamt <= 0)
        // WARNING: Popz'd an empty stack.
}
(darkamt / 20)
0
draw_rectangle((gml_Script___view_get(0, 0) - 40), (gml_Script___view_get(1, 0) - 40), (gml_Script___view_get(0, 0) + 680), (gml_Script___view_get(1, 0) + 520), false)
1
