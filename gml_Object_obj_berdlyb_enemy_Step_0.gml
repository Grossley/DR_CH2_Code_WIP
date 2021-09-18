if (init == 0)
{
    init = 1
    gml_Script_instance_create(x, y, o_coaster_controller)
    alarm[5] = 1
}
if (global.monster[myself] == true)
{
    if ("enemytalk" && talked == 0 && bumpwait == 0 && endcon == 0)
    {
        // WARNING: Popz'd an empty stack.
        if (!361)
            gml_Script_instance_create(0, 0, obj_darkener)
        if (nitro > 0)
            nitro -= 1
        if (premonition > 0)
            premonition -= 1
        talkedcon = 0
        talktimer = 0
        global.typer = 69
        if (attackorder == 0)
            rr = 0
        if (attackorder == 1)
            rr = 2
        if (attackorder == 2)
        {
            rr = 1
            attackorder = -1
        }
        attackorder++
        if (rr == 0)
            gml_Script_msgsetloc(0, "Partake, Kris! The&zephyr of punishment!/%", "obj_berdlyb_enemy_slash_Step_0_gml_29_0_b")
        if (rr == 1)
            gml_Script_msgsetloc(0, "Holy Halbird!&Grant me strength!/%", "obj_berdlyb_enemy_slash_Step_0_gml_30_0")
        if (rr == 2)
            gml_Script_msgsetloc(0, "Look, Susie! The&closest you'll ever&get to an \"A\"!/%", "obj_berdlyb_enemy_slash_Step_0_gml_31_0")
        if ((bumpedpast50percent == 0 && global.mercymod[myself] > 50 && balloonorder > 4) || (bumpedpast50percent == 0 && global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.5) && balloonorder > 4))
        {
            gml_Script_msgsetloc(0, "What? My car&is breaking!?/%", "obj_berdlyb_enemy_slash_Step_0_gml_42_0")
            bumpedpast50percent = 1
            ballooncon = 2
            attackorder--
        }
        else if (bumpedfirsttime == 0 && global.mercymod[myself] > 0 && balloonorder > 4)
        {
            gml_Script_msgsetloc(0, "Ha! Go ahead, \"bump\"&me, you bumpbarians!/%", "obj_berdlyb_enemy_slash_Step_0_gml_36_0")
            bumpedfirsttime = 1
            ballooncon = 1
        }
        else if (forcedefaultballoon == 0)
        {
            if (balloonorder == 0)
                gml_Script_msgsetloc(0, "Kris, I get why&you're getting in my&way! You're jealous,&aren't you!?/%", "obj_berdlyb_enemy_slash_Step_0_gml_48_0")
            if (balloonorder == 1)
                gml_Script_msgsetloc(0, "Kris, you're tired&of being the class&No.3, gazing distantly&at Noelle and I's&fruited figures.../%", "obj_berdlyb_enemy_slash_Step_0_gml_49_0")
            if (balloonorder == 2)
                gml_Script_msgsetloc(0, "So rather than ever&STUDYING, you'd enlist&SUSIE to take us down!/%", "obj_berdlyb_enemy_slash_Step_0_gml_50_0")
            if (balloonorder == 3)
                gml_Script_msgsetloc(0, "Kris... you are truly&depraved. Playing&in the mud with&the class hellion./%", "obj_berdlyb_enemy_slash_Step_0_gml_51_0")
            if (balloonorder == 4)
            {
                gml_Script_msgsetloc(0, "But Kris, I am&a kind and brave&hero! If you come&to our side.../%", "obj_berdlyb_enemy_slash_Step_0_gml_52_0")
                ballooncon = 3
            }
            balloonorder++
        }
        forcedefaultballoon = 0
        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        if (ballooncon == 0)
        {
            talked = 1
            talktimer = 0
        }
        else
        {
            talked = 0.5
            talktimer = 0
        }
    }
    if (talked == 0.5)
    {
        talktimer++
        if (talktimer > 15 || (!62))
        {
            with (obj_writer)
                // WARNING: Popz'd an empty stack.
            if (ballooncon == 1)
                gml_Script_msgsetloc(0, "I'll show you&\"bumper cars\" is a&game of INTELLECT,&not skill!/%", "obj_berdlyb_enemy_slash_Step_0_gml_80_0")
            if (ballooncon == 2)
                gml_Script_msgsetloc(0, "Fools! This is&Smart Smoke! It means&my car is getting&stronger!/%", "obj_berdlyb_enemy_slash_Step_0_gml_89_0")
            if (ballooncon == 3)
                gml_Script_msgsetloc(0, "You may be a&slightly less&distant No. 3!&Haha... slightly./%", "obj_berdlyb_enemy_slash_Step_0_gml_82_0")
            global.typer = 69
            gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
            if (ballooncon != 2)
            {
                ballooncon = 0
                talked = 0.6
                alarm[6] = 1
            }
            else
            {
                ballooncon = 0
                talked = 0.7
            }
        }
    }
    if (talked == 0.7)
    {
        talktimer++
        if (talktimer > 15 || (!62))
        {
            talked = 0
            forcedefaultballoon = 1
        }
    }
    if (talked == 1 && "enemytalk")
    {
        talktimer++
        if (talktimer > 15 || (!62))
        {
            with (obj_writer)
                // WARNING: Popz'd an empty stack.
            talkedcon = 1
        }
        if (talkedcon == 1)
        {
            rtimer = 0
            -1
            if "bullets"
            {
                if ((!377) && (!628))
                    // WARNING: Popz'd an empty stack.
                if (!869)
                    gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
                if (difficulty == 1 && rr == 0)
                    obj_growtangle.target_angle += 45
            }
        }
    }
    if ("bullets" && attacked == false)
    {
        rtimer += 1
        if (rtimer == 16)
        {
            if (rr == 0)
            {
                global.monsterattackname[myself] = "Tornado"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 8
                dc.difficulty = 0
                210
            }
            else if (rr == 1)
            {
                global.monsterattackname[myself] = "SpearBlast"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 9
                dc.difficulty = 1
                200
            }
            else
            {
                global.monsterattackname[myself] = "Chirashi"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 10
                dc.difficulty = 2
                180
            }
            turns += 1
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3, 4, 5)
            if (rr == 0)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly calls Queen for help!&* But Queen is pretending to be on the phone!", "obj_berdlyb_enemy_slash_Step_0_gml_158_0")
            if (rr == 1)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly asks Queen what snacks they have at home!&* Queen nods! She has earbuds in!", "obj_berdlyb_enemy_slash_Step_0_gml_159_0")
            if (rr == 2)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly gives the secret sign!&* But Queen is busy with a coloring book!", "obj_berdlyb_enemy_slash_Step_0_gml_160_0")
            if (rr == 3)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly summons Queen!&* Queen calls in sick!", "obj_berdlyb_enemy_slash_Step_0_gml_161_0")
            if (rr == 4)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly shows Queen his card collection!&* Queen escaped successfully.", "obj_berdlyb_enemy_slash_Step_0_gml_162_0")
            if (rr == 5)
                global.battlemsg[0] = gml_Script_stringsetloc("* Smells like fried chicken.", "obj_berdlyb_enemy_slash_Step_0_gml_163_0")
            if (global.mercymod[myself] > 75)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly's coaster car thing looks sick.", "obj_berdlyb_enemy_slash_Step_0_gml_167_0_b")
            if (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.25))
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly asks Queen for healing!&* She says \"You're Doing Great Honey\"", "obj_berdlyb_enemy_slash_Step_0_gml_171_0")
            attacked = true
        }
        else
            120
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* BERDLY - Go! Use your roller coaster cars to play \"bump of chicken\"!/%", "obj_berdlyb_enemy_slash_Step_0_gml_123_0")
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        if (actingsus == 1 && actingral == 1)
            dialoguecon = 1
        else if (actingsus == 1 && actingral != 1)
        {
            gml_Script_msgsetloc(0, "* You and Susie will attempt to bump into Berdly's car!/%", "obj_berdlyb_enemy_slash_Step_0_gml_130_0")
            // WARNING: Popz'd an empty stack.
        }
        else if (actingsus != 1 && actingral == 1)
        {
            gml_Script_msgsetloc(0, "* You and Ralsei will attempt to bump into Berdly's car!/%", "obj_berdlyb_enemy_slash_Step_0_gml_131_0")
            // WARNING: Popz'd an empty stack.
        }
        else
        {
            gml_Script_msgsetloc(0, "* You will attempt to bump into Berdly's car!/%", "obj_berdlyb_enemy_slash_Step_0_gml_132_0")
            // WARNING: Popz'd an empty stack.
        }
        kriscoaster = 1
        acting = 0
        actcon = 1
        rideactgo = 1
        if (actingsus == 2)
            suscoaster = 1
        if (actingral == 2)
            ralcoaster = 1
    }
    if (acting == 3 && actcon == 0)
    {
        dialoguecon = 1
        acting = 0
        actcon = 1
        rideactgo = 1
        kriscoaster = 1
        suscoaster = 1
        ralcoaster = 1
    }
    if (acting == 4 && actcon == 0)
    {
        dialoguecon = 1
        acting = 0
        actcon = 1
        rideactgo = 1
        mrboneswildride = 1
        kriscoaster = 1
        suscoaster = 1
        ralcoaster = 1
    }
    if (actingsus == 1 && actconsus == 1)
    {
        if (bumpactstarted == 1)
        {
            acting = 0
            actcon = 1
            actingsus = 0
            actconsus = 0
        }
        else
        {
            if (actingral != 1 && rideactgo == 0)
            {
                gml_Script_msgsetloc(0, "* Susie will attempt to bump into Berdly's car!/%", "obj_berdlyb_enemy_slash_Step_0_gml_186_0")
                // WARNING: Popz'd an empty stack.
            }
            if (actingral == 1 && rideactgo == 0)
            {
                gml_Script_msgsetloc(0, "* Susie and Ralsei will attempt to bump into Berdly's car!/%", "obj_berdlyb_enemy_slash_Step_0_gml_187_0")
                // WARNING: Popz'd an empty stack.
            }
            acting = 0
            actcon = 1
            rideactgo = 1
            actconsus = 0
            suscoaster = 1
            if (acting == 2)
                kriscoaster = 1
            if (actingral == 2)
                ralcoaster = 1
        }
    }
    if (actingral == 1 && actconral == 1)
    {
        if (bumpactstarted == 1)
        {
            acting = 0
            actcon = 1
            actconral = 0
            actingral = 0
        }
        else
        {
            if (actingsus != 1 && rideactgo == 0)
            {
                gml_Script_msgsetloc(0, "* Ralsei will attempt to bump into Berdly's car!/%", "obj_berdlyb_enemy_slash_Step_0_gml_221_0")
                // WARNING: Popz'd an empty stack.
            }
            acting = 0
            actcon = 1
            rideactgo = 1
            actconral = 0
            ralcoaster = 1
            if (acting == 2)
                kriscoaster = 1
            if (actingsus == 2)
                suscoaster = 1
        }
    }
    if (dialoguecon != 0)
    {
        if (dialoguecon == 1)
            gml_Script_msgsetloc(0, "* The whole gang will attempt to bump into Berdly's car!/%", "obj_berdlyb_enemy_slash_Step_0_gml_306_0")
        if (dialoguecon == 2)
        {
        }
        if (dialoguecon == 3)
        {
        }
        if (dialoguecon == 4)
        {
        }
        if (dialoguecon == 5)
        {
        }
        // WARNING: Popz'd an empty stack.
        dialoguecon = 0
    }
    if (actcon == 1 && (!62))
    {
        if (global.mercymod[myself] > 99)
        {
        }
        else if ((global.currentactingchar == 0 && actingsus == 0 && actingral == 0 && rideactgo == 1) || (global.currentactingchar == 1 && actingral == 0 && rideactgo == 1) || (global.currentactingchar == 2 && rideactgo == 1))
        {
            if (mrboneswildride == 1)
                o_coaster_controller.timermax = 250
            o_coaster_controller.timer = 0
            o_coaster_controller.playerinputtimer = 0
            o_coaster_controller.actcon = 1
            with (o_coaster_hero)
            {
                if (HeroID == 0 && obj_berdlyb_enemy.kriscoaster == 1)
                {
                    sprite_index = spr_krisb_idle
                    image_index = 0
                    image_speed = 0.25
                }
            }
            with (o_coaster_hero)
            {
                if (HeroID == 1 && obj_berdlyb_enemy.suscoaster == 1)
                {
                    sprite_index = spr_susieb_idle
                    image_index = 0
                    image_speed = 0.25
                }
            }
            with (o_coaster_hero)
            {
                if (HeroID == 2 && obj_berdlyb_enemy.ralcoaster == 1)
                {
                    sprite_index = spr_ralsei_idle
                    image_index = 0
                    image_speed = 0.25
                }
            }
            bumpactstarted = 1
            acting = 0
            actcon = 0
            actconsus = 0
            actconral = 0
            o_coaster_berdly.forceypos = -1
            var kris_text = "Z,"
            var sus_text = "X,"
            var ral_text = "C"
            if (kriscoaster == 1)
                krisgo = 1
            if (suscoaster == 1)
                susiego = 1
            if (ralcoaster == 1)
                ralseigo = 1
            if (kriscoaster == 1 && suscoaster == 1 && ralcoaster == 1)
                bumpactfast = 1
            mrboneswildride = 0
            kriscoaster = 0
            suscoaster = 0
            ralcoaster = 0
        }
        else
            // WARNING: Popz'd an empty stack.
    }
}
if 494
    sactionboxx = ((o_coaster_berdly.x - o_coaster_berdly.xstart) - 60)
