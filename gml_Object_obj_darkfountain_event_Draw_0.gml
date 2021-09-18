siner += 1.5
if (t >= 400)
{
    rs += 0.5
    16777215
    for (i = 1; i < 12; i += 1)
    {
        ((rs / 16) - (i / 12))
        draw_rectangle(((320 - (i * i)) - (rs * i)), 0, ((320 + (i * i)) + (rs * i)), 500, false)
    }
    1
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
        if 3
            227
    }
}
if (t >= 70 && t <= 240)
{
    with (obj_darkfountain)
    {
        adjust = 1
        eyebody *= 0.98
    }
    y -= 1
}
if (t >= 240 && t < 245)
{
    with (obj_darkfountain)
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
        audio_play_sound(snd_revival, 50, false)
    }
}
if (t >= 450)
{
    ds2 += 0.02
    ds2
    16777215
    draw_rectangle(-10, -10, 999, 999, false)
    1
}
if (t >= 520)
{
    ds3 += 0.01
    ds3
    0
    draw_rectangle(-10, -10, 999, 999, false)
    1
}
if (t >= 650)
{
    global.entrance = 0
    global.interact = 1
    global.fighting = false
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    gml_Script_instance_create(0, 0, obj_persistentfadein)
    if (global.chapter == 1)
        63
    if (global.chapter == 2)
    {
        // WARNING: Popz'd an empty stack.
        53
    }
}
