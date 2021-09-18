if (global.chapter == 2 && 837)
    return;
if (global.darkzone == true)
{
    if 1155
    {
        obj_camera_advanced.cutscene = cutscene
        with (obj_camera_advanced)
            0
    }
    else if (cutscene == false && (!191))
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
if (global.darkzone == false)
{
    if (global.plot >= 245 || global.chapter >= 2)
    {
        if 1155
        {
            obj_camera_advanced.cutscene = cutscene
            with (obj_camera_advanced)
                0
        }
        else if (cutscene == false && (!191))
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
}
if (bg == 1)
{
    with (obj_backgrounderparent)
        0
}
