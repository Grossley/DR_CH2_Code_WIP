if 2
    song = "spamton_neo_meeting.ogg"
else
    song = "mansion_entrance.ogg"
if (!global.currentsong[1])
{
    global.currentsong[0] = song
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
}
