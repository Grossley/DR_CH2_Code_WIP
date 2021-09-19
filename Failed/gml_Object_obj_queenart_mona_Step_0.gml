var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12, _temp_local_var_13, _temp_local_var_14, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_21;
if (decorative == 1)
    active = false
if (con == 0)
{
    image_index = 0
    timer++
    threshold = 60
    if (type == 0)
        threshold = 60
    if (type == 1)
        threshold = 20
    if (type == 2)
        threshold = 35
    if (type == 3)
        threshold = 15
    if (timer >= threshold && active == true)
    {
        con = 1
        timer = 0
    }
}
if (con == 1)
{
    timer++
    flashamt = sin((timer / 2))
    if (flashamt < 0 && timer >= 5)
    {
        con = 2
        timer = 0
    }
}
if (con == 2)
{
    image_index = 1
    timer++
    if (type == 0)
        flameangle = -25
    if (type == 1)
        flameangle = -30
    if (type == 2)
        flameangle = -140
    if (type == 3)
        flameangle = -25
    if (type == 4)
        flameangle = -15
    flameanglemax = abs(flameangle)
    flameangle = (sin((timer / 4)) * flameanglemax)
    if (movetype == 1)
        flameangle = 0
    rate = 4
    if (type == 1)
        rate = 3
    if (type == 2)
        rate = 1
    if (type == 3)
        rate = 3
    if (type == 4)
        rate = 3
    if ((timer % rate) == 0)
    {
        if gml_Script_scr_onscreen_tolerance(id, -40)
        {
            if (type != 4)
            {
                var _temp_local_var_3 = bossid
                flamesfx = 1
            }
        }
        flame = gml_Script_instance_create((x + 34), (y + 40), obj_queenartfire)
        flame.image_xscale = 0.2
        flame.image_yscale = 0.2
        flame.growamt = 0.2
        flame.image_alpha = 3
        flame.fadespeed = 0.2
        flame.direction = (270 + flameangle)
        flame.speed = 15
        flame.friction = 1
        _temp_local_var_3.vspeed = (flame.vspeed + 8)
        var _temp_local_var_4 = stacktop
        var _temp_local_var_5 = flame
        if (type == 2)
        {
            flame.fadespeed = 0.15
            _temp_local_var_4.vspeed = (flame.vspeed - 6)
            _temp_local_var_5.speed = (flame.speed + 5)
            var _temp_local_var_6 = bossid
            var _temp_local_var_7 = stacktop
            var _temp_local_var_8 = -9
            var _temp_local_var_9 = flame
            var _temp_local_var_10 = flame
            var _temp_local_var_11 = bossid
            var _temp_local_var_12 = stacktop
            var _temp_local_var_13 = flame
        }
        if (type == 3)
        {
            _temp_local_var_6.vspeed = (flame.vspeed - 6)
            _temp_local_var_7.speed = (flame.speed + 3)
            flame.fadespeed = 0.16
            var _temp_local_var_14 = -9
            var _temp_local_var_15 = -9
            var _temp_local_var_16 = -9
            var _temp_local_var_17 = flame
            var _temp_local_var_18 = stacktop
            var _temp_local_var_19 = -9
            var _temp_local_var_20 = -9
            var _temp_local_var_21 = flame
        }
        if (type == 4)
        {
            flame.damage = 60
            flame.vspeed = 20
            flame.fadespeed = 0.12
        }
    }
    threshold = 57
    if (type == 1)
        threshold = 30
    if (type == 2)
        threshold = 18
    if (type == 3)
        threshold = 15
    if (timer >= threshold && type != 4)
    {
        image_index = 0
        con = 0
        timer = 0
    }
}
if (con == 3)
{
    flashamt = 0
    if (type == 4)
        con = 2
    laughtimer++
    if ((laughtimer % 9) == 0)
        image_index = 1
    if ((laughtimer % 9) == 3)
        image_index = 0
    if (laughtimer >= 40)
    {
        timer = 0
        image_index = 0
        laughtimer = 0
        con = 0
    }
}
if (movetype == 1)
{
    movesiner++
    x += (sin((movesiner / 9)) * 9)
}
if instance_exists(obj_musictracker)
    trackpos = obj_musictracker.trackpos
if (trackpos >= 18.862 && trackpos <= 18.902)
    con = 3
if (id == bossid && con != 3)
{
    if (flamesfx == 1)
    {
        gml_Script_snd_stop(220)
        flame = gml_Script_snd_play_pitch(220, 1.5)
        gml_Script_snd_volume(flame, 0.35, 0)
        flamesfx = 0
    }
    if (dingsfx == 1)
    {
        gml_Script_snd_stop(46)
        gml_Script_snd_play_pitch(46, 0.9)
        dingsfx = 0
    }
}
