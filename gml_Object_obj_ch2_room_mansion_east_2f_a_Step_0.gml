var _temp_local_var_1, _temp_local_var_4, _temp_local_var_5;
if (global.flag[344] == 0)
{
    if (key != self)
        var _temp_local_var_1 = key
    if (con == 1)
    {
        con = 2
        global.interact = 1
        key = gml_Script_scr_dark_marker(keyXPos, keyYPos, 2309)
        fadeplatters = 1
    }
    if fadeplatters
    {
        with (obj_saucer)
        {
            if (x < 520)
            {
                if (image_alpha > 0)
                    image_alpha = lerp(image_alpha, 0, 0.2)
            }
        }
    }
    if (con == 2 && (!keyfloat))
    {
        keysparkle = 1
        if (key.y != (keyYPos - 20))
        {
            key.y = lerp(key.y, (keyYPos - 20), 0.1)
            if (key.y < (keyYPos - 18))
                key.y = (keyYPos - 20)
        }
        else
        {
            floattimer++
            if (floattimer == 30)
            {
                floattimer = 0
                keyfloat = 1
            }
        }
    }
    if keysparkle
    {
        sparkletimer++
        if ((sparkletimer % 4) == 0)
        {
            for (var i = 0; i < 1; i++)
            {
                sparkle[i] = gml_Script_instance_create((key.x + 50), (key.y + 30), obj_afterimage)
                sparkle[i].fadeSpeed = 0.01
                sparkle[i]
                sparkle[i].sprite_index = spr_sparestar_anim
                sparkle[i].image_speed = 0.5
                sparkle[i].hspeed = random_range(-3, 3)
                sparkle[i].friction = 0.05
                sparkle[i].gravity = 0.1
            }
        }
    }
    if keyfloat
    {
        key.x = lerp(key.x, doorlocked.x, 0.1)
        key.y = lerp(key.y, (doorlocked.y + 50), 0.1)
        if (key.x <= (doorlocked.x + 1) && key.y <= (doorlocked.y + 51))
        {
            con = 3
            keysparkle = 0
        }
    }
    if (con == 3)
    {
        con = -1
        global.interact = 0
        global.flag[344] = 1
        explosion = gml_Script_instance_create((doorlocked.x + 50), (doorlocked.y + 30), obj_animation)
        explosion.sprite_index = spr_realisticexplosion
        explosion.image_xscale = 2
        explosion.image_yscale = 2
        dooropen = gml_Script_scr_dark_marker(180, 40, 2859)
        dooropen.depth = 899999
        fadeplatters = 0
        188
        key
        exitcollider
        doorlocked
        i = 0
        while (i < array_length_1d(sparkle))
            var _temp_local_var_4 = sparkle[i]
        with (obj_saucer_monty)
            // WARNING: Popz'd an empty stack.
        with (obj_saucer)
        {
            if (x < 520)
            {
                collider
                // WARNING: Popz'd an empty stack.
            }
        }
        var _temp_local_var_5 = forcefield
    }
    if make_forcefield
    {
        forcefield = gml_Script_scr_forcefield(410, 235, 2, 8, 1, 0)
        forcefield.depth = 80000
        make_forcefield = 0
    }
}
