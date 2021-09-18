timer += 1
if (timer == 1)
{
    with (obj_caterpillarchara_ch1)
        // WARNING: Popz'd an empty stack.
    global.flag[32] = 1
}
if (timer == 2)
    // WARNING: Popz'd an empty stack.
if (timer == 3)
{
    if (!global.currentsong[1])
    {
        global.currentsong[0] = "man.ogg"
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
    }
}
if (timer == 4)
    // WARNING: Popz'd an empty stack.
