var sentenceEnd, _temp_local_var_1, _temp_local_var_4, _temp_local_var_18, _temp_local_var_43;
if (init == 0)
{
    if (global.flag[419] == 1)
        global.mercymod[myself] = 100
    if (global.flag[419] == 2)
        global.mercymod[myself] = 50
    init = 1
}
if (global.monster[myself] == true)
{
    if ("enemytalk" && talked == 0)
    {
        // WARNING: Popz'd an empty stack.
        if (!361)
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        var dialogText = gml_Script_stringsetloc("", "obj_tasque_manager_enemy_slash_Step_0_gml_15_0")
        rr = (1 ? choose(0, 1, 2, 3) : choose(0, 1, 2))
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
        if (rtimer == 0)
        {
            if overrideAttack
                rr = 2
            else
                rr = (rr == 3 ? 3 : 0)
            if (rr == 2)
                obj_growtangle.target_angle = 45
        }
        if rtimer == 2
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
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 20
            }
            else if (rr == 1)
            {
                global.monsterattackname[myself] = "RisingDiamonds"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 1
            }
            else if (rr == 2)
            {
                global.monsterattackname[myself] = "QuizAttack"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 32
                dc.difficulty = quizDifficulty
            }
            140
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
        gml_Script_msgsetloc(0, "* TASQUE MANAGER - Obsessed with order, and abhors Chaos. Whip it good!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_205_0")
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        gml_Script_scr_act_charsprite("kris", 1426, 0, 0)
        gml_Script_scr_mercyadd(myself, 50)
        if (simultotal == 1)
        {
            actcon = 5
            gml_Script_msgsetloc(0, "* Kris got trained like an animal!!/%", "obj_tasque_manager_enemy_slash_Other_24_gml_235_0")
            // WARNING: Popz'd an empty stack.
        }
        else
        {
            gml_Script_msgsetloc(0, "* Kris got managed!/%", "obj_tasque_manager_enemy_slash_Other_24_gml_238_0")
            "kris"
            actcon = (simulorderkri == 0 ? 20 : -1)
        }
    }
    if (actcon == 5 && (!62))
    {
        timesTrained++
        global.typer = 50
        var trainText = (timesTrained == 3 ? gml_Script_stringsetloc("Hush, puppy!&No growling...", "obj_tasque_manager_enemy_slash_Step_0_gml_231_0") : gml_Script_stringsetloc("Oh, what a&perfect little&puppy you are!", "obj_tasque_manager_enemy_slash_Step_0_gml_231_1"))
        gml_Script_msgset(0, trainText)
        balloon = gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        global.typer = 6
        gml_Script_msgsetloc(0, "* Tasque Manager seemed slightly pleased at the Order!!/%", "obj_tasque_manager_enemy_slash_Step_0_gml_236_0")
        // WARNING: Popz'd an empty stack.
        actcon = 6
        alarm[4] = 15
    }
    if (actcon == 7)
    {
    }
    else
        var _temp_local_var_43 = 0
    var _temp_local_var_18 = balloon
}
if 66
{
    if (overrideAttack == 0)
    {
        overrideAttack = 1
        "You've selected QUIZZLER"
    }
    else
    {
        overrideAttack = 0
        "Next attack will be random"
    }
}
if (81 && quizDifficulty > 0)
{
    quizDifficulty--
    ("Quiz difficulty = " + string(quizDifficulty))
}
if (87 && quizDifficulty < 5)
{
    quizDifficulty++
    ("Quiz difficulty = " + string(quizDifficulty))
}
