scr_markify_caterpillar_ch1 = function() // gml_Script_scr_markify_caterpillar_ch1
{
    s = 4378473
    r = 4387437
    for (i = 0; i < 2; i += 1)
    {
        if instance_exists(global.cinstance[i])
        {
            if (global.char[(i + 1)] == 2)
            {
                s = scr_dark_marker_ch1(global.cinstance[i].x, global.cinstance[i].y, global.cinstance[i].sprite_index)
                with (global.cinstance[i])
                    visible = false
            }
            if (global.char[(i + 1)] == 3)
            {
                r = scr_dark_marker_ch1(global.cinstance[i].x, global.cinstance[i].y, global.cinstance[i].sprite_index)
                with (global.cinstance[i])
                    visible = false
            }
        }
    }
    return;
}

