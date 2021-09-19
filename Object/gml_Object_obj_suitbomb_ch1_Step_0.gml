var _temp_local_var_1;
if (con == 0)
{
    if (type == 0)
        sprite_index = spr_bomb_spade_ch1
    if (type == 1)
        sprite_index = spr_bomb_diamond_ch1
    if (type == 2)
        sprite_index = spr_bomb_heart_ch1
    if (type == 3)
        sprite_index = spr_bomb_club_ch1
    visible = true
    con = 1
}
if (con == 1)
{
    timer += 1
    if (timer >= 10)
    {
        with (obj_joker_ch1)
            beepnoise = 1
        image_speed = (timer / maxtimer)
    }
    if (timer >= maxtimer)
    {
        con = 2
        timer = 0
        speed = 0
    }
}
if (con == 2)
{
    with (obj_joker_ch1)
        burstnoise = true
    if (type == 0)
    {
        dir = random(360)
        maxe = 12
        for (i = 0; i < 12; i += 1)
        {
            spade[i] = gml_Script_instance_create_ch1(x, y, 1520)
            gml_Script_scr_bullet_inherit_ch1(spade[i])
            spade[i].active = true
            spade[i].direction = (dir + (i * (360 / maxe)))
            spade[i].speed = 8
            spade[i].image_angle = spade[i].direction
            spade[i].sprite_index = spr_spadebullet_ch1
        }
        con = 3
    }
    if (type == 1)
    {
        i = 0
        while (i < 3)
        {
            diamond[i] = gml_Script_instance_create_ch1(x, y, 1520)
            diamond[i].damage = 100
            gml_Script_scr_bullet_inherit_ch1(diamond[i])
            var _temp_local_var_1 = diamond[i]
            move_towards_point((obj_heart_ch1.x + 8), (obj_heart_ch1.y + 8), 11)
        }
        con = 3
    }
    if (type == 2)
    {
        h = gml_Script_instance_create_ch1(x, y, 1586)
        gml_Script_scr_bullet_inherit_ch1(h)
        con = 3
    }
    if (type == 3)
    {
        dir = point_direction(x, y, (obj_heart_ch1.x + 8), (obj_heart_ch1.y + 8))
        for (i = 0; i < 3; i += 1)
        {
            club[i] = gml_Script_instance_create_ch1(x, y, 1520)
            club[i].sprite_index = spr_clubsbullet_ch1
            club[i].damage = 100
            gml_Script_scr_bullet_inherit_ch1(club[i])
            club[i].active = true
            club[i].direction = ((dir - 20) + (i * 20))
            club[i].image_angle = club[i].direction
            club[i].speed = 8
        }
        con = 3
    }
}
if (explodedraw >= 40)
    instance_destroy()