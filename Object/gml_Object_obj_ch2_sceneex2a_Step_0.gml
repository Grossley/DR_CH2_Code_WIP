if (con == 1)
{
    con = 1
    global.interact = 1
    global.facing = 3
    sneo = gml_Script_scr_dark_marker(288, -170, 1842)
    var _temp_local_var_1 = sneo
    gml_Script_scr_depth()
}
if (con == 1)
{
    con = 49
    alarm[0] = 30
    gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 30)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("spamton")
    gml_Script_c_msgsetloc(0, "* It seems after all I couldn't be anything more than a simple puppet./", "obj_ch2_sceneex2a_slash_Step_0_gml_48_0")
    gml_Script_c_msgnextloc("* But you three..^1. You're strong./", "obj_ch2_sceneex2a_slash_Step_0_gml_49_0")
    gml_Script_c_msgnextloc("* With a power like that.../", "obj_ch2_sceneex2a_slash_Step_0_gml_52_0")
    gml_Script_c_msgnextloc("* Maybe you three can break your own strings./", "obj_ch2_sceneex2a_slash_Step_0_gml_53_0")
    gml_Script_c_msgnextloc("* Let me become your strength./%", "obj_ch2_sceneex2a_slash_Step_0_gml_54_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_lerp_instance(sneo, "image_alpha", 1, 0, 60)
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(sparkle, "x", 315)
    gml_Script_c_var_instance(sparkle, "y", 150)
    gml_Script_c_var_lerp_instance(sparkle, "image_alpha", 0, 1, 30)
    gml_Script_c_wait(30)
    gml_Script_c_var_lerp_instance(sparkle, "x", 315, 315, 45)
    gml_Script_c_var_lerp_instance(sparkle, "y", 150, 260, 45)
    gml_Script_c_wait(45)
    gml_Script_c_var_lerp_instance(sparkle, "image_alpha", 1, 0, 15)
    gml_Script_c_wait(45)
    if (global.flag[571] == 1)
    {
        gml_Script_scr_weaponget(21)
        if (noroom == true)
            global.flag[468] = 1
        else
        {
            gml_Script_c_soundplay(172)
            gml_Script_c_speaker("no_name")
            gml_Script_c_msgsetloc(0, "* (You got PuppetScarf.)/%", "obj_ch2_sceneex2a_slash_Step_0_gml_88_0")
            gml_Script_c_talk_wait()
        }
    }
    else
    {
        global.flag[454] = 1
        gml_Script_scr_armorget(21)
        if (noroom == true)
            global.flag[468] = 1
        else
        {
            gml_Script_c_soundplay(172)
            gml_Script_c_speaker("no_name")
            gml_Script_c_msgsetloc(0, "* (You got Dealmaker.)/%", "obj_ch2_sceneex2a_slash_Step_0_gml_82_0")
            gml_Script_c_talk_wait()
        }
    }
    gml_Script_scr_keyitemget(13)
    gml_Script_c_soundplay(172)
    gml_Script_c_speaker("no_name")
    gml_Script_c_msgsetloc(0, "* (You got ShadowCrystal.)/%", "obj_ch2_sceneex2a_slash_Step_0_gml_95_0")
    gml_Script_c_talk_wait()
    gml_Script_c_mus2("volume", 0, 30)
    gml_Script_c_wait(30)
}
if (con == 50 && (!gml_Script_d_ex()))
{
    con = 60
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 60 && (!gml_Script_i_ex(895)))
{
    con = -1
    global.interact = 0
    global.facing = 0
    global.flag[309] = 9
    gml_Script_snd_free_all()
    gml_Script_scr_tempsave()
}
