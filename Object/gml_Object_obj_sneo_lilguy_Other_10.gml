if (destroyable == 1)
{
    if (bighead && hitshot.big == 0)
    {
        gml_Script_snd_play_x(39, 0.8, (0.7 + random(0.1)))
        var _temp_local_var_2 = hitshot
        x -= abs(hspeed)
        hspeed = -8
        vspeed = choose(-8, 8, 10, -10)
        gml_Script_scr_doom(id, 90)
    }
    else
    {
        if (hitshot.big == 0)
        {
            var _temp_local_var_3 = hitshot
            event_user(0)
        }
        gml_Script_snd_volume(141, 0.7, 0)
        gml_Script_snd_play_x(141, 0.7, (1.1 + random(0.2)))
        var _cut = gml_Script_scr_afterimage_cut()
        _cut.flash = true
        instance_destroy()
    }
}
