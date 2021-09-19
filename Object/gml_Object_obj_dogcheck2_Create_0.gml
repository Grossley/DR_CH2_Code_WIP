timer = 0
gml_Script_snd_free_all()
global.currentsong[0] = gml_Script_snd_init("alarm_titlescreen.ogg")
global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
maindog = 0
