var _temp_local_var_1, _temp_local_var_8, _temp_local_var_10, _temp_local_var_12, _temp_local_var_13;
if (con == -1)
{
    con = 1
    global.interact = 1
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    kr
    gml_Script_c_setxy(108, 147)
    su = 2
    su_actor = gml_Script_instance_create(289, 95, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_up_lw
    to = 3
    to_actor = gml_Script_instance_create((gml_Script_camerax() + 450), 120, obj_actor)
    gml_Script_scr_actor_setup(to, to_actor, "toriel")
    to_actor.sprite_index = spr_toriel_l
    torread = gml_Script_scr_marker(422, 106, 464)
    torread.visible = false
    torsleep = gml_Script_scr_marker(422, 103, 465)
    torsleep.image_alpha = 0
    torsleep.image_speed = 0.15
    torsleep.depth = 95000
    torsleep_flash = gml_Script_scr_marker(422, 103, 493)
    torsleep_flash.image_alpha = 0
    torsleep_flash.image_speed = 0
    torsleep_flash.depth = 94000
    krissleep = gml_Script_scr_marker(449, 175, 447)
    krissleep.image_alpha = 0
    susleep = gml_Script_scr_marker(498, 165, 462)
    susleep.image_speed = 0.05
    susleep.image_alpha = 0
    susleep.depth = 4900
    align_susie = 0
    tv = gml_Script_scr_marker(474, 86, 473)
    tv.visible = false
    tvstatic2 = gml_Script_scr_marker(474, 86, 477)
    tvstatic2.image_alpha = 0
    tvstatic2.image_speed = 0.15
    tvstatic2.depth = 4900000
    tvstatic = gml_Script_scr_marker(474, 86, 477)
    tvstatic.image_alpha = 0
    tvstatic.image_speed = 0.15
    tvstatic.depth = 50
    tvsmile = gml_Script_scr_marker(474, 86, 476)
    tvsmile.image_alpha = 0
    tvsmile.image_speed = 0.15
    tvsmile.depth = 0
    chairnormal = gml_Script_scr_marker(422, 106, 878)
    chairnormal.depth = 1000000
    chairdim = gml_Script_scr_marker(422, 105, 463)
    chairdim.depth = 100000
    chairdim.image_alpha = 0
    darkcouch = gml_Script_scr_marker(185, 153, 478)
    darkcouch.image_alpha = 0
    darkcouch.depth = 5000
    beam = gml_Script_scr_marker(413, 1, 432)
    beam.visible = false
    beamunder = gml_Script_scr_marker(420, 156, 436)
    beamunder.visible = false
    var _temp_local_var_1 = beamunder
}
if (con == 1)
{
    con = 2
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60)
    1
    gml_Script_c_panspeed(2, 0, 60)
    kr
    gml_Script_c_walkdirect_wait(240, 147, 50)
    gml_Script_c_walkdirect_wait(240, 102, 25)
    "r"
    15
    su
    "l"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EA* Hey Kris^1, hurry up next time./", "obj_ch2_scene32_slash_Step_0_gml_130_0")
    gml_Script_c_msgnextloc("\\E2* We're already almost done.../%", "obj_ch2_scene32_slash_Step_0_gml_131_0")
    // WARNING: Popz'd an empty stack.
    62
    su
    "r"
    to
    0
    897
    0.25
    gml_Script_c_walkdirect_wait(325, 128, 60)
    // WARNING: Popz'd an empty stack.
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E1* .../%", "obj_ch2_scene32_slash_Step_0_gml_148_0")
    // WARNING: Popz'd an empty stack.
    15
    su
    "d"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E7* So what's next?/%", "obj_ch2_scene32_slash_Step_0_gml_157_0")
    // WARNING: Popz'd an empty stack.
    to
    1
    "u"
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E1* Oh^1, err^1, the pie.../%", "obj_ch2_scene32_slash_Step_0_gml_165_0")
    // WARNING: Popz'd an empty stack.
    "l"
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E0* We already worked quite hard^1, have we not?/", "obj_ch2_scene32_slash_Step_0_gml_172_0")
    gml_Script_c_msgnextloc("\\E1* How about we finish it later?/", "obj_ch2_scene32_slash_Step_0_gml_173_0")
    gml_Script_c_facenext("susie", "A")
    gml_Script_c_msgnextloc("\\EA* ..^1. Umm^1, OK!/%", "obj_ch2_scene32_slash_Step_0_gml_175_0")
    // WARNING: Popz'd an empty stack.
    su
    "l"
    30
    "d"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* Then..^1. uh..^1. guess I'll walk home...?/", "obj_ch2_scene32_slash_Step_0_gml_185_0")
    gml_Script_c_facenext("toriel", "8")
    gml_Script_c_msgnextloc("\\E8* Oh^1, no^1, no^1, there's no need to do that!/%", "obj_ch2_scene32_slash_Step_0_gml_187_0")
    // WARNING: Popz'd an empty stack.
    to
    gml_Script_c_emote("!", 30)
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E1* Oh^1, actually!/", "obj_ch2_scene32_slash_Step_0_gml_195_0")
    gml_Script_c_msgnextloc("\\E0* Susie^1, would you like to stay over?/%", "obj_ch2_scene32_slash_Step_0_gml_196_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    857
    "susie"
    gml_Script_c_msgsetloc(0, "\\E6* Huh?!/", "obj_ch2_scene32_slash_Step_0_gml_204_0")
    gml_Script_c_facenext("susie", "6")
    gml_Script_c_msgnextloc("\\E6* I mean^1, umm..^1. if it's OK^1, then.../", "obj_ch2_scene32_slash_Step_0_gml_206_0")
    gml_Script_c_facenext("toriel", "0")
    gml_Script_c_msgnextloc("\\E0* Here^1, look at this!/%", "obj_ch2_scene32_slash_Step_0_gml_208_0")
    // WARNING: Popz'd an empty stack.
    to
    gml_Script_c_walkdirect(500, 130, 40)
    gml_Script_c_delayfacing(41, "d")
    kr
    gml_Script_c_walkdirect(240, 140, 25)
    gml_Script_c_delaywalkdirect(26, 425, 140, 60)
    gml_Script_c_delayfacing(86, "d")
    su
    1
    gml_Script_c_walkdirect(280, 128, 25)
    gml_Script_c_delaywalkdirect(26, 450, 128, 60)
    gml_Script_c_delayfacing(86, "d")
    gml_Script_c_panspeed_wait(2, 0, 110)
    "toriel"
    gml_Script_c_msgsetloc(0, "* Our couch is used to being used as a bed!/%", "obj_ch2_scene32_slash_Step_0_gml_230_0")
    // WARNING: Popz'd an empty stack.
    to
    "l"
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E4* It's not perfect, but we could all sleep out here!/", "obj_ch2_scene32_slash_Step_0_gml_238_0")
    gml_Script_c_facenext("susie", 7)
    gml_Script_c_msgnextloc("\\E7* That..^1. sounds good to me^1! Yeah!/", "obj_ch2_scene32_slash_Step_0_gml_240_0")
    gml_Script_c_facenext("toriel", "0")
    gml_Script_c_msgnextloc("\\E0* Splendid^1! I will make sure everything is in order./%", "obj_ch2_scene32_slash_Step_0_gml_242_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walkdirect_wait(377, 125, 60)
    30
    "u"
    kr
    "l"
    su
    "l"
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E1* Just..^1. call your parents^1, will you not?/", "obj_ch2_scene32_slash_Step_0_gml_260_0")
    gml_Script_c_facenext("susie", 7)
    gml_Script_c_msgnextloc("\\E7* Yeah^1, of course!/%", "obj_ch2_scene32_slash_Step_0_gml_262_0")
    // WARNING: Popz'd an empty stack.
    to
    gml_Script_c_walk("l", 2, 60)
    su
    gml_Script_c_walkdirect_wait(377, 128, 30)
    "u"
    80
    218
    30
    gml_Script_c_walkdirect_wait(481, 128, 15)
    "l"
    kr
    "r"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* So what the hell^1, a sleepover?/", "obj_ch2_scene32_slash_Step_0_gml_289_0")
    gml_Script_c_msgnextloc("\\EA* Damn^1, I haven't had one of those in forever^1, heh.../%", "obj_ch2_scene32_slash_Step_0_gml_290_0")
    // WARNING: Popz'd an empty stack.
    su
    gml_Script_c_walkdirect_wait(505, 160, 30)
    0
    455
    // WARNING: Popz'd an empty stack.
    159
    gml_Script_c_var_instance(su_actor, "vspeed", -5)
    gml_Script_c_var_instance(su_actor, "gravity", 1)
    10
    gml_Script_c_var_instance(su_actor, "vspeed", 0)
    gml_Script_c_var_instance(su_actor, "gravity", 0)
    0
    9500
    459
    gml_Script_c_setxy(505, 167)
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    110
    60
    "susie"
    gml_Script_c_msgsetloc(0, "\\E5* (Hey^1, Kris^1, it's not like someone has to tell you to sit^1, right!?)/%", "obj_ch2_scene32_slash_Step_0_gml_320_0")
    // WARNING: Popz'd an empty stack.
    kr
    gml_Script_c_walkdirect_wait(462, 145, 20)
    5
    "u"
    0
    0.25
    gml_Script_c_walk_wait("d", 2, 10)
    // WARNING: Popz'd an empty stack.
    51
    445
    gml_Script_c_setxy(460, 173)
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* There^1, chill out for a sec!/%", "obj_ch2_scene32_slash_Step_0_gml_337_0")
    // WARNING: Popz'd an empty stack.
    60
    "susie"
    gml_Script_c_msgsetloc(0, "\\EL* So now what?/%", "obj_ch2_scene32_slash_Step_0_gml_344_0")
    // WARNING: Popz'd an empty stack.
    su
    gml_Script_c_emote("!", 60)
    60
    "susie"
    gml_Script_c_msgsetloc(0, "\\EA* I got it!/%", "obj_ch2_scene32_slash_Step_0_gml_354_0")
    // WARNING: Popz'd an empty stack.
    su
    457
    0
    0.15
    "susie"
    gml_Script_c_msgsetloc(0, "\\EP* Maybe..^1. between..^1. the pillows..^1. here?/%", "obj_ch2_scene32_slash_Step_0_gml_364_0")
    // WARNING: Popz'd an empty stack.
    456
    0
    51
    172
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* There^1! Knew I'd find the remote in there!/", "obj_ch2_scene32_slash_Step_0_gml_372_0")
    gml_Script_c_msgnextloc("\\EA* You can always find good stuff wedged in the couch./", "obj_ch2_scene32_slash_Step_0_gml_390_0")
    gml_Script_c_msgnextloc("\\E0* Jeez^1, it's dusty^1. When'd you last use this thing?/", "obj_ch2_scene32_slash_Step_0_gml_373_0")
    gml_Script_c_msgnextloc("\\E9* ..^1. Well^1, who cares^1! Let's just watch TV!/%", "obj_ch2_scene32_slash_Step_0_gml_374_0")
    // WARNING: Popz'd an empty stack.
    458
    gml_Script_c_soundplay_x(64, 0.5, 2)
    0
    0
    15
    1
    gml_Script_c_var_instance(tv, "visible", 1)
    gml_Script_c_var_instance(tv, "image_speed", 0.1)
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* So what are we gonna marathon tonight?/", "obj_ch2_scene32_slash_Step_0_gml_388_0")
    gml_Script_c_msgnextloc("\\E7* Blood Crushers 3? Hell Busters? Invasion of the Cat Petters?/%", "obj_ch2_scene32_slash_Step_0_gml_389_0")
    // WARNING: Popz'd an empty stack.
    15
    0
    15
    1
    gml_Script_c_soundplay_x(64, 0.5, 2)
    gml_Script_c_var_instance(tv, "sprite_index", 474)
    30
    460
    "susie"
    gml_Script_c_msgsetloc(0, "\\EA* Heh^1, maybe ICE-E The Movie's more your speed^1, huh^1, Kris?/", "obj_ch2_scene32_slash_Step_0_gml_407_0")
    gml_Script_c_msgnextloc("\\E9* HAHAHAHA!!^1! HAHAHAHA!!!/", "obj_ch2_scene32_slash_Step_0_gml_408_0")
    gml_Script_c_msgnextloc("\\E7* Hahahaha..^1. haha..^1. ha.../", "obj_ch2_scene32_slash_Step_0_gml_409_0")
    gml_Script_c_msgnextloc("\\EQ* Heh./%", "obj_ch2_scene32_slash_Step_0_gml_410_0")
    // WARNING: Popz'd an empty stack.
    su
    459
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* It's been a good day^1, huh^1, Kris?/", "obj_ch2_scene32_slash_Step_0_gml_417_0")
    gml_Script_c_msgnextloc("\\EQ* You^1, Ralsei^1, Lancer^1, everyone.../", "obj_ch2_scene32_slash_Step_0_gml_418_0")
    gml_Script_c_msgnextloc("\\EA* It's..^1. just cool hanging out together^1, right?/", "obj_ch2_scene32_slash_Step_0_gml_419_0")
    gml_Script_c_msgnextloc("\\EQ* ..^1. that's why^1, y'know..^1. Don't you think we should.../%", "obj_ch2_scene32_slash_Step_0_gml_420_0")
    // WARNING: Popz'd an empty stack.
    460
    "susie"
    gml_Script_c_msgsetloc(0, "\\E7* Try to have them come to OUR world?/", "obj_ch2_scene32_slash_Step_0_gml_426_0")
    gml_Script_c_msgnextloc("\\E9* C'mon^1, think about how much better it would be!/", "obj_ch2_scene32_slash_Step_0_gml_427_0")
    gml_Script_c_msgnextloc("\\E2* Ralsei could do our homework..^1. Lancer could live under your bed.../%", "obj_ch2_scene32_slash_Step_0_gml_428_0")
    // WARNING: Popz'd an empty stack.
    su
    459
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* We could all walk to school together.../", "obj_ch2_scene32_slash_Step_0_gml_435_0")
    gml_Script_c_msgnextloc("\\E9* It'd..^1. be perfect^1, y'know?/%", "obj_ch2_scene32_slash_Step_0_gml_436_0")
    // WARNING: Popz'd an empty stack.
    1165
    // WARNING: Popz'd an empty stack.
}
if (con == 5)
{
}
else
    var _temp_local_var_13 = 0
con = 99
"susie"
gml_Script_c_msgsetloc(0, "\\EA* ..^1. Well^1, whatever^1, let's just get back to watching./%", "obj_ch2_scene32_slash_Step_0_gml_449_0")
// WARNING: Popz'd an empty stack.
458
0
0
15
1
gml_Script_c_soundplay_x(64, 0.5, 2)
gml_Script_c_var_instance(tv, "sprite_index", 473)
10
459
150
"susie"
gml_Script_c_msgsetloc(0, "\\EA* So the festival is coming up^1, right?/", "obj_ch2_scene32_slash_Step_0_gml_467_0")
gml_Script_c_msgnextloc("\\EL* That thing where the town becomes..^1. a carnival./", "obj_ch2_scene32_slash_Step_0_gml_468_0")
gml_Script_c_msgnextloc("\\E2* Stupid^1, right?/%", "obj_ch2_scene32_slash_Step_0_gml_469_0")
// WARNING: Popz'd an empty stack.
120
1089
// WARNING: Popz'd an empty stack.
if (con == 10)
{
}
else
    var _temp_local_var_12 = 0
if 1
{
    global.filechoice += 3
    // WARNING: Popz'd an empty stack.
    global.filechoice -= 3
    susie_snore = 0
    con = 40
    if (debug_skip == 0)
    {
        "top"
        "susie"
        gml_Script_c_msgsetloc(0, "\\E5* ... Look^1, let's just go back to watching TV!/%", "obj_ch2_scene32_slash_Step_0_gml_488_0")
        // WARNING: Popz'd an empty stack.
        458
        0
        0
        15
        1
        gml_Script_c_var_instance(tv, "sprite_index", 475)
        gml_Script_c_soundplay_x(64, 0.5, 2)
        10
        459
        "susie"
        gml_Script_c_msgsetloc(0, "\\E2* Now this is what I'm talking about!/", "obj_ch2_scene32_slash_Step_0_gml_505_0")
        gml_Script_c_msgnextloc("\\EY* A giant monster movie special!/", "obj_ch2_scene32_slash_Step_0_gml_506_0")
        gml_Script_c_msgnextloc("\\EK* (Always liked them better than the giant human movies.)/", "obj_ch2_scene32_slash_Step_0_gml_507_0")
        gml_Script_c_msgnextloc("\\E2* Now THIS is something we can MARATHON!/", "obj_ch2_scene32_slash_Step_0_gml_508_0")
        gml_Script_c_msgnextloc("\\EQ* Are you READY Kris?/", "obj_ch2_scene32_slash_Step_0_gml_509_0")
        gml_Script_c_msgnextloc("\\EY* For 12 hours of building-bashing^1, car-crunching action!?/", "obj_ch2_scene32_slash_Step_0_gml_510_0")
        gml_Script_c_msgnextloc("\\E5* 'cause we are LOCKED IN. Got it?/", "obj_ch2_scene32_slash_Step_0_gml_511_0")
        gml_Script_c_msgnextloc("\\EH* I better not see you move until your eyes are bloodshot!/", "obj_ch2_scene32_slash_Step_0_gml_512_0")
        gml_Script_c_msgnextloc("\\E9* Heheheh!/%", "obj_ch2_scene32_slash_Step_0_gml_513_0")
        // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
        gml_Script_c_soundplay_x(51, 0.9, 0.8)
        gml_Script_c_msgsetloc(0, "\\EA* Now lemme just..^1. get comfortable^1, here^1, and.../%", "obj_ch2_scene32_slash_Step_0_gml_514_0")
        // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
        gml_Script_c_soundplay_x(51, 0.9, 0.8)
        15
        // WARNING: Popz'd an empty stack.
        gml_Script_c_soundplay_x(51, 0.9, 0.8)
        40
        gml_Script_c_msgsetloc(0, "\\E7* There!/%", "obj_ch2_scene32_slash_Step_0_gml_515_0")
        // WARNING: Popz'd an empty stack.
        90
        gml_Script_c_soundplay_x(110, 1, 0.9)
        // WARNING: Popz'd an empty stack.
        su
        461
        0.05
        "free"
        110
        gml_Script_c_var_instance(id, "susie_snore", 1)
        gml_Script_c_var_instance(id, "end_game", 1)
        "no_name"
        gml_Script_c_msgsetloc(0, "* (... Susie fell asleep.)/%", "obj_ch2_scene32_slash_Step_0_gml_530_0")
        // WARNING: Popz'd an empty stack.
        210
        kr
        446
        51
        gml_Script_c_setxy(449, 175)
        // WARNING: Popz'd an empty stack.
        gml_Script_c_var_instance(id, "susie_snore", 3)
        gml_Script_c_var_lerp_instance(bgdim, "image_alpha", 0, 1, 300)
        gml_Script_c_var_lerp_instance(chairdim, "image_alpha", 0, 1, 300)
        330
        gml_Script_c_var_instance(id, "susie_snore", 5)
        to
        472
        gml_Script_c_setxy(141, 114)
        0
        0
        gml_Script_c_var_instance(id, "disable_face", 1)
        "toriel"
        gml_Script_c_msgsetloc(0, "* Officer...? Officer...?/%", "obj_ch2_scene32_slash_Step_0_gml_557_0")
        // WARNING: Popz'd an empty stack.
        gml_Script_c_panspeed_wait(-2, 0, 120)
        30
        gml_Script_c_var_instance(id, "disable_face", 1)
        "toriel"
        gml_Script_c_msgsetloc(0, "* Thank goodness^1, I finally got through.../", "obj_ch2_scene32_slash_Step_0_gml_567_0")
        gml_Script_c_msgnextloc("* I thought I saw someone prowling around outside.../", "obj_ch2_scene32_slash_Step_0_gml_568_0")
        gml_Script_c_msgnextloc("* And when I checked our car--/", "obj_ch2_scene32_slash_Step_0_gml_569_0")
        gml_Script_c_msgnextloc("* The tires..^1. looked like they'd been \\cRslashed\\cW./", "obj_ch2_scene32_slash_Step_0_gml_570_0")
        gml_Script_c_msgnextloc("* Officer^1, if you could please come over.../", "obj_ch2_scene32_slash_Step_0_gml_571_0")
        gml_Script_c_msgnextloc("* You will? Soon? Thank you.../%", "obj_ch2_scene32_slash_Step_0_gml_572_0")
        // WARNING: Popz'd an empty stack.
        0
        468
        30
        0.25
        gml_Script_c_walk_wait("d", 2, 10)
        0
        98200
        470
        0
        0.25
        gml_Script_c_walkdirect(444, 125, 100)
        gml_Script_c_panspeed(2, 0, 120)
        100
        // WARNING: Popz'd an empty stack.
        30
        468
        0
        0
        40
        "toriel"
        gml_Script_c_msgsetloc(0, "\\E1* ... they're already asleep.../%", "obj_ch2_scene32_slash_Step_0_gml_649_0")
        // WARNING: Popz'd an empty stack.
        30
        471
        0
        0
        0.25
        gml_Script_c_walk_wait("u", 2, 10)
        10
        0
        gml_Script_c_var_instance(torread, "visible", 1)
        60
        su
        0
        4950
        120
    }
    pamt = 30
    pamtb = 30
    if (debug_skip == 1)
    {
        pamt = 2
        pamtb = 10
        320
    }
    var object_dim = (debug_skip ? pamt : (pamt * 2))
    gml_Script_c_var_instance(id, "align_susie", 1)
    gml_Script_c_var_lerp_instance(tv, "image_alpha", 1, 0, object_dim)
    gml_Script_c_var_lerp_instance(torread, "image_alpha", 1, 0, object_dim)
    gml_Script_c_var_lerp_instance(torsleep, "image_alpha", 0, 1, object_dim)
    gml_Script_c_var_lerp_instance(bgdark, "image_alpha", 0, 1, object_dim)
    gml_Script_c_var_lerp_instance(darkcouch, "image_alpha", 0, 1, object_dim)
    gml_Script_c_var_lerp_instance(krissleep, "image_alpha", 0, 1, object_dim)
    gml_Script_c_var_lerp_instance(susleep, "image_alpha", 0, 1, object_dim)
    gml_Script_c_var_lerp_instance(su_actor, "image_alpha", 1, 0, object_dim)
    gml_Script_c_var_instance(id, "hide_border", 1)
    object_dim
    gml_Script_c_var_instance(id, "removefg", 1)
    (pamt * 10)
    kr
    0
    1
    gml_Script_c_var_instance(krissleep, "visible", 0)
    gml_Script_c_setxy(427, 167)
    448
    0
    0.125
    32
    0
    4
    180
    5
    110
    // WARNING: Popz'd an empty stack.
    45
    110
    // WARNING: Popz'd an empty stack.
    45
    110
    // WARNING: Popz'd an empty stack.
    30
    110
    // WARNING: Popz'd an empty stack.
    20
    110
    // WARNING: Popz'd an empty stack.
    10
    110
    // WARNING: Popz'd an empty stack.
    5
    110
    // WARNING: Popz'd an empty stack.
    4
    110
    // WARNING: Popz'd an empty stack.
    3
    repeat (5)
    {
        gml_Script_c_soundplay(110)
        2
    }
    15
    gml_Script_c_walkdirect(430, 167, 2)
    60
    gml_Script_c_instance(460, 177, 365)
    45
    0
    15
    90
    17
    0.5
    2
    156
    2
    // WARNING: Popz'd an empty stack.
    110
    8
    23
    0
    120
    0
    0
    444
    gml_Script_c_setxy(470, 165)
    gml_Script_c_shakestep(0, -5)
    (pamt * 3)
    3
    10
    gml_Script_c_var_instance(id, "show_door_open", 1)
    490
    gml_Script_c_setxy(573, 140)
    3
    191
    60
    3
    10
    489
    1
    3
    gml_Script_c_var_instance(tvstatic2, "image_alpha", 1)
    gml_Script_c_setxy(495, 123)
    190
    60
    3
    10
    452
    "x"
    3
    gml_Script_c_setxy(527, 155)
    191
    60
    "x"
    40
    0.1
    gml_Script_c_walkdirect_wait(484, 140, 30)
    0
    0
    30
    0
    gml_Script_c_var_instance(fountainkris, "active", 1)
    gml_Script_c_var_instance(fountainkris, "x", 478)
    gml_Script_c_var_instance(fountainkris, "y", 118)
    160
    gml_Script_c_var_lerp_instance(susleep, "image_blend", 16777215, 0, 5)
    gml_Script_c_var_lerp_instance(darkcouch, "image_blend", 16777215, 0, 5)
    gml_Script_c_var_lerp_instance(torsleep_flash, "image_alpha", 0, 1, 5)
    gml_Script_c_var_lerp_instance(room_flash, "image_alpha", 0, 0.9, 5)
    170
    gml_Script_c_var_lerp_instance(susleep, "image_blend", 0, 16777215, 5)
    gml_Script_c_var_lerp_instance(darkcouch, "image_blend", 0, 16777215, 5)
    gml_Script_c_var_lerp_instance(torsleep_flash, "image_alpha", 1, 0, 5)
    gml_Script_c_var_lerp_instance(room_flash, "image_alpha", 0.9, 0, 5)
    240
    10
    gml_Script_c_var_instance(fountainkris, "drawkris", 0)
    1
    gml_Script_c_setxy(468, 148)
    gml_Script_c_shakestep(-10, 8)
    30
    gml_Script_c_shakestep(-4, 8)
    30
    448
    gml_Script_c_setxy(427, 167)
    5
    // WARNING: Popz'd an empty stack.
    190
    60
    6
    5
    8
    60
    9
    5
    10
    5
    11
    5
    12
    60
    13
    5
    14
    5
    3
    5
    2
    5
    1
    120
    gml_Script_c_var_instance(tvstatic, "depth", 5)
    gml_Script_c_var_lerp_instance(tvstatic, "image_alpha", 0, 1, 180)
    240
    gml_Script_c_var_lerp_instance(tvsmile, "image_alpha", 0, 1, 180)
    gml_Script_c_var_instance(id, "fade_out_deep", 1)
    gml_Script_c_mus2("initloop", "tv_noise.ogg", 0)
    gml_Script_c_mus2("volume", 0, 0)
    gml_Script_c_mus2("volume", 1, 180)
    360
    gml_Script_c_var_instance(tvstatic, "image_alpha", 0)
    gml_Script_c_var_instance(tvsmile, "image_alpha", 0)
    gml_Script_c_var_instance(id, "return_title", 1)
}
if fade_out_deep
{
    fade_out_deep = 0
    if 1003
    {
        with (obj_kris_fountain)
        {
            if (fountain_sound != -4)
                audio_sound_gain(fountain_sound, 0, 3000)
        }
    }
}
if return_title
{
    credits_timer++
    if (credits_timer == 1)
        // WARNING: Popz'd an empty stack.
    if (credits_timer == 180)
    {
        if 1003
            1003
        244
    }
}
if (removefg == 1)
{
    removefg = 0
    if "Compatibility_Tiles_Depth_10000"
        "Compatibility_Tiles_Depth_10000"
}
if (con == 40)
    con = 49
if (con == 50)
{
}
else
    var _temp_local_var_10 = 0
con = 60
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
if (con == 60 && (!895))
{
    con = 0
    global.interact = 0
    global.facing = 0
}
if disable_face
{
    disable_face = 0
    global.fc = 0
}
if enable_face
{
    enable_face = 0
    global.fc = 1
}
if footsteps
{
    footsteps = 0
    var steps = snd_step1
    audio_sound_gain(steps, footsteps_volume, 0)
    alarm[1] = 30
}
if (susie_snore > 0)
{
    if (susie_snore == 1)
    {
        snore = 202
        susie_snore = 2
    }
    if (susie_snore == 3)
    {
        gml_Script_snd_volume(snore, 0, 150)
        susie_snore = 4
    }
    if (susie_snore == 5)
    {
        snore
        susie_snore = 0
    }
}
if show_door_open
{
    show_door_open = 0
    var door_open = gml_Script_scr_marker(588, 98, 491)
    var _temp_local_var_8 = door_open
    image_index = 1
    depth = 4900000
}
if align_susie
{
    align_susie = 0
    susleep.image_index = su_actor.image_index
}
if end_game
{
    end_game = 0
    _remfilechoice = global.filechoice
    global.filechoice += 3
    global.filechoice = _remfilechoice
}
