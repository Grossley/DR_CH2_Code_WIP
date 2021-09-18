con = -1
customcon = 0
violentdefeat = 1
if (global.chapter != 2 || global.flag[309] < 8 || global.flag[309] >= 9)
    // WARNING: Popz'd an empty stack.
else
{
    con = 1
    // WARNING: Popz'd an empty stack.
    if 274
        274
    2
    3
    gml_Script_scr_makecaterpillar((obj_mainchara.x + 60), (gml_Script_cameray() - 300), 2, 0)
    gml_Script_scr_makecaterpillar((obj_mainchara.x + 100), (gml_Script_cameray() - 300), 3, 1)
    if (violentdefeat == 1)
    {
        whiteall = gml_Script_scr_dark_marker(-10, -10, 2528)
        whiteall.image_xscale = 999
        whiteall.image_yscale = 999
        whiteall.depth = 0
        whiteall.image_blend = c_black
    }
    else
    {
        whiteall = gml_Script_scr_dark_marker(-10, -10, 2528)
        whiteall.image_xscale = 999
        whiteall.image_yscale = 999
        whiteall.depth = 0
    }
    sparkle = gml_Script_scr_dark_marker(-100, -100, 2434)
    sparkle.image_speed = 0.25
    sparkle.image_alpha = 0
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    if (!global.currentsong[1])
    {
        global.currentsong[0] = "spamton_neo_after.ogg"
        global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
        audio_sound_pitch(global.currentsong[0], 1)
    }
}
