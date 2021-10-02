if (init == false)
{
    active = true
    init = true
    if (attackdirection == 1)
        targety = (obj_growtangle.y + random_range(-70, 70))
    else
    {
        targety = (obj_growtangle.y + (100 * (attackdirection - 1)))
        direction = (attackdirection == 0 ? 90 : 270)
        image_angle = direction
    }
    if (targety == y)
        finalpoint = 2
}
var laserdistance = point_distance(x, y, tailx, taily)
if (lasertimer > 0 || laserdistance >= 100)
{
    tailx = scr_movetowards(tailx, x, laserspeed)
    taily = scr_movetowards(taily, y, laserspeed)
    lasertimer--
    if (lasertimer <= 0 && laserdistance <= laserspeed)
    {
        nextpoint++
        if (attackdirection == 1)
        {
            if (finalpoint == nextpoint)
                targetx = (__view_get((0 << 0), 0) - 80)
            else if (nextpoint == 2)
                targetx = (obj_growtangle.x + 100)
        }
    }
}
if (lasertimer <= 0)
{
    if (nextpoint == 2 && attackdirection != 1)
    {
        if ((x - laserspeed) <= (obj_heart.x + 8))
        {
            x = (obj_heart.x + 8)
            targetx = x
            if (attackdirection == 2)
                targety = (__view_get((1 << 0), 0) - 80)
            else
                targety = (__view_get((1 << 0), 0) + 500)
            lasertimer = 15
        }
        else
            x -= laserspeed
    }
    else if (lasertimer <= 0 || (attackdirection == 1 && finalpoint != nextpoint))
    {
        x = scr_movetowards(x, targetx, laserspeed)
        y = scr_movetowards(y, targety, laserspeed)
        if (point_distance(x, y, targetx, targety) <= 0)
            lasertimer = (attackdirection == 1 ? 15 : 5)
    }
}
if (grazed == true)
{
    if (grazetimer == 0)
        grazetimer = 5
    else
    {
        grazetimer--
        if (grazetimer == 0)
            grazed = false
    }
}
