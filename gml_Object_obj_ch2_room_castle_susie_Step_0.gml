var _temp_local_var_3;
if (obj_mainchara.y < y && con == -1)
{
    global.interact = 1
    global.facing = 2
    con = 1
}
if (con == 1)
{
    con = 2
    alarm[0] = 30
    cutscene_master = 
    with (obj_mainchara)
        visible = false
    with (obj_caterpillarchara)
        visible = false
    kr = 0
    kr_actor = gml_Script_instance_create(300, 500, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisu_dark
    su = 1
    su_actor = gml_Script_instance_create((kr_actor.x - 8), (kr_actor.y + 50), obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_up_dw
    ra = 2
    ra_actor = gml_Script_instance_create((kr_actor.x - 4), (su_actor.y + 50), obj_actor)
    gml_Script_scr_actor_setup(ra, ra_actor, "ralsei")
    ra_actor.sprite_index = spr_ralsei_walk_up
    kr
    gml_Script_c_walk("u", 5, 36)
    gml_Script_c_delaywalk(37, "r", 5, 12)
    gml_Script_c_delayfacing(50, "u")
    su
    gml_Script_c_walk("u", 5, 60)
    gml_Script_c_delaywalk(51, "l", 5, 12)
    gml_Script_c_delayfacing(63, "u")
    ra
    gml_Script_c_walk("u", 5, 80)
    gml_Script_c_delayfacing(81, "d")
    82
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E2* And Susie^1, this is your room!/", "obj_ch2_room_castle_susie_slash_Step_0_gml_49_0")
    gml_Script_c_msgnextloc("\\E1* Umm^1, I tried to make it something you'd like^1, but.../", "obj_ch2_room_castle_susie_slash_Step_0_gml_50_0")
    gml_Script_c_msgnextloc("\\E2* You can put anything else you want in here^1, too!/", "obj_ch2_room_castle_susie_slash_Step_0_gml_51_0")
    gml_Script_c_msgnextloc("\\EH* I really hope you like it!/%", "obj_ch2_room_castle_susie_slash_Step_0_gml_52_0")
    // WARNING: Popz'd an empty stack.
    15
    su
    gml_Script_c_walk_wait("u", 5, 24)
    "susieunhappy"
    "l"
    20
    "u"
    20
    gml_Script_c_walk_wait("r", 5, 32)
    "u"
    ra
    "r"
    30
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* .../", "obj_ch2_room_castle_susie_slash_Step_0_gml_74_0")
    gml_Script_c_msgnextloc("\\ED* ..^1. My own room^1, huh./%", "obj_ch2_room_castle_susie_slash_Step_0_gml_75_0")
    // WARNING: Popz'd an empty stack.
    su
    "r"
    30
    "susie"
    gml_Script_c_msgsetloc(0, "\\EA* I..^1. guess that's pretty cool?/", "obj_ch2_room_castle_susie_slash_Step_0_gml_82_0")
    gml_Script_c_msgnextloc("\\EA* My own room..^1. like this./%", "obj_ch2_room_castle_susie_slash_Step_0_gml_83_0")
    // WARNING: Popz'd an empty stack.
    "u"
    30
    "l"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* ..^1. how long did it^1, uh^1, take you to do this?/%", "obj_ch2_room_castle_susie_slash_Step_0_gml_89_0")
    // WARNING: Popz'd an empty stack.
    ra
    "d"
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E1* Well^1, er^1, since I last saw you two^1, I.../%", "obj_ch2_room_castle_susie_slash_Step_0_gml_95_0")
    // WARNING: Popz'd an empty stack.
    su
    gml_Script_c_walkdirect_wait(325, 198, 10)
    0
    833
    0
    0
    10
    1
    ra
    // WARNING: Popz'd an empty stack.
    61
    15
    su
    822
    0
    1
    gml_Script_c_walk_wait("r", 3, 8)
    "u"
    "susie"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* Man^1, you're a real weenie^1, y'know that?/", "obj_ch2_room_castle_susie_slash_Step_0_gml_125_0")
    gml_Script_c_msgnextloc("\\E9* Heheheh.../%", "obj_ch2_room_castle_susie_slash_Step_0_gml_126_0")
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 3 && (!895))
{
    con = 4
    "ralsei"
    gml_Script_msgsetloc(0, "\\E2* (I think she likes it^1, Kris!)/", "obj_ch2_room_castle_susie_slash_Step_0_gml_139_0")
    gml_Script_scr_anyface_next("susie", "2")
    gml_Script_msgnextloc("\\E2* (Haha^1, jealous I got the COOL room? LOOK^1, Kris!)/%", "obj_ch2_room_castle_susie_slash_Step_0_gml_141_0")
    // WARNING: Popz'd an empty stack.
}
if (con == 4)
{
}
else
    var _temp_local_var_3 = 0
global.plot = 15
global.facing = 0
global.interact = 0
con = -1
// WARNING: Popz'd an empty stack.
