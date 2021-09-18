if 74
{
    with (obj_mainchara)
        gml_Script_scr_jump_to_point_sprite((x + random_range(-200, 200)), (y + random_range(-30, 30)), 10, 15, 649, 648)
}
if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
    con = 1
    global.interact = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = 
    kr = 0
    kr_actor = gml_Script_instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisr_dark
    with (obj_mainchara)
        visible = false
    su = 1
    su_actor = gml_Script_instance_create((obj_mainchara.x + 300), obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susiel_dark
    su
    gml_Script_c_walk_wait("l", 4, 50)
    "Susie"
    gml_Script_c_walkdirect_wait(757, 193, 48)
    1
    // WARNING: Popz'd an empty stack.
    40
    // WARNING: Popz'd an empty stack.
    su
    gml_Script_c_walk("l", 6, 15)
    gml_Script_c_delayfacing(16, "d")
    gml_Script_c_delaywalk(30, "r", 3, 15)
    gml_Script_c_delayfacing(46, "u")
    gml_Script_c_delayfacing(60, "r")
    gml_Script_c_delayfacing(75, "r")
    gml_Script_c_delaywalkdirect(95, 757, 193, 20)
    gml_Script_c_delaycmd(116, "sprite", 994)
    gml_Script_c_delaycmd(116, "soundplay", 185)
    kr
    gml_Script_c_walk("l", 3, 15)
    15
    gml_Script_c_walk_wait("r", 3, 15)
    gml_Script_c_walk_wait("l", 3, 15)
    "u"
    15
    "d"
    15
    "l"
    75
    // WARNING: Popz'd an empty stack.
    su
    994
    // WARNING: Popz'd an empty stack.
    64
    30
    "l"
    10
    "r"
    10
    "d"
    10
    "l"
    30
    "ralsei"
    // WARNING: Popz'd an empty stack.
    0
    1445
    174
    0.25
    "susie"
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    1
    "r"
    30
    gml_Script_c_walk("r", 2, 5)
    30
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walk("r", 8, 90)
    1
    gml_Script_c_panspeed(4, 0, 30)
    60
    gml_Script_c_panobj(kr_actor, 15)
    15
    kr
    "d"
    // WARNING: Popz'd an empty stack.
    0
    // WARNING: Popz'd an empty stack.
}
if (con == 2)
{
    if (!895)
    {
        con = 3
        global.interact = 0
    }
}
