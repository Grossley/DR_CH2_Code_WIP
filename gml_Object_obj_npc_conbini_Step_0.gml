var _temp_local_var_4;
if (con == -1 && obj_mainchara.x < 130)
    con = 0
if (con == 0 && obj_mainchara.x > 140)
{
    cutscene_master = 
    to = 0
    to_actor = gml_Script_instance_create(365, 250, obj_actor)
    gml_Script_scr_actor_setup(to, to_actor, "toriel")
    to_actor.sprite_index = spr_toriel_u
    as = 2
    as_actor = gml_Script_instance_create(360, 250, obj_actor)
    gml_Script_scr_actor_setup(as, as_actor, "asgore")
    as_actor.sprite_index = spr_asgoreu
    sa = 3
    sa_actor = gml_Script_instance_create(sans.x, sans.y, obj_actor)
    gml_Script_scr_actor_setup(sa, sa_actor, "sans")
    sa_actor.sprite_index = spr_sans_d
    sa_actor.auto_depth = 0
    sa_actor.depth = (counter.depth + 10)
    sans.visible = false
    global.interact = 1
    con = 1
}
if (con == 1)
{
    con = 2
    "bottom"
    to
    gml_Script_c_setxy(370, 145)
    gml_Script_c_walk("u", 2, 45)
    1
    gml_Script_c_panspeed(8, 0, 25)
    26
    "sans"
    gml_Script_c_msgsetloc(0, "\\E5* hey hey. forget something?/", "obj_npc_conbini_slash_Step_0_gml_55_0")
    gml_Script_c_facenext("toriel", 1)
    gml_Script_c_msgnextloc("\\E1* Why^1, er^1, yes. I think I left my eggs on the counter./", "obj_npc_conbini_slash_Step_0_gml_57_0")
    gml_Script_c_facenext("sans", "2")
    gml_Script_c_msgnextloc("\\E2* guess your memory's not what it's \"cracked\" up to be./", "obj_npc_conbini_slash_Step_0_gml_59_0")
    gml_Script_c_facenext("toriel", 0)
    gml_Script_c_msgnextloc("\\E0* Hee hee hee.../", "obj_npc_conbini_slash_Step_0_gml_61_0")
    gml_Script_c_msgnextloc("\\E4* There is really egg on my face now^1, is there not?/", "obj_npc_conbini_slash_Step_0_gml_62_0")
    gml_Script_c_facenext("sans", "5")
    gml_Script_c_msgnextloc("\\E5* eh. you're egg-scused./", "obj_npc_conbini_slash_Step_0_gml_64_0")
    gml_Script_c_facenext("toriel", "4")
    gml_Script_c_msgnextloc("\\E4* Now it sounds as if you are egging me on./", "obj_npc_conbini_slash_Step_0_gml_66_0")
    gml_Script_c_facenext("sans", "5")
    gml_Script_c_msgnextloc("\\E5* egg on or egg off^1, i eggspect a lot from you./", "obj_npc_conbini_slash_Step_0_gml_68_0")
    gml_Script_c_facenext("toriel", "4")
    gml_Script_c_msgnextloc("\\E4* Well^1, I am eggceptional. Hee hee.../%", "obj_npc_conbini_slash_Step_0_gml_70_0")
    // WARNING: Popz'd an empty stack.
    "l"
    sa
    1079
    as
    gml_Script_c_walk("u", 8, 20)
    "asgore"
    gml_Script_c_msgsetloc(0, "\\E4* And don't forget me^1, your eggs-husband./%", "obj_npc_conbini_slash_Step_0_gml_82_0")
    // WARNING: Popz'd an empty stack.
    60
    sa
    1080
    to
    "d"
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E1* Err^1, hello^1, Asgore./", "obj_npc_conbini_slash_Step_0_gml_94_0")
    gml_Script_c_facenext("asgore", "0")
    gml_Script_c_msgnextloc("\\E0* Tori^1, I didn't expect to see you here^1, but^1, I.../", "obj_npc_conbini_slash_Step_0_gml_96_0")
    gml_Script_c_msgnextloc("\\E6* I have some extra flowers^1, and I was wondering if.../", "obj_npc_conbini_slash_Step_0_gml_97_0")
    gml_Script_c_facenext("toriel", "1")
    gml_Script_c_msgnextloc("\\E1* Oh^1, I was just about to go^1, actually./", "obj_npc_conbini_slash_Step_0_gml_99_0")
    gml_Script_c_facenext("asgore", "5")
    gml_Script_c_msgnextloc("\\E5* Ah^1, haha^1, oh^1! Sure^1! Home is where the heart is^1! Haha!/%", "obj_npc_conbini_slash_Step_0_gml_101_0")
    // WARNING: Popz'd an empty stack.
    to
    gml_Script_c_walk("d", 3, 35)
    10
    as
    "r"
    0
    0.25
    gml_Script_c_walk_wait("l", 4, 9)
    0
    25
    as
    1
    "d"
    "top"
    "asgore"
    gml_Script_c_msgsetloc(0, "\\E3* Umm^1, so^1, when Asriel comes home.../%", "obj_npc_conbini_slash_Step_0_gml_124_0")
    // WARNING: Popz'd an empty stack.
    to
    "u"
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E1* Yes^1, we should all discuss that together soon./", "obj_npc_conbini_slash_Step_0_gml_131_0")
    gml_Script_c_facenext("asgore", "6")
    gml_Script_c_msgnextloc("\\E6* Onkey donkey^1! Say hi to Kris for me!/", "obj_npc_conbini_slash_Step_0_gml_133_0")
    gml_Script_c_facenext("toriel", "1")
    gml_Script_c_msgnextloc("\\E1* Of course. Have a nice day./%", "obj_npc_conbini_slash_Step_0_gml_135_0")
    // WARNING: Popz'd an empty stack.
    to
    gml_Script_c_walk_wait("d", 4, 30)
    sa
    1077
    as
    gml_Script_c_walk("u", 1, 30)
    gml_Script_c_delayfacing(9, "u")
    31
    "bottom"
    "asgore"
    gml_Script_c_msgsetloc(0, "\\E2* .../", "obj_npc_conbini_slash_Step_0_gml_153_0")
    gml_Script_c_msgnextloc("\\E2* You know what I want^1, bone man./", "obj_npc_conbini_slash_Step_0_gml_154_0")
    gml_Script_c_facenext("sans", "1")
    gml_Script_c_msgnextloc("\\E1* ..^1. yep./", "obj_npc_conbini_slash_Step_0_gml_156_0")
    gml_Script_c_msgnextloc("\\E2* free pickles./", "obj_npc_conbini_slash_Step_0_gml_157_0")
    gml_Script_c_facenext("asgore", "5")
    gml_Script_c_msgnextloc("\\E5* Why^1, thank you!/", "obj_npc_conbini_slash_Step_0_gml_159_0")
    gml_Script_c_msgnextloc("\\E2* .../", "obj_npc_conbini_slash_Step_0_gml_160_0")
    gml_Script_c_msgnextloc("\\E2* Can I ask?/", "obj_npc_conbini_slash_Step_0_gml_161_0")
    gml_Script_c_msgnextloc("\\E2* What kind of flowers^1, do you think^1,/", "obj_npc_conbini_slash_Step_0_gml_162_0")
    gml_Script_c_msgnextloc("\\E3* Would make her remember how she felt before?/", "obj_npc_conbini_slash_Step_0_gml_163_0")
    gml_Script_c_facenext("sans", "2")
    gml_Script_c_msgnextloc("\\E2* uhh.../", "obj_npc_conbini_slash_Step_0_gml_165_0")
    gml_Script_c_msgnextloc("\\E0* maybe you should talk to your plants about that./", "obj_npc_conbini_slash_Step_0_gml_166_0")
    gml_Script_c_facenext("asgore", "5")
    gml_Script_c_msgnextloc("\\E5* Haha^1! Don't worry. They're the first ones I asked!/", "obj_npc_conbini_slash_Step_0_gml_168_0")
    gml_Script_c_msgnextloc("\\E3* They're such good listeners^1, you know. Flowers./", "obj_npc_conbini_slash_Step_0_gml_169_0")
    gml_Script_c_facenext("sans", "5")
    gml_Script_c_msgnextloc("\\E5* well^1, yeah. nothin' like a captive audience./", "obj_npc_conbini_slash_Step_0_gml_171_0")
    gml_Script_c_facenext("asgore", "0")
    gml_Script_c_msgnextloc("\\E0* Yes^1, haha. I even keep them in glass./", "obj_npc_conbini_slash_Step_0_gml_173_0")
    gml_Script_c_facenext("sans", "2")
    gml_Script_c_msgnextloc("\\E2* uh..^1. like that movie./", "obj_npc_conbini_slash_Step_0_gml_175_0")
    gml_Script_c_facenext("asgore", "2")
    gml_Script_c_msgnextloc("\\E2* Yes. It's..^1. It's very similar to that movie./", "obj_npc_conbini_slash_Step_0_gml_177_0")
    gml_Script_c_facenext("sans", "0")
    gml_Script_c_msgnextloc("\\E0* ..^1. well^1, have a good one./", "obj_npc_conbini_slash_Step_0_gml_179_0")
    gml_Script_c_facenext("asgore", "6")
    gml_Script_c_msgnextloc("\\E6* Haha^1! I'm trying!/%", "obj_npc_conbini_slash_Step_0_gml_181_0")
    // WARNING: Popz'd an empty stack.
    as
    gml_Script_c_walk_wait("r", 4, 9)
    gml_Script_c_walk("d", 4, 50)
    50
    gml_Script_c_panspeed(-8, 0, 25)
    26
    if (obj_mainchara.y > 150)
        "top"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* .../", "obj_npc_conbini_slash_Step_0_gml_199_0")
    gml_Script_c_msgnextloc("\\EK* Hey^1, Kris^1, uhh.../", "obj_npc_conbini_slash_Step_0_gml_200_0")
    gml_Script_c_msgnextloc("\\EK* Uhhh...^1. nevermind./%", "obj_npc_conbini_slash_Step_0_gml_201_0")
    // WARNING: Popz'd an empty stack.
    0
    // WARNING: Popz'd an empty stack.
}
if (con == 2 && (!895))
{
    con = 3
    sans.visible = true
    global.interact = 0
    global.facing = 0
    global.flag[308] = 1
}
if interacting
{
}
else
    var _temp_local_var_4 = 0
interacting = 0
global.interact = 0
