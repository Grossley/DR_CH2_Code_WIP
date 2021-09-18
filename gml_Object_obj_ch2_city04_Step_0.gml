var _temp_local_var_8;
if (obj_mainchara.x > x && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    be = 4
    be_actor = gml_Script_instance_create(berdlynpc.x, berdlynpc.y, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_down_dw
    berdlynpc.visible = false
}
if (con == 1)
{
    con = 10
    kr
    gml_Script_c_walk("r", 4, 20)
    1
    gml_Script_c_panspeed_wait(5, 0, 20)
    be
    gml_Script_c_emote("!", 30)
    "l"
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E3* Kris^1! Where were you!/", "obj_ch2_city04_slash_Step_0_gml_38_0")
    gml_Script_c_msgnextloc("\\E1* Tut tut..^1. even late for your own truce./", "obj_ch2_city04_slash_Step_0_gml_39_0")
    gml_Script_c_msgnextloc("\\E6* Well^1, not as if your presence even matters./", "obj_ch2_city04_slash_Step_0_gml_40_0")
    gml_Script_c_msgnextloc("\\E7* Ahead of us is a mind meltingly difficult puzzle./", "obj_ch2_city04_slash_Step_0_gml_41_0")
    gml_Script_c_msgnextloc("\\EJ* So just take your nap time^1, Kris.  I'll handle it./%", "obj_ch2_city04_slash_Step_0_gml_42_0")
    // WARNING: Popz'd an empty stack.
    "r"
    "berdly"
    gml_Script_c_msgsetloc(0, "\\ED* (I..^1. only have to figure out how it works...)/%", "obj_ch2_city04_slash_Step_0_gml_48_0")
    // WARNING: Popz'd an empty stack.
    "d"
    gml_Script_c_panobj(kr_actor, 15)
    15
    0
}
if (con == 10)
{
}
else
    var _temp_local_var_8 = 0
con = 11
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
if (con == 11 && (!895))
{
    con = 20
    global.interact = 0
    global.facing = 0
    berdlynpc.visible = true
    global.plot = 82
}
if (con == 20 && obj_mainchara.x > 1440)
{
    con = 50
    global.interact = 1
    global.facing = 3
    global.plot = 83
    berdlynpc.visible = false
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    qu = 3
    qu_actor = gml_Script_instance_create(950, 250, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_left
    qu
    0
    be = 4
    be_actor = gml_Script_instance_create(berdlynpc.x, berdlynpc.y, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_left_dw
    be
    "l"
    kr
    gml_Script_c_walkdirect_wait(1477, 266, 15)
    "l"
    1
    gml_Script_c_panspeed_wait(-10, 0, 50)
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E7* Just a moment^1, Kris^1, I.../%", "obj_ch2_city04_slash_Step_0_gml_112_0")
    // WARNING: Popz'd an empty stack.
    be
    "r"
    30
    693
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E3* You..^1. How'd you do that!? I..^1. I.../%", "obj_ch2_city04_slash_Step_0_gml_124_0")
    // WARNING: Popz'd an empty stack.
    673
    gml_Script_c_walkdirect(1427, 261, 60)
    gml_Script_c_panspeed_wait(8, 0, 60)
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EC* .../", "obj_ch2_city04_slash_Step_0_gml_134_0")
    gml_Script_c_msgnextloc("\\EB* ..^1. Kris. You c-can't tell anyone about this^1, okay!?/", "obj_ch2_city04_slash_Step_0_gml_135_0")
    gml_Script_c_msgnextloc("\\ED* If anyone asks^1, I solved the puzzle!!/%", "obj_ch2_city04_slash_Step_0_gml_136_0")
    // WARNING: Popz'd an empty stack.
    "x"
    162
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EB* Got it? Not a word to ANYONE!!/", "obj_ch2_city04_slash_Step_0_gml_144_0")
    gml_Script_c_msgnextloc("\\EC* ESPECIALLY!!^1! SUSIE!!!/", "obj_ch2_city04_slash_Step_0_gml_145_0")
    gml_Script_c_msgnextloc("\\EA* You KNOW she'd just..^1. lord it over me!!!/%", "obj_ch2_city04_slash_Step_0_gml_146_0")
    // WARNING: Popz'd an empty stack.
    "x"
    "u"
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EC* Ugh!!/%", "obj_ch2_city04_slash_Step_0_gml_154_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walk("r", 6, 100)
    5
    kr
    gml_Script_c_walk("u", 5, 5)
    gml_Script_c_delayfacing(6, "d")
    30
    qu
    1
    gml_Script_c_walk_wait("r", 12, 20)
    "queen"
    gml_Script_c_msgsetloc(0, "\\EN* I'm Going To Tell Susie/%", "obj_ch2_city04_slash_Step_0_gml_174_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walk_wait("l", 12, 20)
    gml_Script_c_panobj(kr_actor, 30)
    31
    0
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 50 && (!895))
{
    con = 0
    global.interact = 0
    global.facing = 0
}
