global.currentsong[0] = gml_Script_snd_init_ch1("legend.ogg")
gml_Script_snd_pitch_ch1(global.currentsong[0], 0.95)
global.currentsong[1] = gml_Script_mus_play_ch1(global.currentsong[0])
contimer = 0
ytimer = 0
xtimer = 0
yoff = 0
xoff = 0
con = 1
fadecolor = c_black
chunkfade = 0
chunkamt = 1
border = 1
pic = 4208
fadespeed = 0.02
global.flag[6] = 1
textimer = 0
ingame = 0
if (global.plot == 20)
    ingame = 1
skipped = 0
skiptimer = 0
draw_screen = 1