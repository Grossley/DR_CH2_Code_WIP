if (!global.currentsong[1])
{
    global.currentsong[0] = "mus_birdnoise.ogg"
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
}
dk = 371
gml_Script_snd_volume_ch1(dk, 0, 0)
gml_Script_snd_pitch_ch1(dk, 0.15)
// WARNING: Popz'd an empty stack.
