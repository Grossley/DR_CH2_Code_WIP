if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == 0)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        if (!virokun_battle_init)
        {
            virokun_battle_init = 1
            virokun_battle = gml_Script_i_ex(416)
        }
        global.typer = 50
        rr = choose(0, 1, 2, 3)
        if (rr == 0)
            gml_Script_msgsetloc(0, "You'll need TWO&apples to stop ME!", "obj_omawaroid_enemy_slash_Step_0_gml_23_0")
        if (rr == 1)
            gml_Script_msgsetloc(0, "Wee-woo-wee-woo!", "obj_omawaroid_enemy_slash_Step_0_gml_24_0")
        if (rr == 2)
            gml_Script_msgsetloc(0, "Did you take your&bullets today?", "obj_omawaroid_enemy_slash_Step_0_gml_25_0")
        if (rr == 3)
            gml_Script_msgsetloc(0, "Where there's a wee,&there's a woo.", "obj_omawaroid_enemy_slash_Step_0_gml_26_0")
        if virokun_battle
        {
            if (turns == 0)
                gml_Script_msgsetloc(0, "Hey! Virus!&You've gotta pay!", "obj_omawaroid_enemy_slash_Step_0_gml_32_0")
            if (!gml_Script_i_ex(416))
            {
                rr = choose(0, 1)
                if (rr == 0)
                    gml_Script_msgsetloc(0, "You showed that virus,& wee-woo!", "obj_omawaroid_enemy_slash_Step_0_gml_38_0")
                if (rr == 1)
                    gml_Script_msgsetloc(0, "Have some&free bullets!", "obj_omawaroid_enemy_slash_Step_0_gml_39_0")
            }
        }
        if (global.mercymod[myself] >= global.mercymax[myself])
            gml_Script_msgsetloc(0, "All in a day's&work, wee-woo.", "obj_omawaroid_enemy_slash_Step_0_gml_45_0")
        if (nact_count == 1 && (!nact_balloon))
        {
            nact_balloon = 1
            gml_Script_msgsetloc(0, "This girl is so sweet...&Let's give her free bullets!", "obj_omawaroid_enemy_slash_Step_0_gml_51_0")
        }
        if (ultimatehealprompt == 1)
        {
            gml_Script_msgsetloc(0, "(That's the worst&healing I've seen)", "obj_omawaroid_enemy_slash_Step_0_gml_56_0")
            if (myself == 1)
                gml_Script_msgsetloc(0, "(Is she charging&for that?)", "obj_omawaroid_enemy_slash_Step_0_gml_59_0")
            ultimatehealprompt = 0
        }
        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && gml_Script_scr_isphase("enemytalk"))
    {
        rtimer = 0
        gml_Script_scr_blconskip(15)
        if gml_Script_scr_isphase("bullets")
        {
            if (!instance_exists(obj_moveheart))
                gml_Script_scr_moveheart()
            if (!instance_exists(obj_growtangle))
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
        }
    }
    if (gml_Script_scr_isphase("bullets") && attacked == false)
    {
        rtimer += 1
        if (rtimer == 16)
        {
            rr = choose(0, 1)
            if (rr == 0 && chasecheck == 0)
            {
                global.monsterattackname[myself] = "Vaccine"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 15
            }
            else
            {
                global.monsterattackname[myself] = "CarChase"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 16
                if (chasecheck != 0)
                    dc.special = chasecheck
                chasecheck = 0
            }
            chasecheck = 0
            gml_Script_scr_turntimer(140)
            turns += 1
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3, 4)
            if (rr == 0)
                global.battlemsg[0] = gml_Script_stringsetloc("* Ambyu-Lance is sucking up coffee out of a tall glass.", "obj_omawaroid_enemy_slash_Step_0_gml_103_0")
            if (rr == 1)
                global.battlemsg[0] = gml_Script_stringsetloc("* Ambyu-Lance puts a clown nose on to make you comfortable.", "obj_omawaroid_enemy_slash_Step_0_gml_104_0")
            if (rr == 2)
                global.battlemsg[0] = gml_Script_stringsetloc("* Ambyu-Lance is comparing the battle to a dentist visit.", "obj_omawaroid_enemy_slash_Step_0_gml_105_0")
            if (rr == 3)
                global.battlemsg[0] = gml_Script_stringsetloc("* Ambyu-Lance is making siren noises with its mouth.", "obj_omawaroid_enemy_slash_Step_0_gml_106_0")
            if (rr == 4)
                global.battlemsg[0] = gml_Script_stringsetloc("* Smells like isopropyl.", "obj_omawaroid_enemy_slash_Step_0_gml_107_0")
            attacked = true
        }
        else
            gml_Script_scr_turntimer(120)
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* AMBYU-LANCE - If it doesn't find an accident, it'll make one!/%", "obj_omawaroid_enemy_slash_Step_0_gml_130_0")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        if (!gml_Script_scr_havechar(4))
        {
            actcon = 1
            gml_Script_scr_speaker("susie")
            gml_Script_msgsetloc(0, "\\E5* Ambulance? Hell no. Like doctors even GET me!/", "obj_omawaroid_enemy_slash_Step_0_gml_147_0")
            gml_Script_scr_anyface_next("no_name", 0)
            gml_Script_msgnextloc("* (Susie told you to \\cYavoid getting hit\\cW by the ambulances!)/%", "obj_omawaroid_enemy_slash_Step_0_gml_149_0")
            chasecheck = 1
            gml_Script_scr_battletext()
        }
        else
        {
            nact_count++
            with (obj_omawaroid_enemy)
                gml_Script_scr_mercyadd(myself, 100)
            if (gml_Script_scr_sideb_get_phase() >= 2)
            {
                gml_Script_scr_speaker("no_name")
                gml_Script_msgsetloc(0, "* Noelle mutters to herself about saws and needles./%", "obj_omawaroid_enemy_slash_Step_0_gml_179_0")
            }
            else if (nact_count == 1)
            {
                gml_Script_scr_speaker("no_name")
                gml_Script_msgsetloc(0, "* Noelle acted warmly towards Ambyu-Lance!/", "obj_omawaroid_enemy_slash_Step_0_gml_169_0")
                gml_Script_scr_anyface_next("noelle", "2")
                gml_Script_msgnextloc("\\E2* Needles aren't scary..^1. medicine's important^1, you know?/%", "obj_omawaroid_enemy_slash_Step_0_gml_171_0")
            }
            else
            {
                gml_Script_scr_speaker("no_name")
                gml_Script_msgsetloc(0, "* Noelle muttered absentmindedly about hospital tools!/%", "obj_omawaroid_enemy_slash_Step_0_gml_183_0_b")
            }
            gml_Script_scr_battletext_default()
            actcon = 5
            alarm[4] = 15
        }
    }
    else if (acting == 3 && actcon == 0)
    {
        actcon = 1
        gml_Script_scr_speaker("ralsei")
        gml_Script_msgsetloc(0, "\\EH* We'll use your service^1, friends!/", "obj_omawaroid_enemy_slash_Step_0_gml_199_0")
        gml_Script_scr_anyface_next("no_name", 0)
        gml_Script_msgnextloc("* (Ralsei encouraged you to \\cYget hit\\cW by the ambulances!)/%", "obj_omawaroid_enemy_slash_Step_0_gml_201_0")
        chasecheck = -1
        gml_Script_scr_battletext()
    }
    if (actcon == 6 && (!gml_Script_d_ex()))
        actcon = 1
    if (actingsus == 1 && actconsus == 1)
    {
        var simultext = (simultotal == 1 ? gml_Script_stringsetloc("* Susie lies about how often she brushes and flosses!/%", "obj_omawaroid_enemy_slash_Step_0_gml_227_0") : gml_Script_stringsetloc("* Susie lies about her health!/%", "obj_omawaroid_enemy_slash_Step_0_gml_227_1"))
        gml_Script_msgset(0, simultext)
        gml_Script_scr_mercyadd(myself, 50)
        gml_Script_scr_simultext("susie")
        actconsus = (simulordersus == 0 ? 20 : 0)
    }
    if (actingral == 1 && actconral == 1)
    {
        simultext = (simultotal == 1 ? gml_Script_stringsetloc("* Ralsei washes his hands for 60 seconds!/%", "obj_omawaroid_enemy_slash_Step_0_gml_238_0") : gml_Script_stringsetloc("* Ralsei washes his hands!/%", "obj_omawaroid_enemy_slash_Step_0_gml_238_1"))
        gml_Script_msgset(0, simultext)
        gml_Script_scr_mercyadd(myself, 50)
        gml_Script_scr_simultext("ralsei")
        actconral = (simulorderral == 0 ? 20 : 0)
    }
    if (actingnoe == 1 && actconnoe == 1)
    {
        gml_Script_scr_mercyadd(myself, 50)
        gml_Script_msgsetloc(0, "* Noelle takes on and off her nurse hat really fast!/%", "obj_omawaroid_enemy_slash_Step_0_gml_253_0")
        gml_Script_scr_battletext_default()
        actcon = 1
        actconnoe = 0
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
        gml_Script_scr_act_charsprite_end()
        gml_Script_scr_nextact()
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
    {
        if gml_Script_scr_terminate_writer()
        {
            actconsus = -1
            actconral = -1
            actconnoe = -1
            actcon = 1
        }
    }
}