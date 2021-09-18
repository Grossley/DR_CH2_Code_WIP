con = -1
customcon = 0
if (global.chapter != 2 || global.flag[309] >= 8 || 11 == 0)
    // WARNING: Popz'd an empty stack.
else if (!global.currentsong[1])
{
    global.currentsong[0] = "spamton_neo_meeting.ogg"
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
    audio_sound_gain(global.currentsong[0], 0.5, 0)
}
