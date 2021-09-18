var _temp_local_var_1, _temp_local_var_3, _temp_local_var_5, _temp_local_var_7;
if (stonelancer != self)
    var _temp_local_var_1 = stonelancer
if (obj_mainchara.x > x && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    // WARNING: Popz'd an empty stack.
    2
    3
    gml_Script_scr_makecaterpillar(1750, 240, 2, 0)
    gml_Script_scr_makecaterpillar(1750, 240, 3, 1)
    with (obj_caterpillarchara)
        visible = false
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    kr
    "r"
    su
    gml_Script_c_setxy(susienpc.x, susienpc.y)
    174
    0
    // WARNING: Popz'd an empty stack.
    ra
    190
    0
    // WARNING: Popz'd an empty stack.
    be = 3
    be_actor = gml_Script_instance_create(340, 180, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_down_dw
    fan_a = 4
    fan_a_actor = gml_Script_instance_create(1788, 188, obj_actor)
    gml_Script_scr_actor_setup(fan_a, fan_a_actor, "fan_a")
    fan_a_actor.sprite_index = spr_npc_butler
    fan_a
    // WARNING: Popz'd an empty stack.
    fan_b = 5
    fan_b_actor = gml_Script_instance_create(1880, 188, obj_actor)
    gml_Script_scr_actor_setup(fan_b, fan_b_actor, "fan_b")
    fan_b_actor.sprite_index = spr_npc_butler
    fan_b
    // WARNING: Popz'd an empty stack.
    fan_c = 6
    fan_c_actor = gml_Script_instance_create(1733, 150, obj_actor)
    gml_Script_scr_actor_setup(fan_c, fan_c_actor, "fan_c")
    fan_c_actor.sprite_index = spr_npc_butler
    fan_c
    // WARNING: Popz'd an empty stack.
    fan_d = 7
    fan_d_actor = gml_Script_instance_create(1812, 150, obj_actor)
    gml_Script_scr_actor_setup(fan_d, fan_d_actor, "fan_c")
    fan_d_actor.sprite_index = spr_npc_butler
    fan_d
    // WARNING: Popz'd an empty stack.
    fan_e = 8
    fan_e_actor = gml_Script_instance_create(1890, 150, obj_actor)
    gml_Script_scr_actor_setup(fan_e, fan_e_actor, "fan_c")
    fan_e_actor.sprite_index = spr_npc_butler
    fan_e
    // WARNING: Popz'd an empty stack.
    la = 9
    la_actor = gml_Script_instance_create(1605, 255, obj_actor)
    gml_Script_scr_actor_setup(la, la_actor, "lancer")
    la_actor.sprite_index = spr_cutscene_20_lancer_desaturated
    la
    0
    98000
    0
    stonelancer = gml_Script_scr_dark_marker(1606, 236, 193)
    stonelancer.depth = 97000
    stonelancer.image_alpha = 0
}
if (con == 1)
    var _temp_local_var_3 = 1
if 1
{
    con = 2
    alarm[0] = 30
    "top"
    198
    su
    gml_Script_c_emote("!", 30)
    gml_Script_c_var_instance(susienpc, "visible", 0)
    30
    "susie"
    gml_Script_c_msgsetloc(0, "\\E6* Th..^1. that screaming..^1. Ralsei...!?/%", "obj_ch2_scene20_slash_Step_0_gml_112_0")
    // WARNING: Popz'd an empty stack.
    kr
    gml_Script_c_walkdirect(1440, 247, 35)
    su
    174
    0.25
    gml_Script_c_walkdirect(1490, 221, 35)
    gml_Script_c_mus2("volume", 0, 30)
    1
    gml_Script_c_panspeed(18, 0, 30)
    31
    // WARNING: Popz'd an empty stack.
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\EQ* U-umm^1, you don't have to scream.../", "obj_ch2_scene20_slash_Step_0_gml_130_0")
    gml_Script_c_msgnextloc("\\E1* ..^1. Just because you like my outfit!/%", "obj_ch2_scene20_slash_Step_0_gml_131_0")
    // WARNING: Popz'd an empty stack.
    197
    n = 18
    ra
    0
    5000
    fan_a
    1806
    gml_Script_c_addxy(0, n)
    // WARNING: Popz'd an empty stack.
    fan_b
    1806
    gml_Script_c_addxy(0, n)
    // WARNING: Popz'd an empty stack.
    fan_c
    1806
    gml_Script_c_addxy(0, n)
    // WARNING: Popz'd an empty stack.
    fan_d
    1806
    gml_Script_c_addxy(0, n)
    // WARNING: Popz'd an empty stack.
    fan_e
    1806
    gml_Script_c_addxy(0, n)
    // WARNING: Popz'd an empty stack.
    30
    gml_Script_c_panspeed(-4, 0, 20)
    fan_a
    "x"
    1223
    gml_Script_c_addxy(0, (-n))
    0
    0.25
    gml_Script_c_walk("r", 8, 60)
    fan_b
    "x"
    1223
    gml_Script_c_addxy(0, (-n))
    0
    0.25
    gml_Script_c_walk("r", 8, 60)
    fan_c
    "x"
    1223
    gml_Script_c_addxy(0, (-n))
    0
    0.25
    gml_Script_c_walk("r", 8, 60)
    fan_d
    "x"
    1223
    gml_Script_c_addxy(0, (-n))
    0
    0.25
    gml_Script_c_walk("r", 8, 60)
    fan_e
    "x"
    1223
    gml_Script_c_addxy(0, (-n))
    0
    0.25
    gml_Script_c_walk("r", 8, 60)
    15
    ra
    1
    188
    0.25
    gml_Script_c_walk_wait("l", 8, 5)
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\EH* O-oh!^1! Kris^1, Susie!^1! Umm^1, how may I serve you...?/", "obj_ch2_scene20_slash_Step_0_gml_204_0")
    gml_Script_c_facenext("susie", "5")
    gml_Script_c_msgnextloc("\\E5* The hell are you doing!?/", "obj_ch2_scene20_slash_Step_0_gml_206_0")
    gml_Script_c_facenext("ralsei", "2")
    gml_Script_c_msgnextloc("\\E2* Umm^1, Queen didn't have a room for me^1, so..^1. err.../%", "obj_ch2_scene20_slash_Step_0_gml_208_0")
    // WARNING: Popz'd an empty stack.
    186
    0
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E1* She made me into one of her butlers^1, instead.../%", "obj_ch2_scene20_slash_Step_0_gml_215_0")
    // WARNING: Popz'd an empty stack.
    su
    0.25
    gml_Script_c_walk_wait("r", 12, 8)
    200
    0.25
    15
    0
    3
    ra
    189
    0
    "susie"
    gml_Script_c_msgsetloc(0, "\\EZ* Whatever!^1! Ralsei^1! Can you heal Lancer!?/", "obj_ch2_scene20_slash_Step_0_gml_234_0")
    gml_Script_c_facenext("ralsei", "C")
    gml_Script_c_msgnextloc("\\EC* O-oh!/", "obj_ch2_scene20_slash_Step_0_gml_236_0")
    gml_Script_c_facenext("lancer", "A")
    gml_Script_c_msgnextloc("\\EA* Haha..^1. it's..^1. cold.../%", "obj_ch2_scene20_slash_Step_0_gml_238_0")
    // WARNING: Popz'd an empty stack.
    0.25
    gml_Script_c_walk("l", 3, 9)
    60
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E4* ..^1. Susie.../%", "obj_ch2_scene20_slash_Step_0_gml_248_0")
    // WARNING: Popz'd an empty stack.
    192
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E6* .../%", "obj_ch2_scene20_slash_Step_0_gml_255_0")
    // WARNING: Popz'd an empty stack.
    189
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E8* I'm afraid..^1. This is something I can't heal./", "obj_ch2_scene20_slash_Step_0_gml_262_0")
    gml_Script_c_facenext("susie", "Z")
    gml_Script_c_msgnextloc("\\EZ* Wh-what?/", "obj_ch2_scene20_slash_Step_0_gml_264_0")
    gml_Script_c_facenext("ralsei", 4)
    gml_Script_c_msgnextloc("\\E4* Lancer is.../%", "obj_ch2_scene20_slash_Step_0_gml_266_0")
    // WARNING: Popz'd an empty stack.
    ra
    0
    gml_Script_c_walk("r", 4, 5)
    0.25
    gml_Script_c_delaycmd(9, "imagespeed", 0)
    la
    1
    la
    0
    gml_Script_c_setxy(1606, 236)
    su
    4
    0
    0
    gml_Script_c_walk("l", 5, 8)
    gml_Script_c_delaycmd(9, "imagespeed", 0)
    la
    199
    gml_Script_c_var_lerp_instance(stonelancer, "image_alpha", 0, 1, 15)
    10
    201
    10
    su
    4
    la
    0
    60
    su
    "susieunhappy"
    1
    0
    95000
    gml_Script_c_walkdirect_wait(1572, 216, 6)
    201
    0
    0.25
    la
    0
    gml_Script_c_var_instance(stonelancer, "visible", 0)
    "susie"
    gml_Script_c_msgsetloc(0, "\\EZ* Lancer!? Lancer^1, hey...!!/%", "obj_ch2_scene20_slash_Step_0_gml_328_0")
    // WARNING: Popz'd an empty stack.
    ra
    191
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E4* You see^1, each Dark Fountain creates a different \"world.\"/", "obj_ch2_scene20_slash_Step_0_gml_336_0")
    gml_Script_c_msgnextloc("\\E4* A \"world\" whose Darkners reflect the will of its fountain./", "obj_ch2_scene20_slash_Step_0_gml_337_0")
    if (global.lang == "ja")
        gml_Script_c_msgnextloc("\\E4＊ その世界を生み出した&　 「闇の泉」の意志を&　 受け継いだ者たちなんだよ。/", "obj_ch2_scene20_slash_Step_0_gml_375_0_b")
    gml_Script_c_msgnextloc("\\E4* But^1, though those Darkners can exist in their own worlds.../", "obj_ch2_scene20_slash_Step_0_gml_338_0")
    gml_Script_c_msgnextloc("\\E4* They might not \"belong\" if they go to another one./%", "obj_ch2_scene20_slash_Step_0_gml_339_0")
    // WARNING: Popz'd an empty stack.
    su
    203
    "susie"
    gml_Script_c_msgsetloc(0, "\\EC* ..^1. so can we help him!?/%", "obj_ch2_scene20_slash_Step_0_gml_346_0")
    // WARNING: Popz'd an empty stack.
    ra
    189
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\EA* Yes. There is a way./", "obj_ch2_scene20_slash_Step_0_gml_354_0")
    gml_Script_c_msgnextloc("* Castle Town's Grand Fountain is made of pure darkness./", "obj_ch2_scene20_slash_Step_0_gml_355_0")
    gml_Script_c_msgnextloc("\\EB* As long as it stays flowing^1, any Darkner can live there./", "obj_ch2_scene20_slash_Step_0_gml_356_0")
    gml_Script_c_msgnextloc("\\E2* So..^1. if we bring Lancer back to school^1, he'll be OK again./%", "obj_ch2_scene20_slash_Step_0_gml_357_0")
    // WARNING: Popz'd an empty stack.
    "susie"
    gml_Script_c_msgsetloc(0, "* ..^1. So we just need to get out of here^1, huh?/%", "obj_ch2_scene20_slash_Step_0_gml_365_0")
    // WARNING: Popz'd an empty stack.
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E2* Right./", "obj_ch2_scene20_slash_Step_0_gml_372_0")
    gml_Script_c_facenext("susie", "C")
    gml_Script_c_msgnextloc("\\EC* ..^1. alright./%", "obj_ch2_scene20_slash_Step_0_gml_374_0")
    // WARNING: Popz'd an empty stack.
    su
    202
    "susie"
    gml_Script_c_msgsetloc(0, "\\EA* Lancer^1, we'll be back for you^1, buddy.../%", "obj_ch2_scene20_slash_Step_0_gml_378_0")
    // WARNING: Popz'd an empty stack.
    30
    su
    "l"
    gml_Script_c_emote("!", 30)
    1
    gml_Script_c_var_instance(stonelancer, "visible", 1)
    ra
    gml_Script_c_emote("!", 30)
    "berdly"
    gml_Script_c_fefc(0, 0)
    gml_Script_c_msgsetloc(0, "\\EI* Your friend..^1. If we defeat Queen^1, we can save him?/%", "obj_ch2_scene20_slash_Step_0_gml_394_0")
    // WARNING: Popz'd an empty stack.
    kr
    "l"
    su
    "l"
    be
    "berdlyunhappy"
    gml_Script_c_setxy(1250, 230)
    gml_Script_c_walkdirect(1298, 230, 15)
    gml_Script_c_panspeed(-8, 0, 10)
    30
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* Uh^1, yeah./%", "obj_ch2_scene20_slash_Step_0_gml_414_0")
    // WARNING: Popz'd an empty stack.
    "d"
    "berdly"
    gml_Script_c_msgsetloc(0, "* With me out of the way^1, Queen.../%", "obj_ch2_scene20_slash_Step_0_gml_421_0")
    // WARNING: Popz'd an empty stack.
    be
    682
    // WARNING: Popz'd an empty stack.
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EG* ..^1. is going to force Noelle to do her bidding./", "obj_ch2_scene20_slash_Step_0_gml_431_0")
    gml_Script_c_msgnextloc("\\E9* And if Noelle doesn't want to.../", "obj_ch2_scene20_slash_Step_0_gml_432_0")
    gml_Script_c_msgnextloc("\\E8* ..^1. She might make her face into a robot one./", "obj_ch2_scene20_slash_Step_0_gml_433_0")
    gml_Script_c_facenext("susie", "0")
    gml_Script_c_msgnextloc("\\E0* .../%", "obj_ch2_scene20_slash_Step_0_gml_435_0")
    // WARNING: Popz'd an empty stack.
    "berdlyunhappy"
    gml_Script_c_walkdirect(1505, 230, 40)
    gml_Script_c_panspeed(4, 0, 15)
    20
    kr
    "r"
    20
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E8* Susie.../%", "obj_ch2_scene20_slash_Step_0_gml_451_0")
    // WARNING: Popz'd an empty stack.
    su
    "d"
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E9* Could you..^1. assist me in saving Noelle?/", "obj_ch2_scene20_slash_Step_0_gml_458_0")
    gml_Script_c_facenext("susie", "6")
    gml_Script_c_msgnextloc("\\E6* ..^1. huh...? M-me?/%", "obj_ch2_scene20_slash_Step_0_gml_460_0")
    // WARNING: Popz'd an empty stack.
    "l"
    be
    682
    // WARNING: Popz'd an empty stack.
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E9* I..^1. just can't do it by myself./%", "obj_ch2_scene20_slash_Step_0_gml_472_0")
    // WARNING: Popz'd an empty stack.
    0
    683
    0.25
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EI* But if you can help me..^1. I have a plan./", "obj_ch2_scene20_slash_Step_0_gml_482_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* A plan?/%", "obj_ch2_scene20_slash_Step_0_gml_484_0")
    // WARNING: Popz'd an empty stack.
    be
    "berdly"
    1
    "d"
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E0* I remember from Queen's tour of this place.../", "obj_ch2_scene20_slash_Step_0_gml_493_0")
    gml_Script_c_msgnextloc("\\E0* There's a secret shortcut on the third floor./%", "obj_ch2_scene20_slash_Step_0_gml_494_0")
    // WARNING: Popz'd an empty stack.
    "l"
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E1* While Kris is distracting Queen^1,/", "obj_ch2_scene20_slash_Step_0_gml_500_0")
    gml_Script_c_msgnextloc("\\E0* Susie will take the shortcut to reach Noelle^1,/%", "obj_ch2_scene20_slash_Step_0_gml_501_0")
    // WARNING: Popz'd an empty stack.
    "d"
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E0* And transfer her to me on the roof./", "obj_ch2_scene20_slash_Step_0_gml_507_0")
    gml_Script_c_msgnextloc("\\E1* From there^1, I'll bring her to a safe hiding spot.../%", "obj_ch2_scene20_slash_Step_0_gml_508_0")
    // WARNING: Popz'd an empty stack.
    0
    683
    0.25
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EI* And together^1, we can all defeat Queen!/%", "obj_ch2_scene20_slash_Step_0_gml_516_0")
    // WARNING: Popz'd an empty stack.
    su
    "u"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene20_slash_Step_0_gml_523_0")
    // WARNING: Popz'd an empty stack.
    "l"
    be
    "r"
    // WARNING: Popz'd an empty stack.
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* Alright^1, sure. We'll give it a shot./", "obj_ch2_scene20_slash_Step_0_gml_534_0")
    gml_Script_c_facenext("berdly", "6")
    gml_Script_c_msgnextloc("\\E6* Haha^1! Most excellent!^1! Then.../%", "obj_ch2_scene20_slash_Step_0_gml_536_0")
    // WARNING: Popz'd an empty stack.
    su
    1
    be
    1
    gml_Script_c_walk_wait("d", 6, 5)
    gml_Script_c_walk("r", 12, 25)
    gml_Script_c_delayfacing(46, "l")
    15
    kr
    "r"
    ra
    190
    su
    "r"
    30
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E7* See you on the roof^1, fellow agent!/%", "obj_ch2_scene20_slash_Step_0_gml_563_0")
    // WARNING: Popz'd an empty stack.
    be
    gml_Script_c_walk("r", 10, 30)
    gml_Script_c_panobj(kr_actor, 30)
    15
    su
    "l"
    ra
    188
    15
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* Alright^1, let's go!/%", "obj_ch2_scene20_slash_Step_0_gml_583_0")
    // WARNING: Popz'd an empty stack.
    su
    gml_Script_c_walkdirect(1360, 230, 25)
    gml_Script_c_delayfacing(26, "r")
    ra
    0
    gml_Script_c_walkdirect(1290, 242, 25)
    0.25
    gml_Script_c_delaycmd(26, "imagespeed", 0)
    gml_Script_c_delaycmd(26, "sprite", 190)
    60
    su
    "l"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E5* ..^1. would you take that off already!?/", "obj_ch2_scene20_slash_Step_0_gml_607_0")
    gml_Script_c_facenext("ralsei", "Q")
    gml_Script_c_msgnextloc("\\EQ* S-sorry!/%", "obj_ch2_scene20_slash_Step_0_gml_609_0")
    // WARNING: Popz'd an empty stack.
    16
    154
    kr
    2
    su
    2
    ra
    gml_Script_c_addxy(0, -5)
    2
    16
    39
    kr
    859
    gml_Script_c_addxy(-2, -2)
    0
    su
    831
    gml_Script_c_addxy(2, 2)
    0
    ra
    788
    gml_Script_c_addxy(-10, 0)
    0
    gml_Script_c_mus2("volume", 1, 15)
    15
}
if (con == 3)
{
}
else
    var _temp_local_var_7 = 0
con = 4
0
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
if (con == 4 && (!895))
{
    con = 0
    global.interact = 0
    global.facing = 0
    global.plot = 120
    lancernpc = gml_Script_instance_create(stonelancer.x, stonelancer.y, obj_pushable_lancer)
    var _temp_local_var_5 = stonelancer
}
