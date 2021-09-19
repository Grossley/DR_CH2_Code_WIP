if (y < (gml_Script_cameray() + 290))
    depth = (obj_heart.depth - 2)
if (y > (gml_Script_cameray() + 290))
    depth = (obj_heart.depth + 100)
if isqueen
{
    if (queencon == 0)
    {
        sprite_index = spr_q_socialface_queen
        x = (gml_Script_camerax() + 640)
        hspeed = -4
        queencon = 1
    }
    if (queencon == 1)
    {
        if (x <= xstart)
        {
            with (obj_wordbullet)
            {
                timer = -900
                image_alpha = 0.5
                active = false
                speed = 0
                gray = 1
            }
            with (obj_socialmedia_avatar)
            {
                hspeed = 0
                vspeed = 0
                image_speed = 0
                angrycon = 1
            }
            vspeed = 0
            hspeed = 0
            gml_Script_snd_play(292)
            gml_Script_snd_stop(331)
            redword = gml_Script_instance_create((x - 40), (y - 10), obj_wordbullet)
            redword.queenword = 1
            redword.wordchoice = gml_Script_stringsetloc("DRAMA", "obj_socialmedia_avatar_slash_Step_0_gml_36_0")
            redword.destroyonhit = 0
            redword.hspeed = -4
            queencon = 2
        }
    }
    if (queencon == 2 && angrycon == 2)
    {
        sprite_index = spr_q_socialface_queen_laugh
        image_speed = 0.25
        gml_Script_snd_play(331)
        gml_Script_snd_loop(331)
        gml_Script_snd_pitch(331, 1)
    }
    angrycon = -1
}
else if (chosen_face == 8)
    return;
if (angrycon == 0)
{
    timer++
    if (timer >= (19 - myhspeed))
    {
        times++
        if (times >= offset)
            times = 0
        else
        {
            side = sign((obj_growtangle.x - x))
            word = gml_Script_instance_create((x - (20 * side)), (y - 10), obj_wordbullet)
            word.vspeed = vspeed
            if instance_exists(obj_growtangle)
                word.hspeed = (myhspeed * side)
        }
        timer = 0
    }
    if (y > (gml_Script_cameray() + 310))
    {
        image_alpha -= 0.1
        if (image_alpha <= 0)
            instance_destroy()
    }
}
if (angrycon == 2)
{
    sprite_index = spr_queen_pfps_mad
    image_speed = 0.25
    image_blend = c_red
    timer = random(30)
    angrycon = 3
}
if (angrycon == 3)
{
    timer++
    if (timer >= 22)
    {
        word = gml_Script_instance_create((x - (20 * side)), (y - 10), obj_wordbullet)
        word.depth = (depth - 1)
        var _temp_local_var_2 = word
        angry = 1
        direction = (point_direction(x, y, (obj_heart.x + 10), (obj_heart.y + 10)) + random_range(30, -30))
        image_angle = direction
        speed = 7
    }
}
