if (con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 0
}
if (con == 1)
{
    con = 2
    with (obj_mainchara)
        visible = false
    with (obj_caterpillarchara)
        visible = false
    gml_Script_scr_losechar()
    cutscene_master = gml_Script_scr_cutscene_make()
    kr = 0
    kr_actor = gml_Script_instance_create(-20, 628, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisr_dark
    su = 1
    su_actor = gml_Script_instance_create(-100, 612, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_right_dw
    ra = 2
    ra_actor = gml_Script_instance_create(-200, 600, obj_actor)
    gml_Script_scr_actor_setup(ra, ra_actor, "ralsei")
    ra_actor.sprite_index = spr_ralsei_walk_right
}
if (con == 2)
{
    con = 3
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(242, 628, 45)
    gml_Script_c_delayfacing(97, "u")
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(321, 600, 75)
    gml_Script_c_delaywalkdirect(76, 321, 549, 20)
    gml_Script_c_delayfacing(97, "u")
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect_wait(411, 612, 90)
    gml_Script_c_facing("l")
    gml_Script_c_delayfacing(7, "u")
    gml_Script_c_wait(45)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("d")
    gml_Script_c_msc(1057)
    gml_Script_c_talk_wait()
}
if (con == 10)
{
    con = 12
    gml_Script_c_sel(1)
    gml_Script_c_walkdirect(346, 541, 5)
    gml_Script_c_delayfacing(6, "l")
    gml_Script_c_wait(5)
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(794)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk_wait("l", 5, 5)
    gml_Script_c_imagespeed(0)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EH* Hey^1, why does Kris get to choose all the time!?/%", "obj_ch2_scene12_slash_Step_0_gml_85_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_visible(0)
    gml_Script_c_soundplay(60)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(83)
    gml_Script_c_imagespeed(0)
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Ralsei^1, you're going with me!/%", "obj_ch2_scene12_slash_Step_0_gml_100_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EU* H-huh!? K-Kris^1, I...!!/%", "obj_ch2_scene12_slash_Step_0_gml_104_0")
    gml_Script_c_talk_wait()
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk("u", 8, 90)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed_wait(0, -4, 25)
    gml_Script_c_wait(10)
    gml_Script_c_var_lerp_instance(dogcone1, "x", dogcone1.x, (dogcone1.x - 40), 20)
    gml_Script_c_var_lerp_instance(dogcone2, "x", dogcone2.x, (dogcone1.x - 80), 20)
    gml_Script_c_var_lerp_instance(dogcone3, "x", dogcone3.x, (dogcone1.x - 120), 20)
    gml_Script_c_wait(60)
    gml_Script_c_panobj(kr_actor, 30)
    gml_Script_c_wait(30)
    gml_Script_c_pannable(0)
}
if (con == 12 && (!gml_Script_d_ex()))
{
    con = 50
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    gml_Script_scr_losechar()
    with (obj_caterpillarchara)
        instance_destroy()
    global.plot = 66
    global.interact = 0
    global.facing = 0
    con = 0
    gml_Script_scr_tempsave()
}
