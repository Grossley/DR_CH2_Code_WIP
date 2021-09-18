var _temp_local_var_1, _temp_local_var_4, _temp_local_var_15, _temp_local_var_17, _temp_local_var_46;
if (global.monster[myself] == true)
{
    if ("enemytalk" && talked == 0)
    {
        // WARNING: Popz'd an empty stack.
        if (!361)
            gml_Script_instance_create(0, 0, obj_darkener)
        with (obj_poppup_ad)
            state = 2
        global.typer = 50
        var dialogText = gml_Script_stringsetloc("", "obj_poppup_enemy_slash_Step_0_gml_18_0")
        if (100 >= 99)
            dialogText = gml_Script_stringsetloc("GOKARMASHI&O INARY....?", "obj_poppup_enemy_slash_Step_0_gml_22_0")
        else
        {
            dialogText = gml_Script_stringsetloc("", "obj_poppup_enemy_slash_Step_0_gml_25_0")
            rr = choose(0, 1, 2, 3)
            if (rr == 0)
                dialogText = gml_Script_stringsetloc(".....ASOBOH&......?", "obj_poppup_enemy_slash_Step_0_gml_27_0")
            if (rr == 1)
                dialogText = gml_Script_stringsetloc("...OTANJOBY..&OMEDETOH...?", "obj_poppup_enemy_slash_Step_0_gml_28_0")
            if (rr == 2)
                dialogText = gml_Script_stringsetloc("This application is only&supported by OS 2000.", "obj_poppup_enemy_slash_Step_0_gml_29_0")
            if (rr == 3)
                dialogText = gml_Script_stringsetloc("Click Here! Click Here!&Click Here! Click Here!", "obj_poppup_enemy_slash_Step_0_gml_30_0")
            if (global.monsterstatus[myself] == true && (!becameTired))
            {
                becameTired = 1
                dialogText = gml_Script_stringsetloc("...NEMMUY...", "obj_poppup_enemy_slash_Step_0_gml_35_0")
            }
        }
        if avoiding
            dialogText = gml_Script_stringsetloc("NEED...&LOOK...&ME...", "obj_poppup_enemy_slash_Step_0_gml_41_0")
        if (global.mercymod[myself] >= global.mercymax[myself] && (!becameSpareable))
        {
            becameSpareable = 1
            avoiding = 0
            dialogText = gml_Script_stringsetloc("...HAPPI...", "obj_poppup_enemy_slash_Step_0_gml_48_0")
        }
        gml_Script_msgset(0, dialogText)
        gml_Script_scr_enemyblcon((((x - 40) - 42) + 70), (((global.monstery[myself] - 125) - 62) + 172), 10)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && "enemytalk")
    {
        rtimer = 0
        15
        if "bullets"
        {
            if (!377)
                // WARNING: Popz'd an empty stack.
            if (!869)
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
        }
    }
    if ("bullets" && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            if (0 || (myself != 0 && gml_Script_scr_attackprepcheck(myself, "Popups") > (myself - 1)) || allblocked)
                rr = 0
            else
                rr = choose(0, 1)
            if (rr == 0)
            {
                global.monsterattackname[myself] = "Birds"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 11
                if avoiding
                    dc.special = 1
            }
            else
            {
                global.monsterattackname[myself] = "Popups"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 12
                if avoiding
                    dc.special = 1
            }
            140
            turns += 1
            global.typer = 6
            global.fc = 0
            var battleText = gml_Script_stringsetloc("", "obj_poppup_enemy_slash_Step_0_gml_110_0")
            rr = choose(0, 1, 2, 3)
            if (rr == 0)
                battleText = gml_Script_stringsetloc("* Poppup is begging you to click on a broken link with puppy dog eyes.", "obj_poppup_enemy_slash_Step_0_gml_112_0")
            if (rr == 1)
                battleText = gml_Script_stringsetloc("* Poppup is preening its weird rubbery flesh.", "obj_poppup_enemy_slash_Step_0_gml_113_0")
            if (rr == 2)
            {
                var randomText = gml_Script_stringsetloc("", "obj_poppup_enemy_slash_Step_0_gml_116_0")
                var randomChoice = choose(0, 1, 2, 3, 4, 5, 6)
                if (randomChoice == 0)
                    randomText = gml_Script_stringsetloc("Liimo Berry", "obj_poppup_enemy_slash_Step_0_gml_120_0")
                else if (randomChoice == 1)
                    randomText = gml_Script_stringsetloc("PlayTime", "obj_poppup_enemy_slash_Step_0_gml_123_0")
                else if (randomChoice == 2)
                    randomText = gml_Script_stringsetloc("its tongue to be pressed in so it doesn't feel hunger anymore", "obj_poppup_enemy_slash_Step_0_gml_126_0")
                else if (randomChoice == 3)
                    randomText = gml_Script_stringsetloc("Scary Noise", "obj_poppup_enemy_slash_Step_0_gml_129_0")
                else if (randomChoice == 4)
                    randomText = gml_Script_stringsetloc("To Play With You In The Mystical Island Of Mysticisland", "obj_poppup_enemy_slash_Step_0_gml_132_0")
                else if (randomChoice == 5)
                    randomText = gml_Script_stringsetloc("Do Taxes At 7:44 AM", "obj_poppup_enemy_slash_Step_0_gml_135_0")
                else if (randomChoice == 6)
                    randomText = gml_Script_stringsetloc("Randomized String 1", "obj_poppup_enemy_slash_Step_0_gml_138_0")
                battleText = gml_Script_stringsetsubloc("* Poppup wants ~1", randomText, "obj_poppup_enemy_slash_Step_0_gml_140_0")
            }
            if (rr == 3)
                battleText = gml_Script_stringsetloc("* Smells like tropical candy.", "obj_poppup_enemy_slash_Step_0_gml_142_0")
            if (global.monsterstatus[myself] == true)
                battleText = gml_Script_stringsetloc("* Poppup feels like it's been put upside down in a closet.", "obj_poppup_enemy_slash_Step_0_gml_146_0")
            if (global.mercymod[myself] >= global.mercymax[myself])
                battleText = gml_Script_stringsetloc("* Poppup is popping with joy!", "obj_poppup_enemy_slash_Step_0_gml_151_0")
            global.battlemsg[0] = battleText
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
        gml_Script_msgsetloc(0, "* POPPUP - A rubbery mascot starved for attention. Click it and...?/%", "obj_poppup_enemy_slash_Step_0_gml_176_0")
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        if avoiding
        {
            avoiding = 0
            idlesprite = spr_poppup_idle
        }
        if 3
        {
            staticOwner = 1
            actcon = 10
            gml_Script_msgsetloc(0, "* You just kept clicking and clicking on ads!!/%", "obj_poppup_enemy_slash_Step_0_gml_192_0")
        }
        else
        {
            actcon = 5
            rr = choose(0, 1, 2)
            if (rr == 0)
                gml_Script_msgsetloc(0, "* You unconsciously clicked on a popup about \"monsters 4 humans\" \"in your area,\"/%", "obj_poppup_enemy_slash_Step_0_gml_198_0")
            if (rr == 1)
                gml_Script_msgsetloc(0, "* You unconsciously clicked on an ad for a video about making knives out of spaghetti./%", "obj_poppup_enemy_slash_Step_0_gml_199_0")
            if (rr == 2)
                gml_Script_msgsetloc(0, "* You unconsciously clicked on a popup about demon summoning classes for teens./%", "obj_poppup_enemy_slash_Step_0_gml_200_0")
        }
        // WARNING: Popz'd an empty stack.
    }
    if (actcon == 10 && (!62))
    {
        if (staticPoppup < 21)
        {
            staticPoppup++
            cloning = 1
            194
            194
            overload = gml_Script_instance_create(x, y, obj_poppup_overload)
            overload.image_index = siner
            if (staticPoppup == 1)
            {
                overload.direction = 180
                overload.speed = 14
                overload.friction = 1
                overload.depth = (depth + 1)
            }
            if (staticPoppup == 2)
            {
                overload.direction = 110
                overload.speed = 14
                overload.friction = 1
                overload.depth = (depth + 1)
            }
            if (staticPoppup == 3)
            {
                overload.direction = 290
                overload.speed = 10
                overload.friction = 1
                overload.depth = (depth - 1)
            }
            if (staticPoppup > 3)
            {
                overload.direction = clonedirection
                overload.speed = 28
                overload.friction = (1 + (random(53) / 30))
                overload.depth = (depth - 1)
                clonedirection += (197 + random(35))
            }
            actcon = 9
            if (staticPoppup < 3)
                alarm[4] = 9
            if (staticPoppup > 2)
                alarm[4] = 6
            if (staticPoppup > 5)
                alarm[4] = 3
        }
        else
            actcon = 5
    }
    if (actcon == 5 && (!62))
    {
        actcon = 1
        if (staticPoppup > 20)
        {
            with (obj_poppup_overload)
                speed = 0
            194
            gml_Script_msgsetloc(0, "* The Poppups crashed!/%", "obj_poppup_enemy_slash_Step_0_gml_239_0")
            // WARNING: Popz'd an empty stack.
            actcon = 5.1
            with (obj_poppup_overload)
                image_speed = 0
            with (obj_poppup_enemy)
                alarm[6] = 1
        }
        else
        {
            cloning = 1
            194
            newpopupid = gml_Script_scr_monster_add(31, 424)
            global.monsterinstance[newpopupid].cloning = 1
            global.monsterinstance[newpopupid].x = x
            global.monsterinstance[newpopupid].y = y
            global.monsterinstance[newpopupid].siner = siner
            var _temp_local_var_46 = global.monsterinstance[newpopupid]
            gml_Script_scr_move_to_point_over_time(global.monstermakex[myself], global.monstermakey[myself], 20)
        }
    }
    if (actcon == 5.1)
    {
        with (obj_battleback)
        {
            siner -= 0.5
            siner2 -= 1
        }
    }
    if (actcon == 5.1 && (!62))
    {
        actcon = 5.2
        with (obj_poppup_overload)
            con = 1
    }
    if (actcon == 5.2 && (!433))
    {
        with (obj_poppup_enemy)
        {
            gml_Script_scr_mercyadd(myself, 100)
            myself
        }
        actcon = 1
    }
    if (actcon == 7 && (!62))
    {
        cloning = 0
        global.monsterinstance[newpopupid].cloning = 0
        actcon = 1
        gml_Script_msgsetloc(0, "* Huh...!? That made another one!?/%", "obj_poppup_enemy_slash_Step_0_gml_298_0")
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 3 && actcon == 0)
    {
        blockAds = 5
        blocked = 0
        blockTimer = 0
        popupscreated = 0
        gml_Script_msgsetsubloc(0, "* Press ~1 repeatedly to block the ads!!/%", gml_Script_scr_get_input_name(6), "obj_poppup_enemy_slash_Step_0_gml_309_0")
        // WARNING: Popz'd an empty stack.
        actcon = 20.5
        var randomX = (380 + 260)
        var randomY = (230 + 170)
        ads[popupscreated] = gml_Script_instance_create(randomX, randomY, obj_poppup_ad)
        popupscreated++
    }
    if (actcon == 20.5 && (!62))
    {
        if (poppupwait == 1)
            poppupwait = 0
        else if (blockTimer == 1 && popupscreated < 10)
        {
            randomX = (450 + 190)
            randomY = (230 + 70)
            ads[popupscreated] = gml_Script_instance_create(randomX, randomY, obj_poppup_ad)
            popupscreated++
            poppupwait = 1
        }
        if (blockTimer == 0)
        {
            blockTimer = 1
            alarm[4] = 75
        }
        if (blockAds >= 0)
        {
            with (obj_poppup_enemy)
                mercytotal += 10
            var _temp_local_var_15 = ads[blocked]
            blockstate = 1
        }
        if (blocked == 10)
            actcon = 21.5
    }
    if (actcon == 21.5)
    {
        actcon = 21.6
        alarm[4] = 10
    }
    if (actcon == 22.6)
    {
        actcon = 22.7
        with (obj_poppup_enemy)
        {
            if (global.mercymod[myself] < global.mercymax[myself])
                gml_Script_scr_mercyadd(myself, mercytotal)
            if (mercytotal > 0 && global.mercymod[myself] >= 100)
                allblocked = 1
        }
        alarm[4] = 40
        var i = 0
        while (i < array_length_1d(ads))
        {
            var _temp_local_var_17 = ads[i]
            instance_destroy()
        }
        if (!instance_exists(obj_blocked_total_fx))
        {
            fx = gml_Script_instance_create((x - 50), y, obj_blocked_total_fx)
            fx.count = blocked
        }
        gml_Script_snd_play(148)
    }
    if (actcon == 23.7)
    {
        actcon = 1
        if instance_exists(obj_writer)
        {
            with (obj_writer)
            {
            }
        }
    }
    if (acting == 4 && actcon == 0)
    {
        actcon = 30
        "no_name"
        gml_Script_msgsetloc(0, "* Noelle got nervous and looked at the ground!/%", "obj_poppup_enemy_slash_Step_0_gml_415_0")
        // WARNING: Popz'd an empty stack.
    }
    if (actcon == 30 && (!62))
    {
        if (!avoiding)
        {
            with (obj_poppup_enemy)
            {
                avoiding = 1
                idlesprite = spr_poppup_shrivel_idle
            }
        }
        with (obj_monsterparent)
        {
            if (global.monsterstatus[myself] != true)
                myself
        }
        "no_name"
        gml_Script_msgsetloc(0, "* The enemies got shrivelled and TIRED from lack of attention!/%", "obj_poppup_enemy_slash_Step_0_gml_438_0")
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (actingsus == 1 && actconsus == 1)
    {
        "no_name"
        var a = choose(0, 1, 2)
        if (a == 0)
            gml_Script_msgsetloc(0, "* Susie accidentally clicked on an ad featuring a flaming eggplant holding a chainsaw!!/%", "obj_poppup_enemy_slash_Step_0_gml_449_0")
        if (a == 1)
        {
            gml_Script_msgsetloc(0, "* Susie accidentally clicked on a picture of a steak./", "obj_poppup_enemy_slash_Step_0_gml_453_0")
            gml_Script_msgnextloc("* It wasn't actually an ad, just a static image of a steak.../%", "obj_poppup_enemy_slash_Step_0_gml_454_0")
        }
        if (a == 2)
        {
            gml_Script_msgsetloc(0, "* Susie missed clicking on an ad and ended up clicking on the word processor./", "obj_poppup_enemy_slash_Step_0_gml_458_0")
            gml_Script_msgnextloc("* It got a virus somehow./%", "obj_poppup_enemy_slash_Step_0_gml_459_0")
        }
        // WARNING: Popz'd an empty stack.
        actconsus = 1.1
    }
    if (actconsus == 1.1 && (!62))
    {
        gml_Script_scr_act_charsprite("susie", 995, 0, 0)
        "susie"
        gml_Script_msgsetloc(0, "\\E5* D..^1. Damn!^1! They knew what I'd fall for!!/%", "obj_poppup_enemy_slash_Step_0_gml_470_0")
        // WARNING: Popz'd an empty stack.
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 50)
        actconsus = 0
        actcon = 1
    }
    if (actingral == 1 && actconral == 1 && (!62))
    {
        "no_name"
        a = choose(0, 1, 2)
        if (a == 0)
        {
            gml_Script_msgsetloc(0, "* Ralsei moved to click on an ad with a bunny on it teaching you how to make friends.../", "obj_poppup_enemy_slash_Step_0_gml_484_0")
            gml_Script_msgnextloc("* ...and accidentally clicked on an ad of a machine gun that appeared over it!/%", "obj_poppup_enemy_slash_Step_0_gml_485_0")
        }
        if (a == 1)
        {
            gml_Script_msgsetloc(0, "* Ralsei tried to click on an ad with a castle on it.../", "obj_zpoppup_enemy_slash_Step_0_gml_489_0")
            gml_Script_msgnextloc("* ...but it was actually an ad for a company that demolishes buildings with bazookas!/%", "obj_poppup_enemy_slash_Step_0_gml_490_0")
        }
        if (a == 2)
        {
            gml_Script_msgsetloc(0, "* Ralsei accidentally clicked on an ad for \"lightners 4 darkners in ur area\" and was mortified./", "obj_poppup_enemy_slash_Step_0_gml_494_0")
            gml_Script_msgnextloc("* He deleted the browser shortcut on the desktop entirely.../", "obj_poppup_enemy_slash_Step_0_gml_495_0")
            gml_Script_msgnextloc("* ...but immediately felt guilty because he thought he had \"deleted the entire internet\"./%", "obj_poppup_enemy_slash_Step_0_gml_496_0")
        }
        // WARNING: Popz'd an empty stack.
        actconral = 1.1
    }
    if (actconral == 1.1 && (!62))
    {
        gml_Script_scr_act_charsprite("ralsei", 1507, 0, 0)
        "ralsei"
        gml_Script_msgsetloc(0, "\\EU* I... I didn't mean to do it... I... I'm sorry!!^1! I repent!!!/%", "obj_poppup_enemy_slash_Step_0_gml_507_0")
        // WARNING: Popz'd an empty stack.
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 50)
        actconral = 0
        actcon = 1
    }
    if (actingnoe == 1 && actconnoe == 1)
    {
        gml_Script_scr_mercyadd(myself, 50)
        var random_line = choose(0, 1, 2)
        var line = ""
        if (random_line == 0)
            line = gml_Script_stringsetloc("* Noelle misclicked on a link to buy How To Draw Dragons!/", "obj_poppup_enemy_slash_Step_0_gml_524_0")
        else if (random_line == 1)
            line = gml_Script_stringsetloc("* Noelle clicked on a link for creepy game glitch compilations!/", "obj_poppup_enemy_slash_Step_0_gml_527_0")
        else if (random_line == 2)
            line = gml_Script_stringsetloc("* Noelle clicked on a link for Hot Female Santas In Your Area!/", "obj_poppup_enemy_slash_Step_0_gml_530_0")
        "no_name"
        gml_Script_msgset(0, line)
        gml_Script_scr_anyface_next("noelle", "8")
        gml_Script_msgnextloc("\\E8* Wh-what!? What did I do wrong??/%", "obj_poppup_enemy_slash_Step_0_gml_536_0")
        // WARNING: Popz'd an empty stack.
        actconnoe = (simulordernoe == 0 ? 20 : 0)
    }
    if (actcon == 1 && (!62))
    {
        // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
    {
        actconsus = -1
        actconral = -1
        actconnoe = -1
        actcon = 1
    }
}
