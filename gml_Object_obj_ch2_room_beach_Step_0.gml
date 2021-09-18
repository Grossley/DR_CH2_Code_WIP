var _temp_local_var_2, _temp_local_var_7, _temp_local_var_8;
if canrest
{
    if (obj_mainchara.x > x)
    {
        if (!1)
        {
        }
        else
            var _temp_local_var_7 = 0
    }
    else
        var _temp_local_var_8 = 0
    timer++
    if (timer >= 300 && con == -1)
    {
        con = 1
        timer = 0
    }
    if (con == 1)
    {
        con = 2
        global.interact = 1
        global.facing = 1
        cutscene_master = 
        // WARNING: Popz'd an empty stack.
        gml_Script_mus_volume(global.currentsong[1], 0, 60)
    }
    if (con == 2)
    {
        con = 3
        oceansong[0] = "ocean.ogg"
        oceansong[1] = oceansong[0]
        gml_Script_mus_volume(oceansong[1], 0, 0)
        gml_Script_mus_volume(oceansong[1], 0.5, 150)
        su
        gml_Script_c_walkdirect(362, 88, 30)
        gml_Script_c_delayfacing(31, "r")
        kr
        gml_Script_c_walkdirect(364, 122, 30)
        gml_Script_c_delayfacing(31, "r")
        1
        gml_Script_c_panspeed(1, 0, 40)
        32
        0
        875
        0.1
        su
        5
        0
        853
        0.1
        15
        // WARNING: Popz'd an empty stack.
    }
    if (con == 3)
    {
        if (customcon == 1)
        {
            if 1
                var _temp_local_var_2 = 1
        }
        else
            _temp_local_var_2 = 0
    }
    else
        _temp_local_var_2 = 0
    if 0
    {
        con = 4
        customcon = 0
        alarm[0] = 30
        // WARNING: Popz'd an empty stack.
        gml_Script_c_panobj(kr_actor, 60)
        gml_Script_mus_volume(oceansong[1], 0, 90)
        gml_Script_mus_volume(global.currentsong[1], 1, 90)
        65
        kr
        1
        657
        su
        1
        850
        // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
    }
    if (con == 5 && (!895))
    {
        con = -1
        oceansong[1]
        obj_mainchara.cutscene = false
        global.interact = 0
        global.facing = 0
    }
}
