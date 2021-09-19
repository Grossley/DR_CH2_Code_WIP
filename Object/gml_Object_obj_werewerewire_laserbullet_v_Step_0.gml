if (init == 0)
{
    active = true
    init = 1
    if (attackdirection == 1)
    {
        targetx = (obj_growtangle.x + random_range(-70, 70))
        if (targetx == x)
            finalpoint = 2
        direction = 90
    }
    else
    {
        targetx = (obj_growtangle.x + (100 * (attackdirection - 1)))
        direction = (attackdirection == 0 ? 180 : 0)
    }
    image_angle = direction
}
var laserdistance = point_distance(x, y, tailx, taily)
if (lasertimer > 0 || laserdistance >= 100)
{
    tailx = gml_Script_scr_movetowards(tailx, x, laserspeed)
    taily = gml_Script_scr_movetowards(taily, y, laserspeed)
    lasertimer--
    if (lasertimer <= 0 && laserdistance <= laserspeed)
    {
        if (finalpoint == 1)
            targety = (gml_Script_cameray() + 560)
        nextpoint++
        if (attackdirection == 1)
        {
            if (nextpoint == finalpoint)
                targety = (gml_Script_cameray() + 560)
            else if (nextpoint == 2)
                targety = (obj_growtangle.y - 100)
        }
    }
}
if (lasertimer <= 0)
{
    if (nextpoint == 2 && attackdirection != 1)
    {
        if ((y + laserspeed) >= (obj_heart.y + 8))
        {
            y = (obj_heart.y + 8)
            targety = y
            if (attackdirection == 2)
                targetx = (gml_Script_camerax() - 80)
            else
                targetx = (gml_Script_camerax() + 700)
            lasertimer = 15
        }
        else
            y += laserspeed
    }
    else if (lasertimer <= 0)
    {
        x = gml_Script_scr_movetowards(x, targetx, laserspeed)
        y = gml_Script_scr_movetowards(y, targety, laserspeed)
        if (point_distance(x, y, targetx, targety) <= 0)
            lasertimer = (attackdirection == 1 ? 15 : 5)
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
