if (gml_Script_scr_sideb_get_phase() > 2)
    song = "spamton_neo_meeting.ogg"
else
    song = "mansion.ogg"
if (!gml_Script_snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = gml_Script_snd_init(song)
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
}
