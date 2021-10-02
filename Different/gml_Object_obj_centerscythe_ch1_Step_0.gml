if (chasecon == 1)
{
    image_alpha += 0.04
    if (image_alpha >= 1)
    {
        image_alpha = 1
        chasecon = 2
        active = true
    }
}
if (chasecon == 2)
{
    if (un == 0)
    {
        if (rotspeed <= 10)
            rotspeed += 1
    }
    if (un == 1)
    {
        if (rotspeed >= -10)
            rotspeed -= 1
    }
    sine += sinespeed
    dir += dirspeed
    if (insanity == 1)
    {
        if (dirspeed > 0 && dirspeed < 3)
            dirspeed += 0.01
        if (dirspeed < 0 && dirspeed > -3)
            dirspeed -= 0.01
    }
    length = (cos((sine / 18)) * radius)
    x = (centerx - lengthdir_x(length, dir))
    y = (centery - lengthdir_y(length, dir))
    if (king == 1)
    {
        noisebuffer -= 1
        if (abs(length) <= 8 && noisebuffer < 0)
        {
            snd_play_ch1(snd_swing_ch1)
            noisebuffer = 10
        }
    }
}
if (king == 1)
{
    if (type == 1)
    {
        scythetimer += 1
        if (scythetimer == 60)
        {
            snd_play_ch1(snd_spearappear_ch1)
            sbul = instance_create_ch1((centerx + (radius * scythesidex)), (centery + (60 * scythesidex)), obj_collidebullet_ch1)
            sbul.image_xscale = 2
            sbul.image_yscale = 2
            sbul.image_alpha = 0
            sbul.sprite_index = spr_joker_scythebody_ch1
            sbul.mask_index = spr_joker_scythebody_mask_ch1
            sbul.image_blend = c_red
            sbul.active = true
            scr_bullet_inherit_ch1(sbul)
        }
        if (scythetimer >= 60 && scythetimer < 70)
        {
            sbul.image_angle += (10 * scythesidex)
            sbul.image_alpha += 0.1
        }
        if (scythetimer >= 85 && scythetimer < 90)
        {
            if instance_exists(sbul)
                sbul.hspeed -= (3 * scythesidex)
        }
        if (scythetimer >= 100 && scythetimer < 105)
        {
            with (sbul)
                image_alpha -= 0.2
        }
        if (scythetimer >= 105)
        {
            with (sbul)
                instance_destroy()
            if (scythesidex == -1)
                scythesidex = 1
            else
                scythesidex = -1
            scythetimer = 59
        }
    }
}
image_angle += rotspeed
if (grazed == true)
{
    grazetimer += 1
    if (grazetimer >= 30)
    {
        grazed = false
        grazetimer = 0
    }
}
