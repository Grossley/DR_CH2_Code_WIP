con = -1
customcon = 0
violentdefeat = 1
if (global.chapter != 2 || global.flag[309] < 8 || global.flag[309] >= 9)
    instance_destroy()
else
{
    con = 1
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    gml_Script_scr_getchar(2)
    gml_Script_scr_getchar(3)
    gml_Script_scr_makecaterpillar((obj_mainchara.x + 60), (gml_Script_cameray() - 300), 2, 0)
    gml_Script_scr_makecaterpillar((obj_mainchara.x + 100), (gml_Script_cameray() - 300), 3, 1)
    if (violentdefeat == 1)
    {
        whiteall = gml_Script_scr_dark_marker(-10, -10, 2529)
        whiteall.image_xscale = 999
        whiteall.image_yscale = 999
        whiteall.depth = 0
        whiteall.image_blend = c_black
    }
    else
    {
        whiteall = gml_Script_scr_dark_marker(-10, -10, 2529)
        whiteall.image_xscale = 999
        whiteall.image_yscale = 999
        whiteall.depth = 0
    }
    sparkle = gml_Script_scr_dark_marker(-100, -100, 2435)
    sparkle.image_speed = 0.25
    sparkle.image_alpha = 0
    audio_stop_all()
    gml_Script_snd_free_all()
    if (!gml_Script_snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = gml_Script_snd_init("spamton_neo_after.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
        audio_sound_pitch(global.currentsong[0], 1)
    }
}
