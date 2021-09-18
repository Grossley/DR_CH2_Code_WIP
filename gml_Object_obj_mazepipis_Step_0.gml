var _temp_local_var_1;
if (boss == true)
{
    if (con == 4)
        ("con=" + string(con))
}
if (con == 1)
{
    if (myinteract == 3)
    {
    }
    else
        var _temp_local_var_1 = 0
}
else
    var _temp_local_var_1 = 0
pipismarker = gml_Script_scr_dark_marker(x, y, sprite_index)
pipismarker
visible = false
myinteract = 0
gml_Script_snd_play_pitch(297, 1.4)
con = 2
timer = 0
boss = true
if (con == 2)
{
    timer++
    if (timer == 15)
    {
        alarm[4] = 30
        global.flag[9] = 2
        gml_Script_scr_battle(102, 0, pipismarker, 0, 0)
    }
}
if (con == 3)
{
    with (obj_mazepipis)
    {
        if (!boss)
        {
            if (distance_to_point(other.x, other.y) < 40)
                // WARNING: Popz'd an empty stack.
        }
    }
    // WARNING: Popz'd an empty stack.
}
