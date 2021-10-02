if (image_alpha < 1)
    image_alpha += 0.25
else
    image_alpha = 1
if (t == 0)
{
    targetx = global.monsterx[target.myself]
    targety = global.monstery[target.myself]
    cx = targetx
    cy = targety
    direction = (point_direction(x, y, cx, cy) - 20)
    speed = 24
    friction = -1.5
    image_angle = direction
    if (red == 1)
    {
        sprite_index = spr_rudebuster_beam_red_ch1
        image_xscale = 2.5
        image_yscale = 2.5
    }
}
if (t >= 1 && explode == 0)
{
    bolt_timer += 1
    if (button1_p_ch1() && bolt_timer >= 4 && chosen_bolt == 0)
        chosen_bolt = bolt_timer
    dir = point_direction(x, y, cx, cy)
    direction += (angle_difference(dir, direction) / 4)
    image_angle = direction
    if (point_distance(x, y, cx, cy) <= 40)
    {
        final_bolt = chosen_bolt
        visible = false
        explode = 1
        t = 1
    }
}
if (explode == 1)
{
    if (t == 1)
    {
        bonus_anim = 0
        if (chosen_bolt > 0)
        {
            if (chosen_bolt == final_bolt)
                damage += 30
            if (chosen_bolt == (final_bolt - 1))
                damage += 28
            if (chosen_bolt == (final_bolt - 2))
                damage += 22
            if (chosen_bolt == (final_bolt - 3))
                damage += 20
            if (chosen_bolt == (final_bolt - 4))
                damage += 13
            if (chosen_bolt == (final_bolt - 5))
                damage += 11
            if (chosen_bolt == (final_bolt - 6))
                damage += 10
            if (abs((chosen_bolt - final_bolt)) <= 2)
            {
                bonus_anim = 1
                snd_play_ch1(snd_scytheburst_ch1)
            }
        }
        if (red == 1)
            damage += 90
        global.hittarget[star] = 0
        scr_damage_enemy_ch1(star, damage)
        if (global.monstertype[0] != 20)
        {
            with (target)
                __of = scr_oflash_ch1()
            if (red == 1)
            {
                with (target)
                    __of.flashcolor = c_red
            }
        }
        snd_play_ch1(snd_rudebuster_hit_ch1)
        for (i = 0; i < 4; i += 1)
        {
            burst[i] = scr_afterimage_ch1()
            burst[i].image_speed = 0.5
            burst[i].x = cx
            burst[i].y = cy
            burst[i].image_angle = (45 + (i * 90))
            burst[i].direction = burst[i].image_angle
            burst[i].speed = 25
            burst[i].depth = (depth - 10)
        }
        for (i = 4; i < 8; i += 1)
        {
            burst[i] = scr_afterimage_ch1()
            burst[i].image_speed = 0.5
            burst[i].x = cx
            burst[i].y = cy
            burst[i].image_angle = (45 + (i * 90))
            burst[i].direction = burst[i].image_angle
            burst[i].speed = 25
            burst[i].depth = (depth - 10)
        }
    }
    if (t >= 2)
    {
        for (i = 0; i < 4; i += 1)
        {
            with (burst[i])
            {
                speed *= 0.75
                image_xscale *= 0.8
            }
        }
        for (i = 4; i < 8; i += 1)
        {
            with (burst[i])
            {
                speed *= 0.8
                image_xscale *= 0.8
            }
        }
    }
    if (t >= 18)
        instance_destroy()
}
if (explode == 0)
{
    aft[maxaft] = scr_afterimage_ch1()
    aft[maxaft].image_yscale = 1.8
    aft[maxaft].image_angle = image_angle
    aft[maxaft].image_index = 4
    aft[maxaft].image_speed = 0.5
    aft[maxaft].image_alpha = (image_alpha - 0.2)
    maxaft += 1
}
for (i = 0; i < maxaft; i += 1)
{
    with (aft[i])
    {
        image_yscale -= 0.1
        if (image_yscale <= 0.1)
            instance_destroy()
    }
    if (explode == 1)
    {
        with (aft[i])
        {
            image_alpha -= 0.07
            image_yscale *= 0.9
            if (image_yscale <= 0.1)
                instance_destroy()
        }
    }
}
a += 1
t += 1
