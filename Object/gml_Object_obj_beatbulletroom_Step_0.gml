if (playsound == 2)
    playsound = 0
if (playsound == 1)
{
    if (global.interact == 0)
    {
        var burst = gml_Script_snd_play_pitch(223, 1.5)
        gml_Script_snd_volume(burst, 0.3, 0)
    }
    playsound = 2
}