var _temp_local_var_1, _temp_local_var_2, _temp_local_var_10, _temp_local_var_17, _temp_local_var_20;
if (con == 1)
{
    var _temp_local_var_1 = blackscreen
    depth = 500
}
if (con == 2)
{
    global.interact = 1
    timer++
    if (timer > 120)
    {
        timer = 0
        con = 3
    }
}
if (con == 3)
{
    global.msc = 1215
    gml_Script_scr_text(global.msc)
    d = blackscreen
    global.currentsong[0] = "flashback_excerpt.ogg"
    global.currentsong[1] = global.currentsong[0]
    gml_Script_snd_pitch(global.currentsong[1], 0.95)
    con = 4
}
if (con == 5)
{
}
else
    var _temp_local_var_20 = 0
if (global.msc == 1217 && global.flag[928] == 2)
{
    if 5
    {
        remcon = 5
        con = -10
        maked = 1
        global.msc = 1218
        steptimer = -30
        190
        191
        with (obj_writer)
            // WARNING: Popz'd an empty stack.
        global.flag[928] = 3
    }
}
if (con == 4)
{
}
else
    var _temp_local_var_17 = 0
if (global.msc == 1216)
{
    if 5
    {
        remcon = 5
        con = -10
        maked = 1
        global.msc = 1217
        steptimer = 50
        190
        191
        with (obj_writer)
            // WARNING: Popz'd an empty stack.
        global.flag[928] = 2
    }
}
if (global.msc == 1215)
{
    if 11
    {
        remcon = 4
        con = -10
        maked = 1
        global.msc = 1216
        steptimer = 0
        190
        191
        with (obj_writer)
            // WARNING: Popz'd an empty stack.
        global.flag[928] = 1
    }
}
if (con == 4 && (!61))
{
    global.msc = 1217
    global.msc
    d = 
    con = 5
}
if (con == 5)
{
    if (global.flag[20] == 1)
    {
        // WARNING: Popz'd an empty stack.
        with (obj_writer)
            shake = 1
    }
    if (global.flag[20] == 0)
    {
        with (obj_writer)
            shake = 0
    }
}
if (con == 5 && (!61))
{
    timer++
    if (timer == 1)
        218
    if (timer >= 90)
    {
        con = 6
        timer = 0
    }
}
if (con == 6 && (!61))
{
    global.msc = 1219
    global.msc
    d = 
    con = 7
}
if (con == 7 && (!61))
{
    timer++
    var _temp_local_var_10 = blackscreen
    image_alpha -= 0.04
}
if (con == 8)
{
    con = -1
    global.interact = 0
    global.flag[915] = 20
    // WARNING: Popz'd an empty stack.
}
if (con == -10)
{
    global.facing = 1
    obj_mainchara.x += 0.85
    obj_mainchara.y += 0.08
    steptimer++
    if (steptimer >= 60)
    {
        con = remcon
        if (maked == 1)
        {
            maked = 0
            global.msc
            d = 
        }
    }
}
