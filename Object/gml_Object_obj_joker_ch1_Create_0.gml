bikeflip = false
becomeflash = false
turnt = 0
turns = 0
talktimer = 0
talkmax = 90
state = 0
flash = false
siner = 0
fsiner = 0
talked = 0
attacked = false
hurt = false
hurtamt = 0
hurttimer = 0
hurtshake = 0
mywriter = 343249823
acting = 0
actcon = 0
acttimer = 0
mercymod = -9999
maxmercy = 9999
warned = false
compliment = 0
tired = false
pirouette = 0
pirouettecounter = 0
pfactor = 1
hypnosis = 0
hypnosiscounter = 0
chaosdance = 0
reminvc = global.invc
for (i = 0; i < 4; i += 1)
    remmaxhp[i] = global.maxhp[i]
attacks = false
dodgetimer = 0
candodge = false
con = 0
battlecancel = 0
nexttry = false
mytarget = 3
image_speed = 0
image_xscale = 2
image_yscale = 2
idlesprite = spr_joker_main_ch1
hurtsprite = spr_joker_main_ch1
sparedsprite = spr_joker_main_ch1
body = gml_Script_instance_create_ch1(x, y, obj_joker_body_ch1)
laughnoise = 0
beepnoise = 0
beepbuffer = 0
burstnoise = false
jturn = 0
jattack = 0
global.tempflag[4] = 1
