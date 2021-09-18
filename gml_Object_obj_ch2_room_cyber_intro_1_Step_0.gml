if (global.interact == 0 && con == 1)
{
    con = 2
    alarm[0] = 30
    global.interact = 1
    global.facing = 0
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    kr_actor.sprite_index = spr_krisd_dark
    30
    su
    "u"
    "susie"
    gml_Script_msgsetloc(0, "* ..^1. This is new./%", "obj_ch2_room_cyber_intro_1_slash_Step_0_gml_21_0")
    // WARNING: Popz'd an empty stack.
    "r"
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 3 && (!895))
{
    con = 0
    global.plot = 50
    global.facing = 0
    global.interact = 0
    // WARNING: Popz'd an empty stack.
}
