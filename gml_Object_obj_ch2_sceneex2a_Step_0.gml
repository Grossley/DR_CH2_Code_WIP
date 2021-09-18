var _temp_local_var_1, _temp_local_var_4;
if (con == 1)
{
    con = 1
    global.interact = 1
    global.facing = 3
    sneo = gml_Script_scr_dark_marker(288, -170, 1841)
    var _temp_local_var_1 = sneo
}
if (con == 1)
{
    con = 49
    alarm[0] = 30
    gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 30)
    30
    "spamton"
    gml_Script_c_msgsetloc(0, "* It seems after all I couldn't be anything more than a simple puppet./", "obj_ch2_sceneex2a_slash_Step_0_gml_48_0")
    gml_Script_c_msgnextloc("* But you three..^1. You're strong./", "obj_ch2_sceneex2a_slash_Step_0_gml_49_0")
    gml_Script_c_msgnextloc("* With a power like that.../", "obj_ch2_sceneex2a_slash_Step_0_gml_52_0")
    gml_Script_c_msgnextloc("* Maybe you three can break your own strings./", "obj_ch2_sceneex2a_slash_Step_0_gml_53_0")
    gml_Script_c_msgnextloc("* Let me become your strength./%", "obj_ch2_sceneex2a_slash_Step_0_gml_54_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_lerp_instance(sneo, "image_alpha", 1, 0, 60)
    30
    gml_Script_c_var_instance(sparkle, "x", 315)
    gml_Script_c_var_instance(sparkle, "y", 150)
    gml_Script_c_var_lerp_instance(sparkle, "image_alpha", 0, 1, 30)
    30
    gml_Script_c_var_lerp_instance(sparkle, "x", 315, 315, 45)
    gml_Script_c_var_lerp_instance(sparkle, "y", 150, 260, 45)
    45
    gml_Script_c_var_lerp_instance(sparkle, "image_alpha", 1, 0, 15)
    45
    if (global.flag[571] == 1)
    {
        21
        if (noroom == true)
            global.flag[468] = 1
        else
        {
            172
            "no_name"
            gml_Script_c_msgsetloc(0, "* (You got PuppetScarf.)/%", "obj_ch2_sceneex2a_slash_Step_0_gml_88_0")
            // WARNING: Popz'd an empty stack.
        }
    }
    else
    {
        global.flag[454] = 1
        21
        if (noroom == true)
            global.flag[468] = 1
        else
        {
            172
            "no_name"
            gml_Script_c_msgsetloc(0, "* (You got Dealmaker.)/%", "obj_ch2_sceneex2a_slash_Step_0_gml_82_0")
            // WARNING: Popz'd an empty stack.
        }
    }
    13
    172
    "no_name"
    gml_Script_c_msgsetloc(0, "* (You got ShadowCrystal.)/%", "obj_ch2_sceneex2a_slash_Step_0_gml_95_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_mus2("volume", 0, 30)
    30
}
if (con == 50)
{
}
else
    var _temp_local_var_4 = 0
con = 60
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
if (con == 60 && (!895))
{
    con = -1
    global.interact = 0
    global.facing = 0
    global.flag[309] = 9
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
