if instance_exists(obj_mouseSpawnSwitch)
{
    if (obj_mouseSpawnSwitch.introFinished == 1)
    {
        if (victory == true && victoryCelebrated == 0)
        {
            global.interact = 1
            if instance_exists(obj_mouseSpawnSwitch)
                obj_mouseSpawnSwitch.timer = 0
            if (noelleScared > 0)
            {
                global.interact = 1
                if (con == 0)
                {
                    global.plot = 72
                    gml_Script_scr_tempsave()
                    global.interact = 1
                    if instance_exists(obj_npc_facing)
                    {
                        obj_caterpillarchara.x = obj_npc_facing.x
                        obj_caterpillarchara.y = obj_npc_facing.y
                        with (obj_npc_facing)
                            instance_destroy()
                    }
                    else if instance_exists(obj_noelle_scared)
                    {
                        obj_caterpillarchara.x = obj_noelle_scared.x
                        obj_caterpillarchara.y = obj_noelle_scared.y
                        with (obj_noelle_scared)
                            instance_destroy()
                    }
                    cutscene_master = gml_Script_scr_cutscene_make()
                    gml_Script_scr_maincharacters_actors()
                    con = 1
                }
                if (con == 1)
                {
                    con = -1
                    gml_Script_c_wait(15)
                    gml_Script_c_sel(no)
                    gml_Script_c_walkdirect_wait(300, 225, 28)
                    gml_Script_c_walkdirect_wait(300, 262, 10)
                    gml_Script_c_walkdirect_wait(244, 262, 12)
                    gml_Script_c_speaker("noelle")
                    if (obj_mouseSpawnSwitch.earlywin == 0)
                        gml_Script_c_msgsetloc(0, "\\E4* L-looks like that took care of it.../%", "obj_controller_dw_city_mice_slash_Step_0_gml_48_0")
                    else
                        gml_Script_c_msgsetloc(0, "\\E8* W-well^1, hopefully that won't happen again!/%", "obj_controller_dw_city_mice_slash_Step_0_gml_54_0")
                    gml_Script_c_talk_wait()
                    gml_Script_c_actortokris()
                    gml_Script_c_actortocaterpillar()
                    gml_Script_c_var_instance(id, "con", 2)
                    gml_Script_c_terminatekillactors()
                }
                if (con == 2 && (!gml_Script_d_ex()))
                {
                    global.interact = 0
                    victoryCelebrated = 1
                }
            }
        }
    }
}
if (victoryCelebrated == 1)
{
    if instance_exists(obj_mouseSpawnSwitch)
        obj_mouseSpawnSwitch.timer = 29
    if instance_exists(obj_mouseSpawnSwitch)
        obj_mouseSpawnSwitch.introCon = 6
    global.interact = 0
    victoryCelebrated++
}
if (scaredAgain == 0)
{
    global.interact = 1
    scaredAgainCount++
    scaredAgain++
    extTimer = 0
}
if (scaredAgain == 1)
{
    if instance_exists(obj_npc_facing)
        obj_npc_facing.sprite_index = spr_noelle_shocked_dw
    global.interact = 1
    extTimer++
    if (extTimer > 60 && (!instance_exists(obj_holemouse)))
    {
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E2* K-Kris^1! If the mice hit a wall^1, they'll come over here.../", "obj_controller_dw_city_mice_slash_Step_0_gml_113_0")
        gml_Script_msgnextloc("\\E4* (Try using those blocks to get them into the hole?)/%", "obj_controller_dw_city_mice_slash_Step_0_gml_114_0")
        if (scaredAgainCount == 2)
        {
            gml_Script_msgsetloc(0, "\\EE* K-Kris!!/", "obj_controller_dw_city_mice_slash_Step_0_gml_117_0")
            gml_Script_msgnextloc("\\E8* Gosh^1, you did that on purpose^1, didn't you!?/", "obj_controller_dw_city_mice_slash_Step_0_gml_118_0")
            gml_Script_msgnextloc("\\E3* (It's like when they swapped my eggnog with mayo...)/%", "obj_controller_dw_city_mice_slash_Step_0_gml_119_0")
        }
        if (scaredAgainCount >= 3)
            gml_Script_msgsetloc(0, "\\E2* .../%", "obj_controller_dw_city_mice_slash_Step_0_gml_122_0")
        d = gml_Script_d_make()
        with (obj_npc_facing)
            dfacing = 3
        scaredAgain++
    }
}
if (scaredAgain == 2)
{
    global.interact = 1
    if (!gml_Script_d_ex())
    {
        with (obj_npc_facing)
            dfacing = 0
        global.interact = 0
        scaredAgain++
    }
}
