timer = 0
con = 0
typetext = " frames"
solotimer = 0
backingtimer = 0
partfocus = 0
remlooped = -1
loopbuffer = 0
snd_stop_all()
backing_music = audio_play_sound(cyber_battle_backing, 90, true)
solo_music = audio_play_sound(cyber_battle_backing_solo, 90, true)
backing_audio_length = audio_sound_length(backing_music)
main_audio_length = audio_sound_length(solo_music)
