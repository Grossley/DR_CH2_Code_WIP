var _temp_local_var_1, _temp_local_var_4;
if (con == 0)
{
    global.interact = 1
    // WARNING: Popz'd an empty stack.
    con = 1
}
if (con == 1)
{
    con = 2
    global.facing = 0
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    kr_actor.sprite_index = spr_krisd_dark
    su_actor.sprite_index = spr_susie_walk_down_dw_unhappy
    ra_actor.sprite_index = spr_ralsei_walk_down
    trash = (actor_count + 1)
    trash_actor = gml_Script_instance_create(205, 120, obj_actor)
    gml_Script_scr_actor_setup_nofacing(trash, trash_actor, "trash")
    trash_actor.sprite_index = spr_spamton_trash_stop_sign
    trash_actor.depth = 200
    trash_actor.image_xscale = 2
    trash_actor.image_yscale = 2
    trash_actor.auto_depth = 0
}
if (con == 2)
    var _temp_local_var_1 = 1
if 1
{
    heal = 0
    con = 3
    alarm[0] = 30
    1
    kr
    "y"
    gml_Script_c_setxy(368, 186)
    su
    "y"
    gml_Script_c_setxy(235, 165)
    ra
    "y"
    gml_Script_c_setxy(290, 160)
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30)
    60
    su
    0
    gml_Script_c_walk_wait("d", 5, 5)
    10
    "y"
    gml_Script_c_walk_wait("u", 5, 12)
    1
    10
    su
    0
    1
    "susieunhappy"
    "d"
    10
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* L..^1. Looks like this trash saved us./%", "obj_ch2_scene11b_slash_Step_0_gml_76_0")
    // WARNING: Popz'd an empty stack.
    5
    su
    "r"
    15
    kr
    0
    gml_Script_c_walk_wait("d", 5, 5)
    10
    "y"
    0
    gml_Script_c_walk_wait("u", 5, 10)
    1
    1
    15
    ra
    0
    gml_Script_c_walk_wait("d", 5, 8)
    10
    "y"
    gml_Script_c_walk_wait("u", 5, 13)
    1
    13
    15
    "susie"
    gml_Script_c_msgsetloc(0, "\\E1* C'mon.../%", "obj_ch2_scene11b_slash_Step_0_gml_115_0")
    // WARNING: Popz'd an empty stack.
    5
    kr
    gml_Script_c_jump_sprite(395, 220, 30, 15, 536, 540)
    5
    10
    61
    10
    ra
    gml_Script_c_jump_sprite(315, 215, 30, 15, 778, 2557)
    5
    10
    61
    5
    su
    0
    100
    gml_Script_c_jump_sprite(190, 27, 30, 15, 534, 548)
    5
    15
    61
    trash
    // WARNING: Popz'd an empty stack.
    su
    5
    40
    ra
    "u"
    kr
    "u"
    su
    0
    0
    831
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* Haha^1, who's king of the trash pile now!?/%", "obj_ch2_scene11b_slash_Step_0_gml_183_0")
    // WARNING: Popz'd an empty stack.
    999
    65
    0.2
    60
    su
    0
    trash
    0
    // WARNING: Popz'd an empty stack.
    51
    15
    ra
    1506
    "h"
    gml_Script_c_addxy(-90, 0)
    kr
    "l"
    trash
    51
    154
    gml_Script_c_var("hspeed", -10)
    gml_Script_c_var("gravity", 0.3)
    su
    gml_Script_c_var("friction", 0)
    gml_Script_c_var("vspeed", -4)
    gml_Script_c_var("gravity", 1)
    843
    6
    542
    0.5
    14
    su
    gml_Script_c_var("gravity", 0)
    gml_Script_c_var("friction", 2)
    0
    0
    548
    // WARNING: Popz'd an empty stack.
    66
    235
    // WARNING: Popz'd an empty stack.
    30
    ra
    "h"
    gml_Script_c_addxy(90, 0)
    "l"
    ra
    gml_Script_c_walk("l", 8, 5)
    kr
    gml_Script_c_walk("l", 8, 5)
    30
    "susie"
    gml_Script_c_msgsetloc(0, "\\EZ* O..^1. Ow...!/", "obj_ch2_scene11b_slash_Step_0_gml_251_0")
    gml_Script_c_facenext("ralsei", "C")
    gml_Script_c_msgnextloc("* Susie^1, are you alright?/%", "obj_ch2_scene11b_slash_Step_0_gml_253_0")
    // WARNING: Popz'd an empty stack.
    5
    su
    0.25
    8
    0
    30
    "susie"
    gml_Script_c_msgsetloc(0, "\\EQ* ..^1. Heh^1, it's nothing./", "obj_ch2_scene11b_slash_Step_0_gml_272_0")
    gml_Script_c_msgnextloc("\\EQ* I just.../%", "obj_ch2_scene11b_slash_Step_0_gml_273_0")
    // WARNING: Popz'd an empty stack.
    su
    0
    // WARNING: Popz'd an empty stack.
    51
    10
    gml_Script_c_msgsetloc(0, "\\EV* O... ow./%", "obj_ch2_scene11b_slash_Step_0_gml_279_0")
    // WARNING: Popz'd an empty stack.
    ra
    gml_Script_c_walk_wait("l", 1, 25)
    30
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\EB* ... sure you don't want me to look?/", "obj_ch2_scene11b_slash_Step_0_gml_289_0")
    gml_Script_c_facenext("susie", "5")
    gml_Script_c_msgnextloc("\\E5* L-look at what? I'm fine!/%", "obj_ch2_scene11b_slash_Step_0_gml_291_0")
    // WARNING: Popz'd an empty stack.
    30
    809
    0
    50
    "h"
    gml_Script_c_addxy(-8, 6)
    0
    0
    gml_Script_c_walkdirect_wait(277, 227, 20)
    30
    0.2
    15
    179
    0
    60
    su
    843
    51
    gml_Script_c_setxy(205, 221)
    // WARNING: Popz'd an empty stack.
    5
    "top"
    gml_Script_c_msgsetloc(0, "\\EH* WOAH HEY WHAT THE HECK ARE YOU--/%", "obj_ch2_scene11b_slash_Step_0_gml_316_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(id, "heal", 1)
    45
    0
    30
    ra
    0
    gml_Script_c_walk_wait("r", 5, 5)
    10
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E2* Feel better?/%", "obj_ch2_scene11b_slash_Step_0_gml_355_0")
    // WARNING: Popz'd an empty stack.
    su
    45
    gml_Script_c_addxy(4, -4)
    // WARNING: Popz'd an empty stack.
    "susie"
    gml_Script_c_msgsetloc(0, "\\EH* FEEL BETTER!^1? AFTER YOU JUST CAME UP AND--/%", "obj_ch2_scene11b_slash_Step_0_gml_362_0")
    // WARNING: Popz'd an empty stack.
    "h"
    60
    "h"
    "u"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EM* Umm..^1. doesn't feel WORSE^1, I guess./", "obj_ch2_scene11b_slash_Step_0_gml_372_0")
    gml_Script_c_msgnextloc("\\EV* .../%", "obj_ch2_scene11b_slash_Step_0_gml_373_0")
    // WARNING: Popz'd an empty stack.
    15
    gml_Script_c_addxy(-2, -6)
    80
    0.25
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* How do you do that^1, anyway?/", "obj_ch2_scene11b_slash_Step_0_gml_383_0")
    gml_Script_c_msgnextloc("\\E1* That..^1. healing..^1. thingy./", "obj_ch2_scene11b_slash_Step_0_gml_384_0")
    gml_Script_c_facenext("ralsei", "2")
    gml_Script_c_msgnextloc("\\E2* Oh^1, healing magic? It's simple^1, Susie. Anyone can do it./", "obj_ch2_scene11b_slash_Step_0_gml_386_0")
    gml_Script_c_msgnextloc("\\EG* ..^1. I could even teach you^1, if you're interested./%", "obj_ch2_scene11b_slash_Step_0_gml_387_0")
    // WARNING: Popz'd an empty stack.
    5
    78
    5
    "susie"
    gml_Script_c_msgsetloc(0, "\\EA* Heh^1, ask me again when it's^1, like^1, blood explosion magic./%", "obj_ch2_scene11b_slash_Step_0_gml_395_0")
    // WARNING: Popz'd an empty stack.
    5
    79
    5
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene11b_slash_Step_0_gml_403_0")
    // WARNING: Popz'd an empty stack.
    5
    0
    80
    0.25
    5
    "susie"
    gml_Script_c_msgsetloc(0, "\\EQ* But^1, um^1, if you WANTED^1, I guess I could learn it./", "obj_ch2_scene11b_slash_Step_0_gml_413_0")
    gml_Script_c_msgnextloc("\\EK* Then you wouldn't^1, y'know^1, have to annoy me with it anymore./", "obj_ch2_scene11b_slash_Step_0_gml_414_0")
    gml_Script_c_facenext("ralsei", "G")
    gml_Script_c_msgnextloc("\\EG* Sure^1, Susie. Next time we have a break!/%", "obj_ch2_scene11b_slash_Step_0_gml_416_0")
    // WARNING: Popz'd an empty stack.
    1
    "r"
    gml_Script_c_addxy(2, 6)
    5
    ra
    gml_Script_c_walk("d", 4, 4)
    su
    gml_Script_c_walkdirect_wait(299, 202, 15)
    ra
    "h"
    "r"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E1* (Let's just go already^1, Kris...)/%", "obj_ch2_scene11b_slash_Step_0_gml_434_0")
    // WARNING: Popz'd an empty stack.
    ra
    1
    "r"
    gml_Script_c_walkdirect(252, 209, 10)
    gml_Script_c_delayfacing(11, "r")
    15
    gml_Script_c_panobj(kr_actor, 10)
    10
    kr
    "d"
    0
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    gml_Script_c_mus2("initloop", "alley_ambience.ogg", 0)
    // WARNING: Popz'd an empty stack.
}
if (heal == 1)
{
    heal = 0
    healanim = gml_Script_instance_create(su_actor.x, su_actor.y, obj_healanim)
    healanim.target = su_actor.id
    162
}
if (con == 4 && (!895))
{
    global.interact = 0
    global.facing = 0
    global.plot = 65
    con = 5
}
if (con == 5 && obj_mainchara.x >= 1120 && global.plot < 65.5)
{
    con = 6
    alarm[0] = 30
    global.interact = 1
    "ralsei"
    gml_Script_msgsetloc(0, "\\E0* By the way Kris^1, I just remembered!/", "obj_ch2_scene11b_slash_Step_0_gml_483_0")
    gml_Script_msgnextloc("\\E0* Although you can only carry 12 ITEMs around.../", "obj_ch2_scene11b_slash_Step_0_gml_484_0")
    gml_Script_msgnextloc("\\E0* Your STORAGE will hold any extra items you pick up./", "obj_ch2_scene11b_slash_Step_0_gml_485_0")
    gml_Script_msgnextloc("\\EG* You can access it where you check Recruits!/", "obj_ch2_scene11b_slash_Step_0_gml_486_0")
    gml_Script_msgnextloc("\\E2* (Enemies you SPARE get RECRUITed to our town, remember?)/", "obj_ch2_scene11b_slash_Step_0_gml_497_0")
    gml_Script_scr_anyface_next("susie", "6")
    gml_Script_msgnextloc("\\E6* Woah^1, that seems like pretty useful information./%", "obj_ch2_scene11b_slash_Step_0_gml_488_0")
    // WARNING: Popz'd an empty stack.
}
if (con == 7)
{
}
else
    var _temp_local_var_4 = 0
con = -1
global.interact = 0
global.plot = 65.5
