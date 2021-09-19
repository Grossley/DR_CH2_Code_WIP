var _temp_local_var_1, _temp_local_var_6;
if gml_Script_i_ex(nisesusie)
{
    var _temp_local_var_1 = nisesusie
    gml_Script_scr_depth()
}
if (obj_mainchara.x >= 20 && con == -1)
{
    con = 1
    global.interact = 1
    with (obj_mainchara)
        visible = false
    global.facing = 0
    cutscene_master = gml_Script_scr_cutscene_make()
    kr = 0
    kr_actor = gml_Script_instance_create(-20, 190, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisd_dark
    su = 1
    su_actor = gml_Script_instance_create(28, 165, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(174)
    gml_Script_c_imagespeed(0.25)
    be = 2
    be_actor = gml_Script_instance_create(-60, 186, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_right_dw
}
if (con == 1)
{
    con = 2
    gml_Script_c_sel(kr)
    gml_Script_c_walk("r", 8, 35)
    gml_Script_c_delayfacing(36, "d")
    gml_Script_c_sel(su)
    gml_Script_c_walk("r", 8, 38)
    gml_Script_c_wait(39)
    gml_Script_c_sprite(177)
    gml_Script_c_wait(40)
    gml_Script_c_msgside("top")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* Looks like a puzzle./%", "obj_ch2_scene19a_slash_Step_0_gml_56_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(176)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* ..^1. think^1, uh^1, YOU can do it^1, Kris?/%", "obj_ch2_scene19a_slash_Step_0_gml_62_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_walk_wait("r", 10, 25)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EJ* Calm your skinless^1, boneless^1, thighs everyone./", "obj_ch2_scene19a_slash_Step_0_gml_69_0")
    gml_Script_c_msgnextloc("\\E7* I'LL think of a solution!/", "obj_ch2_scene19a_slash_Step_0_gml_70_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* (Kris^1, just ignore him.)/", "obj_ch2_scene19a_slash_Step_0_gml_72_0")
    gml_Script_c_msgnextloc("\\EK* I'll just be over here where I can't hear you./", "obj_ch2_scene19a_slash_Step_0_gml_73_0")
    gml_Script_c_facenext("berdly", "I")
    gml_Script_c_msgnextloc("\\EI* And I'll be here^1, away from your IQ-debuffing aura!/%", "obj_ch2_scene19a_slash_Step_0_gml_75_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walkdirect(47, 210, 15)
    gml_Script_c_delayfacing(21, "d")
    gml_Script_c_sel(su)
    gml_Script_c_sprite(174)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect_wait(529, 191, 15)
    gml_Script_c_sprite(176)
    gml_Script_c_imagespeed(0)
}
if (con == 2 && (!gml_Script_d_ex()))
{
    con = 3
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 3 && (!gml_Script_i_ex(895)))
{
    nisesusie = gml_Script_instance_create(529, 191, obj_npc_sign)
    nisesusie.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_left
    nisesusie.image_speed = 0
    berdlynpc = gml_Script_instance_create(47, 210, obj_npc_sign)
    berdlynpc.sprite_index = spr_berdly_walk_right_dw
    global.interact = 0
    con = 0
}
if (con == 20 && (!gml_Script_d_ex()))
{
    con = 21
    global.interact = 1
    if gml_Script_i_ex(exitcollider)
        instance_destroy(exitcollider)
    if gml_Script_i_ex(leftcollider)
        instance_destroy(leftcollider)
    cutscene_master = gml_Script_scr_cutscene_make()
    su = 0
    su_actor = gml_Script_instance_create(nisesusie.x, nisesusie.y, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_left
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(176)
    gml_Script_c_halt()
    be = 1
    be_actor = gml_Script_instance_create(berdlynpc.x, berdlynpc.y, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_right_dw
    var _temp_local_var_6 = berdlynpc
    instance_destroy()
}
if (con == 21 && (!gml_Script_i_ex(895)))
{
    con = 0
    global.interact = 0
    global.facing = 0
    global.plot = 105
    instance_destroy()
}
