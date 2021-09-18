if (init == 0)
{
    active = true
    init = 1
    if (attackdirection == 1)
    {
        finalpoint = 2
        targetx = (obj_growtangle.x + 100)
    }
    else
    {
        targety = (obj_growtangle.y + (100 * (attackdirection - 1)))
        direction = (attackdirection == 0 ? 90 : 270)
        image_angle = direction
    }
}
if (lasertimer > 0)
{
    tailx = gml_Script_scr_movetowards(tailx, x, laserspeed)
    taily = gml_Script_scr_movetowards(taily, y, laserspeed)
    lasertimer--
    if (lasertimer == 0)
    {
        if (attackdirection == 1)
            targetx = (gml_Script___view_get(0, 0) - 20)
        nextpoint++
    }
}
else if (nextpoint <= finalpoint)
{
    if (nextpoint == 2 && attackdirection != 1)
    {
        if ((x - laserspeed) <= (obj_heart.x + 10))
        {
            x = (obj_heart.x + 10)
            targetx = x
            if (attackdirection == 2)
                targety = (gml_Script___view_get(1, 0) - 20)
            else
                targety = (gml_Script___view_get(1, 0) + 500)
            lasertimer = 20
        }
        else
            x -= laserspeed
    }
    else if (lasertimer <= 0)
    {
        x = gml_Script_scr_movetowards(x, targetx, laserspeed)
        y = gml_Script_scr_movetowards(y, targety, laserspeed)
        if (point_distance(x, y, targetx, targety) <= 0)
        {
            if (nextpoint < finalpoint)
                lasertimer = (attackdirection == 1 ? 20 : 10)
            else
                nextpoint++
        }
    }
}
if (grazed == 1)
{
    if (grazetimer == 0)
        grazetimer = 5
    else
    {
        grazetimer--
        if (grazetimer == 0)
            grazed = 0
    }
}
