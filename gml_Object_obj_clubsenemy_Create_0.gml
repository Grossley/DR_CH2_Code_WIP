gml_Script_scr_enemy_object_init()
bikeflip = false
becomeflash = false
turnt = 0
turns = 0
talktimer = 0
talkmax = 150
state = 0
flash = false
siner = 0
fsiner = 0
talked = 0
attacked = false
hurt = false
hurttimer = 0
hurtshake = 0
mywriter = 343249823
acting = 0
actcon = 0
acttimer = 0
mercymod = 0
maxmercy = 9999
warned = false
compliment = 0
tired = false
manual = 0
attacks = false
dodgetimer = 0
candodge = false
con = 0
battlecancel = 0
nexttry = false
mytarget = 3
image_speed = 0
betray = false
argue = 0
notail = 0
image_xscale = 2
image_yscale = 2
idlesprite = spr_clubs_idle
hurtsprite = spr_clubs_hurt
sparedsprite = spr_clubs_spared
acted[0] = false
acted[1] = false
acted[2] = false
acted[3] = false
acted[4] = false
acted[5] = false
topic_count = 0
topic_timer = 0
topic_timer_total = 0
topic_con = 0
topic_start = 0
topic_timeup = 0
right_answer = 0
clockalpha = 0
progress = 0
var likes = [gml_Script_stringsetloc("CuteBoys", "obj_clubsenemy_slash_Create_0_gml_69_0"), gml_Script_stringsetloc("Fluffy", "obj_clubsenemy_slash_Create_0_gml_70_0"), gml_Script_stringsetloc("Birthday", "obj_clubsenemy_slash_Create_0_gml_71_0"), gml_Script_stringsetloc("Sports", "obj_clubsenemy_slash_Create_0_gml_72_0"), gml_Script_stringsetloc("Family", "obj_clubsenemy_slash_Create_0_gml_73_0"), gml_Script_stringsetloc("Hole", "obj_clubsenemy_slash_Create_0_gml_74_0"), gml_Script_stringsetloc("Rouxls", "obj_clubsenemy_slash_Create_0_gml_75_0"), gml_Script_stringsetloc("Puzzle", "obj_clubsenemy_slash_Create_0_gml_76_0"), gml_Script_stringsetloc("Party", "obj_clubsenemy_slash_Create_0_gml_77_0"), gml_Script_stringsetloc("Dance", "obj_clubsenemy_slash_Create_0_gml_78_0"), gml_Script_stringsetloc("GiantBed", "obj_clubsenemy_slash_Create_0_gml_79_0"), gml_Script_stringsetloc("NumberThree", "obj_clubsenemy_slash_Create_0_gml_80_0"), gml_Script_stringsetloc("Sandwich", "obj_clubsenemy_slash_Create_0_gml_81_0"), gml_Script_stringsetloc("Tree", "obj_clubsenemy_slash_Create_0_gml_82_0")]
likes_list = ds_list_create()
for (var i = 0; i < array_length_1d(likes); i++)
    ds_list_add(likes_list, likes[i])
var dislikes = [gml_Script_stringsetloc("SplatNoise", "obj_clubsenemy_slash_Create_0_gml_91_0"), gml_Script_stringsetloc("SandPaper", "obj_clubsenemy_slash_Create_0_gml_92_0"), gml_Script_stringsetloc("Chaos", "obj_clubsenemy_slash_Create_0_gml_93_0"), gml_Script_stringsetloc("Clown", "obj_clubsenemy_slash_Create_0_gml_94_0"), gml_Script_stringsetloc("NumberFour", "obj_clubsenemy_slash_Create_0_gml_95_0"), gml_Script_stringsetloc("NumberTwo", "obj_clubsenemy_slash_Create_0_gml_96_0"), gml_Script_stringsetloc("Turtleneck", "obj_clubsenemy_slash_Create_0_gml_97_0"), gml_Script_stringsetloc("Trouble", "obj_clubsenemy_slash_Create_0_gml_98_0"), gml_Script_stringsetloc("Thrash", "obj_clubsenemy_slash_Create_0_gml_99_0"), gml_Script_stringsetloc("Guns", "obj_clubsenemy_slash_Create_0_gml_100_0"), gml_Script_stringsetloc("Cheating", "obj_clubsenemy_slash_Create_0_gml_101_0"), gml_Script_stringsetloc("Dice", "obj_clubsenemy_slash_Create_0_gml_102_0"), gml_Script_stringsetloc("Starwalker", "obj_clubsenemy_slash_Create_0_gml_103_0"), gml_Script_stringsetloc("4LeafClover", "obj_clubsenemy_slash_Create_0_gml_104_0"), gml_Script_stringsetloc("Garbage", "obj_clubsenemy_slash_Create_0_gml_105_0"), gml_Script_stringsetloc("Non-Birthday", "obj_clubsenemy_slash_Create_0_gml_106_0"), gml_Script_stringsetloc("Crime", "obj_clubsenemy_slash_Create_0_gml_107_0")]
dislikes_list = ds_list_create()
for (i = 0; i < array_length_1d(dislikes); i++)
    ds_list_add(dislikes_list, dislikes[i])
