var _temp_local_var_2, _temp_local_var_3;
if (con == 0)
{
    if (sndcon == 0)
    {
        gml_Script_snd_stop_ch1(422)
        gml_Script_snd_play_ch1(422)
        sndcon = 1
    }
    image_index = 0
    if (image_xscale < 2)
        image_xscale += 0.4
    else
    {
        image_xscale = 2
        con = 1
        timer = 0
    }
}
if (con == 1)
{
    timer += 1
    if (timer >= 8)
    {
        if (sndcon == 1 && type < 3)
        {
            gml_Script_snd_play_ch1(466)
            sndcon = 2
        }
        image_index = 1
        con = 2
        timer = 0
        if (type == 0)
        {
            bullet = gml_Script_instance_create_ch1(x, y, 1518)
            bullet.sprite_index = spr_diamondbullet_ch1
            bullet.active = true
            gml_Script_scr_bullet_inherit_ch1(bullet)
            var _temp_local_var_2 = bullet
            move_towards_point((obj_heart_ch1.x + 10), (obj_heart_ch1.y + 10), 8)
            image_angle = direction
            image_xscale = 0.7
            image_yscale = 0.7
        }
        if (type == 1)
        {
            i = 0
            while (i < 5)
            {
                bullet = gml_Script_instance_create_ch1(x, y, 1518)
                bullet.sprite_index = spr_spadebullet_ch1
                bullet.active = true
                bullet.offset = (18 * i)
                gml_Script_scr_bullet_inherit_ch1(bullet)
                var _temp_local_var_3 = bullet
                move_towards_point((obj_heart_ch1.x + 10), (obj_heart_ch1.y + 10), 4.5)
                direction = ((direction - 36) + offset)
                image_angle = direction
                image_xscale = 0.4
                image_yscale = 0.4
            }
        }
    }
}
if (con == 2)
{
    timer += 1
    if (timer >= 10)
    {
        con = 4
        timer = 0
    }
}
if (con == 4)
{
    if (sndcon == 2)
    {
        gml_Script_snd_stop_ch1(422)
        gml_Script_snd_play_ch1(422)
        sndcon = 3
    }
    if (image_xscale > 0)
    {
        image_xscale -= 0.4
        image_yscale += 0.2
    }
    else
    {
        image_xscale = 0
        con = 0
        instance_destroy()
    }
}
