sweetcon = 0
sweettimer = 0
sweet = 0
table = 0
gameIntroY = 160
gameStartY = 280
state = 0
stateSub = 0
lanesX = 200
lanesWidth = 60
lanesCount = 4
lanesEndY = (gml_Script_cameraheight() - 80)
lanesFadein = 0
lanesEndFadein = 0
slideSpeed = 10
slideSound = -4
slideRal = 0
slideSus = 0
bpm = 117
bps = (bpm / 60)
spb = (1 / bps)
bpf = (bps / game_get_speed(gamespeed_fps))
beats = 0
beatsPrev = 0
flashAlpha = 0
bigFlash = 0
frameRate = game_get_speed(gamespeed_fps)
tileLayer = layer_get_id("TILES")
spriteLayer = layer_get_id("SPRITES_SlideTransition")
soundTimeStep = 0
fadingOut = 0
fadeToWhite = 0
fpb = (frameRate * bps)
gml_Script_scr_slidebeatbullet(0, fpb, 4)
gml_Script_scr_slidebeatbullet(1, fpb, 8)
gml_Script_scr_slidebeatbullet(2, fpb, 12)
gml_Script_scr_slidebeatbullet(0, fpb, 12)
gml_Script_scr_slidebeatbullet(1, fpb, 16)
gml_Script_scr_slidebeatbullet(3, fpb, 16)
gml_Script_scr_slidebeatbullet(2, (fpb * 0.5), 20)
gml_Script_scr_slidebeatbullet(1, (fpb * 0.5), 20)
gml_Script_scr_slidebeatbullet(0, (fpb * 0.5), 24)
gml_Script_scr_slidebeatbullet(3, (fpb * 0.5), 24)
gml_Script_scr_slidebeatbullet(0, (fpb * 0.5), 28)
gml_Script_scr_slidebeatbullet(3, (fpb * 0.5), 28)
gml_Script_scr_slidebeatbullet(3, (fpb * 0.25), 28.5)
gml_Script_scr_slidebeatbullet(0, (fpb * 0.25), 29)
gml_Script_scr_slidebeatbullet(1, (fpb * 0.25), 29.5)
gml_Script_scr_slidebeatbullet(2, (fpb * 0.25), 30)
gml_Script_scr_slidebeatbullet(1, (fpb * 0.25), 30.5)
gml_Script_scr_slidebeatbullet(3, (fpb * 0.25), 30.75)
gml_Script_scr_slidebeatbullet(0, (fpb * 0.25), 31)
gml_Script_scr_slidebeatbullet(1, (fpb * 0.25), 31.5)
gml_Script_scr_slidebeatbullet(3, (fpb * 0.25), 32)
