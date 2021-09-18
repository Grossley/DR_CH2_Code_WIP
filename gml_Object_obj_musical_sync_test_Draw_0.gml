if (typetext == " frames")
{
    solotimer = (solo_music * 30)
    var timeslooped = (solo_music / backing_audio_length)
    backingtimer = ((backing_music * 30) + ((backing_audio_length * timeslooped) * 30))
}
if (typetext == " seconds")
{
    solotimer = solo_music
    timeslooped = (solo_music / backing_audio_length)
    backingtimer = (backing_music + (backing_audio_length * timeslooped))
}
2
0
255
if (partfocus == 0)
    65535
draw_text(0, 20, (("Solo: " + string(solotimer)) + string(typetext)))
255
if (partfocus == 1)
    65535
draw_text(0, 40, ((((("Backing: " + string(backingtimer)) + typetext) + "(times looped: ") + string(timeslooped)) + ")"))
0
16777215
draw_text(0, 60, "Press left/right arrow key to make track skip backwards/forwards")
draw_text(0, 80, "Press up/down arrow key to change track selected")
draw_text(0, 100, "Press R to reset")
draw_text(0, 120, "Press Z to change frame count to second count")
draw_text(0, 140, "Press X to sync solo to backing track")
draw_text(0, 160, ((("Length1 " + string(backing_audio_length)) + " Length2 ") + string(main_audio_length)))
draw_text(0, 180, (main_audio_length / backing_audio_length))
partmode = -1
var realign = 0
if (partmode == -1)
{
    if 82
        // WARNING: Popz'd an empty stack.
    if 90
    {
        if (typetext == " frames")
            typetext = " seconds"
        else
            typetext = " frames"
    }
    if 88
        realign = 1
    if 39
    {
        if (partfocus == 0)
            audio_sound_set_track_position(solo_music, (solo_music + (1/30)))
        if (partfocus == 1)
            audio_sound_set_track_position(backing_music, (backing_music + (1/30)))
    }
    if 37
    {
        if (partfocus == 0)
            audio_sound_set_track_position(solo_music, (solo_music - (1/30)))
        if (partfocus == 1)
            audio_sound_set_track_position(backing_music, (backing_music - (1/30)))
    }
    if 38
        partfocus -= 1
    if 40
        partfocus++
    if (partfocus < 0)
        partfocus = 1
    if (partfocus > 1)
        partfocus = 0
}
loopbuffer--
if (loopbuffer < 0)
{
    if (remlooped != timeslooped)
    {
        realign = 1
        loopbuffer = 10
    }
}
if realign
{
    backingtimer = ((backing_music * 30) + ((backing_audio_length * timeslooped) * 30))
    audio_sound_set_track_position(solo_music, ((backingtimer / 30) * 0.9992))
    if (timeslooped == 0)
        audio_sound_set_track_position(solo_music, 0)
    if (timeslooped == 0)
        audio_sound_set_track_position(backing_music, 0)
    ("realigned" + string(timeslooped))
}
remlooped = timeslooped
