snd_free_all()
global.currentsong[0] = snd_init("the_dark_truth.ogg")
snd_pitch(global.currentsong[0], 0.95)
global.currentsong[1] = mus_loop(global.currentsong[0])
contimer = 0
ytimer = 0
xtimer = 0
yoff = 0
xoff = 0
con = 3
con_alph = 0
fadecolor = c_black
chunkfade = 0
chunkamt = 1
border = 2
pic = spr_introimage2
picb = spr_cutscene_27_1
fadespeed = 0.02
global.flag[6] = 1
textimer = 0
ingame = false
ingame = true
skipped = false
skiptimer = 0
drawpic = 1
picx = 0
picy = 0
picyb = -50
picxb = 0
con_alphb = 0
jp = 0
if (global.lang == "ja")
    jp = 1
wx = 0
