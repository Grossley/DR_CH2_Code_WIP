var _temp_local_var_3;
if talking
{
    talktimer++
    if (talktimer > 15)
        talktimer = 90
    if (talktimer >= 90)
    {
        talktimer = 90
        with (obj_writer)
            // WARNING: Popz'd an empty stack.
        talking = 0
        talktimer = -10
        o_boxingcontroller.talking = 0
        if (talktype == 1 && o_boxingqueen.phase_transition_timer < 1)
        {
            if (hintcount == 0)
                gml_Script_msgsetloc(0, "Shut up!!", "o_boxing_wireframe_slash_Step_0_gml_17_0")
            if (hintcount == 1)
                gml_Script_msgsetloc(0, "I said shut up!!", "o_boxing_wireframe_slash_Step_0_gml_18_0")
            if (hintcount > 1)
            {
            }
            else
            {
                hintcount++
                global.typer = 50
                suballoon3 = gml_Script_scr_enemyblcon((obj_ch2_scene10.su_actor.x + 0), (obj_ch2_scene10.su_actor.y + 20), 10)
                talktimer = 0
                talking = 1
                var _temp_local_var_3 = suballoon3
                depth = (obj_ch2_scene10.su_actor.depth - 1)
                auto_length = 1
            }
        }
        talktype = 0
    }
}
