floatsiner += floatsinerspeed
fly = (((floatsiner / 8) * 3) * ((floatsinerspeed * 2) - 1))
flyx = 0
if (dancelv >= 1)
    flyx = (((floatsiner / 8) * 3) * ((floatsinerspeed * 2) - 1))
if (dancelv == 4)
{
    flyx = 0
    fly = 0
}
offx = (x + 20)
offy = (y + 18)
if (condition == 0)
{
    if (fade == 0)
        fade_a = 1
    if (fade == 1)
        fade_a = (floatsiner / 13)
    if (dancelv == 0)
        draw_sprite_ext(spr_joker_main_ch1, 0, (offx + flyx), (offy + fly), 2, 2, 0, c_white, fade_a)
    if (dancelv == 1)
        draw_sprite_ext(spr_joker_dance_ch1, (floatsiner / 3), (offx + flyx), (offy + fly), 2, 2, 0, c_white, 1)
    if (dancelv == 2)
        draw_sprite_ext(spr_joker_tired_ch1, 0, (offx + flyx), (offy + fly), 2, 2, 0, c_white, 1)
    if (dancelv == 3)
    {
        dancesiner += 1
        for (i = 0; i < 7; i += 1)
        {
            if (i >= 1)
            {
                shadowx[i] += ((sin((i + (floatsiner / 5))) * 8) * sfactor[i])
                shadowy[i] += ((cos((i + (floatsiner / 5))) * 4) * sfactor[i])
            }
            dalpha[i] = (i + (dancesiner / 9))
            if (dalpha[i] < 0 && i >= 1)
            {
                shadowx[i] = (60 - random(120))
                shadowy[i] = (60 - random(120))
                sfactor[i] = (1.5 - random(3))
            }
            draw_sprite_ext(spr_joker_dance_ch1, ((dancesiner / 2) + (i / 4)), (x + shadowx[i]), (y + shadowy[i]), 2, 2, 0, image_blend, dalpha[i])
        }
    }
    if (dancelv == 4)
        draw_sprite_ext(spr_joker_teleport_ch1, 1, (offx + flyx), (offy + fly), 2, 2, 0, c_white, 1)
}
if (condition == 1)
{
    if (maxdist >= 150)
        maxdist = 150
    sinadd = (0.8 + (maxdist / 50))
    if (sinadd < 0.8)
        sinadd = 0.8
    if (sinadd > 2)
        sinadd = 2
    siner += sinadd
    sinx = ((siner / 4) * maxdist)
    siny = ((-(siner / 4)) * (maxdist * 0.7))
    ji = 0
    if (sinx > (maxdist / 2) && maxdist > 15)
        ji = 1
    if (sinx < ((-maxdist) / 2) && maxdist > 15)
        ji = 2
    if (maxdist < 4)
        ji = 3
    for (i = 0; i < (maxchain - 1); i += 1)
        draw_sprite_ext(spr_jokerchain_ch1, ji, ((offx + (sinx * (i / maxchain))) - 2), (((offy + 6) + ((siny - 32) * (i / maxchain))) + fly), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_jokerbody_ch1, 0, (offx - 42), ((offy + fly) - 2), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_jokerhead_ch1, ji, ((offx + sinx) - 2), (((offy + siny) + fly) - 14), 2, 2, 0, c_white, 1)
    maxdist -= 1
    if (maxdist <= 0)
    {
        maxdist = 0
        condition = 0
    }
}
if (condition == 2)
{
    with (obj_heroparent_ch1)
        image_alpha -= 0.25
    if (sndcon == 0)
    {
        363
        sndcon = 1
    }
    draw_sprite_ext(spr_joker_main_ch1, 0, offx, (offy + fly), size, 2, 0, c_white, 1)
    size -= 0.5
    if (size <= 0)
    {
        with (obj_heroparent_ch1)
            image_alpha = 0
        sndcon = 0
        size = 2
        condition = 4
    }
}
if (condition == 3)
{
    with (obj_heroparent_ch1)
        image_alpha += 0.25
    if (sndcon == 0)
    {
        363
        sndcon = 1
    }
    draw_sprite_ext(spr_joker_main_ch1, 0, offx, (offy + fly), size, 2, 0, c_white, 1)
    size += 0.5
    if (size >= 2)
    {
        with (obj_heroparent_ch1)
            image_alpha = 1
        size = 2
        condition = 0
        sndcon = 0
    }
}
if (condition == 4)
{
    if (global.turntimer <= 10)
    {
        timer = 0
        condition = 3
        size = 0
    }
}
if (condition == 5)
{
    timer += 1
    if (timer == 1)
    {
        spintimer = 0
        s_xscale = 2
        s_yscale = 2
        s_sprite = spr_joker_teleport_ch1
        s_y = 0
        s_vspeed = 0
        s_alpha = 1
        "snd_joker_metamorphosis"
    }
    if (timer >= 1 && timer <= 3)
    {
        s_xscale *= 1.3
        s_yscale *= 0.7
    }
    if (timer >= 5 && timer <= 15)
    {
        s_xscale *= 0.7
        s_yscale *= 1.3
    }
    if (timer >= 15 && timer <= 30)
    {
        spintimer += 1
        s_xscale = ((spintimer / 3) * 2)
        s_sprite = spr_joker_scythebody_ch1
        s_yscale *= 0.7
        if (s_xscale >= 2)
            s_xscale = 2
        if (s_yscale <= 2)
            s_yscale = 2
    }
    if (timer >= 30 && timer < 41)
    {
        spintimer += 1
        s_xscale = ((spintimer / 3) * 2)
        s_vspeed -= 3
        s_y += s_vspeed
        s_alpha -= 0.1
    }
    if (timer >= 41)
    {
        if 1513
        {
            if (global.turntimer > 10)
            {
                timer = 0
                condition = 4
            }
        }
    }
    draw_sprite_ext(s_sprite, 0, offx, (offy + s_y), s_xscale, s_yscale, 0, image_blend, s_alpha)
}
if (condition == 0 || condition == 1)
{
    if (dancelv <= 2)
    {
        0
        draw_rectangle(((((x + (sprite_width / 2)) - 20) - fly) + flyx), ((y + 80) - (fly / 2)), ((((x + (sprite_width / 2)) + 30) + fly) + flyx), ((y + 85) + (fly / 2)), false)
    }
}
if (debug == 1)
{
    if 40
    {
        condition += 1
        siner = 0
        if (condition == 1)
            maxdist = 40
        if (condition == 2)
            size = 2
        if (condition == 3)
            size = 0
    }
    if 38
    {
        condition -= 1
        siner = 0
        if (condition == 1)
            maxdist = 50
        if (condition == 2)
            size = 2
        if (condition == 3)
            size = 0
    }
    if (condition < 0)
        condition = 0
    if (condition > 4)
        condition = 0
    if 32
        maxdist += 20
    255
    draw_rectangle(((x + (sprite_width / 2)) - 1), ((y + (sprite_height / 2)) - 1), ((x + (sprite_width / 2)) + 1), ((y + (sprite_height / 2)) + 1), false)
}
