if (racecon == 0)
{
    orx = x
    ory = y
    ang = 0
    vdir = choose(1, -1)
    racecon = 1
    rtimer = 0
    with (obj_susieenemy_ch1)
        visible = false
    s = instance_create_ch1(susiex, susiey, obj_regularbullet_permanent_ch1)
    scr_bullet_inherit_ch1(s)
    s.wall_destroy = 0
    s.sprite_index = spr_susiel_dark_ch1
    s.image_xscale = 2
    s.image_yscale = 2
    s.active = true
    s.depth = (depth - 1)
    s.image_speed = 0
    s.image_index = 1
    s.lx = x
    s.ly = (y - 108)
    snd_play_ch1(snd_jump_ch1)
    with (s)
    {
        hspeed = -2
        vspeed -= 7
        gravity = 1
    }
}
if (racecon == 1)
{
    siner = 0
    rtimer += 1
    if (rtimer == 13)
    {
        snd_stop_ch1(snd_jump_ch1)
        snd_play_ch1(snd_splat_ch1)
    }
    if (rtimer >= 13)
    {
        image_xscale += 0.1
        image_yscale -= 0.15
    }
    if (rtimer == 16)
    {
        with (s)
        {
            speed = 0
            gravity = 0
            image_index = 0
        }
        sfitx = (s.x - x)
        sfity = (s.y - y)
        s_tracking = 1
        ax_timer = 0
        s_timer = 0
        racecon = 2
        rtimer = 0
    }
}
if (s_attack == 1)
{
    ax_timer += 1
    s_timer += 1
    if (s_timer == 1)
    {
        axe = instance_create_ch1((s.x - 40), (s.y - 15), obj_axebullet_ch1)
        scr_bullet_inherit_ch1(axe)
        axe.depth = (depth + 2)
        with (axe)
        {
            hspeed = -16
            if (obj_heart_ch1.y >= y)
            {
                gravity_direction = (-15 + random(10))
                vspeed = 2
            }
            else
            {
                gravity_direction = (5 + random(10))
                vspeed = -2
            }
            gravity = 0.5
        }
        axe.hspeed += (0.3 * ax_timer)
        snd_play_ch1(snd_laz_c_ch1)
        s.sprite_index = spr_susie_enemy_attack_ch1
        s.active = false
        s.image_index = 0
        s.image_speed = 0.5
    }
    if (s_timer == 4)
        s.active = false
    if (s_timer == 8)
        s.image_speed = 0
    if (s_timer == 8 && ax_timer <= 60)
        s_timer = 0
}
if (racecon == 2)
{
    rtimer += 1
    if (rtimer >= 1)
    {
        if (y <= (ory - 120) || y >= (ory + 120))
        {
            if (y <= (ory - 120) && vspeed < 0)
                vspeed = (-vspeed)
            if (y >= (ory + 120) && vspeed > 0)
                vspeed = (-vspeed)
        }
    }
    if (rtimer == 5 || rtimer == 10)
    {
        vspeed = 0
        snd_play_ch1(snd_lancerhonk_ch1)
        honkimg = instance_create_ch1((x - 60), (y - 40), obj_afterimage_grow_ch1)
        with (honkimg)
            sprite_index = spr_lancernoise_ch1
    }
    if (rtimer == 30)
    {
        active = true
        s_attack = 1
        racecon = 3
        rtimer = 0
        ang = 0
        snd_play_ch1(snd_drive_ch1)
        hspeed = -10
        vspeed = -11
        gravity = 0.5
    }
}
if (racecon == 3)
{
    rtimer += 1
    if (x <= (__view_get((0 << 0), 0) - 40))
    {
        speed = 0
        gravity = 0
        friction = 0
        s_attack = 0
        s_tracking = 0
        image_xscale = 2
        image_yscale = 2
        x = (__view_get((0 << 0), 0) + 740)
        y = ory
        s.x = (susiex + 200)
        s.hspeed = -8
        s.y = susiey
        s.sprite_index = spr_susie_enemy_ch1
        hspeed = -6
        racecon = 4
    }
}
if (racecon == 4)
{
    donecount = 0
    if (s.x <= susiex)
    {
        donecount += 1
        s.hspeed = 0
        s.x = susiex
    }
    if (x <= (orx + 5))
    {
        donecount += 1
        hspeed = 0
        x = orx
    }
    if (donecount >= 2)
    {
        global.turntimer = 5
        with (obj_susieenemy_ch1)
            visible = true
        with (obj_lancerboss3_ch1)
            visible = true
        racecon = -1
    }
}
if (s_tracking == 1)
{
    s.x = (x + sfitx)
    s.y = (y + sfity)
}