if (endcon == 1)
{
    endtime++
    if (endtime == 1)
    {
        with (o_coaster_hero)
            endscene = 1
        with (o_coaster_berdly)
            endscene = 1
        with (obj_battlecontroller)
            skipvictory = true
    }
    if (endtime == 30)
    {
        global.batmusic[0]
        o_coaster_berdly.xshake = 10
        o_coaster_berdly.sprite_index = spr_cutscene_17_berdly_shocked
        if 949
        {
            obj_ch2_scene11a.coaster_berdly.character_sprite = 1848
            obj_ch2_scene11a.coaster_berdly.character_offset_x = -10
            obj_ch2_scene11a.coaster_berdly.character_offset_y = -5
        }
        141
    }
    if (endtime == 90)
    {
        // WARNING: Popz'd an empty stack.
        gml_Script_msgsetloc(0, "W-what...?&My coaster, it's...!/%", "obj_berdlyb_enemy_slash_Step_0_gml_450_0")
        global.typer = 69
        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
    }
    if (endtime >= 90 && (!62))
    {
        endcon = 0
        // WARNING: Popz'd an empty stack.
    }
}
if 66
{
    difficulty = (1 - difficulty)
    if (difficulty == 1)
        "berdly is PISS"
    else
        "berdly is not piss"
}
