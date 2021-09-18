var _temp_local_var_1, _temp_local_var_5, _temp_local_var_16, _temp_local_var_17;
if (con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 0
}
if (con == 1)
{
    con = 2
    obj_mainchara.x = 300
    obj_mainchara.y = 226
    with (obj_npc_mansion_room)
    {
        if (sprite_index == spr_dw_mansion_room_kris_talk_tube)
            visible = false
    }
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    cagebars = gml_Script_scr_dark_marker(280, 168, 170)
    cagebars.depth = 96830
    kr
    "d"
    (cagebars.depth + 10)
    gml_Script_c_var_instance(talktube, "visible", 0)
    su = 2
    su_actor = gml_Script_instance_create(437, 150, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_dw_mansion_room_kris_talk_tube
    su
    0
    0
}
if (con == 2)
{
    con = 3
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30)
    90
    gml_Script_c_var_instance(queen_monitor, "turnon", 1)
    "queen"
    gml_Script_c_msgsetloc(0, "* How Do You Like Your New Room Units/", "obj_ch2_scene17b_slash_Step_0_gml_60_0")
    gml_Script_c_msgnextloc("\\ED* As You Can See They Are Perfectly Suited To Your Interests/", "obj_ch2_scene17b_slash_Step_0_gml_61_0")
    gml_Script_c_msgnextloc("\\E1* (Which I Gleaned From Your Internet Search Results)/", "obj_ch2_scene17b_slash_Step_0_gml_62_0")
    gml_Script_c_msgnextloc("\\EC* I Estimate You Will Have No Desire To Leave/", "obj_ch2_scene17b_slash_Step_0_gml_63_0")
    gml_Script_c_msgnextloc("\\E1* Please Tantilize Yourself With Your Surroundings/", "obj_ch2_scene17b_slash_Step_0_gml_64_0")
    gml_Script_c_msgnextloc("\\E7* And Wait Patiently While I Dominate The World/", "obj_ch2_scene17b_slash_Step_0_gml_65_0")
    gml_Script_c_msgnextloc("\\EC* Toodles/%", "obj_ch2_scene17b_slash_Step_0_gml_66_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(queen_monitor, "turnoff", 1)
    60
    kr
    "r"
    su
    0
    0.25
    "susie"
    gml_Script_c_msgsetloc(0, "\\EP* K..^1. Kris!? Hey!^1! Can you hear me!?/", "obj_ch2_scene17b_slash_Step_0_gml_81_0")
    gml_Script_c_msgnextloc("\\E0* Looks like there's some way to communicate between rooms./%", "obj_ch2_scene17b_slash_Step_0_gml_82_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    0
    gml_Script_c_var_instance(queen_monitor, "turnon", 1)
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* Convenient Isn't It I Really Thought Of Everything/%", "obj_ch2_scene17b_slash_Step_0_gml_93_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(queen_monitor, "turnoff", 1)
    su
    0.25
    "susie"
    gml_Script_c_msgsetloc(0, "\\EH* Shut up!!/", "obj_ch2_scene17b_slash_Step_0_gml_103_0")
    gml_Script_c_msgnextloc("\\E1* Anyway^1, let's think of some way to get out of here!!/", "obj_ch2_scene17b_slash_Step_0_gml_104_0")
    gml_Script_c_msgnextloc("\\E0* Ralsei^1, you got any bright ideas...?/", "obj_ch2_scene17b_slash_Step_0_gml_105_0")
    gml_Script_c_msgnextloc("\\E0* .../", "obj_ch2_scene17b_slash_Step_0_gml_106_0")
    gml_Script_c_msgnextloc("\\EC* Hey..^1. where the hell's Ralsei!?/%", "obj_ch2_scene17b_slash_Step_0_gml_107_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    0
    kr
    "d"
    198
    su
    gml_Script_c_emote("!", 60)
    kr
    "r"
    60
    su
    0.25
    "susie"
    gml_Script_c_msgsetloc(0, "\\EC* Damn^1, that soft-yet-tender screaming -/", "obj_ch2_scene17b_slash_Step_0_gml_133_0")
    gml_Script_c_msgnextloc("\\EK* Kris^1, that's gotta be him!!/", "obj_ch2_scene17b_slash_Step_0_gml_134_0")
    gml_Script_c_msgnextloc("\\EN* Quick^1, we gotta think of some way to get out!!/", "obj_ch2_scene17b_slash_Step_0_gml_135_0")
    gml_Script_c_msgnextloc("\\EL* Anything you smuggled in that might help us!?/%", "obj_ch2_scene17b_slash_Step_0_gml_136_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    0
    gml_Script_c_var_instance(talktube, "visible", 1)
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 3 && (!895))
{
    con = 6
    global.interact = 0
    global.facing = 0
}
if (con == 6 && global.interact != 5)
{
    lancertimer++
    if (lancertimer >= 300)
        lancercon = 1
    if ((lancertimer % 450) == 0)
    {
        reminder++
        if (reminder <= 3)
            con = 7
    }
}
if (lancercon == 1 && global.interact == 0)
{
    talktimer++
    if ((talktimer % talkinterval) == 0 && (!lancertalking))
    {
        talkstart = talktimer
        lancertalking = 1
    }
    if lancertalking
    {
        29
        if (talktimer >= (talkstart + 5))
        {
            lancertalking = 0
            talkinterval = choose(90, 150, 240)
        }
    }
}
if (con == 7)
{
}
else
    var _temp_local_var_17 = 0
con = 3
global.interact = 1
cutscene_master = 
// WARNING: Popz'd an empty stack.
gml_Script_c_var_instance(talktube, "visible", 1)
kr
"r"
if (reminder == 1)
{
    gml_Script_c_var_instance(talktube, "image_speed", 0.25)
    "susie"
    gml_Script_c_msgsetloc(0, "\\E6* Hey^1, Kris..^1. do you hear something...?/", "obj_ch2_scene17b_slash_Step_0_gml_220_0")
    gml_Script_c_msgnextloc("\\E1* Sounds like it's coming from your..^1. pocket?/", "obj_ch2_scene17b_slash_Step_0_gml_221_0")
    gml_Script_c_msgnextloc("\\E0* Your phone going off your something?/%", "obj_ch2_scene17b_slash_Step_0_gml_222_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(talktube, "image_index", 0)
    gml_Script_c_var_instance(talktube, "image_speed", 0)
}
if (reminder == 2)
{
    gml_Script_c_var_instance(talktube, "image_speed", 0.25)
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* Hey^1, Kris..^1. uh.../", "obj_ch2_scene17b_slash_Step_0_gml_234_0")
    gml_Script_c_msgnextloc("\\EC* Does your phone usually^1, uh..^1. yell...?/%", "obj_ch2_scene17b_slash_Step_0_gml_235_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(talktube, "image_index", 0)
    gml_Script_c_var_instance(talktube, "image_speed", 0)
}
if (reminder == 3)
{
    gml_Script_c_var_instance(talktube, "image_speed", 0.25)
    "susie"
    gml_Script_c_msgsetloc(0, "\\EC* Hey^1, Kris^1, pick up your damn phone./", "obj_ch2_scene17b_slash_Step_0_gml_247_0")
    gml_Script_c_msgnextloc("\\EK* Isn't it with your KEYs or whatever?/%", "obj_ch2_scene17b_slash_Step_0_gml_248_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(talktube, "image_index", 0)
    gml_Script_c_var_instance(talktube, "image_speed", 0)
}
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
if (con == 10)
{
    con = 11
    global.interact = 1
    lancercon = -1
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(talktube, "visible", 0)
    su = 2
    su_actor = gml_Script_instance_create(437, 150, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_dw_mansion_room_kris_talk_tube
    la = 3
    la_actor = gml_Script_instance_create(319, 252, obj_actor)
    gml_Script_scr_actor_setup(la, la_actor, "lancer")
    la_actor.sprite_index = spr_cutscene_06_lancer_card
    la
    0
    (cagebars.depth - 10)
    0
    0.5
}
if (con == 11)
{
    con = 12
    kr
    "d"
    15
    104
    la
    gml_Script_c_walk_wait("d", 2, 45)
    1
    1284
    gml_Script_c_setxy(281, 307)
    1
    2
    30
    0
    "u"
    "top"
    gml_Script_c_mus2("initloop", "lancer.ogg", 0)
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E1* Missed me???/", "obj_ch2_scene17b_slash_Step_0_gml_307_0")
    gml_Script_c_msgnextloc("\\E3* Because I missed you!^1! Ha ha ha!!/%", "obj_ch2_scene17b_slash_Step_0_gml_308_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    0.25
    "susie"
    gml_Script_c_msgsetloc(0, "\\E7* Lancer!? That you!? I thought you ditched us!/%", "obj_ch2_scene17b_slash_Step_0_gml_316_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    0
    la
    "d"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E3* No!^1! I love ditches but I would never ditch you!!/%", "obj_ch2_scene17b_slash_Step_0_gml_329_0")
    // WARNING: Popz'd an empty stack.
    "u"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E8* I was simply relaxing in Kris's spacious Pants Hole./%", "obj_ch2_scene17b_slash_Step_0_gml_336_0")
    // WARNING: Popz'd an empty stack.
    su
    0.25
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* Uhh^1, \"pocket.\"/%", "obj_ch2_scene17b_slash_Step_0_gml_343_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    0
    la
    gml_Script_c_walkdirect(200, 253, 10)
    gml_Script_c_delayfacing(11, "r")
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E1* Yes!^1! And I saw it all!!/", "obj_ch2_scene17b_slash_Step_0_gml_357_0")
    gml_Script_c_msgnextloc("\\E3* Pants. Lint. Various Items./%", "obj_ch2_scene17b_slash_Step_0_gml_358_0")
    // WARNING: Popz'd an empty stack.
    "d"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E2* A wild Mom put you in some Shock Cages./%", "obj_ch2_scene17b_slash_Step_0_gml_365_0")
    // WARNING: Popz'd an empty stack.
    su
    0.25
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* Hahah^1, yeah. We're trapped^1, so^1, uh.../", "obj_ch2_scene17b_slash_Step_0_gml_372_0")
    gml_Script_c_msgnextloc("\\E7* Hey^1, wait didja see us on the roller coaster!?/%", "obj_ch2_scene17b_slash_Step_0_gml_373_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    0
    la
    "r"
    gml_Script_c_jump(220, 239, 10, 10)
    159
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E3* Yes!!^1! It was amazing!^1! My first coaster ride!!!/%", "obj_ch2_scene17b_slash_Step_0_gml_386_0")
    // WARNING: Popz'd an empty stack.
    2
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E2* Ha ha!^1! I love getting nauseous with friends!!/%", "obj_ch2_scene17b_slash_Step_0_gml_393_0")
    // WARNING: Popz'd an empty stack.
    187
    65
    su
    0.25
    60
    su
    0
    la
    0
    "d"
    30
    "r"
    su
    0.25
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* Hey you should probably^1, uh^1, free us./%", "obj_ch2_scene17b_slash_Step_0_gml_420_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    0
    la
    "d"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E3* Oh right!^1! Yes!!/%", "obj_ch2_scene17b_slash_Step_0_gml_432_0")
    // WARNING: Popz'd an empty stack.
    "r"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E1* You can always rely on a friendly Me.../", "obj_ch2_scene17b_slash_Step_0_gml_439_0")
    gml_Script_c_msgnextloc("\\E3* To make you free!!!/%", "obj_ch2_scene17b_slash_Step_0_gml_440_0")
    // WARNING: Popz'd an empty stack.
    kr
    "u"
    la
    gml_Script_c_walk_wait("u", 10, 12)
    5
    gml_Script_c_var_instance(id, "monitor_on", 1)
    46
    30
    "d"
    "bottom"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E2* Haha!^1! I have no idea how to use this!!/%", "obj_ch2_scene17b_slash_Step_0_gml_460_0")
    // WARNING: Popz'd an empty stack.
    "u"
    159
    gml_Script_c_jump(220, 79, 10, 10)
    10
    168
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E3* \"Request..^1. new item for room\"?? That sounds good./%", "obj_ch2_scene17b_slash_Step_0_gml_470_0")
    // WARNING: Popz'd an empty stack.
    167
    0.25
    0
    gml_Script_c_walk("r", 5, 20)
    gml_Script_c_var_instance(id, "lancer_typing_start", 1)
    "lancer"
    gml_Script_c_msgsetloc(0, "* Item request: Shovel./%", "obj_ch2_scene17b_slash_Step_0_gml_479_0")
    // WARNING: Popz'd an empty stack.
    20
    gml_Script_c_var_instance(id, "lancer_typing_stop", 1)
    // WARNING: Popz'd an empty stack.
    0.25
    0
    gml_Script_c_walk("l", 5, 20)
    gml_Script_c_var_instance(id, "lancer_typing_start", 1)
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E3* Quantity: Let's say..^1. 999./%", "obj_ch2_scene17b_slash_Step_0_gml_487_0")
    // WARNING: Popz'd an empty stack.
    20
    gml_Script_c_var_instance(id, "lancer_typing_stop", 1)
    // WARNING: Popz'd an empty stack.
    159
    gml_Script_c_jump(220, 143, 10, 10)
    1289
    1
    143
    gml_Script_c_var_instance(id, "overload", 1)
    15
    gml_Script_c_var_instance(id, "open_capsule", 1)
    46
    20
    61
    // WARNING: Popz'd an empty stack.
    30
    kr
    "d"
    la
    "d"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E1* Hoho!^1! It worked!!/%", "obj_ch2_scene17b_slash_Step_0_gml_512_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walkdirect_wait(198, 285, 15)
    gml_Script_c_walkdirect_wait(282, 284, 10)
    "u"
    "top"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E1* Let's go^1, blue person whose name I know!/%", "obj_ch2_scene17b_slash_Step_0_gml_523_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_mus2("volume", 0, 30)
    2
    gml_Script_c_walk_wait("d", 6, 40)
    "free"
    gml_Script_c_var_instance(talktube, "visible", 1)
}
if (con == 12)
{
}
else
    var _temp_local_var_16 = 0
con = 50
var _temp_local_var_5 = cage_collider
