var _temp_local_var_3, _temp_local_var_5;
if (con == -1 && (!963))
{
    con = 1
    global.interact = 1
    if (global.flag[331] == 0)
    {
        blackall = gml_Script_scr_dark_marker(-10, -10, 2528)
        blackall.image_xscale = 999
        blackall.image_yscale = 999
        blackall.depth = 100
        blackall.image_blend = c_black
    }
}
if (con == 1)
{
    con = 2
    if (global.flag[331] == 0)
    {
        // WARNING: Popz'd an empty stack.
        if (!global.currentsong[1])
        {
            global.currentsong[0] = "wind_highplace.ogg"
            global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
        }
        with (obj_mainchara)
        {
            x = 245
            y = 750
            visible = false
        }
        // WARNING: Popz'd an empty stack.
        2
        gml_Script_scr_makecaterpillar((obj_mainchara.x + 50), (obj_mainchara.y - 6), 2, 0)
        3
        gml_Script_scr_makecaterpillar((obj_mainchara.x + 120), (obj_mainchara.y - 6), 3, 1)
        with (obj_caterpillarchara)
            visible = false
        cutscene_master = 
        // WARNING: Popz'd an empty stack.
        ra
        gml_Script_c_setxy(315, 743)
        "l"
        kr
        "r"
    }
    else
    {
        2
        gml_Script_scr_makecaterpillar((gml_Script_camerax() - 100), (obj_mainchara.y - 6), 2, 1)
        cutscene_master = 
        // WARNING: Popz'd an empty stack.
    }
    su
    534
    0.25
    gml_Script_c_setxy(290, 100)
}
if (con == 2)
{
    global.facing = 0
    "top"
    con = 10
    if (global.flag[331] == 0)
    {
        gml_Script_c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30)
        30
        "ralsei"
        gml_Script_c_msgsetloc(0, "\\EI* So that's why.../", "obj_ch2_scene24e_slash_Step_0_gml_75_0")
        gml_Script_c_facenext("susie", "H")
        gml_Script_c_msgnextloc("\\EH* Geronimo!!/%", "obj_ch2_scene24e_slash_Step_0_gml_77_0")
        // WARNING: Popz'd an empty stack.
    }
    else
    {
        "susie"
        gml_Script_c_msgsetloc(0, "\\EH* Geronimo!!/%", "obj_ch2_scene24e_slash_Step_0_gml_82_0")
        // WARNING: Popz'd an empty stack.
    }
    158
    su
    0
    0
    0
    gml_Script_c_walkdirect_wait(290, (ra_actor.y - 2), 15)
    548
    0.25
    ra
    0
    52
    gml_Script_c_setxy(282, (ra_actor.y + 52))
    40
    su
    10
    60
    0
    30
    su
    1
    gml_Script_c_walk_wait("l", 3, 5)
    0
    817
    0
    0
    "x"
    "top"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* Heh^1, miss me?/%", "obj_ch2_scene24e_slash_Step_0_gml_127_0")
    // WARNING: Popz'd an empty stack.
    ra
    228
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\EN* Of course not!!/%", "obj_ch2_scene24e_slash_Step_0_gml_135_0")
    // WARNING: Popz'd an empty stack.
    229
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\EH* (Just kidding^1! That was sarcasm^1! I missed you!!)/%", "obj_ch2_scene24e_slash_Step_0_gml_142_0")
    // WARNING: Popz'd an empty stack.
    su
    1
    "x"
    "d"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* Man^1, we gotta work on your delivery./%", "obj_ch2_scene24e_slash_Step_0_gml_152_0")
    // WARNING: Popz'd an empty stack.
    159
    if (kr_actor.y > 770)
        gml_Script_c_jump_sprite(325, (kr_actor.y - 55), 12, 17, 534, 548)
    else
        gml_Script_c_jump_sprite(235, (kr_actor.y + 25), 12, 17, 534, 548)
    1
    25
    if (kr_actor.y > 770)
        gml_Script_c_walkdirect_wait(176, (kr_actor.y - 55), 30)
    gml_Script_c_walkdirect(176, (kr_actor.y - 15), 17)
    gml_Script_c_delayfacing(18, "r")
    kr
    "d"
    5
    "l"
    ra
    1
    1
    "l"
    gml_Script_c_setxy(314, (kr_actor.y + 5))
    if (kr_actor.y > 770)
    {
        gml_Script_c_walk_wait("u", 6, 6)
        gml_Script_c_walk_wait("l", 6, 33)
        gml_Script_c_walkdirect_wait(120, (kr_actor.y - 7), 8)
        "r"
    }
    else
    {
        gml_Script_c_walk_wait("d", 6, 4)
        gml_Script_c_walk_wait("l", 6, 33)
        gml_Script_c_walkdirect_wait(120, (kr_actor.y - 7), 8)
        "r"
    }
    10
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* Anyway^1, let's go!/%", "obj_ch2_scene24e_slash_Step_0_gml_185_0")
    // WARNING: Popz'd an empty stack.
    "l"
    su
    "l"
}
if (con == 10)
{
}
else
    var _temp_local_var_5 = 0
con = 11
alarm[0] = 30
// WARNING: Popz'd an empty stack.
if 274
{
    with (obj_caterpillarchara)
        // WARNING: Popz'd an empty stack.
}
2
3
if (su_actor != noone)
    gml_Script_scr_makecaterpillar(su_actor.x, (su_actor.y - 6), 2, 0)
if (ra_actor != noone)
    gml_Script_scr_makecaterpillar(ra_actor.x, (ra_actor.y - 6), 3, 1)
if 274
{
    with (obj_caterpillarchara)
        visible = false
}
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
if (con == 12 && (!895))
{
    global.interact = 0
    global.facing = 0
    global.plot = 160
    con = 99
    // WARNING: Popz'd an empty stack.
    var savepoint = gml_Script_instance_create(460, 720, obj_savepoint)
    var _temp_local_var_3 = savepoint
}
