draw_sprite_ext(sprite_index, image_index, x, (y + 133), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
timer++
timer2++
if (introtimer == 0)
{
    repeat (34)
    {
        siner += (0.28 * amplitude)
        if (difficulty == 0)
            siner += 0.2
        amplitude = gml_Script_scr_approach(amplitude, maxamplitude, 0.03)
    }
    introtimer = 34
}
introtimer++
if (introtimer < 35 || introtimer > 70)
{
    siner += (0.28 * amplitude)
    if (difficulty == 0)
        siner += 0.2
    amplitude = gml_Script_scr_approach(amplitude, maxamplitude, 0.03)
}
place1 = (270 + ((sin((siner / 6)) * 40) * amplitude))
place2 = (270 + ((sin(((siner + 50) / 6)) * 40) * amplitude))
if (introtimer < 35)
    return;
if (timer > 9)
{
    bulletcount++
    if (bulletcount == bulletcountmax)
    {
        timer = 3
        bulletcount = 0
        if (difficulty == 0)
            bulletcountmax = choose(2, 3, 4)
        if (difficulty == 1)
            bulletcountmax = choose(2, 3, 4, 5)
    }
    else
    {
        gml_Script_snd_stop(220)
        gml_Script_snd_volume(220, 1, 0)
        gml_Script_snd_play_pitch(220, (0.5 + random(1)))
        d = gml_Script_instance_create(x, y, obj_bqueen_breath)
        with (d)
            gml_Script_scr_afterimage_grow()
    }
}
if (timer2 > 9 && difficulty == 1)
{
    bulletcount2++
    if (bulletcount2 == bulletcount2max)
    {
        timer2 = 3
        bulletcount2 = 0
        if (difficulty == 0)
            bulletcountmax = choose(1, 2, 3, 4)
        if (difficulty == 1)
            bulletcount2max = choose(2, 3, 4, 5)
    }
    else
    {
        gml_Script_snd_stop(220)
        gml_Script_snd_volume(220, 1, 0)
        gml_Script_snd_play_pitch(220, (0.5 + random(1)))
        d = gml_Script_instance_create(x, y, obj_bqueen_breath)
        with (d)
            gml_Script_scr_afterimage_grow()
    }
}
if (global.turntimer < 3)
    instance_destroy()
