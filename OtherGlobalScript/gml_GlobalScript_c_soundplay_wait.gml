gml_Script_c_cmd("soundplay", argument0, 0, 0, 0)
gml_Script_c_wait(round(audio_sound_length(argument0).room_speed))
return;
