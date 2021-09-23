if (init == false)
{
    init = true
    if (attackdirection == 1)
    {
        finalpoint = 1
        points[1][0] = (gml_Script___view_get(0, 0) - 80)
        points[1][1] = y
    }
    else
    {
        points[1][0] = x
        points[1][1] = (y + (100 * (attackdirection - 1)))
        points[2][1] = points[1][1]
    }
}
if (nextpoint <= finalpoint)
{
    if (nextpoint == 2)
    {
        if ((x - 10) <= (obj_heart.x + 8))
        {
            x = (obj_heart.x + 8)
            points[2][0] = x
            points[3][0] = x
            if (attackdirection == 2)
                points[3][1] = (gml_Script___view_get(1, 0) - 80)
            else
                points[3][1] = (gml_Script___view_get(1, 0) + 580)
            nextpoint++
        }
        else
            x -= 15
    }
    else
    {
        x = gml_Script_scr_movetowards(x, points[nextpoint][0], 15)
        y = gml_Script_scr_movetowards(y, points[nextpoint][1], 15)
        if (point_distance(x, y, points[nextpoint][0], points[nextpoint][1]) <= 0)
            nextpoint++
    }
}
