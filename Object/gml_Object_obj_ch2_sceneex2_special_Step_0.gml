if (init == 0)
{
    if gml_Script_scr_debug()
        global.interact = 1
    init = 1
    input_timer = 0
}
if (con == 1)
{
    gml_Script_snd_play(snd_spamton_laugh)
    gml_Script_snd_play_pitch(snd_spamton_laugh, 0.8)
    for (i = 0; i < 3; i++)
    {
        enemyrow[0][i] = gml_Script_instance_create(((gml_Script_camerax() + 760) + (60 * i)), (gml_Script_cameray() + 100), obj_sneo_lilguy)
        enemyrow[0][i].mei = i
    }
    for (i = 0; i < 9; i++)
    {
        enemyrow[1][i] = gml_Script_instance_create(((gml_Script_camerax() + 840) + (40 * i)), (gml_Script_cameray() + 180), obj_sneo_lilguy)
        enemyrow[1][i].mei = i
    }
    for (i = 0; i < 3; i++)
    {
        enemyrow[2][i] = gml_Script_instance_create(((gml_Script_camerax() + 760) + (60 * i)), (gml_Script_cameray() + 280), obj_sneo_lilguy)
        enemyrow[2][i].mei = i
    }
    with (obj_sneo_lilguy)
    {
        destroyable = 1
        cutscene = true
        image_speed = 2
        hspeed = -20
        _cutsceneremy = y
    }
    with (enemyrow[1][0])
    {
        image_xscale *= 2
        image_yscale *= 2
        x -= 40
        bighead = 1
    }
    con = 2
}
if (con == 2)
{
    if (enemyrow[0][0].x < (gml_Script_camerax() + 570))
    {
        with (obj_sneo_lilguy)
        {
            if (hspeed < -2)
                hspeed += 1
            y = (_cutsceneremy + random_range(-2, 2))
        }
    }
    if (enemyrow[0][0].x <= (gml_Script_camerax() + 240))
    {
        with (obj_sneo_lilguy)
        {
            speed = 0
            friction = 0
            image_speed = 0
            image_index = 0
            y = _cutsceneremy
        }
        gml_Script_snd_play(snd_noise)
        blackall = gml_Script_scr_dark_marker(gml_Script_camerax(), gml_Script_cameray(), spr_whitepx_10)
        blackall.image_xscale = 70
        blackall.image_yscale = 70
        blackall.image_blend = c_black
        blackall.depth = 100000
        with (obj_marker)
            visible = false
        with (obj_actor)
            image_alpha = 0.5
        with (obj_ch2_sceneex2)
            drawtrack = 0
        con = 3
        alarm[4] = 1
    }
}
if (con == 4)
{
    var heartx = (gml_Script_camerax() + 88)
    var hearty = (gml_Script_cameray() + 95)
    heart = gml_Script_instance_create(heartx, hearty, obj_heart)
    heart.sprite_index = spr_dodgeheart_centered_white
    heart.image_blend = c_red
    heart.depth = -10
    with (heart)
        gml_Script_scr_oflash()
    heart.canmove = 0
    con = 5
    alarm[4] = 60
}
if (con == 6)
{
    tracknoise = gml_Script_snd_play(snd_spearrise)
    gml_Script_snd_pitch(tracknoise, 0.9)
    gml_Script_scr_lerpvar_instance(heart, "image_angle", 0, 90, 10, -1, "out")
    con = 7
    alarm[4] = 20
}
if (con == 8)
{
    gml_Script_snd_stop(tracknoise)
    con = 9
    alarm[4] = 4
}
if (con == 10)
{
    heart.image_blend = c_yellow
    with (heart)
    {
        for (i = 0; i < 3; i++)
        {
            afterimage = gml_Script_instance_create(x, y, obj_afterimage_grow)
            afterimage.sprite_index = sprite_index
            afterimage.image_blend = image_blend
            afterimage.image_angle = image_angle
            afterimage.xrate = (0.2 * i)
            afterimage.yrate = (0.2 * i)
            afterimage.image_alpha = (1 * i)
            afterimage.depth = (depth + 1)
        }
        sprite_index = spr_yellowheart
        image_blend = c_white
        image_angle = 0
        x -= 10
        y -= 10
        gml_Script_scr_oflash()
    }
    heart.canmove = 0
    con = 11
    alarm[4] = 60
    gml_Script_snd_play_pitch(snd_great_shine, 0.8)
    gml_Script_snd_play_pitch(snd_great_shine, 1)
    gml_Script_snd_play_pitch(snd_closet_impact, 1.5)
    gml_Script_instance_create(0, 0, obj_shake)
}
if (con == 12)
{
    gml_Script_snd_play_pitch(snd_swing, 0.5)
    var goenemy = enemyrow[0][0]
    with (heart)
        gml_Script_scr_move_to_point_over_time((goenemy.x - 80), (goenemy.y - 10), 10)
    con = 13
    alarm[4] = 10
}
if (con == 13)
{
    with (heart)
        gml_Script_scr_afterimage()
}
if (con == 14)
{
    gml_Script_snd_play(snd_impact)
    with (heart)
        color = 0x000001
    con = 15
}
if (con == 15)
{
    if (!gml_Script_i_ex(enemyrow[0][2]))
    {
        con = 16
        with (heart)
            color = c_black
        gml_Script_snd_play_pitch(snd_swing, 0.5)
        goenemy = enemyrow[2][0]
        with (heart)
            gml_Script_scr_move_to_point_over_time((goenemy.x - 80), (goenemy.y - 10), 10)
        alarm[4] = 10
    }
}
if (con == 16)
{
    with (heart)
        gml_Script_scr_afterimage()
}
if (con == 17)
{
    gml_Script_snd_play(snd_impact)
    with (heart)
        color = 0x000001
    con = 18
}
if (con == 18)
{
    if (!gml_Script_i_ex(enemyrow[2][2]))
    {
        con = 19
        with (heart)
            color = c_black
        gml_Script_snd_play_pitch(snd_swing, 0.5)
        goenemy = enemyrow[1][0]
        with (heart)
            gml_Script_scr_move_to_point_over_time((goenemy.x - 110), (goenemy.y - 10), 10)
        alarm[4] = 10
    }
}
if (con == 19)
{
    with (heart)
        gml_Script_scr_afterimage()
}
if (con == 20)
{
    gml_Script_snd_play(snd_impact)
    with (heart)
        color = 0x000001
    con = 22
}
if (con == 22)
{
    if (!gml_Script_i_ex(obj_sneo_lilguy))
    {
        alarm[4] = 15
        con = 29
        with (heart)
            color = c_black
    }
}
if (con == 30)
{
    with (obj_spamton_neo_enemy)
    {
        x = (gml_Script_camerax() + 400)
        y = (gml_Script_cameray() + 80)
        partmode = 1
        facing = 1
        headforceframe = 1
        gravity = 0
        speed = 0
    }
    gml_Script_snd_play(snd_noise)
    with (heart)
        instance_destroy()
    with (obj_yheart_shot)
        instance_destroy()
    with (blackall)
        instance_destroy()
    with (obj_ch2_sceneex2)
        drawtrack = 1
    con = 40
    instance_destroy()
}
