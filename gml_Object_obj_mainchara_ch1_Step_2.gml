if (global.darkzone == true)
{
    if (cutscene == false && (!1464))
    {
        wd = (x - floor(((gml_Script___view_get(2, 0) / 2) - (initwd / 2))))
        ht = (y - floor(((gml_Script___view_get(3, 0) / 2) - (initht / 2))))
        gml_Script___view_set(0, 0, wd)
        gml_Script___view_set(1, 0, ht)
        if (gml_Script___view_get(0, 0) < 0)
            gml_Script___view_set(0, 0, 0)
        if (gml_Script___view_get(0, 0).room_width - gml_Script___view_get(2, 0))
            gml_Script___view_set(0, 0, (room_width - gml_Script___view_get(2, 0)))
        if (gml_Script___view_get(1, 0) < 0)
            gml_Script___view_set(1, 0, 0)
        if (gml_Script___view_get(1, 0).room_height - gml_Script___view_get(3, 0))
            gml_Script___view_set(1, 0, (room_height - gml_Script___view_get(3, 0)))
    }
}
if (global.darkzone == false && global.plot >= 245)
{
    if (cutscene == false && (!1464))
    {
        gml_Script___view_set(9, 0, -4)
        wd = ((x - floor((gml_Script___view_get(2, 0) / 2))) + 11)
        ht = ((y - floor((gml_Script___view_get(3, 0) / 2))) + 17)
        gml_Script___view_set(0, 0, wd)
        gml_Script___view_set(1, 0, ht)
        if (gml_Script___view_get(0, 0) < 0)
            gml_Script___view_set(0, 0, 0)
        if (gml_Script___view_get(0, 0).room_width - gml_Script___view_get(2, 0))
            gml_Script___view_set(0, 0, (room_width - gml_Script___view_get(2, 0)))
        if (gml_Script___view_get(1, 0) < 0)
            gml_Script___view_set(1, 0, 0)
        if (gml_Script___view_get(1, 0).room_height - gml_Script___view_get(3, 0))
            gml_Script___view_set(1, 0, (room_height - gml_Script___view_get(3, 0)))
    }
}
if (bg == 1)
{
    with (obj_backgrounderparent_ch1)
        0
}
