if audio_is_playing(snd_sneo_overpower)
    gml_Script_snd_stop(snd_sneo_overpower)
global.sp = 4
gml_Script_snd_stop(snd_rumble)
gml_Script_snd_volume(snd_rumble, 1, 0)
