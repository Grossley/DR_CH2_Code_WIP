var _temp_local_var_3;
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
    // WARNING: Popz'd an empty stack.
    cutscene_master = 
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
    kr
    gml_Script_c_walkdirect(242, 628, 45)
    gml_Script_c_delayfacing(97, "u")
    ra
    gml_Script_c_walkdirect(321, 600, 75)
    gml_Script_c_delaywalkdirect(76, 321, 549, 20)
    gml_Script_c_delayfacing(97, "u")
    su
    gml_Script_c_walkdirect_wait(411, 612, 90)
    "l"
    gml_Script_c_delayfacing(7, "u")
    45
    ra
    "d"
    1057
    // WARNING: Popz'd an empty stack.
}
if (con == 10)
{
    con = 12
    1
    gml_Script_c_walkdirect(346, 541, 5)
    gml_Script_c_delayfacing(6, "l")
    5
    ra
    0
    793
    0.25
    gml_Script_c_walk_wait("l", 5, 5)
    0
    1
    "r"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EH* Hey^1, why does Kris get to choose all the time!?/%", "obj_ch2_scene12_slash_Step_0_gml_85_0")
    // WARNING: Popz'd an empty stack.
    ra
    0
    60
    su
    0
    83
    0
    // WARNING: Popz'd an empty stack.
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* Ralsei^1, you're going with me!/%", "obj_ch2_scene12_slash_Step_0_gml_100_0")
    // WARNING: Popz'd an empty stack.
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\EU* H-huh!? K-Kris^1, I...!!/%", "obj_ch2_scene12_slash_Step_0_gml_104_0")
    // WARNING: Popz'd an empty stack.
    0.25
    gml_Script_c_walk("u", 8, 90)
    1
    gml_Script_c_panspeed_wait(0, -4, 25)
    10
    gml_Script_c_var_lerp_instance(dogcone1, "x", dogcone1.x, (dogcone1.x - 40), 20)
    gml_Script_c_var_lerp_instance(dogcone2, "x", dogcone2.x, (dogcone1.x - 80), 20)
    gml_Script_c_var_lerp_instance(dogcone3, "x", dogcone3.x, (dogcone1.x - 120), 20)
    60
    gml_Script_c_panobj(kr_actor, 30)
    30
    0
}
if (con == 12)
{
}
else
    var _temp_local_var_3 = 0
con = 50
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
if (con == 50 && (!895))
{
    // WARNING: Popz'd an empty stack.
    with (obj_caterpillarchara)
        // WARNING: Popz'd an empty stack.
    global.plot = 66
    global.interact = 0
    global.facing = 0
    con = 0
    // WARNING: Popz'd an empty stack.
}
