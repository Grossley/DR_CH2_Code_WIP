if (init == false)
{
    startcolor = image_blend
    init = true
    angle_offset = (startcolor == 4235519 ? random_range(-15, 15) : random_range(-10, 10))
    if platter_spawn
    {
        type = 1
        direction = 270
        image_alpha = 1
        target_speed = speed
        speed = 1
        platterspawn = 0
        if fixed_angle
        {
            var targetdir = point_direction(x, y, (obj_heart.x + 10), (obj_heart.y + 10))
            var centerdir = point_direction(x, y, obj_growtangle.x, obj_growtangle.y)
            var centerdir2 = gml_Script_scr_rotatetowards_unclamped(targetdir, centerdir, random_range(15, 30))
            targetdir = gml_Script_scr_rotatetowards_unclamped(targetdir, centerdir, (-random_range(15, 30)))
            if (image_xscale > 0)
                targetdir = max(targetdir, 280)
            else
                targetdir = min(targetdir, 260)
            target_angle = gml_Script_scr_rotatetowards_unclamped(targetdir, centerdir, random_range(15, 30))
        }
    }
    else
    {
        type = 2
        direction = (point_direction(xstart, ystart, (obj_heart.x + 10), (obj_heart.y + 10)) + random_range(-5, 5))
        gml_Script_debug_message(string(direction))
    }
}
if (speed < target_speed)
{
    spawntimer++
    if (startcolor == 4235519)
        speed = gml_Script_scr_movetowards(speed, target_speed, 0.2)
    else
        speed = gml_Script_scr_movetowards(speed, target_speed, 0.25)
    if fixed_angle
        direction = lerp(270, target_angle, ((speed - 1) / (target_speed - 1)))
    else
    {
        target_angle = (point_direction(x, y, (obj_heart.x + 10), (obj_heart.y + 10)) + angle_offset)
        direction = gml_Script_scr_rotatetowards(direction, target_angle, 15)
    }
    if (spawntimer == 6)
        depth -= 11
}
if (type == 2)
{
    if (x > xstart)
        image_xscale = 1
    else
        image_xscale = -1
}
