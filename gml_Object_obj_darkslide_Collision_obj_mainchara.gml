var _temp_local_var_3;
cancollide = false
if (global.interact == 0 || collide == 1)
    cancollide = true
if (cancollide == true)
{
    if (abovey == 0)
    {
        if (obj_mainchara.y < y)
        {
            abovey = 1
            64
            slide_noise = 236
            with (obj_mainchara)
            {
                fun = true
                sprite_index = spr_krisd_slide
            }
        }
        if (obj_mainchara.y > y)
            abovey = -1
    }
    collide = 1
    global.interact = 1
    other.y += 12
    collidetimer = 3
    collider += 1
    if (slidetimer == 0 && abovey == 1)
    {
        dust = gml_Script_instance_create((obj_mainchara.x + 20), (obj_mainchara.y + 30), obj_slidedust)
        var _temp_local_var_3 = dust
        vspeed = -6
        hspeed = (-1 + random(2))
    }
    slidetimer += 1
    if (move_lr_enabled && obj_mainchara.px == 0)
    {
        if dust
        {
            with (obj_mainchara)
            {
                _px = -6
                if (!place_meeting((x + _px), y, obj_solidblock))
                    x += _px
            }
        }
        with (obj_mainchara)
        {
            _px = 6
            if (!place_meeting((x + _px), y, obj_solidblock))
                x += _px
        }
    }
}
