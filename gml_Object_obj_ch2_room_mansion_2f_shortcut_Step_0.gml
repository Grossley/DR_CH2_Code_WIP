var _temp_local_var_1, _temp_local_var_4;
if (global.flag[346] == 0)
{
    if gml_Script_i_ex(key)
    {
        var _temp_local_var_1 = key
        gml_Script_scr_depth()
    }
    if (con == 1)
    {
        con = 2
        global.interact = 1
        key = gml_Script_scr_dark_marker(keyXPos, keyYPos, 2310)
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
                sparkle[i] = gml_Script_scr_marker((key.x + 50), (key.y + 30), 2471)
                sparkle[i].image_speed = 0.5
                sparkle[i].hspeed = random_range(-3, 3)
                sparkle[i].friction = 0.05
                sparkle[i].gravity = 0.1
            }
        }
    }
    if keyfloat
    {
        key.x = lerp(key.x, bookcase.x, 0.1)
        key.y = lerp(key.y, (bookcase.y + 50), 0.1)
        if (key.x <= (bookcase.x + 1) && key.y <= (bookcase.y + 51))
        {
            con = 3
            keysparkle = 0
        }
    }
    if (con == 3)
    {
        con = -1
        global.interact = 0
        global.flag[346] = 1
        explosion = gml_Script_instance_create((bookcase.x + 50), (bookcase.y + 30), obj_animation)
        explosion.sprite_index = spr_realisticexplosion
        explosion.image_xscale = 2
        explosion.image_yscale = 2
        fadeplatters = 0
        gml_Script_snd_play(188)
        gml_Script_safe_delete(key)
        gml_Script_safe_delete(bookcase)
        i = 0
        while (i < array_length_1d(sparkle))
        {
            var _temp_local_var_4 = sparkle[i]
            instance_destroy()
        }
        with (obj_saucer_monty)
            instance_destroy()
        with (obj_saucer)
        {
            if (x < 520)
            {
                instance_destroy(collider)
                instance_destroy()
            }
        }
        gml_Script_safe_delete(forcefield_right)
        instance_destroy()
    }
    if make_forcefield
    {
        forcefield_right = gml_Script_scr_forcefield(520, 240, 2, 8, 1, 0)
        forcefield_right.depth = 80000
        make_forcefield = 0
    }
}
