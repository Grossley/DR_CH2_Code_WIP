if (init == 0)
{
    if (global.flag[419] == 1)
        global.mercymod[myself] = 100
    if (global.flag[419] == 2)
        global.mercymod[myself] = 50
    init = 1
}
if instance_exists(obj_tm_quizzler)
    simonsayscon = 1
if (simonsayscon == 1 && (!instance_exists(obj_tm_quizzler)))
{
    simonsayscon = 0
    if (hitbysimonsaysattackcount < 2 && quizDifficulty < 3)
        quizDifficulty++
    hitbysimonsaysattackcount = 0
}
if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == 0)
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
        if (violenceused == 1 && violenceusedcon == 0)
        {
            dialogText = gml_Script_stringsetloc("How dare you&touch my pretty kitty!", "obj_tasque_manager_enemy_slash_Step_0_gml_106_0")
            violenceusedcon = 1
        }
        else if (violenceused == 1 && violenceusedcon == 1)
        {
            var a = choose(0, 1)
            if (a == 0)
                dialogText = gml_Script_stringsetloc("How dare you!", "obj_tasque_manager_enemy_slash_Step_0_gml_112_0")
            if (a == 1)
                dialogText = gml_Script_stringsetloc("You've been a&bad dog...", "obj_tasque_manager_enemy_slash_Step_0_gml_113_0")
        }
        gml_Script_msgset(0, dialogText)
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
        if (rtimer == 0)
        {
            if overrideAttack
                rr = 1
            else
                rr = 0
            if (rr == 1)
                obj_growtangle.target_angle = 45
        }
        if (rtimer == 2 && gml_Script_scr_monsterpop() > 1)
        {
            if (rr == 1)
            {
                with (obj_tasque_enemy)
                    rr = ((obj_tasque_manager_enemy.quizDifficulty > 1 && obj_tasque_manager_enemy.quizDifficulty != 4) ? 2 : -1)
            }
        }
        if (global.encounterno == 89)
            rr = 1
        rtimer += 1
        if (rtimer == 15)
        {
            if (rr == 0)
            {
                global.monsterattackname[myself] = "WhipAttack"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 20
                dc.element = 6
            }
            else if (rr == 1)
            {
                lastQuizLetter = -1
                global.monsterattackname[myself] = "QuizAttack"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 32
                dc.element = 6
                if (global.encounterno == 89)
                {
                    dc.special = 1
                    dc.difficulty = 4
                }
                else
                    dc.difficulty = quizDifficulty
            }
            gml_Script_scr_turntimer(140)
            overrideAttack = 0
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
        if (global.encounterno == 89)
            gml_Script_scr_turntimer(99999)
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* TASQUE MANAGER - Obsessed with order, and abhors Chaos. Whip it good!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_205_0")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        gml_Script_scr_act_charsprite("kris", 1427, 0, 0)
        if (violenceused == 1)
        {
            var simultext = gml_Script_stringsetloc("* (Your act failed...)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_254_0")
            actcon = 1
        }
        else
        {
            if (global.hp[1] <= 0 && global.hp[2] <= 0)
                gml_Script_scr_mercyadd(myself, 15)
            else
                gml_Script_scr_mercyadd(myself, 10)
            overrideAttack = 1
            if (simultotal == 1)
                simultext = gml_Script_stringsetloc("* (You asked Tasque Manager to show you order. She obliges!)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_263_0")
            else
                simultext = gml_Script_stringsetloc("* (You asked for order!)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_264_0")
        }
        gml_Script_msgset(0, simultext)
        gml_Script_scr_simultext("kris")
        actcon = (simulorderkri == 0 ? 20 : -1)
    }
    if (acting == 3 && actcon == 0)
    {
        gml_Script_scr_act_charsprite("kris", 1427, 0, 0)
        if (violenceused == 1)
        {
            gml_Script_msgsetloc(0, "* (You talked to Tasque Manager, but no effect...)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_277_0")
            actcon = 1
        }
        else
        {
            overrideAttack = 1
            gml_Script_scr_mercyadd(myself, 25)
            gml_Script_msgsetloc(0, "* (Everyone asked Tasque Manager to show you order. She obliges!)/%", "obj_tasque_manager_enemy_slash_Step_0_gml_282_0")
            actcon = 1
        }
        gml_Script_scr_battletext_default()
    }
    if (actingsus == 1 && actconsus == 1)
    {
        gml_Script_scr_act_charsprite("susie", 1456, 0, 0)
        if (violenceused == 1)
            simultext = gml_Script_stringsetloc("* S-Action failed!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_293_0")
        else
        {
            if (global.hp[0] <= 0 && global.hp[2] <= 0)
                gml_Script_scr_mercyadd(myself, 10)
            else
                gml_Script_scr_mercyadd(myself, 6)
            a = choose(0, 1)
            if (a == 0)
                simultext = gml_Script_stringsetloc("* Susie barked madly!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_301_0")
            if (a == 1)
                simultext = gml_Script_stringsetloc("* Susie's mouth froths!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_302_0")
        }
        gml_Script_msgset(0, simultext)
        gml_Script_scr_simultext("susie")
        actconsus = (simulordersus == 0 ? 20 : 0)
    }
    if (actingral == 1 && actconral == 1)
    {
        gml_Script_scr_act_charsprite("ralsei", 1498, 0, 0)
        if (violenceused == 1)
            simultext = gml_Script_stringsetloc("* R-Action failed!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_314_0")
        else
        {
            if (global.hp[0] <= 0 && global.hp[1] <= 0)
                gml_Script_scr_mercyadd(myself, 10)
            else
                gml_Script_scr_mercyadd(myself, 6)
            a = choose(0, 1)
            if (a == 0)
                simultext = gml_Script_stringsetloc("* Ralsei fell in line!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_322_0")
            if (a == 1)
                simultext = gml_Script_stringsetloc("* Ralsei listened closely!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_323_0")
        }
        gml_Script_msgset(0, simultext)
        gml_Script_scr_simultext("ralsei")
        actconral = (simulorderral == 0 ? 20 : 0)
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
        gml_Script_scr_act_charsprite_end()
        gml_Script_scr_nextact()
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20)
    {
        gml_Script_scr_act_charsprite_end()
        if gml_Script_scr_terminate_writer()
        {
            actconsus = -1
            actconral = -1
            actcon = 1
        }
    }
}
else if (obj_herokris.image_alpha == 0 || (instance_exists(obj_herosusie) && obj_herosusie.image_alpha == 0) || (instance_exists(obj_heroralsei) && obj_heroralsei.image_alpha == 0))
    gml_Script_scr_act_charsprite_end()
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
