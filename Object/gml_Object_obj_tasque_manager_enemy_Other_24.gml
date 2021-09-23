if (init == false)
{
    if (global.flag[419] == 1)
        global.mercymod[myself] = 100
    if (global.flag[419] == 2)
        global.mercymod[myself] = 50
    init = true
}
if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == false)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        var dialogText = gml_Script_stringsetloc("", "obj_tasque_manager_enemy_slash_Step_0_gml_15_0")
        rr = (gml_Script_scr_monsterpop() > 1 ? choose(0, 1, 2, 3) : choose(0, 1, 2))
        if (rr == 0)
            dialogText = gml_Script_stringsetloc("Processes! Services!&Performance! Details!", "obj_tasque_manager_enemy_slash_Step_0_gml_19_0")
        if (rr == 1)
        {
            var randomText = gml_Script_stringsetloc("", "obj_tasque_manager_enemy_slash_Step_0_gml_23_0")
            var randomChoice = choose(0, 1, 2, 3)
            if (randomChoice == 0)
                randomText = gml_Script_stringsetloc("Wrinkly clothing?", "obj_tasque_manager_enemy_slash_Step_0_gml_27_0")
            else if (randomChoice == 1)
                randomText = gml_Script_stringsetloc("Slouched back?", "obj_tasque_manager_enemy_slash_Step_0_gml_30_0")
            else if (randomChoice == 2)
                randomText = gml_Script_stringsetloc("Delinquent tendencies?", "obj_tasque_manager_enemy_slash_Step_0_gml_33_0")
            else if (randomChoice == 3)
                randomText = gml_Script_stringsetloc("Untied shoelaces?", "obj_tasque_manager_enemy_slash_Step_0_gml_36_0")
            dialogText = gml_Script_stringsetsubloc("~1&Let me whip it into shape!", randomText, "obj_tasque_manager_enemy_slash_Step_0_gml_39_0")
        }
        if (rr == 2)
        {
            timesOrdered++
            dialogText = (timesOrdered == 2 ? gml_Script_stringsetloc("Hors d'oeuvre,&Hors d'oeuvre...&I mean, order, order!", "obj_tasque_manager_enemy_slash_Step_0_gml_46_0") : gml_Script_stringsetloc("Order, order!", "obj_tasque_manager_enemy_slash_Step_0_gml_46_1"))
        }
        if (rr == 3)
        {
            timesCharged++
            dialogText = (timesCharged > 1 ? gml_Script_stringsetloc("Kitties!!", "obj_tasque_manager_enemy_slash_Step_0_gml_53_0") : gml_Script_stringsetloc("Aren't my kitties just&so well behaved? Watch!", "obj_tasque_manager_enemy_slash_Step_0_gml_53_1"))
        }
        var hasTail = 0
        for (var i = 0; i < 4; i++)
        {
            if (global.chararmor1[i] == 7 || global.chararmor2[i] == 7)
                hasTail = 1
        }
        if (hasTail == 1 && (!tailcheck))
        {
            tailcheck = 1
            dialogText = gml_Script_stringsetloc("Chaos, chaos!?&No, no! Order, order!&Now get rid of that&silly tail!", "obj_tasque_manager_enemy_slash_Step_0_gml_68_0")
        }
        if (global.charweapon[2] == 7 && (!knifecheck))
        {
            knifecheck = 1
            dialogText = gml_Script_stringsetloc("Chaos, chaos!?&No, no! Order, order!&Now get rid of that&silly Devilsknife!", "obj_tasque_manager_enemy_slash_Step_0_gml_74_0")
        }
        gml_Script_msgset(0, dialogText)
        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        talked = true
        talktimer = 0
    }
    if (talked == true && gml_Script_scr_isphase("enemytalk"))
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
        if (rtimer == 0)
        {
            if overrideAttack
                rr = 2
            else
                rr = (rr == 3 ? 3 : 0)
            if (rr == 2)
                obj_growtangle.target_angle = 45
        }
        if (rtimer == 2 && gml_Script_scr_monsterpop() > 1)
        {
            if (rr == 2)
            {
                with (obj_tasque_enemy)
                    rr = ((obj_tasque_manager_enemy.quizDifficulty > 1 && obj_tasque_manager_enemy.quizDifficulty != 4) ? 2 : -1)
            }
        }
        rtimer += 1
        if (rtimer == 15)
        {
            if (rr == 0)
            {
                global.monsterattackname[myself] = "WhipAttack"
                dc = gml_Script_scr_bulletspawner(x, y, obj_dbulletcontroller)
                dc.type = 20
            }
            else if (rr == 1)
            {
                global.monsterattackname[myself] = "RisingDiamonds"
                dc = gml_Script_scr_bulletspawner(x, y, obj_dbulletcontroller)
                dc.type = 1
            }
            else if (rr == 2)
            {
                global.monsterattackname[myself] = "QuizAttack"
                dc = gml_Script_scr_bulletspawner(x, y, obj_dbulletcontroller)
                dc.type = 32
                dc.difficulty = quizDifficulty
            }
            gml_Script_scr_turntimer(140)
            turns += 1
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3, 4)
            var battleText = gml_Script_stringsetloc("", "obj_tasque_manager_enemy_slash_Step_0_gml_161_0")
            if (rr == 0)
                battleText = gml_Script_stringsetloc("* Tasque Manager makes a list of her outfits for the next year. She only has one outfit.", "obj_tasque_manager_enemy_slash_Step_0_gml_164_0")
            else if (rr == 1)
                battleText = gml_Script_stringsetloc("* Tasque Manager is writing \"manage tasks\" next to every entry in her daily planner.", "obj_tasque_manager_enemy_slash_Step_0_gml_167_0")
            else if (rr == 2)
                battleText = gml_Script_stringsetloc("* Tasque Manager is straightening her whip with a hair straightener.", "obj_tasque_manager_enemy_slash_Step_0_gml_170_0")
            else if (rr == 3)
                battleText = gml_Script_stringsetloc("* Tasque Manager is making herself take priority over everything.", "obj_tasque_manager_enemy_slash_Step_0_gml_173_0")
            else if (rr == 4)
                battleText = gml_Script_stringsetloc("* Smells like live wiring.", "obj_tasque_manager_enemy_slash_Step_0_gml_176_0")
            if (global.monsterstatus[myself] == true)
                battleText = gml_Script_stringsetloc("* Tasque Manager has reached her&meticulously scheduled bedtime.", "obj_tasque_manager_enemy_slash_Step_0_gml_181_0")
            if (global.mercymod[myself] >= global.mercymax[myself])
                battleText = gml_Script_stringsetloc("* Tasque Manager has found things&to be sufficiently organized.", "obj_tasque_manager_enemy_slash_Step_0_gml_186_0")
            global.battlemsg[0] = battleText
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
    if (acting == true && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* TASQUE MANAGER - Obsessed with order, and abhors Chaos. Whip it good!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_205_0")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        gml_Script_scr_act_charsprite("kris", spr_krisb_wan_tail, 0, false)
        gml_Script_scr_mercyadd(myself, 50)
        if (simultotal == 1)
        {
            actcon = 5
            gml_Script_msgsetloc(0, "* Kris got trained like an animal!!/%", "obj_tasque_manager_enemy_slash_Other_24_gml_235_0")
            gml_Script_scr_battletext_default()
        }
        else
        {
            gml_Script_msgsetloc(0, "* Kris got managed!/%", "obj_tasque_manager_enemy_slash_Other_24_gml_238_0")
            gml_Script_scr_simultext("kris")
            actcon = (simulorderkri == 0 ? 20 : -1)
        }
    }
    if (actcon == 5 && (!instance_exists(obj_writer)))
    {
        timesTrained++
        global.typer = 50
        var trainText = (timesTrained == 3 ? gml_Script_stringsetloc("Hush, puppy!&No growling...", "obj_tasque_manager_enemy_slash_Step_0_gml_231_0") : gml_Script_stringsetloc("Oh, what a&perfect little&puppy you are!", "obj_tasque_manager_enemy_slash_Step_0_gml_231_1"))
        gml_Script_msgset(0, trainText)
        balloon = gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        global.typer = 6
        gml_Script_msgsetloc(0, "* Tasque Manager seemed slightly pleased at the Order!!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_236_0")
        gml_Script_scr_battletext_default()
        actcon = 6
        alarm[4] = 15
    }
    if (actcon == 7 && gml_Script_button1_p())
    {
        with (balloon)
            instance_destroy()
        with (obj_writer)
            instance_destroy()
        actcon = 1
    }
    if (actingsus == true && actconsus == 1)
    {
        gml_Script_scr_act_charsprite("susie", spr_susie_wan_sign, 0, false)
        gml_Script_scr_mercyadd(myself, 20)
        if (simultotal == 1 || global.actsimulsus[myself][0] == false)
        {
            gml_Script_msgsetloc(0, "* Susie was trained like an animal.../", "obj_tasque_manager_enemy_slash_Step_0_gml_256_0")
            gml_Script_scr_anyface_next("susie", "I")
            var sentenceEnd = "/%"
            if (!treatText)
            {
                global.actsimulsus[myself][0] = true
                treatText = 1
                gml_Script_scr_smallface(0, "ralsei", 12, 300, 50, gml_Script_stringsetloc("A treat!! Somebody give her a treat!!", "obj_tasque_manager_enemy_slash_Step_0_gml_265_0"))
                sentenceEnd = "\\f0/%"
            }
            gml_Script_msgnextsubloc("\\EH* Play dead!? I'll teach YOU to play dead!!~1", sentenceEnd, "obj_tasque_manager_enemy_slash_Step_0_gml_269_0")
            gml_Script_scr_battletext_default()
            actconsus = 2
        }
        else
        {
            gml_Script_msgsetloc(0, "* Susie got managed!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_274_0")
            gml_Script_scr_simultext("susie")
            actconsus = (simulordersus == 0 ? 20 : -1)
        }
    }
    if (actconsus == 2 && (!instance_exists(obj_writer)))
    {
        global.typer = 50
        gml_Script_msgsetloc(0, "What a wonderfully crafted&signpost^1! I'm giving it an&obedience medal!", "obj_tasque_manager_enemy_slash_Step_0_gml_284_0")
        balloon = gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        actconsus = 0
        actcon = 6
        alarm[4] = 15
    }
    if (actingral == true && actconral == 1)
    {
        gml_Script_scr_act_charsprite("ralsei", spr_ralseib_wan, 0, false)
        gml_Script_scr_mercyadd(myself, 20)
        if (simultotal == 1 || global.actsimulral[myself][0] == false)
        {
            gml_Script_msgsetloc(0, "* Ralsei got trained like an animal!!/", "obj_tasque_manager_enemy_slash_Step_0_gml_299_0")
            sentenceEnd = "/%"
            if (!badgeText)
            {
                global.actsimulral[myself][0] = true
                badgeText = 1
                gml_Script_scr_smallface(0, "susie", 12, 300, 50, gml_Script_stringsetloc("Why the hell do YOU get one of those!!", "obj_tasque_manager_enemy_slash_Step_0_gml_307_0"))
                sentenceEnd = "\\f0/%"
            }
            gml_Script_msgnextsubloc("* Due to good behavior^1, he received an obedience badge.~1", sentenceEnd, "obj_tasque_manager_enemy_slash_Step_0_gml_311_0")
            gml_Script_scr_battletext_default()
            actconral = 2
        }
        else
        {
            gml_Script_msgsetloc(0, "* Ralsei got managed!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_316_0")
            gml_Script_scr_simultext("ralsei")
            actconral = (simulorderral == 0 ? 20 : -1)
        }
    }
    if (actconral == 2 && (!instance_exists(obj_writer)))
    {
        global.typer = 50
        gml_Script_msgsetloc(0, "He really&loves to do&what he's told^1,&doesn't he?/%", "obj_tasque_manager_enemy_slash_Step_0_gml_326_0")
        balloon = gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        actconral = 0
        actcon = 6
        alarm[4] = 15
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
        gml_Script_scr_act_charsprite_end()
        gml_Script_scr_nextact()
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20)
    {
        if gml_Script_scr_terminate_writer()
        {
            actconsus = -1
            actconral = -1
            actcon = 1
        }
    }
}
if gml_Script_scr_debug()
{
    if keyboard_check_pressed(ord("B"))
    {
        if (overrideAttack == 0)
        {
            overrideAttack = 1
            gml_Script_scr_debug_print("You've selected QUIZZLER")
        }
        else
        {
            overrideAttack = 0
            gml_Script_scr_debug_print("Next attack will be random")
        }
    }
    if (keyboard_check_pressed(ord("Q")) && quizDifficulty > 0)
    {
        quizDifficulty--
        gml_Script_scr_debug_print(("Quiz difficulty = " + string(quizDifficulty)))
    }
    if (keyboard_check_pressed(ord("W")) && quizDifficulty < 5)
    {
        quizDifficulty++
        gml_Script_scr_debug_print(("Quiz difficulty = " + string(quizDifficulty)))
    }
}
