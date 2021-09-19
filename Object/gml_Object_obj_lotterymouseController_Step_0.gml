if (victory == false)
{
    if (global.flag[378] == 1 && global.flag[377] == 1)
    {
        victory = true
        global.interact = 1
        timer = 0
    }
}
if (victory == true)
{
    global.interact = 1
    timer++
    if (timer == 30)
    {
        gml_Script_snd_play_pitch(59, 0.8)
        gml_Script_scr_camerareset(20)
    }
    if (timer == 60)
    {
        with (obj_bridgeSwapper)
            inert = 1
        with (obj_lotteryMouseTrigger)
            inert = 1
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* (Sounds like the bridge was raised.)/%", "obj_lotterymouseController_slash_Step_0_gml_18_0")
        global.facing = 0
        gml_Script_d_make()
        victory++
    }
}
if (victory == 2 && (!gml_Script_d_ex()))
{
    var hints = gml_Script_instance_create(x, y, obj_mouseLotteryCompleteHint)
    var _temp_local_var_3 = hints
    gml_Script_scr_depth()
}
