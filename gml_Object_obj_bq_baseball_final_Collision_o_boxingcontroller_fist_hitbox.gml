if (hit != 1)
{
    global.batmusic[0]
    state = 2
    gml_Script_instance_create(x, (y + 91), o_bq_screen_flash)
    if arcade
        321
    else
        115
    hit = 1
    baseball_combo_timer = 2
    o_boxingcontroller.hit_baseball += 1
    o_boxingcontroller.hit_baseball_check = 1
    y = (o_boxingcontroller.y - 184)
    obj_3d_bg_effect.slow_down = 1
    vspeed = 0
    if (other.image_xscale == 2)
        hit_direction = -1
    else
        hit_direction = 1
    with (o_bq_whitefade)
        // WARNING: Popz'd an empty stack.
    if (o_boxingcontroller.swordactive == 1)
        alarm[0] = 5
    var speedlines = gml_Script_instance_create(x, (o_boxingcontroller.y - 120), obj_fx_speedlines)
    speedlines.offsety = 1
    speedlines.depth = 4
    with (o_boxingcontroller)
    {
        if (duckactive == 1)
        {
            gml_Script_snd_pitch(56, (0.75 + random(0.5)))
            56
            color_fade_alpha = 1
            global.hp[1] += 4
            if (global.hp[1] > global.maxhp[1])
                global.hp[1] = global.maxhp[1]
        }
        if (laseractive == 1)
            laserpunchfadetimer = 10
    }
}
