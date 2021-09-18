var _temp_local_var_1, _temp_local_var_4, _temp_local_var_8, _temp_local_var_10;
if nisesusie
    var _temp_local_var_1 = nisesusie
if (obj_mainchara.x >= x && con == -1)
{
    con = 1
    global.interact = 1
    cutscene_master = 
    nisesusie.visible = false
    berdlynpc.visible = false
    su = 1
    su_actor = gml_Script_instance_create(nisesusie.x, nisesusie.y, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_down
    su
    173
    // WARNING: Popz'd an empty stack.
    be = 2
    be_actor = gml_Script_instance_create(berdlynpc.x, berdlynpc.y, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_down_dw
    nisesusie.x = 12
    nisesusie.y = 200
    nisesusie.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right
    berdlynpc.x = 555
    berdlynpc.y = 216
    berdlynpc.sprite_index = spr_berdly_walk_left_dw
}
if (con == 1)
{
    con = 2
    "top"
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E7* Ha. Child's play. Couldn't you give me a harder one?/", "obj_ch2_scene19b_slash_Step_0_gml_47_0")
    gml_Script_c_msgnextloc("\\E1* For example^1, if anyone had a 4x4 Puzzle Cube.../", "obj_ch2_scene19b_slash_Step_0_gml_48_0")
    gml_Script_c_facenext("susie", "B")
    gml_Script_c_msgnextloc("\\EB* Just tell us the solution./%", "obj_ch2_scene19b_slash_Step_0_gml_50_0")
    // WARNING: Popz'd an empty stack.
    be
    676
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EJ* Well^1, hahah - ah^1, you see -/%", "obj_ch2_scene19b_slash_Step_0_gml_52_0")
    // WARNING: Popz'd an empty stack.
    678
    gml_Script_c_msgsetloc(0, "\\E0* /%", "obj_ch2_scene19b_slash_Step_0_gml_53_0")
    // WARNING: Popz'd an empty stack.
    676
    gml_Script_c_msgsetloc(0, "\\E1* First^1, you/%", "obj_ch2_scene19b_slash_Step_0_gml_54_0")
    // WARNING: Popz'd an empty stack.
    678
    gml_Script_c_msgsetloc(0, "\\E0* /%", "obj_ch2_scene19b_slash_Step_0_gml_55_0")
    // WARNING: Popz'd an empty stack.
    676
    gml_Script_c_msgsetloc(0, "\\ED* You align the shadows..^1. with the lines on the floor./%", "obj_ch2_scene19b_slash_Step_0_gml_56_0")
    // WARNING: Popz'd an empty stack.
    "susie"
    gml_Script_c_msgsetloc(0, "\\E1* Alright. What do we move first./", "obj_ch2_scene19b_slash_Step_0_gml_58_0")
    gml_Script_c_facenext("berdly", 13)
    gml_Script_c_msgnextloc("\\ED* Um.../", "obj_ch2_scene19b_slash_Step_0_gml_60_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* Kris^1, just do the puzzle./%", "obj_ch2_scene19b_slash_Step_0_gml_62_0")
    // WARNING: Popz'd an empty stack.
    697
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EC* J...Just give me a moment!!/", "obj_ch2_scene19b_slash_Step_0_gml_64_0")
    gml_Script_c_msgnextloc("\\EB* It's not like Kris could even solve it anyway!!/%", "obj_ch2_scene19b_slash_Step_0_gml_65_0")
    // WARNING: Popz'd an empty stack.
    su
    176
    0.25
    gml_Script_c_walkdirect(12, 200, 10)
    be
    gml_Script_c_walkdirect(555, 216, 10)
    gml_Script_c_delayfacing(21, "d")
    11
    su
    0
}
if (con == 2)
{
}
else
    var _temp_local_var_10 = 0
con = 3
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
if (con == 3 && (!895))
{
    nisesusie.visible = true
    berdlynpc.visible = true
    global.interact = 0
    con = 0
}
if (con == 20)
{
}
else
    var _temp_local_var_8 = 0
con = 21
global.interact = 1
if exitcollider
    exitcollider
cutscene_master = 
su = 0
su_actor = gml_Script_instance_create(nisesusie.x, nisesusie.y, obj_actor)
gml_Script_scr_actor_setup(su, su_actor, "susie")
su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right
su
0
174
be = 1
be_actor = gml_Script_instance_create(berdlynpc.x, berdlynpc.y, obj_actor)
gml_Script_scr_actor_setup(be, be_actor, "berdly")
be_actor.sprite_index = spr_berdly_walk_left_dw
var _temp_local_var_4 = berdlynpc
