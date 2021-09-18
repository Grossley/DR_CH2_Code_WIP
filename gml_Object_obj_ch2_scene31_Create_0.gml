con = -1
customcon = 0
anykey = 0
keytimer = 0
shakebuffer = 0
maxshaketime = 120
if (global.chapter != 2 || global.plot >= 211 || global.plot < 205)
    // WARNING: Popz'd an empty stack.
else
{
    // WARNING: Popz'd an empty stack.
    if (!global.currentsong[1])
    {
        global.currentsong[0] = "home.ogg"
        global.currentsong[1] = global.currentsong[0]
    }
    audio_sound_gain(global.currentsong[1], 0.5, 0)
    142
}
