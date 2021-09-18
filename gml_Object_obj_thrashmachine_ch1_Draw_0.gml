if (part[2] >= 0)
    wsiner += 0.8
if (animate == 0)
{
    siner = 0
    wsiner = 0
}
walkc = (wsiner / 3)
for (loop = false; loop < 2; loop += 1)
{
    if (loop == false)
    {
        0
        color[0] = basecolor
        color[1] = basecolor
        color[2] = basecolor
    }
    if (loop == true)
    {
        1
        color[0] = dcolor[0]
        color[1] = dcolor[1]
        color[2] = dcolor[2]
    }
    walka = (-(wsiner / 6))
    walkb = (-(wsiner / 6))
    if (bad == 0)
    {
        if (part[2] == 0)
            draw_sprite_ext(spr_thrashfoot_ch1, 0, ((xx - (11 * s)) + ((s * walka) * 2)), ((yy + (19 * s)) + ((s * walkb) * 1)), s, s, 0, color[2], a)
        if (part[2] == 1)
            draw_sprite_ext(spr_thrashfoot_ch1, 1, ((xx - (6 * s)) + ((s * walka) * 2)), ((yy + (17 * s)) + ((s * walkb) * 1)), s, s, 0, color[2], a)
        if (part[2] == 3)
            draw_sprite_ext(spr_thrashfoot_ch1, 4, ((xx - (8 * s)) + ((s * walka) * 2)), ((yy + (21 * s)) + ((s * walkb) * 1)), s, s, 0, color[2], a)
    }
    else
    {
        if (part[2] == 0)
            draw_sprite_ext(gml_Script_scr_84_get_sprite_ch1("spr_thrashfoot_b"), 0, ((xx - (11 * s)) + ((s * walka) * 2)), ((yy + (19 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a)
        if (part[2] == 1)
            draw_sprite_ext(gml_Script_scr_84_get_sprite_ch1("spr_thrashfoot_b"), 1, ((xx - (6 * s)) + ((s * walka) * 2)), ((yy + (17 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a)
        if (part[2] == 3)
            draw_sprite_ext(gml_Script_scr_84_get_sprite_ch1("spr_thrashfoot_b"), 4, ((xx - (8 * s)) + ((s * walka) * 2)), ((yy + (21 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a)
    }
}
if (part[0] >= 0)
{
    for (loop = false; loop < 2; loop += 1)
    {
        if (loop == false)
        {
            0
            color[0] = basecolor
            color[1] = basecolor
            color[2] = basecolor
        }
        if (loop == true)
        {
            1
            color[0] = dcolor[0]
            color[1] = dcolor[1]
            color[2] = dcolor[2]
        }
        if (bad == 0)
            draw_sprite_ext(spr_thrashbody_ch1, part[0], xx, (yy + (s * walkc)), s, s, 0, color[0], a)
        if (bad == 1)
            draw_sprite_ext(gml_Script_scr_84_get_sprite_ch1("spr_thrashbody_b"), part[0], xx, (yy + (s * walkc)), (s / 2), (s / 2), 0, color[0], a)
    }
}
for (loop = false; loop < 2; loop += 1)
{
    if (loop == false)
    {
        0
        color[0] = basecolor
        color[1] = basecolor
        color[2] = basecolor
    }
    if (loop == true)
    {
        1
        color[0] = dcolor[0]
        color[1] = dcolor[1]
        color[2] = dcolor[2]
    }
    if (bad == 0)
    {
        if (part[1] == 0)
            draw_sprite_ext(spr_thrashweapon_laser_ch1, 0, (xx - (8 * s)), ((yy + (6 * s)) + ((s * walkc) * 2)), s, s, 0, color[1], a)
        if (part[1] == 1)
            draw_sprite_ext(spr_thrashweapon_sword_ch1, 0, (xx - (10 * s)), ((yy + (6 * s)) + ((s * walkc) * 2)), s, s, 0, color[1], a)
        if (part[1] == 2)
            draw_sprite_ext(spr_thrashweapon_flame_ch1, 0, (xx - (s * 4)), ((yy + (5 * s)) + ((s * walkc) * 2)), s, s, 0, color[1], a)
        if (part[1] == 3)
            draw_sprite_ext(spr_thrashweapon_duck_ch1, 0, (xx - (8 * s)), ((yy + (3 * s)) + ((s * walkc) * 2)), s, s, 0, color[1], a)
    }
    else
    {
        if (part[1] == 0)
            draw_sprite_ext(spr_thrashweapon_laser_b_ch1, 0, (xx - (8 * s)), ((yy + (6 * s)) + ((s * walkc) * 2)), (s / 2), (s / 2), 0, color[1], a)
        if (part[1] == 1)
            draw_sprite_ext(spr_thrashweapon_sword_b_ch1, 0, (xx - (10 * s)), ((yy + (6 * s)) + ((s * walkc) * 2)), (s / 2), (s / 2), 0, color[1], a)
        if (part[1] == 2)
            draw_sprite_ext(spr_thrashweapon_flame_b_ch1, 0, (xx - (s * 4)), ((yy + (5 * s)) + ((s * walkc) * 2)), (s / 2), (s / 2), 0, color[1], a)
        if (part[1] == 3)
            draw_sprite_ext(spr_thrashweapon_duck_ch1, 0, (xx - (8 * s)), ((yy + (3 * s)) + ((s * walkc) * 2)), s, s, 0, color[1], a)
    }
}
for (loop = false; loop < 2; loop += 1)
{
    if (loop == false)
    {
        0
        color[0] = basecolor
        color[1] = basecolor
        color[2] = basecolor
    }
    if (loop == true)
    {
        1
        color[0] = dcolor[0]
        color[1] = dcolor[1]
        color[2] = dcolor[2]
    }
    walka = (wsiner / 6)
    walkb = (wsiner / 6)
    if (bad == 0)
    {
        if (part[2] == 0)
            draw_sprite_ext(spr_thrashfoot_ch1, 0, ((xx - (5 * s)) + ((s * walka) * 2)), ((yy + (20 * s)) + ((s * walkb) * 1)), s, s, 0, color[2], a)
        if (part[2] == 1)
            draw_sprite_ext(spr_thrashfoot_ch1, 1, (xx + ((s * walka) * 2)), ((yy + (18 * s)) + ((s * walkb) * 1)), s, s, 0, color[2], a)
        if (part[2] == 2)
            draw_sprite_ext(spr_thrashfoot_ch1, 2, (xx - (15 * s)), (yy + (18 * s)), s, s, 0, color[2], a)
        if (part[2] == 3)
        {
            walka = (wsiner / 6)
            walkb = (wsiner / 6)
            draw_sprite_ext(spr_thrashfoot_ch1, 3, (xx + ((s * walka) * 2)), ((yy + (22 * s)) + ((s * walkb) * 1)), s, s, 0, color[2], a)
        }
    }
    else
    {
        if (part[2] == 0)
            draw_sprite_ext(gml_Script_scr_84_get_sprite_ch1("spr_thrashfoot_b"), 0, ((xx - (5 * s)) + ((s * walka) * 2)), ((yy + (20 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a)
        if (part[2] == 1)
            draw_sprite_ext(gml_Script_scr_84_get_sprite_ch1("spr_thrashfoot_b"), 1, (xx + ((s * walka) * 2)), ((yy + (18 * s)) + ((s * walkb) * 1)), (s / 2), (s / 2), 0, color[2], a)
        if (part[2] == 2)
            draw_sprite_ext(gml_Script_scr_84_get_sprite_ch1("spr_thrashfoot_b"), 2, (xx - (15 * s)), (yy + (18 * s)), (s / 2), (s / 2), 0, color[2], a)
        if (part[2] == 3)
        {
            walka = (wsiner / 6)
            walkb = (wsiner / 6)
            draw_sprite_ext(spr_thrashfoot_ch1, 3, (xx + ((s * walka) * 2)), ((yy + (22 * s)) + ((s * walkb) * 1)), s, s, 0, color[2], a)
        }
    }
}
0
if (dbselect == 1)
{
    if 39
    {
        part[0] += 1
        if (part[0] >= 4)
            part[0] = 0
    }
    if 38
    {
        part[1] += 1
        if (part[1] >= 4)
            part[1] = 0
    }
    if 16
    {
        part[2] += 1
        if (part[2] >= 4)
            part[2] = 0
    }
    if 32
    {
        dcolor[0] = make_color_hsv((wsiner * 2), 255, 255)
        dcolor[1] = make_color_hsv(wsiner, 255, 255)
        dcolor[2] = make_color_hsv((wsiner / 2), 255, 255)
    }
    if 13
    {
        s += 1
        if (s >= 5)
            s = 1
    }
}
