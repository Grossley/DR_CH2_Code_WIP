var _temp_local_var_3;
if (obj_mainchara.x > 140 && obj_mainchara.x < 200 && obj_mainchara.y < y && con == -1 && cantrigger)
{
    con = 1
    cantrigger = 0
    global.interact = 1
    global.facing = 0
    obj_mainchara.y = (y + 1)
    global.msc = 1059
    global.msc
    // WARNING: Popz'd an empty stack.
}
if (con == 5)
{
    con = 10
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    kr
    to = 3
    to_actor = gml_Script_instance_create(-200, -200, obj_actor)
    gml_Script_scr_actor_setup(to, to_actor, "toriel")
    to_actor.sprite_index = spr_toriel_dt
    to
    0
}
if (con == 10)
{
    con = 2
    gml_Script_mus_volume(global.currentsong[1], 0, 60)
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* Alright..../%", "obj_ch2_scene30a_slash_Step_0_gml_41_0")
    // WARNING: Popz'd an empty stack.
    kr
    gml_Script_c_walkdirect(140, 200, 30)
    gml_Script_c_delayfacing(31, "r")
    su
    gml_Script_c_walkdirect_wait(179, 195, 30)
    "l"
    "top"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E1* Then..^1. guess it's goodbye for today./%", "obj_ch2_scene30a_slash_Step_0_gml_56_0")
    // WARNING: Popz'd an empty stack.
    su
    "r"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EL* See ya tomorrow^1, Kris.../%", "obj_ch2_scene30a_slash_Step_0_gml_64_0")
    // WARNING: Popz'd an empty stack.
    "susieunhappy"
    gml_Script_c_walk("d", 0.5, 60)
    60
    63
    gml_Script_c_var_instance(torieldoor, "visible", 0)
    21
    to
    1
    gml_Script_c_setxy(157, 142)
    "toriel"
    gml_Script_c_msgsetloc(0, "* Kris^1! How was studying with your.../%", "obj_ch2_scene30a_slash_Step_0_gml_82_0")
    // WARNING: Popz'd an empty stack.
    kr
    "u"
    to
    gml_Script_c_emote("!", 30)
    su
    "u"
    gml_Script_c_emote("!", 30)
    60
    to
    0
    404
    0.25
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E4* Why^1, Kris^1, is that your friend?/%", "obj_ch2_scene30a_slash_Step_0_gml_103_0")
    // WARNING: Popz'd an empty stack.
    1
    "d"
    gml_Script_c_msgsetloc(0, "\\E0* Why don't you invite her inside?/%", "obj_ch2_scene30a_slash_Step_0_gml_109_0")
    // WARNING: Popz'd an empty stack.
    su
    "l"
    gml_Script_c_delayfacing(15, "r")
    gml_Script_c_delayfacing(30, "l")
    gml_Script_c_delayfacing(45, "r")
    "susie"
    gml_Script_c_msgsetloc(0, "\\EG* U-uhh^1, I mean^1, I..^1. uh.../%", "obj_ch2_scene30a_slash_Step_0_gml_119_0")
    // WARNING: Popz'd an empty stack.
    su
    "r"
    kr
    "r"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* (Kris^1, I should^1, um^1, probably get going^1, and...)/%", "obj_ch2_scene30a_slash_Step_0_gml_130_0")
    // WARNING: Popz'd an empty stack.
    su
    "u"
    "toriel"
    gml_Script_c_msgsetloc(0, "\\E4* I was going to bake a pie..^1. Did you want any?/%", "obj_ch2_scene30a_slash_Step_0_gml_138_0")
    // WARNING: Popz'd an empty stack.
    su
    "r"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E6* .../%", "obj_ch2_scene30a_slash_Step_0_gml_146_0")
    // WARNING: Popz'd an empty stack.
    su
    "u"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* (Guess I can come over for a bit.)/%", "obj_ch2_scene30a_slash_Step_0_gml_154_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(housetop, "depth", 110)
    to
    gml_Script_c_walk("u", 1, 60)
    kr
    gml_Script_c_walkdirect(158, 172, 60)
    gml_Script_c_delaywalk(61, "u", 0.5, 60)
    su
    gml_Script_c_walkdirect(153, 172, 80)
    gml_Script_c_delaywalk(81, "u", 0.5, 60)
    20
    to
    gml_Script_c_var_lerp("image_alpha", 1, 0, 30)
    60
    60
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 2 && (!895))
{
    global.interact = 0
    global.facing = 0
    con = 0
    with (obj_mainchara)
        visible = true
    30
    // WARNING: Popz'd an empty stack.
}
if (con == 6)
{
}
else
    var _temp_local_var_3 = 0
con = -1
global.interact = 0
global.facing = 0
cantrigger = 1
