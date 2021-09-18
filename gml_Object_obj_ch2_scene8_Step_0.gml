var _temp_local_var_3;
if (con == 1)
{
    global.interact = 1
    global.facing = 2
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    kr_actor.sprite_index = spr_krisu
    su = 1
    su_actor = gml_Script_instance_create(148, 130, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_up_lw
    gml_Script_c_mus2("volume", 0, 30)
    30
    "free"
    su
    "d"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E1* Alright. We're here./%", "obj_ch2_scene8_slash_Step_0_gml_31_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walk_wait("u", 4, 5)
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* School. Goddamn. Project./%", "obj_ch2_scene8_slash_Step_0_gml_35_0")
    // WARNING: Popz'd an empty stack.
    0
    gml_Script_c_delayfacing(31, "l")
    gml_Script_c_walkdirect(175, 116, 30)
    3
    1
    gml_Script_c_walk_wait("l", 4, 15)
    2
    20
    "susie"
    gml_Script_c_msgsetloc(0, "\\EA* Books. God. Damn. Crazy about them./%", "obj_ch2_scene8_slash_Step_0_gml_48_0")
    // WARNING: Popz'd an empty stack.
    1
    15
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene8_slash_Step_0_gml_55_0")
    // WARNING: Popz'd an empty stack.
    1
    "susieunhappy"
    0
    15
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* Hey^1, Kris^1, where the hell IS everybody?/%", "obj_ch2_scene8_slash_Step_0_gml_63_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_delayfacing(15, "u")
    gml_Script_c_walk_wait("r", 4, 15)
    5
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* Something seems kinda..^1. off./%", "obj_ch2_scene8_slash_Step_0_gml_71_0")
    // WARNING: Popz'd an empty stack.
    "r"
    60
    "bottom"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E5* Screw it let's just go play Space Pinball in the computer lab/%", "obj_ch2_scene8_slash_Step_0_gml_80_0")
    // WARNING: Popz'd an empty stack.
    kr
    "u"
    su
    gml_Script_c_walk_wait("u", 6, 11)
    17
    // WARNING: Popz'd an empty stack.
    59
    // WARNING: Popz'd an empty stack.
    30
    0
    gml_Script_c_walk_wait("d", 0.5, 44)
    gml_Script_c_mus2("initloop", "creepydoor.ogg", 0)
    15
    "susie"
    gml_Script_c_msgsetloc(0, "\\E6* H..^1. huh...?/", "obj_ch2_scene8_slash_Step_0_gml_97_0")
    gml_Script_c_msgnextloc("* It's like.../%", "obj_ch2_scene8_slash_Step_0_gml_98_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walkdirect(170, 100, 30)
    kr
    0
    gml_Script_c_walkdirect(130, 105, 30)
    45
    "r"
    su
    "l"
    gml_Script_c_msgsetloc(0, "\\EC* ..^1. the inside of the closet?/%", "obj_ch2_scene8_slash_Step_0_gml_108_0")
    // WARNING: Popz'd an empty stack.
    su
    1
    "u"
    kr
    1
    "u"
    10
    "susie"
    gml_Script_c_msgsetloc(0, "\\E1* Kris^1, you don't think this could be.../%", "obj_ch2_scene8_slash_Step_0_gml_119_0")
    // WARNING: Popz'd an empty stack.
    1
    gml_Script_c_walkdirect(162, 47, 39)
    0
    gml_Script_c_walkdirect(134, 55, 39)
    1
    gml_Script_c_panspeed(0, -1, 39)
    50
    su
    "l"
    kr
    "r"
    gml_Script_c_msgsetloc(0, "* ... another Dark World?/%", "obj_ch2_scene8_slash_Step_0_gml_134_0")
    // WARNING: Popz'd an empty stack.
    su
    "u"
    kr
    "u"
    20
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* .../", "obj_ch2_scene8_slash_Step_0_gml_142_0")
    gml_Script_c_msgnextloc("\\EA* Well./", "obj_ch2_scene8_slash_Step_0_gml_143_0")
    gml_Script_c_msgnextloc("\\E2* Guess this means we can't start our project./", "obj_ch2_scene8_slash_Step_0_gml_144_0")
    gml_Script_c_msgnextloc("\\EQ* ..^1. unless./", "obj_ch2_scene8_slash_Step_0_gml_145_0")
    gml_Script_c_msgnextloc("\\EA* You know. Kris./", "obj_ch2_scene8_slash_Step_0_gml_146_0")
    gml_Script_c_msgnextloc("\\EQ* If there's a Dark Fountain in there./", "obj_ch2_scene8_slash_Step_0_gml_147_0")
    gml_Script_c_msgnextloc("\\E2* You can seal it.../", "obj_ch2_scene8_slash_Step_0_gml_148_0")
    gml_Script_c_msgnextloc("\\EQ* And it'll turn back into the computer lab^1, right?/%", "obj_ch2_scene8_slash_Step_0_gml_149_0")
    // WARNING: Popz'd an empty stack.
    1035
    // WARNING: Popz'd an empty stack.
    kr
    "r"
    su
    "l"
    gml_Script_c_msgsetloc(0, "\\E2* C'mon^1, Kris!!/%", "obj_ch2_scene8_slash_Step_0_gml_157_0")
    // WARNING: Popz'd an empty stack.
    con = 2
}
if (customcon == 1 && con == 2)
{
    drawdoor = 1
    visible = true
    customcon = 2
    // WARNING: Popz'd an empty stack.
}
if (con == 2 && (!895))
{
    with (obj_actor)
        visible = false
    // WARNING: Popz'd an empty stack.
    2
    if (global.plot < 20)
        global.plot = 20
    trans = gml_Script_instance_create(0, 0, obj_dw_transition)
    var _temp_local_var_3 = trans
    finaly = 60
    skiprunback = 1
    nextroom = 83
}
