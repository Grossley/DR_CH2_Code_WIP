if (obj_mainchara.x >= 415 && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    be = (actor_count + 1)
    be_actor = gml_Script_instance_create(berdly_marker.x, berdly_marker.y, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_left_dw
    gml_Script_scr_losechar()
    if gml_Script_i_ex(274)
        instance_destroy(obj_caterpillarchara)
}
if (con == 1)
{
    con = 49
    alarm[0] = 30
    with (berdly_marker)
        instance_destroy()
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_walkdirect(su_actor.x, 170, 18)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_walkdirect(ra_actor.x, 198, 18)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed(4, 0, 50)
    gml_Script_c_wait(19)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(384, 170, 12)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect((kr_actor.x - 60), 198, 12)
    gml_Script_c_wait(18)
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_wait(1)
    gml_Script_c_wait(15)
    gml_Script_c_msgside("bottom")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EE* Kris^1, Susan..^1. Glad to see you arrive unwounded./", "obj_ch2_room_mansion_3f_slash_Step_0_gml_50_0")
    gml_Script_c_msgnextloc("\\E6* Now^1, let us hasten!/%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_51_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "hide_entrance", 1)
    gml_Script_c_sel(be)
    gml_Script_c_walk_wait("l", 6, 12)
    gml_Script_c_walk_wait("u", 6, 6)
    gml_Script_c_soundplay(64)
    gml_Script_c_var_lerp_instance(bookcase, "x", bookcase.x, (bookcase.x + 70), 20)
    gml_Script_c_wait(15)
    gml_Script_c_facing("l")
    gml_Script_c_autowalk(0)
    gml_Script_c_walk("r", 4, 12)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(11)
    gml_Script_c_halt()
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E7* Through here is a secret passageway to the roof!/", "obj_ch2_room_mansion_3f_slash_Step_0_gml_77_0")
    gml_Script_c_msgnextloc("\\E4* There^1, we can enrescue-fy Lady Noelle./", "obj_ch2_room_mansion_3f_slash_Step_0_gml_78_0")
    gml_Script_c_facenext("susie", "0")
    gml_Script_c_msgnextloc("\\E0* Uhh^1, okay./%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_80_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect_wait(384, 118, 12)
    gml_Script_c_walkdirect_wait(545, 118, 30)
    gml_Script_c_wait(5)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E1* Let's go^1, Kris./%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_91_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(be)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("d")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* Oh^1, Kris. Kris is.../%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_105_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_facing("l")
    gml_Script_c_wait(5)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E4* Kris^1! You and your \\cYlackey\\cW distract Queen!/%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_115_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walk("l", 4, 12)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E6* Let's go^1, Susie^1! Just the two of us^1! Haha!/", "obj_ch2_room_mansion_3f_slash_Step_0_gml_122_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* Fine^1, whatever!/%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_124_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_walkdirect(607, 102, 10)
    gml_Script_c_var_instance(id, "berdly_exit", 1)
    gml_Script_c_sel(su)
    gml_Script_c_walk_wait("r", 4, 16)
    gml_Script_c_facing("u")
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walkdirect(606, 91, 10)
    gml_Script_c_var_instance(id, "susie_exit", 1)
    gml_Script_c_wait(40)
    gml_Script_c_sel(be)
    gml_Script_c_visible(0)
    gml_Script_c_sel(su)
    gml_Script_c_visible(0)
    gml_Script_c_soundplay(64)
    gml_Script_c_var_lerp_instance(bookcase, "x", (bookcase.x + 70), bookcase.x, 20)
    gml_Script_c_wait(30)
    gml_Script_c_panobj(kr_actor, 15)
    gml_Script_c_wait(16)
    gml_Script_c_pannable(0)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect((kr_actor.x - 60), (kr_actor.y - 7), 15)
    gml_Script_c_wait(15)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("l")
    gml_Script_c_wait(1)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_msc(1167)
    gml_Script_c_talk_wait()
    gml_Script_c_waitcustom()
}
if (con == 50 && (!gml_Script_d_ex()) && customcon == 1)
{
    con = 51
    gml_Script_scr_getchar(3)
    gml_Script_scr_makecaterpillar((kr_actor.x + 40), (kr_actor.y - 7), 3, 0)
    with (obj_caterpillarchara)
        visible = false
}
if (con == 51)
{
    con = 60
    gml_Script_c_waitcustom_end()
    gml_Script_c_sel(ra)
    gml_Script_c_facing("l")
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 60 && (!gml_Script_i_ex(895)))
{
    with (obj_caterpillarchara)
        gml_Script_scr_caterpillar_interpolate()
    con = 99
    global.plot = 125
    global.interact = 0
    global.facing = 0
    var savepoint = gml_Script_instance_create(260, 300, obj_savepoint)
    with (savepoint)
        gml_Script_scr_depth()
}
if berdly_exit
{
    berdly_shadow = clamp((berdly_shadow + 0.2), 0, 1)
    var shadow = berdly_shadow
    with (be_actor)
        color_blend = merge_color(c_white, make_color_hsv(0, 0, 0), shadow)
    if (berdly_shadow >= 1)
        berdly_exit = 0
}
if susie_exit
{
    susie_shadow = clamp((susie_shadow + 0.2), 0, 1)
    shadow = susie_shadow
    with (su_actor)
        color_blend = merge_color(c_white, make_color_hsv(0, 0, 0), shadow)
    if (susie_shadow >= 1)
        susie_exit = 0
}
if hide_entrance
{
    hide_entrance = 0
    layer_set_visible("Tiles_ExitBlock", 1)
    var exit_collider = gml_Script_instance_create(240, 360, obj_soliddark)
    exit_collider.image_xscale = 2
}
