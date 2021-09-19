var _temp_local_var_3;
cancollide = false
if (global.interact == 0 || collide == 1)
    cancollide = true
if (cancollide == true)
{
    if (abovey == 0)
    {
        if (obj_mainchara_ch1.y < y)
        {
            abovey = 1
            gml_Script_snd_play_ch1(381)
            slide_noise = gml_Script_snd_loop_ch1(484)
            with (obj_mainchara_ch1)
            {
                fun = true
                sprite_index = spr_krisd_slide_ch1
            }
        }
        if (obj_mainchara_ch1.y > y)
            abovey = -1
    }
    collide = 1
    global.interact = 1
    other.y += 12
    collidetimer = 3
    collider += 1
    if (slidetimer == 0 && abovey == 1)
    {
        dust = gml_Script_instance_create_ch1((obj_mainchara_ch1.x + 20), (obj_mainchara_ch1.y + 30), 1471)
        var _temp_local_var_3 = dust
        vspeed = -6
        hspeed = (-1 + random(2))
    }
    slidetimer += 1
}
