if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
    con = 1
    global.interact = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    la = 5
    la_actor = gml_Script_instance_create(1220, 184, obj_actor)
    gml_Script_scr_actor_setup(la, la_actor, "lancer")
    la_actor.sprite_index = spr_lancer_ut
    la
    0
    nl = 6
    nl_actor = gml_Script_instance_create((obj_mainchara.x - 500), (obj_mainchara.y - 80), obj_actor)
    gml_Script_scr_actor_setup(nl, nl_actor, "lancer")
    nl_actor.sprite_index = spr_lancer_rt
    nl
    0
    // WARNING: Popz'd an empty stack.
}
if (con == 2)
{
    15
    kr
    gml_Script_c_emote("!", 30)
    su
    gml_Script_c_emote("!", 30)
    ra
    gml_Script_c_emote("!", 30)
    "susie"
    gml_Script_c_msgsetloc(0, "\\E7* Hey^1, is that... Lancer!?/%", "obj_cutscene_test_slash_Step_0_gml_51_0")
    // WARNING: Popz'd an empty stack.
    1
    1
    gml_Script_c_panspeed(5, 0, 35)
    kr
    gml_Script_c_walkdirect(936, 240, 15)
    gml_Script_c_delayfacing(16, "r")
    su
    gml_Script_c_walkdirect(976, 186, 15)
    gml_Script_c_delayfacing(16, "r")
    ra
    gml_Script_c_walkdirect(930, 138, 15)
    gml_Script_c_delayfacing(16, "r")
    16
    "bottom"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* What are you up to^1, buddy?/%", "obj_cutscene_test_slash_Step_0_gml_78_0")
    // WARNING: Popz'd an empty stack.
    la
    "l"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E1* Lancer?/%", "obj_cutscene_test_slash_Step_0_gml_87_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_lerp("image_angle", "init", 360, 30)
    186
    gml_Script_c_mus2("initloop", "lancer.ogg", 0)
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E2* Ho ho ho!!^1! Susie!!!/%", "obj_cutscene_test_slash_Step_0_gml_96_0")
    // WARNING: Popz'd an empty stack.
    60
    "stop"
    "free_all"
    104
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E1* Who says I'm Lancer?/", "obj_cutscene_test_slash_Step_0_gml_107_0")
    gml_Script_c_facenext("susie", 0)
    gml_Script_c_msgnextloc("\\E0* Of course you're Lancer.../", "obj_cutscene_test_slash_Step_0_gml_109_0")
    gml_Script_c_facenext("lancer", 3)
    gml_Script_c_msgnextloc("\\E3* ..^1. then who's that?/%", "obj_cutscene_test_slash_Step_0_gml_111_0")
    // WARNING: Popz'd an empty stack.
    15
    gml_Script_c_panspeed(-5, 0, 10)
    nl
    gml_Script_c_walkdirect(760, 210, 15)
    30
    kr
    "l"
    gml_Script_c_emote("!", 30)
    su
    "l"
    gml_Script_c_emote("!", 30)
    ra
    "l"
    gml_Script_c_emote("!", 30)
    30
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E1* Hoho!/%", "obj_cutscene_test_slash_Step_0_gml_139_0")
    // WARNING: Popz'd an empty stack.
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* Alright^1, are you Lancer then!?/", "obj_cutscene_test_slash_Step_0_gml_145_0")
    gml_Script_c_facenext("lancer", 8)
    gml_Script_c_msgnextloc("\\E8* Yes I am!/%", "obj_cutscene_test_slash_Step_0_gml_147_0")
    // WARNING: Popz'd an empty stack.
    ra
    1506
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\EL* Which one of you said that!?/%", "obj_cutscene_test_slash_Step_0_gml_156_0")
    // WARNING: Popz'd an empty stack.
    la
    5
    nl
    gml_Script_c_var_lerp("image_angle", "init", 360, 30)
    30
    la
    0
    "l"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E1* I did!/", "obj_cutscene_test_slash_Step_0_gml_174_0")
    gml_Script_c_facenext("susie", 4)
    gml_Script_c_msgnextloc("\\E4* That's it^1, I'm taking a closer look!/%", "obj_cutscene_test_slash_Step_0_gml_176_0")
    // WARNING: Popz'd an empty stack.
    la
    "l"
    ra
    "d"
    kr
    "d"
    su
    gml_Script_c_walkdirect((obj_mainchara.x + 280), (obj_mainchara.y - 80), 20)
    60
    gml_Script_c_walkdirect(826, 190, 30)
    60
    gml_Script_c_walkdirect(976, 186, 30)
    gml_Script_c_delayfacing(31, "d")
    60
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E0* Umm^1, so what did you figure out?/", "obj_cutscene_test_slash_Step_0_gml_209_0")
    gml_Script_c_facenext("susie", 3)
    gml_Script_c_msgnextloc("\\E3* Uhhh.../%", "obj_cutscene_test_slash_Step_0_gml_211_0")
    // WARNING: Popz'd an empty stack.
    su
    831
    "susie"
    gml_Script_c_msgsetloc(0, "\\E9* I'll just be friends with both of them!/%", "obj_cutscene_test_slash_Step_0_gml_220_0")
    // WARNING: Popz'd an empty stack.
    ra
    811
    0
    0.25
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E2* That's the attitude!/", "obj_cutscene_test_slash_Step_0_gml_231_0")
    gml_Script_c_facenext("lancer", 1)
    gml_Script_c_msgnextloc("\\E1* Hohoho^1! Yeah^1, it is!/%", "obj_cutscene_test_slash_Step_0_gml_233_0")
    // WARNING: Popz'd an empty stack.
    la
    2270
    0
    0.5
    188
    34
    ra
    1506
    su
    995
    kr
    "r"
    la
    0
    "susie"
    gml_Script_c_msgsetloc(0, "\\ER* What the!?/", "obj_cutscene_test_slash_Step_0_gml_259_0")
    gml_Script_c_msgnextloc("\\EZ* L-Lancer!?/%", "obj_cutscene_test_slash_Step_0_gml_260_0")
    // WARNING: Popz'd an empty stack.
    kr
    "l"
    su
    "l"
    ra
    1
    "l"
    "lancer"
    gml_Script_c_msgsetloc(0, "\\E2* That was the fake one./", "obj_cutscene_test_slash_Step_0_gml_274_0")
    gml_Script_c_facenext("ralsei", 2)
    gml_Script_c_msgnextloc("\\E2* Oh^1, okay./%", "obj_cutscene_test_slash_Step_0_gml_276_0")
    // WARNING: Popz'd an empty stack.
    nl
    gml_Script_c_walkdirect(450, 205, 15)
    30
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    gml_Script_c_panobj(kr_actor, 10)
    10
    0
    // WARNING: Popz'd an empty stack.
}
if (con == 2 && (!895))
{
    con = 3
    global.interact = 0
    global.facing = 0
}
