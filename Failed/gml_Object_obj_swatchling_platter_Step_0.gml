var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4;
if (init == 0)
{
    gml_Script_scr_bullet_inherit(platterLid)
    gml_Script_scr_bullet_inherit(platterPlate)
    targetColor = startColor
    platterPlate.image_blend = startColor
    platterLid.image_blend = startColor
    platterPlate.image_angle = image_angle
    platterLid.image_angle = image_angle
    if (image_angle > 0)
        platterLid.image_xscale *= -1
    init = 1
}
if (hasCandy == 1)
{
    d = gml_Script_instance_create((x + (20 * (-side))), y, obj_swatchling_candy)
    d.sourcePlatter = self
    d.target = target
    d.side = side
    hasCandy = -1
}
if (!lidOff)
{
    if (timer >= 0)
    {
        if (!opened)
        {
            if firstOpen
                firstOpen = 0
            opened = 1
            birdfork = birds > 1
            var offbird = 1
            if (hasCandy == -1)
                birds--
            if (birds > 2 || hasCandy == -1)
                offbird = irandom((birds - 1))
            i = 0
            while (i < birds)
            {
                var _bird_index = ((swatchbc.bird_count - 1) - i)
                if (_bird_index < 0)
                    break
                else
                {
                    var yy = (y + 10)
                    if birdfork
                    {
                        if (i == 0)
                            y -= 10
                        else
                            y += 10
                    }
                    d = gml_Script_instance_create((x + (20 * (-side))), yy, obj_swatchling_bird)
                    if (side == 1)
                        d.image_xscale *= -1
                    d.platter_spawn = 1
                    d.image_blend = bird_color[i]
                    d.damage = red_damage[i]
                    d.target = red_target[i]
                    d.grazepoints = 4
                    var _temp_local_var_2 = swatchbc
                    var _temp_local_var_3 = swatchbc
                    var _temp_local_var_4 = swatchbc
                    if (i == offbird)
                        d.fixed_angle = 1
                    i++
                    continue
                }
            }
            birds = 0
        }
        lidLerp = (1 - (abs((timer - 20)) / 20))
        lidOffset = ((-1 * lidLerp) * (lidLerp - 2))
        if firstOpen
            lidOffset = min(lidOffset, 0)
        platterPlate.x = (x + ((lidOffset * 10) * side))
        platterLid.x = (x - ((lidOffset * 60) * side))
    }
    else if (timer < -10 && opened)
    {
        lidLerp = (1 - (abs((timer + 15)) / 5))
        lidOffset = ((-1 * lidLerp) * (lidLerp - 2))
        platterPlate.x = (x + ((lidOffset * 20) * side))
        platterLid.x = (x + ((lidOffset * 20) * side))
    }
    else
    {
        platterPlate.x = x
        platterLid.x = x
    }
}
platterPlate.y = y
platterLid.y = y
if (timer >= 40)
    timer = -20
else
    timer++
