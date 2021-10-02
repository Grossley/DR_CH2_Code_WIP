siner += 1.5
if (t >= 400)
{
    rs += 0.5
    draw_set_color(c_white)
    for (i = 1; i < 12; i += 1)
    {
        draw_set_alpha(((rs / 16) - (i / 12)))
        draw_rectangle(((320 - (i * i)) - (rs * i)), 0, ((320 + (i * i)) + (rs * i)), 500, false)
    }
    draw_set_alpha(1)
}
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, (siner / 8))
draw_sprite_ext(sprite_index, image_index, x, y, (siner / 4), (siner / 4), 0, c_white, (1.6 - (siner / 16)))
draw_sprite_ext(sprite_index, image_index, x, y, (siner / 8), (siner / 8), 0, c_white, (1.6 - (siner / 24)))
t += 1
if (t >= 20)
{
    if (soundcon == 0)
    {
        soundcon = 1
        audio_play_sound(snd_usefountain_ch1, 50, false)
    }
}
if (t >= 70 && t <= 240)
{
    with (obj_darkfountain_ch1)
    {
        adjust = 1
        eyebody *= 0.98
    }
    y -= 1
}
if (t >= 240 && t < 245)
{
    with (obj_darkfountain_ch1)
        adjust = 2
    t = 300
}
if (t >= 390 && t < 395)
{
    t = 400
    siner = 3
    if (soundcon == 1)
    {
        soundcon = 2
        audio_play_sound(snd_revival_ch1, 50, false)
    }
}
if (t >= 450)
{
    ds2 += 0.02
    draw_set_alpha(ds2)
    draw_set_color(c_white)
    draw_rectangle(-10, -10, 999, 999, false)
    draw_set_alpha(1)
}
if (t >= 520)
{
    ds3 += 0.01
    draw_set_alpha(ds3)
    draw_set_color(c_black)
    draw_rectangle(-10, -10, 999, 999, false)
    draw_set_alpha(1)
}
if (t >= 650)
{
    global.entrance = 0
    global.interact = 1
    scr_become_light_ch1()
    snd_free_all_ch1()
    instance_create_ch1(0, 0, obj_persistentfadein_ch1)
    room_goto(room_school_unusedroom_ch1)
}
