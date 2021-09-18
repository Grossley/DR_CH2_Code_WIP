var _temp_local_var_1, _temp_local_var_4, _temp_local_var_8, _temp_local_var_10;
if nisesusie
    var _temp_local_var_1 = nisesusie
if (obj_mainchara.x >= 20 && con == -1)
{
    con = 1
    global.interact = 1
    with (obj_mainchara)
        visible = false
    global.facing = 0
    cutscene_master = 
    kr = 0
    kr_actor = gml_Script_instance_create(-20, 190, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisd_dark
    su = 1
    su_actor = gml_Script_instance_create(28, 165, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right
    su
    0
    174
    0.25
    be = 2
    be_actor = gml_Script_instance_create(-60, 186, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_right_dw
}
if (con == 1)
{
    con = 2
    kr
    gml_Script_c_walk("r", 8, 35)
    gml_Script_c_delayfacing(36, "d")
    su
    gml_Script_c_walk("r", 8, 38)
    39
    177
    40
    "top"
    "susie"
    gml_Script_c_msgsetloc(0, "* Looks like a puzzle./%", "obj_ch2_scene19a_slash_Step_0_gml_56_0")
    // WARNING: Popz'd an empty stack.
    176
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* ..^1. think^1, uh^1, YOU can do it^1, Kris?/%", "obj_ch2_scene19a_slash_Step_0_gml_62_0")
    // WARNING: Popz'd an empty stack.
    be
    gml_Script_c_walk_wait("r", 10, 25)
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EJ* Calm your skinless^1, boneless^1, thighs everyone./", "obj_ch2_scene19a_slash_Step_0_gml_69_0")
    gml_Script_c_msgnextloc("\\E7* I'LL think of a solution!/", "obj_ch2_scene19a_slash_Step_0_gml_70_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* (Kris^1, just ignore him.)/", "obj_ch2_scene19a_slash_Step_0_gml_72_0")
    gml_Script_c_msgnextloc("\\EK* I'll just be over here where I can't hear you./", "obj_ch2_scene19a_slash_Step_0_gml_73_0")
    gml_Script_c_facenext("berdly", "I")
    gml_Script_c_msgnextloc("\\EI* And I'll be here^1, away from your IQ-debuffing aura!/%", "obj_ch2_scene19a_slash_Step_0_gml_75_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walkdirect(47, 210, 15)
    gml_Script_c_delayfacing(21, "d")
    su
    174
    0.25
    gml_Script_c_walkdirect_wait(529, 191, 15)
    176
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
    nisesusie = gml_Script_instance_create(529, 191, obj_npc_sign)
    nisesusie.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_left
    nisesusie.image_speed = 0
    berdlynpc = gml_Script_instance_create(47, 210, obj_npc_sign)
    berdlynpc.sprite_index = spr_berdly_walk_right_dw
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
if leftcollider
    leftcollider
cutscene_master = 
su = 0
su_actor = gml_Script_instance_create(nisesusie.x, nisesusie.y, obj_actor)
gml_Script_scr_actor_setup(su, su_actor, "susie")
su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_left
su
0
176
// WARNING: Popz'd an empty stack.
be = 1
be_actor = gml_Script_instance_create(berdlynpc.x, berdlynpc.y, obj_actor)
gml_Script_scr_actor_setup(be, be_actor, "berdly")
be_actor.sprite_index = spr_berdly_walk_right_dw
var _temp_local_var_4 = berdlynpc
