if (con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 0
    // WARNING: Popz'd an empty stack.
    obj_mainchara.x = 1007
    obj_mainchara.y = 100
    2
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 40), obj_mainchara.y, 2, 0)
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    su
    gml_Script_c_setxy(958, 69)
    16
}
if (con == 1)
{
    global.interact = 1
    con = 2
    0
    gml_Script_c_setxy(1007, 80)
    gml_Script_c_walk_wait("d", 1, 20)
    20
    "susie"
    gml_Script_c_msgsetloc(0, "* ..^1. Man^1, it got late^1, didn't it...?/%", "obj_ch2_scene29_slash_Step_0_gml_38_0")
    // WARNING: Popz'd an empty stack.
    30
    kr
    "l"
    "susie"
    gml_Script_c_msgsetloc(0, "\\E1* ... guess you should go home^1, huh?/%", "obj_ch2_scene29_slash_Step_0_gml_47_0")
    // WARNING: Popz'd an empty stack.
    30
    su
    "r"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EQ* Alright^1, you don't have to say it./%", "obj_ch2_scene29_slash_Step_0_gml_56_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_delayfacing(41, "r")
    gml_Script_c_walkdirect_wait(979, 94, 40)
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* Don't wanna walk home by yourself^1, huh?/%", "obj_ch2_scene29_slash_Step_0_gml_64_0")
    // WARNING: Popz'd an empty stack.
    "u"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EQ* Well^1, if you're gonna MAKE me^1, I guess.../%", "obj_ch2_scene29_slash_Step_0_gml_71_0")
    // WARNING: Popz'd an empty stack.
    su
    gml_Script_c_delayfacing(31, "l")
    gml_Script_c_walkdirect_wait(1033, 94, 30)
    "susie"
    gml_Script_c_msgsetloc(0, "\\E2* Let's go./%", "obj_ch2_scene29_slash_Step_0_gml_85_0")
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 2 && (!895))
{
    global.interact = 0
    con = 0
    global.currentsong[0] = "town.ogg"
    global.currentsong[1] = global.currentsong[0]
    with (obj_mainchara)
        visible = true
    global.facing = 0
    global.plot = 205
    // WARNING: Popz'd an empty stack.
}
